uint64_t sub_1D1A69678(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "home:didAdd:actionSet: | home={id: %{public}s, name: %s}, actionSet={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = v13;
    (*(v46 + 184))(v52, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A69AF8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "home:didRemove:actionSet: | home={id: %{public}s, name: %s}, actionSet={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = v13;
    (*(v46 + 192))(v52, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A69F78(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "home:didUpdateNameFor:actionSet: | home={id: %{public}s, name: %s}, actionSet={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = v13;
    (*(v46 + 200))(v52, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6A3F8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "home:didUpdateActionsFor:actionSet: | home={id: %{public}s, name: %s}, actionSet={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = v13;
    (*(v46 + 208))(v52, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6A878(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "home:didAdd:trigger: | home={id: %{public}s, name: %s}, trigger={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = v13;
    (*(v46 + 216))(v52, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6ACF8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "home:didRemove:trigger: | home={id: %{public}s, name: %s}, trigger={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = v13;
    (*(v46 + 224))(v52, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6B178(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "home:didUpdateNameFor:trigger: | home={id: %{public}s, name: %s}, trigger={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = v13;
    (*(v46 + 232))(v52, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6B5F8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "home:didUpdate:trigger: | home={id: %{public}s, name: %s}, trigger={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = v13;
    (*(v46 + 240))(v52, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6BA78(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "home:didUnblockAccessory: | home={id: %{public}s, name: %s}, accessory={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    (*(v46 + 248))(v52, v13, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6BEF4(void *a1, void *a2, void *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a3;
  v14 = a2;
  v15 = sub_1D1E6707C();
  v16 = sub_1D1E6832C();

  v17 = os_log_type_enabled(v15, v16);
  v59 = v12;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v61 = v58;
    *v18 = 136447234;
    v19 = [v12 uniqueIdentifier];
    v57 = v15;
    v20 = v19;
    sub_1D1E66A5C();

    v54 = sub_1D1886B8C();
    v21 = sub_1D1E68FAC();
    v56 = v16;
    v22 = a2;
    v23 = v13;
    v25 = v24;
    v53 = *(v7 + 8);
    v53(v10, v6);
    v26 = sub_1D1B1312C(v21, v25, &v61);

    *(v18 + 4) = v26;
    *(v18 + 12) = 2080;
    v27 = [v12 name];
    v28 = sub_1D1E6781C();
    v30 = v29;

    v31 = v28;
    v13 = v23;
    a2 = v22;
    v32 = sub_1D1B1312C(v31, v30, &v61);

    *(v18 + 14) = v32;
    *(v18 + 22) = 2112;
    v33 = v22;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 24) = v34;
    v35 = v55;
    *v55 = v34;
    *(v18 + 32) = 2082;
    v36 = [v13 uniqueIdentifier];
    sub_1D1E66A5C();

    v37 = sub_1D1E68FAC();
    v39 = v38;
    v53(v10, v6);
    v40 = sub_1D1B1312C(v37, v39, &v61);

    *(v18 + 34) = v40;
    *(v18 + 42) = 2080;
    v41 = [v13 name];
    v42 = sub_1D1E6781C();
    v44 = v43;

    v45 = sub_1D1B1312C(v42, v44, &v61);

    *(v18 + 44) = v45;
    v46 = v57;
    _os_log_impl(&dword_1D16EC000, v57, v56, "home:didEncounterError:for: | home={id: %{public}s, name: %s}, error=%@, accessory={id: %{public}s, name: %s}", v18, 0x34u);
    sub_1D179F28C(v35);
    MEMORY[0x1D3893640](v35, -1, -1);
    v47 = v58;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v47, -1, -1);
    MEMORY[0x1D3893640](v18, -1, -1);
  }

  else
  {
  }

  v48 = v60 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v50 = *(v48 + 8);
    ObjectType = swift_getObjectType();
    (*(v50 + 256))(v59, a2, v13, ObjectType, v50);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6C3EC(void *a1, uint64_t a2)
{
  v3 = v2;
  v33 = a2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6832C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v14 = 136446722;
    v16 = [v11 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v32 = v3;
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    v20 = sub_1D1B1312C(v17, v19, &v34);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v11 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v34);

    *(v14 + 14) = v25;
    v3 = v32;
    v26 = v33;
    *(v14 + 22) = 2048;
    *(v14 + 24) = v26;
    _os_log_impl(&dword_1D16EC000, v12, v13, "home:didUpdate:homeHubState: | home={id: %{public}s, name: %s}, homeHubState=%lu", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  else
  {

    v26 = v33;
  }

  v27 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 264))(v11, v26, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6C76C(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "homeDidUpdateSupportedFeatures: | home={id: %{public}s, name: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 272))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6CAC4(void *a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = a2;
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6832C();

  v14 = os_log_type_enabled(v12, v13);
  v44 = v10;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v46 = v43;
    *v15 = 136446722;
    v16 = [v10 uniqueIdentifier];
    v42 = v13;
    v17 = v16;
    sub_1D1E66A5C();

    v41 = sub_1D1886B8C();
    v18 = sub_1D1E68FAC();
    v19 = v11;
    v21 = v20;
    v40 = *(v5 + 8);
    v40(v8, v4);
    v22 = sub_1D1B1312C(v18, v21, &v46);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2080;
    v23 = [v10 name];
    v24 = sub_1D1E6781C();
    v26 = v25;

    v27 = v24;
    v11 = v19;
    v28 = sub_1D1B1312C(v27, v26, &v46);

    *(v15 + 14) = v28;
    *(v15 + 22) = 2082;
    v29 = [v19 uniqueIdentifier];
    sub_1D1E66A5C();

    v30 = sub_1D1E68FAC();
    v32 = v31;
    v40(v8, v4);
    v33 = sub_1D1B1312C(v30, v32, &v46);

    *(v15 + 24) = v33;
    _os_log_impl(&dword_1D16EC000, v12, v42, "home:didAdd:mediaSystem: | home={id: %{public}s, name: %s}, mediaSystem={id: %{public}s}", v15, 0x20u);
    v34 = v43;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v34, -1, -1);
    MEMORY[0x1D3893640](v15, -1, -1);
  }

  v35 = v45 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v37 = *(v35 + 8);
    ObjectType = swift_getObjectType();
    v46 = v11;
    (*(v37 + 280))(v44, &v46, ObjectType, v37);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6CEE4(void *a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = a2;
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6832C();

  v14 = os_log_type_enabled(v12, v13);
  v44 = v10;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v46 = v43;
    *v15 = 136446722;
    v16 = [v10 uniqueIdentifier];
    v42 = v13;
    v17 = v16;
    sub_1D1E66A5C();

    v41 = sub_1D1886B8C();
    v18 = sub_1D1E68FAC();
    v19 = v11;
    v21 = v20;
    v40 = *(v5 + 8);
    v40(v8, v4);
    v22 = sub_1D1B1312C(v18, v21, &v46);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2080;
    v23 = [v10 name];
    v24 = sub_1D1E6781C();
    v26 = v25;

    v27 = v24;
    v11 = v19;
    v28 = sub_1D1B1312C(v27, v26, &v46);

    *(v15 + 14) = v28;
    *(v15 + 22) = 2082;
    v29 = [v19 uniqueIdentifier];
    sub_1D1E66A5C();

    v30 = sub_1D1E68FAC();
    v32 = v31;
    v40(v8, v4);
    v33 = sub_1D1B1312C(v30, v32, &v46);

    *(v15 + 24) = v33;
    _os_log_impl(&dword_1D16EC000, v12, v42, "home:didRemove:mediaSystem: | home={id: %{public}s, name: %s}, mediaSystem={id: %{public}s}", v15, 0x20u);
    v34 = v43;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v34, -1, -1);
    MEMORY[0x1D3893640](v15, -1, -1);
  }

  v35 = v45 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v37 = *(v35 + 8);
    ObjectType = swift_getObjectType();
    v46 = v11;
    (*(v37 + 288))(v44, &v46, ObjectType, v37);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6D304(void *a1, int a2)
{
  v3 = v2;
  v33 = a2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6832C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v14 = 136446722;
    v16 = [v11 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v32 = v3;
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    v20 = sub_1D1B1312C(v17, v19, &v34);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v11 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v34);

    *(v14 + 14) = v25;
    v3 = v32;
    *(v14 + 22) = 1024;
    v26 = v33;
    *(v14 + 24) = v33 & 1;
    _os_log_impl(&dword_1D16EC000, v12, v13, "home:didUpdateAutomaticSoftwareUpdateEnabled: | home={id: %{public}s, name: %s}, enabled=%{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  else
  {

    v26 = v33;
  }

  v27 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 296))(v11, v26 & 1, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6D68C(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "homeDidUpdateApplicationData: | home={id: %{public}s, name: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 304))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6D9E4(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "home:didUpdateApplicationDataFor:room: | home={id: %{public}s, name: %s}, room={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = v13;
    (*(v46 + 312))(v52, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6DE64(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "home:didUpdateApplicationDataFor:serviceGroup: | home={id: %{public}s, name: %s}, serviceGroup={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = v13;
    (*(v46 + 320))(v52, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6E2E4(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "home:didUpdateApplicationDataFor:actionSet: | home={id: %{public}s, name: %s}, actionSet={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = v13;
    (*(v46 + 328))(v52, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6E764(void *a1, void *a2, int a3)
{
  LODWORD(v3) = a3;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v49 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v51 = v47;
    *v17 = 136447234;
    v18 = [v12 uniqueIdentifier];
    v46 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v45 = v15;
    v20 = sub_1D1E68FAC();
    v22 = v21;
    v48 = v3;
    v44 = *(v7 + 8);
    v44(v10, v6);
    v23 = sub_1D1B1312C(v20, v22, &v51);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    v24 = [v12 name];
    v25 = sub_1D1E6781C();
    v3 = v26;

    v27 = sub_1D1B1312C(v25, v3, &v51);

    *(v17 + 14) = v27;
    *(v17 + 22) = 2082;
    v28 = [v13 uniqueIdentifier];
    sub_1D1E66A5C();

    v29 = sub_1D1E68FAC();
    v31 = v30;
    v44(v10, v6);
    LOBYTE(v3) = v48;
    v32 = sub_1D1B1312C(v29, v31, &v51);

    *(v17 + 24) = v32;
    *(v17 + 32) = 2080;
    v33 = [v13 name];
    v34 = sub_1D1E6781C();
    v36 = v35;

    v37 = sub_1D1B1312C(v34, v36, &v51);

    *(v17 + 34) = v37;
    *(v17 + 42) = 1024;
    *(v17 + 44) = v3 & 1;
    v38 = v46;
    _os_log_impl(&dword_1D16EC000, v46, v45, "home:didUpdate:actionSet:isExecuting: | home={id: %{public}s, name: %s}, actionSet={id: %{public}s, name: %s}, isExecuting=%{BOOL}d", v17, 0x30u);
    v39 = v47;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v39, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v40 = v50 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v42 = *(v40 + 8);
    ObjectType = swift_getObjectType();
    v51 = v13;
    (*(v42 + 336))(v49, &v51, v3 & 1, ObjectType, v42);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6EC10(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "homeDidUpdateSupportsResidentSelection: | home={id: %{public}s, name: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 344))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6EF68(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "homeDidUpdateAutoSelectedPreferredResident: | home={id: %{public}s, name: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 352))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6F2C0(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "homeDidUpdateUserSelectedPreferredResident: | home={id: %{public}s, name: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 360))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6F618(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "homeDidUpdateProtectionMode: | home={id: %{public}s, name: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 368))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6F970(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "homeDidUpdateNetworkRouterSupport: | home={id: %{public}s, name: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 376))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6FCC8(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "homeDidAddWalletKey: | home={id: %{public}s, name: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 384))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A70020(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "homeDidRemoveWalletKey: | home={id: %{public}s, name: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 392))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A70378(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "homeDidUpdateToROAR: | home={id: %{public}s, name: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 400))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A706D0(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "homeDidUpdateSoundCheck: | home={id: %{public}s, name: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 408))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A70A28(void *a1, int a2)
{
  v3 = v2;
  v33 = a2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6832C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v14 = 136446722;
    v16 = [v11 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v32 = v3;
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    v20 = sub_1D1B1312C(v17, v19, &v34);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v11 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v34);

    *(v14 + 14) = v25;
    v3 = v32;
    *(v14 + 22) = 1024;
    v26 = v33;
    *(v14 + 24) = v33 & 1;
    _os_log_impl(&dword_1D16EC000, v12, v13, "home:didUpdateAreBulletinNotificationsSupported: | home={id: %{public}s, name: %s}, bulletinNotificationsSupported=%{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  else
  {

    v26 = v33;
  }

  v27 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 416))(v11, v26 & 1, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A70DB0(void *a1, uint64_t a2)
{
  v3 = v2;
  v33 = a2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6832C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v14 = 136446722;
    v16 = [v11 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v32 = v3;
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    v20 = sub_1D1B1312C(v17, v19, &v34);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v11 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v34);

    *(v14 + 14) = v25;
    v3 = v32;
    v26 = v33;
    *(v14 + 22) = 2048;
    *(v14 + 24) = v26;
    _os_log_impl(&dword_1D16EC000, v12, v13, "home:didUpdateSiriPhraseOptions: | home={id: %{public}s, name: %s}, siriPhraseOptions=%lu", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  else
  {

    v26 = v33;
  }

  v27 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 424))(v11, v26, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A71130(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = v38;
    *v16 = 136446722;
    v17 = [v12 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v18 = sub_1D1E68FAC();
    v39 = v3;
    v20 = v19;
    (*(v7 + 8))(v10, v6);
    v21 = sub_1D1B1312C(v18, v20, &v40);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = [v12 name];
    v23 = sub_1D1E6781C();
    v25 = v24;

    v26 = sub_1D1B1312C(v23, v25, &v40);

    *(v16 + 14) = v26;
    *(v16 + 22) = 2080;
    v27 = [v13 name];
    v28 = sub_1D1E6781C();
    v30 = v29;

    v31 = sub_1D1B1312C(v28, v30, &v40);

    *(v16 + 24) = v31;
    v3 = v39;
    _os_log_impl(&dword_1D16EC000, v14, v15, "home:didUpdateAccessControlFor:user: | home={id: %{public}s, name: %s}, user={name: %s}", v16, 0x20u);
    v32 = v38;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v32, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  v33 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v35 = *(v33 + 8);
    ObjectType = swift_getObjectType();
    v40 = v13;
    (*(v35 + 432))(v12, &v40, ObjectType, v35);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A71504(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "home:didUpdateReprovisionStateForAccessory: | home={id: %{public}s, name: %s}, accessory={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    (*(v46 + 440))(v52, v13, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1D1A71980()
{
  result = [v0 delegate];
  if (result)
  {
    _s15DelegateAdapterCMa_1();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
      Strong = swift_unknownObjectWeakLoadStrong();
      v5 = *(v3 + 8);
      swift_unknownObjectRelease();
      return Strong;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void (*sub_1D1A71A1C(uint64_t **a1))(void *a1)
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
  v2[4] = HMHome.homeDelegate.modify(v2);
  return sub_1D1861B38;
}

id HMHomeManager.homeManagerDelegate.getter()
{
  result = [v0 delegate];
  if (result)
  {
    _s15DelegateAdapterCMa_2();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo13HMHomeManager15DelegateAdapter_delegate;
      Strong = swift_unknownObjectWeakLoadStrong();
      v5 = *(v3 + 8);
      swift_unknownObjectRelease();
      return Strong;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id sub_1D1A71B88@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [*a1 delegate];
  if (!result)
  {
    goto LABEL_5;
  }

  _s15DelegateAdapterCMa_2();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    result = swift_unknownObjectRelease();
LABEL_5:
    Strong = 0;
    v7 = 0;
    goto LABEL_6;
  }

  v5 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo13HMHomeManager15DelegateAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  result = swift_unknownObjectRelease();
LABEL_6:
  *a2 = Strong;
  a2[1] = v7;
  return result;
}

uint64_t HMHomeManager.homeManagerDelegate.setter(uint64_t a1, uint64_t a2)
{
  if (![v2 delegate])
  {
    goto LABEL_7;
  }

  _s15DelegateAdapterCMa_2();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v6 = _s15DelegateAdapterCMa_2();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtCE13HomeDataModelCSo13HMHomeManager15DelegateAdapter_delegate + 8] = 0;
    *(swift_unknownObjectWeakInit() + 8) = a2;
    swift_unknownObjectWeakAssign();
    v11.receiver = v7;
    v11.super_class = v6;
    v8 = objc_msgSendSuper2(&v11, sel_init);
    swift_beginAccess();
    v9 = v8;
    objc_setAssociatedObject(v2, &unk_1EC649760, v9, 1);
    swift_endAccess();

    v10 = v9;
    [v2 setDelegate_];

    return swift_unknownObjectRelease();
  }

  *(v4 + OBJC_IVAR____TtCE13HomeDataModelCSo13HMHomeManager15DelegateAdapter_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t (*HMHomeManager.homeManagerDelegate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if (![v1 delegate])
  {
    goto LABEL_5;
  }

  _s15DelegateAdapterCMa_2();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_5:
    Strong = 0;
    v6 = 0;
    goto LABEL_6;
  }

  v4 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo13HMHomeManager15DelegateAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  swift_unknownObjectRelease();
LABEL_6:
  *a1 = Strong;
  a1[1] = v6;
  return sub_1D1A71E58;
}

uint64_t sub_1D1A71E58(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if ((a2 & 1) == 0)
  {
    return HMHomeManager.homeManagerDelegate.setter(*a1, v2);
  }

  v5 = *a1;
  v6 = swift_unknownObjectRetain();
  HMHomeManager.homeManagerDelegate.setter(v6, v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D1A71F90(void *a1)
{
  v2 = v1;
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D1E6709C();
  __swift_project_value_buffer(v4, qword_1EC649730);
  v5 = a1;
  v6 = sub_1D1E6707C();
  v7 = sub_1D1E6832C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v9 = [v5 homes];
    sub_1D1821898();
    v10 = sub_1D1E67C1C();

    if (v10 >> 62)
    {
      v11 = sub_1D1E6873C();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 4) = v11;

    _os_log_impl(&dword_1D16EC000, v6, v7, "homeManagerDidUpdateHomes: | homesCount=%ld", v8, 0xCu);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  v12 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo13HMHomeManager15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(v14 + 24))(v5, ObjectType, v14);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A721E8(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 primaryHome];
  if (v9)
  {
    v10 = v9;
    if (qword_1EC6422F8 != -1)
    {
      swift_once();
    }

    v11 = sub_1D1E6709C();
    __swift_project_value_buffer(v11, qword_1EC649730);
    v12 = v10;
    v13 = sub_1D1E6707C();
    v14 = sub_1D1E6832C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v41 = a1;
      v16 = v15;
      v17 = swift_slowAlloc();
      v40 = v2;
      v18 = v17;
      v42 = v17;
      *v16 = 136446466;
      v19 = [v12 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1886B8C();
      v20 = sub_1D1E68FAC();
      v22 = v21;
      (*(v5 + 8))(v8, v4);
      v23 = sub_1D1B1312C(v20, v22, &v42);

      *(v16 + 4) = v23;
      *(v16 + 12) = 2080;
      v24 = [v12 name];
      v25 = sub_1D1E6781C();
      v27 = v26;

      v28 = sub_1D1B1312C(v25, v27, &v42);

      *(v16 + 14) = v28;
      _os_log_impl(&dword_1D16EC000, v13, v14, "homeManagerDidUpdatePrimaryHome: | home={id: %{public}s, name: %s}", v16, 0x16u);
      swift_arrayDestroy();
      v29 = v18;
      v2 = v40;
      MEMORY[0x1D3893640](v29, -1, -1);
      v30 = v16;
      a1 = v41;
      MEMORY[0x1D3893640](v30, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EC6422F8 != -1)
    {
      swift_once();
    }

    v31 = sub_1D1E6709C();
    __swift_project_value_buffer(v31, qword_1EC649730);
    v32 = sub_1D1E6707C();
    v33 = sub_1D1E6832C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D16EC000, v32, v33, "homeManagerDidUpdatePrimaryHome: | home=nil", v34, 2u);
      MEMORY[0x1D3893640](v34, -1, -1);
    }
  }

  v35 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo13HMHomeManager15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v37 = *(v35 + 8);
    ObjectType = swift_getObjectType();
    (*(v37 + 32))(a1, ObjectType, v37);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A72628(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136446466;
    v18 = [v12 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v19 = sub_1D1E68FAC();
    v34 = v3;
    v21 = v20;
    (*(v7 + 8))(v10, v6);
    v22 = sub_1D1B1312C(v19, v21, &v36);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    v23 = [v12 name];
    v24 = sub_1D1E6781C();
    v26 = v25;

    v27 = sub_1D1B1312C(v24, v26, &v36);

    *(v16 + 14) = v27;
    v3 = v34;
    _os_log_impl(&dword_1D16EC000, v13, v14, "homeManager:didAdd:home: | home={id: %{public}s, name: %s}", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v17, -1, -1);
    v28 = v16;
    a1 = v35;
    MEMORY[0x1D3893640](v28, -1, -1);
  }

  v29 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo13HMHomeManager15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v31 = *(v29 + 8);
    ObjectType = swift_getObjectType();
    (*(v31 + 40))(a1, v12, ObjectType, v31);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A729A4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136446466;
    v18 = [v12 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v19 = sub_1D1E68FAC();
    v34 = v3;
    v21 = v20;
    (*(v7 + 8))(v10, v6);
    v22 = sub_1D1B1312C(v19, v21, &v36);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    v23 = [v12 name];
    v24 = sub_1D1E6781C();
    v26 = v25;

    v27 = sub_1D1B1312C(v24, v26, &v36);

    *(v16 + 14) = v27;
    v3 = v34;
    _os_log_impl(&dword_1D16EC000, v13, v14, "homeManager:didRemove:home: | home={id: %{public}s, name: %s}", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v17, -1, -1);
    v28 = v16;
    a1 = v35;
    MEMORY[0x1D3893640](v28, -1, -1);
  }

  v29 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo13HMHomeManager15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v31 = *(v29 + 8);
    ObjectType = swift_getObjectType();
    (*(v31 + 48))(a1, v12, ObjectType, v31);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1D1A72D20()
{
  result = [v0 delegate];
  if (result)
  {
    _s15DelegateAdapterCMa_2();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo13HMHomeManager15DelegateAdapter_delegate;
      Strong = swift_unknownObjectWeakLoadStrong();
      v5 = *(v3 + 8);
      swift_unknownObjectRelease();
      return Strong;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void (*sub_1D1A72DBC(uint64_t **a1))(void *a1)
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
  v2[4] = HMHomeManager.homeManagerDelegate.modify(v2);
  return sub_1D1861B38;
}

id HMMediaSession.mediaSessionDelegate.getter()
{
  result = [v0 delegate];
  if (result)
  {
    _s15DelegateAdapterCMa_3();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo14HMMediaSession15DelegateAdapter_delegate;
      Strong = swift_unknownObjectWeakLoadStrong();
      v5 = *(v3 + 8);
      swift_unknownObjectRelease();
      return Strong;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id sub_1D1A72F28@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [*a1 delegate];
  if (!result)
  {
    goto LABEL_5;
  }

  _s15DelegateAdapterCMa_3();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    result = swift_unknownObjectRelease();
LABEL_5:
    Strong = 0;
    v7 = 0;
    goto LABEL_6;
  }

  v5 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo14HMMediaSession15DelegateAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  result = swift_unknownObjectRelease();
LABEL_6:
  *a2 = Strong;
  a2[1] = v7;
  return result;
}

uint64_t HMMediaSession.mediaSessionDelegate.setter(uint64_t a1, uint64_t a2)
{
  if (![v2 delegate])
  {
    goto LABEL_7;
  }

  _s15DelegateAdapterCMa_3();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v6 = _s15DelegateAdapterCMa_3();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtCE13HomeDataModelCSo14HMMediaSession15DelegateAdapter_delegate + 8] = 0;
    *(swift_unknownObjectWeakInit() + 8) = a2;
    swift_unknownObjectWeakAssign();
    v11.receiver = v7;
    v11.super_class = v6;
    v8 = objc_msgSendSuper2(&v11, sel_init);
    swift_beginAccess();
    v9 = v8;
    objc_setAssociatedObject(v2, &unk_1EC649770, v9, 1);
    swift_endAccess();

    v10 = v9;
    [v2 setDelegate_];

    return swift_unknownObjectRelease();
  }

  *(v4 + OBJC_IVAR____TtCE13HomeDataModelCSo14HMMediaSession15DelegateAdapter_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t (*HMMediaSession.mediaSessionDelegate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if (![v1 delegate])
  {
    goto LABEL_5;
  }

  _s15DelegateAdapterCMa_3();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_5:
    Strong = 0;
    v6 = 0;
    goto LABEL_6;
  }

  v4 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo14HMMediaSession15DelegateAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  swift_unknownObjectRelease();
LABEL_6:
  *a1 = Strong;
  a1[1] = v6;
  return sub_1D1A731F8;
}

uint64_t sub_1D1A731F8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if ((a2 & 1) == 0)
  {
    return HMMediaSession.mediaSessionDelegate.setter(*a1, v2);
  }

  v5 = *a1;
  v6 = swift_unknownObjectRetain();
  HMMediaSession.mediaSessionDelegate.setter(v6, v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D1A73290(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136446466;
    v18 = [v12 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v19 = sub_1D1E68FAC();
    v34 = v3;
    v21 = v20;
    (*(v7 + 8))(v10, v6);
    v22 = sub_1D1B1312C(v19, v21, &v36);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    v23 = [v12 playbackStateDescription];
    v24 = sub_1D1E6781C();
    v26 = v25;

    v27 = sub_1D1B1312C(v24, v26, &v36);

    *(v16 + 14) = v27;
    v3 = v34;
    _os_log_impl(&dword_1D16EC000, v13, v14, "mediaSession:didUpdate:state: | mediaSession={id: %{public}s}, state: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v17, -1, -1);
    v28 = v16;
    a2 = v35;
    MEMORY[0x1D3893640](v28, -1, -1);
  }

  v29 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo14HMMediaSession15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v31 = *(v29 + 8);
    ObjectType = swift_getObjectType();
    (*(v31 + 24))(v12, a2, ObjectType, v31);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A73600(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136446210;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v27);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1D16EC000, v11, v12, "mediaSessionDidUpdate: | mediaSession={id: %{public}s}", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1D3893640](v15, -1, -1);
    v21 = v14;
    v2 = v26;
    MEMORY[0x1D3893640](v21, -1, -1);
  }

  v22 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo14HMMediaSession15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = *(v22 + 8);
    ObjectType = swift_getObjectType();
    (*(v24 + 32))(v10, ObjectType, v24);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1D1A738F4()
{
  result = [v0 delegate];
  if (result)
  {
    _s15DelegateAdapterCMa_3();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo14HMMediaSession15DelegateAdapter_delegate;
      Strong = swift_unknownObjectWeakLoadStrong();
      v5 = *(v3 + 8);
      swift_unknownObjectRelease();
      return Strong;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void (*sub_1D1A73990(uint64_t **a1))(void *a1)
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
  v2[4] = HMMediaSession.mediaSessionDelegate.modify(v2);
  return sub_1D1861B38;
}

id HMUserActionPredictionController.predictionDelegate.getter()
{
  result = [v0 delegate];
  if (result)
  {
    _s15DelegateAdapterCMa_4();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo32HMUserActionPredictionController15DelegateAdapter_delegate;
      Strong = swift_unknownObjectWeakLoadStrong();
      v5 = *(v3 + 8);
      swift_unknownObjectRelease();
      return Strong;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id sub_1D1A73ABC@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [*a1 delegate];
  if (!result)
  {
    goto LABEL_5;
  }

  _s15DelegateAdapterCMa_4();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    result = swift_unknownObjectRelease();
LABEL_5:
    Strong = 0;
    v7 = 0;
    goto LABEL_6;
  }

  v5 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo32HMUserActionPredictionController15DelegateAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  result = swift_unknownObjectRelease();
LABEL_6:
  *a2 = Strong;
  a2[1] = v7;
  return result;
}

uint64_t HMUserActionPredictionController.predictionDelegate.setter(uint64_t a1, uint64_t a2)
{
  if (![v2 delegate])
  {
    goto LABEL_7;
  }

  _s15DelegateAdapterCMa_4();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v6 = _s15DelegateAdapterCMa_4();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtCE13HomeDataModelCSo32HMUserActionPredictionController15DelegateAdapter_delegate + 8] = 0;
    *(swift_unknownObjectWeakInit() + 8) = a2;
    swift_unknownObjectWeakAssign();
    v11.receiver = v7;
    v11.super_class = v6;
    v8 = objc_msgSendSuper2(&v11, sel_init);
    swift_beginAccess();
    v9 = v8;
    objc_setAssociatedObject(v2, &unk_1EC649780, v9, 1);
    swift_endAccess();

    v10 = v9;
    [v2 setDelegate_];

    return swift_unknownObjectRelease();
  }

  *(v4 + OBJC_IVAR____TtCE13HomeDataModelCSo32HMUserActionPredictionController15DelegateAdapter_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t (*HMUserActionPredictionController.predictionDelegate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if (![v1 delegate])
  {
    goto LABEL_5;
  }

  _s15DelegateAdapterCMa_4();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_5:
    Strong = 0;
    v6 = 0;
    goto LABEL_6;
  }

  v4 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo32HMUserActionPredictionController15DelegateAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  swift_unknownObjectRelease();
LABEL_6:
  *a1 = Strong;
  a1[1] = v6;
  return sub_1D1A73D8C;
}

uint64_t sub_1D1A73D8C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if ((a2 & 1) == 0)
  {
    return HMUserActionPredictionController.predictionDelegate.setter(*a1, v2);
  }

  v5 = *a1;
  v6 = swift_unknownObjectRetain();
  HMUserActionPredictionController.predictionDelegate.setter(v6, v2);

  return swift_unknownObjectRelease();
}

id sub_1D1A73E70()
{
  v2.receiver = v0;
  v2.super_class = _s15DelegateAdapterCMa_4();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D1A73EB4()
{
  result = [v0 delegate];
  if (result)
  {
    _s15DelegateAdapterCMa_4();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo32HMUserActionPredictionController15DelegateAdapter_delegate;
      Strong = swift_unknownObjectWeakLoadStrong();
      v5 = *(v3 + 8);
      swift_unknownObjectRelease();
      return Strong;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void (*sub_1D1A73F50(uint64_t **a1))(void *a1)
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
  v2[4] = HMUserActionPredictionController.predictionDelegate.modify(v2);
  return sub_1D1861B38;
}

uint64_t sub_1D1A73FE0()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1A740FC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6497B0, &qword_1D1E6F370);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D1E55558;
  v0[13] = &block_descriptor_36;
  v0[14] = v2;
  [v1 fetchPredictionsWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A740FC()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 8);

  return v2(v1);
}

uint64_t sub_1D1A741EC(uint64_t a1)
{
  result = sub_1D174A5B8(&qword_1EC6497A0, &qword_1EC6497A8, 0x1E696CCB0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1A74254(void *a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v6 = sub_1D1E6709C();
  __swift_project_value_buffer(v6, qword_1EC649730);
  swift_bridgeObjectRetain_n();
  v7 = a1;
  v8 = sub_1D1E6707C();
  v9 = sub_1D1E6832C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v7;
    *v11 = v7;
    *(v10 + 12) = 2048;
    if (a2 >> 62)
    {
      v12 = sub_1D1E6873C();
    }

    else
    {
      v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v7;

    *(v10 + 14) = v12;

    _os_log_impl(&dword_1D16EC000, v8, v9, "userActionPredictionController:didUpdate: | controller={id: %@, predictions: %ld}", v10, 0x16u);
    sub_1D179F28C(v11);
    MEMORY[0x1D3893640](v11, -1, -1);
    MEMORY[0x1D3893640](v10, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v14 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo32HMUserActionPredictionController15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    (*(v16 + 24))(v7, a2, ObjectType, v16);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1D1A74518()
{
  result = qword_1EC6497C0;
  if (!qword_1EC6497C0)
  {
    sub_1D17DAA94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6497C0);
  }

  return result;
}

void sub_1D1A74570()
{
  v1 = [*v0 uniqueIdentifier];
  sub_1D1E66A5C();
}

uint64_t sub_1D1A745D0()
{
  v1 = [*v0 services];
  sub_1D17DAA94();
  v2 = sub_1D1E67C1C();

  return v2;
}

void sub_1D1A74844()
{
  v1 = [v0 uniqueIdentifier];
  sub_1D1E66A5C();
}

uint64_t sub_1D1A748A4()
{
  v1 = [v0 name];
  v2 = sub_1D1E6781C();

  return v2;
}

id sub_1D1A748FC()
{
  v1 = [v0 home];

  return v1;
}

id sub_1D1A74934@<X0>(void *a1@<X8>)
{
  result = [v1 room];
  *a1 = result;
  return result;
}

uint64_t sub_1D1A749DC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_1D1E6781C();

  return v6;
}

uint64_t sub_1D1A74A78(uint64_t a1, uint64_t a2, SEL *a3, unint64_t *a4, uint64_t *a5)
{
  v8 = [v5 *a3];
  sub_1D1741B10(0, a4, a5);
  v9 = sub_1D1E67C1C();

  return v9;
}

uint64_t sub_1D1A74AE4()
{
  v1 = [v0 cameraProfiles];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
  v3 = sub_1D1E67C1C();

  return v3;
}

uint64_t sub_1D1A74B58()
{
  v1 = [v0 lightProfiles];
  sub_1D1741B10(0, &qword_1EE079CF0, 0x1E696CBB8);
  sub_1D174A5B8(&qword_1EE079CE8, &qword_1EE079CF0, 0x1E696CBB8);
  v2 = sub_1D1E6816C();

  return v2;
}

id sub_1D1A74C00()
{
  v1 = [v0 category];

  return v1;
}

id sub_1D1A74C38@<X0>(void *a1@<X8>)
{
  result = [v1 mediaProfile];
  *a1 = result;
  return result;
}

id sub_1D1A74C74()
{
  v1 = [v0 softwareUpdateController];

  return v1;
}

uint64_t sub_1D1A74CC8()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1D1A74EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D1A10DD4;

  return (sub_1D1A759B4)(a1, a2, a3);
}

uint64_t sub_1D1A74FBC(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v4 = swift_allocError();
    *v5 = a2;
    v6 = a2;

    return MEMORY[0x1EEE6DEE8](v3, v4);
  }

  else
  {
    sub_1D1741B10(0, &qword_1EC649728, 0x1E696CBB0);
    **(*(v3 + 64) + 40) = sub_1D1E67C1C();

    return MEMORY[0x1EEE6DEE0](v3);
  }
}

uint64_t sub_1D1A750AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D1A00CEC;

  return (sub_1D1A75CD4)(a1, a2, a3);
}

uint64_t sub_1D1A75174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4BFC;

  return sub_1D1A75E4C(a1, a2, a3, a4);
}

uint64_t sub_1D1A75248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D17C4CF0;

  return (sub_1D1A7611C)(a1, a2, a3);
}

uint64_t sub_1D1A75310()
{
  v1 = *v0;
  v2 = sub_1D1E677EC();
  v3 = [v1 localizedTitleForKeyPath_];

  v4 = sub_1D1E6781C();
  return v4;
}

uint64_t sub_1D1A75380()
{
  v1 = *v0;
  v2 = sub_1D1E66A2C();
  v3 = sub_1D1E66A2C();
  v4 = sub_1D1E67BFC();
  v5 = [v1 defaultSettingsWithHomeIdentifier:v2 accessoryIdentifier:v3 keyPaths:v4];

  sub_1D1741B10(0, &qword_1EC649728, 0x1E696CBB0);
  v6 = sub_1D1E67C1C();

  return v6;
}

uint64_t dispatch thunk of AccessorySettingsDataSourceProtocol.fetchAccessorySettings(withHomeIdentifier:accessoryIdentifier:keyPaths:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 48);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D1A0AFF8;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AccessorySettingsDataSourceProtocol.fetchCachedAccessorySettings(withHomeIdentifier:accessoryIdentifier:keyPaths:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 56);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D1A0AB6C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AccessorySettingsDataSourceProtocol.subscribeToAccessorySettings(withHomeIdentifier:accessoryIdentifier:keyPaths:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 64);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1D17C4BFC;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AccessorySettingsDataSourceProtocol.unsubscribeToAccessorySettings(withHomeIdentifier:accessoryIdentifier:keyPaths:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 72);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D17C4CF0;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_1D1A759B4()
{
  v2 = v0;
  v3 = sub_1D1E66A2C();
  v1[19] = v3;
  v4 = sub_1D1E66A2C();
  v1[20] = v4;
  v5 = sub_1D1E67BFC();
  v1[21] = v5;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_1D1A75B2C;
  v6 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6497F8, &unk_1D1E952B0);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1D1A74FBC;
  v1[13] = &block_descriptor_24_0;
  v1[14] = v6;
  [v2 fetchAccessorySettingsWithHomeIdentifier:v3 accessoryIdentifier:v4 keyPaths:v5 completionHandler:v1 + 10];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1D1A75B2C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 168);
  v5 = *(*v0 + 160);
  v6 = *(*v0 + 152);
  if (*(v1 + 48))
  {
    v7 = *(v1 + 48);
    swift_willThrow();

    v8 = *(v3 + 8);

    return v8();
  }

  else
  {
    v10 = *(v2 + 144);

    v11 = *(v3 + 8);

    return v11(v10);
  }
}

uint64_t sub_1D1A75CD4()
{
  v2 = v0;
  v3 = sub_1D1E66A2C();
  v1[19] = v3;
  v4 = sub_1D1E66A2C();
  v1[20] = v4;
  v5 = sub_1D1E67BFC();
  v1[21] = v5;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_1D1A762BC;
  v6 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6497F8, &unk_1D1E952B0);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1D1A74FBC;
  v1[13] = &block_descriptor_18;
  v1[14] = v6;
  [v2 fetchCachedAccessorySettingsWithHomeIdentifier:v3 accessoryIdentifier:v4 keyPaths:v5 completionHandler:v1 + 10];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1D1A75E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v8 = sub_1D1E66A2C();
  v5[18] = v8;
  v9 = sub_1D1E66A2C();
  v5[19] = v9;
  v10 = sub_1D1E67BFC();
  v5[20] = v10;
  v5[2] = v5;
  v5[3] = sub_1D1A75FC4;
  v11 = swift_continuation_init();
  v5[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v5[10] = MEMORY[0x1E69E9820];
  v5[11] = 1107296256;
  v5[12] = sub_1D17B04C8;
  v5[13] = &block_descriptor_12_0;
  v5[14] = v11;
  [v6 subscribeToAccessorySettingsWithHomeIdentifier:v8 accessoryIdentifier:v9 keyPaths:v10 options:a4 completionHandler:v5 + 10];

  return MEMORY[0x1EEE6DEC8](v5 + 2);
}

uint64_t sub_1D1A75FC4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);
  v5 = *(*v0 + 144);
  if (*(v1 + 48))
  {
    v6 = *(v1 + 48);
    swift_willThrow();
  }

  v7 = *(v2 + 8);

  return v7();
}

uint64_t sub_1D1A7611C()
{
  v2 = v0;
  v3 = sub_1D1E66A2C();
  v1[18] = v3;
  v4 = sub_1D1E66A2C();
  v1[19] = v4;
  v5 = sub_1D1E67BFC();
  v1[20] = v5;
  v1[2] = v1;
  v1[3] = sub_1D1A762C0;
  v6 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1D17B04C8;
  v1[13] = &block_descriptor_37;
  v1[14] = v6;
  [v2 unsubscribeToAccessorySettingsWithHomeIdentifier:v3 accessoryIdentifier:v4 keyPaths:v5 completionHandler:v1 + 10];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1D1A762DC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = sub_1D1E6781C();

  return v5;
}

uint64_t sub_1D1A76330()
{
  v1 = [*v0 actions];
  sub_1D1A7641C();
  sub_1D179E328();
  v2 = sub_1D1E6816C();

  return v2;
}

unint64_t sub_1D1A7641C()
{
  result = qword_1EE079BF0;
  if (!qword_1EE079BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE079BF0);
  }

  return result;
}

id sub_1D1A76468()
{
  v1 = [*v0 streamControl];

  return v1;
}

id sub_1D1A764A0()
{
  v1 = [*v0 snapshotControl];

  return v1;
}

id sub_1D1A764D8()
{
  v1 = [*v0 speakerControl];

  return v1;
}

id sub_1D1A76510()
{
  v1 = [*v0 microphoneControl];

  return v1;
}

id sub_1D1A76548()
{
  v1 = [*v0 settingsControl];

  return v1;
}

unint64_t sub_1D1A76580(uint64_t a1)
{
  result = sub_1D1A765A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D1A765A8()
{
  result = qword_1EC649800;
  if (!qword_1EC649800)
  {
    sub_1D1A76600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649800);
  }

  return result;
}

unint64_t sub_1D1A76600()
{
  result = qword_1EE079CD8;
  if (!qword_1EE079CD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE079CD8);
  }

  return result;
}

uint64_t sub_1D1A766F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void *))
{
  v6 = (*(a2 + 120))();
  v7 = *a3;
  v11[0] = sub_1D1E6781C();
  v11[1] = v8;
  v10[2] = v11;
  LOBYTE(a4) = sub_1D18B5EC8(a4, v10, v6);

  return a4 & 1;
}

uint64_t CharacteristicProtocol.isReadOnly.getter(uint64_t a1, uint64_t a2)
{
  if (CharacteristicProtocol.isReadable.getter(a1, a2))
  {
    v4 = CharacteristicProtocol.isWritable.getter(a1, a2) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t BatchCharacteristicRequest.Write.characteristicsValueSet.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

id BatchCharacteristicRequest.Response.result.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + *(a1 + 36));
  *a2 = v3;
  return v3;
}

void BatchCharacteristicRequest.Response.result.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 36);

  *(v2 + v4) = v3;
}

uint64_t (*BatchCharacteristicRequest.Response.result.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_2;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_1D1A768EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t CharacteristicProtocol.fetchedValue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v7 = *(a3 + 144);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_1D1A76A18;

  return v11(a2, a3);
}

uint64_t sub_1D1A76A18()
{
  v2 = *(*v1 + 48);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_1D1A78B00;
  }

  else
  {
    v3 = sub_1D1A76B30;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1A76B30()
{
  v1 = v0[5];
  v2 = v0[2];
  (*(v0[4] + 72))(v0[3]);
  v3 = v0[1];

  return v3();
}

uint64_t CharacteristicProtocol.BOOL.getter(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 48) = v5;
  *v5 = v2;
  v5[1] = sub_1D18B8F54;

  return CharacteristicProtocol.fetchedValue()(v2 + 16, a1, a2);
}

uint64_t CharacteristicProtocol.cachedBool.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 72))(v4);
  if (v4[3])
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_1D18B9B30(v4);
    return 2;
  }
}

uint64_t CharacteristicProtocol.int.getter(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_1D18B9188;

  return CharacteristicProtocol.fetchedValue()(v2 + 16, a1, a2);
}

uint64_t CharacteristicProtocol.cachedInt.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 72))(v4);
  if (v4[3])
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D18B9B30(v4);
    return 0;
  }
}

uint64_t CharacteristicProtocol.float.getter(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_1D18B9E0C;

  return CharacteristicProtocol.fetchedValue()(v2 + 16, a1, a2);
}

uint64_t CharacteristicProtocol.cachedFloat.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 72))(v4);
  if (v4[3])
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D18B9B30(v4);
    return 0;
  }
}

uint64_t CharacteristicProtocol.data.getter(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_1D18BA104;

  return CharacteristicProtocol.fetchedValue()(v2 + 16, a1, a2);
}

uint64_t CharacteristicProtocol.tlv8.getter(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_1D18BA344;

  return CharacteristicProtocol.fetchedValue()(v2 + 16, a1, a2);
}

uint64_t _s13HomeDataModel22CharacteristicProtocolPAAE06cachedB010Foundation0B0VSgvg_0(uint64_t a1, uint64_t a2)
{
  (*(a2 + 72))(v4);
  if (v4[3])
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D18B9B30(v4);
    return 0;
  }
}

uint64_t HMCharacteristic.notifications(enabled:)(char a1)
{
  *(v2 + 144) = v1;
  *(v2 + 160) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A77154, 0, 0);
}

