uint64_t sub_1A3394C1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C56C8);
  v0 = type metadata accessor for VisualIdentity(0);
  v1 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A34DAA10;
  if (qword_1EB0C27F8 != -1)
  {
    swift_once();
  }

  v3 = __swift_project_value_buffer(v0, qword_1EB0ED9C8);
  sub_1A3300BB8(v3, v2 + v1);
  return v2;
}

uint64_t sub_1A3394D20(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A330F6A8;

  return (sub_1A3394E04)(a1, a2);
}

uint64_t sub_1A3394DD4()
{
  v0 = type metadata accessor for RecentsSuggestionProvider();

  return sub_1A3463D24(v0, &off_1F16234E8);
}

uint64_t sub_1A3394E04(uint64_t a1)
{
  v1[3] = a1;
  v1[4] = *(type metadata accessor for VisualIdentity(0) - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A3394EEC, 0, 0);
}

uint64_t sub_1A3394EEC()
{
  v1 = *(v0 + 24);
  v2 = [objc_allocWithZone(MEMORY[0x1E695CDE8]) init];
  *(v0 + 48) = v2;
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5790);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A34DAA10;
  v5 = *v1;
  *(v0 + 56) = v5;
  v6 = [v5 identifier];
  v7 = sub_1A34CD110();
  v9 = v8;

  *(v4 + 32) = v7;
  *(v4 + 40) = v9;
  v10 = sub_1A34CD350();

  v11 = [v3 recentPostersRequestForContactIdentifiers_];
  *(v0 + 64) = v11;

  *(v0 + 16) = 0;
  v12 = [v2 executeFetchRequest:v11 error:v0 + 16];
  v13 = *(v0 + 16);
  sub_1A339690C();
  v14 = sub_1A34CD370();
  *(v0 + 72) = v14;
  v15 = v13;

  if (v15)
  {

    if (qword_1EB0C1248 != -1)
    {
      swift_once();
    }

    v16 = sub_1A34CA250();
    __swift_project_value_buffer(v16, qword_1EB0ECF90);
    v17 = v15;
    v18 = sub_1A34CA230();
    v19 = sub_1A34CD640();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v13;
      v22 = v17;
      _os_log_impl(&dword_1A31E6000, v18, v19, "Unable to fetch recents. error: %@", v20, 0xCu);
      sub_1A32D376C(v21);
      MEMORY[0x1A58F1010](v21, -1, -1);
      MEMORY[0x1A58F1010](v20, -1, -1);
    }

    swift_willThrow();

    v23 = *(v0 + 8);

    return v23();
  }

  v25 = *(v0 + 24);
  *(v0 + 80) = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  *(v0 + 176) = *(v25 + 8);
  type metadata accessor for UserInputRequestCoordinator();
  v26 = swift_allocObject();
  *(v0 + 88) = v26;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0u;
  *(v26 + 48) = 0;
  v27 = v5;
  sub_1A34C99D0();
  if (!(v14 >> 62))
  {
    v28 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 96) = v28;
    if (v28)
    {
      goto LABEL_11;
    }

LABEL_30:
    v30 = MEMORY[0x1E69E7CC0];
LABEL_31:
    v72 = *(v0 + 80);
    v74 = *(v0 + 48);
    v73 = *(v0 + 56);

    v75 = *(v0 + 8);

    return v75(v30);
  }

  v28 = sub_1A34CD9B0();
  *(v0 + 96) = v28;
  if (!v28)
  {
    goto LABEL_30;
  }

LABEL_11:
  if (v28 < 1)
  {
    __break(1u);
  }

  v29 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *(v0 + 104) = v29;
    *(v0 + 112) = v30;
    v36 = *(v0 + 72);
    if ((v36 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x1A58EF310]();
    }

    else
    {
      v37 = *(v36 + 8 * v29 + 32);
    }

    v38 = v37;
    *(v0 + 120) = v37;
    v39 = *(v0 + 80);
    v40 = *(v0 + 56);
    v41 = v39;
    sub_1A34C9010();
    objc_opt_self();
    v42 = swift_dynamicCastObjCClass();
    if (v42)
    {
      v56 = v42;
      v57 = v38;
      v58 = [v56 pairedImage];
      *(v0 + 128) = v58;
      v59 = swift_task_alloc();
      *(v0 + 136) = v59;
      *v59 = v0;
      v59[1] = sub_1A339571C;
      v60 = *(v0 + 176);
      v61 = *(v0 + 80);
      v62 = *(v0 + 88);
      v63 = *(v0 + 56);
      v64 = *(v0 + 40);
      v65 = v56;
      v66 = v58;
      goto LABEL_26;
    }

    objc_opt_self();
    v43 = swift_dynamicCastObjCClass();
    if (v43)
    {
      break;
    }

    v44 = *(v0 + 80);
    v45 = *(v0 + 56);
    sub_1A3396958();
    v46 = swift_allocError();
    *v47 = 1;
    swift_willThrow();

    if (qword_1EB0C1248 != -1)
    {
      swift_once();
    }

    v48 = *(v0 + 120);
    v49 = sub_1A34CA250();
    __swift_project_value_buffer(v49, qword_1EB0ECF90);
    v50 = v48;
    v51 = v46;
    v52 = sub_1A34CA230();
    v53 = sub_1A34CD640();

    v54 = os_log_type_enabled(v52, v53);
    v55 = *(v0 + 120);
    if (v54)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412546;
      *(v31 + 4) = v55;
      *v32 = v55;
      *(v31 + 12) = 2112;
      v33 = v55;
      v34 = v46;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v35;
      v32[1] = v35;
      _os_log_impl(&dword_1A31E6000, v52, v53, "Failed to create VisualIdentity for recent: %@, error: %@", v31, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6C40);
      swift_arrayDestroy();
      MEMORY[0x1A58F1010](v32, -1, -1);
      MEMORY[0x1A58F1010](v31, -1, -1);
    }

    else
    {
    }

    v30 = *(v0 + 112);
    v29 = *(v0 + 104) + 1;
    if (v29 == *(v0 + 96))
    {
      goto LABEL_31;
    }
  }

  v67 = v43;
  v68 = v38;
  v69 = v67;
  v70 = [v67 pairedPoster];
  *(v0 + 152) = v70;
  v71 = swift_task_alloc();
  *(v0 + 160) = v71;
  *v71 = v0;
  v71[1] = sub_1A33962D0;
  v60 = *(v0 + 176);
  v61 = *(v0 + 80);
  v62 = *(v0 + 88);
  v63 = *(v0 + 56);
  v64 = *(v0 + 40);
  v65 = v70;
  v66 = v69;
LABEL_26:

  return sub_1A346A644(v64, v65, v66, v61, v63, v60, v62);
}

uint64_t sub_1A339571C()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1A3395DE8;
  }

  else
  {

    v3 = sub_1A339586C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A339586C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + 112);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1A3298DD8(0, v5[2] + 1, 1, *(v0 + 112));
  }

  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1A3298DD8(v6 > 1, v7 + 1, 1, v5);
  }

  v9 = *(v0 + 32);
  v8 = *(v0 + 40);

  v5[2] = v7 + 1;
  sub_1A3336E78(v8, v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7);
  v10 = *(v0 + 104) + 1;
  if (v10 == *(v0 + 96))
  {
LABEL_6:
    v11 = *(v0 + 80);
    v13 = *(v0 + 48);
    v12 = *(v0 + 56);

    v14 = *(v0 + 8);

    return v14(v5);
  }

  else
  {
    while (1)
    {
      *(v0 + 104) = v10;
      *(v0 + 112) = v5;
      v16 = *(v0 + 72);
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1A58EF310]();
      }

      else
      {
        v17 = *(v16 + 8 * v10 + 32);
      }

      v18 = v17;
      *(v0 + 120) = v17;
      v19 = *(v0 + 80);
      v20 = *(v0 + 56);
      v21 = v19;
      sub_1A34C9010();
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v41 = v22;
        v42 = v18;
        v43 = [v41 pairedImage];
        *(v0 + 128) = v43;
        v44 = swift_task_alloc();
        *(v0 + 136) = v44;
        *v44 = v0;
        v44[1] = sub_1A339571C;
        v45 = *(v0 + 176);
        v46 = *(v0 + 80);
        v47 = *(v0 + 88);
        v48 = *(v0 + 56);
        v49 = *(v0 + 40);
        v50 = v41;
        v51 = v43;
        goto LABEL_23;
      }

      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        break;
      }

      v24 = *(v0 + 80);
      v25 = *(v0 + 56);
      sub_1A3396958();
      v26 = swift_allocError();
      *v27 = 1;
      swift_willThrow();

      if (qword_1EB0C1248 != -1)
      {
        swift_once();
      }

      v28 = *(v0 + 120);
      v29 = sub_1A34CA250();
      __swift_project_value_buffer(v29, qword_1EB0ECF90);
      v30 = v28;
      v31 = v26;
      v32 = sub_1A34CA230();
      v33 = sub_1A34CD640();

      v34 = os_log_type_enabled(v32, v33);
      v35 = *(v0 + 120);
      if (v34)
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 138412546;
        *(v36 + 4) = v35;
        *v37 = v35;
        *(v36 + 12) = 2112;
        v38 = v35;
        v39 = v26;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 14) = v40;
        v37[1] = v40;
        _os_log_impl(&dword_1A31E6000, v32, v33, "Failed to create VisualIdentity for recent: %@, error: %@", v36, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6C40);
        swift_arrayDestroy();
        MEMORY[0x1A58F1010](v37, -1, -1);
        MEMORY[0x1A58F1010](v36, -1, -1);
      }

      else
      {
      }

      v5 = *(v0 + 112);
      v10 = *(v0 + 104) + 1;
      if (v10 == *(v0 + 96))
      {
        goto LABEL_6;
      }
    }

    v52 = v23;
    v53 = v18;
    v54 = v52;
    v55 = [v52 pairedPoster];
    *(v0 + 152) = v55;
    v56 = swift_task_alloc();
    *(v0 + 160) = v56;
    *v56 = v0;
    v56[1] = sub_1A33962D0;
    v45 = *(v0 + 176);
    v46 = *(v0 + 80);
    v47 = *(v0 + 88);
    v48 = *(v0 + 56);
    v49 = *(v0 + 40);
    v50 = v55;
    v51 = v54;
LABEL_23:

    return sub_1A346A644(v49, v50, v51, v46, v48, v45, v47);
  }
}

uint64_t sub_1A3395DE8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);

  v4 = *(v0 + 144);
  while (1)
  {
    if (qword_1EB0C1248 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 120);
    v6 = sub_1A34CA250();
    __swift_project_value_buffer(v6, qword_1EB0ECF90);
    v7 = v5;
    v8 = v4;
    v9 = sub_1A34CA230();
    v10 = sub_1A34CD640();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 120);
    if (v11)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412546;
      *(v13 + 4) = v12;
      *v14 = v12;
      *(v13 + 12) = 2112;
      v15 = v12;
      v16 = v4;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v17;
      v14[1] = v17;
      _os_log_impl(&dword_1A31E6000, v9, v10, "Failed to create VisualIdentity for recent: %@, error: %@", v13, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6C40);
      swift_arrayDestroy();
      MEMORY[0x1A58F1010](v14, -1, -1);
      MEMORY[0x1A58F1010](v13, -1, -1);
    }

    else
    {
    }

    v18 = *(v0 + 104) + 1;
    if (v18 == *(v0 + 96))
    {
      break;
    }

    *(v0 + 104) = v18;
    v19 = *(v0 + 72);
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1A58EF310]();
    }

    else
    {
      v20 = *(v19 + 8 * v18 + 32);
    }

    v21 = v20;
    *(v0 + 120) = v20;
    v22 = *(v0 + 80);
    v23 = *(v0 + 56);
    v24 = v22;
    sub_1A34C9010();
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      v36 = v25;
      v37 = v21;
      v38 = [v36 pairedImage];
      *(v0 + 128) = v38;
      v39 = swift_task_alloc();
      *(v0 + 136) = v39;
      *v39 = v0;
      v39[1] = sub_1A339571C;
      v40 = *(v0 + 176);
      v41 = *(v0 + 80);
      v42 = *(v0 + 88);
      v43 = *(v0 + 56);
      v44 = *(v0 + 40);
      v45 = v36;
      v46 = v38;
LABEL_19:

      return sub_1A346A644(v44, v45, v46, v41, v43, v40, v42);
    }

    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      v47 = v26;
      v48 = v21;
      v49 = v47;
      v50 = [v47 pairedPoster];
      *(v0 + 152) = v50;
      v51 = swift_task_alloc();
      *(v0 + 160) = v51;
      *v51 = v0;
      v51[1] = sub_1A33962D0;
      v40 = *(v0 + 176);
      v41 = *(v0 + 80);
      v42 = *(v0 + 88);
      v43 = *(v0 + 56);
      v44 = *(v0 + 40);
      v45 = v50;
      v46 = v49;
      goto LABEL_19;
    }

    v27 = *(v0 + 80);
    v28 = *(v0 + 56);
    sub_1A3396958();
    v4 = swift_allocError();
    *v29 = 1;
    swift_willThrow();
  }

  v30 = *(v0 + 112);
  v31 = *(v0 + 80);
  v33 = *(v0 + 48);
  v32 = *(v0 + 56);

  v34 = *(v0 + 8);

  return v34(v30);
}

uint64_t sub_1A33962D0()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1A3396420;
  }

  else
  {

    v3 = sub_1A33969AC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A3396420()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);

  v4 = *(v0 + 168);
  while (1)
  {
    if (qword_1EB0C1248 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 120);
    v6 = sub_1A34CA250();
    __swift_project_value_buffer(v6, qword_1EB0ECF90);
    v7 = v5;
    v8 = v4;
    v9 = sub_1A34CA230();
    v10 = sub_1A34CD640();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 120);
    if (v11)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412546;
      *(v13 + 4) = v12;
      *v14 = v12;
      *(v13 + 12) = 2112;
      v15 = v12;
      v16 = v4;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v17;
      v14[1] = v17;
      _os_log_impl(&dword_1A31E6000, v9, v10, "Failed to create VisualIdentity for recent: %@, error: %@", v13, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6C40);
      swift_arrayDestroy();
      MEMORY[0x1A58F1010](v14, -1, -1);
      MEMORY[0x1A58F1010](v13, -1, -1);
    }

    else
    {
    }

    v18 = *(v0 + 104) + 1;
    if (v18 == *(v0 + 96))
    {
      break;
    }

    *(v0 + 104) = v18;
    v19 = *(v0 + 72);
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1A58EF310]();
    }

    else
    {
      v20 = *(v19 + 8 * v18 + 32);
    }

    v21 = v20;
    *(v0 + 120) = v20;
    v22 = *(v0 + 80);
    v23 = *(v0 + 56);
    v24 = v22;
    sub_1A34C9010();
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      v36 = v25;
      v37 = v21;
      v38 = [v36 pairedImage];
      *(v0 + 128) = v38;
      v39 = swift_task_alloc();
      *(v0 + 136) = v39;
      *v39 = v0;
      v39[1] = sub_1A339571C;
      v40 = *(v0 + 176);
      v41 = *(v0 + 80);
      v42 = *(v0 + 88);
      v43 = *(v0 + 56);
      v44 = *(v0 + 40);
      v45 = v36;
      v46 = v38;
LABEL_19:

      return sub_1A346A644(v44, v45, v46, v41, v43, v40, v42);
    }

    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      v47 = v26;
      v48 = v21;
      v49 = v47;
      v50 = [v47 pairedPoster];
      *(v0 + 152) = v50;
      v51 = swift_task_alloc();
      *(v0 + 160) = v51;
      *v51 = v0;
      v51[1] = sub_1A33962D0;
      v40 = *(v0 + 176);
      v41 = *(v0 + 80);
      v42 = *(v0 + 88);
      v43 = *(v0 + 56);
      v44 = *(v0 + 40);
      v45 = v50;
      v46 = v49;
      goto LABEL_19;
    }

    v27 = *(v0 + 80);
    v28 = *(v0 + 56);
    sub_1A3396958();
    v4 = swift_allocError();
    *v29 = 1;
    swift_willThrow();
  }

  v30 = *(v0 + 112);
  v31 = *(v0 + 80);
  v33 = *(v0 + 48);
  v32 = *(v0 + 56);

  v34 = *(v0 + 8);

  return v34(v30);
}

unint64_t sub_1A339690C()
{
  result = qword_1EB0C0170;
  if (!qword_1EB0C0170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0C0170);
  }

  return result;
}

unint64_t sub_1A3396958()
{
  result = qword_1EB0C9548;
  if (!qword_1EB0C9548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9548);
  }

  return result;
}

uint64_t sub_1A33969AC()
{

  return sub_1A339586C();
}

uint64_t (*EnvironmentValues.showLegacyEditorAction.getter())()
{
  sub_1A32CD1F8();
  sub_1A34CB0E0();
  *(swift_allocObject() + 16) = v1;
  return sub_1A3396AA4;
}

uint64_t EnvironmentValues.showLegacyEditorAction.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1A32CD1F8();
  return sub_1A34CB0F0();
}

void (*EnvironmentValues.showLegacyEditorAction.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = sub_1A32CD1F8();
  sub_1A34CB0E0();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v4 + 16);
  *v4 = sub_1A3396CEC;
  *(v4 + 8) = v5;
  return sub_1A3396BF0;
}

void sub_1A3396BF0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v2[2] = sub_1A3396CF0;
    v2[3] = v5;
    sub_1A34C9010();
    sub_1A34CB0F0();
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v2[2] = sub_1A3396CF0;
    v2[3] = v6;
    sub_1A34CB0F0();
  }

  free(v2);
}

uint64_t sub_1A3396CF4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1A3396D00()
{
  sub_1A34CDF20();
  sub_1A34CD1C0();
  return sub_1A34CDF70();
}

uint64_t sub_1A3396D54()
{
  sub_1A34CDF20();
  sub_1A34CD1C0();
  return sub_1A34CDF70();
}

unint64_t sub_1A3396DBC()
{
  result = qword_1EB0C9550;
  if (!qword_1EB0C9550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9550);
  }

  return result;
}

unint64_t sub_1A3396E20()
{
  result = qword_1EB0C9558;
  if (!qword_1EB0C9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9558);
  }

  return result;
}

unint64_t sub_1A3396E84()
{
  result = qword_1EB0C9560;
  if (!qword_1EB0C9560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9560);
  }

  return result;
}

id sub_1A3396F08(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_borderStyle;
  swift_beginAccess();
  v5 = *v4;
  *v4 = v2;
  *(v4 + 8) = v3;
  v6 = v2;

  return sub_1A3396F80();
}

id sub_1A3396F80()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6DD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v45 - v3;
  v5 = type metadata accessor for AvatarViewLayer.RenderSpec(0);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v45 - v11;
  v46 = v1;
  v13 = [v1 layer];
  type metadata accessor for AvatarViewLayer(0);
  v14 = swift_dynamicCastClassUnconditional();
  v15 = OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_spec;
  swift_beginAccess();
  sub_1A328D790(v14 + v15, v4, &qword_1EB0C6DD0);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1A3288FDC(v4, &qword_1EB0C6DD0);
    return [v46 setNeedsLayout];
  }

  else
  {
    sub_1A32FC41C(v4, v12);
    v17 = v46;
    v18 = [v46 layer];
    v19 = swift_dynamicCastClassUnconditional();
    v20 = &v17[OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_borderStyle];
    swift_beginAccess();
    v21 = *v20;
    v22 = *(v20 + 1);
    v23 = sub_1A34CA5D0();
    result = (*(*(v23 - 8) + 16))(v8, v12, v23);
    v24 = &v12[v5[5]];
    v25 = *v24;
    v48[1] = *(v24 + 1);
    v53 = *(v24 + 12);
    v26 = *(v24 + 3);
    v27 = *(v24 + 5);
    v51 = *(v24 + 4);
    v52 = v27;
    v28 = *(v24 + 3);
    v29 = *v24;
    v30 = *(v24 + 1);
    v49 = *(v24 + 2);
    v31 = v49;
    v50 = v28;
    v33 = v5[6];
    v32 = v5[7];
    v34 = v5[9];
    v35 = &v8[v5[5]];
    v36 = *(v24 + 5);
    *(v35 + 4) = v51;
    *(v35 + 5) = v36;
    *v35 = v29;
    *(v35 + 1) = v30;
    v37 = &v12[v33];
    v38 = *v37;
    v39 = v37[8];
    LOBYTE(v32) = v12[v32];
    *(v35 + 2) = v31;
    *(v35 + 3) = v26;
    *&v36 = *&v12[v34];
    *(v35 + 12) = *(v24 + 12);
    v40 = &v8[v5[6]];
    *v40 = v38;
    v40[8] = v39;
    v8[v5[7]] = v32;
    v41 = &v8[v5[8]];
    *v41 = v21;
    *(v41 + 1) = v22;
    *&v8[v5[9]] = v36;
    v48[0] = v25;
    v42 = *(v19 + OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_model);
    if (v42)
    {
      v43 = v21;
      sub_1A32E31E8(v48, &v47);
      sub_1A31EE004(v38, v39);
      v44 = v42;
      sub_1A32FB324(v8);

      sub_1A32FC4E4(v8);
      return sub_1A32FC4E4(v12);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1A3397338@<X0>(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_borderStyle;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  a1[1] = v5;

  return v4;
}

id sub_1A33973A0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1 + OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_borderStyle;
  swift_beginAccess();
  v5 = *v4;
  *v4 = v2;
  *(v4 + 8) = v3;

  return sub_1A3396F80();
}

uint64_t (*sub_1A3397410(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A3397474;
}

void sub_1A339748C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6DD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for AvatarViewLayer.RenderSpec(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v25 - v11;
  v13 = [v1 layer];
  type metadata accessor for AvatarViewLayer(0);
  v14 = swift_dynamicCastClassUnconditional();
  v15 = OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_spec;
  swift_beginAccess();
  sub_1A328D790(v14 + v15, v4, &qword_1EB0C6DD0);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1A3288FDC(v4, &qword_1EB0C6DD0);
    [v1 setNeedsLayout];
    v16 = &selRef_fingerprintForContactIdentifier_;
LABEL_5:
    v22 = [v1 v16[419]];
    v23 = swift_dynamicCastClassUnconditional();
    v24 = sub_1A34C9010();
    sub_1A32E7A10(v24, v23);

    return;
  }

  sub_1A32FC41C(v4, v12);
  v17 = [v1 layer];
  v18 = swift_dynamicCastClassUnconditional();
  v19 = sub_1A34C9010();
  sub_1A32FB934(v19, v8);

  v20 = *(v18 + OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_model);
  if (v20)
  {
    v16 = &selRef_fingerprintForContactIdentifier_;
    v21 = v20;
    sub_1A32FB324(v8);

    sub_1A32FC4E4(v8);
    sub_1A32FC4E4(v12);
    goto LABEL_5;
  }

  __break(1u);
}

void sub_1A3397790(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_contact;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  sub_1A33977F4();
}

void sub_1A33977F4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_contact;
  swift_beginAccess();
  v3 = *(v0 + v2);
  sub_1A3385F40(&v31);

  v4 = v1 + OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_avatarHash;
  v5 = *(v1 + OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_avatarHash);
  v6 = *(v1 + OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_avatarHash + 8);
  v7 = *(v1 + OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_avatarHash + 16);
  v8 = *(v1 + OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_avatarHash + 24);
  v9 = *(v1 + OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_avatarHash + 32);
  v38 = v31;
  v10 = v31 == v5 && *(&v31 + 1) == v6;
  if (!v10 && (sub_1A34CDE30() & 1) == 0)
  {
    sub_1A3363584(&v38);
    v11 = v32;
    goto LABEL_10;
  }

  sub_1A3385EF4();
  v11 = v32;

  v12 = v7;
  if ((sub_1A34CD830() & 1) == 0 || v8 != (v33 & 1))
  {

    sub_1A3363584(&v38);
LABEL_10:

LABEL_11:
    v13 = *(v1 + v2);
    v14 = *(v1 + OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_listener);
    v15 = *(v1 + OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_listener + 8);
    v16 = type metadata accessor for CNContactAvatarContact();
    swift_allocObject();
    v17 = sub_1A32F27E4(v13, 1);
    *(&v36 + 1) = v16;
    v37 = sub_1A33989AC();
    *&v35 = v17;
    type metadata accessor for AvatarView.Model();
    v18 = swift_allocObject();
    v19 = __swift_mutable_project_boxed_opaque_existential_1(&v35, v16);
    v20 = MEMORY[0x1EEE9AC00](v19);
    v22 = (&v30 - v21);
    (*(v23 + 16))(&v30 - v21, v20);
    v24 = *v22;
    swift_unknownObjectRetain();
    v25 = v13;
    v26 = sub_1A32E0314(v24, v14, v15, 1, 0, v18);
    __swift_destroy_boxed_opaque_existential_0(&v35);
    *(v1 + OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_model) = v26;
    sub_1A34C9010();

    sub_1A339748C();

    v27 = *(v1 + v2);
    sub_1A3385F40(&v35);

    v28 = *(v4 + 16);
    v29 = v36;
    *v4 = v35;
    *(v4 + 16) = v29;
    *(v4 + 32) = v37;

    return;
  }

  sub_1A3363584(&v38);

  if (v34 != v9)
  {
    goto LABEL_11;
  }
}

id sub_1A3397AF8()
{
  v1 = OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_contact;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1A3397B4C(void *a1)
{
  v3 = OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_contact;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1A33977F4();
}

uint64_t (*sub_1A3397BB4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A3397C18;
}

uint64_t sub_1A3397C30(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id sub_1A3397CF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = &v5[OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_borderStyle];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v5[OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_listener];
  *v13 = 0;
  v13[1] = 0;
  sub_1A3385F40(v37);
  v14 = &v5[OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_avatarHash];
  v15 = v37[1];
  *v14 = v37[0];
  *(v14 + 1) = v15;
  *(v14 + 4) = v38;
  v16 = &v5[OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_personaIdentifier];
  *v16 = a4;
  *(v16 + 1) = a5;
  v17 = type metadata accessor for CNContactAvatarContact();
  swift_allocObject();
  v18 = sub_1A32F27E4(a1, 1);
  v36[3] = v17;
  v36[4] = sub_1A33989AC();
  v36[0] = v18;
  type metadata accessor for AvatarView.Model();
  v19 = swift_allocObject();
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v36, v17);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = (&v35 - v22);
  (*(v24 + 16))(&v35 - v22, v21);
  v25 = *v23;
  swift_unknownObjectRetain();
  v26 = a1;
  v27 = sub_1A32E0314(v25, a2, a3, 1, 0, v19);
  __swift_destroy_boxed_opaque_existential_0(v36);
  *&v6[OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_model] = v27;
  *&v6[OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_contact] = a1;
  *v13 = a2;
  v13[1] = a3;
  v28 = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v29 = type metadata accessor for AvatarUIView();
  v35.receiver = v6;
  v35.super_class = v29;
  v30 = objc_msgSendSuper2(&v35, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v31 = [v30 layer];
  type metadata accessor for AvatarViewLayer(0);
  v32 = swift_dynamicCastClassUnconditional();
  v33 = sub_1A34C9010();
  sub_1A32E7A10(v33, v32);

  swift_unknownObjectRelease();
  return v30;
}

uint64_t sub_1A3397FAC()
{
  v1 = v0;
  v71 = type metadata accessor for AvatarViewLayer.RenderSpec(0);
  MEMORY[0x1EEE9AC00](v71);
  v3 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9578);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v62 - v5;
  v7 = sub_1A34CA5D0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v62 - v12;
  v14 = type metadata accessor for AvatarUIView();
  v101.receiver = v1;
  v101.super_class = v14;
  objc_msgSendSuper2(&v101, sel_layoutSubviews);
  v15 = [v1 traitCollection];
  [v15 userInterfaceStyle];

  sub_1A34CA5E0();
  result = (*(v8 + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v68 = *(v8 + 32);
    v69 = v8 + 32;
    v68(v13, v6, v7);
    v17 = [v1 layer];
    type metadata accessor for AvatarViewLayer(0);
    v63 = v17;
    v67 = swift_dynamicCastClassUnconditional();
    v64 = v8;
    v18 = *(v8 + 16);
    v70 = v10;
    v18(v10, v13, v7);
    v19 = OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_model;
    v20 = *&v1[OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_model];
    v21 = OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model__representation;
    swift_beginAccess();
    v22 = *(v20 + v21);
    v23 = *(v22 + 40);
    v24 = *(v22 + 56);
    v73 = *(v22 + 24);
    v74 = v23;
    v25 = *(v22 + 72);
    v26 = *(v22 + 88);
    v79 = *(v22 + 120);
    v27 = *(v22 + 104);
    v77 = v26;
    v78 = v27;
    v75 = v24;
    v76 = v25;
    v29 = *(v20 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 80);
    v28 = *(v20 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 96);
    v30 = *(v20 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 64);
    v86 = *(v20 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 112);
    v84 = v29;
    v85 = v28;
    v83 = v30;
    v31 = *(v20 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe);
    v32 = *(v20 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 16);
    v33 = *(v20 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 48);
    v81 = *(v20 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 32);
    v82 = v33;
    v80[0] = v31;
    v80[1] = v32;
    v34 = *(v22 + 88);
    v90 = *(v22 + 72);
    v91 = v34;
    v92 = *(v22 + 104);
    v93 = *(v22 + 120);
    v35 = *(v22 + 24);
    v36 = *(v22 + 56);
    v88 = *(v22 + 40);
    v89 = v36;
    v87 = v35;
    memmove(v94, (v20 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe), 0x78uLL);
    v97 = v90;
    v98 = v91;
    v99 = v92;
    *&v94[120] = v87;
    v95 = v88;
    v100 = v93;
    v96 = v89;
    v65 = v13;
    v66 = v7;
    if (v81 >> 3 == 0xFFFFFFFF && v85 < 8)
    {
      if (v92 >> 62 == 1)
      {
        sub_1A32E31E8(&v73, v72);
        sub_1A32E31E8(&v87, v72);
        v37 = sub_1A34CC4E0();
        sub_1A3288FDC(v94, &qword_1EB0C6AF8);
        v38 = 0;
      }

      else
      {
        sub_1A32E31E8(&v73, v72);
        sub_1A32E31E8(&v87, v72);
        sub_1A3288FDC(v94, &qword_1EB0C6AF8);
        v37 = 0;
        v38 = 4;
      }
    }

    else
    {
      v39 = BYTE8(v80[0]);
      v37 = *&v80[0];
      sub_1A328D790(v80, v72, &qword_1EB0CBDB0);
      sub_1A328D790(v80, v72, &qword_1EB0CBDB0);
      sub_1A32E31E8(&v73, v72);
      sub_1A32E31E8(&v87, v72);
      sub_1A3288FDC(v94, &qword_1EB0C6AF8);
      v38 = v39;
      sub_1A31EE004(v37, v39);
      sub_1A3288FDC(v80, &qword_1EB0CBDB0);
    }

    v40 = *(*&v1[v19] + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_contactType);
    v41 = &v1[OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_borderStyle];
    swift_beginAccess();
    v42 = *v41;
    v43 = *(v41 + 1);
    v44 = *v41;
    v45 = [v1 window];
    v46 = 2.0;
    v47 = v70;
    if (v45)
    {
      v48 = v45;
      v49 = [v45 windowScene];

      if (v49)
      {
        v50 = [v49 screen];

        [v50 scale];
        v46 = v51;
      }
    }

    v52 = v66;
    result = (v68)(v3, v47, v66);
    v53 = v71;
    v54 = &v3[*(v71 + 20)];
    v55 = v78;
    *(v54 + 4) = v77;
    *(v54 + 5) = v55;
    *(v54 + 12) = v79;
    v56 = v74;
    *v54 = v73;
    *(v54 + 1) = v56;
    v57 = v76;
    *(v54 + 2) = v75;
    *(v54 + 3) = v57;
    v58 = &v3[v53[6]];
    *v58 = v37;
    v58[8] = v38;
    v3[v53[7]] = v40;
    v59 = &v3[v53[8]];
    *v59 = v42;
    *(v59 + 1) = v43;
    *&v3[v53[9]] = v46;
    v60 = *(v67 + OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_model);
    if (v60)
    {
      v61 = v60;
      sub_1A32FB324(v3);

      sub_1A32FC4E4(v3);
      return (*(v64 + 8))(v65, v52);
    }
  }

  __break(1u);
  return result;
}

id AvatarUIView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AvatarUIView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AvatarUIView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A33989AC()
{
  result = qword_1ED8547B0;
  if (!qword_1ED8547B0)
  {
    type metadata accessor for CNContactAvatarContact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8547B0);
  }

  return result;
}