uint64_t sub_1D1A77154()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 160);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1D1A77278;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D17B04C8;
  *(v0 + 104) = &block_descriptor_38;
  *(v0 + 112) = v3;
  [v1 enableNotification:v2 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D1A77278()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 152) = v2;
  if (v2)
  {
    v3 = sub_1D1A78AFC;
  }

  else
  {
    v3 = sub_1D1901068;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t HMCharacteristic.write(value:)(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A773A8, 0, 0);
}

uint64_t sub_1D1A773A8()
{
  sub_1D18CA7C0(v0[22], (v0 + 18));
  v1 = v0[21];
  if (v1)
  {
    v2 = __swift_project_boxed_opaque_existential_1(v0 + 18, v0[21]);
    v3 = *(v1 - 8);
    v4 = *(v3 + 64) + 15;
    v5 = swift_task_alloc();
    (*(v3 + 16))(v5, v2, v1);
    v6 = sub_1D1E6903C();
    (*(v3 + 8))(v5, v1);

    __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  }

  else
  {
    v6 = 0;
  }

  v0[24] = v6;
  v7 = v0[23];
  v0[2] = v0;
  v0[3] = sub_1D1A7759C;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_11_0;
  v0[14] = v8;
  [v7 writeValue:v6 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A7759C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1D1A77710;
  }

  else
  {
    v3 = sub_1D1A776AC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1A776AC()
{
  v1 = *(v0 + 192);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1A77710()
{
  v1 = v0[24];
  v2 = v0[25];
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = v0[1];
  v4 = v0[25];

  return v3();
}

double sub_1D1A7779C@<D0>(_OWORD *a1@<X8>)
{
  if ([*v1 value])
  {
    sub_1D1E6866C();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

id sub_1D1A7782C@<X0>(void *a1@<X8>)
{
  result = [*v1 service];
  *a1 = result;
  return result;
}

void sub_1D1A77888(uint64_t a1, uint64_t a2, SEL *a3, void (*a4)(void))
{
  v6 = [*v4 *a3];
  a4();
}

id sub_1D1A77918()
{
  v1 = [*v0 metadata];

  return v1;
}

uint64_t sub_1D1A77950()
{
  v1 = [*v0 properties];
  v2 = sub_1D1E67C1C();

  return v2;
}

uint64_t sub_1D1A779C4()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1D1A77AD8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_50;
  v0[14] = v2;
  [v1 readValueWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A77AD8()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
  }

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1D1A77BE0(char a1)
{
  *(v2 + 160) = a1;
  *(v2 + 144) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A77C08, 0, 0);
}

uint64_t sub_1D1A77C08()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 160);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1D1A77D2C;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D17B04C8;
  *(v0 + 104) = &block_descriptor_46;
  *(v0 + 112) = v3;
  [v1 enableNotification:v2 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D1A77D2C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 152) = v2;
  if (v2)
  {
    v3 = sub_1D1A77E3C;
  }

  else
  {
    v3 = sub_1D16FB500;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1A77E3C()
{
  v1 = *(v0 + 152);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 152);

  return v2();
}

uint64_t sub_1D1A77EA8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4BFC;

  return HMCharacteristic.write(value:)(a1);
}

uint64_t sub_1D1A77F5C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D1E6904C() & 1;
  }
}