uint64_t sub_1A3398A04(uint64_t a1, id a2)
{
  v3 = [a2 CGImage];
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v3;
    v6 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
    v7 = sub_1A34CD0E0();
    v8 = [objc_opt_self() filterWithName_];

    if (v8)
    {
      v9 = v6;
      v10 = sub_1A34CD0E0();
      [v8 setValue:v9 forKey:v10];

      v11 = sub_1A34C9A10();
      v12 = sub_1A34CD0E0();
      [v8 setValue:v11 forKey:v12];

      v13 = sub_1A34C9A10();
      v14 = sub_1A34CD0E0();
      [v8 setValue:v13 forKey:v14];

      v15 = sub_1A34CD0E0();
      v16 = [v8 valueForKey_];

      if (v16)
      {
        sub_1A34CD920();
        swift_unknownObjectRelease();
      }

      else
      {
        v29 = 0u;
        v30 = 0u;
      }

      v31[0] = v29;
      v31[1] = v30;
      if (*(&v30 + 1))
      {
        sub_1A3398E14();
        if (swift_dynamicCast())
        {
          v27 = v9;
          v17 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
          *&v31[0] = v4;
          v18 = *(a1 + 16);
          if (v18)
          {
            v19 = a1 + 40;
            do
            {

              v20 = sub_1A34CD0E0();

              v21 = [v28 imageByApplyingFilter_];

              v22 = [v17 createCGImage:v21 fromRect:CGRectMake()];
              if (v22)
              {
                v23 = v22;
                v24 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

                if (v24)
                {
                  v25 = v24;
                  MEMORY[0x1A58EEB60]();
                  if (*((*&v31[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v31[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1A34CD390();
                  }

                  sub_1A34CD3B0();

                  v4 = *&v31[0];
                }
              }

              else
              {
              }

              v19 += 16;
              --v18;
            }

            while (v18);
          }

          goto LABEL_21;
        }
      }

      else
      {
        sub_1A32F751C(v31);
      }

LABEL_21:
      return v4;
    }
  }

  return v4;
}

unint64_t sub_1A3398E14()
{
  result = qword_1EB0C95A0;
  if (!qword_1EB0C95A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0C95A0);
  }

  return result;
}

id sub_1A3398E74(int a1, int a2, id a3)
{
  result = [a3 CGImage];
  if (result)
  {
    v5 = result;
    v6 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
    v7 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
    [a3 size];
    v8 = sub_1A34CD0E0();
    v9 = [v6 imageByApplyingFilter_];

    v10 = [v7 createCGImage:v9 fromRect:CGRectMake()];
    if (v10)
    {
      v11 = v10;
      v12 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

      return v12;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t ContactCardPropertyRowItem.labeledValueIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ContactCardPropertyRowItem.originAppName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ContactCardPropertyRowItem.label.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ContactCardPropertyRowItem.displayValue.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ContactCardPropertyRowItem.symbolName.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

void *ContactCardPropertyRowItem.activityAlert.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

uint64_t ContactCardPropertyRowItem.actionHandler.getter()
{
  v1 = *(v0 + 136);
  sub_1A321418C(v1);
  return v1;
}

uint64_t ContactCardPropertyRowItem.highlightTreatment.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = *(v1 + 168);
  *a1 = v2;
  a1[1] = v3;
  return sub_1A33995A4(v2, v3);
}

uint64_t sub_1A3399180()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_1A33991BC()
{
  v1 = *(v0 + 112);

  return v1;
}

void *sub_1A33991EC()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

uint64_t sub_1A339921C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = *(v1 + 168);
  *a1 = v2;
  a1[1] = v3;
  return sub_1A33995A4(v2, v3);
}

uint64_t sub_1A3399228()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1A3399258()
{
  v1 = *(v0 + 136);
  sub_1A321418C(v1);
  return v1;
}

uint64_t ContactCardGroupQuickActionItem.symbolName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContactCardGroupQuickActionItem.label.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ContactCardGroupQuickActionItem.actionHandler.getter()
{
  v1 = *(v0 + 32);
  sub_1A321418C(v1);
  return v1;
}

uint64_t ContactCardGroupQuickActionItem.init(symbolName:label:actionHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 48) = 0;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_1A3399344()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1A3399374()
{
  v1 = *(v0 + 32);
  sub_1A321418C(v1);
  return v1;
}

uint64_t ContactCardGroupHeaderItem.displayValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContactCardGroupHeaderItem.label.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ContactCardGroupHeaderItem.actionHandler.getter()
{
  v1 = *(v0 + 40);
  sub_1A321418C(v1);
  return v1;
}

uint64_t sub_1A339945C()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1A339948C()
{
  v1 = *(v0 + 40);
  sub_1A321418C(v1);
  return v1;
}

uint64_t _s14ContactsUICore21PropertyHighlightTypeO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (!v3)
  {
    if (!v5)
    {
LABEL_6:
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    sub_1A33995A4(*a1, v3);
    v6 = 0;
    goto LABEL_9;
  }

  if (v3 == 1)
  {
    if (v5 != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v5 < 2)
  {
    goto LABEL_8;
  }

  if (v2 == v4 && v3 == v5)
  {

    v6 = 1;
  }

  else
  {
    v6 = sub_1A34CDE30();
  }

LABEL_9:
  sub_1A33995A4(v4, v5);
  sub_1A3399A74(v2, v3);
  sub_1A3399A74(v4, v5);
  return v6 & 1;
}

uint64_t sub_1A33995A4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14ContactsUICore21PropertyHighlightTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A3399648(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A339969C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1A33996F8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy177_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1A3399818(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 177))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A3399860(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A33998FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A3399958(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1A33999CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1A3399A14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A3399A74(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1A3399A88()
{
  type metadata accessor for ContactLikenessStore.InMemoryCache(0);
  v0 = swift_allocObject();
  result = ContactLikenessStore.InMemoryCache.init(capacity:)(20);
  qword_1EB0C95A8 = v0;
  return result;
}

uint64_t ContactLikenessStore.InMemoryCache.__allocating_init(capacity:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ContactLikenessStore.InMemoryCache.init(capacity:)(a1);
  return v2;
}

uint64_t ContactLikenessStore.__allocating_init(configuration:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ContactLikenessStore.init(configuration:)(a1);
  return v2;
}

uint64_t ContactLikenessStore.init(configuration:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v21 = a1[3];
  v22 = *(a1 + 32);
  v5 = OBJC_IVAR____TtC14ContactsUICore20ContactLikenessStore_logger;
  if (qword_1EB0C4B60 != -1)
  {
    swift_once();
  }

  v6 = sub_1A34CA250();
  v7 = __swift_project_value_buffer(v6, qword_1EB0EE038);
  v8 = *(*(v6 - 8) + 16);
  v23 = v1;
  v8(v1 + v5, v7, v6);
  v9 = type metadata accessor for ContactLikenessStore.IntentImpl(0);
  v10 = swift_allocObject();
  v8(v10 + OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore10IntentImpl_logger, v7, v6);
  v11 = (v10 + OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore10IntentImpl_clientLabel);
  *v11 = v3;
  v11[1] = v2;
  v28 = v9;
  v29 = &off_1F1623BE0;
  *&v27 = v10;
  if (!v4)
  {
    if ((v22 & 1) == 0)
    {
      if (v21 >= 1)
      {
        sub_1A31EE4BC(&v27, &v24);
        type metadata accessor for ContactLikenessStore.InMemoryCache(0);
        v17 = swift_allocObject();
        ContactLikenessStore.InMemoryCache.init(capacity:)(v21);
        v18 = type metadata accessor for ContactLikenessStore.InMemoryCacheImpl(0);
        v19 = swift_allocObject();
        v8(v19 + OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore17InMemoryCacheImpl_logger, v7, v6);
        sub_1A31EE568(&v24, v19 + OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore17InMemoryCacheImpl_next);
        *(v19 + OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore17InMemoryCacheImpl_cache) = v17;
        v25 = v18;
        v26 = &off_1F1623BD0;
        *&v24 = v19;
        goto LABEL_11;
      }

      if (!v21)
      {
        goto LABEL_12;
      }
    }

    sub_1A31EE4BC(&v27, &v24);
    if (qword_1EB0C49E0 != -1)
    {
      swift_once();
    }

    v14 = qword_1EB0C95A8;
    v15 = type metadata accessor for ContactLikenessStore.InMemoryCacheImpl(0);
    v16 = swift_allocObject();
    v8(v16 + OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore17InMemoryCacheImpl_logger, v7, v6);
    sub_1A31EE568(&v24, v16 + OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore17InMemoryCacheImpl_next);
    *(v16 + OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore17InMemoryCacheImpl_cache) = v14;
    v25 = v15;
    v26 = &off_1F1623BD0;
    *&v24 = v16;
    sub_1A34C9010();
    goto LABEL_11;
  }

  sub_1A31EE4BC(&v27, &v24);
  v12 = type metadata accessor for ContactLikenessStore.InMemoryCacheImpl(0);
  v13 = swift_allocObject();
  v8(v13 + OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore17InMemoryCacheImpl_logger, v7, v6);
  sub_1A31EE568(&v24, v13 + OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore17InMemoryCacheImpl_next);
  *(v13 + OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore17InMemoryCacheImpl_cache) = v4;
  v25 = v12;
  v26 = &off_1F1623BD0;
  *&v24 = v13;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_0(&v27);
  sub_1A31EE568(&v24, &v27);
LABEL_12:
  sub_1A31EE568(&v27, v23 + OBJC_IVAR____TtC14ContactsUICore20ContactLikenessStore_impl);
  return v23;
}

uint64_t ContactLikenessStore.__allocating_init(clientLabel:)(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  v4[2] = 0;
  v4[3] = 0;
  v5 = 1;
  v2 = swift_allocObject();
  ContactLikenessStore.init(configuration:)(v4);
  return v2;
}

uint64_t ContactLikenessStore.Configuration.init(clientLabel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t ContactLikenessStore.fetchLikenesses(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A3399F38, 0, 0);
}

uint64_t sub_1A3399F38()
{
  v1 = (v0[3] + OBJC_IVAR____TtC14ContactsUICore20ContactLikenessStore_impl);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1A339A078;
  v5 = v0[2];

  return v7(&unk_1F161B0A8, v5, v2, v3);
}

uint64_t sub_1A339A078(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t ContactLikenessStore.fetchLikenesses(of:for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A339A198, 0, 0);
}

uint64_t sub_1A339A198()
{
  v1 = (v0[4] + OBJC_IVAR____TtC14ContactsUICore20ContactLikenessStore_impl);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1A339A2D0;
  v6 = v0[2];
  v5 = v0[3];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_1A339A2D0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t ContactLikenessStore.deinit()
{
  v1 = OBJC_IVAR____TtC14ContactsUICore20ContactLikenessStore_logger;
  v2 = sub_1A34CA250();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC14ContactsUICore20ContactLikenessStore_impl);
  return v0;
}

uint64_t ContactLikenessStore.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14ContactsUICore20ContactLikenessStore_logger;
  v2 = sub_1A34CA250();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC14ContactsUICore20ContactLikenessStore_impl);

  return swift_deallocClassInstance();
}

uint64_t ContactLikenessStore.Configuration.clientLabel.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContactLikenessStore.Configuration.clientLabel.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ContactLikenessStore.Configuration.sharedInMemoryCache.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ContactLikenessStore.Configuration.inMemoryCacheCapacity.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t ContactLikenessStoreError.hashValue.getter()
{
  v1 = *v0;
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](v1);
  return sub_1A34CDF70();
}

uint64_t sub_1A339A68C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9660);
  v3[11] = swift_task_alloc();
  v4 = type metadata accessor for ContactLikeness(0);
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v5 = sub_1A34CA250();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A339A7F0, 0, 0);
}

uint64_t sub_1A339A7F0()
{
  v27 = v0;
  v1 = v0[10];
  v2 = v0[8];
  v3 = sub_1A33A0EF8(v0[9]);
  v0[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9678);
  swift_allocObject();

  v4 = sub_1A34C9DC0();
  v0[5] = v3;
  v0[19] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9680);
  swift_allocObject();
  v5 = sub_1A34C9DC0();
  v6 = OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore10IntentImpl_logger;
  v0[20] = v5;
  v0[21] = v6;
  v7 = sub_1A34CD620();

  v8 = sub_1A34CA230();

  if (os_log_type_enabled(v8, v7))
  {
    v9 = v0[8];
    v10 = swift_slowAlloc();
    v25 = v1;
    v26 = swift_slowAlloc();
    v11 = v26;
    *v10 = 136315138;
    v12 = MEMORY[0x1A58EEBA0](v9, MEMORY[0x1E69E6158]);
    v14 = sub_1A31EE23C(v12, v13, &v26);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1A31E6000, v8, v7, "Fetching avatars for identifiers %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    v15 = v11;
    v1 = v25;
    MEMORY[0x1A58F1010](v15, -1, -1);
    MEMORY[0x1A58F1010](v10, -1, -1);
  }

  v16 = sub_1A34CD630();
  sub_1A34C9010();
  sub_1A34C9010();
  v17 = sub_1A34CA230();

  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    v20 = sub_1A3489E34();
    v22 = sub_1A31EE23C(v20, v21, &v26);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_1A31E6000, v17, v16, "Intent: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1A58F1010](v19, -1, -1);
    MEMORY[0x1A58F1010](v18, -1, -1);
  }

  (*(v0[17] + 16))(v0[18], v1 + v6, v0[16]);
  sub_1A34C9F00();
  swift_allocObject();
  sub_1A34C9E90();
  v0[22] = sub_1A34C9EE0();

  sub_1A34C9EA0();
  v23 = swift_task_alloc();
  v0[23] = v23;
  *v23 = v0;
  v23[1] = sub_1A339ABAC;

  return sub_1A339BE4C();
}

uint64_t sub_1A339ABAC(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[24] = a1;
  v5[25] = v2;

  if (v2)
  {
    v6 = sub_1A339B5C0;
  }

  else
  {
    v5[26] = a2;
    v6 = sub_1A339ACD4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1A339ACD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9688);
  *(v0 + 216) = v1;
  *(v0 + 224) = *(v1 - 8);
  v2 = swift_task_alloc();
  *(v0 + 232) = v2;
  v11 = *(v0 + 152);
  ObjectType = swift_getObjectType();
  *(v0 + 16) = v11;
  v4 = sub_1A34C9CE0();
  *(v0 + 240) = v4;
  *(v0 + 248) = *(v4 - 8);
  v5 = swift_task_alloc();
  *(v0 + 256) = v5;
  sub_1A33A0FB8();
  sub_1A33A100C();
  sub_1A339B944();
  sub_1A34C9BA0();
  swift_allocObject();
  v6 = sub_1A34C9B90();
  *(v0 + 264) = v6;
  v7 = swift_task_alloc();
  *(v0 + 272) = v7;
  *v7 = v0;
  v7[1] = sub_1A339AF04;
  v8 = *(v0 + 208);
  v9 = MEMORY[0x1E698ADD0];

  return MEMORY[0x1EEDEBDD8](v2, v0 + 16, v5, v6, v9, ObjectType, &type metadata for FetchContactAvatarIntentRepresentation, v8);
}

uint64_t sub_1A339AF04()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  (*(v2[31] + 8))(v2[32], v2[30]);

  if (v0)
  {
    v3 = sub_1A339B770;
  }

  else
  {

    v3 = sub_1A339B06C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A339B06C()
{
  sub_1A34C9E80();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C96A0);
  v2 = *(v1 - 8);
  v3 = swift_task_alloc();
  sub_1A34C9CA0();
  sub_1A34C9D60();
  (*(v2 + 8))(v3, v1);
  if (!v0[6])
  {

    v21 = sub_1A34CD620();
    v22 = sub_1A34CA230();
    if (os_log_type_enabled(v22, v21))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1A31E6000, v22, v21, "No values were returned from the intent execution", v23, 2u);
      MEMORY[0x1A58F1010](v23, -1, -1);
    }

    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  sub_1A34C9010();
  sub_1A34C9D90();

  v4 = v0[7];
  if (!v4)
  {
    v24 = sub_1A34CD620();
    v25 = sub_1A34CA230();
    if (os_log_type_enabled(v25, v24))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1A31E6000, v25, v24, "No avatars were returned from the intent execution", v26, 2u);
      MEMORY[0x1A58F1010](v26, -1, -1);
    }

    swift_unknownObjectRelease();
LABEL_26:

    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_32;
  }

  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A34CD9B0())
  {
    v7 = 0;
    v31 = v4 & 0xC000000000000001;
    v29 = v0[13];
    v8 = MEMORY[0x1E69E7CC0];
    v30 = i;
    while (v31)
    {
      MEMORY[0x1A58EF310](v7, v4);
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_27;
      }

LABEL_11:
      v11 = v4;
      v12 = v5;
      v14 = v0[11];
      v13 = v0[12];
      sub_1A339BAC4(v14);

      if ((*(v29 + 48))(v14, 1, v13) == 1)
      {
        sub_1A3288FDC(v0[11], &qword_1EB0C9660);
        v5 = v12;
        v4 = v11;
        v9 = v30;
      }

      else
      {
        v16 = v0[14];
        v15 = v0[15];
        sub_1A33A0E48(v0[11], v15);
        sub_1A33A0E48(v15, v16);
        v17 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1A3298E50(0, v8[2] + 1, 1, v8);
        }

        v5 = v12;
        v19 = v17[2];
        v18 = v17[3];
        v8 = v17;
        v4 = v11;
        if (v19 >= v18 >> 1)
        {
          v8 = sub_1A3298E50(v18 > 1, v19 + 1, 1, v17);
        }

        v9 = v30;
        v20 = v0[14];
        v8[2] = v19 + 1;
        sub_1A33A0E48(v20, v8 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v19);
      }

      ++v7;
      if (v10 == v9)
      {
        goto LABEL_31;
      }
    }

    if (v7 >= *(v5 + 16))
    {
      goto LABEL_28;
    }

    sub_1A34C9010();
    v10 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_11;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_31:

  swift_unknownObjectRelease();
LABEL_32:
  (*(v0[28] + 8))(v0[29], v0[27]);

  v27 = v0[1];

  return v27(v8);
}

uint64_t sub_1A339B5C0()
{

  v1 = *(v0 + 200);
  v2 = sub_1A34CD640();
  v3 = v1;
  v4 = sub_1A34CA230();

  if (os_log_type_enabled(v4, v2))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1A31E6000, v4, v2, "Error fetching avatars: %@", v5, 0xCu);
    sub_1A3288FDC(v6, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v6, -1, -1);
    MEMORY[0x1A58F1010](v5, -1, -1);
  }

  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1A339B770()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 280);
  v2 = sub_1A34CD640();
  v3 = v1;
  v4 = sub_1A34CA230();

  if (os_log_type_enabled(v4, v2))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1A31E6000, v4, v2, "Error fetching avatars: %@", v5, 0xCu);
    sub_1A3288FDC(v6, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v6, -1, -1);
    MEMORY[0x1A58F1010](v5, -1, -1);
  }

  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1A339B944()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C75C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1A34CA200();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C96A8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_1A34C9E10();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1A34C9CD0();
  return sub_1A34C9CC0();
}

uint64_t sub_1A339BAC4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9660);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for ContactLikeness(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A34C9010();
  sub_1A3489F5C(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1A3288FDC(v5, &qword_1EB0C9660);
    v10 = sub_1A34CD640();
    sub_1A34C9010();
    v11 = sub_1A34CA230();

    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v30 = a1;
      v13 = v12;
      v14 = swift_slowAlloc();
      v31 = v14;
      *v13 = 136315138;
      v15 = sub_1A348A61C();
      v17 = sub_1A31EE23C(v15, v16, &v31);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1A31E6000, v11, v10, "Avatar could not be converted: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1A58F1010](v14, -1, -1);
      v18 = v13;
      a1 = v30;
      MEMORY[0x1A58F1010](v18, -1, -1);
    }

    v19 = 1;
  }

  else
  {
    v30 = a1;
    sub_1A33A0E48(v5, v9);
    v20 = sub_1A34CD630();
    sub_1A34C9010();
    v21 = sub_1A34CA230();

    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      v29 = v1;
      v23 = v22;
      v24 = swift_slowAlloc();
      v31 = v24;
      *v23 = 136315138;
      v25 = sub_1A348A61C();
      v27 = sub_1A31EE23C(v25, v26, &v31);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_1A31E6000, v21, v20, "Found avatar: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1A58F1010](v24, -1, -1);
      MEMORY[0x1A58F1010](v23, -1, -1);
    }

    a1 = v30;
    sub_1A33A0E48(v9, v30);
    v19 = 0;
  }

  return (*(v7 + 56))(a1, v19, 1, v6);
}

uint64_t sub_1A339BE6C()
{
  v1 = [objc_opt_self() defaultEnvironment];
  v2 = sub_1A33A0EAC();
  v3 = MEMORY[0x1E698AE70];
  v0[5] = v2;
  v0[6] = v3;
  v0[2] = v1;
  v4 = sub_1A34C9D40();
  v5 = *(v4 - 8);
  v6 = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9670);
  swift_task_alloc();
  sub_1A34C9D00();
  v7 = *(sub_1A34C9D10() - 8);
  swift_task_alloc();
  (*(v7 + 104))();
  sub_1A34C9D30();

  v8 = sub_1A34C9D20();
  v10 = v9;
  (*(v5 + 8))(v6, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  v11 = v0[1];

  return v11(v8, v10);
}

uint64_t sub_1A339C0D0()
{
  v1 = OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore10IntentImpl_logger;
  v2 = sub_1A34CA250();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A339C180(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A339C228;

  return sub_1A339A68C(a2, a1);
}

uint64_t sub_1A339C228(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 24) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A339C364, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1A339C364()
{
  v1 = *(v0 + 8);
  v2 = MEMORY[0x1E69E7CC0];

  return v1(v2);
}

uint64_t ContactLikenessStore.InMemoryCache.init(capacity:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore13InMemoryCache_logger;
  if (qword_1EB0C4B60 != -1)
  {
    swift_once();
  }

  v4 = sub_1A34CA250();
  v5 = __swift_project_value_buffer(v4, qword_1EB0EE038);
  (*(*(v4 - 8) + 16))(v1 + v3, v5, v4);
  v6 = OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore13InMemoryCache_evictionQueue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C95F0);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  v8 = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + v6) = v7;
  *(v1 + OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore13InMemoryCache_capacity) = a1;
  v9 = sub_1A33EA5F0(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9600);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = v9;
  *(v1 + OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore13InMemoryCache_storage) = v10;
  return v1;
}

void *sub_1A339C504(uint64_t a1, char *a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9660);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v17 = type metadata accessor for ContactLikeness(0);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v10 = (a1 + 40);
  v11 = MEMORY[0x1E69E7CC0];
  do
  {
    v12 = *(v10 - 1);
    v13 = *v10;

    sub_1A339C73C(v12, v13, v18, v5);

    if ((*(v6 + 48))(v5, 1, v17) == 1)
    {
      sub_1A3288FDC(v5, &qword_1EB0C9660);
    }

    else
    {
      sub_1A33A0E48(v5, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1A3298E50(0, v11[2] + 1, 1, v11);
      }

      v15 = v11[2];
      v14 = v11[3];
      if (v15 >= v14 >> 1)
      {
        v11 = sub_1A3298E50(v14 > 1, v15 + 1, 1, v11);
      }

      v11[2] = v15 + 1;
      sub_1A33A0E48(v8, v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
    }

    v10 += 2;
    --v9;
  }

  while (v9);
  return v11;
}

uint64_t sub_1A339C73C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = sub_1A34CD630();

  v11 = sub_1A34CA230();

  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_1A31EE23C(a1, a2, &v20);
    *(v12 + 12) = 2080;
    v14 = MEMORY[0x1A58EEBA0](a3, &type metadata for ContactLikeness.Kind);
    v16 = sub_1A31EE23C(v14, v15, &v20);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_1A31E6000, v11, v10, "Checking cache for %s (%s)", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58F1010](v13, -1, -1);
    MEMORY[0x1A58F1010](v12, -1, -1);
  }

  v20 = a3;

  v17 = sub_1A339F914(&v20);
  v18 = *(v5 + OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore13InMemoryCache_storage);
  MEMORY[0x1EEE9AC00](v17);
  sub_1A34C9010();
  os_unfair_lock_lock((v18 + 24));
  sub_1A33A02BC((v18 + 16), a4);
  os_unfair_lock_unlock((v18 + 24));
}