uint64_t sub_1D1A77FD8(uint64_t a1)
{
  *(a1 + 8) = sub_1D174A5B8(qword_1EC649808, &qword_1EE079CD0, 0x1E696CB38);
  result = sub_1D174A5B8(&qword_1EC643038, &qword_1EE079CD0, 0x1E696CB38);
  *(a1 + 16) = result;
  return result;
}

uint64_t dispatch thunk of CharacteristicProtocol.currentValue<A>()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 136);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1D17C4BFC;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CharacteristicProtocol.readValue()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 144);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of CharacteristicProtocol.notifications(enabled:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 152);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D17C4BFC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CharacteristicProtocol.write(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 160);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D17C4CF0;

  return v11(a1, a2, a3);
}

uint64_t sub_1D1A785E4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D1A78638()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D1A7868C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = type metadata accessor for BatchCharacteristicRequest.Response.ResultType();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1A7871C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_1D1A78860(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = 0;
      *v18 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v18 = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1D1A78A54()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D1A78A90()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t HomeManagerProtocol.takeAssertion(reason:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (qword_1EE07A070 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EE081480);

  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6835C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1D1B1312C(a1, a2, &v16);
    _os_log_impl(&dword_1D16EC000, v11, v12, "Taking assertion for reason %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1D3893640](v14, -1, -1);
    MEMORY[0x1D3893640](v13, -1, -1);
  }

  result = (*(a4 + 96))(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t HomeManagerProtocol.releaseAssertion(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (qword_1EE07A070 != -1)
  {
    swift_once();
  }

  v6 = sub_1D1E6709C();
  __swift_project_value_buffer(v6, qword_1EE081480);
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6835C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D16EC000, v7, v8, "Releasing provided assertion.", v9, 2u);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  (*(a3 + 104))(v5, a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D1A78DE8()
{
  v1 = [v0 homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v2 = sub_1D1E67C1C();

  return v2;
}

id sub_1D1A78E50()
{
  v1 = [v0 currentHome];

  return v1;
}

id sub_1D1A78E88@<X0>(void *a1@<X8>)
{
  result = [v1 createAccessorySettingsDataSource];
  *a1 = result;
  return result;
}

void HMHome.perform(batchReadRequest:handlers:)(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v11 = a2[1];
  v12 = *a2;
  if (*a1 >> 62)
  {
    v3 = sub_1D1E6873C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    *&v14[0] = MEMORY[0x1E69E7CC0];
    sub_1D1E6899C();
    if (v3 < 0)
    {
      __break(1u);
      return;
    }

    v4 = objc_opt_self();
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1D3891EF0](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = [v4 readRequestWithCharacteristic_];

      sub_1D1E6896C();
      v9 = *(*&v14[0] + 16);
      sub_1D1E689AC();
      sub_1D1E689BC();
      sub_1D1E6897C();
    }

    while (v3 != v5);
  }

  sub_1D1741B10(0, &qword_1EC649B20, 0x1E696CB50);
  v10 = sub_1D1E67BFC();

  v13 = [objc_opt_self() characteristicBatchRequestWithReadRequests_];

  v14[0] = v12;
  v14[1] = v11;
  sub_1D1A7918C(v13, v14);
}

id sub_1D1A7918C(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v7;
  v8[5] = v6;
  v17 = sub_1D1A7CB54;
  v18 = v8;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1D1C40BA8;
  v16 = &block_descriptor_83;
  v9 = _Block_copy(&v13);

  [a1 setCompletionHandler_];
  _Block_release(v9);
  v10 = swift_allocObject();
  v10[2] = v5;
  v10[3] = v4;
  v10[4] = v7;
  v10[5] = v6;
  v17 = sub_1D1A7CBD4;
  v18 = v10;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1D1E0290C;
  v16 = &block_descriptor_89;
  v11 = _Block_copy(&v13);

  [a1 setProgressHandler_];
  _Block_release(v11);
  return [v2 performBatchCharacteristicRequest_];
}

void HMHome.perform(batchWriteRequest:handlers:)(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v26 = a2[1];
  v27 = *a2;
  *&v33 = *a1;
  BYTE8(v33) = v3;
  *&v34 = v4;

  v5 = CharacteristicValueSet.characteristicsAndValues(in:)(v2);

  v6 = *(v5 + 16);
  if (v6)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1D1E6899C();
    v7 = v5 + 64;
    v8 = -1 << *(v5 + 32);
    v9 = sub_1D1E6869C();
    v28 = *(v5 + 36);
    v29 = objc_opt_self();
    v10 = 0;
    v11 = *(v5 + 32);
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << v11)
    {
      v13 = v9 >> 6;
      if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_20;
      }

      v14 = *(*(v5 + 48) + 8 * v9);
      sub_1D1741970(*(v5 + 56) + 32 * v9, &v33 + 8);
      v30 = v14;
      sub_1D1742194((&v33 + 8), &v31);
      __swift_project_boxed_opaque_existential_1(&v31, v32);
      v15 = [v29 writeRequestWithCharacteristic:v14 value:sub_1D1E6903C()];
      swift_unknownObjectRelease();
      sub_1D1A7B2E0(&v30);
      sub_1D1E6896C();
      v16 = *(v35 + 16);
      sub_1D1E689AC();
      sub_1D1E689BC();
      sub_1D1E6897C();
      v11 = *(v5 + 32);
      v12 = 1 << v11;
      if (v9 >= 1 << v11)
      {
        goto LABEL_21;
      }

      v17 = *(v7 + 8 * v13);
      if ((v17 & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      if (v28 != *(v5 + 36))
      {
        goto LABEL_23;
      }

      v18 = v17 & (-2 << (v9 & 0x3F));
      if (v18)
      {
        v12 = __clz(__rbit64(v18)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v13 << 6;
        v20 = v13 + 1;
        v21 = (v5 + 72 + 8 * v13);
        while (v20 < (v12 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            v12 = __clz(__rbit64(v22)) + v19;
            break;
          }
        }
      }

      ++v10;
      v9 = v12;
      if (v10 == v6)
      {

        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {

LABEL_18:
    sub_1D1741B10(0, &qword_1EC649B28, 0x1E696CB70);
    v24 = sub_1D1E67BFC();

    v25 = [objc_opt_self() characteristicBatchRequestWithWriteRequests_];

    v33 = v27;
    v34 = v26;
    sub_1D1A7918C(v25, &v33);
  }
}

void *sub_1D1A7968C(unint64_t a1, void (*a2)(uint64_t))
{
  if (a1 >> 62)
  {
    v4 = sub_1D1E6873C();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v16 = MEMORY[0x1E69E7CC0];
    result = sub_1D178D6E4(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = 0;
    v5 = v16;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D3891EF0](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 error];
      v11 = [v9 request];
      v12 = [v11 characteristic];

      v14 = *(v16 + 16);
      v13 = *(v16 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D178D6E4((v13 > 1), v14 + 1, 1);
      }

      ++v7;
      *(v16 + 16) = v14 + 1;
      v15 = v16 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v10;
    }

    while (v4 != v7);
  }

  a2(v5);
}

id sub_1D1A79898@<X0>(void *a1@<X8>)
{
  result = [v1 currentUser];
  *a1 = result;
  return result;
}

uint64_t sub_1D1A7997C(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A799A0, 0, 0);
}

uint64_t sub_1D1A799A0()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = sub_1D1E677EC();
  v0[21] = v4;
  v0[2] = v0;
  v0[3] = sub_1D1A79AD0;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_79;
  v0[14] = v5;
  [v2 updateName:v4 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A79AD0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 168);
  if (*(v1 + 48))
  {
    v4 = *(v1 + 48);
    swift_willThrow();
  }

  v5 = *(v2 + 8);

  return v5();
}

uint64_t sub_1D1A79BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1A79C14, 0, 0);
}

uint64_t sub_1D1A79C14()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = sub_1D1E677EC();
  v0[23] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1A7CC1C;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649B68, qword_1D1E959C0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D19F40C0;
  v0[13] = &block_descriptor_75;
  v0[14] = v5;
  [v2 addRoomWithName:v4 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A79D4C(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 144) = v1;
  *(v2 + 152) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D1A79D70, 0, 0);
}

uint64_t sub_1D1A79D70()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D1A7CC68;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_71;
  v0[14] = v3;
  [v2 removeRoom:v1 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

id sub_1D1A79E90@<X0>(void *a1@<X8>)
{
  result = [v1 roomForEntireHome];
  *a1 = result;
  return result;
}

uint64_t sub_1D1A79ECC(uint64_t a1, void *a2)
{
  v3[18] = a1;
  v3[19] = v2;
  v3[20] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1A79EF4, 0, 0);
}

uint64_t sub_1D1A79EF4()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1D1A7CC68;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_67;
  v0[14] = v4;
  [v2 assignAccessory:v3 toRoom:v1 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A7A01C(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A7A03C, 0, 0);
}

uint64_t sub_1D1A7A03C()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D1A7CC68;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_63_0;
  v0[14] = v3;
  [v1 unblockAccessory:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A7A15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1A7A180, 0, 0);
}

uint64_t sub_1D1A7A180()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = sub_1D1E677EC();
  v0[23] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1A7CC1C;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649B60, &qword_1D1E959B8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D19F40C0;
  v0[13] = &block_descriptor_59;
  v0[14] = v5;
  [v2 addZoneWithName:v4 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A7A2B8(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 144) = v1;
  *(v2 + 152) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D1A7A2DC, 0, 0);
}

uint64_t sub_1D1A7A2DC()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D1A7CC68;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_55;
  v0[14] = v3;
  [v2 removeZone:v1 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A7A3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1A7A420, 0, 0);
}

uint64_t sub_1D1A7A420()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = sub_1D1E677EC();
  v0[23] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1A7CC1C;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649B58, &qword_1D1E959B0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D19F40C0;
  v0[13] = &block_descriptor_51;
  v0[14] = v5;
  [v2 addServiceGroupWithName:v4 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A7A558(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 144) = v1;
  *(v2 + 152) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D1A7A57C, 0, 0);
}

uint64_t sub_1D1A7A57C()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D1A7CC68;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_47;
  v0[14] = v3;
  [v2 removeServiceGroup:v1 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A7A6BC()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1D1A7CC68;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_43_0;
  v0[14] = v2;
  [v1 manageUsersWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

id sub_1D1A7A7D0()
{
  v1 = [v0 userActionPredictionController];

  return v1;
}

uint64_t sub_1D1A7A808(char a1, char a2)
{
  *(v3 + 152) = v2;
  *(v3 + 161) = a2;
  *(v3 + 160) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A7A830, 0, 0);
}

uint64_t sub_1D1A7A830()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 161);
  v3 = *(v0 + 160);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1D1A740FC;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649B50, &qword_1D1EB26F0);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D1A7A964;
  *(v0 + 104) = &block_descriptor_40;
  *(v0 + 112) = v4;
  [v1 enableNotifications:v3 includeAppleMediaAccessoryNotifications:v2 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D1A7A964(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t sub_1D1A7AA00(uint64_t a1, uint64_t a2, SEL *a3, unint64_t *a4, uint64_t *a5)
{
  v8 = [*v5 *a3];
  sub_1D1741B10(0, a4, a5);
  v9 = sub_1D1E67C1C();

  return v9;
}

uint64_t sub_1D1A7AA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a1;
  v4[20] = a2;
  v5 = *v3;
  v4[21] = a3;
  v4[22] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1D1A7AA94, 0, 0);
}

uint64_t sub_1D1A7AA94()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = sub_1D1E677EC();
  v0[23] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1A7ABCC;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649B48, &qword_1D1E959A8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D19F40C0;
  v0[13] = &block_descriptor_36_0;
  v0[14] = v5;
  [v2 addActionSetWithName:v4 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A7ABCC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 184);
  if (*(v1 + 48))
  {
    swift_willThrow();
  }

  else
  {
    v7 = *(v2 + 144);
    v6 = *(v2 + 152);

    *v6 = v7;
  }

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1D1A7AD0C(void *a1)
{
  v3 = *v1;
  *(v2 + 144) = *a1;
  *(v2 + 152) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D1A7AD34, 0, 0);
}

uint64_t sub_1D1A7AD34()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D1A7CC68;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_32_2;
  v0[14] = v3;
  [v1 removeActionSet:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A7AE54(void *a1)
{
  v3 = *v1;
  *(v2 + 144) = *a1;
  *(v2 + 152) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D1A7AE7C, 0, 0);
}

uint64_t sub_1D1A7AE7C()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D1A7CC68;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_28_1;
  v0[14] = v3;
  [v1 executeActionSet:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

void sub_1D1A7AF9C(void *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1D1E677EC();
  v5 = [v3 builtinActionSetOfType_];

  *a1 = v5;
}

uint64_t sub_1D1A7AFF8(void *a1)
{
  v3 = *v1;
  *(v2 + 144) = *a1;
  *(v2 + 152) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D1A7B020, 0, 0);
}

uint64_t sub_1D1A7B020()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D1A77AD8;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_24_1;
  v0[14] = v3;
  [v1 addTrigger:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A7B140(void *a1)
{
  v3 = *v1;
  *(v2 + 144) = *a1;
  *(v2 + 152) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D1A7B168, 0, 0);
}