uint64_t sub_1A339C970@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v65 = a6;
  v66 = a5;
  v68 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C96B0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v60 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v60 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v64 = &v60 - v20;

  v63 = a3;
  v21 = sub_1A33A073C(a2, a3, a4, a1);
  v67 = a4;

  v23 = *(v21 + 16);
  if (v23)
  {
    v24 = 0;
    while (1)
    {
      if (v24 >= *(v21 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1A33A1064(v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v24, v18);
      v25 = *(v11 + 48);
      v26 = type metadata accessor for ContactLikeness(0);
      if ((*(*(v26 - 8) + 48))(&v18[v25], 1, v26) != 1)
      {
        break;
      }

      ++v24;
      result = sub_1A3288FDC(v18, &unk_1EB0C96B0);
      if (v23 == v24)
      {
        goto LABEL_6;
      }
    }

    v40 = v64;
    sub_1A329D98C(v18, v64, &unk_1EB0C96B0);
    v41 = v61;
    sub_1A33A1064(v40, v61);
    v42 = v67;

    sub_1A34C9010();
    v43 = sub_1A34CA230();
    v44 = sub_1A34CD660();

    if (os_log_type_enabled(v43, v44))
    {
      LODWORD(v65) = v44;
      v45 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v69 = v60;
      *v45 = 136315650;
      v46 = sub_1A34CD030();
      v48 = sub_1A31EE23C(v46, v47, &v69);

      *(v45 + 4) = v48;
      *(v45 + 12) = 2080;
      v49 = v62;
      sub_1A33A1064(v41, v62);
      v50 = *v49;
      sub_1A3288FDC(&v49[*(v11 + 48)], &qword_1EB0C9660);
      v51 = 0xEB00000000657474;
      v52 = 0x65756F686C69732ELL;
      v53 = 0xEC0000006567616DLL;
      v54 = 0x497261746176612ELL;
      v55 = 0x6570696365722ELL;
      if (v50 != 3)
      {
        v55 = 0x726574736F702ELL;
      }

      if (v50 != 2)
      {
        v54 = v55;
        v53 = 0xE700000000000000;
      }

      if (v50)
      {
        v52 = 0x6172676F6E6F6D2ELL;
        v51 = 0xE90000000000006DLL;
      }

      if (v50 <= 1)
      {
        v56 = v52;
      }

      else
      {
        v56 = v54;
      }

      if (v50 <= 1)
      {
        v57 = v51;
      }

      else
      {
        v57 = v53;
      }

      sub_1A3288FDC(v41, &unk_1EB0C96B0);
      v58 = sub_1A31EE23C(v56, v57, &v69);

      *(v45 + 14) = v58;
      *(v45 + 22) = 2080;
      *(v45 + 24) = sub_1A31EE23C(v63, v42, &v69);
      _os_log_impl(&dword_1A31E6000, v43, v65, "%s Found cached %s for %s", v45, 0x20u);
      v59 = v60;
      swift_arrayDestroy();
      MEMORY[0x1A58F1010](v59, -1, -1);
      MEMORY[0x1A58F1010](v45, -1, -1);
    }

    else
    {

      sub_1A3288FDC(v41, &unk_1EB0C96B0);
      v49 = v62;
    }

    sub_1A329D98C(v64, v49, &unk_1EB0C96B0);
    return sub_1A329D98C(&v49[*(v11 + 48)], v68, &qword_1EB0C9660);
  }

  else
  {
LABEL_6:

    v27 = v67;

    sub_1A34C9010();
    v28 = v65;

    v29 = sub_1A34CA230();
    v30 = sub_1A34CD660();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v69 = v32;
      *v31 = 136315650;
      v33 = sub_1A34CD030();
      v35 = sub_1A31EE23C(v33, v34, &v69);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_1A31EE23C(v63, v27, &v69);
      *(v31 + 22) = 2080;
      v36 = MEMORY[0x1A58EEBA0](v28, &type metadata for ContactLikeness.Kind);
      v38 = sub_1A31EE23C(v36, v37, &v69);

      *(v31 + 24) = v38;
      _os_log_impl(&dword_1A31E6000, v29, v30, "%s Couldn't find cached likeness for %s (%s", v31, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1A58F1010](v32, -1, -1);
      MEMORY[0x1A58F1010](v31, -1, -1);
    }

    v39 = type metadata accessor for ContactLikeness(0);
    return (*(*(v39 - 8) + 56))(v68, 1, 1, v39);
  }
}

uint64_t sub_1A339D03C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContactLikeness(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v35 - v8);
  sub_1A33A067C(a1, &v35 - v8);
  sub_1A33A067C(a1, v6);
  sub_1A34C9010();
  v10 = sub_1A34CA230();
  v11 = sub_1A34CD660();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37[0] = v36;
    *v12 = 136315650;
    v13 = sub_1A34CD030();
    v15 = sub_1A31EE23C(v13, v14, v37);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = *v9;
    v17 = v9[1];

    sub_1A33A06E0(v9);
    v18 = sub_1A31EE23C(v16, v17, v37);

    *(v12 + 14) = v18;
    *(v12 + 22) = 2080;
    v19 = v6[*(v4 + 28)];
    v20 = 0xEB00000000657474;
    v21 = 0x65756F686C69732ELL;
    v22 = 0xEC0000006567616DLL;
    v23 = 0x497261746176612ELL;
    v24 = 0x6570696365722ELL;
    if (v19 != 3)
    {
      v24 = 0x726574736F702ELL;
    }

    if (v19 != 2)
    {
      v23 = v24;
      v22 = 0xE700000000000000;
    }

    if (v6[*(v4 + 28)])
    {
      v21 = 0x6172676F6E6F6D2ELL;
      v20 = 0xE90000000000006DLL;
    }

    if (v6[*(v4 + 28)] <= 1u)
    {
      v25 = v21;
    }

    else
    {
      v25 = v23;
    }

    if (v6[*(v4 + 28)] <= 1u)
    {
      v26 = v20;
    }

    else
    {
      v26 = v22;
    }

    sub_1A33A06E0(v6);
    v27 = sub_1A31EE23C(v25, v26, v37);

    *(v12 + 24) = v27;
    _os_log_impl(&dword_1A31E6000, v10, v11, "%s Caching likeness for %s (%s)", v12, 0x20u);
    v28 = v36;
    swift_arrayDestroy();
    MEMORY[0x1A58F1010](v28, -1, -1);
    MEMORY[0x1A58F1010](v12, -1, -1);
  }

  else
  {

    sub_1A33A06E0(v6);
    v29 = sub_1A33A06E0(v9);
  }

  v30 = *(a1 + 8);
  v31 = *(v2 + OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore13InMemoryCache_evictionQueue);
  MEMORY[0x1EEE9AC00](v29);
  *(&v35 - 48) = v32;
  *(&v35 - 5) = v33;
  *(&v35 - 4) = v30;
  *(&v35 - 3) = v2;
  *(&v35 - 2) = a1;

  sub_1A34C9010();
  os_unfair_lock_lock((v31 + 24));
  sub_1A33A0DFC((v31 + 16));
  os_unfair_lock_unlock((v31 + 24));
}

void sub_1A339D3B8(uint64_t *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v41 = sub_1A339D908(a2, a3, a4, *a1);
  v12 = v11;
  v13 = sub_1A34CD630();

  v42 = a5;
  v14 = sub_1A34CA230();

  v15 = os_log_type_enabled(v14, v13);
  if (v12)
  {
    if (v15)
    {
      v16 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v46 = v39;
      *v16 = 136315138;
      v44 = 40;
      v45 = 0xE100000000000000;

      MEMORY[0x1A58EEA30](a3, a4);
      MEMORY[0x1A58EEA30](0x209480E220, 0xA500000000000000);
      v17 = 0xEB00000000657474;
      v18 = 0x497261746176612ELL;
      v19 = 0xEC0000006567616DLL;
      v20 = 0x6570696365722ELL;
      if (a2 != 3)
      {
        v20 = 0x726574736F702ELL;
      }

      if (a2 != 2)
      {
        v18 = v20;
        v19 = 0xE700000000000000;
      }

      v21 = 0x6172676F6E6F6D2ELL;
      if (a2)
      {
        v17 = 0xE90000000000006DLL;
      }

      else
      {
        v21 = 0x65756F686C69732ELL;
      }

      if (a2 <= 1u)
      {
        v22 = v21;
      }

      else
      {
        v22 = v18;
      }

      if (a2 <= 1u)
      {
        v23 = v17;
      }

      else
      {
        v23 = v19;
      }

      MEMORY[0x1A58EEA30](v22, v23);

      MEMORY[0x1A58EEA30](41, 0xE100000000000000);

      v24 = sub_1A31EE23C(v44, v45, &v46);

      *(v16 + 4) = v24;
      _os_log_impl(&dword_1A31E6000, v14, v13, "Queueing key %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x1A58F1010](v39, -1, -1);
      MEMORY[0x1A58F1010](v16, -1, -1);
    }
  }

  else
  {
    if (v15)
    {
      v25 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v46 = v40;
      *v25 = 136315138;
      v44 = 40;
      v45 = 0xE100000000000000;

      MEMORY[0x1A58EEA30](a3, a4);
      MEMORY[0x1A58EEA30](0x209480E220, 0xA500000000000000);
      v26 = 0xEB00000000657474;
      v27 = 0x497261746176612ELL;
      v28 = 0xEC0000006567616DLL;
      v29 = 0x6570696365722ELL;
      if (a2 != 3)
      {
        v29 = 0x726574736F702ELL;
      }

      if (a2 != 2)
      {
        v27 = v29;
        v28 = 0xE700000000000000;
      }

      v30 = 0x6172676F6E6F6D2ELL;
      if (a2)
      {
        v26 = 0xE90000000000006DLL;
      }

      else
      {
        v30 = 0x65756F686C69732ELL;
      }

      if (a2 <= 1u)
      {
        v31 = v30;
      }

      else
      {
        v31 = v27;
      }

      if (a2 <= 1u)
      {
        v32 = v26;
      }

      else
      {
        v32 = v28;
      }

      MEMORY[0x1A58EEA30](v31, v32);

      MEMORY[0x1A58EEA30](41, 0xE100000000000000);

      v33 = sub_1A31EE23C(v44, v45, &v46);

      *(v25 + 4) = v33;
      _os_log_impl(&dword_1A31E6000, v14, v13, "Refreshing key %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x1A58F1010](v40, -1, -1);
      MEMORY[0x1A58F1010](v25, -1, -1);
    }

    sub_1A339DE6C(v41, &v44);

    v10 = *a1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = sub_1A3298F7C(0, *(v10 + 16) + 1, 1, v10);
    v10 = isUniquelyReferenced_nonNull_native;
  }

  v36 = *(v10 + 16);
  v35 = *(v10 + 24);
  if (v36 >= v35 >> 1)
  {
    isUniquelyReferenced_nonNull_native = sub_1A3298F7C((v35 > 1), v36 + 1, 1, v10);
    v10 = isUniquelyReferenced_nonNull_native;
  }

  *(v10 + 16) = v36 + 1;
  v37 = v10 + 24 * v36;
  *(v37 + 32) = a2;
  *(v37 + 40) = a3;
  *(v37 + 48) = a4;
  *a1 = v10;
  v38 = *(v42 + OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore13InMemoryCache_storage);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  sub_1A34C9010();
  os_unfair_lock_lock(v38 + 6);
  sub_1A33A0E20(&v38[4]);
  os_unfair_lock_unlock(v38 + 6);
  if (v43)
  {
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1A339D908(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = a1;
  for (i = (a4 + 48); ; i += 3)
  {
    if (*(i - 16) == v8)
    {
      v10 = *(i - 1) == a2 && *i == a3;
      if (v10 || (sub_1A34CDE30() & 1) != 0)
      {
        break;
      }
    }

    if (v4 == ++v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1A339D9A8(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = a2;
    v6 = 0;
    v7 = a3 + 32;
    v9 = a2 == 4 && a1 == 0;
    v32 = a3 + 32;
    v33 = *(a3 + 16);
    v31 = v9;
    while (1)
    {
      v11 = v7 + 16 * v6;
      v12 = *v11;
      v13 = *(v11 + 8);
      if (v13 > 1)
      {
        break;
      }

      if (*(v11 + 8))
      {
        v18 = *v11;
        v19 = 1;
        if (v4 != 1)
        {
          goto LABEL_42;
        }

        sub_1A31EE004(v12, 1u);
        sub_1A31EE004(v12, 1u);
        sub_1A31EE004(a1, 1u);
        v23 = sub_1A34CC460();
        sub_1A31ECC9C(v12, 1u);
        sub_1A31ECC9C(v12, 1u);
        sub_1A31ECC9C(a1, 1u);
        if (v23)
        {
          return v6;
        }
      }

      else
      {
        v18 = *v11;
        if (v4)
        {
          v19 = 0;
LABEL_42:
          sub_1A31EE004(v18, v19);
LABEL_10:
          sub_1A31EE004(a1, v4);
          v10 = v4;
          goto LABEL_11;
        }

        sub_1A31EE004(v18, 0);
        sub_1A31EE004(v12, 0);
        sub_1A31EE004(a1, 0);
        v24 = sub_1A34CC460();
        sub_1A31ECC9C(v12, 0);
        sub_1A31ECC9C(v12, 0);
        sub_1A31ECC9C(a1, 0);
        if (v24)
        {
          return v6;
        }
      }

LABEL_12:
      if (++v6 == v3)
      {
        return 0;
      }
    }

    if (v13 == 2)
    {
      if (v4 != 2)
      {
        sub_1A31EE004(v12, 2u);
        goto LABEL_10;
      }

      v20 = *(v12 + 16);
      if (v20 == *(a1 + 16))
      {
        if (!v20)
        {
          sub_1A31EE004(v12, 2u);
          sub_1A31EE004(a1, 2u);
LABEL_53:
          v27 = v12;
LABEL_54:
          sub_1A31ECC9C(v27, 2u);
          v28 = a1;
          v29 = 2;
LABEL_57:
          sub_1A31ECC9C(v28, v29);
          return v6;
        }

        if (v12 == a1)
        {
          sub_1A31EE004(a1, 2u);
          sub_1A31EE004(a1, 2u);
          v27 = a1;
          goto LABEL_54;
        }

        sub_1A31EE004(v12, 2u);
        sub_1A31EE004(v12, 2u);
        result = sub_1A31EE004(a1, 2u);
        v21 = 0;
        while (1)
        {
          if (v21 >= *(v12 + 16))
          {
            __break(1u);
            goto LABEL_65;
          }

          if (v20 == v21)
          {
            goto LABEL_66;
          }

          sub_1A34C9010();
          sub_1A34C9010();
          v22 = sub_1A34CC460();

          if ((v22 & 1) == 0)
          {
            break;
          }

          if (v20 == ++v21)
          {
            sub_1A31ECC9C(v12, 2u);
            goto LABEL_53;
          }
        }

        v10 = 2;
        v25 = v12;
        v26 = 2;
LABEL_51:
        sub_1A31ECC9C(v25, v26);
        v4 = a2;
        v7 = v32;
        v3 = v33;
        v9 = v31;
      }

      else
      {
        v10 = 2;
        sub_1A31EE004(v12, 2u);
        sub_1A31EE004(a1, 2u);
      }
    }

    else
    {
      if (v13 != 3)
      {
        if (v9)
        {
          sub_1A31ECC9C(*v11, 4u);
          v28 = 0;
          v29 = 4;
          goto LABEL_57;
        }

        goto LABEL_10;
      }

      if (v4 != 3)
      {
        sub_1A31EE004(v12, 3u);
        goto LABEL_10;
      }

      v14 = *(v12 + 16);
      if (v14 == *(a1 + 16))
      {
        if (v14)
        {
          if (v12 != a1)
          {
            sub_1A31EE004(v12, 3u);
            sub_1A31EE004(v12, 3u);
            result = sub_1A31EE004(a1, 3u);
            v16 = 0;
            while (v16 < *(v12 + 16))
            {
              if (v14 == v16)
              {
                goto LABEL_67;
              }

              sub_1A34C9010();
              sub_1A34C9010();
              v17 = sub_1A34CC460();

              if ((v17 & 1) == 0)
              {
                v10 = 3;
                v25 = v12;
                v26 = 3;
                goto LABEL_51;
              }

              if (v14 == ++v16)
              {
                sub_1A31ECC9C(v12, 3u);
                goto LABEL_55;
              }
            }

LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
            return result;
          }

          sub_1A31EE004(a1, 3u);
          sub_1A31EE004(a1, 3u);
          v30 = a1;
        }

        else
        {
          sub_1A31EE004(v12, 3u);
          sub_1A31EE004(a1, 3u);
LABEL_55:
          v30 = v12;
        }

        sub_1A31ECC9C(v30, 3u);
        v28 = a1;
        v29 = 3;
        goto LABEL_57;
      }

      v10 = 3;
      sub_1A31EE004(v12, 3u);
      sub_1A31EE004(a1, 3u);
    }

LABEL_11:
    sub_1A31ECC9C(v12, v13);
    sub_1A31ECC9C(a1, v10);
    goto LABEL_12;
  }

  return 0;
}

uint64_t sub_1A339DE6C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A342605C(v5);
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
    v9 = v5 + 24 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    result = memmove(v9, (v9 + 24), 24 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1A339DF08(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v55 = a7;
  v57 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9660);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v56 = &v49 - v15;
  v16 = *(*a1 + 16);
  v17 = *(a2 + OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore13InMemoryCache_capacity);
  if (v17 >= v16)
  {
    goto LABEL_12;
  }

  swift_retain_n();
  v18 = sub_1A34CA230();
  v52 = sub_1A34CD660();
  v53 = v18;
  if (os_log_type_enabled(v18, v52))
  {
    v19 = swift_slowAlloc();
    v54 = a5;
    v20 = v19;
    v50 = swift_slowAlloc();
    v58 = v50;
    *v20 = 136315650;
    v21 = sub_1A34CD030();
    v51 = a6;
    v23 = sub_1A31EE23C(v21, v22, &v58);
    a6 = v51;

    *(v20 + 4) = v23;
    *(v20 + 12) = 2048;
    *(v20 + 14) = v16;
    *(v20 + 22) = 2048;

    *(v20 + 24) = v17;

    v24 = v53;
    _os_log_impl(&dword_1A31E6000, v53, v52, "%s Cache is over capacity (%ld/%ld)", v20, 0x20u);
    v25 = v50;
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x1A58F1010](v25, -1, -1);
    v26 = v20;
    a5 = v54;
    MEMORY[0x1A58F1010](v26, -1, -1);
  }

  else
  {
  }

  v27 = *a3;
  v28 = *(*a3 + 16);
  if (v28 < v17)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v17 < 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:

    __break(1u);
    return result;
  }

  sub_1A34C9010();

  v29 = v28 - v17;
  if (v28 != v17)
  {
    v30 = (v27 + 24 * v17 + 48);
    do
    {
      v32 = *(v30 - 1);
      v31 = *v30;
      LOBYTE(v58) = *(v30 - 16);
      v59 = v32;
      v60 = v31;

      sub_1A339E428(&v58, a2, a1, a3);
      if (v8)
      {
        goto LABEL_30;
      }

      v8 = 0;

      v30 += 3;
    }

    while (--v29);
  }

LABEL_12:
  v33 = sub_1A34CD620();

  v34 = sub_1A34CA230();

  if (os_log_type_enabled(v34, v33))
  {
    v35 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v61 = v53;
    *v35 = 136315138;
    v58 = 40;
    v59 = 0xE100000000000000;

    v54 = a5;
    MEMORY[0x1A58EEA30](a5, a6);
    MEMORY[0x1A58EEA30](0x209480E220, 0xA500000000000000);
    v36 = 0xEB00000000657474;
    v37 = 0x65756F686C69732ELL;
    v38 = 0xEC0000006567616DLL;
    v39 = 0x497261746176612ELL;
    v40 = 0x6570696365722ELL;
    if (v57 != 3)
    {
      v40 = 0x726574736F702ELL;
    }

    if (v57 != 2)
    {
      v39 = v40;
      v38 = 0xE700000000000000;
    }

    if (v57)
    {
      v37 = 0x6172676F6E6F6D2ELL;
      v36 = 0xE90000000000006DLL;
    }

    if (v57 <= 1u)
    {
      v41 = v37;
    }

    else
    {
      v41 = v39;
    }

    v42 = a6;
    if (v57 <= 1u)
    {
      v43 = v36;
    }

    else
    {
      v43 = v38;
    }

    MEMORY[0x1A58EEA30](v41, v43);

    MEMORY[0x1A58EEA30](41, 0xE100000000000000);

    v44 = sub_1A31EE23C(v58, v59, &v61);

    *(v35 + 4) = v44;
    _os_log_impl(&dword_1A31E6000, v34, v33, "Caching likeness for %s", v35, 0xCu);
    v45 = v53;
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x1A58F1010](v45, -1, -1);
    MEMORY[0x1A58F1010](v35, -1, -1);

    a6 = v42;
    a5 = v54;
  }

  else
  {
  }

  v46 = v56;
  sub_1A33A067C(v55, v56);
  v47 = type metadata accessor for ContactLikeness(0);
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47);

  return sub_1A3490FF0(v46, v57, a5, a6);
}

unint64_t sub_1A339E428(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v32 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9660);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - v7;
  v9 = *a1;
  v11 = *(a1 + 1);
  v10 = *(a1 + 2);
  sub_1A34C9010();

  v12 = sub_1A34CA230();
  v13 = sub_1A34CD660();

  if (os_log_type_enabled(v12, v13))
  {
    v31 = a4;
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v35 = v30;
    *v14 = 136315394;
    v15 = sub_1A34CD030();
    v17 = sub_1A31EE23C(v15, v16, &v35);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v33 = 40;
    v34 = 0xE100000000000000;

    MEMORY[0x1A58EEA30](v11, v10);
    MEMORY[0x1A58EEA30](0x209480E220, 0xA500000000000000);
    v18 = 0xEB00000000657474;
    v19 = 0x65756F686C69732ELL;
    v20 = 0xEC0000006567616DLL;
    v21 = 0x497261746176612ELL;
    v22 = 0x6570696365722ELL;
    if (v9 != 3)
    {
      v22 = 0x726574736F702ELL;
    }

    if (v9 != 2)
    {
      v21 = v22;
      v20 = 0xE700000000000000;
    }

    if (v9)
    {
      v19 = 0x6172676F6E6F6D2ELL;
      v18 = 0xE90000000000006DLL;
    }

    if (v9 <= 1)
    {
      v23 = v19;
    }

    else
    {
      v23 = v21;
    }

    if (v9 <= 1)
    {
      v24 = v18;
    }

    else
    {
      v24 = v20;
    }

    MEMORY[0x1A58EEA30](v23, v24);

    MEMORY[0x1A58EEA30](41, 0xE100000000000000);

    v25 = sub_1A31EE23C(v33, v34, &v35);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1A31E6000, v12, v13, "%s Removing cache entry for %s", v14, 0x16u);
    v26 = v30;
    swift_arrayDestroy();
    MEMORY[0x1A58F1010](v26, -1, -1);
    MEMORY[0x1A58F1010](v14, -1, -1);

    a4 = v31;
  }

  else
  {
  }

  sub_1A34916E8(v9, v11, v10, v8);
  sub_1A3288FDC(v8, &qword_1EB0C9660);

  v27 = sub_1A33A0AA4(a4, v9, v11, v10);

  v29 = *(*a4 + 16);
  if (v29 >= v27)
  {
    return sub_1A33A0D3C(v27, v29);
  }

  __break(1u);
  return result;
}