uint64_t sub_1D1A7B168()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D1A7CC68;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_39;
  v0[14] = v3;
  [v1 removeTrigger:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A7B288()
{
  v1 = [*v0 matterControllerID];
  v2 = sub_1D1E6781C();

  return v2;
}

uint64_t sub_1D1A7B2E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6460A8, &qword_1D1E7E4F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1A7B3D0(void *a1)
{
  a1[2] = sub_1D174A5B8(&qword_1EE079C20, &qword_1EE07B620, 0x1E696CB98);
  a1[3] = sub_1D174A5B8(&qword_1EE079C18, &qword_1EE07B620, 0x1E696CB98);
  result = sub_1D174A5B8(&qword_1EE079C08, &qword_1EE07B620, 0x1E696CB98);
  a1[4] = result;
  return result;
}

uint64_t sub_1D1A7B588()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t dispatch thunk of BasicHomeProtocol.updateName(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 232);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1D17C4CF0;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of BasicHomeProtocol.addRoom(named:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 240);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D17C4CF0;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of BasicHomeProtocol.removeRoom(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 248);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D17C4CF0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of BasicHomeProtocol.assignAccessory(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(a4 + 264) + **(a4 + 264));
  v9 = *(*(a4 + 264) + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1D17C4CF0;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of BasicHomeProtocol.unblockAccessory(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(a3 + 272) + **(a3 + 272));
  v7 = *(*(a3 + 272) + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D17C4CF0;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of BasicHomeProtocol.addZone(named:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(a5 + 280) + **(a5 + 280));
  v11 = *(*(a5 + 280) + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1D17C4CF0;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of BasicHomeProtocol.removeZone(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(a3 + 288) + **(a3 + 288));
  v7 = *(*(a3 + 288) + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D17C4CF0;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of BasicHomeProtocol.addServiceGroup(named:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(a5 + 296) + **(a5 + 296));
  v11 = *(*(a5 + 296) + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1D17C4CF0;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of BasicHomeProtocol.removeServiceGroup(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(a3 + 304) + **(a3 + 304));
  v7 = *(*(a3 + 304) + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D17C4CF0;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of BasicHomeProtocol.manageUsers()(uint64_t a1, uint64_t a2)
{
  v8 = (*(a2 + 312) + **(a2 + 312));
  v5 = *(*(a2 + 312) + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4CF0;

  return v8(a1, a2);
}

uint64_t dispatch thunk of BasicHomeProtocol.enableNotifications(_:includeAppleMediaAccessoryNotifications:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(a4 + 328) + **(a4 + 328));
  v9 = *(*(a4 + 328) + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1D19C8EA0;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AutomationHomeProtocol.addActionSet(named:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 56);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D17C4CF0;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AutomationHomeProtocol.removeActionSet(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D17C4CF0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AutomationHomeProtocol.executeActionSet(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 72);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D17C4CF0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AutomationHomeProtocol.addTrigger(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D17C4BFC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AutomationHomeProtocol.removeTrigger(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 96);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D17C4CF0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MatterHomeProtocol.device(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 48))();
}

{
  return (*(a3 + 56))();
}

uint64_t sub_1D1A7CB54()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t block_copy_helper_81(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_6()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void *sub_1D1A7CBD4(unint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  return sub_1D1A7968C(a1, *(v1 + 16));
}

unint64_t sub_1D1A7CC6C(uint64_t a1)
{
  result = sub_1D1791558();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1A7CCC4()
{
  v1 = [v0 mediaUniqueIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D1E6781C();

  return v3;
}

id sub_1D1A7CD3C()
{
  v1 = [v0 audioControl];

  return v1;
}

uint64_t sub_1D1A7CD74()
{
  v1 = [v0 playbackStateDescription];
  v2 = sub_1D1E6781C();

  return v2;
}

uint64_t sub_1D1A7CDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v10[4] = a1;
  v10[5] = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = a5;
  v8 = _Block_copy(v10);

  [v6 *a6];
  _Block_release(v8);
}

uint64_t sub_1D1A7CEBC()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1D1A7CC68;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_6_5;
  v0[14] = v2;
  [v1 resumeWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A7CFF0()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1D1A77AD8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_40;
  v0[14] = v2;
  [v1 pauseWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t dispatch thunk of MediaSessionProtocol.resume()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 112);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of MediaSessionProtocol.pause()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 120);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4BFC;

  return v9(a1, a2);
}

uint64_t block_copy_helper_11_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1D1A7D484()
{
  v1 = [*v0 mediaSession];

  return v1;
}

unint64_t sub_1D1A7D4E8()
{
  result = qword_1EC6497F0;
  if (!qword_1EC6497F0)
  {
    sub_1D190A1D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6497F0);
  }

  return result;
}

uint64_t sub_1D1A7D540()
{
  v1 = [*v0 name];
  v2 = sub_1D1E6781C();

  return v2;
}

uint64_t sub_1D1A7D598()
{
  v1 = [*v0 accessories];
  sub_1D190A1D0();
  v2 = sub_1D1E67C1C();

  return v2;
}

unint64_t sub_1D1A7D6B0()
{
  result = qword_1EC649B78;
  if (!qword_1EC649B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC649B80, &unk_1D1E95B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649B78);
  }

  return result;
}

id sub_1D1A7D72C()
{
  v1 = [*v0 accessory];

  return v1;
}

uint64_t sub_1D1A7D770(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_1D1E6781C();

  return v6;
}

void sub_1D1A7D7D4(uint64_t *a1@<X8>)
{
  v3 = [*v1 characteristics];
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  v4 = sub_1D1E67C1C();

  *a1 = v4;
}

uint64_t sub_1D1A7D920()
{
  v1 = [*v0 actionSets];
  sub_1D1A7DA80();
  v2 = sub_1D1E67C1C();

  return v2;
}

uint64_t sub_1D1A7D978@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 lastFireDate];
  if (v3)
  {
    v4 = v3;
    sub_1D1E669BC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D1E669FC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

unint64_t sub_1D1A7DA80()
{
  result = qword_1EE07B680;
  if (!qword_1EE07B680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE07B680);
  }

  return result;
}

void sub_1D1A7DACC()
{
  v1 = [v0 predictionTargetUUID];
  sub_1D1E66A5C();
}

uint64_t sub_1D1A7DB2C@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 targetServiceUUID];
  if (v3)
  {
    v4 = v3;
    sub_1D1E66A5C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D1E66A7C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

unint64_t sub_1D1A7DBF0(uint64_t a1)
{
  result = sub_1D1A7DC18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D1A7DC18()
{
  result = qword_1EE079CB0;
  if (!qword_1EE079CB0)
  {
    sub_1D1A7DC70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE079CB0);
  }

  return result;
}

unint64_t sub_1D1A7DC70()
{
  result = qword_1EE07B650;
  if (!qword_1EE07B650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE07B650);
  }

  return result;
}

uint64_t dispatch thunk of UserActionPredictionControllerProtocol.fetchPredictions()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 56);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D19C8EA0;

  return v9(a1, a2);
}

unint64_t sub_1D1A7DE8C()
{
  result = qword_1EC6497E8;
  if (!qword_1EC6497E8)
  {
    sub_1D1A7DEE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6497E8);
  }

  return result;
}

unint64_t sub_1D1A7DEE4()
{
  result = qword_1EE079C00;
  if (!qword_1EE079C00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE079C00);
  }

  return result;
}

uint64_t sub_1D1A7DF30()
{
  v1 = [*v0 rooms];
  sub_1D1A7DEE4();
  v2 = sub_1D1E67C1C();

  return v2;
}

id sub_1D1A7DFC4()
{
  [v0 mutableCopy];
  sub_1D1E6866C();
  swift_unknownObjectRelease();
  sub_1D1741B10(0, &qword_1EC64F3D0, 0x1E696CC08);
  if (swift_dynamicCast())
  {
    return v5;
  }

  v2 = [v0 options];
  v3 = [v0 cachePolicy];
  v4 = [objc_allocWithZone(MEMORY[0x1E696CC08]) initWithOptions:v2 cachePolicy:v3];
  [v4 setInactiveUpdatingLevel_];
  return v4;
}

uint64_t HomeState.ClientError.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1A7E158()
{
  v0 = type metadata accessor for HomeState._Client();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_1D1A7EE10();
  off_1EC649B88 = v3;
  return result;
}

uint64_t static HomeState._Client.shared.getter()
{
  if (qword_1EC642300 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D1A7E1F4@<X0>(void *a1@<X8>)
{
  if (qword_1EC642300 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = off_1EC649B88;
}

uint64_t sub_1D1A7E264(void **a1)
{
  v1 = *a1;
  v2 = qword_1EC642300;

  if (v2 != -1)
  {
    swift_once();
  }

  off_1EC649B88 = v1;
}

void *HomeState._Client.homeManager.getter()
{
  swift_getKeyPath();
  sub_1D1A7E408();
  sub_1D1E66CAC();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_1D1A7E350@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1A7E408();
  sub_1D1E66CAC();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_1D1A7E3D8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1D1A7E4AC(v2);
}

unint64_t sub_1D1A7E408()
{
  result = qword_1EC649B98;
  if (!qword_1EC649B98)
  {
    type metadata accessor for HomeState._Client();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649B98);
  }

  return result;
}

uint64_t type metadata accessor for HomeState._Client()
{
  result = qword_1EC649BA8;
  if (!qword_1EC649BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D1A7E4AC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D1A7E408();
    sub_1D1E66C9C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1D1741B10(0, &unk_1EC649E60, 0x1E696CBA0);
  v5 = v4;
  v6 = a1;
  v7 = sub_1D1E684FC();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

id HomeState._Client.createHomeManagerIfNecessary(configuration:)(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_1D1E6701C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E6709C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  swift_getKeyPath();
  v37 = v1;
  sub_1D1A7E408();
  sub_1D1E66CAC();

  v16 = *(v1 + 16);
  if (v16)
  {
    v17 = *(v1 + 16);
  }

  else
  {
    v32 = v3;
    *&v33 = v4;
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v8, qword_1EE0813C8);
    v19 = *(v9 + 16);
    v19(v15, v18, v8);
    v20 = type metadata accessor for OSActivityInSwift();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    v23 = swift_allocObject();
    *(v23 + 16) = CreateDefaultOSActivity(&dword_1D16EC000, "HomeState._Client.Bind");
    v19((v23 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_logger), v15, v8);
    v19(v13, v15, v8);
    sub_1D1E66FEC();
    (*(v9 + 8))(v15, v8);
    (*(v33 + 32))(v23 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_signposter, v7, v32);
    v24 = v23 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_name;
    *v24 = "HomeState._Client.Bind";
    *(v24 + 8) = 22;
    *(v24 + 16) = 2;
    v37 = v23;

    sub_1D1D9AE58(&v35);

    v33 = v35;
    v25 = v36;
    sub_1D1A7EEDC(0);
    v38 = v33;
    v39 = v25;
    v26 = sub_1D1A7DFC4();
    [v26 setDelegateQueue_];
    v27 = [objc_allocWithZone(MEMORY[0x1E696CBA0]) initWithConfiguration_];

    v17 = v27;
    sub_1D1A7E4AC(v27);
    sub_1D1D9B220(&v38);
    v28 = v38;

    sub_1D1A7EEDC(v28);
    v16 = 0;
  }

  v29 = v16;
  return v17;
}

id HomeState._Client.bindConfiguredHomeManager(_:)(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v29 = a1;
  v28 = a2;
  *&v27 = sub_1D1E6701C();
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D1E6709C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_1EE0813C8);
  v15 = *(v7 + 16);
  v15(v13, v14, v6);
  v16 = type metadata accessor for OSActivityInSwift();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  *(v19 + 16) = CreateDefaultOSActivity(&dword_1D16EC000, "HomeState._Client.Bind");
  v15((v19 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_logger), v13, v6);
  v15(v11, v13, v6);
  sub_1D1E66FEC();
  (*(v7 + 8))(v13, v6);
  (*(v2 + 32))(v19 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_signposter, v5, v27);
  v20 = v19 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_name;
  *v20 = "HomeState._Client.Bind";
  *(v20 + 8) = 22;
  *(v20 + 16) = 2;
  v32 = v19;

  sub_1D1D9AE58(&v30);

  v27 = v30;
  v21 = v31;
  v22 = sub_1D1A7EEDC(0);
  v33 = v27;
  v34 = v21;
  v23 = v29(v22);
  v24 = v23;
  sub_1D1A7E4AC(v23);
  sub_1D1D9B220(&v33);
  v25 = v33;

  sub_1D1A7EEDC(v25);
  return v24;
}

uint64_t HomeState._Client.deinit()
{
  v1 = OBJC_IVAR____TtCV13HomeDataModel9HomeState7_Client___observationRegistrar;
  v2 = sub_1D1E66CEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t HomeState._Client.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV13HomeDataModel9HomeState7_Client___observationRegistrar;
  v2 = sub_1D1E66CEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_1D1A7EE10()
{
  *(v0 + 16) = 0;
  v1 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  [v1 setQualityOfService_];
  v2 = sub_1D1E677EC();
  [v1 setName_];

  [v1 setMaxConcurrentOperationCount_];
  *(v0 + 24) = v1;
  sub_1D1E66CDC();
  return v0;
}

uint64_t sub_1D1A7EEDC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1D1A7EEEC()
{
  result = qword_1EC649BA0;
  if (!qword_1EC649BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649BA0);
  }

  return result;
}

uint64_t sub_1D1A7EF58()
{
  result = sub_1D1E66CEC();
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

void sub_1D1A7F028()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

void HomeState.Stream.config.getter(_BYTE *a1@<X8>)
{
  os_unfair_lock_lock((v1 + 16));
  v3 = *(v1 + 21);
  v4 = *(v1 + 22);
  v5 = *(v1 + 23);
  *a1 = *(v1 + 20);
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;

  os_unfair_lock_unlock((v1 + 16));
}

void HomeState.Stream.config.setter(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  os_unfair_lock_lock((v1 + 16));
  *(v1 + 20) = v2;
  *(v1 + 21) = v3;
  *(v1 + 22) = v4;
  *(v1 + 23) = v5;

  os_unfair_lock_unlock((v1 + 16));
}

void (*HomeState.Stream.config.modify(uint64_t a1))(os_unfair_lock_s **a1)
{
  *a1 = v1;
  os_unfair_lock_lock((v1 + 16));
  v3 = *(v1 + 21);
  v4 = *(v1 + 22);
  v5 = *(v1 + 23);
  *(a1 + 8) = *(v1 + 20);
  *(a1 + 9) = v3;
  *(a1 + 10) = v4;
  *(a1 + 11) = v5;
  os_unfair_lock_unlock((v1 + 16));
  return sub_1D1A7F1A4;
}

void sub_1D1A7F1A4(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a1 + 10);
  v5 = *(a1 + 11);
  os_unfair_lock_lock(*a1 + 4);
  LOBYTE(v1[5]._os_unfair_lock_opaque) = v2;
  BYTE1(v1[5]._os_unfair_lock_opaque) = v3;
  BYTE2(v1[5]._os_unfair_lock_opaque) = v4;
  HIBYTE(v1[5]._os_unfair_lock_opaque) = v5;

  os_unfair_lock_unlock(v1 + 4);
}

unint64_t HomeState.Stream.stateSubscriptionConfig.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *a1 = *(v1 + 32);
  v5 = *(v1 + 40);
  *(a1 + 8) = v5;
  *(a1 + 24) = v3;

  return sub_1D1A82B50(v5);
}

void *HomeState.Stream.homeManager.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void HomeState.Stream.homeManager.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

void *HomeState.Stream.currentHome.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void sub_1D1A7F3A0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 72);
  v5 = v4;
  sub_1D1A7F4A4(v2);
  v6 = *(v3 + 72);
  *(v3 + 72) = v2;
  v7 = v2;

  sub_1D1A7FCA4(v4);
}

void HomeState.Stream.currentHome.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  v4 = v3;
  sub_1D1A7F4A4(a1);
  v5 = *(v1 + 72);
  *(v1 + 72) = a1;
  v6 = a1;

  sub_1D1A7FCA4(v3);
}