uint64_t ContactLikenessStore.InMemoryCache.deinit()
{
  v1 = OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore13InMemoryCache_logger;
  v2 = sub_1A34CA250();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ContactLikenessStore.InMemoryCache.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore13InMemoryCache_logger;
  v2 = sub_1A34CA250();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A339E8D0()
{
  v1 = *v0;
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](v1);
  sub_1A34CD1C0();
  return sub_1A34CDF70();
}

uint64_t sub_1A339E934()
{
  MEMORY[0x1A58EF750](*v0);

  return sub_1A34CD1C0();
}

uint64_t sub_1A339E988()
{
  v1 = *v0;
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](v1);
  sub_1A34CD1C0();
  return sub_1A34CDF70();
}

uint64_t sub_1A339E9E8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_1A34CDE30();
  }
}

uint64_t sub_1A339EA30()
{
  v1 = *v0;
  MEMORY[0x1A58EEA30](*(v0 + 1), *(v0 + 2));
  MEMORY[0x1A58EEA30](0x209480E220, 0xA500000000000000);
  v2 = 0xEB00000000657474;
  v3 = 0x65756F686C69732ELL;
  v4 = 0xEC0000006567616DLL;
  v5 = 0x497261746176612ELL;
  v6 = 0x6570696365722ELL;
  if (v1 != 3)
  {
    v6 = 0x726574736F702ELL;
  }

  if (v1 != 2)
  {
    v5 = v6;
    v4 = 0xE700000000000000;
  }

  if (v1)
  {
    v3 = 0x6172676F6E6F6D2ELL;
    v2 = 0xE90000000000006DLL;
  }

  if (v1 <= 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v1 <= 1)
  {
    v8 = v2;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x1A58EEA30](v7, v8);

  MEMORY[0x1A58EEA30](41, 0xE100000000000000);
  return 40;
}

uint64_t sub_1A339EB5C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for ContactLikeness(0);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A339EC2C, 0, 0);
}

void sub_1A339EC2C()
{
  v69 = v0;
  v1 = v0[3];
  v2 = v0[2];
  v0[9] = *(v0[4] + OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore17InMemoryCacheImpl_cache);
  v3 = sub_1A339C504(v1, v2);
  v0[10] = v3;
  v4 = v3[2];
  v5 = MEMORY[0x1E69E7CC0];
  v63 = v3;
  if (v4)
  {
    v6 = v3;
    v7 = v0[8];
    v8 = v0[6];
    v68[0] = MEMORY[0x1E69E7CC0];
    sub_1A32EBB94(0, v4, 0);
    v5 = v68[0];
    v9 = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    do
    {
      v11 = v0[8];
      sub_1A33A067C(v9, v11);
      v12 = *v11;
      v13 = *(v7 + 8);

      sub_1A33A06E0(v11);
      v68[0] = v5;
      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1A32EBB94((v14 > 1), v15 + 1, 1);
        v5 = v68[0];
      }

      *(v5 + 16) = v15 + 1;
      v16 = v5 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      v9 += v10;
      --v4;
    }

    while (v4);
  }

  v17 = sub_1A33BE394(v5);

  v0[11] = OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore17InMemoryCacheImpl_logger;
  v18 = sub_1A34CD660();

  v19 = sub_1A34CA230();

  if (os_log_type_enabled(v19, v18))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v68[0] = v21;
    *v20 = 136315138;
    v22 = sub_1A34CD560();
    v24 = sub_1A31EE23C(v22, v23, v68);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_1A31E6000, v19, v18, "Cache hits: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x1A58F1010](v21, -1, -1);
    MEMORY[0x1A58F1010](v20, -1, -1);
  }

  v64 = v0;
  v25 = v0[3];
  v26 = *(v25 + 16);
  if (!v26)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v64[12] = v29;

    v44 = sub_1A34CD660();
    sub_1A34C9010();
    v45 = sub_1A34CA230();

    if (os_log_type_enabled(v45, v44))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v68[0] = v47;
      *v46 = 136315138;
      v48 = MEMORY[0x1A58EEBA0](v29, MEMORY[0x1E69E6158]);
      v50 = sub_1A31EE23C(v48, v49, v68);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_1A31E6000, v45, v44, "Cache misses: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x1A58F1010](v47, -1, -1);
      MEMORY[0x1A58F1010](v46, -1, -1);
    }

    if (*(v29 + 16))
    {
      v51 = sub_1A34CD630();
      v52 = sub_1A34CA230();
      if (os_log_type_enabled(v52, v51))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_1A31E6000, v52, v51, "Forwarding request for uncached results", v53, 2u);
        MEMORY[0x1A58F1010](v53, -1, -1);
      }

      v54 = v64[4];

      v55 = *(v54 + OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore17InMemoryCacheImpl_next + 24);
      v56 = *(v54 + OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore17InMemoryCacheImpl_next + 32);
      __swift_project_boxed_opaque_existential_1((v54 + OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore17InMemoryCacheImpl_next), v55);
      v66 = (*(v56 + 8) + **(v56 + 8));
      v57 = swift_task_alloc();
      v64[13] = v57;
      *v57 = v64;
      v57[1] = sub_1A339F358;
      v58 = v64[2];

      v66(v58, v29, v55, v56);
    }

    else
    {

      v59 = sub_1A34CD630();
      v60 = sub_1A34CA230();
      if (os_log_type_enabled(v60, v59))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_1A31E6000, v60, v59, "All results were found in the cache", v61, 2u);
        MEMORY[0x1A58F1010](v61, -1, -1);
      }

      v62 = v64[1];

      v62(v63);
    }

    return;
  }

  v27 = 0;
  v65 = v25 + 32;
  v28 = v17 + 56;
  v29 = MEMORY[0x1E69E7CC0];
  while (v27 < v26)
  {
    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_44;
    }

    v31 = (v65 + 16 * v27);
    v33 = *v31;
    v32 = v31[1];
    ++v27;
    if (!*(v17 + 16))
    {

      goto LABEL_22;
    }

    sub_1A34CDF20();

    sub_1A34CD1C0();
    v34 = sub_1A34CDF70();
    v35 = -1 << *(v17 + 32);
    v36 = v34 & ~v35;
    if ((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
    {
      v37 = ~v35;
      while (1)
      {
        v38 = (*(v17 + 48) + 16 * v36);
        v39 = *v38 == v33 && v38[1] == v32;
        if (v39 || (sub_1A34CDE30() & 1) != 0)
        {
          break;
        }

        v36 = (v36 + 1) & v37;
        if (((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if (v30 == v26)
      {
        goto LABEL_30;
      }
    }

    else
    {
LABEL_22:
      v67 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1A32EBB94(0, *(v29 + 16) + 1, 1);
      }

      v40 = v29;
      v41 = *(v29 + 16);
      v42 = *(v40 + 24);
      if (v41 >= v42 >> 1)
      {
        sub_1A32EBB94((v42 > 1), v41 + 1, 1);
        v40 = v67;
      }

      *(v40 + 16) = v41 + 1;
      v43 = v40 + 16 * v41;
      *(v43 + 32) = v33;
      *(v43 + 40) = v32;
      v29 = v40;
      if (v30 == v26)
      {
        goto LABEL_30;
      }
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_1A339F358(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A339F478, 0, 0);
}

uint64_t sub_1A339F478()
{
  v29 = v0;
  v1 = sub_1A34CD630();

  v2 = sub_1A34CA230();

  if (os_log_type_enabled(v2, v1))
  {
    v3 = v0[14];
    v4 = v0[5];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28 = v6;
    *v5 = 136315138;
    v7 = MEMORY[0x1A58EEBA0](v3, v4);
    v9 = sub_1A31EE23C(v7, v8, &v28);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1A31E6000, v2, v1, "Uncached results: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1A58F1010](v6, -1, -1);
    MEMORY[0x1A58F1010](v5, -1, -1);
  }

  v10 = v0[14];
  v11 = *(v10 + 16);
  sub_1A34C9010();
  if (v11)
  {
    v12 = v0[6];
    v13 = v10 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v14 = *(v12 + 72);
    do
    {
      v15 = v0[7];
      sub_1A33A067C(v13, v15);
      sub_1A339D03C(v15);
      sub_1A33A06E0(v15);
      v13 += v14;
      --v11;
    }

    while (v11);
    v10 = v0[14];
  }

  v16 = v0[10];

  v28 = v16;
  sub_1A33B95D0(v10);
  v17 = v28;
  v18 = sub_1A34CD630();

  v19 = sub_1A34CA230();

  if (os_log_type_enabled(v19, v18))
  {
    v20 = v0[5];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136315138;
    v23 = MEMORY[0x1A58EEBA0](v17, v20);
    v25 = sub_1A31EE23C(v23, v24, &v28);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_1A31E6000, v19, v18, "All likenesses: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1A58F1010](v22, -1, -1);
    MEMORY[0x1A58F1010](v21, -1, -1);
  }

  v26 = v0[1];

  return v26(v17);
}

uint64_t sub_1A339F750()
{
  v1 = OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore17InMemoryCacheImpl_logger;
  v2 = sub_1A34CA250();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtCC14ContactsUICore20ContactLikenessStore17InMemoryCacheImpl_next);

  return swift_deallocClassInstance();
}

uint64_t sub_1A339F80C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A335E180;

  return sub_1A339EB5C(a1, a2);
}

uint64_t sub_1A339F914(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A3485998(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1A34CDDE0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v14 >= v11)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1A34CD3A0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1A339FA4C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1A339FA4C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v85 = *v85;
    if (!v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1A33A0200(v9);
      v9 = result;
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_1A339FF88((*a3 + *v79), (*a3 + *v81), *a3 + v82, v85);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v12 < v11) ^ (v14 >= v15);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v12 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v12 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A3298E78(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_1A3298E78((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_1A339FF88((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), *a3 + v75, v34);
        if (v4)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1A33A0200(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        result = sub_1A33A0174(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v28 >= v25)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_1A339FF88(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v19 < v18)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (*v4 >= v11)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_1A33A0174(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A33A0200(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_1A33A0214(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1A33A02E4()
{
  result = qword_1EB0C9610;
  if (!qword_1EB0C9610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9610);
  }

  return result;
}

uint64_t sub_1A33A03CC()
{
  result = sub_1A34CA250();
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

uint64_t sub_1A33A0468()
{
  result = sub_1A34CA250();
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

uint64_t sub_1A33A056C()
{
  result = sub_1A34CA250();
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

unint64_t sub_1A33A0628()
{
  result = qword_1EB0C9658;
  if (!qword_1EB0C9658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9658);
  }

  return result;
}

uint64_t sub_1A33A067C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactLikeness(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A33A06E0(uint64_t a1)
{
  v2 = type metadata accessor for ContactLikeness(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A33A073C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v31 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C96B0);
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v29 = v4;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1A32EBD94(0, v11, 0);
    v12 = v35;
    v13 = (a1 + 32);
    v30 = a3;
    do
    {
      v15 = *v13;
      v14 = *v13;
      v34 = v13 + 1;
      v16 = *(v33 + 48);
      *v10 = v15;
      v17 = *a4;
      if (*(*a4 + 16) && (, v18 = sub_1A33DB69C(v14, v31, a3), v20 = v19, , (v20 & 1) != 0))
      {
        v21 = *(v17 + 56);
        v22 = type metadata accessor for ContactLikeness(0);
        v23 = a4;
        v24 = *(v22 - 8);
        sub_1A33A067C(v21 + *(v24 + 72) * v18, &v10[v16]);
        (*(v24 + 56))(&v10[v16], 0, 1, v22);
        a4 = v23;
        a3 = v30;
      }

      else
      {
        v25 = type metadata accessor for ContactLikeness(0);
        (*(*(v25 - 8) + 56))(&v10[v16], 1, 1, v25);
      }

      v35 = v12;
      v27 = *(v12 + 16);
      v26 = *(v12 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1A32EBD94(v26 > 1, v27 + 1, 1);
        v12 = v35;
      }

      *(v12 + 16) = v27 + 1;
      sub_1A329D98C(v10, v12 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v27, &unk_1EB0C96B0);
      --v11;
      v13 = v34;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_1A33A09EC(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = a2;
  for (i = (a1 + 48); ; i += 3)
  {
    if (*(i - 16) == v8)
    {
      v10 = *(i - 1) == a3 && *i == a4;
      if (v10 || (sub_1A34CDE30() & 1) != 0)
      {
        break;
      }
    }

    if (v4 == ++v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1A33A0AA4(uint64_t *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v8 = *a1;
  result = sub_1A33A09EC(*a1, a2, a3, a4);
  v11 = result;
  if (v4)
  {
    return v11;
  }

  if (v10)
  {
    return *(v8 + 16);
  }

  v12 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v13 = *(v8 + 16);
    if (v12 == v13)
    {
      return v11;
    }

    v14 = 24 * result;
    v24 = v6;
    v25 = v5;
    while (v12 < v13)
    {
      v16 = v8 + v14;
      if (*(v8 + v14 + 56) != a2 || ((result = *(v16 + 64), result == v6) ? (v17 = *(v16 + 72) == v5) : (v17 = 0), !v17 && (result = sub_1A34CDE30(), (result & 1) == 0)))
      {
        if (v12 != v11)
        {
          if (v11 >= v13)
          {
            goto LABEL_26;
          }

          v18 = v8 + 32 + 24 * v11;
          v27 = *v18;
          v19 = *(v18 + 16);
          v26 = *(v18 + 8);
          v20 = *(v16 + 56);
          v21 = *(v16 + 64);
          v22 = *(v16 + 72);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1A342605C(v8);
            v8 = result;
          }

          if (v11 >= *(v8 + 16))
          {
            goto LABEL_27;
          }

          v23 = v8 + 24 * v11;
          *(v23 + 32) = v20;
          *(v23 + 40) = v21;
          *(v23 + 48) = v22;

          if (v12 >= *(v8 + 16))
          {
            goto LABEL_28;
          }

          v15 = v8 + v14;
          *(v15 + 56) = v27;
          *(v15 + 64) = v26;
          *(v15 + 72) = v19;

          *a1 = v8;
          v6 = v24;
          v5 = v25;
        }

        ++v11;
      }

      ++v12;
      v13 = *(v8 + 16);
      v14 += 24;
      if (v12 == v13)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A33A0C64(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1A33A0D3C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1A3298F7C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1A33A0C64(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1A33A0E48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactLikeness(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A33A0EAC()
{
  result = qword_1EB0C9668;
  if (!qword_1EB0C9668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0C9668);
  }

  return result;
}

uint64_t sub_1A33A0EF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1A32EBD74(0, v2, 0);
    result = v9;
    v4 = (a1 + 32);
    v5 = *(v9 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v10 = result;
      v8 = *(result + 24);
      if (v5 >= v8 >> 1)
      {
        sub_1A32EBD74((v8 > 1), v5 + 1, 1);
        result = v10;
      }

      *(result + 16) = v5 + 1;
      *(result + v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

unint64_t sub_1A33A0FB8()
{
  result = qword_1EB0C9690;
  if (!qword_1EB0C9690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9690);
  }

  return result;
}

unint64_t sub_1A33A100C()
{
  result = qword_1EB0C9698;
  if (!qword_1EB0C9698)
  {
    type metadata accessor for ContactAvatarFetchResultEntityRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9698);
  }

  return result;
}

uint64_t sub_1A33A1064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C96B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A33A10D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1A328D790(a3, v22 - v9, &qword_1EB0C6110);
  v11 = sub_1A34CD4A0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);
  sub_1A34C9010();
  if (v13 == 1)
  {
    sub_1A3288FDC(v10, &qword_1EB0C6110);
  }

  else
  {
    sub_1A34CD490();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1A34CD3E0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_1A34CD190() + 32;
      sub_1A31EC194(0, &qword_1EB0C01C0);
      sub_1A34C9010();
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1A3288FDC(a3, &qword_1EB0C6110);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A3288FDC(a3, &qword_1EB0C6110);
  sub_1A31EC194(0, &qword_1EB0C01C0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1A33A13AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1A328D790(a3, v22 - v9, &qword_1EB0C6110);
  v11 = sub_1A34CD4A0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);
  sub_1A34C9010();
  if (v13 == 1)
  {
    sub_1A3288FDC(v10, &qword_1EB0C6110);
  }

  else
  {
    sub_1A34CD490();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1A34CD3E0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1A34CD190() + 32;
      sub_1A34C9010();
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1A3288FDC(a3, &qword_1EB0C6110);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A3288FDC(a3, &qword_1EB0C6110);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1A33A1658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9748);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = sub_1A34CD450();
  v5[18] = sub_1A34CD440();
  v7 = sub_1A34CD3E0();
  v5[19] = v7;
  v5[20] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A33A173C, v7, v6);
}

uint64_t sub_1A33A173C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = v8[12];
  if (v9 >> 62)
  {
    v10 = sub_1A34CD9B0();
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1A58EF310](0, v8[12]);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x1EEE6DE38](v10, a2, a3, a4, a5, a6, a7, a8);
    }

    v11 = *(v8[12] + 32);
  }

  v12 = v11;
  v8[21] = v11;
  v13 = [v11 itemProvider];
  v8[22] = v13;
  v14 = sub_1A31EC194(0, &qword_1EB0C00D0);
  if ([v13 canLoadObjectOfClass_])
  {
    v15 = sub_1A34CD440();
    v8[23] = v15;
    v16 = swift_task_alloc();
    v8[24] = v16;
    *(v16 + 16) = v13;
    v17 = swift_task_alloc();
    v8[25] = v17;
    *v17 = v8;
    v17[1] = sub_1A33A1A44;
    a3 = MEMORY[0x1E69E85E0];
    a6 = sub_1A33A260C;
    v10 = (v8 + 11);
    a5 = 0x80000001A350FFB0;
    a2 = v15;
    a4 = 0xD00000000000001BLL;
    a7 = v16;
    a8 = v14;

    return MEMORY[0x1EEE6DE38](v10, a2, a3, a4, a5, a6, a7, a8);
  }

LABEL_11:
  v18 = v8[14];
  v19 = v8[15];
  v20 = v8[13];

  v21 = OBJC_IVAR____TtCV14ContactsUICoreP33_080976B124F2E19973895E975811280D15PhotoPickerView11Coordinator_request;
  swift_beginAccess();
  sub_1A328D790(v20 + v21, v19, &qword_1EB0C9748);
  v22 = *(v19 + *(v18 + 40));
  v23 = *(*v22 + *MEMORY[0x1E69E6B68] + 16);
  v24 = (*(*v22 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v22 + v24));
  sub_1A329A6B4(v22 + v23);
  os_unfair_lock_unlock((v22 + v24));
  sub_1A3288FDC(v8[15], &qword_1EB0C9748);

  v25 = v8[1];

  return v25();
}

uint64_t sub_1A33A1A44()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_1A33A1DA0;
  }

  else
  {

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_1A33A1B68;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

void sub_1A33A1B68()
{
  v1 = *(v0 + 168);

  v20 = *(v0 + 88);
  v2 = sub_1A343A8B0();
  v3 = [v1 assetID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1A34CD110();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = *(v0 + 208);
  v9 = *(v0 + 128);
  v10 = *(v0 + 104);
  v11 = *(v0 + 112);
  v12 = OBJC_IVAR____TtCV14ContactsUICoreP33_080976B124F2E19973895E975811280D15PhotoPickerView11Coordinator_request;
  swift_beginAccess();
  sub_1A328D790(v10 + v12, v9, &qword_1EB0C9748);
  *(v0 + 64) = v5;
  *(v0 + 72) = v7;
  *(v0 + 80) = v2;
  v13 = swift_task_alloc();
  *(v13 + 16) = v0 + 64;
  v14 = *(v9 + *(v11 + 40));
  v15 = swift_task_alloc();
  *(v15 + 16) = sub_1A33A2AB8;
  *(v15 + 24) = v13;
  v16 = *(*v14 + *MEMORY[0x1E69E6B68] + 16);
  v17 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v14 + v17));
  sub_1A33A2AC0(v14 + v16);
  os_unfair_lock_unlock((v14 + v17));
  if (!v8)
  {
    v18 = *(v0 + 168);

    sub_1A3288FDC(*(v0 + 128), &qword_1EB0C9748);

    v19 = *(v0 + 8);

    v19();
  }
}

uint64_t sub_1A33A1DA0()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1A33A1E4C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9750);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  sub_1A31EC194(0, &qword_1EB0C00D0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_1A33A2ADC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A33A210C;
  aBlock[3] = &block_descriptor_12;
  v11 = _Block_copy(aBlock);

  v12 = [a2 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_1A33A2030(uint64_t a1, id a2)
{
  if (a1 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9750);
    return sub_1A34CD400();
  }

  else
  {
    if (!a2)
    {
      sub_1A33A2B70();
      swift_allocError();
    }

    v4 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9750);
    return sub_1A34CD3F0();
  }
}

uint64_t sub_1A33A210C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_1A34C9010();
  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

id sub_1A33A2320()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoPickerView.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A33A23B4()
{
  sub_1A33A2444();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A33A2444()
{
  if (!qword_1EB0C1FF0[0])
  {
    v0 = type metadata accessor for PendingUserInputRequest();
    if (!v1)
    {
      atomic_store(v0, qword_1EB0C1FF0);
    }
  }
}

uint64_t getEnumTagSinglePayload for PhotoPickerRequest(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1A33A254C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3292050;

  return sub_1A33A1658(a1, v4, v5, v7, v6);
}

id sub_1A33A2614()
{
  v1 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9748) + 36));
  v2 = [objc_opt_self() configurationForMeContact_];
  v3 = [objc_allocWithZone(CNUIPHPickerViewController) initWithConfiguration_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9798);
  sub_1A34CBA20();
  [v3 setDelegate_];

  return v3;
}

void sub_1A33A26EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9748);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7[-v3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9798);
  sub_1A34CBA20();
  v5 = v8;
  sub_1A328D790(v1, v4, &qword_1EB0C9748);
  v6 = OBJC_IVAR____TtCV14ContactsUICoreP33_080976B124F2E19973895E975811280D15PhotoPickerView11Coordinator_request;
  swift_beginAccess();
  sub_1A33A2E7C(v4, v5 + v6);
  swift_endAccess();
}

uint64_t sub_1A33A27E4@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9748);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  sub_1A328D790(v1, &v10 - v4, &qword_1EB0C9748);
  v6 = type metadata accessor for PhotoPickerView.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_1A328D790(v5, v7 + OBJC_IVAR____TtCV14ContactsUICoreP33_080976B124F2E19973895E975811280D15PhotoPickerView11Coordinator_request, &qword_1EB0C9748);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_1A3288FDC(v5, &qword_1EB0C9748);
  *a1 = v8;
  return result;
}

uint64_t sub_1A33A28E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A33A2EEC(&unk_1EB0C97A0);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A33A2964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A33A2EEC(&unk_1EB0C97A0);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A33A29E4()
{
  sub_1A33A2EEC(&unk_1EB0C97A0);
  sub_1A34CB940();
  __break(1u);
}

uint64_t sub_1A33A2A58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);

  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57D8);
  return sub_1A34CD400();
}

uint64_t sub_1A33A2ADC(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9750);

  return sub_1A33A2030(a1, a2);
}

unint64_t sub_1A33A2B70()
{
  result = qword_1EB0C9758;
  if (!qword_1EB0C9758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9758);
  }

  return result;
}

unint64_t sub_1A33A2C4C()
{
  result = qword_1EB0C9768;
  if (!qword_1EB0C9768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9768);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9748);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9748);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1A33A2DDC()
{
  sub_1A33A2444();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1A33A2E7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9748);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A33A2EEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhotoPickerView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t (*EnvironmentValues.revealAction.getter())()
{
  sub_1A32CD24C();
  sub_1A34CB0E0();
  *(swift_allocObject() + 16) = v1;
  return sub_1A3396AA4;
}

uint64_t EnvironmentValues.revealAction.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1A32CD24C();
  return sub_1A34CB0F0();
}