void sub_1D1A7F4A4(uint64_t a1)
{
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v58 - v9;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260) - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v58 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v58 - v19;
  if (v18)
  {
    v21 = [v18 uniqueIdentifier];
    sub_1D1E66A5C();

    v22 = v4[7];
    v22(v20, 0, 1, v3);
  }

  else
  {
    v22 = v4[7];
    v22(&v58 - v19, 1, 1, v3);
  }

  swift_beginAccess();
  v23 = *(v1 + 72);
  if (v23)
  {
    v24 = [v23 uniqueIdentifier];
    sub_1D1E66A5C();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v22(v17, v25, 1, v3);
  v26 = *(v7 + 48);
  sub_1D1741C08(v20, v10, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v17, &v10[v26], &qword_1EC642590, qword_1D1E71260);
  v61 = v4;
  v27 = v4[6];
  if (v27(v10, 1, v3) == 1)
  {
    sub_1D1741A30(v17, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v20, &qword_1EC642590, qword_1D1E71260);
    if (v27(&v10[v26], 1, v3) == 1)
    {
      sub_1D1741A30(v10, &qword_1EC642590, qword_1D1E71260);
      return;
    }
  }

  else
  {
    sub_1D1741C08(v10, v14, &qword_1EC642590, qword_1D1E71260);
    if (v27(&v10[v26], 1, v3) != 1)
    {
      v56 = v60;
      v55 = v61;
      (v61[4])(v60, &v10[v26], v3);
      sub_1D1A83110(&qword_1EE07D170, MEMORY[0x1E69695A8]);
      LODWORD(v59) = sub_1D1E6775C();
      v57 = v55[1];
      v57(v56, v3);
      sub_1D1741A30(v17, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v20, &qword_1EC642590, qword_1D1E71260);
      v57(v14, v3);
      sub_1D1741A30(v10, &qword_1EC642590, qword_1D1E71260);
      if (v59)
      {
        return;
      }

      goto LABEL_13;
    }

    sub_1D1741A30(v17, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v20, &qword_1EC642590, qword_1D1E71260);
    (v61[1])(v14, v3);
  }

  sub_1D1741A30(v10, &qword_1EC642980, &unk_1D1E6E6E0);
LABEL_13:
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v28 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  if (v28 != 2 && (v28 & 1) != 0)
  {
    v29 = *(v1 + 72);
    if (v29)
    {
      v59 = v1;
      v30 = qword_1EC642328;
      v31 = v29;
      if (v30 != -1)
      {
        swift_once();
      }

      v32 = sub_1D1E6709C();
      __swift_project_value_buffer(v32, qword_1EC64A290);
      v33 = v31;
      v34 = sub_1D1E6707C();
      v35 = sub_1D1E6835C();

      v36 = os_log_type_enabled(v34, v35);
      v37 = v61;
      if (v36)
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v62[0] = v39;
        *v38 = 136315394;
        v40 = [v33 name];
        v41 = sub_1D1E6781C();
        v43 = v42;

        v44 = sub_1D1B1312C(v41, v43, v62);

        *(v38 + 4) = v44;
        *(v38 + 12) = 2082;
        v45 = [v33 uniqueIdentifier];
        v46 = v60;
        sub_1D1E66A5C();

        sub_1D1A83110(&qword_1EE07B250, MEMORY[0x1E69695A8]);
        v47 = sub_1D1E68FAC();
        v49 = v48;
        (v37[1])(v46, v3);
        v50 = sub_1D1B1312C(v47, v49, v62);

        *(v38 + 14) = v50;
        _os_log_impl(&dword_1D16EC000, v34, v35, "willSetCurrentHome: previously '%s' (%{public}s)", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v39, -1, -1);
        MEMORY[0x1D3893640](v38, -1, -1);
      }

      v51 = v59;
      swift_beginAccess();
      if (*(*(v51 + 32) + 16))
      {
        v52 = *(v51 + 40);
        if (v52 == 1)
        {
          sub_1D1A82B60(1uLL);
          sub_1D1A82B60(1uLL);
          os_unfair_lock_lock((v51 + 16));
          v53 = *(v51 + 22);
          os_unfair_lock_unlock((v51 + 16));
          if (v53 == 1)
          {
            sub_1D1ADC8D4(v33);
            HMHome.homeDelegate.setter(0, 0);
            v51 = v59;
          }

          v54 = *(v51 + 128);
          sub_1D1AB1A6C(v33);
        }

        else
        {
          sub_1D1A82B50(*(v51 + 40));
          sub_1D1A82B60(v52);
          sub_1D1A82B60(1uLL);
        }
      }
    }
  }
}

void sub_1D1A7FCA4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v93 - v5;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7);
  v95 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v93 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v94 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v97 = &v93 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v93 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v93 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v93 - v27;
  if (a1)
  {
    v29 = [a1 uniqueIdentifier];
    sub_1D1E66A5C();

    v30 = v8[7];
    v31 = v28;
    v32 = 0;
  }

  else
  {
    v30 = v8[7];
    v31 = &v93 - v27;
    v32 = 1;
  }

  v100 = v30;
  v30(v31, v32, 1, v7);
  swift_beginAccess();
  v33 = *(v1 + 72);
  v98 = v6;
  v99 = v1;
  if (v33)
  {
    v34 = [v33 uniqueIdentifier];
    sub_1D1E66A5C();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v93 = v8 + 7;
  v100(v26, v35, 1, v7);
  v36 = *(v11 + 48);
  sub_1D1741C08(v28, v14, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v26, &v14[v36], &qword_1EC642590, qword_1D1E71260);
  v96 = v8;
  v37 = v8[6];
  if (v37(v14, 1, v7) == 1)
  {
    sub_1D1741A30(v26, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v28, &qword_1EC642590, qword_1D1E71260);
    if (v37(&v14[v36], 1, v7) == 1)
    {
      sub_1D1741A30(v14, &qword_1EC642590, qword_1D1E71260);
      return;
    }
  }

  else
  {
    sub_1D1741C08(v14, v23, &qword_1EC642590, qword_1D1E71260);
    if (v37(&v14[v36], 1, v7) != 1)
    {
      v46 = v95;
      v47 = v96;
      (v96[4])(v95, &v14[v36], v7);
      sub_1D1A83110(&qword_1EE07D170, MEMORY[0x1E69695A8]);
      v48 = sub_1D1E6775C();
      v49 = v47[1];
      v49(v46, v7);
      sub_1D1741A30(v26, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v28, &qword_1EC642590, qword_1D1E71260);
      v49(v23, v7);
      sub_1D1741A30(v14, &qword_1EC642590, qword_1D1E71260);
      v39 = v98;
      v38 = v99;
      v40 = v97;
      if (v48)
      {
        return;
      }

      goto LABEL_13;
    }

    sub_1D1741A30(v26, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v28, &qword_1EC642590, qword_1D1E71260);
    (v96[1])(v23, v7);
  }

  sub_1D1741A30(v14, &qword_1EC642980, &unk_1D1E6E6E0);
  v39 = v98;
  v38 = v99;
  v40 = v97;
LABEL_13:
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v41 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  if (v41 != 2 && (v41 & 1) != 0)
  {
    v42 = *(v38 + 24);
    v43 = *(v38 + 72);
    if (v43)
    {
      v44 = [v43 uniqueIdentifier];
      sub_1D1E66A5C();

      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

    v100(v40, v45, 1, v7);
    v50 = v94;
    sub_1D1741C08(v40, v94, &qword_1EC642590, qword_1D1E71260);
    HomeState.AllHomesModel.currentHomeID.setter(v50);
    sub_1D1741A30(v40, &qword_1EC642590, qword_1D1E71260);
    v51 = *(v38 + 72);
    if (v51)
    {
      v52 = qword_1EC642328;
      v53 = v51;
      if (v52 != -1)
      {
        swift_once();
      }

      v54 = sub_1D1E6709C();
      __swift_project_value_buffer(v54, qword_1EC64A290);
      v55 = v53;
      v56 = sub_1D1E6707C();
      v57 = sub_1D1E6835C();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v101[0] = v59;
        *v58 = 136315394;
        v60 = [v55 name];
        v61 = sub_1D1E6781C();
        v63 = v62;

        v64 = sub_1D1B1312C(v61, v63, v101);

        *(v58 + 4) = v64;
        *(v58 + 12) = 2080;
        v65 = [v55 uniqueIdentifier];
        v66 = v95;
        sub_1D1E66A5C();

        sub_1D1A83110(&qword_1EE07B250, MEMORY[0x1E69695A8]);
        v67 = sub_1D1E68FAC();
        v69 = v68;
        (v96[1])(v66, v7);
        v70 = sub_1D1B1312C(v67, v69, v101);

        *(v58 + 14) = v70;
        _os_log_impl(&dword_1D16EC000, v56, v57, "didSetCurrentHome: current home is now '%s' (%s)", v58, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v59, -1, -1);
        v38 = v99;
        MEMORY[0x1D3893640](v58, -1, -1);
      }

      swift_beginAccess();
      if (*(*(v38 + 32) + 16))
      {
        v71 = *(v38 + 40);
        if (v71 == 1)
        {
          sub_1D1A82B60(1uLL);
          sub_1D1A82B60(1uLL);
          os_unfair_lock_lock((v38 + 16));
          v72 = *(v38 + 22);
          os_unfair_lock_unlock((v38 + 16));
          if (v72 == 1)
          {
            sub_1D1ADC8C4(v55);
            v73 = *(v38 + 120);
            v74 = sub_1D1A830C0(&qword_1EC649E80);

            HMHome.homeDelegate.setter(v75, v74);
          }

          if ((*(v38 + 48) & 2) != 0)
          {
            v76 = *(v38 + 128);
            sub_1D1AB1598(v55);
          }
        }

        else
        {
          sub_1D1A82B50(*(v38 + 40));
          sub_1D1A82B60(v71);
          sub_1D1A82B60(1uLL);
        }
      }

      os_unfair_lock_lock((v38 + 16));
      v80 = *(v38 + 22);
      os_unfair_lock_unlock((v38 + 16));
      if ((v80 & 1) == 0)
      {
        if (qword_1EE07AE38 != -1)
        {
          swift_once();
        }

        if (qword_1EE07AE40 != 4)
        {
          v81 = sub_1D1E67E7C();
          (*(*(v81 - 8) + 56))(v39, 1, 1, v81);
          v82 = qword_1EC642358;
          v55 = v55;

          if (v82 != -1)
          {
            swift_once();
          }

          v83 = qword_1EC64ABE8;
          v84 = sub_1D1A83110(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
          v85 = swift_allocObject();
          v85[2] = v83;
          v85[3] = v84;
          v85[4] = v38;
          v85[5] = v55;

          sub_1D17C6EF0(0xD000000000000026, 0x80000001D1EC3E20, v39, &unk_1D1E96078, v85);
        }
      }
    }

    else
    {
      if (qword_1EC642328 != -1)
      {
        swift_once();
      }

      v77 = sub_1D1E6709C();
      __swift_project_value_buffer(v77, qword_1EC64A290);
      v55 = sub_1D1E6707C();
      v78 = sub_1D1E6835C();
      if (os_log_type_enabled(v55, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_1D16EC000, v55, v78, "didSetCurrentHome: current home is now nil", v79, 2u);
        MEMORY[0x1D3893640](v79, -1, -1);
      }
    }

    os_unfair_lock_lock((v38 + 16));
    v86 = *(v38 + 23);
    os_unfair_lock_unlock((v38 + 16));
    if (v86 == 1)
    {
      v87 = *(v38 + 72);
      v88 = sub_1D1E67E7C();
      (*(*(v88 - 8) + 56))(v39, 1, 1, v88);
      sub_1D1E67E1C();
      v89 = v87;
      v90 = sub_1D1E67E0C();
      v91 = swift_allocObject();
      v92 = MEMORY[0x1E69E85E0];
      v91[2] = v90;
      v91[3] = v92;
      v91[4] = v87;
      sub_1D17C6EF0(0, 0, v39, &unk_1D1E96068, v91);
    }
  }
}

void (*HomeState.Stream.currentHome.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  v5 = *(v1 + 72);
  *(v4 + 24) = v5;
  v6 = v5;
  return sub_1D1A80988;
}

void sub_1D1A80988(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*a1 + 32);
  v6 = *(v5 + 72);
  if (a2)
  {
    v7 = v6;
    v8 = v3;
    sub_1D1A7F4A4(v3);
    v9 = *(v5 + 72);
    *(v5 + 72) = v3;
    v10 = v8;

    sub_1D1A7FCA4(v6);
    v11 = *v4;
  }

  else
  {
    v12 = v6;
    sub_1D1A7F4A4(v3);
    v13 = *(v5 + 72);
    *(v5 + 72) = v3;
    v11 = v3;

    sub_1D1A7FCA4(v6);
  }

  free(v2);
}

__n128 HomeState.Stream.accessorySettingsDataSource.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  if (*(v1 + 104))
  {
    sub_1D17419CC(v1 + 80, a1);
  }

  else
  {
    result = *(v1 + 80);
    v4 = *(v1 + 96);
    *a1 = result;
    *(a1 + 16) = v4;
    *(a1 + 32) = *(v1 + 112);
  }

  return result;
}

uint64_t HomeState.Stream.accessorySettingsDataSource.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  if (!*(v1 + 104))
  {
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = *(a1 + 16);
    *(v1 + 80) = *a1;
    *(v1 + 96) = v4;
    *(v1 + 112) = *(a1 + 32);
    return swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1((v1 + 80));
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D16EEE20(a1, v1 + 80);
  return swift_endAccess();
}

uint64_t HomeState.Stream.__allocating_init()()
{
  v0 = swift_allocObject();
  HomeState.Stream.init()();
  return v0;
}

void *HomeState.Stream.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649BE8, &unk_1D1EB1A10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v41.receiver - v5);
  *(v0 + 16) = 0;
  v7 = MEMORY[0x1E69E7CD0];
  *(v0 + 22) = 257;
  *(v0 + 32) = v7;
  *(v0 + 40) = xmmword_1D1E95F10;
  *(v0 + 56) = 0;
  v8 = type metadata accessor for HomeState.AllHomesModel();
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v0 + 24) = sub_1D1AFF8C8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649BF0, &qword_1D1E95F20);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = qword_1EC6BE170;
  *v6 = 1;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8640], v2);
  v16 = type metadata accessor for SnapshotModerator();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v14 + v15) = sub_1D1E5BA08(0, v6);
  v19 = sub_1D1A821BC();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649BF8, &qword_1D1E95F28);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_1D1A82764();
  v1[18] = v19;
  v1[19] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C00, &qword_1D1E95F30);
  v24 = swift_allocObject();

  swift_defaultActor_initialize();
  v24[15] = 0;
  swift_unknownObjectWeakInit();
  v25 = MEMORY[0x1E69E7CC0];
  v24[16] = sub_1D18D4DA0(MEMORY[0x1E69E7CC0]);
  v24[17] = sub_1D18D4D58(v25);
  v24[18] = sub_1D18D4D7C(v25);
  v1[20] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C08, &qword_1D1E95F38);
  v26 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C10, &qword_1D1E95F40);
  v27 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  *(v26 + 16) = 0;
  *(v26 + 24) = v27;
  *(v26 + 32) = v19;
  *(v26 + 40) = v23;
  *(v26 + 48) = v24;
  v1[15] = v26;
  v28 = _s14MatterDelegateCMa();
  swift_retain_n();

  v29 = objc_allocWithZone(v28);
  v30 = &v29[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream14MatterDelegate__stream];
  v31 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  *v30 = 0;
  *(v30 + 1) = v31;
  *&v29[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream14MatterDelegate_matterSnapshotUpdateController] = v23;
  v42.receiver = v29;
  v42.super_class = v28;

  v1[16] = objc_msgSendSuper2(&v42, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C18, &qword_1D1E95F48);
  v32 = swift_allocObject();

  swift_defaultActor_initialize();
  if (v25 >> 62 && sub_1D1E6873C())
  {
    sub_1D179CED0(MEMORY[0x1E69E7CC0]);
    v7 = v40;
  }

  v32[15] = v7;
  v32[16] = 0;
  v32[17] = sub_1D18DAA14(MEMORY[0x1E69E7CC0]);
  v32[14] = v19;
  v1[21] = v32;
  v33 = _s24UngenericHomeKitDelegateCMa();
  v34 = objc_allocWithZone(v33);
  *&v34[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream24UngenericHomeKitDelegate_stateSnapshotUpdateController] = v19;
  v41.receiver = v34;
  v41.super_class = v33;

  v1[17] = objc_msgSendSuper2(&v41, sel_init);
  v35 = v1[15];
  swift_retain_n();
  os_unfair_lock_lock((v35 + 16));
  v36 = *(v35 + 24);
  swift_weakLoadStrong();
  swift_weakAssign();

  os_unfair_lock_unlock((v35 + 16));

  v37 = v1[16] + OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream14MatterDelegate__stream;
  os_unfair_lock_lock(v37);
  v38 = *(v37 + 8);
  swift_weakLoadStrong();
  swift_weakAssign();

  os_unfair_lock_unlock(v37);

  return v1;
}

uint64_t HomeState.Stream.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  sub_1D1A82B60(v3);

  if (*(v0 + 104))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  }

  v4 = *(v0 + 120);

  v5 = *(v0 + 144);

  v6 = *(v0 + 152);

  v7 = *(v0 + 160);

  v8 = *(v0 + 168);

  return v0;
}

uint64_t HomeState.Stream.__deallocating_deinit()
{
  HomeState.Stream.deinit();

  return swift_deallocClassInstance();
}

void sub_1D1A81190()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 64);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1D1AD7C00();
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  v5 = *(v1 + 72);
  v6 = v5;
  sub_1D1A7F4A4(v4);
  v7 = *(v1 + 72);
  *(v1 + 72) = v4;
  v8 = v4;

  sub_1D1A7FCA4(v5);
}

uint64_t sub_1D1A81254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1D17C4BFC;

  return sub_1D1AB5240(a5);
}

uint64_t sub_1D1A8131C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1D1E67E1C();
  *(v4 + 48) = sub_1D1E67E0C();
  v6 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A813B4, v6, v5);
}

uint64_t sub_1D1A813B4()
{
  v1 = v0[6];

  if (qword_1EE07B1D8 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = qword_1EE07B1E0;
  v4 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_currentHome;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  sub_1D18731C0();
  v7 = v0[1];

  return v7();
}

uint64_t sub_1D1A8148C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C58, &qword_1D1E96080);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1D1E693EC();
  qword_1EC649BB8 = result;
  return result;
}

void static HomeState.Stream.homeManagerConfiguration.setter(uint64_t a1)
{
  if (qword_1EC642318 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC649BD0);

  qword_1EC649BD8 = a1;

  os_unfair_lock_unlock(&dword_1EC649BD0);
}

uint64_t static HomeState.Stream.homeManagerConfiguration.getter()
{
  if (qword_1EC642318 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC649BD0);
  v0 = qword_1EC649BD8;
  v1 = qword_1EC649BD8;
  os_unfair_lock_unlock(&dword_1EC649BD0);
  return v0;
}

void sub_1D1A815F0(uint64_t *a1@<X8>)
{
  if (qword_1EC642318 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC649BD0);
  v2 = qword_1EC649BD8;
  v3 = qword_1EC649BD8;
  os_unfair_lock_unlock(&dword_1EC649BD0);
  *a1 = v2;
}

void sub_1D1A8166C(void **a1)
{
  v1 = *a1;
  if (qword_1EC642318 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC649BD0);

  qword_1EC649BD8 = v1;
  v2 = v1;

  os_unfair_lock_unlock(&dword_1EC649BD0);
}

void (*static HomeState.Stream.homeManagerConfiguration.modify(uint64_t *a1))(void **a1, char a2)
{
  if (qword_1EC642318 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC649BD0);
  v2 = qword_1EC649BD8;
  v3 = qword_1EC649BD8;
  os_unfair_lock_unlock(&dword_1EC649BD0);
  *a1 = v2;
  return sub_1D1A81788;
}

void sub_1D1A81788(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    os_unfair_lock_lock(&dword_1EC649BD0);

    qword_1EC649BD8 = v2;
    os_unfair_lock_unlock(&dword_1EC649BD0);
  }

  else
  {
    os_unfair_lock_lock(&dword_1EC649BD0);

    qword_1EC649BD8 = v2;

    os_unfair_lock_unlock(&dword_1EC649BD0);
  }
}

id sub_1D1A81848()
{
  v1 = sub_1D1E6702C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v82 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1E66FDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v66 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v66 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v66 - v21;
  if (*(v0 + 57))
  {
    return 0;
  }

  v80 = v10;
  v83 = v6;
  v72 = v2;
  v73 = v1;
  atomic_store(1u, (v0 + 57));
  v24 = *(v0 + 24);
  v25 = sub_1D1E67E7C();
  v26 = *(v25 - 8);
  v77 = *(v26 + 56);
  v78 = v25;
  v76 = v26 + 56;
  v77(v22, 1, 1);
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  *(v27 + 24) = 1;
  sub_1D1741C08(v22, v20, &unk_1EC6442C0, &qword_1D1E741A0);
  v28 = qword_1EC642358;
  v79 = v24;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_1EC64ABE8;
  v30 = sub_1D1A83110(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
  v31 = swift_allocObject();
  v31[2] = v29;
  v31[3] = v30;
  v74 = v30;
  v75 = v29;
  v31[4] = sub_1D1A82E34;
  v31[5] = v27;

  sub_1D17C6EF0(0, 0, v20, &unk_1D1E96480, v31);

  sub_1D1741A30(v22, &unk_1EC6442C0, &qword_1D1E741A0);
  if (qword_1EC642318 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC649BD0);
  v23 = qword_1EC649BD8;
  v81 = qword_1EC649BD8;
  os_unfair_lock_unlock(&dword_1EC649BD0);
  v32 = v83;
  if (v23)
  {
    v71 = v0;
    if (qword_1EC642330 != -1)
    {
      swift_once();
    }

    v33 = sub_1D1E6701C();
    v34 = __swift_project_value_buffer(v33, qword_1EC64A2A8);
    sub_1D1E66FCC();
    v69 = v34;
    v35 = sub_1D1E66FFC();
    v36 = sub_1D1E683EC();
    v37 = sub_1D1E6855C();
    v38 = v80;
    if (v37)
    {
      v39 = v32;
      v40 = v5;
      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v35, v36, v42, "HomeKitDataLoad", "", v41, 2u);
      v43 = v41;
      v5 = v40;
      v32 = v39;
      v38 = v80;
      MEMORY[0x1D3893640](v43, -1, -1);
    }

    (*(v32 + 16))(v13, v15, v5);
    v44 = sub_1D1E6705C();
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();
    v68 = sub_1D1E6704C();
    v47 = *(v32 + 8);
    v80 = v5;
    v83 = v32 + 8;
    v70 = v47;
    v47(v15, v5);
    [v81 mutableCopy];
    sub_1D1E6866C();
    swift_unknownObjectRelease();
    sub_1D1A82E40();
    swift_dynamicCast();
    v48 = v84;
    if (qword_1EC642320 != -1)
    {
      swift_once();
    }

    [v48 setDelegateQueue_];
    v23 = [objc_allocWithZone(MEMORY[0x1E696CBA0]) initWithConfiguration_];
    v67 = v48;
    v49 = *(v71 + 120);
    v50 = sub_1D1A830C0(&unk_1EC649E70);

    HMHomeManager.homeManagerDelegate.setter(v51, v50);
    (v77)(v22, 1, 1, v78);
    v52 = swift_allocObject();
    *(v52 + 16) = v79;
    *(v52 + 24) = 2;
    sub_1D1741C08(v22, v20, &unk_1EC6442C0, &qword_1D1E741A0);
    v53 = swift_allocObject();
    v54 = v74;
    v53[2] = v75;
    v53[3] = v54;
    v53[4] = sub_1D1A83158;
    v53[5] = v52;

    sub_1D17C6EF0(0, 0, v20, &unk_1D1E96040, v53);

    sub_1D1741A30(v22, &unk_1EC6442C0, &qword_1D1E741A0);
    v55 = sub_1D1E66FFC();
    sub_1D1E6703C();
    v56 = sub_1D1E683DC();
    if (sub_1D1E6855C())
    {
      v57 = v67;

      v58 = v82;
      sub_1D1E6706C();

      v60 = v72;
      v59 = v73;
      if ((*(v72 + 88))(v58, v73) == *MEMORY[0x1E69E93E8])
      {
        v61 = "[Error] Interval already ended";
      }

      else
      {
        (*(v60 + 8))(v58, v59);
        v61 = "";
      }

      v62 = v80;
      v63 = swift_slowAlloc();
      *v63 = 0;
      v64 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v55, v56, v64, "HomeKitDataLoad", v61, v63, 2u);
      MEMORY[0x1D3893640](v63, -1, -1);
    }

    else
    {

      v62 = v80;
    }

    v70(v38, v62);
  }

  return v23;
}

void sub_1D1A82128()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  v1 = sub_1D1E677EC();
  [v0 setName_];

  [v0 setMaxConcurrentOperationCount_];
  qword_1EC649BE0 = v0;
}

uint64_t sub_1D1A821BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C48, &qword_1D1E96050);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DD0, &qword_1D1E96510);
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C50, &qword_1D1E96058);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  swift_weakInit();
  *(v0 + *(*v0 + 128)) = 0;
  *(v0 + *(*v0 + 136)) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8650], v1);
  sub_1D1E67E8C();
  (*(v2 + 8))(v5, v1);
  (*(v11 + 32))(v0 + *(*v0 + 112), v14, v10);
  (*(v6 + 32))(v0 + *(*v0 + 120), v9, v17);
  return v0;
}

uint64_t sub_1D1A82490()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C38, &qword_1D1E96048);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C40, qword_1D1E968E0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  swift_weakInit();
  *(v0 + *(*v0 + 128)) = 0;
  *(v0 + *(*v0 + 136)) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8650], v1);
  sub_1D1E67E8C();
  (*(v2 + 8))(v5, v1);
  (*(v11 + 32))(v0 + *(*v0 + 112), v14, v10);
  (*(v6 + 32))(v0 + *(*v0 + 120), v9, v17);
  return v0;
}

uint64_t sub_1D1A82764()
{
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491A8, &unk_1D1EB1930);
  v0 = *(v20[0] - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v20[0]);
  v3 = v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491A0, &unk_1D1E92AF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C30, &qword_1D1EB1940);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - v12;
  v14 = qword_1EC6BE178;
  *(v20 - v12) = 1;
  (*(v10 + 104))(v20 - v12, *MEMORY[0x1E69E8640], v9);
  v15 = type metadata accessor for MatterSnapshotModerator();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v18 + 112) = sub_1D18D72DC(MEMORY[0x1E69E7CC0]);
  *(v18 + OBJC_IVAR____TtC13HomeDataModel23MatterSnapshotModerator_forDataModel) = 0;
  type metadata accessor for MatterStateSnapshot();
  sub_1D1E67E8C();
  (*(v10 + 8))(v13, v9);
  (*(v5 + 32))(v18 + OBJC_IVAR____TtC13HomeDataModel23MatterSnapshotModerator_snapshotsStream, v8, v4);
  (*(v0 + 32))(v18 + OBJC_IVAR____TtC13HomeDataModel23MatterSnapshotModerator_snapshotsContinuation, v3, v20[0]);
  *(v20[1] + v14) = v18;
  return sub_1D1A82490();
}

void *_s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0()
{
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v0 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  if (v0 == 2 || (v0 & 1) == 0)
  {
    return 0;
  }

  if (qword_1EC642308 != -1)
  {
    swift_once();
  }

  sub_1D1E693FC();
  result = v3;
  if (!v3)
  {
    if (qword_1EC642310 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EC649BC0);
    v2 = off_1EC649BC8;

    os_unfair_lock_unlock(&dword_1EC649BC0);
    return v2;
  }

  return result;
}