void (*EnvironmentValues.revealAction.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = sub_1A32CD24C();
  sub_1A34CB0E0();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v4 + 16);
  *v4 = sub_1A3396CEC;
  *(v4 + 8) = v5;
  return sub_1A33A30DC;
}

void sub_1A33A30DC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v2[2] = sub_1A3396CF0;
    v2[3] = v5;
    sub_1A34C9010();
    sub_1A34CB0F0();
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v2[2] = sub_1A3396CF0;
    v2[3] = v6;
    sub_1A34CB0F0();
  }

  free(v2);
}

id sub_1A33A31FC()
{

  v0 = sub_1A34CD0E0();

  return v0;
}

uint64_t sub_1A33A3264(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1A34CD110();
  v7 = (a1 + *a4);
  *v7 = v6;
  v7[1] = v8;
}

id sub_1A33A3388(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 8);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = *v3;
    sub_1A31EC1E0(*v3, *(v3 + 8));
    v7 = sub_1A34C9680();
    sub_1A31EEE60(v6, v4);
    v5 = v7;
  }

  return v5;
}

void sub_1A33A3418(char *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  if (a3)
  {
    v6 = a1;
    v7 = v5;
    v5 = sub_1A34C9690();
    v9 = v8;
  }

  else
  {
    v10 = a1;
    v9 = 0xF000000000000000;
  }

  v11 = &a1[*a4];
  v12 = *v11;
  v13 = v11[1];
  *v11 = v5;
  v11[1] = v9;
  sub_1A31EEE60(v12, v13);
}

id sub_1A33A35BC(void *a1, int a2)
{
  v70 = a2;
  v3 = sub_1A34C9720();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 givenName];
  v9 = sub_1A34CD110();
  v66 = v10;
  v67 = v9;

  v11 = [a1 familyName];
  v65 = sub_1A34CD110();
  v13 = v12;

  v14 = [a1 avatarRecipeData];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1A34C9690();
    v68 = v17;
    v69 = v16;
  }

  else
  {
    v68 = 0xF000000000000000;
    v69 = 0;
  }

  v18 = [a1 imageData];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1A34C9690();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xF000000000000000;
  }

  [a1 cropRect];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1A34C9710();
  if (v22 >> 60 == 15)
  {
    v31 = 0;
  }

  else
  {
    v31 = sub_1A34C9680();
    sub_1A31EEE60(v20, v22);
  }

  v32 = objc_allocWithZone(MEMORY[0x1E695CD88]);
  v33 = sub_1A34C96F0();
  v64 = [v32 initWithImageData:v31 cropRect:v33 lastUsedDate:{v24, v26, v28, v30}];

  (*(v4 + 8))(v7, v3);
  v34 = [a1 wallpaper];
  v35 = [a1 watchWallpaperImageData];
  v71 = a1;
  if (v35)
  {
    v36 = v35;
    v37 = sub_1A34C9690();
    v62 = v38;
    v63 = v37;
  }

  else
  {
    v62 = 0xF000000000000000;
    v63 = 0;
  }

  v39 = type metadata accessor for MeCardSharingResult();
  v40 = objc_allocWithZone(v39);
  v41 = &v40[OBJC_IVAR____TtC14ContactsUICore19MeCardSharingResult_avatarRecipeData];
  *v41 = xmmword_1A34ED380;
  v42 = OBJC_IVAR____TtC14ContactsUICore19MeCardSharingResult_contactImage;
  *&v40[OBJC_IVAR____TtC14ContactsUICore19MeCardSharingResult_contactImage] = 0;
  v43 = OBJC_IVAR____TtC14ContactsUICore19MeCardSharingResult_wallpaper;
  *&v40[OBJC_IVAR____TtC14ContactsUICore19MeCardSharingResult_wallpaper] = 0;
  v44 = &v40[OBJC_IVAR____TtC14ContactsUICore19MeCardSharingResult_watchWallpaperImageData];
  *&v40[OBJC_IVAR____TtC14ContactsUICore19MeCardSharingResult_watchWallpaperImageData] = xmmword_1A34ED380;
  v45 = &v40[OBJC_IVAR____TtC14ContactsUICore19MeCardSharingResult_givenName];
  v46 = v66;
  *v45 = v67;
  v45[1] = v46;
  v47 = &v40[OBJC_IVAR____TtC14ContactsUICore19MeCardSharingResult_familyName];
  *v47 = v65;
  v47[1] = v13;
  v49 = *v41;
  v48 = *(v41 + 1);
  v51 = v68;
  v50 = v69;
  *v41 = v69;
  *(v41 + 1) = v51;
  sub_1A32F74C0(v50, v51);
  sub_1A31EEE60(v49, v48);
  v52 = *&v40[v42];
  v53 = v64;
  *&v40[v42] = v64;
  v67 = v53;

  v54 = *&v40[v43];
  *&v40[v43] = v34;
  v55 = v34;

  v56 = *v44;
  v57 = v44[1];
  v59 = v62;
  v58 = v63;
  *v44 = v63;
  v44[1] = v59;
  sub_1A32F74C0(v58, v59);
  sub_1A31EEE60(v56, v57);
  v40[OBJC_IVAR____TtC14ContactsUICore19MeCardSharingResult_didSaveImageToMeCard] = v70 & 1;
  v72.receiver = v40;
  v72.super_class = v39;
  v60 = objc_msgSendSuper2(&v72, sel_init);

  sub_1A31EEE60(v58, v59);
  sub_1A31EEE60(v50, v51);
  return v60;
}

void sub_1A33A39B4()
{
  sub_1A33A4048();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_1A33A40A0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A33A3A88(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1A34CB140() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a3 + 16);
  v9 = *(*(a3 + 24) - 8);
  v10 = *(v9 + 84);
  v11 = *(v8 - 8);
  v12 = *(v11 + 84);
  v13 = *(v9 + 80);
  v14 = *(v9 + 64);
  v15 = *(v11 + 80);
  if (v10 <= v12)
  {
    v16 = *(v11 + 84);
  }

  else
  {
    v16 = *(v9 + 84);
  }

  if (v16 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(*(v8 - 8) + 64) + 7;
  if (v16 < a2)
  {
    v18 = ((((v17 + ((v14 + v15 + ((v13 + (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v19 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = a2 - v16 + 1;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = *(a1 + v18);
        if (!v23)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v23 = *(a1 + v18);
        if (!v23)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      if (!v22)
      {
        goto LABEL_32;
      }

      v23 = *(a1 + v18);
      if (!v23)
      {
        goto LABEL_32;
      }
    }

    v25 = v23 - 1;
    if (v19)
    {
      v25 = 0;
      v26 = *a1;
    }

    else
    {
      v26 = 0;
    }

    v32 = v16 + (v26 | v25);
    return (v32 + 1);
  }

LABEL_32:
  v27 = (((((a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13;
  if (v10 == v16)
  {
    v28 = *(v9 + 48);

    return v28(v27);
  }

  v29 = (v27 + v14 + v15) & ~v15;
  if (v12 != v16)
  {
    v31 = *(((v17 + v29) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v31 >= 0xFFFFFFFF)
    {
      LODWORD(v31) = -1;
    }

    v32 = v31 - 1;
    if (v32 < 0)
    {
      v32 = -1;
    }

    return (v32 + 1);
  }

  v30 = *(v11 + 48);

  return v30(v29, v12, v8);
}

void sub_1A33A3D30(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1A34CB140() - 8) + 64);
  v9 = *(*(a4 + 24) - 8);
  if (v8 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v8;
  }

  v11 = *(*(a4 + 24) - 8);
  v12 = *(v9 + 84);
  v13 = *(a4 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  v16 = *(v9 + 80);
  v17 = *(v9 + 64);
  v18 = *(v14 + 80);
  if (v12 <= v15)
  {
    v19 = *(v14 + 84);
  }

  else
  {
    v19 = v12;
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  v20 = *(v14 + 64) + 7;
  v21 = ((((v20 + ((v17 + v18 + ((v16 + (((v10 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v19 >= a3)
  {
    v24 = 0;
    v25 = a2 - v19;
    if (a2 <= v19)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (((((v20 + ((v17 + v18 + ((v16 + (((v10 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 8) & ~v16)) & ~v18)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v22 = a3 - v19 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = a2 - v19;
    if (a2 <= v19)
    {
LABEL_22:
      if (v24 > 1)
      {
        if (v24 != 2)
        {
          *(a1 + v21) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *(a1 + v21) = 0;
      }

      else if (v24)
      {
        *(a1 + v21) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      if (!a2)
      {
        return;
      }

LABEL_38:
      v28 = (((((a1 + v10 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v16 + 8) & ~v16;
      if (v12 == v19)
      {
        v29 = *(v11 + 56);

        v29(v28, a2);
      }

      else
      {
        v30 = (v28 + v17 + v18) & ~v18;
        if (v15 == v19)
        {
          v31 = *(v14 + 56);

          v31(v30, a2, v15, v13);
        }

        else
        {
          v32 = ((v20 + v30) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            *v32 = (a2 - 0x7FFFFFFF);
            v32[1] = 0;
          }

          else
          {
            v32[1] = a2;
          }
        }
      }

      return;
    }
  }

  if (((((v20 + ((v17 + v18 + ((v16 + (((v10 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 8) & ~v16)) & ~v18)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v26 = v25;
  }

  else
  {
    v26 = 1;
  }

  if (((((v20 + ((v17 + v18 + ((v16 + (((v10 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 8) & ~v16)) & ~v18)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v27 = ~v19 + a2;
    bzero(a1, ((((v20 + ((v17 + v18 + ((v16 + (((v10 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    *a1 = v27;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      *(a1 + v21) = v26;
    }

    else
    {
      *(a1 + v21) = v26;
    }
  }

  else if (v24)
  {
    *(a1 + v21) = v26;
  }
}

void sub_1A33A4048()
{
  if (!qword_1EB0C98D0)
  {
    sub_1A34CB140();
    v0 = sub_1A34CA5F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C98D0);
    }
  }
}

void sub_1A33A40A0()
{
  if (!qword_1EB0C8C00)
  {
    v0 = sub_1A34CC770();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C8C00);
    }
  }
}

uint64_t sub_1A33A4134@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A34CB0B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5E68);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1A328D790(v2, &v14 - v9, &qword_1EB0C5E68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A34CB140();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1A34CD650();
    v13 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_1A33A4334()
{
  v0 = sub_1A34CB530();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A34CB140();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A33A4134(v7);
  sub_1A34CB500();
  sub_1A34CBA90();
  sub_1A34CB130();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v9;
}

double sub_1A33A44C4(int *a1)
{
  v3 = *(v1 + a1[13]);
  v4 = *(v1 + a1[14]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7EA8);
  sub_1A34CC740();
  if (v9 >= 0.0)
  {
    v5 = v4 - v9;
  }

  else
  {
    v5 = v4;
  }

  if (v3 <= v5)
  {
    v3 = v5;
  }

  sub_1A34CC740();
  v6 = 0.0;
  if (v9 <= 0.0)
  {
    v6 = -v9;
  }

  v7 = a1[18];
  if (*(v1 + v7) < v6)
  {
    v6 = *(v1 + v7);
  }

  return v3 + v6;
}

uint64_t sub_1A33A45B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C98D8);
  v26 = *(a1 + 24);
  v24 = a1;
  sub_1A34CB970();
  sub_1A34CAC30();
  swift_getTupleTypeMetadata2();
  sub_1A34CCDA0();
  swift_getWitnessTable();
  sub_1A34CA540();
  sub_1A34CAC30();
  WitnessTable = swift_getWitnessTable();
  v40 = sub_1A33A5CEC();
  v25 = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v5 = sub_1A333B40C();
  v35 = OpaqueTypeMetadata2;
  v36 = MEMORY[0x1E69E7DE0];
  v37 = OpaqueTypeConformance2;
  v38 = v5;
  swift_getOpaqueTypeMetadata2();
  sub_1A34CAC30();
  v6 = *(a1 + 16);
  sub_1A34CAC30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C58B0);
  sub_1A34CAC30();
  sub_1A34CAC30();
  sub_1A34CAC30();
  swift_getTupleTypeMetadata2();
  sub_1A34CCDA0();
  swift_getWitnessTable();
  v7 = sub_1A34CC8C0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = sub_1A34CAC30();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  sub_1A34CCC70();
  v29 = v6;
  v30 = v26;
  v31 = *(v24 + 32);
  v32 = v27;
  sub_1A34CC8B0();
  v18 = swift_getWitnessTable();
  sub_1A34CC1F0();
  (*(v8 + 8))(v10, v7);
  v19 = sub_1A32FD328();
  v33 = v18;
  v34 = v19;
  v20 = swift_getWitnessTable();
  sub_1A3345BC8(v14, v11, v20);
  v21 = *(v12 + 8);
  v21(v14, v11);
  sub_1A3345BC8(v17, v11, v20);
  return (v21)(v17, v11);
}

uint64_t sub_1A33A4A68@<X0>(uint64_t a1@<X0>, CGFloat a2@<X1>, CGFloat a3@<X2>, CGFloat a4@<X3>, CGFloat a5@<X4>, uint64_t a6@<X8>)
{
  v141 = a4;
  v137 = a1;
  v135 = a6;
  v136 = a2;
  v10 = sub_1A34CAC30();
  v11 = *(v10 - 8);
  v123 = v10;
  v124 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v122 = &v97 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C58B0);
  v13 = sub_1A34CAC30();
  v127 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v121 = &v97 - v14;
  v128 = v15;
  v16 = sub_1A34CAC30();
  v129 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v126 = &v97 - v17;
  sub_1A34CB970();
  v131 = v16;
  v134 = sub_1A34CAC30();
  v132 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v133 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v125 = &v97 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v130 = &v97 - v22;
  v152.a = a2;
  v152.b = a3;
  v152.c = a4;
  v152.d = a5;
  v99 = a5;
  v23 = type metadata accessor for StickyHeaderScrollView();
  v24 = *(v23 - 1);
  v116 = v23;
  v117 = v24;
  v120 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v119 = &v97 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C98D8);
  v98 = a3;
  sub_1A34CAC30();
  swift_getTupleTypeMetadata2();
  v112 = sub_1A34CCDA0();
  swift_getWitnessTable();
  v26 = sub_1A34CA540();
  v115 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v104 = &v97 - v27;
  v28 = sub_1A34CAC30();
  v113 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v109 = &v97 - v29;
  WitnessTable = swift_getWitnessTable();
  v105 = WitnessTable;
  v31 = sub_1A33A5CEC();
  *&v151[12] = WitnessTable;
  *&v151[13] = v31;
  v118 = MEMORY[0x1E697E858];
  v32 = swift_getWitnessTable();
  *&v152.a = v28;
  *&v152.b = v32;
  v101 = v32;
  *&v33 = COERCE_DOUBLE(swift_getOpaqueTypeMetadata2());
  v108 = *&v33;
  v114 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v100 = &v97 - v34;
  *&v152.a = v28;
  *&v152.b = v32;
  *&v35 = COERCE_DOUBLE(swift_getOpaqueTypeConformance2());
  v107 = *&v35;
  *&v103 = COERCE_DOUBLE(sub_1A333B40C());
  *&v152.a = v33;
  *&v152.b = MEMORY[0x1E69E7DE0];
  *&v152.c = v35;
  *&v152.d = v103;
  v110 = MEMORY[0x1E697D340];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v111 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v102 = &v97 - v36;
  v140 = sub_1A34CAC30();
  v138 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v139 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v142 = &v97 - v39;
  v40 = v136;
  v143 = v136;
  v144 = a3;
  v145 = v141;
  v146 = a5;
  v41 = v137;
  v147 = v137;
  sub_1A34CBA70();
  v42 = v104;
  sub_1A34CA550();
  v43 = v116;
  v44 = sub_1A33A44C4(v116);
  v45 = v109;
  sub_1A33497D4(1, v26, v105, v44, 30.0);
  (*(*&v115 + 8))(v42, v26);
  v46 = v100;
  sub_1A34CC0E0();
  (*(v113 + 8))(v45, v28);
  v47 = v117;
  v48 = v119;
  (*(v117 + 16))(v119, v41, v43);
  v49 = v47;
  v50 = (*(v47 + 80) + 48) & ~*(v47 + 80);
  v51 = swift_allocObject();
  v52 = v98;
  v51[2] = v40;
  v51[3] = v52;
  v53 = v99;
  v51[4] = v141;
  v51[5] = v53;
  (*(v49 + 32))(v51 + v50, v48, v43);
  v54 = *&v103;
  v55 = v102;
  v57 = v107;
  v56 = v108;
  v58 = MEMORY[0x1E69E7DE0];
  sub_1A34CC1D0();

  (*(v114 + 8))(v46, COERCE_CGFLOAT(*&v56));
  v152.a = v56;
  v152.b = v58;
  v152.c = v57;
  v152.d = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = v139;
  v61 = OpaqueTypeMetadata2;
  sub_1A34CC1F0();
  v62 = v137;
  (*(v111 + 8))(v55, v61);
  *&v63 = COERCE_DOUBLE(sub_1A32FD328());
  *&v151[10] = OpaqueTypeConformance2;
  *&v151[11] = v63;
  v115 = *&v63;
  v64 = v140;
  v117 = swift_getWitnessTable();
  sub_1A3345BC8(v60, v64, v117);
  v119 = *(v138 + 8);
  v120 = v138 + 8;
  (v119)(v60, v64);
  v65 = v43;
  sub_1A33A44C4(v43);
  sub_1A34CCC80();
  v66 = v122;
  v67 = v141;
  sub_1A34CC2D0();
  v151[8] = v67;
  *&v151[9] = MEMORY[0x1E697E040];
  v68 = v123;
  v69 = swift_getWitnessTable();
  sub_1A33A5E44();
  v70 = v121;
  sub_1A34CBF30();
  (*(v124 + 8))(v66, v68);
  v71 = sub_1A33A4334();
  v72 = (v62 + v65[17]);
  v74 = v72[1];
  v152.a = *v72;
  a = v152.a;
  v152.b = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7EA8);
  sub_1A34CC740();
  v75 = v151[0];
  v76 = -v151[0];
  v152.a = a;
  v152.b = v74;
  sub_1A34CC740();
  if (v151[0] <= 0.0)
  {
    v77 = -v151[0];
    v79 = v65[18];
    if (*(v62 + v79) < -v151[0])
    {
      v77 = *(v62 + v79);
    }
  }

  else
  {
    v77 = *(v62 + v65[18]);
    if (v77 >= 0.0)
    {
      v78 = 0.0;
      if (v75 <= 0.0)
      {
        v78 = -v75;
      }

      goto LABEL_10;
    }
  }

  v78 = v76 - v77;
  if (v78 < 0.0)
  {
    v78 = 0.0;
  }

LABEL_10:
  CGAffineTransformMakeTranslation(&v152, 0.0, v71 + v78);
  v80 = sub_1A3284D0C(&qword_1EB0C0790, &qword_1EB0C58B0);
  *&v151[6] = v69;
  *&v151[7] = v80;
  v81 = v128;
  v82 = swift_getWitnessTable();
  v83 = v126;
  sub_1A34CC050();
  (*(v127 + 8))(v70, v81);
  *&v151[4] = v82;
  *&v151[5] = MEMORY[0x1E697EC58];
  v84 = v131;
  v85 = swift_getWitnessTable();
  v86 = v125;
  sub_1A34CC1F0();
  (*(v129 + 8))(v83, v84);
  *&v151[2] = v85;
  v151[3] = v115;
  v87 = v134;
  v88 = swift_getWitnessTable();
  v89 = v130;
  sub_1A3345BC8(v86, v87, v88);
  v90 = v132;
  v91 = *(v132 + 8);
  v91(v86, v87);
  v92 = *&v139;
  v93 = v140;
  (*(v138 + 16))(v139, v142, v140);
  v151[0] = v92;
  v94 = *&v133;
  (*(v90 + 16))(v133, v89, v87);
  v151[1] = v94;
  v150[0] = v93;
  v150[1] = v87;
  v148 = v117;
  v149 = v88;
  sub_1A33D22C4(v151, 2uLL, v150);
  v91(v89, v87);
  v95 = v119;
  (v119)(v142, v93);
  v91(*&v94, v87);
  return (v95)(*&v92, v93);
}

uint64_t sub_1A33A5820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a1;
  v29 = a5;
  v27 = a4;
  v35 = a6;
  sub_1A34CB970();
  v30 = a3;
  v9 = sub_1A34CAC30();
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v32 = &v26 - v13;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C98D8);
  MEMORY[0x1EEE9AC00](v33);
  v31 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v36 = &v26 - v16;
  v17 = sub_1A34CC4E0();
  *&v43 = a2;
  *(&v43 + 1) = a3;
  *&v44 = v27;
  *(&v44 + 1) = a5;
  type metadata accessor for StickyHeaderScrollView();
  sub_1A34CCC80();
  sub_1A34CA760();
  *&v41[19] = v42;
  *&v41[11] = *&v41[35];
  *&v41[3] = *&v41[27];
  *(v40 + 10) = *v41;
  *(&v40[1] + 10) = *&v41[8];
  *&v40[0] = v17;
  WORD4(v40[0]) = 256;
  *(&v40[2] + 10) = *&v41[16];
  *(&v40[3] + 1) = *(&v42 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C98F0);
  sub_1A33A5E98();
  sub_1A34CC1F0();
  v43 = v40[0];
  v44 = v40[1];
  v45 = v40[2];
  v46 = v40[3];
  sub_1A3288FDC(&v43, &qword_1EB0C98F0);
  v18 = v29;
  sub_1A34CC1F0();
  v19 = sub_1A32FD328();
  v39[2] = v18;
  v39[3] = v19;
  WitnessTable = swift_getWitnessTable();
  v21 = v32;
  sub_1A3345BC8(v11, v9, WitnessTable);
  v22 = v34;
  v23 = *(v34 + 8);
  v23(v11, v9);
  v24 = v31;
  sub_1A328D790(v36, v31, &qword_1EB0C98D8);
  *&v40[0] = v24;
  (*(v22 + 16))(v11, v21, v9);
  *(&v40[0] + 1) = v11;
  v39[0] = v33;
  v39[1] = v9;
  v37 = sub_1A33A5F50();
  v38 = WitnessTable;
  sub_1A33D22C4(v40, 2uLL, v39);
  v23(v21, v9);
  sub_1A3288FDC(v36, &qword_1EB0C98D8);
  v23(v11, v9);
  return sub_1A3288FDC(v24, &qword_1EB0C98D8);
}

double sub_1A33A5C24@<D0>(double *a1@<X8>)
{
  sub_1A34CAA50();
  v3 = v2;
  sub_1A34CAA40();
  result = v3 + v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A33A5C64()
{
  type metadata accessor for StickyHeaderScrollView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7EA8);
  return sub_1A34CC750();
}

unint64_t sub_1A33A5CEC()
{
  result = qword_1EB0C98E0;
  if (!qword_1EB0C98E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C98E0);
  }

  return result;
}

uint64_t sub_1A33A5D88()
{
  type metadata accessor for StickyHeaderScrollView();

  return sub_1A33A5C64();
}

unint64_t sub_1A33A5E44()
{
  result = qword_1EB0C98E8;
  if (!qword_1EB0C98E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C98E8);
  }

  return result;
}

unint64_t sub_1A33A5E98()
{
  result = qword_1EB0C98F8;
  if (!qword_1EB0C98F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C98F0);
    sub_1A3284D0C(&qword_1EB0C8D20, &qword_1EB0C8D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C98F8);
  }

  return result;
}

unint64_t sub_1A33A5F50()
{
  result = qword_1EB0C9900;
  if (!qword_1EB0C9900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C98D8);
    sub_1A33A5E98();
    sub_1A32FD328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9900);
  }

  return result;
}

uint64_t ContactCardViewModel.__allocating_init(contact:configuration:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  *(v4 + 24) = a1;
  v12[0] = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  type metadata accessor for ContactCardViewModelBuilder();
  swift_initStackObject();
  sub_1A33A6218(a1, v12);
  v9 = a1;
  v10 = sub_1A33A6430();

  *(v4 + 16) = v10;
  return v4;
}

uint64_t ContactCardViewModel.init(contact:configuration:)(void *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  *(v2 + 24) = a1;
  v11[0] = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  type metadata accessor for ContactCardViewModelBuilder();
  swift_initStackObject();
  sub_1A33A6218(a1, v11);
  v8 = a1;
  v9 = sub_1A33A6430();

  *(v2 + 16) = v9;
  return v2;
}

uint64_t ContactCardViewModel.deinit()
{

  return v0;
}

uint64_t ContactCardViewModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A33A61DC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ContactCardViewModel();
  result = sub_1A34CA2C0();
  *a1 = result;
  return result;
}

uint64_t sub_1A33A6218(void *a1, char *a2)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = a2[16];
  v7 = *(a2 + 3);
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = a1;
  *(v2 + 32) = v4;
  *(v2 + 40) = v5;
  *(v2 + 48) = v6;
  *(v2 + 56) = v7;
  *(v2 + 64) = a1;
  *(v2 + 72) = v4;
  *(v2 + 80) = v5;
  *(v2 + 88) = v6;
  *(v2 + 96) = v7;
  type metadata accessor for ContactCardGroupFactory();
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 104) = v8;
  *(v2 + 112) = a1;
  *(v2 + 120) = a1;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = a1;
  *(v2 + 184) = a1;
  v9 = v7;
  swift_bridgeObjectRetain_n();
  v10 = v9;
  v11 = a1;
  sub_1A3348BF8(0, 0, 0, 0);
  v12 = v11;
  return v2;
}

uint64_t sub_1A33A6310()
{

  v1 = *(v0 + 56);

  v2 = *(v0 + 96);

  v3 = *(v0 + 112);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  v8 = *(v0 + 160);
  v9 = *(v0 + 168);
  v10 = *(v0 + 176);

  sub_1A3348C40(v4, v6, v7, v8);
  v11 = *(v0 + 192);
  v12 = *(v0 + 200);
  v13 = *(v0 + 208);
  v14 = *(v0 + 216);
  v15 = *(v0 + 224);
  v16 = *(v0 + 232);

  sub_1A3348C40(v12, v13, v14, v15);
  return v0;
}

uint64_t sub_1A33A63FC()
{
  sub_1A33A6310();

  return swift_deallocClassInstance();
}

uint64_t sub_1A33A6430()
{
  v0 = MEMORY[0x1E69E7CC0];
  v94 = MEMORY[0x1E69E7CC0];
  sub_1A32EBDB4(0, 3, 0);
  v1 = 0;
  v2 = v94;
  do
  {
    v79 = v2;
    v3 = byte_1F161B0F8[v1 + 32];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9908);
    v4 = swift_allocObject();
    v5 = off_1E76EACE0[v3];
    *(v4 + 16) = xmmword_1A34DAA10;
    v78 = v3;
    v6 = off_1E76EACF8[v3];
    *(v4 + 32) = v5;
    *(v4 + 40) = v6;
    v81[0] = v0;
    sub_1A32EBDD4(0, 1, 0);
    v7 = v81[0];
    v8 = *(v4 + 32);
    v9 = *(v4 + 40);
    if (!swift_dynamicCastMetatype())
    {
      if (swift_dynamicCastMetatype())
      {
        v14 = *(v77 + 160);
        v87 = *(v77 + 144);
        v88 = v14;
        v89 = *(v77 + 176);
        v15 = *(v77 + 128);
        v85 = *(v77 + 112);
        v86 = v15;
        v16 = sub_1A3345CCC();
      }

      else
      {
        v17 = *(v77 + 160);
        v87 = *(v77 + 144);
        v88 = v17;
        v89 = *(v77 + 176);
        v18 = *(v77 + 128);
        v85 = *(v77 + 112);
        v86 = v18;
        v19 = (*(v9 + 24))(v8, v9);
        v16 = sub_1A334610C(v19);
      }

      goto LABEL_47;
    }

    v80 = v0;
    sub_1A32EBD54(0, 3, 0);
    if (byte_1F161B0F0 <= 2u)
    {
      v10 = 0xD000000000000011;
      v11 = 0x80000001A3510390;
      v12 = 0x69662E656E6F6870;
      v13 = 0xEA00000000006C6CLL;
      if (byte_1F161B0F0)
      {
        v10 = 0x4D5F4E4F49544341;
        v11 = 0xEE00454741535345;
        v12 = 0x2E6567617373656DLL;
        v13 = 0xEC0000006C6C6966;
        if (byte_1F161B0F0 == 1)
        {
          v10 = 0xD000000000000011;
          v11 = 0x80000001A3510370;
          v12 = 0x69662E6F65646976;
          v13 = 0xEA00000000006C6CLL;
        }
      }
    }

    else if (byte_1F161B0F0 > 4u)
    {
      v10 = 0;
      if (byte_1F161B0F0 == 5)
      {
        v12 = 0xD000000000000012;
        v11 = 0xE000000000000000;
        v13 = 0x80000001A3510350;
      }

      else
      {
        v13 = 0xE600000000000000;
        v11 = 0xE000000000000000;
        v12 = 0x697261666173;
      }
    }

    else
    {
      v10 = 0x4D5F4E4F49544341;
      v11 = 0xEB000000004C4941;
      v12 = 0x65706F6C65766E65;
      v13 = 0xED00006C6C69662ELL;
      if (byte_1F161B0F0 != 3)
      {
        v12 = 0;
        v13 = 0xE000000000000000;
        v10 = 0x495F4E4F49544341;
        v11 = 0xEB000000004F464ELL;
      }
    }

    v16 = v80;
    *(&v83 + 1) = &type metadata for ContactCardGroupQuickActionItem;
    v84 = &protocol witness table for ContactCardGroupQuickActionItem;
    v20 = swift_allocObject();
    *&v82 = v20;
    *(v20 + 64) = 0;
    *(v20 + 16) = v12;
    *(v20 + 24) = v13;
    *(v20 + 32) = v10;
    *(v20 + 40) = v11;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    sub_1A31EE568(&v82, &v85);
    v22 = *(v80 + 16);
    v21 = *(v80 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1A32EBD54((v21 > 1), v22 + 1, 1);
      v16 = v80;
    }

    *(v16 + 16) = v22 + 1;
    v23 = v16 + 40 * v22;
    v24 = v85;
    v25 = v86;
    *(v23 + 64) = v87;
    *(v23 + 32) = v24;
    *(v23 + 48) = v25;
    if (byte_1F161B0F1 <= 2u)
    {
      if (byte_1F161B0F1)
      {
        v26 = 0x4D5F4E4F49544341;
        v27 = 0xEE00454741535345;
        v28 = 0x2E6567617373656DLL;
        v29 = 0xEC0000006C6C6966;
        if (byte_1F161B0F1 != 1)
        {
          goto LABEL_30;
        }

        v26 = 0xD000000000000011;
        v27 = 0x80000001A3510370;
        v30 = 0x2E6F65646976;
      }

      else
      {
        v26 = 0xD000000000000011;
        v27 = 0x80000001A3510390;
        v30 = 0x2E656E6F6870;
      }

      v28 = v30 & 0xFFFFFFFFFFFFLL | 0x6966000000000000;
      v29 = 0xEA00000000006C6CLL;
    }

    else if (byte_1F161B0F1 > 4u)
    {
      v26 = 0;
      if (byte_1F161B0F1 == 5)
      {
        v28 = 0xD000000000000012;
        v27 = 0xE000000000000000;
        v29 = 0x80000001A3510350;
      }

      else
      {
        v29 = 0xE600000000000000;
        v27 = 0xE000000000000000;
        v28 = 0x697261666173;
      }
    }

    else
    {
      v26 = 0x4D5F4E4F49544341;
      v27 = 0xEB000000004C4941;
      v28 = 0x65706F6C65766E65;
      v29 = 0xED00006C6C69662ELL;
      if (byte_1F161B0F1 != 3)
      {
        v28 = 0;
        v29 = 0xE000000000000000;
        v26 = 0x495F4E4F49544341;
        v27 = 0xEB000000004F464ELL;
      }
    }

LABEL_30:
    *(&v83 + 1) = &type metadata for ContactCardGroupQuickActionItem;
    v84 = &protocol witness table for ContactCardGroupQuickActionItem;
    v31 = swift_allocObject();
    *&v82 = v31;
    *(v31 + 64) = 0;
    *(v31 + 16) = v28;
    *(v31 + 24) = v29;
    *(v31 + 32) = v26;
    *(v31 + 40) = v27;
    *(v31 + 48) = 0;
    *(v31 + 56) = 0;
    sub_1A31EE568(&v82, &v85);
    v33 = *(v16 + 16);
    v32 = *(v16 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_1A32EBD54((v32 > 1), v33 + 1, 1);
    }

    *(v16 + 16) = v33 + 1;
    v34 = v16 + 40 * v33;
    v35 = v85;
    v36 = v86;
    *(v34 + 64) = v87;
    *(v34 + 32) = v35;
    *(v34 + 48) = v36;
    if (byte_1F161B0F2 > 2u)
    {
      if (byte_1F161B0F2 > 4u)
      {
        v37 = 0;
        if (byte_1F161B0F2 == 5)
        {
          v39 = 0xD000000000000012;
          v38 = 0xE000000000000000;
          v40 = 0x80000001A3510350;
        }

        else
        {
          v40 = 0xE600000000000000;
          v38 = 0xE000000000000000;
          v39 = 0x697261666173;
        }
      }

      else
      {
        v37 = 0x4D5F4E4F49544341;
        v38 = 0xEB000000004C4941;
        v39 = 0x65706F6C65766E65;
        v40 = 0xED00006C6C69662ELL;
        if (byte_1F161B0F2 != 3)
        {
          v39 = 0;
          v40 = 0xE000000000000000;
          v37 = 0x495F4E4F49544341;
          v38 = 0xEB000000004F464ELL;
        }
      }

      goto LABEL_44;
    }

    if (!byte_1F161B0F2)
    {
      v37 = 0xD000000000000011;
      v38 = 0x80000001A3510390;
      v41 = 0x2E656E6F6870;
      goto LABEL_42;
    }

    v37 = 0x4D5F4E4F49544341;
    v38 = 0xEE00454741535345;
    v39 = 0x2E6567617373656DLL;
    v40 = 0xEC0000006C6C6966;
    if (byte_1F161B0F2 == 1)
    {
      v37 = 0xD000000000000011;
      v38 = 0x80000001A3510370;
      v41 = 0x2E6F65646976;
LABEL_42:
      v39 = v41 & 0xFFFFFFFFFFFFLL | 0x6966000000000000;
      v40 = 0xEA00000000006C6CLL;
    }

LABEL_44:
    *(&v83 + 1) = &type metadata for ContactCardGroupQuickActionItem;
    v84 = &protocol witness table for ContactCardGroupQuickActionItem;
    v42 = swift_allocObject();
    *&v82 = v42;
    *(v42 + 64) = 0;
    *(v42 + 16) = v39;
    *(v42 + 24) = v40;
    *(v42 + 32) = v37;
    *(v42 + 40) = v38;
    *(v42 + 48) = 0;
    *(v42 + 56) = 0;
    sub_1A31EE568(&v82, &v85);
    v44 = *(v16 + 16);
    v43 = *(v16 + 24);
    if (v44 >= v43 >> 1)
    {
      sub_1A32EBD54((v43 > 1), v44 + 1, 1);
    }

    *(v16 + 16) = v44 + 1;
    v45 = v16 + 40 * v44;
    v46 = v85;
    v47 = v86;
    *(v45 + 64) = v87;
    *(v45 + 32) = v46;
    *(v45 + 48) = v47;
LABEL_47:
    v48 = *(v9 + 32);
    *&v93 = v8;
    *(&v93 + 1) = v9;
    __swift_allocate_boxed_opaque_existential_1(&v91 + 1);
    v48(0, 0, v16, v8, v9);
    *&v90 = (*(v9 + 8))(v8, v9);
    *(&v90 + 1) = v49;
    *&v91 = (*(v9 + 16))(v8, v9);
    v81[0] = v7;
    v51 = *(v7 + 16);
    v50 = *(v7 + 24);
    if (v51 >= v50 >> 1)
    {
      sub_1A32EBDD4((v50 > 1), v51 + 1, 1);
      v7 = v81[0];
    }

    *(v7 + 16) = v51 + 1;
    v52 = (v7 + (v51 << 6));
    v53 = v90;
    v54 = v91;
    v55 = v93;
    v52[4] = v92;
    v52[5] = v55;
    v52[2] = v53;
    v52[3] = v54;

    if (v78)
    {
      if (v78 == 1)
      {
        *(&v86 + 1) = &type metadata for ContactCardQuickActionsWidget;
        *&v87 = &off_1F161E260;
        v56 = swift_allocObject();
        *&v85 = v56;
        *(v56 + 16) = 0;
        *(v56 + 24) = 0;
        *(v56 + 32) = 1;
        *(v56 + 40) = v7;
      }

      else
      {
        *(&v86 + 1) = &type metadata for ContactCardContactDetailsWidget;
        *&v87 = &off_1F161E280;
        v58 = swift_allocObject();
        *&v85 = v58;
        *(v58 + 16) = 0xD000000000000015;
        *(v58 + 24) = 0x80000001A3510310;
        *(v58 + 32) = 2;
        *(v58 + 40) = v7;
        *(v58 + 48) = 0;
        *(v58 + 56) = 0xD000000000000017;
        *(v58 + 64) = 0x80000001A3510330;
      }
    }

    else
    {
      *(&v86 + 1) = &type metadata for ContactCardHeaderWidget;
      *&v87 = &off_1F161E240;
      v57 = swift_allocObject();
      *&v85 = v57;
      *(v57 + 16) = 0;
      *(v57 + 24) = 0;
      *(v57 + 32) = 0;
      *(v57 + 40) = v7;
    }

    sub_1A31EE4BC(&v85, &v90);
    v59 = *(&v91 + 1);
    v60 = v92;
    __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));
    v61 = (*(v60 + 8))(v59, v60);
    v63 = v62;
    v64 = *(&v91 + 1);
    v65 = v92;
    __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));
    v66 = (*(v65 + 24))(v64, v65);
    v67 = *(&v91 + 1);
    v68 = v92;
    __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));
    (*(v68 + 16))(&v82, v67, v68);
    v69 = v82;
    sub_1A31EE4BC(&v90, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9910);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9918);
    if (swift_dynamicCast())
    {
      v70 = __swift_project_boxed_opaque_existential_1(&v82, *(&v83 + 1));
      v72 = v70[5];
      v71 = v70[6];

      __swift_destroy_boxed_opaque_existential_0(&v82);
    }

    else
    {
      v84 = 0;
      v82 = 0u;
      v83 = 0u;
      sub_1A33A703C(&v82);
      v72 = 0;
      v71 = 0;
    }

    __swift_destroy_boxed_opaque_existential_0(&v90);

    __swift_destroy_boxed_opaque_existential_0(&v85);
    v2 = v79;
    v94 = v79;
    v74 = *(v79 + 16);
    v73 = *(v79 + 24);
    if (v74 >= v73 >> 1)
    {
      sub_1A32EBDB4((v73 > 1), v74 + 1, 1);
      v2 = v94;
    }

    ++v1;
    *(v2 + 16) = v74 + 1;
    v75 = v2 + 48 * v74;
    *(v75 + 32) = v61;
    *(v75 + 40) = v63;
    *(v75 + 48) = v69;
    *(v75 + 56) = v66;
    *(v75 + 64) = v72;
    *(v75 + 72) = v71;
    v0 = MEMORY[0x1E69E7CC0];
  }

  while (v1 != 3);
  *(v77 + 16) = v2;

  return *(v77 + 16);
}

uint64_t sub_1A33A703C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_13Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1A33A70E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A33A712C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A33A7194(uint64_t a1)
{
  result = sub_1A33A71BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A33A71BC()
{
  result = qword_1EB0C9928;
  if (!qword_1EB0C9928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9928);
  }

  return result;
}

uint64_t sub_1A33A722C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9958);
  v49 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v45 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9960) - 8;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8D50);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5468);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v51 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v45 - v14;
  v15 = swift_allocObject();
  v16 = *(a1 + 48);
  *(v15 + 48) = *(a1 + 32);
  *(v15 + 64) = v16;
  *(v15 + 80) = *(a1 + 64);
  *(v15 + 96) = *(a1 + 80);
  v17 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v17;
  sub_1A33A8800(a1, &v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5660);
  sub_1A3284D0C(&unk_1EB0C0590, &unk_1EB0C5660);
  sub_1A34CC790();
  sub_1A3284D0C(&unk_1EB0C0500, &unk_1EB0C8D50);
  sub_1A34CC1F0();
  (*(v8 + 8))(v10, v7);
  v18 = swift_allocObject();
  v19 = *(a1 + 48);
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = v19;
  *(v18 + 80) = *(a1 + 64);
  *(v18 + 96) = *(a1 + 80);
  v20 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v20;
  sub_1A33A8800(a1, &v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9968);
  sub_1A3284D0C(&qword_1EB0C9970, &qword_1EB0C9968);
  v21 = v47;
  sub_1A34CC790();
  sub_1A3284D0C(&qword_1EB0C9978, &qword_1EB0C9958);
  v22 = v46;
  v23 = v48;
  sub_1A34CC1F0();
  (*(v49 + 8))(v21, v23);
  v56 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  sub_1A34CC760();
  v24 = v57;
  v25 = v58;
  v26 = v59;
  sub_1A33A7CC8(v54);
  type metadata accessor for VisualIdentityEditorViewModel();
  sub_1A33A89C0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  v27 = sub_1A34CA600();
  LOBYTE(a1) = v28;
  KeyPath = swift_getKeyPath();
  v30 = &v22[*(v50 + 44)];
  v31 = v22;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5498);
  *&v30[v32[10]] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
  swift_storeEnumTagMultiPayload();
  v33 = &v30[v32[12]];
  v34 = v54[3];
  *(v33 + 2) = v54[2];
  *(v33 + 3) = v34;
  *(v33 + 4) = v54[4];
  *(v33 + 10) = v55;
  v35 = v54[1];
  *v33 = v54[0];
  *(v33 + 1) = v35;
  *v30 = 0;
  *(v30 + 1) = v27;
  v30[16] = a1 & 1;
  v36 = &v30[v32[11]];
  *v36 = v24;
  *(v36 + 1) = v25;
  v36[16] = v26;
  v37 = &v30[v32[13]];
  *&v56 = 0x4076800000000000;
  sub_1A34CC730();
  v38 = v58;
  *v37 = v57;
  *(v37 + 1) = v38;
  v39 = v45;
  v40 = v51;
  sub_1A328D790(v45, v51, &qword_1EB0C5468);
  v41 = v52;
  sub_1A328D790(v31, v52, &qword_1EB0C9960);
  v42 = v53;
  sub_1A328D790(v40, v53, &qword_1EB0C5468);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9980);
  sub_1A328D790(v41, v42 + *(v43 + 48), &qword_1EB0C9960);
  sub_1A3288FDC(v31, &qword_1EB0C9960);
  sub_1A3288FDC(v39, &qword_1EB0C5468);
  sub_1A3288FDC(v41, &qword_1EB0C9960);
  return sub_1A3288FDC(v40, &qword_1EB0C5468);
}

uint64_t sub_1A33A798C(__int128 *a1)
{
  v7 = *a1;
  LOBYTE(v5) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  sub_1A34CC750();
  v7 = a1[1];
  v8 = *(a1 + 32);
  v5 = a1[1];
  v6 = *(a1 + 32);
  v9 = *(&v7 + 1);
  sub_1A328D790(&v9, &v3, &qword_1EB0C9990);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5440);
  sub_1A34CA470();
  v3 = v7;
  v4 = v8;
  sub_1A34CA480();
  return sub_1A3288FDC(&v7, &qword_1EB0C5440);
}

uint64_t sub_1A33A7AF0@<X0>(uint64_t a1@<X8>)
{
  sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000011, 0x80000001A350FA80);
  sub_1A328A95C();
  result = sub_1A34CBE30();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1A33A7B70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A34CC640();
  *a1 = result;
  return result;
}

uint64_t sub_1A33A7BB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  sub_1A34CC750();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5440);
  return sub_1A34CA480();
}

uint64_t sub_1A33A7C44()
{
  sub_1A33A8A08();

  return sub_1A34CC6A0();
}

double sub_1A33A7CC8@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C1780 != -1)
  {
    swift_once();
  }

  v2 = qword_1EB0ED118;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C56D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34DAA10;

  *(inited + 32) = sub_1A34CC530();
  *(inited + 40) = 1;
  sub_1A33B93B8(inited);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9948);
  sub_1A34CC930();
  swift_getKeyPath();
  sub_1A34CC920();

  sub_1A31ECC9C(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CB290);
  sub_1A34CC730();
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v2;
  *(a1 + 64) = 1;
  result = 38.0;
  *(a1 + 72) = xmmword_1A34DAEB0;
  return result;
}

uint64_t sub_1A33A7EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5428);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = v28 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5430);
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v32 = v28 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5438);
  MEMORY[0x1EEE9AC00](v38);
  v6 = v28 - v5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9940);
  MEMORY[0x1EEE9AC00](v41);
  v37 = v28 - v7;
  v31 = sub_1A34CB1A0();
  v30 = v8;
  v28[3] = v9;
  v29 = v10;
  v11 = *(a1 + 56);
  v47 = *(a1 + 40);
  *v48 = v11;
  *&v48[9] = *(a1 + 65);
  v12 = *(a1 + 56);
  v45 = *(a1 + 40);
  *v46 = v12;
  *&v46[9] = *(a1 + 65);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9948);
  sub_1A34CC930();
  v13 = v43;
  v14 = v44[0];
  v15 = *&v44[1];
  v16 = BYTE8(v44[1]);
  swift_getKeyPath();
  v45 = v13;
  *v46 = v14;
  *&v46[16] = v15;
  v46[24] = v16;
  sub_1A34CC920();

  sub_1A31ECC9C(v15, v16);
  v17 = v33;
  sub_1A34CCD70();
  v18 = sub_1A3284D0C(&qword_1EB0C0388, &qword_1EB0C5428);
  v19 = v32;
  v20 = v35;
  sub_1A34CBF40();
  (*(v36 + 8))(v17, v20);
  v43 = *(a1 + 16);
  LOBYTE(v44[0]) = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5440);
  sub_1A34CA490();
  *&v43 = v20;
  *(&v43 + 1) = v18;
  swift_getOpaqueTypeConformance2();
  v21 = v39;
  sub_1A34CC350();

  (*(v40 + 8))(v19, v21);
  *&v6[*(v38 + 36)] = 0;
  sub_1A328D610();
  v22 = v37;
  sub_1A34CC1F0();
  sub_1A3288FDC(v6, &qword_1EB0C5438);
  v43 = v47;
  v44[0] = *v48;
  *(v44 + 9) = *&v48[9];
  MEMORY[0x1A58EE120](&v45, v34);
  v23 = v45;
  sub_1A31ECC9C(*v46, v46[8]);
  v44[5] = v23;
  v24 = swift_allocObject();
  v25 = *(a1 + 48);
  *(v24 + 48) = *(a1 + 32);
  *(v24 + 64) = v25;
  *(v24 + 80) = *(a1 + 64);
  *(v24 + 96) = *(a1 + 80);
  v26 = *(a1 + 16);
  *(v24 + 16) = *a1;
  *(v24 + 32) = v26;
  sub_1A33A8800(a1, &v43);
  sub_1A33A8838();
  sub_1A34CC3C0();

  return sub_1A3288FDC(v22, &qword_1EB0C9940);
}

uint64_t sub_1A33A8520(uint64_t a1)
{
  v2 = *(a1 + 56);
  v24 = *(a1 + 40);
  v25[0] = v2;
  *(v25 + 9) = *(a1 + 65);
  v3 = *(a1 + 56);
  v22 = *(a1 + 40);
  v23[0] = v3;
  *(v23 + 9) = *(a1 + 65);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9948);
  MEMORY[0x1A58EE120](&v19);
  sub_1A31ECC9C(*v20, v20[8]);
  v5 = sub_1A34CD1D0();

  if (v5 >= 2)
  {
    v22 = v24;
    v23[0] = v25[0];
    *(v23 + 9) = *(v25 + 9);
    MEMORY[0x1A58EE120](&v19, v4);
    v6 = v19;
    sub_1A31ECC9C(*v20, v20[8]);
    v7 = sub_1A33A88F4(1uLL, v6, *(&v6 + 1));
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = MEMORY[0x1A58EE9C0](v7, v9, v11, v13);
    v16 = v15;

    v22 = v24;
    v23[0] = v25[0];
    *(v23 + 9) = *(v25 + 9);
    sub_1A328D790(&v24, &v19, &qword_1EB0C9948);
    MEMORY[0x1A58EE120](v21, v4);

    v21[0] = v14;
    v21[1] = v16;
    v19 = v24;
    *v20 = v25[0];
    *&v20[9] = *(v25 + 9);
    sub_1A34CC910();
    v17 = *&v20[16];
    LOBYTE(v16) = v20[24];

    sub_1A31ECC9C(v17, v16);
  }

  v22 = *(a1 + 16);
  LOBYTE(v23[0]) = *(a1 + 32);
  LOBYTE(v19) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5440);
  return sub_1A34CA480();
}

uint64_t sub_1A33A8748@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v11[2] = *(v1 + 32);
  v11[3] = v3;
  v11[4] = *(v1 + 64);
  v12 = *(v1 + 80);
  v4 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v4;
  sub_1A33A722C(v11, a1);
  v5 = sub_1A34CCC80();
  v7 = v6;
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9930) + 36);
  sub_1A33A7EC4(v11, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9938);
  v10 = (v8 + *(result + 36));
  *v10 = v5;
  v10[1] = v7;
  return result;
}

unint64_t sub_1A33A8838()
{
  result = qword_1EB0C9950;
  if (!qword_1EB0C9950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9940);
    sub_1A328D610();
    sub_1A33A89C0(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9950);
  }

  return result;
}

unint64_t sub_1A33A88F4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_1A34CD1E0();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_1A34CD2A0();
}

uint64_t sub_1A33A89C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A33A8A08()
{
  result = qword_1EB0C9988;
  if (!qword_1EB0C9988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9988);
  }

  return result;
}

unint64_t sub_1A33A8A5C()
{
  result = qword_1EB0C9998;
  if (!qword_1EB0C9998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9930);
    sub_1A3284D0C(&qword_1EB0C99A0, &qword_1EB0C99A8);
    sub_1A3284D0C(&qword_1EB0C99B0, &qword_1EB0C9938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9998);
  }

  return result;
}

uint64_t sub_1A33A8B40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(uint64_t *, char *))
{
  v15[5] = &type metadata for SFProFamilySpecs;
  v15[6] = &off_1F1624428;
  v15[0] = swift_getKeyPath();
  v15[1] = a3;
  KeyPath = swift_getKeyPath();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9A18);
  v18[3] = v9;
  v18[4] = &off_1F1624410;
  v18[0] = swift_allocObject();
  sub_1A328D790(v15, v18[0] + 16, &qword_1EB0C9A18);
  v17 = a4;
  v16 = KeyPath;
  v19 = 0;
  sub_1A3288FDC(v15, &qword_1EB0C9A18);
  __swift_project_boxed_opaque_existential_1(v18, v9);
  v10 = sub_1A31F7854(v9);
  v11 = sub_1A31F4B50(MEMORY[0x1E69E7CC0]);
  v14[2] = &v16;
  v12 = sub_1A31F5B8C(v11, a5, v14, v10);

  sub_1A3288FDC(&v16, &qword_1EB0C9A20);
  return v12;
}

uint64_t sub_1A33A8CA8()
{
  sub_1A34CDF20();
  sub_1A31F5740();
  return sub_1A34CDF70();
}

uint64_t sub_1A33A8CEC()
{
  sub_1A34CDF20();
  sub_1A31F5740();
  return sub_1A34CDF70();
}

unint64_t sub_1A33A8D2C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1A33A8EC4(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A33A8DA0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1A34CDB30();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t sub_1A33A8EC4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1A34CD250();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1A58EEA60](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1A33A8F40()
{
  v7[3] = &type metadata for SFProFamilySpecs;
  v7[4] = &off_1F1624428;
  v6 = 4;
  KeyPath = swift_getKeyPath();
  v8 = 0;
  __swift_project_boxed_opaque_existential_1(v7, &type metadata for SFProFamilySpecs);
  v0 = sub_1A31F717C();
  v1 = sub_1A31F4B50(MEMORY[0x1E69E7CC0]);
  v4[2] = &KeyPath;
  v2 = sub_1A31F5B8C(v1, sub_1A33A96F0, v4, v0);

  sub_1A3288FDC(&KeyPath, &qword_1EB0C9A20);
  return v2;
}

uint64_t sub_1A33A9074(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 8) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
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
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1A33A91BC(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
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

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (result + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_1A33A93A8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 8) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 41;
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
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))(&a1[v6 + 8] & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
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

void sub_1A33A9508(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 8) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 41;
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
      if ((v7 & 0x80000000) != 0)
      {
        v18 = *(v6 + 56);
        v19 = &a1[v9 + 8] & ~v9;

        v18(v19);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v17 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v17 = a2 - 1;
        }

        *a1 = v17;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
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