unint64_t sub_1D1A82B50(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_1D1A82B60(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

void *_s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0()
{
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v0 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  if (v0 == 2 || (v0 & 1) == 0)
  {
    type metadata accessor for HomeState.Stream();
    v1 = swift_allocObject();
    HomeState.Stream.init()();
  }

  else
  {
    if (qword_1EC642308 != -1)
    {
      swift_once();
    }

    sub_1D1E693FC();
    v1 = v3;
    if (!v3)
    {
      if (qword_1EC642310 != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&dword_1EC649BC0);
      if (off_1EC649BC8)
      {
        v1 = off_1EC649BC8;
      }

      else
      {
        type metadata accessor for HomeState.Stream();
        v1 = swift_allocObject();
        HomeState.Stream.init()();
        off_1EC649BC8 = v1;
      }

      os_unfair_lock_unlock(&dword_1EC649BC0);
    }
  }

  return v1;
}

void sub_1D1A82D30(void *a1)
{
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v2 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  if (v2 == 2 || (v2 & 1) == 0)
  {
  }

  else
  {
    if (qword_1EC642310 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EC649BC0);

    off_1EC649BC8 = a1;

    os_unfair_lock_unlock(&dword_1EC649BC0);
  }
}

unint64_t sub_1D1A82E40()
{
  result = qword_1EC64F3D0;
  if (!qword_1EC64F3D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC64F3D0);
  }

  return result;
}

uint64_t sub_1D1A82E8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1B14AE8(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1A82F4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4BFC;

  return sub_1D1A8131C(a1, v4, v5, v6);
}

uint64_t sub_1D1A83000(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1A81254(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1A830C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC649C08, &qword_1D1E95F38);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1A83110(unint64_t *a1, void (*a2)(uint64_t))
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

void *HomeState.Stream.home(for:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  if (v3)
  {
    v4 = [v3 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v10 = sub_1D1749970(v5);
    sub_1D1747DDC(&v10);

    v6 = v10;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v3);
  v9[2] = a1;
  v7 = sub_1D174A6C4(sub_1D1A8D280, v9, v6);

  return v7;
}

uint64_t HomeState.Stream.service(for:)(uint64_t a1)
{
  v4 = 0;
  v84 = sub_1D1E66A7C();
  v5 = *(v84 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v84);
  v73 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v70 = &v70 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v89 = &v70 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v70 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v85 = &v70 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v70 - v18;
  swift_beginAccess();
  v19 = *(v1 + 64);
  if (v19)
  {
    v20 = [v19 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v90 = sub_1D1749970(v21);
    sub_1D1747DDC(&v90);

    v22 = v90;
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v23 = *(v5 + 16);
  v24 = v84;
  (v23)(v72, a1, v84);
  v25 = a1;
  v26 = v24;
  v78 = v23;
  v79 = v5 + 16;
  (v23)(v85, v25, v24);
  v71 = v22 >> 62;
  if (v22 >> 62)
  {
LABEL_75:
    v83 = v22 & 0xFFFFFFFFFFFFFF8;
    v82 = sub_1D1E6873C();
  }

  else
  {
    v83 = v22 & 0xFFFFFFFFFFFFFF8;
    v82 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = 0;
  v76 = v22;
  v77 = v22 + 32;
  v5 += 8;
  v80 = v22 & 0xC000000000000001;
  v81 = v5;
  v75 = v15;
  while (1)
  {
    if (v27 == v82)
    {
      v40 = v82;
      goto LABEL_39;
    }

    v88 = v27;
    if (v80)
    {
      v28 = MEMORY[0x1D3891EF0]();
    }

    else
    {
      if (v27 >= *(v83 + 16))
      {
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v28 = *(v77 + 8 * v27);
    }

    v86 = v28;
    v29 = [v28 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v23 = sub_1D1E67C1C();

    v30 = v85;
    v31 = v78;
    v78(v15, v85, v26);
    v31(v89, v30, v26);
    v87 = v23 >> 62;
    v26 = v23 & 0xFFFFFFFFFFFFFF8;
    v2 = v23 >> 62 ? sub_1D1E6873C() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = 0;
    v22 = v23 & 0xC000000000000001;
    v74 = v23 + 32;
    while (v2 != v5)
    {
      if (v22)
      {
        v32 = MEMORY[0x1D3891EF0](v5, v23);
      }

      else
      {
        if (v5 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v32 = *(v23 + 8 * v5 + 32);
      }

      v33 = v32;
      v34 = [v32 services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v35 = sub_1D1E67C1C();

      v15 = &v70;
      MEMORY[0x1EEE9AC00](v36);
      *(&v70 - 2) = v89;
      v37 = sub_1D174A6C4(sub_1D1A8D280, (&v70 - 4), v35);

      if (v37)
      {
        v2 = v5;
        break;
      }

      v38 = __OFADD__(v5++, 1);
      if (v38)
      {
        goto LABEL_70;
      }
    }

    v5 = v81;
    if (!v87)
    {
      break;
    }

    if (v2 != sub_1D1E6873C())
    {
      goto LABEL_34;
    }

LABEL_28:
    v39 = *v5;
    v15 = v75;
    v26 = v84;
    (*v5)(v75, v84);

    v39(v89, v26);

    v27 = (v88 + 1);
    v22 = v76;
    if (__OFADD__(v88, 1))
    {
      goto LABEL_72;
    }
  }

  if (v2 == *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_28;
  }

LABEL_34:
  if (v22)
  {
    goto LABEL_81;
  }

  if (v2 < *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v74 + 8 * v2); ; i = MEMORY[0x1D3891EF0](v2, v23))
    {
      v42 = i;
      v43 = [i services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v44 = sub_1D1E67C1C();

      MEMORY[0x1EEE9AC00](v45);
      v46 = v75;
      *(&v70 - 2) = v75;
      v47 = sub_1D174A6C4(sub_1D1A8D280, (&v70 - 4), v44);

      v48 = v81;
      v26 = *v81;
      v5 = v84;
      (*v81)(v46, v84);

      if (!v47)
      {
        goto LABEL_85;
      }

      (v26)(v89, v5);

      v26 = v5;
      v22 = v76;
      v5 = v48;
      v40 = v88;
LABEL_39:
      if (v71)
      {
        if (v40 == sub_1D1E6873C())
        {
LABEL_57:
          v4 = *v5;
          (*v5)(v72, v26);

          v59 = 0;
          goto LABEL_68;
        }
      }

      else if (v40 == *(v83 + 16))
      {
        goto LABEL_57;
      }

      if (v80)
      {
        v49 = MEMORY[0x1D3891EF0](v40, v22);
      }

      else
      {
        if (v40 >= *(v83 + 16))
        {
          __break(1u);
LABEL_79:
          v61 = MEMORY[0x1D3891EF0](v22, v5);
LABEL_66:
          v62 = v61;
          v63 = [v61 services];
          sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
          v64 = sub_1D1E67C1C();

          MEMORY[0x1EEE9AC00](v65);
          v66 = v70;
          *(&v70 - 2) = v70;
          v59 = sub_1D174A6C4(sub_1D1A8D280, (&v70 - 4), v64);

          v4 = *v81;
          v26 = v84;
          (*v81)(v66, v84);

          if (!v59)
          {
            goto LABEL_84;
          }

          v4(v73, v26);
          v4(v72, v26);

LABEL_68:
          v4(v85, v26);
          return v59;
        }

        v49 = *(v77 + 8 * v40);
      }

      v88 = v49;
      v50 = [v49 accessories];
      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v5 = sub_1D1E67C1C();

      v51 = v72;
      v52 = v78;
      v78(v70, v72, v26);
      v52(v73, v51, v26);
      v89 = (v5 >> 62);
      v15 = (v5 & 0xFFFFFFFFFFFFFF8);
      if (v5 >> 62)
      {
        v22 = sub_1D1E6873C();
      }

      else
      {
        v22 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 = 0;
      v53 = v5 & 0xC000000000000001;
      v87 = v5 + 32;
      while (v22 != v26)
      {
        if (v53)
        {
          v54 = MEMORY[0x1D3891EF0](v26, v5);
        }

        else
        {
          if (v26 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_73;
          }

          v54 = *(v5 + 8 * v26 + 32);
        }

        v55 = v54;
        v56 = [v54 services];
        sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
        v57 = sub_1D1E67C1C();

        v23 = &v70;
        MEMORY[0x1EEE9AC00](v58);
        *(&v70 - 2) = v73;
        v2 = sub_1D174A6C4(sub_1D1A8D280, (&v70 - 4), v57);

        if (v2)
        {
          v22 = v26;
          break;
        }

        v38 = __OFADD__(v26++, 1);
        if (v38)
        {
          goto LABEL_74;
        }
      }

      if (v89)
      {
        v60 = sub_1D1E6873C();
      }

      else
      {
        v60 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v22 == v60)
      {
        goto LABEL_83;
      }

      if (v53)
      {
        goto LABEL_79;
      }

      if (v22 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v61 = *(v87 + 8 * v22);
        goto LABEL_66;
      }

      __break(1u);
LABEL_81:
      ;
    }
  }

  __break(1u);
LABEL_83:
  v4 = v81;
  v68 = *v81;
  v69 = v84;
  (*v81)(v70, v84);

  v68(v73, v69);
  v68(v72, v69);

  v68(v85, v69);
  __break(1u);
LABEL_84:
  v4(v73, v26);
  __break(1u);
LABEL_85:
  (v26)(v89, v5);
  __break(1u);

  __break(1u);
  return result;
}

void *HomeState.Stream.accessory(with:inHomeWithID:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  if (v5)
  {
    v6 = [v5 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v21 = sub_1D1749970(v7);
    sub_1D1747DDC(&v21);

    v8 = v21;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v5);
  v20[2] = a2;
  v9 = sub_1D174A6C4(sub_1D1A8D280, v20, v8);

  if (v9)
  {
    v10 = [v9 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v11 = sub_1D1E67C1C();

    if (v11 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
    {
      v13 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1D3891EF0](v13, v11);
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v17 = sub_1D1E682DC();
        if ((v18 & 1) == 0 && v17 == a1)
        {

          return v15;
        }

        ++v13;
        if (v16 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_20:
  }

  return 0;
}

id sub_1D1A84004(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 isPrimary];
  if (v4 != [v3 isPrimary])
  {
    return [v2 isPrimary];
  }

  v6 = [v2 name];
  v7 = sub_1D1E6781C();
  v9 = v8;

  v10 = [v3 name];
  v11 = sub_1D1E6781C();
  v13 = v12;

  if (v7 == v11 && v9 == v13)
  {

    return 0;
  }

  else
  {
    v15 = sub_1D1E6904C();

    return (v15 & 1);
  }
}

void *HomeState.Stream.accessory(for:in:)(uint64_t a1, id a2)
{
  v3 = [a2 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v4 = sub_1D1E67C1C();

  v7[2] = a1;
  v5 = sub_1D174A6C4(sub_1D1A8CCC8, v7, v4);

  return v5;
}

uint64_t sub_1D1A841D4(id *a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - v19;
  v21 = [*a1 uniqueIdentifier];
  sub_1D1E66A5C();

  (*(v5 + 56))(v20, 0, 1, v4);
  v22 = *(v10 + 56);
  sub_1D17783E0(v20, v13);
  sub_1D17783E0(a2, &v13[v22]);
  v23 = *(v5 + 48);
  if (v23(v13, 1, v4) != 1)
  {
    sub_1D17783E0(v13, v18);
    if (v23(&v13[v22], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v13[v22], v4);
      sub_1D1797998();
      v24 = sub_1D1E6775C();
      v25 = *(v5 + 8);
      v25(v8, v4);
      sub_1D1741A30(v20, &qword_1EC642590, qword_1D1E71260);
      v25(v18, v4);
      sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
      return v24 & 1;
    }

    sub_1D1741A30(v20, &qword_1EC642590, qword_1D1E71260);
    (*(v5 + 8))(v18, v4);
    goto LABEL_6;
  }

  sub_1D1741A30(v20, &qword_1EC642590, qword_1D1E71260);
  if (v23(&v13[v22], 1, v4) != 1)
  {
LABEL_6:
    sub_1D1741A30(v13, &qword_1EC642980, &unk_1D1E6E6E0);
    v24 = 0;
    return v24 & 1;
  }

  sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
  v24 = 1;
  return v24 & 1;
}

uint64_t HomeState.Stream.accessoryFromAnyHome(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  swift_beginAccess();
  v9 = *(v1 + 64);
  if (v9)
  {
    v10 = [v9 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v35 = sub_1D1749970(v11);
    sub_1D1747DDC(&v35);

    v12 = v35;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v31 = v8;
  sub_1D17783E0(a1, v8);
  sub_1D17783E0(a1, v34);
  v32 = v12 >> 62;
  v13 = (v12 & 0xFFFFFFFFFFFFFF8);
  if (v12 >> 62)
  {
LABEL_29:
    v14 = sub_1D1E6873C();
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = v12 & 0xC000000000000001;
  v30 = v12 + 32;
  v33 = v1;
  swift_retain_n();
  v16 = 0;
  while (v14 != v16)
  {
    if (v15)
    {
      v17 = MEMORY[0x1D3891EF0](v16, v12);
    }

    else
    {
      if (v16 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v17 = *(v12 + 8 * v16 + 32);
    }

    v18 = v17;
    v19 = [v17 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v1 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v20);
    *(&v30 - 2) = v34;
    v21 = sub_1D174A6C4(sub_1D1A8D29C, (&v30 - 4), v1);

    if (v21)
    {
      v14 = v16;
      break;
    }

    if (__OFADD__(v16++, 1))
    {
      goto LABEL_28;
    }
  }

  if (v32)
  {
    goto LABEL_24;
  }

  if (v14 != *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      if (v15)
      {
        v23 = MEMORY[0x1D3891EF0](v14, v12);
      }

      else
      {
        if (v14 >= v13[2])
        {
          __break(1u);

          __break(1u);
          return result;
        }

        v23 = *(v30 + 8 * v14);
      }

      v14 = v23;
      v24 = [v23 accessories];
      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v25 = sub_1D1E67C1C();

      v13 = &v30;
      MEMORY[0x1EEE9AC00](v26);
      v27 = v31;
      *(&v30 - 2) = v31;
      v28 = sub_1D174A6C4(sub_1D1A8D29C, (&v30 - 4), v25);

      sub_1D1741A30(v27, &qword_1EC642590, qword_1D1E71260);

      if (v28)
      {
        goto LABEL_26;
      }

      sub_1D1741A30(v34, &qword_1EC642590, qword_1D1E71260);
      __break(1u);
LABEL_24:
      ;
    }

    while (v14 != sub_1D1E6873C());
  }

  sub_1D1741A30(v31, &qword_1EC642590, qword_1D1E71260);
  v28 = 0;
LABEL_26:

  sub_1D1741A30(v34, &qword_1EC642590, qword_1D1E71260);
  return v28;
}

unint64_t HomeState.Stream.accessoriesFromAnyHome(for:)(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 64);
  if (v3)
  {
    v4 = [v3 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v9 = sub_1D1749970(v5);
    sub_1D1747DDC(&v9);

    v6 = v9;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = sub_1D1A8CE80(v6, v2);

  return v7;
}

uint64_t HomeState.Stream.accessory(for:)(uint64_t a1)
{
  v3 = 0;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - v9;
  swift_beginAccess();
  v11 = *(v1 + 64);
  if (v11)
  {
    v12 = [v11 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v42 = sub_1D1749970(v13);
    sub_1D1747DDC(&v42);

    v14 = v42;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v15 = (v5 + 16);
  v16 = *(v5 + 16);
  v16(v10, a1, v4);
  v39 = v4;
  v16(v41, a1, v4);
  v40 = v14 >> 62;
  v37 = v10;
  v38 = v5;
  v17 = v14 & 0xFFFFFFFFFFFFFF8;
  if (v14 >> 62)
  {
LABEL_29:
    v18 = sub_1D1E6873C();
  }

  else
  {
    v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = 0;
  v20 = v14 & 0xC000000000000001;
  v36 = v14 + 32;
  while (v18 != v19)
  {
    if (v20)
    {
      v21 = MEMORY[0x1D3891EF0](v19, v14);
    }

    else
    {
      if (v19 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v21 = *(v14 + 8 * v19 + 32);
    }

    v22 = v21;
    v23 = [v21 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v15 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v24);
    *(&v35 - 2) = v41;
    v25 = sub_1D174A6C4(sub_1D1A8D280, (&v35 - 4), v15);

    if (v25)
    {
      v18 = v19;
      break;
    }

    if (__OFADD__(v19++, 1))
    {
      goto LABEL_28;
    }
  }

  if (!v40)
  {
    if (v18 != *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_25:
    v15 = *(v38 + 8);
    v17 = v39;
    v15(v37, v39);
    v3 = 0;
LABEL_26:

    v15(v41, v17);
    return v3;
  }

  if (v18 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v20)
  {
    v27 = MEMORY[0x1D3891EF0](v18, v14);
  }

  else
  {
    if (v18 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v27 = *(v36 + 8 * v18);
  }

  v28 = v27;
  v29 = [v27 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v30 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v31);
  v32 = v37;
  *(&v35 - 2) = v37;
  v3 = sub_1D174A6C4(sub_1D1A8D280, (&v35 - 4), v30);

  v15 = *(v38 + 8);
  v33 = v32;
  v17 = v39;
  v15(v33, v39);

  if (v3)
  {
    goto LABEL_26;
  }

LABEL_32:
  v15(v41, v17);
  __break(1u);

  __break(1u);
  return result;
}

uint64_t HomeState.Stream.actionSet(for:)(uint64_t a1)
{
  v3 = 0;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - v9;
  swift_beginAccess();
  v11 = *(v1 + 64);
  if (v11)
  {
    v12 = [v11 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v42 = sub_1D1749970(v13);
    sub_1D1747DDC(&v42);

    v14 = v42;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v15 = (v5 + 16);
  v16 = *(v5 + 16);
  v16(v10, a1, v4);
  v39 = v4;
  v16(v41, a1, v4);
  v40 = v14 >> 62;
  v37 = v10;
  v38 = v5;
  v17 = v14 & 0xFFFFFFFFFFFFFF8;
  if (v14 >> 62)
  {
LABEL_29:
    v18 = sub_1D1E6873C();
  }

  else
  {
    v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = 0;
  v20 = v14 & 0xC000000000000001;
  v36 = v14 + 32;
  while (v18 != v19)
  {
    if (v20)
    {
      v21 = MEMORY[0x1D3891EF0](v19, v14);
    }

    else
    {
      if (v19 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v21 = *(v14 + 8 * v19 + 32);
    }

    v22 = v21;
    v23 = [v21 actionSets];
    sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
    v15 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v24);
    *(&v35 - 2) = v41;
    v25 = sub_1D174A6C4(sub_1D1A8D280, (&v35 - 4), v15);

    if (v25)
    {
      v18 = v19;
      break;
    }

    if (__OFADD__(v19++, 1))
    {
      goto LABEL_28;
    }
  }

  if (!v40)
  {
    if (v18 != *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_25:
    v15 = *(v38 + 8);
    v17 = v39;
    v15(v37, v39);
    v3 = 0;
LABEL_26:

    v15(v41, v17);
    return v3;
  }

  if (v18 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v20)
  {
    v27 = MEMORY[0x1D3891EF0](v18, v14);
  }

  else
  {
    if (v18 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v27 = *(v36 + 8 * v18);
  }

  v28 = v27;
  v29 = [v27 actionSets];
  sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
  v30 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v31);
  v32 = v37;
  *(&v35 - 2) = v37;
  v3 = sub_1D174A6C4(sub_1D1A8D280, (&v35 - 4), v30);

  v15 = *(v38 + 8);
  v33 = v32;
  v17 = v39;
  v15(v33, v39);

  if (v3)
  {
    goto LABEL_26;
  }

LABEL_32:
  v15(v41, v17);
  __break(1u);

  __break(1u);
  return result;
}