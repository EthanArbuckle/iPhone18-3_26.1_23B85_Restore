uint64_t sub_2295CB4B8(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for SceneEntity();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2295CB5B0, 0, 0);
}

uint64_t sub_2295CB5B0()
{
  v53 = v0;
  v52[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v50 = v5;
    do
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      sub_2295D1ED0(v4, v7, type metadata accessor for SceneEntity);
      *(v0 + 40) = v8;
      *(v0 + 48) = &off_283CDD798;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      sub_2295D1ED0(v7, boxed_opaque_existential_1, type metadata accessor for SceneEntity);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v10 = sub_2295C40CC();
      if (v10)
      {
        v11 = v10;
        v12 = **(v0 + 72);
        *(v0 + 56) = 0;
        v13 = [v12 registerItem:v11 error:v0 + 56];
        v14 = *(v0 + 56);
        v15 = *(v0 + 104);
        if (!v13)
        {
          v34 = *(v0 + 72);
          v35 = v14;
          v36 = sub_22A4DB3EC();

          swift_willThrow();
          sub_2295D1E70(v15, type metadata accessor for SceneEntity);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          v37 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
          v38 = v36;
          v39 = sub_22A4DD05C();
          v40 = sub_22A4DDCEC();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            *v41 = 138412290;
            v43 = v36;
            v44 = _swift_stdlib_bridgeErrorToNSError();
            *(v41 + 4) = v44;
            *v42 = v44;
            _os_log_impl(&dword_229538000, v39, v40, "Could not donate entities to cascade: %@", v41, 0xCu);
            sub_22953EAE4(v42, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v42, -1, -1);
            MEMORY[0x22AAD4E50](v41, -1, -1);
          }

          else
          {
          }

          break;
        }

        v16 = v14;
        sub_2295D1E70(v15, type metadata accessor for SceneEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        v18 = *(v0 + 96);
        v17 = *(v0 + 104);
        v19 = *(v0 + 72);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        v20 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
        sub_2295D1ED0(v17, v18, type metadata accessor for SceneEntity);
        v21 = sub_22A4DD05C();
        v22 = sub_22A4DDCEC();
        v23 = os_log_type_enabled(v21, v22);
        v25 = *(v0 + 96);
        v24 = *(v0 + 104);
        if (v23)
        {
          v51 = *(v0 + 104);
          v26 = *(v0 + 80);
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v52[0] = v28;
          *v27 = 136315138;
          v29 = sub_22A4DBA6C();
          v31 = v30;
          sub_2295D1E70(v25, type metadata accessor for SceneEntity);
          v32 = sub_2295A3E30(v29, v31, v52);

          *(v27 + 4) = v32;
          _os_log_impl(&dword_229538000, v21, v22, "Unable to create CascadeItem for %s)", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v28);
          MEMORY[0x22AAD4E50](v28, -1, -1);
          v33 = v27;
          v5 = v50;
          MEMORY[0x22AAD4E50](v33, -1, -1);

          v6 = v51;
        }

        else
        {

          sub_2295D1E70(v25, type metadata accessor for SceneEntity);
          v6 = v24;
        }

        sub_2295D1E70(v6, type metadata accessor for SceneEntity);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v46 = *(v0 + 96);
  v45 = *(v0 + 104);

  v47 = *(v0 + 8);
  v48 = *MEMORY[0x277D85DE8];

  return v47();
}

uint64_t sub_2295CBA38(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for HomeDeviceEntity();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2295CBB30, 0, 0);
}

uint64_t sub_2295CBB30()
{
  v53 = v0;
  v52[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v50 = v5;
    do
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      sub_2295D1ED0(v4, v7, type metadata accessor for HomeDeviceEntity);
      *(v0 + 40) = v8;
      *(v0 + 48) = &off_283CDD6D8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      sub_2295D1ED0(v7, boxed_opaque_existential_1, type metadata accessor for HomeDeviceEntity);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v10 = sub_2295BF018();
      if (v10)
      {
        v11 = v10;
        v12 = **(v0 + 72);
        *(v0 + 56) = 0;
        v13 = [v12 registerItem:v11 error:v0 + 56];
        v14 = *(v0 + 56);
        v15 = *(v0 + 104);
        if (!v13)
        {
          v34 = *(v0 + 72);
          v35 = v14;
          v36 = sub_22A4DB3EC();

          swift_willThrow();
          sub_2295D1E70(v15, type metadata accessor for HomeDeviceEntity);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          v37 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
          v38 = v36;
          v39 = sub_22A4DD05C();
          v40 = sub_22A4DDCEC();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            *v41 = 138412290;
            v43 = v36;
            v44 = _swift_stdlib_bridgeErrorToNSError();
            *(v41 + 4) = v44;
            *v42 = v44;
            _os_log_impl(&dword_229538000, v39, v40, "Could not donate entities to cascade: %@", v41, 0xCu);
            sub_22953EAE4(v42, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v42, -1, -1);
            MEMORY[0x22AAD4E50](v41, -1, -1);
          }

          else
          {
          }

          break;
        }

        v16 = v14;
        sub_2295D1E70(v15, type metadata accessor for HomeDeviceEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        v18 = *(v0 + 96);
        v17 = *(v0 + 104);
        v19 = *(v0 + 72);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        v20 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
        sub_2295D1ED0(v17, v18, type metadata accessor for HomeDeviceEntity);
        v21 = sub_22A4DD05C();
        v22 = sub_22A4DDCEC();
        v23 = os_log_type_enabled(v21, v22);
        v25 = *(v0 + 96);
        v24 = *(v0 + 104);
        if (v23)
        {
          v51 = *(v0 + 104);
          v26 = *(v0 + 80);
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v52[0] = v28;
          *v27 = 136315138;
          v29 = sub_22A4DBA6C();
          v31 = v30;
          sub_2295D1E70(v25, type metadata accessor for HomeDeviceEntity);
          v32 = sub_2295A3E30(v29, v31, v52);

          *(v27 + 4) = v32;
          _os_log_impl(&dword_229538000, v21, v22, "Unable to create CascadeItem for %s)", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v28);
          MEMORY[0x22AAD4E50](v28, -1, -1);
          v33 = v27;
          v5 = v50;
          MEMORY[0x22AAD4E50](v33, -1, -1);

          v6 = v51;
        }

        else
        {

          sub_2295D1E70(v25, type metadata accessor for HomeDeviceEntity);
          v6 = v24;
        }

        sub_2295D1E70(v6, type metadata accessor for HomeDeviceEntity);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v46 = *(v0 + 96);
  v45 = *(v0 + 104);

  v47 = *(v0 + 8);
  v48 = *MEMORY[0x277D85DE8];

  return v47();
}

uint64_t sub_2295CBFB8(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for HomeGroupEntity();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2295CC0B0, 0, 0);
}

uint64_t sub_2295CC0B0()
{
  v53 = v0;
  v52[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v50 = v5;
    do
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      sub_2295D1ED0(v4, v7, type metadata accessor for HomeGroupEntity);
      *(v0 + 40) = v8;
      *(v0 + 48) = &off_283CDD738;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      sub_2295D1ED0(v7, boxed_opaque_existential_1, type metadata accessor for HomeGroupEntity);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v10 = sub_2295C23D4();
      if (v10)
      {
        v11 = v10;
        v12 = **(v0 + 72);
        *(v0 + 56) = 0;
        v13 = [v12 registerItem:v11 error:v0 + 56];
        v14 = *(v0 + 56);
        v15 = *(v0 + 104);
        if (!v13)
        {
          v34 = *(v0 + 72);
          v35 = v14;
          v36 = sub_22A4DB3EC();

          swift_willThrow();
          sub_2295D1E70(v15, type metadata accessor for HomeGroupEntity);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          v37 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
          v38 = v36;
          v39 = sub_22A4DD05C();
          v40 = sub_22A4DDCEC();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            *v41 = 138412290;
            v43 = v36;
            v44 = _swift_stdlib_bridgeErrorToNSError();
            *(v41 + 4) = v44;
            *v42 = v44;
            _os_log_impl(&dword_229538000, v39, v40, "Could not donate entities to cascade: %@", v41, 0xCu);
            sub_22953EAE4(v42, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v42, -1, -1);
            MEMORY[0x22AAD4E50](v41, -1, -1);
          }

          else
          {
          }

          break;
        }

        v16 = v14;
        sub_2295D1E70(v15, type metadata accessor for HomeGroupEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        v18 = *(v0 + 96);
        v17 = *(v0 + 104);
        v19 = *(v0 + 72);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        v20 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
        sub_2295D1ED0(v17, v18, type metadata accessor for HomeGroupEntity);
        v21 = sub_22A4DD05C();
        v22 = sub_22A4DDCEC();
        v23 = os_log_type_enabled(v21, v22);
        v25 = *(v0 + 96);
        v24 = *(v0 + 104);
        if (v23)
        {
          v51 = *(v0 + 104);
          v26 = *(v0 + 80);
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v52[0] = v28;
          *v27 = 136315138;
          v29 = sub_22A4DBA6C();
          v31 = v30;
          sub_2295D1E70(v25, type metadata accessor for HomeGroupEntity);
          v32 = sub_2295A3E30(v29, v31, v52);

          *(v27 + 4) = v32;
          _os_log_impl(&dword_229538000, v21, v22, "Unable to create CascadeItem for %s)", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v28);
          MEMORY[0x22AAD4E50](v28, -1, -1);
          v33 = v27;
          v5 = v50;
          MEMORY[0x22AAD4E50](v33, -1, -1);

          v6 = v51;
        }

        else
        {

          sub_2295D1E70(v25, type metadata accessor for HomeGroupEntity);
          v6 = v24;
        }

        sub_2295D1E70(v6, type metadata accessor for HomeGroupEntity);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v46 = *(v0 + 96);
  v45 = *(v0 + 104);

  v47 = *(v0 + 8);
  v48 = *MEMORY[0x277D85DE8];

  return v47();
}

uint64_t sub_2295CC538(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for HomeEntity();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2295CC630, 0, 0);
}

uint64_t sub_2295CC630()
{
  v53 = v0;
  v52[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v50 = v5;
    do
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      sub_2295D1ED0(v4, v7, type metadata accessor for HomeEntity);
      *(v0 + 40) = v8;
      *(v0 + 48) = &off_283CDD708;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      sub_2295D1ED0(v7, boxed_opaque_existential_1, type metadata accessor for HomeEntity);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v10 = sub_2295C1584();
      if (v10)
      {
        v11 = v10;
        v12 = **(v0 + 72);
        *(v0 + 56) = 0;
        v13 = [v12 registerItem:v11 error:v0 + 56];
        v14 = *(v0 + 56);
        v15 = *(v0 + 104);
        if (!v13)
        {
          v34 = *(v0 + 72);
          v35 = v14;
          v36 = sub_22A4DB3EC();

          swift_willThrow();
          sub_2295D1E70(v15, type metadata accessor for HomeEntity);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          v37 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
          v38 = v36;
          v39 = sub_22A4DD05C();
          v40 = sub_22A4DDCEC();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            *v41 = 138412290;
            v43 = v36;
            v44 = _swift_stdlib_bridgeErrorToNSError();
            *(v41 + 4) = v44;
            *v42 = v44;
            _os_log_impl(&dword_229538000, v39, v40, "Could not donate entities to cascade: %@", v41, 0xCu);
            sub_22953EAE4(v42, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v42, -1, -1);
            MEMORY[0x22AAD4E50](v41, -1, -1);
          }

          else
          {
          }

          break;
        }

        v16 = v14;
        sub_2295D1E70(v15, type metadata accessor for HomeEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        v18 = *(v0 + 96);
        v17 = *(v0 + 104);
        v19 = *(v0 + 72);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        v20 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
        sub_2295D1ED0(v17, v18, type metadata accessor for HomeEntity);
        v21 = sub_22A4DD05C();
        v22 = sub_22A4DDCEC();
        v23 = os_log_type_enabled(v21, v22);
        v25 = *(v0 + 96);
        v24 = *(v0 + 104);
        if (v23)
        {
          v51 = *(v0 + 104);
          v26 = *(v0 + 80);
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v52[0] = v28;
          *v27 = 136315138;
          v29 = sub_22A4DBA6C();
          v31 = v30;
          sub_2295D1E70(v25, type metadata accessor for HomeEntity);
          v32 = sub_2295A3E30(v29, v31, v52);

          *(v27 + 4) = v32;
          _os_log_impl(&dword_229538000, v21, v22, "Unable to create CascadeItem for %s)", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v28);
          MEMORY[0x22AAD4E50](v28, -1, -1);
          v33 = v27;
          v5 = v50;
          MEMORY[0x22AAD4E50](v33, -1, -1);

          v6 = v51;
        }

        else
        {

          sub_2295D1E70(v25, type metadata accessor for HomeEntity);
          v6 = v24;
        }

        sub_2295D1E70(v6, type metadata accessor for HomeEntity);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v46 = *(v0 + 96);
  v45 = *(v0 + 104);

  v47 = *(v0 + 8);
  v48 = *MEMORY[0x277D85DE8];

  return v47();
}

uint64_t sub_2295CCAB8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_229586D38;

  return sub_2295C9E44(v0);
}

uint64_t objectdestroy_29Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2295CCB94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2295C9750(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for CascadeIndexer.CascadeIndexingSession()
{
  result = qword_281402C38;
  if (!qword_281402C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2295CCCA0(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v4 = sub_22A4DD07C();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[5] = type metadata accessor for CascadeIndexer.CascadeIndexingSession();
  v2[6] = &off_283CDDAD8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  sub_2295D1ED0(a2, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);

  return MEMORY[0x2822009F8](sub_2295CCDA0, 0, 0);
}

uint64_t sub_2295CCDA0()
{
  v1 = [*(v0 + 56) home];
  *(v0 + 88) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 56);
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D468, &qword_22A5798F0);
    v4 = *(type metadata accessor for HomeGroupEntity() - 8);
    v5 = *(v4 + 72);
    v6 = *(v4 + 80);
    *(v0 + 112) = v6;
    v7 = (v6 + 32) & ~v6;
    v8 = swift_allocObject();
    *(v0 + 96) = v8;
    *(v8 + 16) = xmmword_22A576180;
    sub_2295C1C6C(v3, v2, (v8 + v7));
    v9 = swift_task_alloc();
    *(v0 + 104) = v9;
    *v9 = v0;
    v9[1] = sub_2295CD0D8;

    return sub_2295CBFB8(v8);
  }

  else
  {
    v11 = *(v0 + 80);
    v12 = *(v0 + 56);
    v13 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    off_283CDDE58();
    sub_22A4DD06C();
    v14 = v12;
    v15 = sub_22A4DD05C();
    v16 = sub_22A4DDCEC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 56);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v17;
      *v19 = v17;
      v20 = v17;
      _os_log_impl(&dword_229538000, v15, v16, "Could not index %@ as it does not have valid home pointer", v18, 0xCu);
      sub_22953EAE4(v19, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v19, -1, -1);
      MEMORY[0x22AAD4E50](v18, -1, -1);
    }

    v22 = *(v0 + 72);
    v21 = *(v0 + 80);
    v23 = *(v0 + 64);

    (*(v22 + 8))(v21, v23);
    v24 = *(v0 + 80);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_2295CD0D8()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = (*(*v0 + 112) + 32) & ~*(*v0 + 112);
  v5 = *v0;

  swift_setDeallocating();
  sub_2295D1E70(v2 + v3, type metadata accessor for HomeGroupEntity);
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_2295CD228, 0, 0);
}

uint64_t sub_2295CD228()
{
  v1 = *(v0 + 80);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2295CD29C(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v4 = sub_22A4DD07C();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v6 = *(v5 + 64) + 15;
  v2[11] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9D8, &qword_22A579900) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v8 = type metadata accessor for SceneEntity();
  v2[13] = v8;
  v9 = *(v8 - 8);
  v2[14] = v9;
  v10 = *(v9 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[5] = type metadata accessor for CascadeIndexer.CascadeIndexingSession();
  v2[6] = &off_283CDDAD8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  sub_2295D1ED0(a2, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);

  return MEMORY[0x2822009F8](sub_2295CD430, 0, 0);
}

uint64_t sub_2295CD430()
{
  v41 = v0;
  v1 = [*(v0 + 64) type];
  v2 = sub_22A4DD5EC();
  v4 = v3;

  v5 = *MEMORY[0x277CCF1A0];
  if (v2 == sub_22A4DD5EC() && v4 == v6)
  {

    goto LABEL_11;
  }

  v8 = sub_22A4DE60C();

  if (v8)
  {
LABEL_11:
    v28 = *(v0 + 120);
    v30 = *(v0 + 88);
    v29 = *(v0 + 96);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v31 = *(v0 + 8);

    return v31();
  }

  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  v11 = *(v0 + 96);
  sub_2295C3B8C(*(v0 + 64), v11);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);
    sub_22953EAE4(*(v0 + 96), &qword_27D87D9D8, &qword_22A579900);
    v14 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    off_283CDDE58();
    sub_22A4DD06C();
    v15 = v13;
    v16 = sub_22A4DD05C();
    v17 = sub_22A4DDCEC();

    v18 = os_log_type_enabled(v16, v17);
    v20 = *(v0 + 80);
    v19 = *(v0 + 88);
    v21 = *(v0 + 72);
    if (v18)
    {
      v22 = *(v0 + 64);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40 = v24;
      *v23 = 136315138;
      *(v0 + 56) = v22;
      sub_229562F68(0, &qword_281401C20, off_278666020);
      v25 = sub_22A4DBA6C();
      v27 = sub_2295A3E30(v25, v26, &v40);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_229538000, v16, v17, "Unable to create SceneEntity from scene %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x22AAD4E50](v24, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }

    (*(v20 + 8))(v19, v21);
    goto LABEL_11;
  }

  v34 = *(v0 + 112);
  v33 = *(v0 + 120);
  sub_2295D1E08(*(v0 + 96), v33, type metadata accessor for SceneEntity);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9E0, &qword_22A579908);
  v35 = *(v34 + 72);
  v36 = *(v34 + 80);
  *(v0 + 144) = v36;
  v37 = (v36 + 32) & ~v36;
  v38 = swift_allocObject();
  *(v0 + 128) = v38;
  *(v38 + 16) = xmmword_22A576180;
  sub_2295D1ED0(v33, v38 + v37, type metadata accessor for SceneEntity);
  v39 = swift_task_alloc();
  *(v0 + 136) = v39;
  *v39 = v0;
  v39[1] = sub_2295CD850;

  return sub_2295CB4B8(v38);
}

uint64_t sub_2295CD850()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = (*(*v0 + 144) + 32) & ~*(*v0 + 144);
  v5 = *v0;

  swift_setDeallocating();
  sub_2295D1E70(v2 + v3, type metadata accessor for SceneEntity);
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_2295CD9A0, 0, 0);
}

uint64_t sub_2295CD9A0()
{
  sub_2295D1E70(v0[15], type metadata accessor for SceneEntity);
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2295CDA44(uint64_t a1, uint64_t a2)
{
  v2[52] = a1;
  v4 = sub_22A4DD07C();
  v2[53] = v4;
  v5 = *(v4 - 8);
  v2[54] = v5;
  v6 = *(v5 + 64) + 15;
  v2[55] = swift_task_alloc();
  v7 = type metadata accessor for RoomEntity();
  v2[56] = v7;
  v8 = *(v7 - 8);
  v2[57] = v8;
  v9 = *(v8 + 64) + 15;
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v10 = type metadata accessor for ZoneEntity();
  v2[60] = v10;
  v11 = *(v10 - 8);
  v2[61] = v11;
  v12 = *(v11 + 64) + 15;
  v2[62] = swift_task_alloc();
  v13 = type metadata accessor for HomeEntity();
  v2[63] = v13;
  v14 = *(v13 - 8);
  v2[64] = v14;
  v15 = *(v14 + 64) + 15;
  v2[65] = swift_task_alloc();
  v16 = type metadata accessor for CascadeIndexer.CascadeIndexingSession();
  v2[66] = v16;
  v2[5] = v16;
  v2[6] = &off_283CDDAD8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  sub_2295D1ED0(a2, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);

  return MEMORY[0x2822009F8](sub_2295CDC68, 0, 0);
}

uint64_t sub_2295CDC68()
{
  v1 = [*(v0 + 416) urlString];
  if (v1)
  {
    v2 = v1;
    v3 = sub_22A4DD5EC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 520);
  v8 = *(v0 + 504);
  v7 = *(v0 + 512);
  v9 = *(v0 + 416);
  *v6 = v3;
  v6[1] = v5;
  v10 = [v9 spiClientIdentifier];
  v11 = v6 + *(v8 + 20);
  sub_22A4DB79C();

  v12 = [v9 name];
  v13 = sub_22A4DD5EC();
  v15 = v14;

  v16 = (v6 + *(v8 + 24));
  *v16 = v13;
  v16[1] = v15;
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9C8, &qword_22A5798A0);
  v17 = *(v7 + 72);
  v18 = *(v7 + 80);
  *(v0 + 784) = v18;
  v19 = (v18 + 32) & ~v18;
  v20 = swift_allocObject();
  *(v0 + 536) = v20;
  *(v20 + 16) = xmmword_22A576180;
  sub_2295D1ED0(v6, v20 + v19, type metadata accessor for HomeEntity);
  v21 = swift_task_alloc();
  *(v0 + 544) = v21;
  *v21 = v0;
  v21[1] = sub_2295CDE5C;

  return sub_2295CC538(v20);
}

uint64_t sub_2295CDE5C()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 536);
  v3 = (*(*v0 + 784) + 32) & ~*(*v0 + 784);
  v5 = *v0;

  swift_setDeallocating();
  sub_2295D1E70(v2 + v3, type metadata accessor for HomeEntity);
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_2295CDFAC, 0, 0);
}

uint64_t sub_2295CDFAC()
{
  v1 = [*(v0 + 416) rooms];
  sub_229562F68(0, &unk_2814017A0, off_278666308);
  v2 = sub_22A4DD83C();
  *(v0 + 552) = v2;

  if (v2 >> 62)
  {
    v4 = sub_22A4DE0EC();
    *(v0 + 560) = v4;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 560) = v4;
    if (v4)
    {
LABEL_3:
      if (v4 >= 1)
      {
        v5 = 0;
        *(v0 + 568) = *MEMORY[0x277D0F1A8];
        *&v3 = 138412290;
        v143 = v3;
        while (1)
        {
          *(v0 + 752) = v5;
          v10 = *(v0 + 552);
          v11 = (v10 & 0xC000000000000001) != 0 ? MEMORY[0x22AAD13F0](v5) : *(v10 + 8 * v5 + 32);
          v12 = v11;
          *(v0 + 760) = v11;
          v13 = *(v0 + 528);
          v14 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
          *(v0 + 80) = v13;
          *(v0 + 88) = &off_283CDDAD8;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
          sub_2295D1ED0(v14, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          v16 = __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
          *(v0 + 120) = v13;
          *(v0 + 128) = &off_283CDDAD8;
          v17 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
          sub_2295D1ED0(v16, v17, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          v18 = [v12 home];
          if (v18)
          {
            break;
          }

          v19 = *(v0 + 568);
          v21 = *(v0 + 440);
          v20 = *(v0 + 448);
          sub_22A4DD5EC();
          off_283CDD788();
          sub_22A4DD06C();
          v22 = v12;
          v23 = sub_22A4DD05C();
          v24 = sub_22A4DDCEC();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            *v25 = v143;
            *(v25 + 4) = v22;
            *v26 = v22;
            v27 = v22;
            _os_log_impl(&dword_229538000, v23, v24, "room %@ has no home", v25, 0xCu);
            sub_22953EAE4(v26, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v26, -1, -1);
            MEMORY[0x22AAD4E50](v25, -1, -1);
          }

          ++v5;
          v6 = *(v0 + 560);
          v8 = *(v0 + 432);
          v7 = *(v0 + 440);
          v9 = *(v0 + 424);

          (*(v8 + 8))(v7, v9);
          __swift_destroy_boxed_opaque_existential_0((v0 + 96));
          __swift_destroy_boxed_opaque_existential_0((v0 + 56));

          if (v5 == v6)
          {
            goto LABEL_17;
          }
        }

        v28 = v18;
        v29 = v12;
        v30 = [v29 urlString];
        if (v30)
        {
          v31 = v30;
          v32 = sub_22A4DD5EC();
          v34 = v33;
        }

        else
        {
          v32 = 0;
          v34 = 0;
        }

        v36 = *(v0 + 464);
        v35 = *(v0 + 472);
        v38 = *(v0 + 448);
        v37 = *(v0 + 456);
        v39 = (v36 + *(v38 + 20));
        *v39 = v32;
        v39[1] = v34;
        v40 = [v29 spiClientIdentifier];
        sub_22A4DB79C();

        v41 = [v29 name];
        v42 = sub_22A4DD5EC();
        v44 = v43;

        v45 = (v36 + *(v38 + 24));
        *v45 = v42;
        v45[1] = v44;
        sub_2295D1E08(v36, v35, type metadata accessor for RoomEntity);
        __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D478, &qword_22A5798E0);
        v46 = *(v37 + 72);
        v47 = *(v37 + 80);
        *(v0 + 792) = v47;
        v48 = (v47 + 32) & ~v47;
        v49 = swift_allocObject();
        *(v0 + 768) = v49;
        *(v49 + 16) = xmmword_22A576180;
        sub_2295D1ED0(v35, v49 + v48, type metadata accessor for RoomEntity);
        v144 = sub_2295CA9B8;
        v50 = swift_task_alloc();
        *(v0 + 776) = v50;
        *v50 = v0;
        v50[1] = sub_2295D0968;
        v51 = v49;
        goto LABEL_27;
      }

      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }
  }

LABEL_17:
  v52 = *(v0 + 552);
  v53 = *(v0 + 416);

  v54 = [v53 zones];
  sub_229562F68(0, &qword_281401788, off_278666398);
  v55 = sub_22A4DD83C();
  *(v0 + 576) = v55;

  if (v55 >> 62)
  {
    v56 = sub_22A4DE0EC();
    *(v0 + 584) = v56;
    if (v56)
    {
LABEL_19:
      if (v56 >= 1)
      {
        *(v0 + 720) = 0;
        v57 = *(v0 + 576);
        if ((v57 & 0xC000000000000001) != 0)
        {
          v58 = MEMORY[0x22AAD13F0](0);
        }

        else
        {
          v58 = *(v57 + 32);
        }

        v59 = v58;
        *(v0 + 728) = v58;
        v60 = *(v0 + 528);
        v61 = *(v0 + 488);
        v62 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
        *(v0 + 160) = v60;
        *(v0 + 168) = &off_283CDDAD8;
        v63 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
        sub_2295D1ED0(v62, v63, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        v64 = __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
        *(v0 + 200) = v60;
        *(v0 + 208) = &off_283CDDAD8;
        v65 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
        sub_2295D1ED0(v64, v65, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        __swift_project_boxed_opaque_existential_0((v0 + 176), *(v0 + 200));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9D0, &qword_22A5798B8);
        v66 = *(v61 + 72);
        v67 = *(v61 + 80);
        *(v0 + 788) = v67;
        v68 = (v67 + 32) & ~v67;
        v69 = swift_allocObject();
        *(v0 + 736) = v69;
        *(v69 + 16) = xmmword_22A576180;
        v70 = v59;
        v71 = [v70 urlString];
        if (v71)
        {
          v72 = v71;
          v73 = sub_22A4DD5EC();
          v75 = v74;
        }

        else
        {
          v73 = 0;
          v75 = 0;
        }

        v76 = *(v0 + 496);
        v77 = *(v0 + 480);
        *v76 = v73;
        v76[1] = v75;
        v78 = [v70 spiClientIdentifier];
        v79 = v76 + *(v77 + 20);
        sub_22A4DB79C();

        v80 = [v70 name];
        v81 = sub_22A4DD5EC();
        v83 = v82;

        v84 = (v76 + *(v77 + 24));
        *v84 = v81;
        v84[1] = v83;
        sub_2295D1E08(v76, v69 + v68, type metadata accessor for ZoneEntity);
        v144 = sub_2295CAF38;
        v85 = swift_task_alloc();
        *(v0 + 744) = v85;
        *v85 = v0;
        v85[1] = sub_2295CFEA8;
        v51 = v69;
        goto LABEL_27;
      }

      goto LABEL_43;
    }
  }

  else
  {
    v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 584) = v56;
    if (v56)
    {
      goto LABEL_19;
    }
  }

  v87 = *(v0 + 576);
  v88 = *(v0 + 416);

  result = [v88 actionSets];
  if (!result)
  {
LABEL_76:
    __break(1u);
    return result;
  }

  v89 = result;
  sub_229562F68(0, &qword_281401C20, off_278666020);
  v90 = sub_22A4DD83C();
  *(v0 + 592) = v90;

  if (!(v90 >> 62))
  {
    v91 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 600) = v91;
    if (!v91)
    {
      goto LABEL_45;
    }

    goto LABEL_34;
  }

LABEL_44:
  v91 = sub_22A4DE0EC();
  *(v0 + 600) = v91;
  if (!v91)
  {
LABEL_45:
    v101 = *(v0 + 592);
    v102 = *(v0 + 416);

    v103 = [v102 accessories];
    sub_229562F68(0, &qword_281401C30, off_278665FE8);
    v104 = sub_22A4DD83C();
    *(v0 + 608) = v104;

    if (!(v104 >> 62))
    {
      v105 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 616) = v105;
      if (v105)
      {
LABEL_47:
        if (v105 < 1)
        {
          __break(1u);
        }

        else
        {
          *(v0 + 664) = 0;
          v106 = *(v0 + 608);
          if ((v106 & 0xC000000000000001) != 0)
          {
            v107 = MEMORY[0x22AAD13F0](0);
          }

          else
          {
            v107 = *(v106 + 32);
          }

          v108 = v107;
          *(v0 + 672) = v107;
          v109 = *(v0 + 528);
          v110 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
          *(v0 + 280) = v109;
          *(v0 + 288) = &off_283CDDAD8;
          v111 = __swift_allocate_boxed_opaque_existential_1((v0 + 256));
          sub_2295D1ED0(v110, v111, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          v112 = __swift_project_boxed_opaque_existential_0((v0 + 256), *(v0 + 280));
          *(v0 + 320) = v109;
          *(v0 + 328) = &off_283CDDAD8;
          v113 = __swift_allocate_boxed_opaque_existential_1((v0 + 296));
          sub_2295D1ED0(v112, v113, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          __swift_project_boxed_opaque_existential_0((v0 + 296), *(v0 + 320));
          v114 = [v108 home];
          v115 = sub_2295C08E4(v108, v114);

          v116 = v115[2];
          if (!v116)
          {
            goto LABEL_57;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D460, &unk_22A578600);
          v117 = *(type metadata accessor for HomeDeviceEntity() - 8);
          v118 = *(v117 + 72);
          v119 = (*(v117 + 80) + 32) & ~*(v117 + 80);
          v120 = swift_allocObject();
          result = _swift_stdlib_malloc_size(v120);
          if (v118)
          {
            if (result - v119 != 0x8000000000000000 || v118 != -1)
            {
              v120[2] = v116;
              v120[3] = 2 * ((result - v119) / v118);
              v121 = sub_22971573C((v0 + 336), v120 + v119, v116, v115);
              v122 = *(v0 + 336);
              v123 = *(v0 + 344);
              v124 = *(v0 + 352);
              v125 = *(v0 + 360);
              v126 = *(v0 + 368);
              sub_22953EE84();
              if (v121 == v116)
              {
LABEL_58:
                *(v0 + 680) = v120;
                v144 = sub_2295CBA38;
                v127 = swift_task_alloc();
                *(v0 + 688) = v127;
                *v127 = v0;
                v127[1] = sub_2295CF108;
                v51 = v120;
LABEL_27:

                return v144(v51);
              }

              __break(1u);
LABEL_57:

              v120 = MEMORY[0x277D84F90];
              goto LABEL_58;
            }

            goto LABEL_75;
          }
        }

        __break(1u);
        goto LABEL_70;
      }

LABEL_61:
      v128 = *(v0 + 608);
      v129 = *(v0 + 416);

      v130 = [v129 serviceGroups];
      sub_229562F68(0, &unk_281401B60, off_278666318);
      v131 = sub_22A4DD83C();
      *(v0 + 624) = v131;

      if (!(v131 >> 62))
      {
        result = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v0 + 632) = result;
        if (!result)
        {
LABEL_71:
          v137 = *(v0 + 624);
          v138 = *(v0 + 496);
          v140 = *(v0 + 464);
          v139 = *(v0 + 472);
          v141 = *(v0 + 440);
          sub_2295D1E70(*(v0 + 520), type metadata accessor for HomeEntity);

          __swift_destroy_boxed_opaque_existential_0((v0 + 16));

          v142 = *(v0 + 8);

          return v142();
        }

        goto LABEL_63;
      }

LABEL_70:
      result = sub_22A4DE0EC();
      *(v0 + 632) = result;
      if (!result)
      {
        goto LABEL_71;
      }

LABEL_63:
      if (result < 1)
      {
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      *(v0 + 640) = 0;
      v132 = *(v0 + 624);
      if ((v132 & 0xC000000000000001) != 0)
      {
        v133 = MEMORY[0x22AAD13F0](0);
      }

      else
      {
        v133 = *(v132 + 32);
      }

      v94 = v133;
      *(v0 + 648) = v133;
      v134 = *(v0 + 528);
      v135 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      *(v0 + 400) = v134;
      *(v0 + 408) = &off_283CDDAD8;
      v136 = __swift_allocate_boxed_opaque_existential_1((v0 + 376));
      sub_2295D1ED0(v135, v136, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
      v98 = __swift_project_boxed_opaque_existential_0((v0 + 376), *(v0 + 400));
      v145 = sub_2295CCCA0;
      v99 = swift_task_alloc();
      *(v0 + 656) = v99;
      *v99 = v0;
      v100 = sub_2295CEDFC;
      goto LABEL_39;
    }

LABEL_60:
    v105 = sub_22A4DE0EC();
    *(v0 + 616) = v105;
    if (v105)
    {
      goto LABEL_47;
    }

    goto LABEL_61;
  }

LABEL_34:
  if (v91 < 1)
  {
    __break(1u);
    goto LABEL_60;
  }

  *(v0 + 696) = 0;
  v92 = *(v0 + 592);
  if ((v92 & 0xC000000000000001) != 0)
  {
    v93 = MEMORY[0x22AAD13F0](0);
  }

  else
  {
    v93 = *(v92 + 32);
  }

  v94 = v93;
  *(v0 + 704) = v93;
  v95 = *(v0 + 528);
  v96 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  *(v0 + 240) = v95;
  *(v0 + 248) = &off_283CDDAD8;
  v97 = __swift_allocate_boxed_opaque_existential_1((v0 + 216));
  sub_2295D1ED0(v96, v97, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  v98 = __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
  v145 = sub_2295CD29C;
  v99 = swift_task_alloc();
  *(v0 + 712) = v99;
  *v99 = v0;
  v100 = sub_2295CF734;
LABEL_39:
  v99[1] = v100;

  return (v145)(v94, v98);
}

uint64_t sub_2295CEDFC()
{
  v1 = *v0;
  v2 = *(*v0 + 656);
  v4 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 376));

  return MEMORY[0x2822009F8](sub_2295CEF00, 0, 0);
}

uint64_t sub_2295CEF00()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 624);
    v4 = *(v0 + 496);
    v6 = *(v0 + 464);
    v5 = *(v0 + 472);
    v7 = *(v0 + 440);
    sub_2295D1E70(*(v0 + 520), type metadata accessor for HomeEntity);

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 640) + 1;
    *(v0 + 640) = v10;
    v11 = *(v0 + 624);
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x22AAD13F0]();
    }

    else
    {
      v12 = *(v11 + 8 * v10 + 32);
    }

    v13 = v12;
    *(v0 + 648) = v12;
    v14 = *(v0 + 528);
    v15 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    *(v0 + 400) = v14;
    *(v0 + 408) = &off_283CDDAD8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 376));
    sub_2295D1ED0(v15, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    v17 = __swift_project_boxed_opaque_existential_0((v0 + 376), *(v0 + 400));
    v18 = swift_task_alloc();
    *(v0 + 656) = v18;
    *v18 = v0;
    v18[1] = sub_2295CEDFC;

    return (sub_2295CCCA0)(v13, v17);
  }
}

uint64_t sub_2295CF108()
{
  v1 = *v0;
  v2 = *(*v0 + 688);
  v3 = *(*v0 + 680);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 296));
  __swift_destroy_boxed_opaque_existential_0((v1 + 256));

  return MEMORY[0x2822009F8](sub_2295CF230, 0, 0);
}

uint64_t sub_2295CF230()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 616);

  if (v1 + 1 != v2)
  {
    v10 = *(v0 + 664) + 1;
    *(v0 + 664) = v10;
    v11 = *(v0 + 608);
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x22AAD13F0]();
    }

    else
    {
      v12 = *(v11 + 8 * v10 + 32);
    }

    v13 = v12;
    *(v0 + 672) = v12;
    v14 = *(v0 + 528);
    v15 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    *(v0 + 280) = v14;
    *(v0 + 288) = &off_283CDDAD8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 256));
    sub_2295D1ED0(v15, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    v17 = __swift_project_boxed_opaque_existential_0((v0 + 256), *(v0 + 280));
    *(v0 + 320) = v14;
    *(v0 + 328) = &off_283CDDAD8;
    v18 = __swift_allocate_boxed_opaque_existential_1((v0 + 296));
    sub_2295D1ED0(v17, v18, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    __swift_project_boxed_opaque_existential_0((v0 + 296), *(v0 + 320));
    v19 = [v13 home];
    v20 = sub_2295C08E4(v13, v19);

    v21 = v20[2];
    if (v21)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D460, &unk_22A578600);
      v22 = *(type metadata accessor for HomeDeviceEntity() - 8);
      v23 = *(v22 + 72);
      v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v25 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v25);
      if (!v23)
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      if (result - v24 == 0x8000000000000000 && v23 == -1)
      {
        goto LABEL_32;
      }

      v25[2] = v21;
      v25[3] = 2 * ((result - v24) / v23);
      v27 = sub_22971573C((v0 + 336), v25 + v24, v21, v20);
      v28 = *(v0 + 336);
      v29 = *(v0 + 344);
      v30 = *(v0 + 352);
      v31 = *(v0 + 360);
      v32 = *(v0 + 368);
      sub_22953EE84();
      if (v27 == v21)
      {
        goto LABEL_19;
      }

      __break(1u);
    }

    v25 = MEMORY[0x277D84F90];
LABEL_19:
    *(v0 + 680) = v25;
    v33 = swift_task_alloc();
    *(v0 + 688) = v33;
    *v33 = v0;
    v33[1] = sub_2295CF108;

    return (sub_2295CBA38)(v25);
  }

  v3 = *(v0 + 608);
  v4 = *(v0 + 416);

  v5 = [v4 serviceGroups];
  sub_229562F68(0, &unk_281401B60, off_278666318);
  v6 = sub_22A4DD83C();
  *(v0 + 624) = v6;

  if (v6 >> 62)
  {
    result = sub_22A4DE0EC();
    *(v0 + 632) = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 632) = result;
    if (result)
    {
LABEL_4:
      if (result >= 1)
      {
        *(v0 + 640) = 0;
        v8 = *(v0 + 624);
        if ((v8 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x22AAD13F0](0);
        }

        else
        {
          v9 = *(v8 + 32);
        }

        v34 = v9;
        *(v0 + 648) = v9;
        v35 = *(v0 + 528);
        v36 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
        *(v0 + 400) = v35;
        *(v0 + 408) = &off_283CDDAD8;
        v37 = __swift_allocate_boxed_opaque_existential_1((v0 + 376));
        sub_2295D1ED0(v36, v37, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        v38 = __swift_project_boxed_opaque_existential_0((v0 + 376), *(v0 + 400));
        v39 = swift_task_alloc();
        *(v0 + 656) = v39;
        *v39 = v0;
        v39[1] = sub_2295CEDFC;

        return (sub_2295CCCA0)(v34, v38);
      }

      __break(1u);
      goto LABEL_31;
    }
  }

  v40 = *(v0 + 624);
  v41 = *(v0 + 496);
  v43 = *(v0 + 464);
  v42 = *(v0 + 472);
  v44 = *(v0 + 440);
  sub_2295D1E70(*(v0 + 520), type metadata accessor for HomeEntity);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_2295CF734()
{
  v1 = *v0;
  v2 = *(*v0 + 712);
  v4 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 216));

  return MEMORY[0x2822009F8](sub_2295CF838, 0, 0);
}

uint64_t sub_2295CF838()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 600);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 592);
    v4 = *(v0 + 416);

    v5 = [v4 accessories];
    sub_229562F68(0, &qword_281401C30, off_278665FE8);
    v6 = sub_22A4DD83C();
    *(v0 + 608) = v6;

    if (v6 >> 62)
    {
      v7 = sub_22A4DE0EC();
      *(v0 + 616) = v7;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 616) = v7;
      if (v7)
      {
LABEL_4:
        if (v7 < 1)
        {
          __break(1u);
        }

        else
        {
          *(v0 + 664) = 0;
          v8 = *(v0 + 608);
          if ((v8 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x22AAD13F0](0);
          }

          else
          {
            v9 = *(v8 + 32);
          }

          v21 = v9;
          *(v0 + 672) = v9;
          v22 = *(v0 + 528);
          v23 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
          *(v0 + 280) = v22;
          *(v0 + 288) = &off_283CDDAD8;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 256));
          sub_2295D1ED0(v23, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          v25 = __swift_project_boxed_opaque_existential_0((v0 + 256), *(v0 + 280));
          *(v0 + 320) = v22;
          *(v0 + 328) = &off_283CDDAD8;
          v26 = __swift_allocate_boxed_opaque_existential_1((v0 + 296));
          sub_2295D1ED0(v25, v26, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          __swift_project_boxed_opaque_existential_0((v0 + 296), *(v0 + 320));
          v27 = [v21 home];
          v28 = sub_2295C08E4(v21, v27);

          v29 = v28[2];
          if (!v29)
          {
            goto LABEL_21;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D460, &unk_22A578600);
          v30 = *(type metadata accessor for HomeDeviceEntity() - 8);
          v31 = *(v30 + 72);
          v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
          v33 = swift_allocObject();
          result = _swift_stdlib_malloc_size(v33);
          if (v31)
          {
            if (result - v32 != 0x8000000000000000 || v31 != -1)
            {
              v33[2] = v29;
              v33[3] = 2 * ((result - v32) / v31);
              v34 = sub_22971573C((v0 + 336), v33 + v32, v29, v28);
              v35 = *(v0 + 336);
              v36 = *(v0 + 344);
              v37 = *(v0 + 352);
              v38 = *(v0 + 360);
              v39 = *(v0 + 368);
              sub_22953EE84();
              if (v34 == v29)
              {
LABEL_22:
                *(v0 + 680) = v33;
                v40 = swift_task_alloc();
                *(v0 + 688) = v40;
                *v40 = v0;
                v40[1] = sub_2295CF108;

                return (sub_2295CBA38)(v33);
              }

              __break(1u);
LABEL_21:

              v33 = MEMORY[0x277D84F90];
              goto LABEL_22;
            }

LABEL_40:
            __break(1u);
            return result;
          }
        }

        __break(1u);
        goto LABEL_35;
      }
    }

    v41 = *(v0 + 608);
    v42 = *(v0 + 416);

    v43 = [v42 serviceGroups];
    sub_229562F68(0, &unk_281401B60, off_278666318);
    v44 = sub_22A4DD83C();
    *(v0 + 624) = v44;

    if (!(v44 >> 62))
    {
      result = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 632) = result;
      if (!result)
      {
LABEL_36:
        v50 = *(v0 + 624);
        v51 = *(v0 + 496);
        v53 = *(v0 + 464);
        v52 = *(v0 + 472);
        v54 = *(v0 + 440);
        sub_2295D1E70(*(v0 + 520), type metadata accessor for HomeEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));

        v55 = *(v0 + 8);

        return v55();
      }

      goto LABEL_28;
    }

LABEL_35:
    result = sub_22A4DE0EC();
    *(v0 + 632) = result;
    if (!result)
    {
      goto LABEL_36;
    }

LABEL_28:
    if (result < 1)
    {
      __break(1u);
      goto LABEL_40;
    }

    *(v0 + 640) = 0;
    v45 = *(v0 + 624);
    if ((v45 & 0xC000000000000001) != 0)
    {
      v46 = MEMORY[0x22AAD13F0](0);
    }

    else
    {
      v46 = *(v45 + 32);
    }

    v13 = v46;
    *(v0 + 648) = v46;
    v47 = *(v0 + 528);
    v48 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    *(v0 + 400) = v47;
    *(v0 + 408) = &off_283CDDAD8;
    v49 = __swift_allocate_boxed_opaque_existential_1((v0 + 376));
    sub_2295D1ED0(v48, v49, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    v17 = __swift_project_boxed_opaque_existential_0((v0 + 376), *(v0 + 400));
    v56 = sub_2295CCCA0;
    v18 = swift_task_alloc();
    *(v0 + 656) = v18;
    *v18 = v0;
    v19 = sub_2295CEDFC;
    goto LABEL_11;
  }

  v10 = *(v0 + 696) + 1;
  *(v0 + 696) = v10;
  v11 = *(v0 + 592);
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x22AAD13F0]();
  }

  else
  {
    v12 = *(v11 + 8 * v10 + 32);
  }

  v13 = v12;
  *(v0 + 704) = v12;
  v14 = *(v0 + 528);
  v15 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  *(v0 + 240) = v14;
  *(v0 + 248) = &off_283CDDAD8;
  v16 = __swift_allocate_boxed_opaque_existential_1((v0 + 216));
  sub_2295D1ED0(v15, v16, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  v17 = __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
  v56 = sub_2295CD29C;
  v18 = swift_task_alloc();
  *(v0 + 712) = v18;
  *v18 = v0;
  v19 = sub_2295CF734;
LABEL_11:
  v18[1] = v19;

  return (v56)(v13, v17);
}

uint64_t sub_2295CFEA8()
{
  v1 = *v0;
  v2 = *(*v0 + 744);
  v3 = *(*v0 + 736);
  v4 = (*(v1 + 788) + 32) & ~*(v1 + 788);
  v6 = *v0;

  swift_setDeallocating();
  sub_2295D1E70(v3 + v4, type metadata accessor for ZoneEntity);
  swift_deallocClassInstance();
  __swift_destroy_boxed_opaque_existential_0((v1 + 176));
  __swift_destroy_boxed_opaque_existential_0((v1 + 136));

  return MEMORY[0x2822009F8](sub_2295D0010, 0, 0);
}

uint64_t sub_2295D0010()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 584);

  if (v1 + 1 != v2)
  {
    v11 = *(v0 + 720) + 1;
    *(v0 + 720) = v11;
    v12 = *(v0 + 576);
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x22AAD13F0]();
    }

    else
    {
      v13 = *(v12 + 8 * v11 + 32);
    }

    v14 = v13;
    *(v0 + 728) = v13;
    v15 = *(v0 + 528);
    v16 = *(v0 + 488);
    v17 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    *(v0 + 160) = v15;
    *(v0 + 168) = &off_283CDDAD8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    sub_2295D1ED0(v17, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    v19 = __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
    *(v0 + 200) = v15;
    *(v0 + 208) = &off_283CDDAD8;
    v20 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
    sub_2295D1ED0(v19, v20, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    __swift_project_boxed_opaque_existential_0((v0 + 176), *(v0 + 200));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9D0, &qword_22A5798B8);
    v21 = *(v16 + 72);
    v22 = *(v16 + 80);
    *(v0 + 788) = v22;
    v23 = (v22 + 32) & ~v22;
    v24 = swift_allocObject();
    *(v0 + 736) = v24;
    *(v24 + 16) = xmmword_22A576180;
    v25 = v14;
    v26 = [v25 urlString];
    if (v26)
    {
      v27 = v26;
      v28 = sub_22A4DD5EC();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v31 = *(v0 + 496);
    v32 = *(v0 + 480);
    *v31 = v28;
    v31[1] = v30;
    v33 = [v25 spiClientIdentifier];
    v34 = v31 + *(v32 + 20);
    sub_22A4DB79C();

    v35 = [v25 name];
    v36 = sub_22A4DD5EC();
    v38 = v37;

    v39 = (v31 + *(v32 + 24));
    *v39 = v36;
    v39[1] = v38;
    sub_2295D1E08(v31, v24 + v23, type metadata accessor for ZoneEntity);
    v91 = sub_2295CAF38;
    v40 = swift_task_alloc();
    *(v0 + 744) = v40;
    *v40 = v0;
    v40[1] = sub_2295CFEA8;
    v41 = v24;
    goto LABEL_15;
  }

  v3 = *(v0 + 576);
  v4 = *(v0 + 416);

  result = [v4 actionSets];
  if (!result)
  {
LABEL_55:
    __break(1u);
    return result;
  }

  v6 = result;
  sub_229562F68(0, &qword_281401C20, off_278666020);
  v7 = sub_22A4DD83C();
  *(v0 + 592) = v7;

  if (v7 >> 62)
  {
    v8 = sub_22A4DE0EC();
    *(v0 + 600) = v8;
    if (v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 600) = v8;
    if (v8)
    {
LABEL_5:
      if (v8 >= 1)
      {
        *(v0 + 696) = 0;
        v9 = *(v0 + 592);
        if ((v9 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x22AAD13F0](0);
        }

        else
        {
          v10 = *(v9 + 32);
        }

        v42 = v10;
        *(v0 + 704) = v10;
        v43 = *(v0 + 528);
        v44 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
        *(v0 + 240) = v43;
        *(v0 + 248) = &off_283CDDAD8;
        v45 = __swift_allocate_boxed_opaque_existential_1((v0 + 216));
        sub_2295D1ED0(v44, v45, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        v46 = __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
        v92 = sub_2295CD29C;
        v47 = swift_task_alloc();
        *(v0 + 712) = v47;
        *v47 = v0;
        v48 = sub_2295CF734;
LABEL_20:
        v47[1] = v48;

        return (v92)(v42, v46);
      }

      __break(1u);
      goto LABEL_39;
    }
  }

  v49 = *(v0 + 592);
  v50 = *(v0 + 416);

  v51 = [v50 accessories];
  sub_229562F68(0, &qword_281401C30, off_278665FE8);
  v52 = sub_22A4DD83C();
  *(v0 + 608) = v52;

  if (!(v52 >> 62))
  {
    v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 616) = v53;
    if (!v53)
    {
      goto LABEL_40;
    }

    goto LABEL_26;
  }

LABEL_39:
  v53 = sub_22A4DE0EC();
  *(v0 + 616) = v53;
  if (!v53)
  {
LABEL_40:
    v76 = *(v0 + 608);
    v77 = *(v0 + 416);

    v78 = [v77 serviceGroups];
    sub_229562F68(0, &unk_281401B60, off_278666318);
    v79 = sub_22A4DD83C();
    *(v0 + 624) = v79;

    if (!(v79 >> 62))
    {
      result = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 632) = result;
      if (result)
      {
LABEL_42:
        if (result >= 1)
        {
          *(v0 + 640) = 0;
          v80 = *(v0 + 624);
          if ((v80 & 0xC000000000000001) != 0)
          {
            v81 = MEMORY[0x22AAD13F0](0);
          }

          else
          {
            v81 = *(v80 + 32);
          }

          v42 = v81;
          *(v0 + 648) = v81;
          v82 = *(v0 + 528);
          v83 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
          *(v0 + 400) = v82;
          *(v0 + 408) = &off_283CDDAD8;
          v84 = __swift_allocate_boxed_opaque_existential_1((v0 + 376));
          sub_2295D1ED0(v83, v84, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          v46 = __swift_project_boxed_opaque_existential_0((v0 + 376), *(v0 + 400));
          v92 = sub_2295CCCA0;
          v47 = swift_task_alloc();
          *(v0 + 656) = v47;
          *v47 = v0;
          v48 = sub_2295CEDFC;
          goto LABEL_20;
        }

        __break(1u);
        goto LABEL_54;
      }

      goto LABEL_50;
    }

LABEL_49:
    result = sub_22A4DE0EC();
    *(v0 + 632) = result;
    if (result)
    {
      goto LABEL_42;
    }

LABEL_50:
    v85 = *(v0 + 624);
    v86 = *(v0 + 496);
    v88 = *(v0 + 464);
    v87 = *(v0 + 472);
    v89 = *(v0 + 440);
    sub_2295D1E70(*(v0 + 520), type metadata accessor for HomeEntity);

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v90 = *(v0 + 8);

    return v90();
  }

LABEL_26:
  if (v53 < 1)
  {
    __break(1u);
    goto LABEL_48;
  }

  *(v0 + 664) = 0;
  v54 = *(v0 + 608);
  if ((v54 & 0xC000000000000001) != 0)
  {
    v55 = MEMORY[0x22AAD13F0](0);
  }

  else
  {
    v55 = *(v54 + 32);
  }

  v56 = v55;
  *(v0 + 672) = v55;
  v57 = *(v0 + 528);
  v58 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  *(v0 + 280) = v57;
  *(v0 + 288) = &off_283CDDAD8;
  v59 = __swift_allocate_boxed_opaque_existential_1((v0 + 256));
  sub_2295D1ED0(v58, v59, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  v60 = __swift_project_boxed_opaque_existential_0((v0 + 256), *(v0 + 280));
  *(v0 + 320) = v57;
  *(v0 + 328) = &off_283CDDAD8;
  v61 = __swift_allocate_boxed_opaque_existential_1((v0 + 296));
  sub_2295D1ED0(v60, v61, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  __swift_project_boxed_opaque_existential_0((v0 + 296), *(v0 + 320));
  v62 = [v56 home];
  v63 = sub_2295C08E4(v56, v62);

  v64 = v63[2];
  if (!v64)
  {
    goto LABEL_36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D460, &unk_22A578600);
  v65 = *(type metadata accessor for HomeDeviceEntity() - 8);
  v66 = *(v65 + 72);
  v67 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v68 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v68);
  if (!v66)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (result - v67 == 0x8000000000000000 && v66 == -1)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v68[2] = v64;
  v68[3] = 2 * ((result - v67) / v66);
  v69 = sub_22971573C((v0 + 336), v68 + v67, v64, v63);
  v70 = *(v0 + 336);
  v71 = *(v0 + 344);
  v72 = *(v0 + 352);
  v73 = *(v0 + 360);
  v74 = *(v0 + 368);
  sub_22953EE84();
  if (v69 == v64)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_36:

  v68 = MEMORY[0x277D84F90];
LABEL_37:
  *(v0 + 680) = v68;
  v91 = sub_2295CBA38;
  v75 = swift_task_alloc();
  *(v0 + 688) = v75;
  *v75 = v0;
  v75[1] = sub_2295CF108;
  v41 = v68;
LABEL_15:

  return (v91)(v41);
}

uint64_t sub_2295D0968()
{
  v1 = *(*v0 + 776);
  v2 = *(*v0 + 768);
  v3 = (*(*v0 + 792) + 32) & ~*(*v0 + 792);
  v5 = *v0;

  swift_setDeallocating();
  sub_2295D1E70(v2 + v3, type metadata accessor for RoomEntity);
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_2295D0AB8, 0, 0);
}

uint64_t sub_2295D0AB8()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 560);
  v3 = *(v0 + 752) + 1;
  sub_2295D1E70(*(v0 + 472), type metadata accessor for RoomEntity);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  if (v3 != v2)
  {
    v12 = *(v0 + 752) + 5;
    *&v4 = 138412290;
    v144 = v4;
    while (1)
    {
      *(v0 + 752) = v12 - 4;
      v18 = *(v0 + 552);
      v19 = (v18 & 0xC000000000000001) != 0 ? MEMORY[0x22AAD13F0]() : *(v18 + 8 * v12);
      v20 = v19;
      *(v0 + 760) = v19;
      v21 = *(v0 + 528);
      v22 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      *(v0 + 80) = v21;
      *(v0 + 88) = &off_283CDDAD8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
      sub_2295D1ED0(v22, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
      v24 = __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
      *(v0 + 120) = v21;
      *(v0 + 128) = &off_283CDDAD8;
      v25 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
      sub_2295D1ED0(v24, v25, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
      v26 = [v20 home];
      if (v26)
      {
        break;
      }

      v27 = *(v0 + 568);
      v29 = *(v0 + 440);
      v28 = *(v0 + 448);
      sub_22A4DD5EC();
      off_283CDD788();
      sub_22A4DD06C();
      v30 = v20;
      v31 = sub_22A4DD05C();
      v32 = sub_22A4DDCEC();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = v144;
        *(v33 + 4) = v30;
        *v34 = v30;
        v35 = v30;
        _os_log_impl(&dword_229538000, v31, v32, "room %@ has no home", v33, 0xCu);
        sub_22953EAE4(v34, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v34, -1, -1);
        MEMORY[0x22AAD4E50](v33, -1, -1);
      }

      v13 = *(v0 + 560);
      v15 = *(v0 + 432);
      v14 = *(v0 + 440);
      v16 = *(v0 + 424);

      (*(v15 + 8))(v14, v16);
      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));

      v17 = v12 - 3;
      ++v12;
      if (v17 == v13)
      {
        goto LABEL_2;
      }
    }

    v36 = v26;
    v37 = v20;
    v38 = [v37 urlString];
    if (v38)
    {
      v39 = v38;
      v40 = sub_22A4DD5EC();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    v72 = *(v0 + 464);
    v71 = *(v0 + 472);
    v74 = *(v0 + 448);
    v73 = *(v0 + 456);
    v75 = (v72 + *(v74 + 20));
    *v75 = v40;
    v75[1] = v42;
    v76 = [v37 spiClientIdentifier];
    sub_22A4DB79C();

    v77 = [v37 name];
    v78 = sub_22A4DD5EC();
    v80 = v79;

    v81 = (v72 + *(v74 + 24));
    *v81 = v78;
    v81[1] = v80;
    sub_2295D1E08(v72, v71, type metadata accessor for RoomEntity);
    __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D478, &qword_22A5798E0);
    v82 = *(v73 + 72);
    v83 = *(v73 + 80);
    *(v0 + 792) = v83;
    v84 = (v83 + 32) & ~v83;
    v85 = swift_allocObject();
    *(v0 + 768) = v85;
    *(v85 + 16) = xmmword_22A576180;
    sub_2295D1ED0(v71, v85 + v84, type metadata accessor for RoomEntity);
    v145 = sub_2295CA9B8;
    v86 = swift_task_alloc();
    *(v0 + 776) = v86;
    *v86 = v0;
    v86[1] = sub_2295D0968;
    v70 = v85;
    goto LABEL_52;
  }

LABEL_2:
  v5 = *(v0 + 552);
  v6 = *(v0 + 416);

  v7 = [v6 zones];
  sub_229562F68(0, &qword_281401788, off_278666398);
  v8 = sub_22A4DD83C();
  *(v0 + 576) = v8;

  if (v8 >> 62)
  {
    v9 = sub_22A4DE0EC();
    *(v0 + 584) = v9;
    if (v9)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 584) = v9;
    if (v9)
    {
LABEL_4:
      if (v9 >= 1)
      {
        *(v0 + 720) = 0;
        v10 = *(v0 + 576);
        if ((v10 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x22AAD13F0](0);
        }

        else
        {
          v11 = *(v10 + 32);
        }

        v43 = v11;
        *(v0 + 728) = v11;
        v44 = *(v0 + 528);
        v45 = *(v0 + 488);
        v46 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
        *(v0 + 160) = v44;
        *(v0 + 168) = &off_283CDDAD8;
        v47 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
        sub_2295D1ED0(v46, v47, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        v48 = __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
        *(v0 + 200) = v44;
        *(v0 + 208) = &off_283CDDAD8;
        v49 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
        sub_2295D1ED0(v48, v49, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        __swift_project_boxed_opaque_existential_0((v0 + 176), *(v0 + 200));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9D0, &qword_22A5798B8);
        v50 = *(v45 + 72);
        v51 = *(v45 + 80);
        *(v0 + 788) = v51;
        v52 = (v51 + 32) & ~v51;
        v53 = swift_allocObject();
        *(v0 + 736) = v53;
        *(v53 + 16) = xmmword_22A576180;
        v54 = v43;
        v55 = [v54 urlString];
        if (v55)
        {
          v56 = v55;
          v57 = sub_22A4DD5EC();
          v59 = v58;
        }

        else
        {
          v57 = 0;
          v59 = 0;
        }

        v60 = *(v0 + 496);
        v61 = *(v0 + 480);
        *v60 = v57;
        v60[1] = v59;
        v62 = [v54 spiClientIdentifier];
        v63 = v60 + *(v61 + 20);
        sub_22A4DB79C();

        v64 = [v54 name];
        v65 = sub_22A4DD5EC();
        v67 = v66;

        v68 = (v60 + *(v61 + 24));
        *v68 = v65;
        v68[1] = v67;
        sub_2295D1E08(v60, v53 + v52, type metadata accessor for ZoneEntity);
        v145 = sub_2295CAF38;
        v69 = swift_task_alloc();
        *(v0 + 744) = v69;
        *v69 = v0;
        v69[1] = sub_2295CFEA8;
        v70 = v53;
        goto LABEL_52;
      }

      __break(1u);
      goto LABEL_37;
    }
  }

  v87 = *(v0 + 576);
  v88 = *(v0 + 416);

  result = [v88 actionSets];
  if (!result)
  {
LABEL_72:
    __break(1u);
    return result;
  }

  v90 = result;
  sub_229562F68(0, &qword_281401C20, off_278666020);
  v91 = sub_22A4DD83C();
  *(v0 + 592) = v91;

  if (!(v91 >> 62))
  {
    v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 600) = v92;
    if (!v92)
    {
      goto LABEL_38;
    }

    goto LABEL_28;
  }

LABEL_37:
  v92 = sub_22A4DE0EC();
  *(v0 + 600) = v92;
  if (!v92)
  {
LABEL_38:
    v102 = *(v0 + 592);
    v103 = *(v0 + 416);

    v104 = [v103 accessories];
    sub_229562F68(0, &qword_281401C30, off_278665FE8);
    v105 = sub_22A4DD83C();
    *(v0 + 608) = v105;

    if (!(v105 >> 62))
    {
      v106 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 616) = v106;
      if (v106)
      {
LABEL_40:
        if (v106 < 1)
        {
          __break(1u);
        }

        else
        {
          *(v0 + 664) = 0;
          v107 = *(v0 + 608);
          if ((v107 & 0xC000000000000001) != 0)
          {
            v108 = MEMORY[0x22AAD13F0](0);
          }

          else
          {
            v108 = *(v107 + 32);
          }

          v109 = v108;
          *(v0 + 672) = v108;
          v110 = *(v0 + 528);
          v111 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
          *(v0 + 280) = v110;
          *(v0 + 288) = &off_283CDDAD8;
          v112 = __swift_allocate_boxed_opaque_existential_1((v0 + 256));
          sub_2295D1ED0(v111, v112, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          v113 = __swift_project_boxed_opaque_existential_0((v0 + 256), *(v0 + 280));
          *(v0 + 320) = v110;
          *(v0 + 328) = &off_283CDDAD8;
          v114 = __swift_allocate_boxed_opaque_existential_1((v0 + 296));
          sub_2295D1ED0(v113, v114, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          __swift_project_boxed_opaque_existential_0((v0 + 296), *(v0 + 320));
          v115 = [v109 home];
          v116 = sub_2295C08E4(v109, v115);

          v117 = v116[2];
          if (!v117)
          {
            goto LABEL_50;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D460, &unk_22A578600);
          v118 = *(type metadata accessor for HomeDeviceEntity() - 8);
          v119 = *(v118 + 72);
          v120 = (*(v118 + 80) + 32) & ~*(v118 + 80);
          v121 = swift_allocObject();
          result = _swift_stdlib_malloc_size(v121);
          if (v119)
          {
            if (result - v120 != 0x8000000000000000 || v119 != -1)
            {
              v121[2] = v117;
              v121[3] = 2 * ((result - v120) / v119);
              v122 = sub_22971573C((v0 + 336), v121 + v120, v117, v116);
              v123 = *(v0 + 336);
              v124 = *(v0 + 344);
              v125 = *(v0 + 352);
              v126 = *(v0 + 360);
              v127 = *(v0 + 368);
              sub_22953EE84();
              if (v122 == v117)
              {
LABEL_51:
                *(v0 + 680) = v121;
                v145 = sub_2295CBA38;
                v128 = swift_task_alloc();
                *(v0 + 688) = v128;
                *v128 = v0;
                v128[1] = sub_2295CF108;
                v70 = v121;
LABEL_52:

                return v145(v70);
              }

              __break(1u);
LABEL_50:

              v121 = MEMORY[0x277D84F90];
              goto LABEL_51;
            }

            goto LABEL_71;
          }
        }

        __break(1u);
        goto LABEL_66;
      }

LABEL_57:
      v129 = *(v0 + 608);
      v130 = *(v0 + 416);

      v131 = [v130 serviceGroups];
      sub_229562F68(0, &unk_281401B60, off_278666318);
      v132 = sub_22A4DD83C();
      *(v0 + 624) = v132;

      if (!(v132 >> 62))
      {
        result = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v0 + 632) = result;
        if (!result)
        {
LABEL_67:
          v138 = *(v0 + 624);
          v139 = *(v0 + 496);
          v141 = *(v0 + 464);
          v140 = *(v0 + 472);
          v142 = *(v0 + 440);
          sub_2295D1E70(*(v0 + 520), type metadata accessor for HomeEntity);

          __swift_destroy_boxed_opaque_existential_0((v0 + 16));

          v143 = *(v0 + 8);

          return v143();
        }

        goto LABEL_59;
      }

LABEL_66:
      result = sub_22A4DE0EC();
      *(v0 + 632) = result;
      if (!result)
      {
        goto LABEL_67;
      }

LABEL_59:
      if (result < 1)
      {
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      *(v0 + 640) = 0;
      v133 = *(v0 + 624);
      if ((v133 & 0xC000000000000001) != 0)
      {
        v134 = MEMORY[0x22AAD13F0](0);
      }

      else
      {
        v134 = *(v133 + 32);
      }

      v95 = v134;
      *(v0 + 648) = v134;
      v135 = *(v0 + 528);
      v136 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      *(v0 + 400) = v135;
      *(v0 + 408) = &off_283CDDAD8;
      v137 = __swift_allocate_boxed_opaque_existential_1((v0 + 376));
      sub_2295D1ED0(v136, v137, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
      v99 = __swift_project_boxed_opaque_existential_0((v0 + 376), *(v0 + 400));
      v146 = sub_2295CCCA0;
      v100 = swift_task_alloc();
      *(v0 + 656) = v100;
      *v100 = v0;
      v101 = sub_2295CEDFC;
      goto LABEL_33;
    }

LABEL_56:
    v106 = sub_22A4DE0EC();
    *(v0 + 616) = v106;
    if (v106)
    {
      goto LABEL_40;
    }

    goto LABEL_57;
  }

LABEL_28:
  if (v92 < 1)
  {
    __break(1u);
    goto LABEL_56;
  }

  *(v0 + 696) = 0;
  v93 = *(v0 + 592);
  if ((v93 & 0xC000000000000001) != 0)
  {
    v94 = MEMORY[0x22AAD13F0](0);
  }

  else
  {
    v94 = *(v93 + 32);
  }

  v95 = v94;
  *(v0 + 704) = v94;
  v96 = *(v0 + 528);
  v97 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  *(v0 + 240) = v96;
  *(v0 + 248) = &off_283CDDAD8;
  v98 = __swift_allocate_boxed_opaque_existential_1((v0 + 216));
  sub_2295D1ED0(v97, v98, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  v99 = __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
  v146 = sub_2295CD29C;
  v100 = swift_task_alloc();
  *(v0 + 712) = v100;
  *v100 = v0;
  v101 = sub_2295CF734;
LABEL_33:
  v100[1] = v101;

  return (v146)(v95, v99);
}

uint64_t sub_2295D18BC(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v4 = type metadata accessor for CascadeIndexer.CascadeIndexingSession();
  v2[13] = v4;
  v2[5] = v4;
  v2[6] = &off_283CDDAD8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  sub_2295D1ED0(a2, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);

  return MEMORY[0x2822009F8](sub_2295D1964, 0, 0);
}

uint64_t sub_2295D1964()
{
  result = [*(v0 + 96) homes];
  if (!result)
  {
    goto LABEL_16;
  }

  v2 = result;
  sub_229562F68(0, &qword_2814017B0, off_278666198);
  v3 = sub_22A4DD83C();
  *(v0 + 112) = v3;

  if (v3 >> 62)
  {
    result = sub_22A4DE0EC();
    *(v0 + 120) = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 120) = result;
    if (result)
    {
LABEL_4:
      if (result >= 1)
      {
        *(v0 + 128) = 0;
        v4 = *(v0 + 112);
        if ((v4 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x22AAD13F0](0);
        }

        else
        {
          v5 = *(v4 + 32);
        }

        v6 = v5;
        *(v0 + 136) = v5;
        v7 = *(v0 + 104);
        v8 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
        *(v0 + 80) = v7;
        *(v0 + 88) = &off_283CDDAD8;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
        sub_2295D1ED0(v8, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        v10 = __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
        v11 = swift_task_alloc();
        *(v0 + 144) = v11;
        *v11 = v0;
        v11[1] = sub_2295D1B6C;

        return sub_2295CDA44(v6, v10);
      }

      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }
  }

  v12 = *(v0 + 112);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2295D1B6C()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v4 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 56));

  return MEMORY[0x2822009F8](sub_2295D1C70, 0, 0);
}

uint64_t sub_2295D1C70()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 128) + 1;
    *(v0 + 128) = v6;
    v7 = *(v0 + 112);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x22AAD13F0]();
    }

    else
    {
      v8 = *(v7 + 8 * v6 + 32);
    }

    v9 = v8;
    *(v0 + 136) = v8;
    v10 = *(v0 + 104);
    v11 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    *(v0 + 80) = v10;
    *(v0 + 88) = &off_283CDDAD8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    sub_2295D1ED0(v11, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    v13 = __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    v14 = swift_task_alloc();
    *(v0 + 144) = v14;
    *v14 = v0;
    v14[1] = sub_2295D1B6C;

    return sub_2295CDA44(v9, v13);
  }
}

uint64_t sub_2295D1E08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2295D1E70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2295D1ED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2295D1F60()
{
  result = sub_229562F68(319, &qword_281401B18, 0x277CF94B8);
  if (v1 <= 0x3F)
  {
    result = sub_22A4DD07C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2295D1FF4(uint64_t a1, uint64_t a2)
{
  sub_22953EAE4(a2, &qword_27D87DA10, &unk_22A579B50);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9F0, &qword_22A579AD0);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

void sub_2295D20D0(void *a1)
{
  v2 = v1;
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DBA2C();
  v9 = a1;
  v10 = sub_22A4DBA1C();
  v46[5] = &type metadata for HomeGraphTraverser;
  v46[6] = &off_283CDDE60;
  v46[0] = v9;
  v46[1] = v10;
  v11 = [v9 featuresDataSource];

  if (v11)
  {
    v12 = [v11 isCascadeDonationsEnabled];
    swift_unknownObjectRelease();
    if (v12)
    {
      sub_229541CB0(v2, &off_283CDDAE8);
      v13 = sub_22A4DD05C();
      v14 = sub_22A4DDCCC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_229538000, v13, v14, "Cascade indexer is enabled", v15, 2u);
        MEMORY[0x22AAD4E50](v15, -1, -1);
      }

      (*(v5 + 8))(v8, v4);
      v42 = &type metadata for HomeGraphIndexer.DefaultIndexerDataSource;
      v43 = &off_283CDDD98;
      v40 = swift_allocObject();
      sub_2295E8BD8(v46, v40 + 16);
      v16 = type metadata accessor for CascadeIndexer();
      v17 = swift_allocObject();
      v18 = __swift_mutable_project_boxed_opaque_existential_0(&v40, &type metadata for HomeGraphIndexer.DefaultIndexerDataSource);
      MEMORY[0x28223BE20](v18);
      swift_cvw_initWithCopy();
      v38 = &type metadata for HomeGraphIndexer.DefaultIndexerDataSource;
      v39 = &off_283CDDD98;
      v19 = swift_allocObject();
      *&v37 = v19;
      v20 = *(&v36 - 3);
      *(v19 + 16) = *(&v36 - 4);
      *(v19 + 32) = v20;
      *(v19 + 48) = *(&v36 - 2);
      *(v19 + 64) = *(&v36 - 2);
      swift_defaultActor_initialize();
      *(v17 + 176) = sub_22A4DBC7C();
      *(v17 + 184) = sub_2295E9190(&qword_281403838, MEMORY[0x277D0EFE0]);
      __swift_allocate_boxed_opaque_existential_1((v17 + 152));
      sub_22A4DBC6C();
      *(v17 + 208) = 0u;
      *(v17 + 224) = 0u;
      *(v17 + 192) = 0u;
      sub_229557188(&v37, v17 + 112);
      __swift_destroy_boxed_opaque_existential_0(&v40);
      v42 = v16;
      v43 = &off_283CDD9A8;
      v40 = v17;
      v21 = sub_22958AF1C(0, 1, 1, MEMORY[0x277D84F90]);
      v23 = v21[2];
      v22 = v21[3];
      if (v23 >= v22 >> 1)
      {
        v21 = sub_22958AF1C((v22 > 1), v23 + 1, 1, v21);
      }

      v24 = __swift_mutable_project_boxed_opaque_existential_0(&v40, v16);
      v25 = *(*(v16 - 8) + 64);
      MEMORY[0x28223BE20](v24);
      v27 = (&v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v28 + 16))(v27);
      v29 = *v27;
      v38 = v16;
      v39 = &off_283CDD9A8;
      *&v37 = v29;
      v21[2] = v23 + 1;
      sub_229557188(&v37, &v21[5 * v23 + 4]);
      __swift_destroy_boxed_opaque_existential_0(&v40);
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v30 = [objc_opt_self() defaultCenter];
    v43 = &type metadata for HomeGraphIndexer.DefaultIndexerDataSource;
    v44 = &off_283CDDD98;
    v41 = swift_allocObject();
    sub_2295E8BD8(v46, v41 + 16);
    v45 = v21;
    v38 = &type metadata for HomeGraphIndexer.DefaultHomeGraphIndexerDataSource;
    v39 = &off_283CDDD78;
    v40 = v30;
    *&v37 = swift_allocObject();
    sub_2295E8C10(&v40, v37 + 16);
    v31 = type metadata accessor for HomeGraphIndexer(0);
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    v34 = swift_allocObject();
    v35 = __swift_mutable_project_boxed_opaque_existential_0(&v37, &type metadata for HomeGraphIndexer.DefaultHomeGraphIndexerDataSource);
    MEMORY[0x28223BE20](v35);
    swift_cvw_initWithCopy();
    sub_2295E8C48((&v36 - 8), v34);
    __swift_destroy_boxed_opaque_existential_0(&v37);
    sub_2295E8FF0(&v40);
    sub_2295E9020(v46);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2295D263C()
{
  *(v1 + 56) = v0;
  *(v1 + 64) = *v0;
  return MEMORY[0x2822009F8](sub_2295D2684, v0, 0);
}

uint64_t sub_2295D2684()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = __swift_project_boxed_opaque_existential_0((v1 + 112), *(v1 + 136));
  sub_22957F1C4((v3 + 1), (v0 + 2));
  v0[9] = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5])[1];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v4 = swift_allocObject();
  v0[10] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x277D0EF80] + 4);
  v9 = (*MEMORY[0x277D0EF80] + MEMORY[0x277D0EF80]);

  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_2295D27C0;
  v7 = MEMORY[0x277D84F78] + 8;

  return v9(&unk_22A579C80, v4, v7);
}

uint64_t sub_2295D27C0()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2295D2900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = sub_22A4DD07C();
  v3[4] = v5;
  v6 = *(v5 - 8);
  v3[5] = v6;
  v7 = *(v6 + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295D29C4, a2, 0);
}

uint64_t sub_2295D29C4()
{
  v1 = v0[2];
  if (*(__swift_project_boxed_opaque_existential_0((v1 + 112), *(v1 + 136))[6] + 16))
  {
    v2 = __swift_project_boxed_opaque_existential_0((v1 + 112), *(v1 + 136))[6];
    v0[7] = v2;
    v3 = *(v2 + 16);
    v0[8] = v3;
    if (v3)
    {
      v0[9] = objc_opt_self();
      v0[10] = sel_handleDonateNowNotification_;
      v0[11] = 0;
      v4 = v0[7];
      v5 = *(v4 + 56);

      v6 = __swift_project_boxed_opaque_existential_0((v4 + 32), v5);
      v7 = *v6;
      v0[12] = *v6;

      return MEMORY[0x2822009F8](sub_2295D2C0C, v7, 0);
    }

    else
    {
      v18 = swift_task_alloc();
      v0[15] = v18;
      *v18 = v0;
      v18[1] = sub_2295D3080;
      v19 = v0[2];

      return sub_2295D3368();
    }
  }

  else
  {
    v8 = v0[6];
    sub_229541CB0(v0[3], &off_283CDDAE8);
    v9 = sub_22A4DD05C();
    v10 = sub_22A4DDCEC();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[5];
    v12 = v0[6];
    v14 = v0[4];
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_229538000, v9, v10, "There are no indexers enabled. Not starting indexing.", v15, 2u);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }

    (*(v13 + 8))(v12, v14);
    v16 = v0[6];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_2295D2C0C()
{
  v1 = [*(v0 + 72) defaultCenter];
  if (qword_281402BB0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  [v1 addObserver:v2 selector:*(v0 + 80) name:qword_2814050B8 object:0];

  v3 = *(v2 + 136);
  v4 = __swift_project_boxed_opaque_existential_0((v2 + 112), v3);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v3);
  *(v0 + 104) = *(v7 + 8);
  v8 = *(v5 + 8);

  v8(v7, v3);

  v9 = *(MEMORY[0x277D0EF80] + 4);
  v14 = (*MEMORY[0x277D0EF80] + MEMORY[0x277D0EF80]);

  v10 = swift_task_alloc();
  *(v0 + 112) = v10;
  *v10 = v0;
  v10[1] = sub_2295D2E20;
  v11 = *(v0 + 96);
  v12 = MEMORY[0x277D84F78] + 8;

  return v14(&unk_22A579850, v11, v12);
}

uint64_t sub_2295D2E20()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 16);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_2295D2F7C, v4, 0);
}

uint64_t sub_2295D2F7C()
{
  v1 = v0[11] + 1;
  if (v1 == v0[8])
  {
    v2 = v0[7];

    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_2295D3080;
    v4 = v0[2];

    return sub_2295D3368();
  }

  else
  {
    v0[11] = v1;
    v6 = __swift_project_boxed_opaque_existential_0((v0[7] + 40 * v1 + 32), *(v0[7] + 40 * v1 + 56));
    v7 = *v6;
    v0[12] = *v6;

    return MEMORY[0x2822009F8](sub_2295D2C0C, v7, 0);
  }
}

uint64_t sub_2295D3080()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *(v1 + 48);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2295D3194()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  v1 = v0[19];

  v2 = v0[20];

  sub_22953EAE4(v0 + OBJC_IVAR____TtC13HomeKitDaemon16HomeGraphIndexer_notificationContinuation, &qword_27D87DA10, &unk_22A579B50);
  sub_22953EAE4(v0 + OBJC_IVAR____TtC13HomeKitDaemon16HomeGraphIndexer_notificationStream, &qword_27D87DA08, &qword_22A579B48);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_2295D3244()
{
  sub_2295E8A30(319, &unk_281401C78, &qword_27D87D9F0, &qword_22A579AD0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2295E8A30(319, &qword_281401C70, &qword_27D87D9F8, qword_22A579AD8);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2295D3368()
{
  v4 = *MEMORY[0x277D85DE8];
  *(v1 + 656) = v0;
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2295D33F8, v0, 0);
}

uint64_t sub_2295D33F8()
{
  v48 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D480, &qword_22A578620);
  inited = swift_initStackObject();
  v0[83] = inited;
  *(inited + 16) = xmmword_22A5799A0;
  *(inited + 32) = @"HMDNotificationCurrentHomeDidChange";
  *(inited + 40) = sub_2295D3D2C;
  *(inited + 48) = 0;
  *(inited + 56) = @"HMDHomeAddedNotification";
  *(inited + 64) = sub_2295D3D34;
  *(inited + 72) = 0;
  *(inited + 80) = @"HMDHomeNameChangedNotification";
  *(inited + 88) = sub_2295D3DD8;
  *(inited + 96) = 0;
  *(inited + 104) = @"HMDHomeRemovedNotification";
  *(inited + 112) = sub_2295D3DE0;
  *(inited + 120) = 0;
  *(inited + 128) = @"HMDRoomAddedNotification";
  *(inited + 136) = sub_2295D3DE8;
  *(inited + 144) = 0;
  *(inited + 152) = @"HMDRoomNameUpdatedNotification";
  *(inited + 160) = sub_2295D3DF0;
  *(inited + 168) = 0;
  *(inited + 176) = @"HMDRoomRemovedNotification";
  *(inited + 184) = sub_2295D3DF8;
  *(inited + 192) = 0;
  *(inited + 200) = @"HMDZoneAddedNotification";
  *(inited + 208) = sub_2295D3E00;
  *(inited + 216) = 0;
  *(inited + 224) = @"HMDZoneNameChangedNotification";
  *(inited + 232) = sub_2295D3E08;
  *(inited + 240) = 0;
  *(inited + 248) = @"HMDZoneRoomsUpdatedNotification";
  *(inited + 256) = sub_2295D3E10;
  *(inited + 264) = 0;
  *(inited + 272) = @"HMDZoneRemovedNotification";
  *(inited + 280) = sub_2295D3E18;
  *(inited + 288) = 0;
  *(inited + 296) = @"HMDActionSetAddedNotification";
  *(inited + 304) = sub_2295D3E20;
  *(inited + 312) = 0;
  *(inited + 320) = @"HMDActionSetRenamedNotification";
  *(inited + 328) = sub_2295D3E28;
  *(inited + 336) = 0;
  *(inited + 344) = @"HMDActionSetRemovedNotification";
  *(inited + 352) = sub_2295D3E30;
  *(inited + 360) = 0;
  *(inited + 368) = @"HMDServiceGroupAddedNotification";
  *(inited + 376) = sub_2295D3E38;
  *(inited + 384) = 0;
  *(inited + 392) = @"HMDServiceGroupNameChangedNotification";
  *(inited + 400) = sub_2295D3E40;
  *(inited + 408) = 0;
  *(inited + 416) = @"HMDServiceGroupRemovedNotification";
  *(inited + 424) = sub_2295D3E48;
  *(inited + 432) = 0;
  *(inited + 440) = @"HMDNotificationHomeAddedAccessory";
  *(inited + 448) = sub_2295D3E50;
  *(inited + 456) = 0;
  *(inited + 464) = @"kHMDNotificationServicesUpdated";
  *(inited + 472) = sub_2295D3E58;
  *(inited + 480) = 0;
  *(inited + 488) = @"kHMDNotificationCharacteristicsUpdated";
  *(inited + 496) = sub_2295D3E60;
  *(inited + 504) = 0;
  *(inited + 512) = @"HMDNotificationAccessoryChangedRoom";
  *(inited + 520) = sub_2295D3E68;
  *(inited + 528) = 0;
  *(inited + 536) = @"HMDAccessoryNameUpdatedNotification";
  *(inited + 544) = sub_2295D3E70;
  *(inited + 552) = 0;
  *(inited + 560) = @"HMDHomeAccessoryRemovedNotification";
  *(inited + 568) = sub_2295D3E78;
  *(inited + 576) = 0;
  v2 = @"HMDNotificationCurrentHomeDidChange";
  v3 = @"HMDHomeAddedNotification";
  v4 = @"HMDHomeNameChangedNotification";
  v5 = @"HMDHomeRemovedNotification";
  v6 = @"HMDRoomAddedNotification";
  v7 = @"HMDRoomNameUpdatedNotification";
  v8 = @"HMDRoomRemovedNotification";
  v9 = @"HMDZoneAddedNotification";
  v10 = @"HMDZoneNameChangedNotification";
  v11 = @"HMDZoneRoomsUpdatedNotification";
  v12 = @"HMDZoneRemovedNotification";
  v13 = @"HMDActionSetAddedNotification";
  v14 = @"HMDActionSetRenamedNotification";
  v15 = @"HMDActionSetRemovedNotification";
  v16 = @"HMDServiceGroupAddedNotification";
  v17 = @"HMDServiceGroupNameChangedNotification";
  v18 = @"HMDServiceGroupRemovedNotification";
  v19 = @"HMDNotificationHomeAddedAccessory";
  v20 = @"kHMDNotificationServicesUpdated";
  v21 = @"kHMDNotificationCharacteristicsUpdated";
  v22 = @"HMDNotificationAccessoryChangedRoom";
  v23 = @"HMDAccessoryNameUpdatedNotification";
  v24 = @"HMDHomeAccessoryRemovedNotification";
  v25 = @"HMDNotificationRVCAreaMapsUpdated";
  v26 = sub_22958AF40(1, 24, 1, inited);
  v26[2] = 24;
  v26[73] = v25;
  v26[74] = sub_2295D3E80;
  v26[75] = 0;
  v0[81] = MEMORY[0x277D84F90];
  v47 = objc_opt_self();
  for (i = 0; i != 72; i += 3)
  {
    v28 = v0[82];
    v29 = v26[i + 5];
    v30 = v26[i + 6];
    v31 = v26[i + 4];

    v32 = [v47 defaultCenter];
    v33 = swift_allocObject();
    swift_weakInit();
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = v29;
    v34[4] = v30;
    v0[79] = sub_2295E94D0;
    v0[80] = v34;
    v0[75] = MEMORY[0x277D85DD0];
    v0[76] = 1107296256;
    v0[77] = sub_2297739FC;
    v0[78] = &block_descriptor_5;
    v35 = _Block_copy(v0 + 75);
    v36 = v0[80];
    v37 = v31;

    v38 = [v32 addObserverForName:v37 object:0 queue:0 usingBlock:v35];
    _Block_release(v35);

    v39 = swift_unknownObjectRetain();
    MEMORY[0x22AAD09E0](v39);
    if (*((v0[81] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[81] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22A4DD85C();
    }

    sub_22A4DD87C();

    swift_unknownObjectRelease();
  }

  v40 = v0[82];
  v41 = v0[81];

  v42 = *(v40 + 160);
  *(v40 + 160) = v41;

  v43 = swift_task_alloc();
  v0[84] = v43;
  *v43 = v0;
  v43[1] = sub_2295D3B6C;
  v44 = v0[82];
  v45 = *MEMORY[0x277D85DE8];

  return sub_2295D45F4();
}

uint64_t sub_2295D3B6C()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 672);
  v2 = *(*v0 + 656);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2295D3CA8, v2, 0);
}

uint64_t sub_2295D3CA8()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8);
  v2 = *MEMORY[0x277D85DE8];

  return v1();
}

uint64_t sub_2295D3D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for HomeGraphIndexer.NotificationType(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2295D3E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v27 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = sub_22A4DB21C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v27 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    (*(v9 + 16))(v12, v27, v8);
    MEMORY[0x22AACEC10](v12, v8);
    v22 = sub_22A4DD9DC();
    (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
    (*(v14 + 16))(v17, v19, v13);
    v23 = (*(v14 + 80) + 56) & ~*(v14 + 80);
    v24 = swift_allocObject();
    *(v24 + 2) = 0;
    *(v24 + 3) = 0;
    v25 = v28;
    v26 = v29;
    *(v24 + 4) = v21;
    *(v24 + 5) = v25;
    *(v24 + 6) = v26;
    (*(v14 + 32))(&v24[v23], v17, v13);

    sub_22957F3C0(0, 0, v7, &unk_22A579C60, v24);

    return (*(v14 + 8))(v19, v13);
  }

  return result;
}

uint64_t sub_2295D41A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9F0, &qword_22A579AD0);
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA10, &unk_22A579B50) - 8) + 64) + 15;
  v7[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA50, &qword_22A579C68) - 8) + 64) + 15;
  v7[13] = swift_task_alloc();
  v13 = *(*(type metadata accessor for HomeGraphIndexer.NotificationType(0) - 8) + 64) + 15;
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295D4320, 0, 0);
}

uint64_t sub_2295D4320()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  (*(v0 + 48))(*(v0 + 64));

  return MEMORY[0x2822009F8](sub_2295D4394, v3, 0);
}

uint64_t sub_2295D4394()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC13HomeKitDaemon16HomeGraphIndexer_notificationContinuation;
  swift_beginAccess();
  sub_229564F88(v4 + v5, v1, &qword_27D87DA10, &unk_22A579B50);
  v6 = (*(v3 + 48))(v1, 1, v2);
  v7 = v0[15];
  if (v6)
  {
    v8 = v0[12];
    sub_2295E9130(v0[15], type metadata accessor for HomeGraphIndexer.NotificationType);
    sub_22953EAE4(v8, &qword_27D87DA10, &unk_22A579B50);
    v9 = 1;
  }

  else
  {
    v11 = v0[13];
    v10 = v0[14];
    v13 = v0[11];
    v12 = v0[12];
    v14 = v0[9];
    v15 = v0[10];
    (*(v15 + 16))(v13, v12, v14);
    sub_22953EAE4(v12, &qword_27D87DA10, &unk_22A579B50);
    sub_2295E91D8(v7, v10, type metadata accessor for HomeGraphIndexer.NotificationType);
    sub_22A4DDA0C();
    (*(v15 + 8))(v13, v14);
    sub_2295E9130(v7, type metadata accessor for HomeGraphIndexer.NotificationType);
    v9 = 0;
  }

  v17 = v0[14];
  v16 = v0[15];
  v19 = v0[12];
  v18 = v0[13];
  v20 = v0[11];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA58, &qword_22A579C70);
  (*(*(v21 - 8) + 56))(v18, v9, 1, v21);
  sub_22953EAE4(v18, &qword_27D87DA50, &qword_22A579C68);

  v22 = v0[1];

  return v22();
}

uint64_t sub_2295D45F4()
{
  v1[5] = v0;
  v1[6] = *v0;
  v2 = sub_22A4DD07C();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA08, &qword_22A579B48) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9F8, qword_22A579AD8);
  v1[12] = v7;
  v8 = *(v7 - 8);
  v1[13] = v8;
  v1[14] = *(v8 + 64);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295D47C8, v0, 0);
}

uint64_t sub_2295D47C8()
{
  v1 = v0[5];
  v2 = v1;
  if (*(v1 + 152))
  {
    v3 = *(v1 + 152);

    sub_22A4DDA7C();

    v2 = v0[5];
  }

  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[11];
  v7 = OBJC_IVAR____TtC13HomeKitDaemon16HomeGraphIndexer_notificationStream;
  swift_beginAccess();
  sub_229564F88(v2 + v7, v6, &qword_27D87DA08, &qword_22A579B48);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v8 = v0[9];
    v9 = v0[6];
    sub_22953EAE4(v0[11], &qword_27D87DA08, &qword_22A579B48);
    sub_229541CB0(v9, &off_283CDDAE8);
    v10 = sub_22A4DD05C();
    v11 = sub_22A4DDCEC();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[8];
    v13 = v0[9];
    v15 = v0[7];
    if (v12)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_229538000, v10, v11, "Notification stream is nil", v16, 2u);
      MEMORY[0x22AAD4E50](v16, -1, -1);
    }

    (*(v14 + 8))(v13, v15);
  }

  else
  {
    v18 = v0[15];
    v17 = v0[16];
    v19 = v0[13];
    v20 = v0[12];
    v21 = v0[10];
    v36 = v21;
    v37 = v0[14];
    v22 = v0[5];
    v38 = *(v19 + 32);
    v38(v17, v0[11], v20);
    v23 = sub_22A4DD9DC();
    (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
    v24 = swift_allocObject();
    swift_weakInit();
    (*(v19 + 16))(v18, v17, v20);
    v25 = (*(v19 + 80) + 40) & ~*(v19 + 80);
    v26 = swift_allocObject();
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 4) = v24;
    v38(&v26[v25], v18, v20);
    v27 = sub_22957F3C0(0, 0, v36, &unk_22A579C38, v26);
    (*(v19 + 8))(v17, v20);
    v28 = *(v1 + 152);
    *(v1 + 152) = v27;
  }

  v30 = v0[15];
  v29 = v0[16];
  v32 = v0[10];
  v31 = v0[11];
  v33 = v0[9];

  v34 = v0[1];

  return v34();
}

uint64_t sub_2295D4B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for HomeGraphIndexer.NotificationType(0);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA40, &qword_22A579C40) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA48, &unk_22A579C48);
  v5[11] = v10;
  v11 = *(v10 - 8);
  v5[12] = v11;
  v12 = *(v11 + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295D4C98, 0, 0);
}

uint64_t sub_2295D4C98()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  v3 = v0[13];
  if (Strong)
  {
    v4 = v0[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9F8, qword_22A579AD8);
    sub_22A4DDA3C();
    v5 = *(MEMORY[0x277D85798] + 4);
    v6 = swift_task_alloc();
    v0[15] = v6;
    *v6 = v0;
    v6[1] = sub_2295D4DE0;
    v7 = v0[13];
    v8 = v0[10];
    v9 = v0[11];

    return MEMORY[0x2822003E8](v8, 0, 0, v9);
  }

  else
  {
    v11 = v0[9];
    v10 = v0[10];
    v12 = v0[13];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2295D4DE0()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2295D4EDC, 0, 0);
}

uint64_t sub_2295D4EDC()
{
  v1 = v0[10];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) == 1)
  {
    v2 = v0[14];
    (*(v0[12] + 8))(v0[13], v0[11]);

LABEL_5:
    v8 = v0[13];
    v9 = v0[9];
    v10 = v0[10];

    v11 = v0[1];

    return v11();
  }

  sub_2295E9240(v1, v0[9], type metadata accessor for HomeGraphIndexer.NotificationType);
  if (sub_22A4DDAAC())
  {
    v4 = v0[13];
    v3 = v0[14];
    v5 = v0[11];
    v6 = v0[12];
    v7 = v0[9];

    sub_2295E9130(v7, type metadata accessor for HomeGraphIndexer.NotificationType);
    (*(v6 + 8))(v4, v5);
    goto LABEL_5;
  }

  v13 = swift_task_alloc();
  v0[16] = v13;
  *v13 = v0;
  v13[1] = sub_2295D5084;
  v14 = v0[14];
  v15 = v0[9];

  return sub_2295D5240(v15);
}

uint64_t sub_2295D5084()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2295D5180, 0, 0);
}

uint64_t sub_2295D5180()
{
  sub_2295E9130(v0[9], type metadata accessor for HomeGraphIndexer.NotificationType);
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_2295D4DE0;
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[11];

  return MEMORY[0x2822003E8](v4, 0, 0, v5);
}

uint64_t sub_2295D5240(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  v3 = *(type metadata accessor for HomeGraphIndexer.NotificationType(0) - 8);
  v2[10] = v3;
  v2[11] = *(v3 + 64);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295D532C, v1, 0);
}

uint64_t sub_2295D532C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = __swift_project_boxed_opaque_existential_0((v5 + 112), *(v5 + 136));
  sub_22957F1C4((v7 + 1), (v0 + 2));
  v0[13] = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5])[1];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2295E91D8(v6, v1, type metadata accessor for HomeGraphIndexer.NotificationType);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[14] = v10;
  sub_2295E9240(v1, v10 + v8, type metadata accessor for HomeGraphIndexer.NotificationType);
  *(v10 + v9) = v5;
  *(v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v3;
  v11 = *(MEMORY[0x277D0EF80] + 4);
  v15 = (*MEMORY[0x277D0EF80] + MEMORY[0x277D0EF80]);

  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_2295D54DC;
  v13 = MEMORY[0x277D84F78] + 8;

  return v15(&unk_22A579C28, v10, v13);
}

uint64_t sub_2295D54DC()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_2295D5638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v6 = sub_22A4DB21C();
  v4[5] = v6;
  v7 = *(v6 - 8);
  v4[6] = v7;
  v8 = *(v7 + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = sub_22A4DD07C();
  v4[8] = v9;
  v10 = *(v9 - 8);
  v4[9] = v10;
  v11 = *(v10 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v12 = type metadata accessor for HomeGraphIndexer.NotificationType(0);
  v4[34] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v4[35] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  v4[36] = v14;
  v15 = *(v14 - 8);
  v4[37] = v15;
  v16 = *(v15 + 64) + 15;
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v4[77] = swift_task_alloc();
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v4[85] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295D5B3C, a3, 0);
}

uint64_t sub_2295D5B3C()
{
  v877 = v0;
  v1 = v0[37];
  v2 = v0 + 35;
  v3 = v0[34];
  sub_2295E91D8(v0[2], v0[35], type metadata accessor for HomeGraphIndexer.NotificationType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(v1 + 32);
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v169 = v0[75];
      v170 = v0[74];
      v171 = v0[36];
      v172 = v0[37];
      v173 = v0[32];
      v174 = v0[4];
      v5(v169, v0[35], v171);
      sub_229541CB0(v174, &off_283CDDAE8);
      (*(v172 + 16))(v170, v169, v171);
      v175 = sub_22A4DD05C();
      v176 = sub_22A4DDCCC();
      v177 = os_log_type_enabled(v175, v176);
      v178 = v0[74];
      v180 = v0[36];
      v179 = v0[37];
      v181 = v0[32];
      v182 = v0[8];
      v183 = v0[9];
      if (v177)
      {
        v833 = v175;
        v184 = v0[6];
        v185 = v0[7];
        v808 = v176;
        v186 = v0[5];
        v858 = v0[8];
        v187 = swift_slowAlloc();
        v758 = swift_slowAlloc();
        v876[0] = v758;
        *v187 = 136315138;
        sub_22A4DBA4C();
        v733 = sub_22A4DBA6C();
        v783 = v181;
        v189 = v188;
        (*(v184 + 8))(v185, v186);
        v192 = *(v179 + 8);
        v191 = v179 + 8;
        v190 = v192;
        v192(v178, v180);
        v193 = sub_2295A3E30(v733, v189, v876);

        *(v187 + 4) = v193;
        _os_log_impl(&dword_229538000, v833, v808, "New home added notification received: %s", v187, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v758);
        MEMORY[0x22AAD4E50](v758, -1, -1);
        MEMORY[0x22AAD4E50](v187, -1, -1);

        (*(v183 + 8))(v783, v858);
      }

      else
      {

        v455 = *(v179 + 8);
        v191 = v179 + 8;
        v190 = v455;
        v455(v178, v180);
        (*(v183 + 8))(v181, v182);
      }

      v0[90] = v190;
      v0[89] = v191;
      v456 = swift_task_alloc();
      v0[91] = v456;
      *v456 = v0;
      v456[1] = sub_2295D9BD8;
      v457 = v0[75];
      v458 = v0[3];

      return sub_2295DDF48(v457);
    case 2:
      v100 = v0[73];
      v101 = v0[72];
      v102 = v0[36];
      v103 = v0[37];
      v104 = v0[31];
      v105 = v0[4];
      v5(v100, v0[35], v102);
      sub_229541CB0(v105, &off_283CDDAE8);
      (*(v103 + 16))(v101, v100, v102);
      v106 = sub_22A4DD05C();
      v107 = sub_22A4DDCCC();
      v108 = os_log_type_enabled(v106, v107);
      v109 = v0[72];
      v111 = v0[36];
      v110 = v0[37];
      v112 = v0[31];
      v113 = v0[8];
      v114 = v0[9];
      if (v108)
      {
        v830 = v106;
        v115 = v0[6];
        v116 = v0[7];
        v805 = v107;
        v117 = v0[5];
        v855 = v0[8];
        v118 = swift_slowAlloc();
        v755 = swift_slowAlloc();
        v876[0] = v755;
        *v118 = 136315138;
        sub_22A4DBA4C();
        v730 = sub_22A4DBA6C();
        v780 = v112;
        v120 = v119;
        (*(v115 + 8))(v116, v117);
        v123 = *(v110 + 8);
        v122 = v110 + 8;
        v121 = v123;
        v123(v109, v111);
        v124 = sub_2295A3E30(v730, v120, v876);

        *(v118 + 4) = v124;
        _os_log_impl(&dword_229538000, v830, v805, "Home name changed notification received: %s", v118, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v755);
        MEMORY[0x22AAD4E50](v755, -1, -1);
        MEMORY[0x22AAD4E50](v118, -1, -1);

        (*(v114 + 8))(v780, v855);
      }

      else
      {

        v415 = *(v110 + 8);
        v122 = v110 + 8;
        v121 = v415;
        v415(v109, v111);
        (*(v114 + 8))(v112, v113);
      }

      v0[93] = v121;
      v0[92] = v122;
      v416 = swift_task_alloc();
      v0[94] = v416;
      *v416 = v0;
      v416[1] = sub_2295DA118;
      v417 = v0[73];
      v418 = v0[3];

      return sub_2295DEEEC(v417);
    case 3:
      v144 = v0[71];
      v145 = v0[70];
      v146 = v0[36];
      v147 = v0[37];
      v148 = v0[30];
      v149 = v0[4];
      v5(v144, v0[35], v146);
      sub_229541CB0(v149, &off_283CDDAE8);
      (*(v147 + 16))(v145, v144, v146);
      v150 = sub_22A4DD05C();
      v151 = sub_22A4DDCCC();
      v152 = os_log_type_enabled(v150, v151);
      v153 = v0[70];
      v155 = v0[36];
      v154 = v0[37];
      v156 = v0[30];
      v157 = v0[8];
      v158 = v0[9];
      if (v152)
      {
        v832 = v150;
        v159 = v0[6];
        v160 = v0[7];
        v807 = v151;
        v161 = v0[5];
        v857 = v0[8];
        v162 = swift_slowAlloc();
        v757 = swift_slowAlloc();
        v876[0] = v757;
        *v162 = 136315138;
        sub_22A4DBA4C();
        v732 = sub_22A4DBA6C();
        v782 = v156;
        v164 = v163;
        (*(v159 + 8))(v160, v161);
        v167 = *(v154 + 8);
        v166 = v154 + 8;
        v165 = v167;
        v167(v153, v155);
        v168 = sub_2295A3E30(v732, v164, v876);

        *(v162 + 4) = v168;
        _os_log_impl(&dword_229538000, v832, v807, "Home removed notification received: %s", v162, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v757);
        MEMORY[0x22AAD4E50](v757, -1, -1);
        MEMORY[0x22AAD4E50](v162, -1, -1);

        (*(v158 + 8))(v782, v857);
      }

      else
      {

        v449 = *(v154 + 8);
        v166 = v154 + 8;
        v165 = v449;
        v449(v153, v155);
        (*(v158 + 8))(v156, v157);
      }

      v0[96] = v165;
      v0[95] = v166;
      v450 = swift_task_alloc();
      v0[97] = v450;
      *v450 = v0;
      v450[1] = sub_2295DA658;
      v451 = v0[3];

      return sub_2295DF84C();
    case 4:
      v2 = v0 + 69;
      v194 = v0[69];
      v195 = v0[68];
      v196 = v0[36];
      v197 = v0[37];
      v198 = v0[29];
      v199 = v0[4];
      v5(v194, v0[35], v196);
      sub_229541CB0(v199, &off_283CDDAE8);
      (*(v197 + 16))(v195, v194, v196);
      v200 = sub_22A4DD05C();
      v784 = sub_22A4DDCCC();
      v201 = os_log_type_enabled(v200, v784);
      v202 = v0[68];
      v204 = v0[36];
      v203 = v0[37];
      v205 = v0[9];
      v809 = v0[29];
      v834 = v0[8];
      if (v201)
      {
        v859 = v5;
        v759 = v200;
        v206 = v0[6];
        v207 = v0[7];
        v713 = v0[9];
        v208 = v0[5];
        v719 = swift_slowAlloc();
        v734 = swift_slowAlloc();
        v876[0] = v734;
        *v719 = 136315138;
        sub_22A4DBA4C();
        v707 = sub_22A4DBA6C();
        v210 = v209;
        v211 = v207;
        v5 = v859;
        (*(v206 + 8))(v211, v208);
        (*(v203 + 8))(v202, v204);
        v212 = sub_2295A3E30(v707, v210, v876);

        *(v719 + 4) = v212;
        _os_log_impl(&dword_229538000, v759, v784, "Room added notification received: %s", v719, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v734);
        MEMORY[0x22AAD4E50](v734, -1, -1);
        MEMORY[0x22AAD4E50](v719, -1, -1);

        (*(v713 + 8))(v809, v834);
      }

      else
      {

        (*(v203 + 8))(v202, v204);
        (*(v205 + 8))(v809, v834);
      }

      goto LABEL_76;
    case 5:
LABEL_76:
      v459 = *v2;
      v460 = v0[85];
      v461 = v0[67];
      v462 = v0[36];
      v463 = v0[37];
      v464 = v0[28];
      v465 = v0[4];
      v5(v460, v459, v462);
      sub_229541CB0(v465, &off_283CDDAE8);
      (*(v463 + 16))(v461, v460, v462);
      v466 = sub_22A4DD05C();
      v467 = sub_22A4DDCCC();
      v468 = os_log_type_enabled(v466, v467);
      v469 = v0[67];
      v471 = v0[36];
      v470 = v0[37];
      v472 = v0[28];
      v473 = v0[8];
      v474 = v0[9];
      if (v468)
      {
        v844 = v466;
        v475 = v0[6];
        v476 = v0[7];
        v819 = v467;
        v477 = v0[5];
        v869 = v0[8];
        v478 = swift_slowAlloc();
        v769 = swift_slowAlloc();
        v876[0] = v769;
        *v478 = 136315138;
        sub_22A4DBA4C();
        v744 = sub_22A4DBA6C();
        v794 = v472;
        v480 = v479;
        (*(v475 + 8))(v476, v477);
        v483 = *(v470 + 8);
        v482 = v470 + 8;
        v481 = v483;
        v483(v469, v471);
        v484 = sub_2295A3E30(v744, v480, v876);

        *(v478 + 4) = v484;
        _os_log_impl(&dword_229538000, v844, v819, "Room name updated notification received: %s", v478, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v769);
        MEMORY[0x22AAD4E50](v769, -1, -1);
        MEMORY[0x22AAD4E50](v478, -1, -1);

        (*(v474 + 8))(v794, v869);
      }

      else
      {

        v485 = *(v470 + 8);
        v482 = v470 + 8;
        v481 = v485;
        v485(v469, v471);
        (*(v474 + 8))(v472, v473);
      }

      v0[99] = v481;
      v0[98] = v482;
      v486 = swift_task_alloc();
      v0[100] = v486;
      *v486 = v0;
      v486[1] = sub_2295DAB98;
      v487 = v0[85];
      v488 = v0[3];

      return sub_2295DFCA0(v487);
    case 6:
      v238 = v0[66];
      v239 = v0[65];
      v240 = v0[36];
      v241 = v0[37];
      v242 = v0[27];
      v243 = v0[4];
      v5(v238, v0[35], v240);
      sub_229541CB0(v243, &off_283CDDAE8);
      (*(v241 + 16))(v239, v238, v240);
      v244 = sub_22A4DD05C();
      v245 = sub_22A4DDCCC();
      v246 = os_log_type_enabled(v244, v245);
      v247 = v0[65];
      v249 = v0[36];
      v248 = v0[37];
      v250 = v0[27];
      v251 = v0[8];
      v252 = v0[9];
      if (v246)
      {
        v836 = v244;
        v253 = v0[6];
        v254 = v0[7];
        v811 = v245;
        v255 = v0[5];
        v861 = v0[8];
        v256 = swift_slowAlloc();
        v761 = swift_slowAlloc();
        v876[0] = v761;
        *v256 = 136315138;
        sub_22A4DBA4C();
        v736 = sub_22A4DBA6C();
        v786 = v250;
        v258 = v257;
        (*(v253 + 8))(v254, v255);
        v261 = *(v248 + 8);
        v260 = v248 + 8;
        v259 = v261;
        v261(v247, v249);
        v262 = sub_2295A3E30(v736, v258, v876);

        *(v256 + 4) = v262;
        _os_log_impl(&dword_229538000, v836, v811, "Room removed notification received: %s", v256, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v761);
        MEMORY[0x22AAD4E50](v761, -1, -1);
        MEMORY[0x22AAD4E50](v256, -1, -1);

        (*(v252 + 8))(v786, v861);
      }

      else
      {

        v493 = *(v248 + 8);
        v260 = v248 + 8;
        v259 = v493;
        v493(v247, v249);
        (*(v252 + 8))(v250, v251);
      }

      v0[102] = v259;
      v0[101] = v260;
      v494 = swift_task_alloc();
      v0[103] = v494;
      *v494 = v0;
      v494[1] = sub_2295DB130;
      v495 = v0[66];
      v496 = v0[3];

      return sub_2295E07E4(v495);
    case 7:
      v2 = v0 + 64;
      v308 = v0[63];
      v307 = v0[64];
      v309 = v0[36];
      v310 = v0[37];
      v311 = v0[26];
      v312 = v0[4];
      v5(v307, v0[35], v309);
      sub_229541CB0(v312, &off_283CDDAE8);
      (*(v310 + 16))(v308, v307, v309);
      v313 = sub_22A4DD05C();
      v789 = sub_22A4DDCCC();
      v314 = os_log_type_enabled(v313, v789);
      v315 = v0[63];
      v317 = v0[36];
      v316 = v0[37];
      v318 = v0[9];
      v814 = v0[26];
      v839 = v0[8];
      if (v314)
      {
        v864 = v5;
        v764 = v313;
        v319 = v0[6];
        v320 = v0[7];
        v715 = v0[9];
        v321 = v0[5];
        v721 = swift_slowAlloc();
        v739 = swift_slowAlloc();
        v876[0] = v739;
        *v721 = 136315138;
        sub_22A4DBA4C();
        v709 = sub_22A4DBA6C();
        v323 = v322;
        v324 = v320;
        v5 = v864;
        (*(v319 + 8))(v324, v321);
        (*(v316 + 8))(v315, v317);
        v325 = sub_2295A3E30(v709, v323, v876);

        *(v721 + 4) = v325;
        _os_log_impl(&dword_229538000, v764, v789, "Zone added notification received: %s", v721, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v739);
        MEMORY[0x22AAD4E50](v739, -1, -1);
        MEMORY[0x22AAD4E50](v721, -1, -1);

        (*(v715 + 8))(v814, v839);
      }

      else
      {

        (*(v316 + 8))(v315, v317);
        (*(v318 + 8))(v814, v839);
      }

      goto LABEL_114;
    case 8:
LABEL_114:
      v600 = *v2;
      v601 = v0[84];
      v602 = v0[62];
      v603 = v0[36];
      v604 = v0[37];
      v605 = v0[25];
      v606 = v0[4];
      v5(v601, v600, v603);
      sub_229541CB0(v606, &off_283CDDAE8);
      (*(v604 + 16))(v602, v601, v603);
      v607 = sub_22A4DD05C();
      v608 = sub_22A4DDCCC();
      v609 = os_log_type_enabled(v607, v608);
      v610 = v0[62];
      v612 = v0[36];
      v611 = v0[37];
      v613 = v0[25];
      v614 = v0[8];
      v615 = v0[9];
      if (v609)
      {
        v849 = v607;
        v616 = v0[6];
        v617 = v0[7];
        v824 = v608;
        v618 = v0[5];
        v874 = v0[8];
        v619 = swift_slowAlloc();
        v774 = swift_slowAlloc();
        v876[0] = v774;
        *v619 = 136315138;
        sub_22A4DBA4C();
        v749 = sub_22A4DBA6C();
        v799 = v613;
        v621 = v620;
        (*(v616 + 8))(v617, v618);
        v624 = *(v611 + 8);
        v623 = v611 + 8;
        v622 = v624;
        v624(v610, v612);
        v625 = sub_2295A3E30(v749, v621, v876);

        *(v619 + 4) = v625;
        _os_log_impl(&dword_229538000, v849, v824, "Zone name changed notification received: %s", v619, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v774);
        MEMORY[0x22AAD4E50](v774, -1, -1);
        MEMORY[0x22AAD4E50](v619, -1, -1);

        (*(v615 + 8))(v799, v874);
      }

      else
      {

        v626 = *(v611 + 8);
        v623 = v611 + 8;
        v622 = v626;
        v626(v610, v612);
        (*(v615 + 8))(v613, v614);
      }

      v0[105] = v622;
      v0[104] = v623;
      v627 = swift_task_alloc();
      v0[106] = v627;
      *v627 = v0;
      v627[1] = sub_2295DB670;
      v628 = v0[84];
      v629 = v0[3];

      return sub_2295E10D0(v628);
    case 9:
      v76 = v0[60];
      v75 = v0[61];
      v77 = v0[36];
      v78 = v0[37];
      v79 = v0[24];
      v80 = v0[4];
      v5(v75, v0[35], v77);
      sub_229541CB0(v80, &off_283CDDAE8);
      (*(v78 + 16))(v76, v75, v77);
      v81 = sub_22A4DD05C();
      v82 = sub_22A4DDCCC();
      v83 = os_log_type_enabled(v81, v82);
      v84 = v0[60];
      v86 = v0[36];
      v85 = v0[37];
      v87 = v0[24];
      v88 = v0[8];
      v89 = v0[9];
      if (v83)
      {
        v829 = v81;
        v90 = v0[6];
        v91 = v0[7];
        v804 = v82;
        v92 = v0[5];
        v854 = v0[8];
        v93 = swift_slowAlloc();
        v754 = swift_slowAlloc();
        v876[0] = v754;
        *v93 = 136315138;
        sub_22A4DBA4C();
        v729 = sub_22A4DBA6C();
        v779 = v87;
        v95 = v94;
        (*(v90 + 8))(v91, v92);
        v98 = *(v85 + 8);
        v97 = v85 + 8;
        v96 = v98;
        v98(v84, v86);
        v99 = sub_2295A3E30(v729, v95, v876);

        *(v93 + 4) = v99;
        _os_log_impl(&dword_229538000, v829, v804, "Zone updated notification received: %s", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v754);
        MEMORY[0x22AAD4E50](v754, -1, -1);
        MEMORY[0x22AAD4E50](v93, -1, -1);

        (*(v89 + 8))(v779, v854);
      }

      else
      {

        v411 = *(v85 + 8);
        v97 = v85 + 8;
        v96 = v411;
        v411(v84, v86);
        (*(v89 + 8))(v87, v88);
      }

      v0[108] = v96;
      v0[107] = v97;
      v412 = swift_task_alloc();
      v0[109] = v412;
      *v412 = v0;
      v412[1] = sub_2295DB7F4;
      v413 = v0[61];
      v414 = v0[3];

      return sub_2295E1A30(v413);
    case 10:
      v283 = v0[58];
      v282 = v0[59];
      v284 = v0[36];
      v285 = v0[37];
      v286 = v0[23];
      v287 = v0[4];
      v5(v282, v0[35], v284);
      sub_229541CB0(v287, &off_283CDDAE8);
      (*(v285 + 16))(v283, v282, v284);
      v288 = sub_22A4DD05C();
      v289 = sub_22A4DDCCC();
      v290 = os_log_type_enabled(v288, v289);
      v291 = v0[58];
      v293 = v0[36];
      v292 = v0[37];
      v294 = v0[23];
      v295 = v0[8];
      v296 = v0[9];
      if (v290)
      {
        v838 = v288;
        v297 = v0[6];
        v298 = v0[7];
        v813 = v289;
        v299 = v0[5];
        v863 = v0[8];
        v300 = swift_slowAlloc();
        v763 = swift_slowAlloc();
        v876[0] = v763;
        *v300 = 136315138;
        sub_22A4DBA4C();
        v738 = sub_22A4DBA6C();
        v788 = v294;
        v302 = v301;
        (*(v297 + 8))(v298, v299);
        v305 = *(v292 + 8);
        v304 = v292 + 8;
        v303 = v305;
        v305(v291, v293);
        v306 = sub_2295A3E30(v738, v302, v876);

        *(v300 + 4) = v306;
        _os_log_impl(&dword_229538000, v838, v813, "Zone removed notification received: %s", v300, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v763);
        MEMORY[0x22AAD4E50](v763, -1, -1);
        MEMORY[0x22AAD4E50](v300, -1, -1);

        (*(v296 + 8))(v788, v863);
      }

      else
      {

        v596 = *(v292 + 8);
        v304 = v292 + 8;
        v303 = v596;
        v596(v291, v293);
        (*(v296 + 8))(v294, v295);
      }

      v0[111] = v303;
      v0[110] = v304;
      v597 = swift_task_alloc();
      v0[112] = v597;
      *v597 = v0;
      v597[1] = sub_2295DBD34;
      v598 = v0[59];
      v599 = v0[3];

      return sub_2295E3B70(v598);
    case 11:
      v2 = v0 + 57;
      v57 = v0[56];
      v56 = v0[57];
      v58 = v0[36];
      v59 = v0[37];
      v60 = v0[22];
      v61 = v0[4];
      v5(v56, v0[35], v58);
      sub_229541CB0(v61, &off_283CDDAE8);
      (*(v59 + 16))(v57, v56, v58);
      v62 = sub_22A4DD05C();
      v778 = sub_22A4DDCCC();
      v63 = os_log_type_enabled(v62, v778);
      v64 = v0[56];
      v66 = v0[36];
      v65 = v0[37];
      v67 = v0[9];
      v803 = v0[22];
      v828 = v0[8];
      if (v63)
      {
        v853 = v5;
        v753 = v62;
        v68 = v0[6];
        v69 = v0[7];
        v711 = v0[9];
        v70 = v0[5];
        v717 = swift_slowAlloc();
        v728 = swift_slowAlloc();
        v876[0] = v728;
        *v717 = 136315138;
        sub_22A4DBA4C();
        v705 = sub_22A4DBA6C();
        v72 = v71;
        v73 = v69;
        v5 = v853;
        (*(v68 + 8))(v73, v70);
        (*(v65 + 8))(v64, v66);
        v74 = sub_2295A3E30(v705, v72, v876);

        *(v717 + 4) = v74;
        _os_log_impl(&dword_229538000, v753, v778, "Scene added notification received: %s", v717, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v728);
        MEMORY[0x22AAD4E50](v728, -1, -1);
        MEMORY[0x22AAD4E50](v717, -1, -1);

        (*(v711 + 8))(v803, v828);
      }

      else
      {

        (*(v65 + 8))(v64, v66);
        (*(v67 + 8))(v803, v828);
      }

      goto LABEL_42;
    case 12:
LABEL_42:
      v381 = *v2;
      v382 = v0[83];
      v383 = v0[55];
      v384 = v0[36];
      v385 = v0[37];
      v386 = v0[21];
      v387 = v0[4];
      v5(v382, v381, v384);
      sub_229541CB0(v387, &off_283CDDAE8);
      (*(v385 + 16))(v383, v382, v384);
      v388 = sub_22A4DD05C();
      v389 = sub_22A4DDCCC();
      v390 = os_log_type_enabled(v388, v389);
      v391 = v0[55];
      v393 = v0[36];
      v392 = v0[37];
      v394 = v0[21];
      v395 = v0[8];
      v396 = v0[9];
      if (v390)
      {
        v842 = v388;
        v397 = v0[6];
        v398 = v0[7];
        v817 = v389;
        v399 = v0[5];
        v867 = v0[8];
        v400 = swift_slowAlloc();
        v767 = swift_slowAlloc();
        v876[0] = v767;
        *v400 = 136315138;
        sub_22A4DBA4C();
        v742 = sub_22A4DBA6C();
        v792 = v394;
        v402 = v401;
        (*(v397 + 8))(v398, v399);
        v405 = *(v392 + 8);
        v404 = v392 + 8;
        v403 = v405;
        v405(v391, v393);
        v406 = sub_2295A3E30(v742, v402, v876);

        *(v400 + 4) = v406;
        _os_log_impl(&dword_229538000, v842, v817, "Scene renamed notification received: %s", v400, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v767);
        MEMORY[0x22AAD4E50](v767, -1, -1);
        MEMORY[0x22AAD4E50](v400, -1, -1);

        (*(v396 + 8))(v792, v867);
      }

      else
      {

        v407 = *(v392 + 8);
        v404 = v392 + 8;
        v403 = v407;
        v407(v391, v393);
        (*(v396 + 8))(v394, v395);
      }

      v0[114] = v403;
      v0[113] = v404;
      v408 = swift_task_alloc();
      v0[115] = v408;
      *v408 = v0;
      v408[1] = sub_2295DC274;
      v409 = v0[83];
      v410 = v0[3];

      return sub_2295E44E8(v409);
    case 13:
      v214 = v0[53];
      v213 = v0[54];
      v215 = v0[36];
      v216 = v0[37];
      v217 = v0[20];
      v218 = v0[4];
      v5(v213, v0[35], v215);
      sub_229541CB0(v218, &off_283CDDAE8);
      (*(v216 + 16))(v214, v213, v215);
      v219 = sub_22A4DD05C();
      v220 = sub_22A4DDCCC();
      v221 = os_log_type_enabled(v219, v220);
      v222 = v0[53];
      v224 = v0[36];
      v223 = v0[37];
      v225 = v0[20];
      v226 = v0[8];
      v227 = v0[9];
      if (v221)
      {
        v835 = v219;
        v228 = v0[6];
        v229 = v0[7];
        v810 = v220;
        v230 = v0[5];
        v860 = v0[8];
        v231 = swift_slowAlloc();
        v760 = swift_slowAlloc();
        v876[0] = v760;
        *v231 = 136315138;
        sub_22A4DBA4C();
        v735 = sub_22A4DBA6C();
        v785 = v225;
        v233 = v232;
        (*(v228 + 8))(v229, v230);
        v236 = *(v223 + 8);
        v235 = v223 + 8;
        v234 = v236;
        v236(v222, v224);
        v237 = sub_2295A3E30(v735, v233, v876);

        *(v231 + 4) = v237;
        _os_log_impl(&dword_229538000, v835, v810, "Scene removed notification received: %s", v231, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v760);
        MEMORY[0x22AAD4E50](v760, -1, -1);
        MEMORY[0x22AAD4E50](v231, -1, -1);

        (*(v227 + 8))(v785, v860);
      }

      else
      {

        v489 = *(v223 + 8);
        v235 = v223 + 8;
        v234 = v489;
        v489(v222, v224);
        (*(v227 + 8))(v225, v226);
      }

      v0[117] = v234;
      v0[116] = v235;
      v490 = swift_task_alloc();
      v0[118] = v490;
      *v490 = v0;
      v490[1] = sub_2295DC3F8;
      v491 = v0[54];
      v492 = v0[3];

      return sub_2295E5B08(v491);
    case 14:
      v2 = v0 + 52;
      v126 = v0[51];
      v125 = v0[52];
      v127 = v0[36];
      v128 = v0[37];
      v129 = v0[19];
      v130 = v0[4];
      v5(v125, v0[35], v127);
      sub_229541CB0(v130, &off_283CDDAE8);
      (*(v128 + 16))(v126, v125, v127);
      v131 = sub_22A4DD05C();
      v781 = sub_22A4DDCCC();
      v132 = os_log_type_enabled(v131, v781);
      v133 = v0[51];
      v135 = v0[36];
      v134 = v0[37];
      v136 = v0[9];
      v806 = v0[19];
      v831 = v0[8];
      if (v132)
      {
        v856 = v5;
        v756 = v131;
        v137 = v0[6];
        v138 = v0[7];
        v712 = v0[9];
        v139 = v0[5];
        v718 = swift_slowAlloc();
        v731 = swift_slowAlloc();
        v876[0] = v731;
        *v718 = 136315138;
        sub_22A4DBA4C();
        v706 = sub_22A4DBA6C();
        v141 = v140;
        v142 = v138;
        v5 = v856;
        (*(v137 + 8))(v142, v139);
        (*(v134 + 8))(v133, v135);
        v143 = sub_2295A3E30(v706, v141, v876);

        *(v718 + 4) = v143;
        _os_log_impl(&dword_229538000, v756, v781, "Service group added notification received: %s", v718, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v731);
        MEMORY[0x22AAD4E50](v731, -1, -1);
        MEMORY[0x22AAD4E50](v718, -1, -1);

        (*(v712 + 8))(v806, v831);
      }

      else
      {

        (*(v134 + 8))(v133, v135);
        (*(v136 + 8))(v806, v831);
      }

      goto LABEL_57;
    case 15:
LABEL_57:
      v419 = *v2;
      v420 = v0[82];
      v421 = v0[50];
      v422 = v0[36];
      v423 = v0[37];
      v424 = v0[18];
      v425 = v0[4];
      v5(v420, v419, v422);
      sub_229541CB0(v425, &off_283CDDAE8);
      (*(v423 + 16))(v421, v420, v422);
      v426 = sub_22A4DD05C();
      v427 = sub_22A4DDCCC();
      v428 = os_log_type_enabled(v426, v427);
      v429 = v0[50];
      v431 = v0[36];
      v430 = v0[37];
      v432 = v0[18];
      v433 = v0[8];
      v434 = v0[9];
      if (v428)
      {
        v843 = v426;
        v435 = v0[6];
        v436 = v0[7];
        v818 = v427;
        v437 = v0[5];
        v868 = v0[8];
        v438 = swift_slowAlloc();
        v768 = swift_slowAlloc();
        v876[0] = v768;
        *v438 = 136315138;
        sub_22A4DBA4C();
        v743 = sub_22A4DBA6C();
        v793 = v432;
        v440 = v439;
        (*(v435 + 8))(v436, v437);
        v443 = *(v430 + 8);
        v442 = v430 + 8;
        v441 = v443;
        v443(v429, v431);
        v444 = sub_2295A3E30(v743, v440, v876);

        *(v438 + 4) = v444;
        _os_log_impl(&dword_229538000, v843, v818, "Service group renamed notification received: %s", v438, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v768);
        MEMORY[0x22AAD4E50](v768, -1, -1);
        MEMORY[0x22AAD4E50](v438, -1, -1);

        (*(v434 + 8))(v793, v868);
      }

      else
      {

        v445 = *(v430 + 8);
        v442 = v430 + 8;
        v441 = v445;
        v445(v429, v431);
        (*(v434 + 8))(v432, v433);
      }

      v0[120] = v441;
      v0[119] = v442;
      v446 = swift_task_alloc();
      v0[121] = v446;
      *v446 = v0;
      v446[1] = sub_2295DC938;
      v447 = v0[82];
      v448 = v0[3];

      return sub_2295E7734(v447);
    case 16:
      v32 = v0[48];
      v31 = v0[49];
      v33 = v0[36];
      v34 = v0[37];
      v35 = v0[17];
      v36 = v0[4];
      v5(v31, v0[35], v33);
      sub_229541CB0(v36, &off_283CDDAE8);
      (*(v34 + 16))(v32, v31, v33);
      v37 = sub_22A4DD05C();
      v38 = sub_22A4DDCCC();
      v39 = os_log_type_enabled(v37, v38);
      v40 = v0[48];
      v42 = v0[36];
      v41 = v0[37];
      v43 = v0[17];
      v44 = v0[8];
      v45 = v0[9];
      if (v39)
      {
        v827 = v37;
        v46 = v0[6];
        v47 = v0[7];
        v802 = v38;
        v48 = v0[5];
        v852 = v0[8];
        v49 = swift_slowAlloc();
        v752 = swift_slowAlloc();
        v876[0] = v752;
        *v49 = 136315138;
        sub_22A4DBA4C();
        v727 = sub_22A4DBA6C();
        v777 = v43;
        v51 = v50;
        (*(v46 + 8))(v47, v48);
        v54 = *(v41 + 8);
        v53 = v41 + 8;
        v52 = v54;
        v54(v40, v42);
        v55 = sub_2295A3E30(v727, v51, v876);

        *(v49 + 4) = v55;
        _os_log_impl(&dword_229538000, v827, v802, "Service group removed notification received: %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v752);
        MEMORY[0x22AAD4E50](v752, -1, -1);
        MEMORY[0x22AAD4E50](v49, -1, -1);

        (*(v45 + 8))(v777, v852);
      }

      else
      {

        v376 = *(v41 + 8);
        v53 = v41 + 8;
        v52 = v376;
        v376(v40, v42);
        (*(v45 + 8))(v43, v44);
      }

      v0[123] = v52;
      v0[122] = v53;
      v377 = swift_task_alloc();
      v0[124] = v377;
      *v377 = v0;
      v377[1] = sub_2295DCABC;
      v378 = v0[49];
      v379 = v0[3];

      return sub_2295E8074(v378);
    case 17:
      v2 = v0 + 47;
      v264 = v0[46];
      v263 = v0[47];
      v265 = v0[36];
      v266 = v0[37];
      v267 = v0[16];
      v268 = v0[4];
      v5(v263, v0[35], v265);
      sub_229541CB0(v268, &off_283CDDAE8);
      (*(v266 + 16))(v264, v263, v265);
      v269 = sub_22A4DD05C();
      v787 = sub_22A4DDCCC();
      v270 = os_log_type_enabled(v269, v787);
      v271 = v0[46];
      v273 = v0[36];
      v272 = v0[37];
      v274 = v0[9];
      v812 = v0[16];
      v837 = v0[8];
      if (v270)
      {
        v862 = v5;
        v762 = v269;
        v275 = v0[6];
        v276 = v0[7];
        v714 = v0[9];
        v277 = v0[5];
        v720 = swift_slowAlloc();
        v737 = swift_slowAlloc();
        v876[0] = v737;
        *v720 = 136315138;
        sub_22A4DBA4C();
        v708 = sub_22A4DBA6C();
        v279 = v278;
        v280 = v276;
        v5 = v862;
        (*(v275 + 8))(v280, v277);
        (*(v272 + 8))(v271, v273);
        v281 = sub_2295A3E30(v708, v279, v876);

        *(v720 + 4) = v281;
        _os_log_impl(&dword_229538000, v762, v787, "Accessory added notification received: %s", v720, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v737);
        MEMORY[0x22AAD4E50](v737, -1, -1);
        MEMORY[0x22AAD4E50](v720, -1, -1);

        (*(v714 + 8))(v812, v837);
      }

      else
      {

        (*(v272 + 8))(v271, v273);
        (*(v274 + 8))(v812, v837);
      }

      goto LABEL_91;
    case 18:
LABEL_91:
      v497 = *v2;
      v498 = v0[81];
      v499 = v0[45];
      v500 = v0[36];
      v501 = v0[37];
      v502 = v0[15];
      v503 = v0[4];
      v5(v498, v497, v500);
      sub_229541CB0(v503, &off_283CDDAE8);
      (*(v501 + 16))(v499, v498, v500);
      v504 = sub_22A4DD05C();
      v505 = sub_22A4DDCDC();
      v506 = os_log_type_enabled(v504, v505);
      v507 = v0[45];
      v508 = v0[36];
      v509 = v0[37];
      v510 = v0[15];
      v512 = v0[8];
      v511 = v0[9];
      if (v506)
      {
        v845 = v0[15];
        v870 = v5;
        v820 = v504;
        v513 = v0[6];
        v514 = v0[7];
        v515 = v0[5];
        v770 = v505;
        v516 = swift_slowAlloc();
        v745 = swift_slowAlloc();
        v876[0] = v745;
        *v516 = 136315138;
        sub_22A4DBA4C();
        v722 = sub_22A4DBA6C();
        v795 = v512;
        v518 = v517;
        v519 = v514;
        v5 = v870;
        (*(v513 + 8))(v519, v515);
        (*(v509 + 8))(v507, v508);
        v520 = sub_2295A3E30(v722, v518, v876);

        *(v516 + 4) = v520;
        _os_log_impl(&dword_229538000, v820, v770, "services inside accessory updated notification received: %s", v516, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v745);
        MEMORY[0x22AAD4E50](v745, -1, -1);
        MEMORY[0x22AAD4E50](v516, -1, -1);

        (*(v511 + 8))(v845, v795);
      }

      else
      {

        (*(v509 + 8))(v507, v508);
        (*(v511 + 8))(v510, v512);
      }

      v521 = v0[37] + 32;
      v5(v0[80], v0[81], v0[36]);
      goto LABEL_95;
    case 19:
      v5(v0[80], v0[35], v0[36]);
LABEL_95:
      v522 = v0[80];
      v523 = v0[44];
      v524 = v0[36];
      v525 = v0[37];
      v526 = v0[14];
      sub_229541CB0(v0[4], &off_283CDDAE8);
      (*(v525 + 16))(v523, v522, v524);
      v527 = sub_22A4DD05C();
      v528 = sub_22A4DDCCC();
      v529 = os_log_type_enabled(v527, v528);
      v530 = v0[44];
      v531 = v0[36];
      v532 = v0[37];
      v533 = v0[14];
      v535 = v0[8];
      v534 = v0[9];
      if (v529)
      {
        v846 = v0[14];
        v871 = v5;
        v821 = v527;
        v536 = v0[6];
        v537 = v0[7];
        v538 = v0[5];
        v771 = v528;
        v539 = swift_slowAlloc();
        v746 = swift_slowAlloc();
        v876[0] = v746;
        *v539 = 136315138;
        sub_22A4DBA4C();
        v723 = sub_22A4DBA6C();
        v796 = v535;
        v541 = v540;
        v542 = v537;
        v5 = v871;
        (*(v536 + 8))(v542, v538);
        (*(v532 + 8))(v530, v531);
        v543 = sub_2295A3E30(v723, v541, v876);

        *(v539 + 4) = v543;
        _os_log_impl(&dword_229538000, v821, v771, "Characteristics inside accessory updated notification received: %s", v539, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v746);
        MEMORY[0x22AAD4E50](v746, -1, -1);
        MEMORY[0x22AAD4E50](v539, -1, -1);

        (*(v534 + 8))(v846, v796);
      }

      else
      {

        (*(v532 + 8))(v530, v531);
        (*(v534 + 8))(v533, v535);
      }

      v544 = v0[37] + 32;
      v5(v0[79], v0[80], v0[36]);
      goto LABEL_99;
    case 20:
      v5(v0[79], v0[35], v0[36]);
LABEL_99:
      v545 = v0[79];
      v546 = v0[43];
      v547 = v0[36];
      v548 = v0[37];
      v549 = v0[13];
      sub_229541CB0(v0[4], &off_283CDDAE8);
      (*(v548 + 16))(v546, v545, v547);
      v550 = sub_22A4DD05C();
      v551 = sub_22A4DDCCC();
      v552 = os_log_type_enabled(v550, v551);
      v553 = v0[43];
      v554 = v0[36];
      v555 = v0[37];
      v556 = v0[13];
      v558 = v0[8];
      v557 = v0[9];
      if (v552)
      {
        v847 = v0[13];
        v872 = v5;
        v822 = v550;
        v559 = v0[6];
        v560 = v0[7];
        v561 = v0[5];
        v772 = v551;
        v562 = swift_slowAlloc();
        v747 = swift_slowAlloc();
        v876[0] = v747;
        *v562 = 136315138;
        sub_22A4DBA4C();
        v724 = sub_22A4DBA6C();
        v797 = v558;
        v564 = v563;
        v565 = v560;
        v5 = v872;
        (*(v559 + 8))(v565, v561);
        (*(v555 + 8))(v553, v554);
        v566 = sub_2295A3E30(v724, v564, v876);

        *(v562 + 4) = v566;
        _os_log_impl(&dword_229538000, v822, v772, "Accessory moved to room notification received: %s", v562, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v747);
        MEMORY[0x22AAD4E50](v747, -1, -1);
        MEMORY[0x22AAD4E50](v562, -1, -1);

        (*(v557 + 8))(v847, v797);
      }

      else
      {

        (*(v555 + 8))(v553, v554);
        (*(v557 + 8))(v556, v558);
      }

      v567 = v0[37] + 32;
      v5(v0[78], v0[79], v0[36]);
      goto LABEL_103;
    case 21:
      v5(v0[78], v0[35], v0[36]);
LABEL_103:
      v568 = v0[78];
      v569 = v0[42];
      v570 = v0[36];
      v571 = v0[37];
      v572 = v0[12];
      sub_229541CB0(v0[4], &off_283CDDAE8);
      (*(v571 + 16))(v569, v568, v570);
      v573 = sub_22A4DD05C();
      v574 = sub_22A4DDCCC();
      v575 = os_log_type_enabled(v573, v574);
      v576 = v0[42];
      v578 = v0[36];
      v577 = v0[37];
      v579 = v0[12];
      v580 = v0[8];
      v581 = v0[9];
      if (v575)
      {
        v848 = v573;
        v582 = v0[6];
        v583 = v0[7];
        v823 = v574;
        v584 = v0[5];
        v873 = v0[8];
        v585 = swift_slowAlloc();
        v773 = swift_slowAlloc();
        v876[0] = v773;
        *v585 = 136315138;
        sub_22A4DBA4C();
        v748 = sub_22A4DBA6C();
        v798 = v579;
        v587 = v586;
        (*(v582 + 8))(v583, v584);
        v590 = *(v577 + 8);
        v589 = v577 + 8;
        v588 = v590;
        v590(v576, v578);
        v591 = sub_2295A3E30(v748, v587, v876);

        *(v585 + 4) = v591;
        _os_log_impl(&dword_229538000, v848, v823, "Accessory name updated notification received: %s", v585, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v773);
        MEMORY[0x22AAD4E50](v773, -1, -1);
        MEMORY[0x22AAD4E50](v585, -1, -1);

        (*(v581 + 8))(v798, v873);
      }

      else
      {

        v592 = *(v577 + 8);
        v589 = v577 + 8;
        v588 = v592;
        v592(v576, v578);
        (*(v581 + 8))(v579, v580);
      }

      v0[126] = v588;
      v0[125] = v589;
      v593 = swift_task_alloc();
      v0[127] = v593;
      *v593 = v0;
      v593[1] = sub_2295DCFFC;
      v594 = v0[78];
      v595 = v0[3];

      result = sub_2295E63C4(v594);
      break;
    case 22:
      v327 = v0[40];
      v326 = v0[41];
      v328 = v0[36];
      v329 = v0[37];
      v330 = v0[11];
      v331 = v0[4];
      v5(v326, v0[35], v328);
      sub_229541CB0(v331, &off_283CDDAE8);
      (*(v329 + 16))(v327, v326, v328);
      v332 = sub_22A4DD05C();
      v333 = sub_22A4DDCCC();
      v334 = os_log_type_enabled(v332, v333);
      v335 = v0[40];
      v337 = v0[36];
      v336 = v0[37];
      v338 = v0[11];
      v339 = v0[8];
      v340 = v0[9];
      if (v334)
      {
        v840 = v332;
        v341 = v0[6];
        v342 = v0[7];
        v815 = v333;
        v343 = v0[5];
        v865 = v0[8];
        v344 = swift_slowAlloc();
        v765 = swift_slowAlloc();
        v876[0] = v765;
        *v344 = 136315138;
        sub_22A4DBA4C();
        v740 = sub_22A4DBA6C();
        v790 = v338;
        v346 = v345;
        (*(v341 + 8))(v342, v343);
        v349 = *(v336 + 8);
        v348 = v336 + 8;
        v347 = v349;
        v349(v335, v337);
        v350 = sub_2295A3E30(v740, v346, v876);

        *(v344 + 4) = v350;
        _os_log_impl(&dword_229538000, v840, v815, "Accessory removed notification received: %s", v344, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v765);
        MEMORY[0x22AAD4E50](v765, -1, -1);
        MEMORY[0x22AAD4E50](v344, -1, -1);

        (*(v340 + 8))(v790, v865);
      }

      else
      {

        v630 = *(v336 + 8);
        v348 = v336 + 8;
        v347 = v630;
        v630(v335, v337);
        (*(v340 + 8))(v338, v339);
      }

      v0[129] = v347;
      v0[128] = v348;
      v631 = swift_task_alloc();
      v0[130] = v631;
      *v631 = v0;
      v631[1] = sub_2295DD180;
      v632 = v0[41];
      v633 = v0[3];

      result = sub_2295E6968(v632);
      break;
    case 23:
      v352 = v0[38];
      v351 = v0[39];
      v353 = v0[36];
      v354 = v0[37];
      v355 = v0[10];
      v356 = v0[4];
      v5(v351, v0[35], v353);
      sub_229541CB0(v356, &off_283CDDAE8);
      (*(v354 + 16))(v352, v351, v353);
      v357 = sub_22A4DD05C();
      v358 = sub_22A4DDCCC();
      v359 = os_log_type_enabled(v357, v358);
      v361 = v0[37];
      v360 = v0[38];
      v362 = v0[36];
      v364 = v0[9];
      v363 = v0[10];
      v365 = v0[8];
      if (v359)
      {
        v841 = v357;
        v866 = v0[10];
        v366 = v0[6];
        v367 = v0[7];
        v368 = v0[5];
        v791 = v358;
        v369 = swift_slowAlloc();
        v766 = swift_slowAlloc();
        v876[0] = v766;
        *v369 = 136315138;
        sub_22A4DBA4C();
        v741 = sub_22A4DBA6C();
        v816 = v365;
        v371 = v370;
        (*(v366 + 8))(v367, v368);
        v372 = *(v361 + 8);
        v372(v360, v362);
        v373 = sub_2295A3E30(v741, v371, v876);

        *(v369 + 4) = v373;
        _os_log_impl(&dword_229538000, v841, v791, "RVC area & maps updated notification received: %s", v369, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v766);
        MEMORY[0x22AAD4E50](v766, -1, -1);
        v374 = v369;
        v375 = v372;
        MEMORY[0x22AAD4E50](v374, -1, -1);

        (*(v364 + 8))(v866, v816);
      }

      else
      {

        v375 = *(v361 + 8);
        v375(v360, v362);
        (*(v364 + 8))(v363, v365);
      }

      v634 = v0[39];
      v635 = v0[36];
      v637 = v0[6];
      v636 = v0[7];
      v638 = v0[5];
      sub_22A4DBA4C();
      (*(v637 + 8))(v636, v638);
      v375(v634, v635);
      v639 = v0[85];
      v640 = v0[84];
      v641 = v0[83];
      v642 = v0[82];
      v643 = v0[81];
      v644 = v0[80];
      v645 = v0[79];
      v646 = v0[78];
      v647 = v0[77];
      v648 = v0[76];
      v650 = v0[75];
      v651 = v0[74];
      v652 = v0[73];
      v653 = v0[72];
      v654 = v0[71];
      v655 = v0[70];
      v656 = v0[69];
      v657 = v0[68];
      v658 = v0[67];
      v659 = v0[66];
      v660 = v0[65];
      v661 = v0[64];
      v662 = v0[63];
      v663 = v0[62];
      v664 = v0[61];
      v665 = v0[60];
      v666 = v0[59];
      v667 = v0[58];
      v668 = v0[57];
      v669 = v0[56];
      v670 = v0[55];
      v671 = v0[54];
      v672 = v0[53];
      v673 = v0[52];
      v674 = v0[51];
      v675 = v0[50];
      v676 = v0[49];
      v677 = v0[48];
      v678 = v0[47];
      v679 = v0[46];
      v680 = v0[45];
      v681 = v0[44];
      v682 = v0[43];
      v683 = v0[42];
      v684 = v0[41];
      v685 = v0[40];
      v686 = v0[39];
      v687 = v0[38];
      v688 = v0[35];
      v689 = v0[33];
      v690 = v0[32];
      v691 = v0[31];
      v692 = v0[30];
      v693 = v0[29];
      v694 = v0[28];
      v695 = v0[27];
      v696 = v0[26];
      v697 = v0[25];
      v698 = v0[24];
      v699 = v0[23];
      v700 = v0[22];
      v701 = v0[21];
      v702 = v0[20];
      v703 = v0[19];
      v704 = v0[18];
      v710 = v0[17];
      v716 = v0[16];
      v725 = v0[15];
      v750 = v0[14];
      v775 = v0[13];
      v800 = v0[12];
      v825 = v0[11];
      v850 = v0[10];
      v875 = v0[7];

      v649 = v0[1];

      result = v649();
      break;
    default:
      v6 = v0[77];
      v7 = v0[76];
      v8 = v0[36];
      v9 = v0[37];
      v10 = v0[33];
      v11 = v0[4];
      v5(v6, v0[35], v8);
      sub_229541CB0(v11, &off_283CDDAE8);
      (*(v9 + 16))(v7, v6, v8);
      v12 = sub_22A4DD05C();
      v13 = sub_22A4DDCCC();
      v14 = os_log_type_enabled(v12, v13);
      v15 = v0[76];
      v17 = v0[36];
      v16 = v0[37];
      v18 = v0[33];
      v19 = v0[8];
      v20 = v0[9];
      if (v14)
      {
        v826 = v12;
        v21 = v0[6];
        v22 = v0[7];
        v801 = v13;
        v23 = v0[5];
        v851 = v0[8];
        v24 = swift_slowAlloc();
        v751 = swift_slowAlloc();
        v876[0] = v751;
        *v24 = 136315138;
        sub_22A4DBA4C();
        v726 = sub_22A4DBA6C();
        v776 = v18;
        v26 = v25;
        (*(v21 + 8))(v22, v23);
        v29 = *(v16 + 8);
        v28 = v16 + 8;
        v27 = v29;
        v29(v15, v17);
        v30 = sub_2295A3E30(v726, v26, v876);

        *(v24 + 4) = v30;
        _os_log_impl(&dword_229538000, v826, v801, "Current home changed notification received: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v751);
        MEMORY[0x22AAD4E50](v751, -1, -1);
        MEMORY[0x22AAD4E50](v24, -1, -1);

        (*(v20 + 8))(v776, v851);
      }

      else
      {

        v452 = *(v16 + 8);
        v28 = v16 + 8;
        v27 = v452;
        v452(v15, v17);
        (*(v20 + 8))(v18, v19);
      }

      v0[87] = v27;
      v0[86] = v28;
      v453 = swift_task_alloc();
      v0[88] = v453;
      *v453 = v0;
      v453[1] = sub_2295D9698;
      v454 = v0[3];

      result = sub_2295DD6C0();
      break;
  }

  return result;
}

uint64_t sub_2295D9698()
{
  v1 = *(*v0 + 704);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2295D97A8, v2, 0);
}

uint64_t sub_2295D97A8()
{
  v1 = *(v0 + 688);
  (*(v0 + 696))(*(v0 + 616), *(v0 + 288));
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 656);
  v6 = *(v0 + 648);
  v7 = *(v0 + 640);
  v8 = *(v0 + 632);
  v9 = *(v0 + 624);
  v10 = *(v0 + 616);
  v11 = *(v0 + 608);
  v14 = *(v0 + 600);
  v15 = *(v0 + 592);
  v16 = *(v0 + 584);
  v17 = *(v0 + 576);
  v18 = *(v0 + 568);
  v19 = *(v0 + 560);
  v20 = *(v0 + 552);
  v21 = *(v0 + 544);
  v22 = *(v0 + 536);
  v23 = *(v0 + 528);
  v24 = *(v0 + 520);
  v25 = *(v0 + 512);
  v26 = *(v0 + 504);
  v27 = *(v0 + 496);
  v28 = *(v0 + 488);
  v29 = *(v0 + 480);
  v30 = *(v0 + 472);
  v31 = *(v0 + 464);
  v32 = *(v0 + 456);
  v33 = *(v0 + 448);
  v34 = *(v0 + 440);
  v35 = *(v0 + 432);
  v36 = *(v0 + 424);
  v37 = *(v0 + 416);
  v38 = *(v0 + 408);
  v39 = *(v0 + 400);
  v40 = *(v0 + 392);
  v41 = *(v0 + 384);
  v42 = *(v0 + 376);
  v43 = *(v0 + 368);
  v44 = *(v0 + 360);
  v45 = *(v0 + 352);
  v46 = *(v0 + 344);
  v47 = *(v0 + 336);
  v48 = *(v0 + 328);
  v49 = *(v0 + 320);
  v50 = *(v0 + 312);
  v51 = *(v0 + 304);
  v52 = *(v0 + 280);
  v53 = *(v0 + 264);
  v54 = *(v0 + 256);
  v55 = *(v0 + 248);
  v56 = *(v0 + 240);
  v57 = *(v0 + 232);
  v58 = *(v0 + 224);
  v59 = *(v0 + 216);
  v60 = *(v0 + 208);
  v61 = *(v0 + 200);
  v62 = *(v0 + 192);
  v63 = *(v0 + 184);
  v64 = *(v0 + 176);
  v65 = *(v0 + 168);
  v66 = *(v0 + 160);
  v67 = *(v0 + 152);
  v68 = *(v0 + 144);
  v69 = *(v0 + 136);
  v70 = *(v0 + 128);
  v71 = *(v0 + 120);
  v72 = *(v0 + 112);
  v73 = *(v0 + 104);
  v74 = *(v0 + 96);
  v75 = *(v0 + 88);
  v76 = *(v0 + 80);
  v77 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2295D9BD8()
{
  v1 = *(*v0 + 728);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2295D9CE8, v2, 0);
}

uint64_t sub_2295D9CE8()
{
  v1 = *(v0 + 712);
  (*(v0 + 720))(*(v0 + 600), *(v0 + 288));
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 656);
  v6 = *(v0 + 648);
  v7 = *(v0 + 640);
  v8 = *(v0 + 632);
  v9 = *(v0 + 624);
  v10 = *(v0 + 616);
  v11 = *(v0 + 608);
  v14 = *(v0 + 600);
  v15 = *(v0 + 592);
  v16 = *(v0 + 584);
  v17 = *(v0 + 576);
  v18 = *(v0 + 568);
  v19 = *(v0 + 560);
  v20 = *(v0 + 552);
  v21 = *(v0 + 544);
  v22 = *(v0 + 536);
  v23 = *(v0 + 528);
  v24 = *(v0 + 520);
  v25 = *(v0 + 512);
  v26 = *(v0 + 504);
  v27 = *(v0 + 496);
  v28 = *(v0 + 488);
  v29 = *(v0 + 480);
  v30 = *(v0 + 472);
  v31 = *(v0 + 464);
  v32 = *(v0 + 456);
  v33 = *(v0 + 448);
  v34 = *(v0 + 440);
  v35 = *(v0 + 432);
  v36 = *(v0 + 424);
  v37 = *(v0 + 416);
  v38 = *(v0 + 408);
  v39 = *(v0 + 400);
  v40 = *(v0 + 392);
  v41 = *(v0 + 384);
  v42 = *(v0 + 376);
  v43 = *(v0 + 368);
  v44 = *(v0 + 360);
  v45 = *(v0 + 352);
  v46 = *(v0 + 344);
  v47 = *(v0 + 336);
  v48 = *(v0 + 328);
  v49 = *(v0 + 320);
  v50 = *(v0 + 312);
  v51 = *(v0 + 304);
  v52 = *(v0 + 280);
  v53 = *(v0 + 264);
  v54 = *(v0 + 256);
  v55 = *(v0 + 248);
  v56 = *(v0 + 240);
  v57 = *(v0 + 232);
  v58 = *(v0 + 224);
  v59 = *(v0 + 216);
  v60 = *(v0 + 208);
  v61 = *(v0 + 200);
  v62 = *(v0 + 192);
  v63 = *(v0 + 184);
  v64 = *(v0 + 176);
  v65 = *(v0 + 168);
  v66 = *(v0 + 160);
  v67 = *(v0 + 152);
  v68 = *(v0 + 144);
  v69 = *(v0 + 136);
  v70 = *(v0 + 128);
  v71 = *(v0 + 120);
  v72 = *(v0 + 112);
  v73 = *(v0 + 104);
  v74 = *(v0 + 96);
  v75 = *(v0 + 88);
  v76 = *(v0 + 80);
  v77 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2295DA118()
{
  v1 = *(*v0 + 752);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2295DA228, v2, 0);
}

uint64_t sub_2295DA228()
{
  v1 = *(v0 + 736);
  (*(v0 + 744))(*(v0 + 584), *(v0 + 288));
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 656);
  v6 = *(v0 + 648);
  v7 = *(v0 + 640);
  v8 = *(v0 + 632);
  v9 = *(v0 + 624);
  v10 = *(v0 + 616);
  v11 = *(v0 + 608);
  v14 = *(v0 + 600);
  v15 = *(v0 + 592);
  v16 = *(v0 + 584);
  v17 = *(v0 + 576);
  v18 = *(v0 + 568);
  v19 = *(v0 + 560);
  v20 = *(v0 + 552);
  v21 = *(v0 + 544);
  v22 = *(v0 + 536);
  v23 = *(v0 + 528);
  v24 = *(v0 + 520);
  v25 = *(v0 + 512);
  v26 = *(v0 + 504);
  v27 = *(v0 + 496);
  v28 = *(v0 + 488);
  v29 = *(v0 + 480);
  v30 = *(v0 + 472);
  v31 = *(v0 + 464);
  v32 = *(v0 + 456);
  v33 = *(v0 + 448);
  v34 = *(v0 + 440);
  v35 = *(v0 + 432);
  v36 = *(v0 + 424);
  v37 = *(v0 + 416);
  v38 = *(v0 + 408);
  v39 = *(v0 + 400);
  v40 = *(v0 + 392);
  v41 = *(v0 + 384);
  v42 = *(v0 + 376);
  v43 = *(v0 + 368);
  v44 = *(v0 + 360);
  v45 = *(v0 + 352);
  v46 = *(v0 + 344);
  v47 = *(v0 + 336);
  v48 = *(v0 + 328);
  v49 = *(v0 + 320);
  v50 = *(v0 + 312);
  v51 = *(v0 + 304);
  v52 = *(v0 + 280);
  v53 = *(v0 + 264);
  v54 = *(v0 + 256);
  v55 = *(v0 + 248);
  v56 = *(v0 + 240);
  v57 = *(v0 + 232);
  v58 = *(v0 + 224);
  v59 = *(v0 + 216);
  v60 = *(v0 + 208);
  v61 = *(v0 + 200);
  v62 = *(v0 + 192);
  v63 = *(v0 + 184);
  v64 = *(v0 + 176);
  v65 = *(v0 + 168);
  v66 = *(v0 + 160);
  v67 = *(v0 + 152);
  v68 = *(v0 + 144);
  v69 = *(v0 + 136);
  v70 = *(v0 + 128);
  v71 = *(v0 + 120);
  v72 = *(v0 + 112);
  v73 = *(v0 + 104);
  v74 = *(v0 + 96);
  v75 = *(v0 + 88);
  v76 = *(v0 + 80);
  v77 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2295DA658()
{
  v1 = *(*v0 + 776);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2295DA768, v2, 0);
}

uint64_t sub_2295DA768()
{
  v1 = *(v0 + 760);
  (*(v0 + 768))(*(v0 + 568), *(v0 + 288));
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 656);
  v6 = *(v0 + 648);
  v7 = *(v0 + 640);
  v8 = *(v0 + 632);
  v9 = *(v0 + 624);
  v10 = *(v0 + 616);
  v11 = *(v0 + 608);
  v14 = *(v0 + 600);
  v15 = *(v0 + 592);
  v16 = *(v0 + 584);
  v17 = *(v0 + 576);
  v18 = *(v0 + 568);
  v19 = *(v0 + 560);
  v20 = *(v0 + 552);
  v21 = *(v0 + 544);
  v22 = *(v0 + 536);
  v23 = *(v0 + 528);
  v24 = *(v0 + 520);
  v25 = *(v0 + 512);
  v26 = *(v0 + 504);
  v27 = *(v0 + 496);
  v28 = *(v0 + 488);
  v29 = *(v0 + 480);
  v30 = *(v0 + 472);
  v31 = *(v0 + 464);
  v32 = *(v0 + 456);
  v33 = *(v0 + 448);
  v34 = *(v0 + 440);
  v35 = *(v0 + 432);
  v36 = *(v0 + 424);
  v37 = *(v0 + 416);
  v38 = *(v0 + 408);
  v39 = *(v0 + 400);
  v40 = *(v0 + 392);
  v41 = *(v0 + 384);
  v42 = *(v0 + 376);
  v43 = *(v0 + 368);
  v44 = *(v0 + 360);
  v45 = *(v0 + 352);
  v46 = *(v0 + 344);
  v47 = *(v0 + 336);
  v48 = *(v0 + 328);
  v49 = *(v0 + 320);
  v50 = *(v0 + 312);
  v51 = *(v0 + 304);
  v52 = *(v0 + 280);
  v53 = *(v0 + 264);
  v54 = *(v0 + 256);
  v55 = *(v0 + 248);
  v56 = *(v0 + 240);
  v57 = *(v0 + 232);
  v58 = *(v0 + 224);
  v59 = *(v0 + 216);
  v60 = *(v0 + 208);
  v61 = *(v0 + 200);
  v62 = *(v0 + 192);
  v63 = *(v0 + 184);
  v64 = *(v0 + 176);
  v65 = *(v0 + 168);
  v66 = *(v0 + 160);
  v67 = *(v0 + 152);
  v68 = *(v0 + 144);
  v69 = *(v0 + 136);
  v70 = *(v0 + 128);
  v71 = *(v0 + 120);
  v72 = *(v0 + 112);
  v73 = *(v0 + 104);
  v74 = *(v0 + 96);
  v75 = *(v0 + 88);
  v76 = *(v0 + 80);
  v77 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2295DAB98()
{
  v1 = *(*v0 + 800);
  v2 = *(*v0 + 792);
  v3 = *(*v0 + 784);
  v4 = *(*v0 + 680);
  v5 = *(*v0 + 288);
  v6 = *(*v0 + 24);
  v8 = *v0;

  v2(v4, v5);

  return MEMORY[0x2822009F8](sub_2295DAD1C, v6, 0);
}

uint64_t sub_2295DAD1C()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[82];
  v5 = v0[81];
  v6 = v0[80];
  v7 = v0[79];
  v8 = v0[78];
  v9 = v0[77];
  v10 = v0[76];
  v13 = v0[75];
  v14 = v0[74];
  v15 = v0[73];
  v16 = v0[72];
  v17 = v0[71];
  v18 = v0[70];
  v19 = v0[69];
  v20 = v0[68];
  v21 = v0[67];
  v22 = v0[66];
  v23 = v0[65];
  v24 = v0[64];
  v25 = v0[63];
  v26 = v0[62];
  v27 = v0[61];
  v28 = v0[60];
  v29 = v0[59];
  v30 = v0[58];
  v31 = v0[57];
  v32 = v0[56];
  v33 = v0[55];
  v34 = v0[54];
  v35 = v0[53];
  v36 = v0[52];
  v37 = v0[51];
  v38 = v0[50];
  v39 = v0[49];
  v40 = v0[48];
  v41 = v0[47];
  v42 = v0[46];
  v43 = v0[45];
  v44 = v0[44];
  v45 = v0[43];
  v46 = v0[42];
  v47 = v0[41];
  v48 = v0[40];
  v49 = v0[39];
  v50 = v0[38];
  v51 = v0[35];
  v52 = v0[33];
  v53 = v0[32];
  v54 = v0[31];
  v55 = v0[30];
  v56 = v0[29];
  v57 = v0[28];
  v58 = v0[27];
  v59 = v0[26];
  v60 = v0[25];
  v61 = v0[24];
  v62 = v0[23];
  v63 = v0[22];
  v64 = v0[21];
  v65 = v0[20];
  v66 = v0[19];
  v67 = v0[18];
  v68 = v0[17];
  v69 = v0[16];
  v70 = v0[15];
  v71 = v0[14];
  v72 = v0[13];
  v73 = v0[12];
  v74 = v0[11];
  v75 = v0[10];
  v76 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2295DB130()
{
  v1 = *(*v0 + 824);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2295DB240, v2, 0);
}

uint64_t sub_2295DB240()
{
  v1 = *(v0 + 808);
  (*(v0 + 816))(*(v0 + 528), *(v0 + 288));
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 656);
  v6 = *(v0 + 648);
  v7 = *(v0 + 640);
  v8 = *(v0 + 632);
  v9 = *(v0 + 624);
  v10 = *(v0 + 616);
  v11 = *(v0 + 608);
  v14 = *(v0 + 600);
  v15 = *(v0 + 592);
  v16 = *(v0 + 584);
  v17 = *(v0 + 576);
  v18 = *(v0 + 568);
  v19 = *(v0 + 560);
  v20 = *(v0 + 552);
  v21 = *(v0 + 544);
  v22 = *(v0 + 536);
  v23 = *(v0 + 528);
  v24 = *(v0 + 520);
  v25 = *(v0 + 512);
  v26 = *(v0 + 504);
  v27 = *(v0 + 496);
  v28 = *(v0 + 488);
  v29 = *(v0 + 480);
  v30 = *(v0 + 472);
  v31 = *(v0 + 464);
  v32 = *(v0 + 456);
  v33 = *(v0 + 448);
  v34 = *(v0 + 440);
  v35 = *(v0 + 432);
  v36 = *(v0 + 424);
  v37 = *(v0 + 416);
  v38 = *(v0 + 408);
  v39 = *(v0 + 400);
  v40 = *(v0 + 392);
  v41 = *(v0 + 384);
  v42 = *(v0 + 376);
  v43 = *(v0 + 368);
  v44 = *(v0 + 360);
  v45 = *(v0 + 352);
  v46 = *(v0 + 344);
  v47 = *(v0 + 336);
  v48 = *(v0 + 328);
  v49 = *(v0 + 320);
  v50 = *(v0 + 312);
  v51 = *(v0 + 304);
  v52 = *(v0 + 280);
  v53 = *(v0 + 264);
  v54 = *(v0 + 256);
  v55 = *(v0 + 248);
  v56 = *(v0 + 240);
  v57 = *(v0 + 232);
  v58 = *(v0 + 224);
  v59 = *(v0 + 216);
  v60 = *(v0 + 208);
  v61 = *(v0 + 200);
  v62 = *(v0 + 192);
  v63 = *(v0 + 184);
  v64 = *(v0 + 176);
  v65 = *(v0 + 168);
  v66 = *(v0 + 160);
  v67 = *(v0 + 152);
  v68 = *(v0 + 144);
  v69 = *(v0 + 136);
  v70 = *(v0 + 128);
  v71 = *(v0 + 120);
  v72 = *(v0 + 112);
  v73 = *(v0 + 104);
  v74 = *(v0 + 96);
  v75 = *(v0 + 88);
  v76 = *(v0 + 80);
  v77 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2295DB670()
{
  v1 = *(*v0 + 848);
  v2 = *(*v0 + 840);
  v3 = *(*v0 + 832);
  v4 = *(*v0 + 672);
  v5 = *(*v0 + 288);
  v6 = *(*v0 + 24);
  v8 = *v0;

  v2(v4, v5);

  return MEMORY[0x2822009F8](sub_2295E9774, v6, 0);
}

uint64_t sub_2295DB7F4()
{
  v1 = *(*v0 + 872);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2295DB904, v2, 0);
}

uint64_t sub_2295DB904()
{
  v1 = *(v0 + 856);
  (*(v0 + 864))(*(v0 + 488), *(v0 + 288));
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 656);
  v6 = *(v0 + 648);
  v7 = *(v0 + 640);
  v8 = *(v0 + 632);
  v9 = *(v0 + 624);
  v10 = *(v0 + 616);
  v11 = *(v0 + 608);
  v14 = *(v0 + 600);
  v15 = *(v0 + 592);
  v16 = *(v0 + 584);
  v17 = *(v0 + 576);
  v18 = *(v0 + 568);
  v19 = *(v0 + 560);
  v20 = *(v0 + 552);
  v21 = *(v0 + 544);
  v22 = *(v0 + 536);
  v23 = *(v0 + 528);
  v24 = *(v0 + 520);
  v25 = *(v0 + 512);
  v26 = *(v0 + 504);
  v27 = *(v0 + 496);
  v28 = *(v0 + 488);
  v29 = *(v0 + 480);
  v30 = *(v0 + 472);
  v31 = *(v0 + 464);
  v32 = *(v0 + 456);
  v33 = *(v0 + 448);
  v34 = *(v0 + 440);
  v35 = *(v0 + 432);
  v36 = *(v0 + 424);
  v37 = *(v0 + 416);
  v38 = *(v0 + 408);
  v39 = *(v0 + 400);
  v40 = *(v0 + 392);
  v41 = *(v0 + 384);
  v42 = *(v0 + 376);
  v43 = *(v0 + 368);
  v44 = *(v0 + 360);
  v45 = *(v0 + 352);
  v46 = *(v0 + 344);
  v47 = *(v0 + 336);
  v48 = *(v0 + 328);
  v49 = *(v0 + 320);
  v50 = *(v0 + 312);
  v51 = *(v0 + 304);
  v52 = *(v0 + 280);
  v53 = *(v0 + 264);
  v54 = *(v0 + 256);
  v55 = *(v0 + 248);
  v56 = *(v0 + 240);
  v57 = *(v0 + 232);
  v58 = *(v0 + 224);
  v59 = *(v0 + 216);
  v60 = *(v0 + 208);
  v61 = *(v0 + 200);
  v62 = *(v0 + 192);
  v63 = *(v0 + 184);
  v64 = *(v0 + 176);
  v65 = *(v0 + 168);
  v66 = *(v0 + 160);
  v67 = *(v0 + 152);
  v68 = *(v0 + 144);
  v69 = *(v0 + 136);
  v70 = *(v0 + 128);
  v71 = *(v0 + 120);
  v72 = *(v0 + 112);
  v73 = *(v0 + 104);
  v74 = *(v0 + 96);
  v75 = *(v0 + 88);
  v76 = *(v0 + 80);
  v77 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2295DBD34()
{
  v1 = *(*v0 + 896);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2295DBE44, v2, 0);
}

uint64_t sub_2295DBE44()
{
  v1 = *(v0 + 880);
  (*(v0 + 888))(*(v0 + 472), *(v0 + 288));
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 656);
  v6 = *(v0 + 648);
  v7 = *(v0 + 640);
  v8 = *(v0 + 632);
  v9 = *(v0 + 624);
  v10 = *(v0 + 616);
  v11 = *(v0 + 608);
  v14 = *(v0 + 600);
  v15 = *(v0 + 592);
  v16 = *(v0 + 584);
  v17 = *(v0 + 576);
  v18 = *(v0 + 568);
  v19 = *(v0 + 560);
  v20 = *(v0 + 552);
  v21 = *(v0 + 544);
  v22 = *(v0 + 536);
  v23 = *(v0 + 528);
  v24 = *(v0 + 520);
  v25 = *(v0 + 512);
  v26 = *(v0 + 504);
  v27 = *(v0 + 496);
  v28 = *(v0 + 488);
  v29 = *(v0 + 480);
  v30 = *(v0 + 472);
  v31 = *(v0 + 464);
  v32 = *(v0 + 456);
  v33 = *(v0 + 448);
  v34 = *(v0 + 440);
  v35 = *(v0 + 432);
  v36 = *(v0 + 424);
  v37 = *(v0 + 416);
  v38 = *(v0 + 408);
  v39 = *(v0 + 400);
  v40 = *(v0 + 392);
  v41 = *(v0 + 384);
  v42 = *(v0 + 376);
  v43 = *(v0 + 368);
  v44 = *(v0 + 360);
  v45 = *(v0 + 352);
  v46 = *(v0 + 344);
  v47 = *(v0 + 336);
  v48 = *(v0 + 328);
  v49 = *(v0 + 320);
  v50 = *(v0 + 312);
  v51 = *(v0 + 304);
  v52 = *(v0 + 280);
  v53 = *(v0 + 264);
  v54 = *(v0 + 256);
  v55 = *(v0 + 248);
  v56 = *(v0 + 240);
  v57 = *(v0 + 232);
  v58 = *(v0 + 224);
  v59 = *(v0 + 216);
  v60 = *(v0 + 208);
  v61 = *(v0 + 200);
  v62 = *(v0 + 192);
  v63 = *(v0 + 184);
  v64 = *(v0 + 176);
  v65 = *(v0 + 168);
  v66 = *(v0 + 160);
  v67 = *(v0 + 152);
  v68 = *(v0 + 144);
  v69 = *(v0 + 136);
  v70 = *(v0 + 128);
  v71 = *(v0 + 120);
  v72 = *(v0 + 112);
  v73 = *(v0 + 104);
  v74 = *(v0 + 96);
  v75 = *(v0 + 88);
  v76 = *(v0 + 80);
  v77 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2295DC274()
{
  v1 = *(*v0 + 920);
  v2 = *(*v0 + 912);
  v3 = *(*v0 + 904);
  v4 = *(*v0 + 664);
  v5 = *(*v0 + 288);
  v6 = *(*v0 + 24);
  v8 = *v0;

  v2(v4, v5);

  return MEMORY[0x2822009F8](sub_2295E9774, v6, 0);
}

uint64_t sub_2295DC3F8()
{
  v1 = *(*v0 + 944);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2295DC508, v2, 0);
}

uint64_t sub_2295DC508()
{
  v1 = *(v0 + 928);
  (*(v0 + 936))(*(v0 + 432), *(v0 + 288));
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 656);
  v6 = *(v0 + 648);
  v7 = *(v0 + 640);
  v8 = *(v0 + 632);
  v9 = *(v0 + 624);
  v10 = *(v0 + 616);
  v11 = *(v0 + 608);
  v14 = *(v0 + 600);
  v15 = *(v0 + 592);
  v16 = *(v0 + 584);
  v17 = *(v0 + 576);
  v18 = *(v0 + 568);
  v19 = *(v0 + 560);
  v20 = *(v0 + 552);
  v21 = *(v0 + 544);
  v22 = *(v0 + 536);
  v23 = *(v0 + 528);
  v24 = *(v0 + 520);
  v25 = *(v0 + 512);
  v26 = *(v0 + 504);
  v27 = *(v0 + 496);
  v28 = *(v0 + 488);
  v29 = *(v0 + 480);
  v30 = *(v0 + 472);
  v31 = *(v0 + 464);
  v32 = *(v0 + 456);
  v33 = *(v0 + 448);
  v34 = *(v0 + 440);
  v35 = *(v0 + 432);
  v36 = *(v0 + 424);
  v37 = *(v0 + 416);
  v38 = *(v0 + 408);
  v39 = *(v0 + 400);
  v40 = *(v0 + 392);
  v41 = *(v0 + 384);
  v42 = *(v0 + 376);
  v43 = *(v0 + 368);
  v44 = *(v0 + 360);
  v45 = *(v0 + 352);
  v46 = *(v0 + 344);
  v47 = *(v0 + 336);
  v48 = *(v0 + 328);
  v49 = *(v0 + 320);
  v50 = *(v0 + 312);
  v51 = *(v0 + 304);
  v52 = *(v0 + 280);
  v53 = *(v0 + 264);
  v54 = *(v0 + 256);
  v55 = *(v0 + 248);
  v56 = *(v0 + 240);
  v57 = *(v0 + 232);
  v58 = *(v0 + 224);
  v59 = *(v0 + 216);
  v60 = *(v0 + 208);
  v61 = *(v0 + 200);
  v62 = *(v0 + 192);
  v63 = *(v0 + 184);
  v64 = *(v0 + 176);
  v65 = *(v0 + 168);
  v66 = *(v0 + 160);
  v67 = *(v0 + 152);
  v68 = *(v0 + 144);
  v69 = *(v0 + 136);
  v70 = *(v0 + 128);
  v71 = *(v0 + 120);
  v72 = *(v0 + 112);
  v73 = *(v0 + 104);
  v74 = *(v0 + 96);
  v75 = *(v0 + 88);
  v76 = *(v0 + 80);
  v77 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2295DC938()
{
  v1 = *(*v0 + 968);
  v2 = *(*v0 + 960);
  v3 = *(*v0 + 952);
  v4 = *(*v0 + 656);
  v5 = *(*v0 + 288);
  v6 = *(*v0 + 24);
  v8 = *v0;

  v2(v4, v5);

  return MEMORY[0x2822009F8](sub_2295E9774, v6, 0);
}

uint64_t sub_2295DCABC()
{
  v1 = *(*v0 + 992);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2295DCBCC, v2, 0);
}

uint64_t sub_2295DCBCC()
{
  v1 = *(v0 + 976);
  (*(v0 + 984))(*(v0 + 392), *(v0 + 288));
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 656);
  v6 = *(v0 + 648);
  v7 = *(v0 + 640);
  v8 = *(v0 + 632);
  v9 = *(v0 + 624);
  v10 = *(v0 + 616);
  v11 = *(v0 + 608);
  v14 = *(v0 + 600);
  v15 = *(v0 + 592);
  v16 = *(v0 + 584);
  v17 = *(v0 + 576);
  v18 = *(v0 + 568);
  v19 = *(v0 + 560);
  v20 = *(v0 + 552);
  v21 = *(v0 + 544);
  v22 = *(v0 + 536);
  v23 = *(v0 + 528);
  v24 = *(v0 + 520);
  v25 = *(v0 + 512);
  v26 = *(v0 + 504);
  v27 = *(v0 + 496);
  v28 = *(v0 + 488);
  v29 = *(v0 + 480);
  v30 = *(v0 + 472);
  v31 = *(v0 + 464);
  v32 = *(v0 + 456);
  v33 = *(v0 + 448);
  v34 = *(v0 + 440);
  v35 = *(v0 + 432);
  v36 = *(v0 + 424);
  v37 = *(v0 + 416);
  v38 = *(v0 + 408);
  v39 = *(v0 + 400);
  v40 = *(v0 + 392);
  v41 = *(v0 + 384);
  v42 = *(v0 + 376);
  v43 = *(v0 + 368);
  v44 = *(v0 + 360);
  v45 = *(v0 + 352);
  v46 = *(v0 + 344);
  v47 = *(v0 + 336);
  v48 = *(v0 + 328);
  v49 = *(v0 + 320);
  v50 = *(v0 + 312);
  v51 = *(v0 + 304);
  v52 = *(v0 + 280);
  v53 = *(v0 + 264);
  v54 = *(v0 + 256);
  v55 = *(v0 + 248);
  v56 = *(v0 + 240);
  v57 = *(v0 + 232);
  v58 = *(v0 + 224);
  v59 = *(v0 + 216);
  v60 = *(v0 + 208);
  v61 = *(v0 + 200);
  v62 = *(v0 + 192);
  v63 = *(v0 + 184);
  v64 = *(v0 + 176);
  v65 = *(v0 + 168);
  v66 = *(v0 + 160);
  v67 = *(v0 + 152);
  v68 = *(v0 + 144);
  v69 = *(v0 + 136);
  v70 = *(v0 + 128);
  v71 = *(v0 + 120);
  v72 = *(v0 + 112);
  v73 = *(v0 + 104);
  v74 = *(v0 + 96);
  v75 = *(v0 + 88);
  v76 = *(v0 + 80);
  v77 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2295DCFFC()
{
  v1 = *(*v0 + 1016);
  v2 = *(*v0 + 1008);
  v3 = *(*v0 + 1000);
  v4 = *(*v0 + 624);
  v5 = *(*v0 + 288);
  v6 = *(*v0 + 24);
  v8 = *v0;

  v2(v4, v5);

  return MEMORY[0x2822009F8](sub_2295E9774, v6, 0);
}

uint64_t sub_2295DD180()
{
  v1 = *(*v0 + 1040);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2295DD290, v2, 0);
}

uint64_t sub_2295DD290()
{
  v1 = *(v0 + 1024);
  (*(v0 + 1032))(*(v0 + 328), *(v0 + 288));
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 656);
  v6 = *(v0 + 648);
  v7 = *(v0 + 640);
  v8 = *(v0 + 632);
  v9 = *(v0 + 624);
  v10 = *(v0 + 616);
  v11 = *(v0 + 608);
  v14 = *(v0 + 600);
  v15 = *(v0 + 592);
  v16 = *(v0 + 584);
  v17 = *(v0 + 576);
  v18 = *(v0 + 568);
  v19 = *(v0 + 560);
  v20 = *(v0 + 552);
  v21 = *(v0 + 544);
  v22 = *(v0 + 536);
  v23 = *(v0 + 528);
  v24 = *(v0 + 520);
  v25 = *(v0 + 512);
  v26 = *(v0 + 504);
  v27 = *(v0 + 496);
  v28 = *(v0 + 488);
  v29 = *(v0 + 480);
  v30 = *(v0 + 472);
  v31 = *(v0 + 464);
  v32 = *(v0 + 456);
  v33 = *(v0 + 448);
  v34 = *(v0 + 440);
  v35 = *(v0 + 432);
  v36 = *(v0 + 424);
  v37 = *(v0 + 416);
  v38 = *(v0 + 408);
  v39 = *(v0 + 400);
  v40 = *(v0 + 392);
  v41 = *(v0 + 384);
  v42 = *(v0 + 376);
  v43 = *(v0 + 368);
  v44 = *(v0 + 360);
  v45 = *(v0 + 352);
  v46 = *(v0 + 344);
  v47 = *(v0 + 336);
  v48 = *(v0 + 328);
  v49 = *(v0 + 320);
  v50 = *(v0 + 312);
  v51 = *(v0 + 304);
  v52 = *(v0 + 280);
  v53 = *(v0 + 264);
  v54 = *(v0 + 256);
  v55 = *(v0 + 248);
  v56 = *(v0 + 240);
  v57 = *(v0 + 232);
  v58 = *(v0 + 224);
  v59 = *(v0 + 216);
  v60 = *(v0 + 208);
  v61 = *(v0 + 200);
  v62 = *(v0 + 192);
  v63 = *(v0 + 184);
  v64 = *(v0 + 176);
  v65 = *(v0 + 168);
  v66 = *(v0 + 160);
  v67 = *(v0 + 152);
  v68 = *(v0 + 144);
  v69 = *(v0 + 136);
  v70 = *(v0 + 128);
  v71 = *(v0 + 120);
  v72 = *(v0 + 112);
  v73 = *(v0 + 104);
  v74 = *(v0 + 96);
  v75 = *(v0 + 88);
  v76 = *(v0 + 80);
  v77 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2295DD6C0()
{
  v1[20] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v3 = type metadata accessor for HomeEntity();
  v1[22] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295DD78C, v0, 0);
}

uint64_t sub_2295DD78C()
{
  v1 = __swift_project_boxed_opaque_existential_0((v0[20] + 112), *(v0[20] + 136));
  sub_22957F1C4((v1 + 1), (v0 + 2));
  v2 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = [v2 homes];

  if (!v3)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  sub_229562F68(0, &qword_2814017B0, off_278666198);
  v7 = sub_22A4DD83C();
  v0[24] = v7;

  if (v7 >> 62)
  {
LABEL_23:
    v38 = sub_22A4DE0EC();
    v0[25] = v38;
    if (v38)
    {
LABEL_4:
      v9 = 0;
      while (1)
      {
        v10 = v0[24];
        if ((v10 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x22AAD13F0](v9);
        }

        else
        {
          if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v11 = *(v10 + 8 * v9 + 32);
        }

        v12 = v11;
        v0[26] = v11;
        v0[27] = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v13 = __swift_project_boxed_opaque_existential_0((v0[20] + 112), *(v0[20] + 136))[6];
        v0[28] = v13;
        v14 = *(v13 + 16);
        v0[29] = v14;
        if (v14)
        {
          break;
        }

        v9 = v0[27];
        if (v9 == v0[25])
        {
          goto LABEL_12;
        }
      }

      v0[30] = 0;
      v20 = v0[26];

      sub_22957F1C4(v21 + 32, (v0 + 7));
      v22 = __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
      v23 = [v20 urlString];
      if (v23)
      {
        v24 = v23;
        v25 = sub_22A4DD5EC();
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      v28 = v0[26];
      v30 = v0[22];
      v29 = v0[23];
      *v29 = v25;
      v29[1] = v27;
      v31 = [v28 spiClientIdentifier];
      v32 = v29 + *(v30 + 20);
      sub_22A4DB79C();

      v33 = [v28 name];
      v34 = sub_22A4DD5EC();
      v36 = v35;

      v37 = (v29 + *(v30 + 24));
      *v37 = v34;
      v37[1] = v36;
      sub_2295E9130(v29, type metadata accessor for HomeEntity);
      v5 = *v22;
      v0[31] = *v22;
      v4 = sub_2295DDAA4;
      v6 = 0;

      return MEMORY[0x2822009F8](v4, v5, v6);
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[25] = v8;
    if (v8)
    {
      goto LABEL_4;
    }
  }

LABEL_12:
  v16 = v0[23];
  v15 = v0[24];
  v17 = v0[21];

  v18 = v0[1];

  return v18();
}

uint64_t sub_2295DDAA4()
{
  v1 = v0[31];
  if (v1[29])
  {
    v2 = v1[29];

    sub_22A4DDA7C();

    v1 = v0[31];
  }

  v3 = v0[20];
  v4 = v0[21];
  sub_2295C9C1C();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v6 = sub_22A4DD9DC();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v0[15] = swift_getAssociatedTypeWitness();
  v0[16] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 12);

  sub_22A4DBAFC();

  sub_22953EAE4(v4, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 12), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295DDCB4, v3, 0);
}

uint64_t sub_2295DDCB4()
{
  v1 = v0[29];
  v2 = v0[30] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  if (v2 == v1)
  {
    v3 = v0[28];
    v4 = v0[26];

    while (1)
    {
      v7 = v0[27];
      if (v7 == v0[25])
      {
        break;
      }

      v8 = v0[24];
      if ((v8 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x22AAD13F0](v0[27]);
      }

      else
      {
        if (v7 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v5 = *(v8 + 8 * v7 + 32);
      }

      v9 = v5;
      v0[26] = v5;
      v0[27] = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return MEMORY[0x2822009F8](v5, v8, v6);
      }

      v10 = __swift_project_boxed_opaque_existential_0((v0[20] + 112), *(v0[20] + 136))[6];
      v0[28] = v10;
      v11 = *(v10 + 16);
      v0[29] = v11;
      if (v11)
      {

        v12 = 0;
        goto LABEL_16;
      }
    }

    v15 = v0[23];
    v14 = v0[24];
    v16 = v0[21];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v12 = v0[30] + 1;
    v13 = v0[28];
LABEL_16:
    v0[30] = v12;
    v19 = v0[26];
    sub_22957F1C4(v13 + 40 * v12 + 32, (v0 + 7));
    v20 = __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
    v21 = [v19 urlString];
    if (v21)
    {
      v22 = v21;
      v23 = sub_22A4DD5EC();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v26 = v0[26];
    v28 = v0[22];
    v27 = v0[23];
    *v27 = v23;
    v27[1] = v25;
    v29 = [v26 spiClientIdentifier];
    v30 = v27 + *(v28 + 20);
    sub_22A4DB79C();

    v31 = [v26 name];
    v32 = sub_22A4DD5EC();
    v34 = v33;

    v35 = (v27 + *(v28 + 24));
    *v35 = v32;
    v35[1] = v34;
    sub_2295E9130(v27, type metadata accessor for HomeEntity);
    v8 = *v20;
    v0[31] = *v20;
    v5 = sub_2295DDAA4;
    v6 = 0;

    return MEMORY[0x2822009F8](v5, v8, v6);
  }
}

uint64_t sub_2295DDF48(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v2[34] = *v1;
  v3 = sub_22A4DD07C();
  v2[35] = v3;
  v4 = *(v3 - 8);
  v2[36] = v4;
  v5 = *(v4 + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v2[39] = swift_task_alloc();
  v7 = type metadata accessor for HomeEntity();
  v2[40] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[41] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0) - 8) + 64) + 15;
  v2[42] = swift_task_alloc();
  v10 = sub_22A4DB7DC();
  v2[43] = v10;
  v11 = *(v10 - 8);
  v2[44] = v11;
  v12 = *(v11 + 64) + 15;
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v13 = sub_22A4DB21C();
  v2[47] = v13;
  v14 = *(v13 - 8);
  v2[48] = v14;
  v15 = *(v14 + 64) + 15;
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295DE1AC, v1, 0);
}

uint64_t sub_2295DE1AC()
{
  v116 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 256);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  sub_22A4DBA4C();
  v3 = sub_22A4DB20C();
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  v5 = *MEMORY[0x277CD0640];
  *(v0 + 232) = sub_22A4DD5EC();
  *(v0 + 240) = v6;
  sub_22A4DE18C();
  if (!*(v4 + 16) || (v7 = sub_2295402E8(v0 + 16), (v8 & 1) == 0))
  {

    sub_22954045C(v0 + 16);
LABEL_11:
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    goto LABEL_12;
  }

  sub_2295404B0(*(v4 + 56) + 32 * v7, v0 + 176);
  sub_22954045C(v0 + 16);

  if (!*(v0 + 200))
  {
LABEL_12:
    v28 = *(v0 + 344);
    v29 = *(v0 + 352);
    v30 = *(v0 + 336);
    sub_22953EAE4(v0 + 176, &unk_27D87DE60, &unk_22A57A960);
    (*(v29 + 56))(v30, 1, 1, v28);
LABEL_13:
    v32 = *(v0 + 392);
    v31 = *(v0 + 400);
    v33 = *(v0 + 376);
    v34 = *(v0 + 384);
    v35 = *(v0 + 296);
    v36 = *(v0 + 272);
    sub_22953EAE4(*(v0 + 336), &unk_27D87D2A0, &unk_22A578BD0);
    sub_229541CB0(v36, &off_283CDDAE8);
    (*(v34 + 16))(v32, v31, v33);
    v37 = sub_22A4DD05C();
    v38 = sub_22A4DDCEC();
    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 392);
    v41 = *(v0 + 400);
    v43 = *(v0 + 376);
    v42 = *(v0 + 384);
    v44 = *(v0 + 288);
    v45 = *(v0 + 296);
    v46 = *(v0 + 280);
    if (v39)
    {
      v113 = *(v0 + 296);
      v47 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v115 = v109;
      *v47 = 136315138;
      v107 = v38;
      *(v0 + 248) = sub_22A4DB20C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
      v48 = sub_22A4DDF7C();
      v49 = v43;
      v51 = v50;
      v52 = *(v42 + 8);
      v53 = v40;
      v54 = v49;
      v52(v53, v49);

      v55 = sub_2295A3E30(v48, v51, &v115);

      *(v47 + 4) = v55;
      _os_log_impl(&dword_229538000, v37, v107, "Could not handle new home added notification %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v109);
      MEMORY[0x22AAD4E50](v109, -1, -1);
      MEMORY[0x22AAD4E50](v47, -1, -1);

      (*(v44 + 8))(v113, v46);
      v52(v41, v54);
    }

    else
    {

      v56 = *(v42 + 8);
      v56(v40, v43);
      (*(v44 + 8))(v45, v46);
      v56(v41, v43);
    }

    goto LABEL_16;
  }

  v9 = *(v0 + 344);
  v10 = *(v0 + 352);
  v11 = *(v0 + 336);
  v12 = swift_dynamicCast();
  (*(v10 + 56))(v11, v12 ^ 1u, 1, v9);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    goto LABEL_13;
  }

  v13 = *(v0 + 264);
  (*(*(v0 + 352) + 32))(*(v0 + 368), *(v0 + 336), *(v0 + 344));
  v14 = __swift_project_boxed_opaque_existential_0((v13 + 112), *(v13 + 136));
  sub_22957F1C4((v14 + 1), v0 + 56);
  v15 = *__swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v16 = sub_22A4DB77C();
  v17 = [v15 _homeWithUUID_];
  *(v0 + 408) = v17;

  if (v17)
  {
    v18 = __swift_project_boxed_opaque_existential_0((v13 + 112), *(v13 + 136))[6];
    *(v0 + 416) = v18;
    v19 = *(v18 + 16);
    *(v0 + 424) = v19;
    if (v19)
    {
      *(v0 + 432) = 0;
      v20 = *(v0 + 408);

      sub_22957F1C4(v21 + 32, v0 + 96);
      v22 = __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));
      v23 = [v20 urlString];
      if (v23)
      {
        v24 = v23;
        v25 = sub_22A4DD5EC();
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      v94 = *(v0 + 408);
      v96 = *(v0 + 320);
      v95 = *(v0 + 328);
      *v95 = v25;
      v95[1] = v27;
      v97 = [v94 spiClientIdentifier];
      v98 = v95 + *(v96 + 20);
      sub_22A4DB79C();

      v99 = [v94 name];
      v100 = sub_22A4DD5EC();
      v102 = v101;

      v103 = (v95 + *(v96 + 24));
      *v103 = v100;
      v103[1] = v102;
      sub_2295E9130(v95, type metadata accessor for HomeEntity);
      v104 = *v22;
      *(v0 + 440) = *v22;

      return MEMORY[0x2822009F8](sub_2295DEA6C, v104, 0);
    }

    v90 = *(v0 + 400);
    v91 = *(v0 + 376);
    v92 = *(v0 + 384);
    (*(*(v0 + 352) + 8))(*(v0 + 368), *(v0 + 344));
    (*(v92 + 8))(v90, v91);
  }

  else
  {
    v69 = *(v0 + 360);
    v68 = *(v0 + 368);
    v70 = *(v0 + 344);
    v71 = *(v0 + 352);
    v72 = *(v0 + 304);
    sub_229541CB0(*(v0 + 272), &off_283CDDAE8);
    (*(v71 + 16))(v69, v68, v70);
    v73 = sub_22A4DD05C();
    v74 = sub_22A4DDCCC();
    v75 = os_log_type_enabled(v73, v74);
    v76 = *(v0 + 400);
    v78 = *(v0 + 376);
    v77 = *(v0 + 384);
    v79 = *(v0 + 360);
    v80 = *(v0 + 344);
    v81 = *(v0 + 352);
    v112 = *(v0 + 304);
    v114 = *(v0 + 368);
    v82 = *(v0 + 288);
    v111 = *(v0 + 280);
    if (v75)
    {
      v105 = v74;
      v83 = swift_slowAlloc();
      v110 = v77;
      v84 = swift_slowAlloc();
      v115 = v84;
      *v83 = 136315138;
      sub_2295E9190(&qword_281403860, MEMORY[0x277CC95F0]);
      v106 = v78;
      v108 = v76;
      v85 = sub_22A4DE5CC();
      v87 = v86;
      v88 = *(v81 + 8);
      v88(v79, v80);
      v89 = sub_2295A3E30(v85, v87, &v115);

      *(v83 + 4) = v89;
      _os_log_impl(&dword_229538000, v73, v105, "Could not find the home with UUID %s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v84);
      MEMORY[0x22AAD4E50](v84, -1, -1);
      MEMORY[0x22AAD4E50](v83, -1, -1);

      (*(v82 + 8))(v112, v111);
      v88(v114, v80);
      (*(v110 + 8))(v108, v106);
    }

    else
    {

      v93 = *(v81 + 8);
      v93(v79, v80);
      (*(v82 + 8))(v112, v111);
      v93(v114, v80);
      (*(v77 + 8))(v76, v78);
    }
  }

LABEL_16:
  v58 = *(v0 + 392);
  v57 = *(v0 + 400);
  v60 = *(v0 + 360);
  v59 = *(v0 + 368);
  v62 = *(v0 + 328);
  v61 = *(v0 + 336);
  v64 = *(v0 + 304);
  v63 = *(v0 + 312);
  v65 = *(v0 + 296);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_2295DEA6C()
{
  v1 = v0[55];
  if (v1[29])
  {
    v2 = v1[29];

    sub_22A4DDA7C();

    v1 = v0[55];
  }

  v3 = v0[39];
  v4 = v0[33];
  sub_2295C9C1C();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v6 = sub_22A4DD9DC();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v0[20] = swift_getAssociatedTypeWitness();
  v0[21] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 17);

  sub_22A4DBAFC();

  sub_22953EAE4(v3, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 17), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295DEC80, v4, 0);
}

uint64_t sub_2295DEC80()
{
  v1 = v0[53];
  v2 = v0[54] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  if (v2 == v1)
  {
    v4 = v0[51];
    v3 = v0[52];

    v5 = v0[50];
    v6 = v0[47];
    v7 = v0[48];
    (*(v0[44] + 8))(v0[46], v0[43]);
    (*(v7 + 8))(v5, v6);
    v9 = v0[49];
    v8 = v0[50];
    v11 = v0[45];
    v10 = v0[46];
    v13 = v0[41];
    v12 = v0[42];
    v15 = v0[38];
    v14 = v0[39];
    v16 = v0[37];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v19 = v0[54];
    v0[54] = v19 + 1;
    v20 = v0[51];
    sub_22957F1C4(v0[52] + 40 * v19 + 72, (v0 + 12));
    v21 = __swift_project_boxed_opaque_existential_0(v0 + 12, v0[15]);
    v22 = [v20 urlString];
    if (v22)
    {
      v23 = v22;
      v24 = sub_22A4DD5EC();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v27 = v0[51];
    v29 = v0[40];
    v28 = v0[41];
    *v28 = v24;
    v28[1] = v26;
    v30 = [v27 spiClientIdentifier];
    v31 = v28 + *(v29 + 20);
    sub_22A4DB79C();

    v32 = [v27 name];
    v33 = sub_22A4DD5EC();
    v35 = v34;

    v36 = (v28 + *(v29 + 24));
    *v36 = v33;
    v36[1] = v35;
    sub_2295E9130(v28, type metadata accessor for HomeEntity);
    v37 = *v21;
    v0[55] = *v21;

    return MEMORY[0x2822009F8](sub_2295DEA6C, v37, 0);
  }
}

uint64_t sub_2295DEEEC(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v2[22] = *v1;
  v3 = sub_22A4DD07C();
  v2[23] = v3;
  v4 = *(v3 - 8);
  v2[24] = v4;
  v5 = *(v4 + 64) + 15;
  v2[25] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v7 = type metadata accessor for HomeEntity();
  v2[27] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v9 = sub_22A4DB21C();
  v2[29] = v9;
  v10 = *(v9 - 8);
  v2[30] = v10;
  v11 = *(v10 + 64) + 15;
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295DF098, v1, 0);
}

uint64_t sub_2295DF098()
{
  v1 = v0[31];
  v2 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  sub_22A4DBA4C();
  sub_22A4DB1FC();
  if (!v0[15])
  {
    sub_22953EAE4((v0 + 12), &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_7;
  }

  sub_229562F68(0, &qword_2814017B0, off_278666198);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v15 = v0[25];
    sub_229541CB0(v0[22], &off_283CDDAE8);
    v16 = sub_22A4DD05C();
    v17 = sub_22A4DDCEC();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[30];
    v19 = v0[31];
    v21 = v0[29];
    v23 = v0[24];
    v22 = v0[25];
    v24 = v0[23];
    if (v18)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_229538000, v16, v17, "Could not handle home name changed notification as passed object is not HMDHome type", v25, 2u);
      MEMORY[0x22AAD4E50](v25, -1, -1);
    }

    (*(v23 + 8))(v22, v24);
    (*(v20 + 8))(v19, v21);
    goto LABEL_10;
  }

  v3 = v0[21];
  v4 = v0[19];
  v0[32] = v4;
  v5 = __swift_project_boxed_opaque_existential_0((v3 + 112), *(v3 + 136))[6];
  v0[33] = v5;
  v6 = *(v5 + 16);
  v0[34] = v6;
  if (v6)
  {
    v0[35] = 0;
    v7 = v0[32];

    sub_22957F1C4(v8 + 32, (v0 + 2));
    v9 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v10 = [v7 urlString];
    if (v10)
    {
      v11 = v10;
      v12 = sub_22A4DD5EC();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v32 = v0[32];
    v34 = v0[27];
    v33 = v0[28];
    *v33 = v12;
    v33[1] = v14;
    v35 = [v32 spiClientIdentifier];
    v36 = v33 + *(v34 + 20);
    sub_22A4DB79C();

    v37 = [v32 name];
    v38 = sub_22A4DD5EC();
    v40 = v39;

    v41 = (v33 + *(v34 + 24));
    *v41 = v38;
    v41[1] = v40;
    sub_2295E9130(v33, type metadata accessor for HomeEntity);
    v42 = *v9;
    v0[36] = *v9;

    return MEMORY[0x2822009F8](sub_2295DF41C, v42, 0);
  }

  (*(v0[30] + 8))(v0[31], v0[29]);
LABEL_10:
  v26 = v0[31];
  v27 = v0[28];
  v29 = v0[25];
  v28 = v0[26];

  v30 = v0[1];

  return v30();
}

uint64_t sub_2295DF41C()
{
  v1 = v0[36];
  if (v1[29])
  {
    v2 = v1[29];

    sub_22A4DDA7C();

    v1 = v0[36];
  }

  v3 = v0[26];
  v4 = v0[21];
  sub_2295C9C1C();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v6 = sub_22A4DD9DC();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);

  sub_22A4DBAFC();

  sub_22953EAE4(v3, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 7), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295DF630, v4, 0);
}

uint64_t sub_2295DF630()
{
  v1 = v0[34];
  v2 = v0[35] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v2 == v1)
  {
    v4 = v0[32];
    v3 = v0[33];

    (*(v0[30] + 8))(v0[31], v0[29]);
    v5 = v0[31];
    v6 = v0[28];
    v8 = v0[25];
    v7 = v0[26];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[35];
    v0[35] = v11 + 1;
    v12 = v0[32];
    sub_22957F1C4(v0[33] + 40 * v11 + 72, (v0 + 2));
    v13 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v14 = [v12 urlString];
    if (v14)
    {
      v15 = v14;
      v16 = sub_22A4DD5EC();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    v19 = v0[32];
    v21 = v0[27];
    v20 = v0[28];
    *v20 = v16;
    v20[1] = v18;
    v22 = [v19 spiClientIdentifier];
    v23 = v20 + *(v21 + 20);
    sub_22A4DB79C();

    v24 = [v19 name];
    v25 = sub_22A4DD5EC();
    v27 = v26;

    v28 = (v20 + *(v21 + 24));
    *v28 = v25;
    v28[1] = v27;
    sub_2295E9130(v20, type metadata accessor for HomeEntity);
    v29 = *v13;
    v0[36] = *v13;

    return MEMORY[0x2822009F8](sub_2295DF41C, v29, 0);
  }
}

uint64_t sub_2295DF84C()
{
  *(v1 + 80) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  *(v1 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295DF8E8, v0, 0);
}

uint64_t sub_2295DF8E8()
{
  v1 = __swift_project_boxed_opaque_existential_0((v0[10] + 112), *(v0[10] + 136))[6];
  v0[12] = v1;
  v2 = *(v1 + 16);
  v0[13] = v2;
  if (v2)
  {
    v0[14] = 0;
    v3 = *(v1 + 56);

    v5 = __swift_project_boxed_opaque_existential_0((v4 + 32), v3);
    v6 = *v5;
    v0[15] = *v5;

    return MEMORY[0x2822009F8](sub_2295DF9C0, v6, 0);
  }

  else
  {
    v7 = v0[11];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2295DF9C0()
{
  v1 = v0[15];
  if (v1[29])
  {
    v2 = v1[29];

    sub_22A4DDA7C();

    v1 = v0[15];
  }

  v3 = v0[10];
  v4 = v0[11];
  sub_2295C9C1C();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v6 = sub_22A4DD9DC();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);

  sub_22A4DBAFC();

  sub_22953EAE4(v4, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 2), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295DFBD0, v3, 0);
}

uint64_t sub_2295DFBD0()
{
  v1 = v0[14] + 1;
  if (v1 == v0[13])
  {
    v2 = v0[12];

    v3 = v0[11];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[14] = v1;
    v6 = __swift_project_boxed_opaque_existential_0((v0[12] + 40 * v1 + 32), *(v0[12] + 40 * v1 + 56));
    v7 = *v6;
    v0[15] = *v6;

    return MEMORY[0x2822009F8](sub_2295DF9C0, v7, 0);
  }
}

uint64_t sub_2295DFCA0(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v2[22] = *v1;
  v3 = sub_22A4DD07C();
  v2[23] = v3;
  v4 = *(v3 - 8);
  v2[24] = v4;
  v5 = *(v4 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA38, &unk_22A579BE8) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v8 = type metadata accessor for RoomEntity();
  v2[29] = v8;
  v9 = *(v8 - 8);
  v2[30] = v9;
  v10 = *(v9 + 64) + 15;
  v2[31] = swift_task_alloc();
  v11 = sub_22A4DB21C();
  v2[32] = v11;
  v12 = *(v11 - 8);
  v2[33] = v12;
  v13 = *(v12 + 64) + 15;
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295DFEBC, v1, 0);
}

uint64_t sub_2295DFEBC()
{
  v1 = v0[34];
  v2 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  sub_22A4DBA4C();
  sub_22A4DB1FC();
  if (!v0[15])
  {
    sub_22953EAE4((v0 + 12), &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_8;
  }

  sub_229562F68(0, &unk_2814017A0, off_278666308);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v21 = v0[25];
    sub_229541CB0(v0[22], &off_283CDDAE8);
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCEC();
    v24 = os_log_type_enabled(v22, v23);
    v26 = v0[33];
    v25 = v0[34];
    v27 = v0[32];
    v29 = v0[24];
    v28 = v0[25];
    v30 = v0[23];
    if (v24)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_229538000, v22, v23, "Could not index room as the notification did not contain a HMDRoom", v31, 2u);
      MEMORY[0x22AAD4E50](v31, -1, -1);
    }

    (*(v29 + 8))(v28, v30);
    (*(v26 + 8))(v25, v27);
    goto LABEL_11;
  }

  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[28];
  v6 = v0[19];
  v0[35] = v6;
  sub_2295C2A94(v6, v5);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v7 = v0[26];
    v8 = v0[22];
    sub_22953EAE4(v0[28], &qword_27D87DA38, &unk_22A579BE8);
    sub_229541CB0(v8, &off_283CDDAE8);
    v9 = v6;
    v10 = sub_22A4DD05C();
    v11 = sub_22A4DDCEC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v9;
      v14 = v9;
      _os_log_impl(&dword_229538000, v10, v11, "Unable to create RoomEntity for %@", v12, 0xCu);
      sub_22953EAE4(v13, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v13, -1, -1);
      MEMORY[0x22AAD4E50](v12, -1, -1);
    }

    v16 = v0[33];
    v15 = v0[34];
    v17 = v0[32];
    v18 = v0[26];
    v19 = v0[23];
    v20 = v0[24];

    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    goto LABEL_11;
  }

  v40 = v0[21];
  sub_2295E9240(v0[28], v0[31], type metadata accessor for RoomEntity);
  v41 = __swift_project_boxed_opaque_existential_0((v40 + 112), *(v40 + 136))[6];
  v0[36] = v41;
  v42 = *(v41 + 16);
  v0[37] = v42;
  if (!v42)
  {

    v52 = v0[33];
    v51 = v0[34];
    v53 = v0[32];
    sub_2295E9130(v0[31], type metadata accessor for RoomEntity);
    (*(v52 + 8))(v51, v53);
LABEL_11:
    v32 = v0[34];
    v33 = v0[31];
    v35 = v0[27];
    v34 = v0[28];
    v37 = v0[25];
    v36 = v0[26];

    v38 = v0[1];

    return v38();
  }

  v0[38] = 0;
  v44 = v0[30];
  v43 = v0[31];

  sub_22957F1C4(v45 + 32, (v0 + 2));
  v46 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D478, &qword_22A5798E0);
  v47 = *(v44 + 72);
  v48 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v49 = swift_allocObject();
  sub_2295E91D8(v43, v49 + v48, type metadata accessor for RoomEntity);
  swift_setDeallocating();
  sub_2295E9130(v49 + v48, type metadata accessor for RoomEntity);
  swift_deallocClassInstance();
  v50 = *v46;
  v0[39] = *v46;

  return MEMORY[0x2822009F8](sub_2295E03CC, v50, 0);
}

uint64_t sub_2295E03CC()
{
  v1 = v0[39];
  if (v1[29])
  {
    v2 = v1[29];

    sub_22A4DDA7C();

    v1 = v0[39];
  }

  v3 = v0[27];
  v4 = v0[21];
  sub_2295C9C1C();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v6 = sub_22A4DD9DC();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);

  sub_22A4DBAFC();

  sub_22953EAE4(v3, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 7), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295E05E0, v4, 0);
}

uint64_t sub_2295E05E0()
{
  v1 = v0[37];
  v2 = v0[38] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v2 == v1)
  {
    v4 = v0[35];
    v3 = v0[36];

    v6 = v0[33];
    v5 = v0[34];
    v7 = v0[32];
    sub_2295E9130(v0[31], type metadata accessor for RoomEntity);
    (*(v6 + 8))(v5, v7);
    v8 = v0[34];
    v9 = v0[31];
    v11 = v0[27];
    v10 = v0[28];
    v13 = v0[25];
    v12 = v0[26];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v0[38];
    v0[38] = v16 + 1;
    v18 = v0[30];
    v17 = v0[31];
    sub_22957F1C4(v0[36] + 40 * v16 + 72, (v0 + 2));
    v19 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D478, &qword_22A5798E0);
    v20 = *(v18 + 72);
    v21 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v22 = swift_allocObject();
    sub_2295E91D8(v17, v22 + v21, type metadata accessor for RoomEntity);
    swift_setDeallocating();
    sub_2295E9130(v22 + v21, type metadata accessor for RoomEntity);
    swift_deallocClassInstance();
    v23 = *v19;
    v0[39] = *v19;

    return MEMORY[0x2822009F8](sub_2295E03CC, v23, 0);
  }
}

uint64_t sub_2295E07E4(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v2[26] = *v1;
  v3 = sub_22A4DD07C();
  v2[27] = v3;
  v4 = *(v3 - 8);
  v2[28] = v4;
  v5 = *(v4 + 64) + 15;
  v2[29] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v7 = sub_22A4DB21C();
  v2[31] = v7;
  v8 = *(v7 - 8);
  v2[32] = v8;
  v9 = *(v8 + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295E096C, v1, 0);
}

uint64_t sub_2295E096C()
{
  v52 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  sub_22A4DBA4C();
  v3 = sub_22A4DB20C();
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  v5 = *MEMORY[0x277CD0D38];
  *(v0 + 152) = sub_22A4DD5EC();
  *(v0 + 160) = v6;
  sub_22A4DE18C();
  if (!*(v4 + 16) || (v7 = sub_2295402E8(v0 + 16), (v8 & 1) == 0))
  {

    sub_22954045C(v0 + 16);
LABEL_11:
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_12;
  }

  sub_2295404B0(*(v4 + 56) + 32 * v7, v0 + 96);
  sub_22954045C(v0 + 16);

  if (!*(v0 + 120))
  {
LABEL_12:
    sub_22953EAE4(v0 + 96, &unk_27D87DE60, &unk_22A57A960);
LABEL_13:
    v18 = *(v0 + 264);
    v17 = *(v0 + 272);
    v19 = *(v0 + 248);
    v20 = *(v0 + 256);
    v21 = *(v0 + 232);
    sub_229541CB0(*(v0 + 208), &off_283CDDAE8);
    (*(v20 + 16))(v18, v17, v19);
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCEC();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 264);
    v26 = *(v0 + 272);
    v28 = *(v0 + 248);
    v27 = *(v0 + 256);
    v29 = *(v0 + 224);
    v30 = *(v0 + 232);
    v31 = *(v0 + 216);
    if (v24)
    {
      v50 = *(v0 + 232);
      v32 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v51 = v49;
      *v32 = 136315138;
      v48 = v23;
      *(v0 + 184) = sub_22A4DB20C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
      v33 = sub_22A4DDF7C();
      v34 = v28;
      v36 = v35;
      v37 = *(v27 + 8);
      v38 = v25;
      v39 = v34;
      v37(v38, v34);

      v40 = sub_2295A3E30(v33, v36, &v51);

      *(v32 + 4) = v40;
      _os_log_impl(&dword_229538000, v22, v48, "Did not find room uuid. Could not handle room removed notification %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x22AAD4E50](v49, -1, -1);
      MEMORY[0x22AAD4E50](v32, -1, -1);

      (*(v29 + 8))(v50, v31);
      v37(v26, v39);
    }

    else
    {

      v41 = *(v27 + 8);
      v41(v25, v28);
      (*(v29 + 8))(v30, v31);
      v41(v26, v28);
    }

    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(v0 + 200);
  v10 = *(v0 + 176);

  v11 = __swift_project_boxed_opaque_existential_0((v9 + 112), *(v9 + 136))[6];
  *(v0 + 280) = v11;
  v12 = *(v11 + 16);
  *(v0 + 288) = v12;
  if (v12)
  {
    *(v0 + 296) = 0;
    v13 = *(v11 + 56);

    v15 = __swift_project_boxed_opaque_existential_0((v14 + 32), v13);
    v16 = *v15;
    *(v0 + 304) = *v15;

    return MEMORY[0x2822009F8](sub_2295E0DAC, v16, 0);
  }

  (*(*(v0 + 256) + 8))(*(v0 + 272), *(v0 + 248));
LABEL_16:
  v43 = *(v0 + 264);
  v42 = *(v0 + 272);
  v45 = *(v0 + 232);
  v44 = *(v0 + 240);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_2295E0DAC()
{
  v1 = v0[38];
  if (v1[29])
  {
    v2 = v1[29];

    sub_22A4DDA7C();

    v1 = v0[38];
  }

  v3 = v0[30];
  v4 = v0[25];
  sub_2295C9C1C();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v6 = sub_22A4DD9DC();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);

  sub_22A4DBAFC();

  sub_22953EAE4(v3, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 7), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295E0FC0, v4, 0);
}

uint64_t sub_2295E0FC0()
{
  v1 = v0[37] + 1;
  if (v1 == v0[36])
  {
    v2 = v0[35];

    (*(v0[32] + 8))(v0[34], v0[31]);
    v4 = v0[33];
    v3 = v0[34];
    v6 = v0[29];
    v5 = v0[30];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v0[37] = v1;
    v9 = __swift_project_boxed_opaque_existential_0((v0[35] + 40 * v1 + 32), *(v0[35] + 40 * v1 + 56));
    v10 = *v9;
    v0[38] = *v9;

    return MEMORY[0x2822009F8](sub_2295E0DAC, v10, 0);
  }
}

uint64_t sub_2295E10D0(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v2[22] = *v1;
  v3 = sub_22A4DD07C();
  v2[23] = v3;
  v4 = *(v3 - 8);
  v2[24] = v4;
  v5 = *(v4 + 64) + 15;
  v2[25] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v7 = type metadata accessor for ZoneEntity();
  v2[27] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v9 = sub_22A4DB21C();
  v2[29] = v9;
  v10 = *(v9 - 8);
  v2[30] = v10;
  v11 = *(v10 + 64) + 15;
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295E127C, v1, 0);
}

uint64_t sub_2295E127C()
{
  v1 = v0[31];
  v2 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  sub_22A4DBA4C();
  sub_22A4DB1FC();
  if (!v0[15])
  {
    sub_22953EAE4((v0 + 12), &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_7;
  }

  sub_229562F68(0, &qword_281401788, off_278666398);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v15 = v0[25];
    sub_229541CB0(v0[22], &off_283CDDAE8);
    v16 = sub_22A4DD05C();
    v17 = sub_22A4DDCEC();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[30];
    v19 = v0[31];
    v21 = v0[29];
    v23 = v0[24];
    v22 = v0[25];
    v24 = v0[23];
    if (v18)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_229538000, v16, v17, "Did not find HMDZone as part of the zone added notification", v25, 2u);
      MEMORY[0x22AAD4E50](v25, -1, -1);
    }

    (*(v23 + 8))(v22, v24);
    (*(v20 + 8))(v19, v21);
    goto LABEL_10;
  }

  v3 = v0[21];
  v4 = v0[19];
  v0[32] = v4;
  v5 = __swift_project_boxed_opaque_existential_0((v3 + 112), *(v3 + 136))[6];
  v0[33] = v5;
  v6 = *(v5 + 16);
  v0[34] = v6;
  if (v6)
  {
    v0[35] = 0;
    v7 = v0[32];

    sub_22957F1C4(v8 + 32, (v0 + 2));
    v9 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v10 = [v7 urlString];
    if (v10)
    {
      v11 = v10;
      v12 = sub_22A4DD5EC();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v32 = v0[32];
    v34 = v0[27];
    v33 = v0[28];
    *v33 = v12;
    v33[1] = v14;
    v35 = [v32 spiClientIdentifier];
    v36 = v33 + *(v34 + 20);
    sub_22A4DB79C();

    v37 = [v32 name];
    v38 = sub_22A4DD5EC();
    v40 = v39;

    v41 = (v33 + *(v34 + 24));
    *v41 = v38;
    v41[1] = v40;
    sub_2295E9130(v33, type metadata accessor for ZoneEntity);
    v42 = *v9;
    v0[36] = *v9;

    return MEMORY[0x2822009F8](sub_2295E1600, v42, 0);
  }

  (*(v0[30] + 8))(v0[31], v0[29]);
LABEL_10:
  v26 = v0[31];
  v27 = v0[28];
  v29 = v0[25];
  v28 = v0[26];

  v30 = v0[1];

  return v30();
}

uint64_t sub_2295E1600()
{
  v1 = v0[36];
  if (v1[29])
  {
    v2 = v1[29];

    sub_22A4DDA7C();

    v1 = v0[36];
  }

  v3 = v0[26];
  v4 = v0[21];
  sub_2295C9C1C();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v6 = sub_22A4DD9DC();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);

  sub_22A4DBAFC();

  sub_22953EAE4(v3, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 7), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295E1814, v4, 0);
}

uint64_t sub_2295E1814()
{
  v1 = v0[34];
  v2 = v0[35] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v2 == v1)
  {
    v4 = v0[32];
    v3 = v0[33];

    (*(v0[30] + 8))(v0[31], v0[29]);
    v5 = v0[31];
    v6 = v0[28];
    v8 = v0[25];
    v7 = v0[26];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[35];
    v0[35] = v11 + 1;
    v12 = v0[32];
    sub_22957F1C4(v0[33] + 40 * v11 + 72, (v0 + 2));
    v13 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v14 = [v12 urlString];
    if (v14)
    {
      v15 = v14;
      v16 = sub_22A4DD5EC();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    v19 = v0[32];
    v21 = v0[27];
    v20 = v0[28];
    *v20 = v16;
    v20[1] = v18;
    v22 = [v19 spiClientIdentifier];
    v23 = v20 + *(v21 + 20);
    sub_22A4DB79C();

    v24 = [v19 name];
    v25 = sub_22A4DD5EC();
    v27 = v26;

    v28 = (v20 + *(v21 + 24));
    *v28 = v25;
    v28[1] = v27;
    sub_2295E9130(v20, type metadata accessor for ZoneEntity);
    v29 = *v13;
    v0[36] = *v13;

    return MEMORY[0x2822009F8](sub_2295E1600, v29, 0);
  }
}

uint64_t sub_2295E1A30(uint64_t a1)
{
  v2[71] = v1;
  v2[70] = a1;
  v2[72] = *v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v2[73] = swift_task_alloc();
  v4 = type metadata accessor for ZoneEntity();
  v2[74] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[75] = swift_task_alloc();
  v6 = type metadata accessor for RoomEntity();
  v2[76] = v6;
  v7 = *(v6 - 8);
  v2[77] = v7;
  v8 = *(v7 + 64) + 15;
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v9 = sub_22A4DB45C();
  v2[81] = v9;
  v10 = *(v9 - 8);
  v2[82] = v10;
  v11 = *(v10 + 64) + 15;
  v2[83] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0) - 8) + 64) + 15;
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v13 = sub_22A4DB21C();
  v2[86] = v13;
  v14 = *(v13 - 8);
  v2[87] = v14;
  v15 = *(v14 + 64) + 15;
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v16 = sub_22A4DD07C();
  v2[91] = v16;
  v17 = *(v16 - 8);
  v2[92] = v17;
  v18 = *(v17 + 64) + 15;
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295E1D6C, v1, 0);
}

uint64_t sub_2295E1D6C()
{
  v260 = v0;
  v1 = v0;
  v2 = v0[101];
  sub_229541CB0(v0[72], &off_283CDDAE8);
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_229538000, v3, v4, "Handling zone room relationship updated notification", v5, 2u);
    MEMORY[0x22AAD4E50](v5, -1, -1);
  }

  v6 = v0[101];
  v7 = v0[92];
  v8 = v1[91];
  v9 = v1[90];
  v10 = v1[70];

  v11 = *(v7 + 8);
  v11(v6, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  sub_22A4DBA4C();
  sub_22A4DB1FC();
  if (!v1[35])
  {
    sub_22953EAE4((v1 + 32), &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_51;
  }

  sub_229562F68(0, &qword_281401788, off_278666398);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_51:
    v109 = v1[93];
    sub_229541CB0(v1[72], &off_283CDDAE8);
    v110 = sub_22A4DD05C();
    v111 = sub_22A4DDCEC();
    v112 = os_log_type_enabled(v110, v111);
    v113 = v1[93];
    v114 = v1[92];
    v115 = v1[91];
    v116 = v1[90];
    v117 = v1[87];
    v118 = v1[86];
    if (v112)
    {
      v257 = v11;
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_229538000, v110, v111, "Did not find HMDZone as part of the zone updated notification", v119, 2u);
      MEMORY[0x22AAD4E50](v119, -1, -1);

      v257(v113, v115);
    }

    else
    {

      v11(v113, v115);
    }

    (*(v117 + 8))(v116, v118);
    goto LABEL_55;
  }

  v12 = v1[90];
  v13 = v1[66];
  v1[102] = v13;
  v14 = sub_22A4DB20C();
  v256 = v11;
  if (!v14)
  {
LABEL_59:
    *(v1 + 18) = 0u;
    *(v1 + 19) = 0u;
    goto LABEL_60;
  }

  v15 = v14;
  v1[58] = sub_22A4DD5EC();
  v1[59] = v16;
  sub_22A4DE18C();
  if (!*(v15 + 16) || (v17 = sub_2295402E8((v1 + 2)), (v18 & 1) == 0))
  {

    sub_22954045C((v1 + 2));
    goto LABEL_59;
  }

  sub_2295404B0(*(v15 + 56) + 32 * v17, (v1 + 36));
  sub_22954045C((v1 + 2));

  if (!v1[39])
  {
LABEL_60:
    sub_22953EAE4((v1 + 36), &unk_27D87DE60, &unk_22A57A960);
LABEL_61:
    v133 = v1[94];
    v134 = v1[90];
    v135 = v1[88];
    v136 = v1[87];
    v137 = v1[86];
    sub_229541CB0(v1[72], &off_283CDDAE8);
    (*(v136 + 16))(v135, v134, v137);
    v138 = sub_22A4DD05C();
    v139 = sub_22A4DDCEC();
    v140 = os_log_type_enabled(v138, v139);
    v141 = v1[94];
    v248 = v1[92];
    v253 = v1[91];
    v142 = v1[90];
    v143 = v1[88];
    v144 = v1[87];
    v145 = v1[86];
    if (v140)
    {
      v237 = v1[90];
      v146 = v1 + 67;
      v246 = v13;
      v147 = swift_slowAlloc();
      v240 = v1;
      v148 = swift_slowAlloc();
      v259 = v148;
      *v147 = 136315138;
      *v146 = sub_22A4DB20C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
      v149 = sub_22A4DDF7C();
      v151 = v150;
      v152 = *(v144 + 8);
      v152(v143);

      v153 = sub_2295A3E30(v149, v151, &v259);

      *(v147 + 4) = v153;
      _os_log_impl(&dword_229538000, v138, v139, "Did not find list of rooms as part of the zone updated notification %s", v147, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v148);
      v154 = v148;
      v1 = v240;
      MEMORY[0x22AAD4E50](v154, -1, -1);
      MEMORY[0x22AAD4E50](v147, -1, -1);

      v256(v141, v253);
      (v152)(v237, v145);
    }

    else
    {

      v155 = *(v144 + 8);
      v155(v143, v145);
      v256(v141, v253);
      v155(v142, v145);
    }

    goto LABEL_55;
  }

  sub_229562F68(0, &qword_27D87DA30, 0x277CBEB98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_61;
  }

  v19 = v1[90];
  v20 = v1[68];
  v1[103] = v20;
  v21 = sub_22A4DB20C();
  v243 = v13;
  if (!v21)
  {
LABEL_65:
    *(v1 + 20) = 0u;
    *(v1 + 21) = 0u;
    goto LABEL_66;
  }

  v22 = v21;
  v23 = *MEMORY[0x277CD0640];
  v1[60] = sub_22A4DD5EC();
  v1[61] = v24;
  sub_22A4DE18C();
  if (!*(v22 + 16) || (v25 = sub_2295402E8((v1 + 7)), (v26 & 1) == 0))
  {

    sub_22954045C((v1 + 7));
    goto LABEL_65;
  }

  sub_2295404B0(*(v22 + 56) + 32 * v25, (v1 + 40));
  sub_22954045C((v1 + 7));

  if (!v1[43])
  {
LABEL_66:
    sub_22953EAE4((v1 + 40), &unk_27D87DE60, &unk_22A57A960);
LABEL_67:
    v156 = v1[95];
    v157 = v1[90];
    v158 = v1[89];
    v159 = v1[87];
    v160 = v1[86];
    sub_229541CB0(v1[72], &off_283CDDAE8);
    (*(v159 + 16))(v158, v157, v160);
    v161 = sub_22A4DD05C();
    v162 = sub_22A4DDCEC();
    v163 = os_log_type_enabled(v161, v162);
    v164 = v1[95];
    v249 = v1[92];
    v254 = v1[91];
    v165 = v1[90];
    v166 = v1[89];
    v167 = v1[87];
    v168 = v1[86];
    if (v163)
    {
      v234 = v1[95];
      v169 = v1 + 69;
      v241 = v1;
      v170 = swift_slowAlloc();
      v229 = v168;
      v171 = swift_slowAlloc();
      v259 = v171;
      *v170 = 136315138;
      *v169 = sub_22A4DB20C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
      v172 = sub_22A4DDF7C();
      v174 = v173;
      v175 = *(v167 + 8);
      v175(v166, v229);

      v176 = sub_2295A3E30(v172, v174, &v259);

      *(v170 + 4) = v176;
      _os_log_impl(&dword_229538000, v161, v162, "Did not find homeUUID as part of the zone updated notification %s", v170, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v171);
      MEMORY[0x22AAD4E50](v171, -1, -1);
      v177 = v170;
      v1 = v241;
      MEMORY[0x22AAD4E50](v177, -1, -1);

      v256(v234, v254);
      v175(v165, v229);
    }

    else
    {

      v178 = *(v167 + 8);
      v178(v166, v168);
      v256(v164, v254);
      v178(v165, v168);
    }

    goto LABEL_55;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_67;
  }

  v235 = v20;
  v27 = v1[85];
  v29 = v1[62];
  v28 = v1[63];
  v224 = v1[71];
  v30 = __swift_project_boxed_opaque_existential_0((v224 + 112), *(v224 + 136));
  sub_22957F1C4((v30 + 1), (v1 + 12));
  v31 = *__swift_project_boxed_opaque_existential_0(v1 + 12, v1[15]);
  __swift_destroy_boxed_opaque_existential_0(v1 + 12);
  sub_22A4DB75C();
  v32 = sub_22A4DB7DC();
  v33 = *(v32 - 8);
  v227 = v32;
  v232 = *(v33 + 48);
  v34 = v232(v27, 1);
  v35 = 0;
  if (v34 != 1)
  {
    v36 = v1[85];
    v35 = sub_22A4DB77C();
    (*(v33 + 8))(v36, v227);
  }

  v37 = [v31 _homeWithUUID_];
  v1[104] = v37;

  v230 = v37;
  if (!v37)
  {
    v179 = v1[96];
    sub_229541CB0(v1[72], &off_283CDDAE8);

    v180 = sub_22A4DD05C();
    v181 = sub_22A4DDCCC();

    v182 = os_log_type_enabled(v180, v181);
    v183 = v1[96];
    v184 = v1[92];
    v185 = v1[91];
    v186 = v1[90];
    v187 = v1[87];
    v255 = v1[86];
    if (v182)
    {
      v242 = v1;
      v188 = swift_slowAlloc();
      v250 = v186;
      v189 = swift_slowAlloc();
      v259 = v189;
      *v188 = 136315138;
      v190 = sub_2295A3E30(v29, v28, &v259);

      *(v188 + 4) = v190;
      _os_log_impl(&dword_229538000, v180, v181, "Could not find the home with UUID %s", v188, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v189);
      MEMORY[0x22AAD4E50](v189, -1, -1);
      v191 = v188;
      v1 = v242;
      MEMORY[0x22AAD4E50](v191, -1, -1);

      v256(v183, v185);
      (*(v187 + 8))(v250, v255);
    }

    else
    {

      v256(v183, v185);
      (*(v187 + 8))(v186, v255);
    }

    goto LABEL_55;
  }

  v38 = v1[83];

  sub_22A4DDE9C();
  sub_22A4DB44C();
  if (!v1[47])
  {
    v39 = MEMORY[0x277D84F90];
    goto LABEL_74;
  }

  v251 = v1[92] + 8;
  v39 = MEMORY[0x277D84F90];
  v225 = (v33 + 8);
  v40 = v1[76];
  v221 = v40;
  v222 = v1[77];
  v244 = *MEMORY[0x277D0F1A8];
  v41 = v227;
  do
  {
    v223 = v39;
    while (1)
    {
      sub_229543C58(v1 + 44, v1 + 48);
      if (!swift_dynamicCast())
      {
        v51 = v1[97];
        sub_229541CB0(v1[72], &off_283CDDAE8);
        v52 = sub_22A4DD05C();
        v53 = sub_22A4DDCEC();
        v54 = os_log_type_enabled(v52, v53);
        v55 = v1[97];
        v56 = v1[91];
        if (v54)
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_229538000, v52, v53, "Could not convert affected room UUID string", v57, 2u);
          MEMORY[0x22AAD4E50](v57, -1, -1);
        }

        v42 = v55;
        v43 = v56;
        goto LABEL_22;
      }

      v45 = v1[84];
      v46 = v1[64];
      v47 = v1;
      v48 = v1[65];
      sub_22A4DB75C();
      v49 = v47;
      if ((v232)(v45, 1, v41) == 1)
      {
        v50 = 0;
      }

      else
      {
        v58 = v47[84];
        v50 = sub_22A4DB77C();
        (*v225)(v58, v41);
      }

      v59 = [v230 roomWithUUID_];

      if (!v59)
      {
        v79 = v47[98];
        sub_229541CB0(v47[72], &off_283CDDAE8);

        v80 = sub_22A4DD05C();
        v81 = sub_22A4DDCEC();

        v82 = os_log_type_enabled(v80, v81);
        v83 = v47[98];
        v84 = v47[91];
        if (v82)
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v259 = v86;
          *v85 = 136315138;
          v87 = sub_2295A3E30(v46, v48, &v259);

          *(v85 + 4) = v87;
          _os_log_impl(&dword_229538000, v80, v81, "Could not find room with UUID %s", v85, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v86);
          MEMORY[0x22AAD4E50](v86, -1, -1);
          v88 = v85;
          v41 = v227;
          MEMORY[0x22AAD4E50](v88, -1, -1);
        }

        else
        {
        }

        v256(v83, v84);
        v1 = v49;
        goto LABEL_23;
      }

      v60 = [v59 home];
      if (v60)
      {
        break;
      }

      v61 = v47[100];
      v62 = v47[76];
      sub_22A4DD5EC();
      off_283CDD788();
      sub_22A4DD06C();
      v63 = v59;
      v64 = sub_22A4DD05C();
      v65 = sub_22A4DDCEC();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *v66 = 138412290;
        *(v66 + 4) = v63;
        *v67 = v59;
        v68 = v63;
        _os_log_impl(&dword_229538000, v64, v65, "room %@ has no home", v66, 0xCu);
        sub_22953EAE4(v67, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v67, -1, -1);
        MEMORY[0x22AAD4E50](v66, -1, -1);
      }

      v69 = v47[100];
      v70 = v47[99];
      v71 = v47[91];
      v72 = v47[72];

      v256(v69, v71);
      sub_229541CB0(v72, &off_283CDDAE8);
      v73 = v63;
      v74 = sub_22A4DD05C();
      v75 = sub_22A4DDCEC();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v76 = 138412290;
        *(v76 + 4) = v73;
        *v77 = v59;
        v78 = v73;
        _os_log_impl(&dword_229538000, v74, v75, "Unable to create RoomEntity for %@", v76, 0xCu);
        sub_22953EAE4(v77, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v77, -1, -1);
        MEMORY[0x22AAD4E50](v76, -1, -1);
        v73 = v74;
        v74 = v78;
      }

      v41 = v227;

      v1 = v47;
      v42 = v47[99];
      v43 = v47[91];
LABEL_22:
      v256(v42, v43);
LABEL_23:
      v44 = v1[83];
      sub_22A4DB44C();
      if (!v1[47])
      {
        v39 = v223;
        goto LABEL_74;
      }
    }

    v89 = v60;
    v220 = v59;
    v90 = [v220 urlString];
    if (v90)
    {
      v91 = v90;
      v92 = sub_22A4DD5EC();
      v94 = v93;
    }

    else
    {
      v92 = 0;
      v94 = 0;
    }

    v95 = v47[80];
    v96 = v47[79];
    v238 = v47;
    v219 = v47[78];
    v97 = (v96 + *(v221 + 20));
    *v97 = v92;
    v97[1] = v94;
    v98 = [v220 spiClientIdentifier];
    sub_22A4DB79C();

    v99 = [v220 name];
    v100 = sub_22A4DD5EC();
    v102 = v101;

    v103 = (v96 + *(v221 + 24));
    *v103 = v100;
    v103[1] = v102;
    sub_2295E9240(v96, v95, type metadata accessor for RoomEntity);
    sub_2295E91D8(v95, v219, type metadata accessor for RoomEntity);
    v39 = v223;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_22958B088(0, v223[2] + 1, 1, v223);
    }

    v105 = v39[2];
    v104 = v39[3];
    v1 = v238;
    if (v105 >= v104 >> 1)
    {
      v39 = sub_22958B088(v104 > 1, v105 + 1, 1, v39);
    }

    v106 = v238[83];
    v107 = v238[80];
    v108 = v238[78];

    sub_2295E9130(v107, type metadata accessor for RoomEntity);
    v39[2] = v105 + 1;
    sub_2295E9240(v108, v39 + ((*(v222 + 80) + 32) & ~*(v222 + 80)) + *(v222 + 72) * v105, type metadata accessor for RoomEntity);
    sub_22A4DB44C();
  }

  while (v238[47]);
LABEL_74:
  v1[105] = v39;
  (*(v1[82] + 8))(v1[83], v1[81]);
  v192 = __swift_project_boxed_opaque_existential_0((v224 + 112), *(v224 + 136))[6];
  v1[106] = v192;
  v193 = *(v192 + 16);
  v1[107] = v193;
  if (v193)
  {
    v1[108] = 0;
    v194 = v1[102];

    sub_22957F1C4(v195 + 32, (v1 + 17));
    v196 = __swift_project_boxed_opaque_existential_0(v1 + 17, v1[20]);
    v197 = [v194 urlString];
    if (v197)
    {
      v198 = v197;
      v199 = sub_22A4DD5EC();
      v201 = v200;
    }

    else
    {
      v199 = 0;
      v201 = 0;
    }

    v208 = v1[102];
    v209 = v1[75];
    v210 = v1[74];
    *v209 = v199;
    v209[1] = v201;
    v211 = [v208 spiClientIdentifier];
    v212 = v209 + *(v210 + 20);
    sub_22A4DB79C();

    v213 = [v208 name];
    v214 = sub_22A4DD5EC();
    v216 = v215;

    v217 = (v209 + *(v210 + 24));
    *v217 = v214;
    v217[1] = v216;
    sub_2295E9130(v209, type metadata accessor for ZoneEntity);
    v218 = *v196;
    v1[109] = *v196;

    return MEMORY[0x2822009F8](sub_2295E33A4, v218, 0);
  }

  v202 = v1[105];
  v203 = v1[104];
  v204 = v1[103];
  v205 = v1[90];
  v206 = v1[87];
  v207 = v1[86];

  (*(v206 + 8))(v205, v207);

LABEL_55:
  v120 = v1[101];
  v121 = v1[100];
  v122 = v1;
  v123 = v1[99];
  v124 = v122[98];
  v125 = v122[97];
  v126 = v122[96];
  v127 = v122[95];
  v128 = v122[94];
  v129 = v122[93];
  v130 = v122[90];
  v226 = v122[89];
  v228 = v122[88];
  v231 = v122[85];
  v233 = v122[84];
  v236 = v122[83];
  v239 = v122[80];
  v245 = v122[79];
  v247 = v122[78];
  v252 = v122[75];
  v258 = v122[73];

  v131 = v122[1];

  return v131();
}

uint64_t sub_2295E33A4()
{
  v1 = v0[109];
  if (v1[29])
  {
    v2 = v1[29];

    sub_22A4DDA7C();

    v1 = v0[109];
  }

  v3 = v0[73];
  v4 = v0[71];
  sub_2295C9C1C();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v6 = sub_22A4DD9DC();
  v0[110] = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v0[111] = v8;
  v0[112] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v3, 0, 1, v6);
  v0[25] = swift_getAssociatedTypeWitness();
  v0[26] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 22);

  sub_22A4DBAFC();

  sub_22953EAE4(v3, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 22), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295E35CC, v4, 0);
}

uint64_t sub_2295E35CC()
{
  v1 = __swift_project_boxed_opaque_existential_0(v0 + 17, v0[20]);
  v2 = *v1;
  v0[113] = *v1;

  return MEMORY[0x2822009F8](sub_2295E363C, v2, 0);
}

uint64_t sub_2295E363C()
{
  v1 = v0[113];
  if (v1[29])
  {
    v2 = v1[29];

    sub_22A4DDA7C();

    v1 = v0[113];
  }

  v3 = v0[112];
  v4 = v0[111];
  v5 = v0[110];
  v6 = v0[73];
  v7 = v0[71];
  sub_2295C9C1C();
  v8 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v4(v6, 0, 1, v5);
  v0[30] = swift_getAssociatedTypeWitness();
  v0[31] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 27);

  sub_22A4DBAFC();

  sub_22953EAE4(v6, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 27), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295E3838, v7, 0);
}

uint64_t sub_2295E3838()
{
  v1 = v0[107];
  v2 = v0[108] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  if (v2 == v1)
  {
    v3 = v0[106];
    v4 = v0[105];
    v5 = v0[104];
    v6 = v0[103];
    v7 = v0[102];
    v8 = v0[90];
    v9 = v0[87];
    v10 = v0[86];

    (*(v9 + 8))(v8, v10);

    v11 = v0[101];
    v12 = v0[100];
    v13 = v0[99];
    v14 = v0[98];
    v15 = v0[97];
    v16 = v0[96];
    v17 = v0[95];
    v18 = v0[94];
    v19 = v0[93];
    v20 = v0[90];
    v42 = v0[89];
    v43 = v0[88];
    v44 = v0[85];
    v45 = v0[84];
    v46 = v0[83];
    v47 = v0[80];
    v48 = v0[79];
    v49 = v0[78];
    v50 = v0[75];
    v51 = v0[73];

    v21 = v0[1];

    return v21();
  }

  else
  {
    v23 = v0[108];
    v0[108] = v23 + 1;
    v24 = v0[102];
    sub_22957F1C4(v0[106] + 40 * v23 + 72, (v0 + 17));
    v25 = __swift_project_boxed_opaque_existential_0(v0 + 17, v0[20]);
    v26 = [v24 urlString];
    if (v26)
    {
      v27 = v26;
      v28 = sub_22A4DD5EC();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v31 = v0[102];
    v32 = v0[75];
    v33 = v0[74];
    *v32 = v28;
    v32[1] = v30;
    v34 = [v31 spiClientIdentifier];
    v35 = v32 + *(v33 + 20);
    sub_22A4DB79C();

    v36 = [v31 name];
    v37 = sub_22A4DD5EC();
    v39 = v38;

    v40 = (v32 + *(v33 + 24));
    *v40 = v37;
    v40[1] = v39;
    sub_2295E9130(v32, type metadata accessor for ZoneEntity);
    v41 = *v25;
    v0[109] = *v25;

    return MEMORY[0x2822009F8](sub_2295E33A4, v41, 0);
  }
}

uint64_t sub_2295E3B70(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v2[25] = *v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v4 = sub_22A4DB21C();
  v2[27] = v4;
  v5 = *(v4 - 8);
  v2[28] = v5;
  v6 = *(v5 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v7 = sub_22A4DD07C();
  v2[31] = v7;
  v8 = *(v7 - 8);
  v2[32] = v8;
  v9 = *(v8 + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295E3D04, v1, 0);
}

uint64_t sub_2295E3D04()
{
  v59 = v0;
  v1 = *(v0 + 272);
  sub_229541CB0(*(v0 + 200), &off_283CDDAE8);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "Handling zone removed notification", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v5 = *(v0 + 272);
  v6 = *(v0 + 248);
  v7 = *(v0 + 256);
  v8 = *(v0 + 240);
  v9 = *(v0 + 184);

  v10 = *(v7 + 8);
  v10(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  sub_22A4DBA4C();
  v11 = sub_22A4DB20C();
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  v13 = *MEMORY[0x277CD15F0];
  *(v0 + 152) = sub_22A4DD5EC();
  *(v0 + 160) = v14;
  sub_22A4DE18C();
  if (!*(v12 + 16) || (v15 = sub_2295402E8(v0 + 16), (v16 & 1) == 0))
  {

    sub_22954045C(v0 + 16);
LABEL_13:
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_14;
  }

  sub_2295404B0(*(v12 + 56) + 32 * v15, v0 + 96);
  sub_22954045C(v0 + 16);

  if (!*(v0 + 120))
  {
LABEL_14:
    sub_22953EAE4(v0 + 96, &unk_27D87DE60, &unk_22A57A960);
LABEL_15:
    v25 = *(v0 + 264);
    v27 = *(v0 + 232);
    v26 = *(v0 + 240);
    v28 = *(v0 + 216);
    v29 = *(v0 + 224);
    sub_229541CB0(*(v0 + 200), &off_283CDDAE8);
    (*(v29 + 16))(v27, v26, v28);
    v30 = sub_22A4DD05C();
    v31 = sub_22A4DDCEC();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 256);
    v34 = *(v0 + 264);
    v35 = *(v0 + 240);
    v57 = *(v0 + 248);
    v37 = *(v0 + 224);
    v36 = *(v0 + 232);
    v38 = *(v0 + 216);
    if (v32)
    {
      v56 = v10;
      v39 = swift_slowAlloc();
      v55 = v34;
      v40 = swift_slowAlloc();
      v58 = v40;
      *v39 = 136315138;
      v41 = sub_22A4DB1BC();
      v54 = v35;
      v43 = v42;
      v44 = *(v37 + 8);
      v44(v36, v38);
      v45 = sub_2295A3E30(v41, v43, &v58);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_229538000, v30, v31, "Did not find zone uuid. Could not handle zone removed notification %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x22AAD4E50](v40, -1, -1);
      MEMORY[0x22AAD4E50](v39, -1, -1);

      v56(v55, v57);
      v44(v54, v38);
    }

    else
    {

      v46 = *(v37 + 8);
      v46(v36, v38);
      v10(v34, v57);
      v46(v35, v38);
    }

    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v17 = *(v0 + 192);
  v18 = *(v0 + 176);

  v19 = __swift_project_boxed_opaque_existential_0((v17 + 112), *(v17 + 136))[6];
  *(v0 + 280) = v19;
  v20 = *(v19 + 16);
  *(v0 + 288) = v20;
  if (v20)
  {
    *(v0 + 296) = 0;
    v21 = *(v19 + 56);

    v23 = __swift_project_boxed_opaque_existential_0((v22 + 32), v21);
    v24 = *v23;
    *(v0 + 304) = *v23;

    return MEMORY[0x2822009F8](sub_2295E41B8, v24, 0);
  }

  (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
LABEL_18:
  v48 = *(v0 + 264);
  v47 = *(v0 + 272);
  v50 = *(v0 + 232);
  v49 = *(v0 + 240);
  v51 = *(v0 + 208);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_2295E41B8()
{
  v1 = v0[38];
  if (v1[29])
  {
    v2 = v1[29];

    sub_22A4DDA7C();

    v1 = v0[38];
  }

  v3 = v0[26];
  v4 = v0[24];
  sub_2295C9C1C();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v6 = sub_22A4DD9DC();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);

  sub_22A4DBAFC();

  sub_22953EAE4(v3, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 7), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295E43CC, v4, 0);
}

uint64_t sub_2295E43CC()
{
  v1 = v0[37] + 1;
  if (v1 == v0[36])
  {
    v2 = v0[35];

    (*(v0[28] + 8))(v0[30], v0[27]);
    v4 = v0[33];
    v3 = v0[34];
    v6 = v0[29];
    v5 = v0[30];
    v7 = v0[26];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v0[37] = v1;
    v10 = __swift_project_boxed_opaque_existential_0((v0[35] + 40 * v1 + 32), *(v0[35] + 40 * v1 + 56));
    v11 = *v10;
    v0[38] = *v10;

    return MEMORY[0x2822009F8](sub_2295E41B8, v11, 0);
  }
}

uint64_t sub_2295E44E8(uint64_t a1)
{
  v2[43] = a1;
  v2[44] = v1;
  v2[45] = *v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v2[46] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9D8, &qword_22A579900) - 8) + 64) + 15;
  v2[47] = swift_task_alloc();
  v5 = sub_22A4DD07C();
  v2[48] = v5;
  v6 = *(v5 - 8);
  v2[49] = v6;
  v7 = *(v6 + 64) + 15;
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0) - 8) + 64) + 15;
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v9 = sub_22A4DB21C();
  v2[58] = v9;
  v10 = *(v9 - 8);
  v2[59] = v10;
  v11 = *(v10 + 64) + 15;
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295E4734, v1, 0);
}

uint64_t sub_2295E4734()
{
  v191 = v0;
  v1 = v0[62];
  v2 = v0[43];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  sub_22A4DBA4C();
  v3 = sub_22A4DB20C();
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = v3;
  v5 = *MEMORY[0x277CD0640];
  v0[33] = sub_22A4DD5EC();
  v0[34] = v6;
  sub_22A4DE18C();
  if (!*(v4 + 16) || (v7 = sub_2295402E8((v0 + 2)), (v8 & 1) == 0))
  {

    sub_22954045C((v0 + 2));
LABEL_17:
    *(v0 + 11) = 0u;
    *(v0 + 12) = 0u;
    goto LABEL_18;
  }

  sub_2295404B0(*(v4 + 56) + 32 * v7, (v0 + 22));
  sub_22954045C((v0 + 2));

  if (!v0[25])
  {
LABEL_18:
    sub_22953EAE4((v0 + 22), &unk_27D87DE60, &unk_22A57A960);
LABEL_19:
    v33 = v0[62];
    v35 = v0[59];
    v34 = v0[60];
    v36 = v0[58];
    v37 = v0[50];
    sub_229541CB0(v0[45], &off_283CDDAE8);
    (*(v35 + 16))(v34, v33, v36);
    v38 = sub_22A4DD05C();
    v39 = sub_22A4DDCEC();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v0[62];
    v43 = v0[59];
    v42 = v0[60];
    v44 = v0[58];
    v45 = v0[49];
    v46 = v0[50];
    v47 = v0[48];
    if (v40)
    {
      v187 = v0[50];
      v48 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v190 = v174;
      *v48 = 136315138;
      v171 = v39;
      v0[41] = sub_22A4DB20C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
      v49 = sub_22A4DDF7C();
      v50 = v44;
      v52 = v51;
      v53 = *(v43 + 8);
      v54 = v42;
      v55 = v50;
      v53(v54, v50);

      v56 = sub_2295A3E30(v49, v52, &v190);

      *(v48 + 4) = v56;
      _os_log_impl(&dword_229538000, v38, v171, "Could not handle new home added notification %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v174);
      MEMORY[0x22AAD4E50](v174, -1, -1);
      MEMORY[0x22AAD4E50](v48, -1, -1);

      (*(v45 + 8))(v187, v47);
      v53(v41, v55);
    }

    else
    {

      v57 = *(v43 + 8);
      v57(v42, v44);
      (*(v45 + 8))(v46, v47);
      v57(v41, v44);
    }

LABEL_22:
    v59 = v0[61];
    v58 = v0[62];
    v60 = v0[60];
    v62 = v0[56];
    v61 = v0[57];
    v64 = v0[54];
    v63 = v0[55];
    v66 = v0[52];
    v65 = v0[53];
    v67 = v0[51];
    v176 = v0[50];
    v181 = v0[47];
    v188 = v0[46];

    v68 = v0[1];

    return v68();
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v9 = v0[57];
  v11 = v0[35];
  v10 = v0[36];
  v180 = v0[44];
  v12 = __swift_project_boxed_opaque_existential_0((v180 + 112), *(v180 + 136));
  sub_22957F1C4((v12 + 1), (v0 + 7));
  v13 = *__swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  sub_22A4DB75C();
  v14 = sub_22A4DB7DC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(v9, 1, v14);
  v18 = 0;
  if (v17 != 1)
  {
    v19 = v0[57];
    v18 = sub_22A4DB77C();
    (*(v15 + 8))(v19, v14);
  }

  v20 = [v13 _homeWithUUID_];
  v0[63] = v20;

  if (!v20)
  {
    v70 = v0[51];
    sub_229541CB0(v0[45], &off_283CDDAE8);

    v71 = sub_22A4DD05C();
    v72 = sub_22A4DDCCC();

    v73 = os_log_type_enabled(v71, v72);
    v74 = v0[62];
    v76 = v0[58];
    v75 = v0[59];
    v189 = v0[51];
    v78 = v0[48];
    v77 = v0[49];
    v169 = v0;
    if (v73)
    {
      v182 = v0[58];
      v79 = swift_slowAlloc();
      v80 = v74;
      v81 = swift_slowAlloc();
      v190 = v81;
      *v79 = 136315138;
      v82 = sub_2295A3E30(v11, v10, &v190);

      *(v79 + 4) = v82;
      _os_log_impl(&dword_229538000, v71, v72, "Could not find the home with UUID %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x22AAD4E50](v81, -1, -1);
      MEMORY[0x22AAD4E50](v79, -1, -1);

      (*(v77 + 8))(v189, v78);
      (*(v75 + 8))(v80, v182);
    }

    else
    {

      (*(v77 + 8))(v189, v78);
      (*(v75 + 8))(v74, v76);
    }

    v0 = v169;
    goto LABEL_22;
  }

  v186 = v20;
  v21 = v0[62];

  v22 = sub_22A4DB20C();
  v23 = v0;
  if (!v22)
  {
    goto LABEL_28;
  }

  v24 = v22;
  v25 = *MEMORY[0x277CD2050];
  v0[37] = sub_22A4DD5EC();
  v0[38] = v26;
  sub_22A4DE18C();
  if (!*(v24 + 16) || (v27 = sub_2295402E8((v0 + 12)), (v28 & 1) == 0))
  {

    sub_22954045C((v0 + 12));
LABEL_28:
    *(v0 + 13) = 0u;
    *(v0 + 14) = 0u;
    goto LABEL_29;
  }

  sub_2295404B0(*(v24 + 56) + 32 * v27, (v0 + 26));
  sub_22954045C((v0 + 12));

  if (!v0[29])
  {
LABEL_29:
    sub_22953EAE4((v0 + 26), &unk_27D87DE60, &unk_22A57A960);
LABEL_30:
    v84 = v0[61];
    v83 = v0[62];
    v86 = v0[58];
    v85 = v0[59];
    v87 = v23[52];
    sub_229541CB0(v23[45], &off_283CDDAE8);
    (*(v85 + 16))(v84, v83, v86);
    v0 = v23;
    v88 = sub_22A4DD05C();
    v89 = sub_22A4DDCEC();
    v90 = os_log_type_enabled(v88, v89);
    v91 = v23[61];
    v92 = v23[62];
    v94 = v23[58];
    v93 = v23[59];
    v95 = v23[52];
    v96 = v23[49];
    v183 = v23[48];
    if (v90)
    {
      v177 = v23[52];
      v97 = swift_slowAlloc();
      v98 = v94;
      v172 = v94;
      v99 = swift_slowAlloc();
      v190 = v99;
      *v97 = 136315138;
      v175 = v92;
      v100 = sub_22A4DB1BC();
      log = v88;
      v102 = v101;
      v103 = *(v93 + 8);
      v103(v91, v98);
      v104 = sub_2295A3E30(v100, v102, &v190);
      v0 = v23;

      *(v97 + 4) = v104;
      _os_log_impl(&dword_229538000, log, v89, "Did not find actionSet UUID in the notification dictionary %s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v99);
      MEMORY[0x22AAD4E50](v99, -1, -1);
      MEMORY[0x22AAD4E50](v97, -1, -1);

      (*(v96 + 8))(v177, v183);
      v103(v175, v172);
    }

    else
    {

      v105 = *(v93 + 8);
      v105(v91, v94);
      (*(v96 + 8))(v95, v183);
      v105(v92, v94);
    }

    goto LABEL_22;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_30;
  }

  v29 = v0[56];
  v31 = v0[39];
  v30 = v0[40];
  sub_22A4DB75C();
  if (v16(v29, 1, v14) == 1)
  {
    v32 = 0;
  }

  else
  {
    v106 = v0[56];
    v32 = sub_22A4DB77C();
    (*(v15 + 8))(v106, v14);
  }

  v107 = [v186 actionSetWithUUID_];
  v0[64] = v107;

  v170 = v0;
  if (!v107)
  {
    v114 = v0[53];
    sub_229541CB0(v0[45], &off_283CDDAE8);

    v115 = sub_22A4DD05C();
    v116 = sub_22A4DDCEC();

    v117 = os_log_type_enabled(v115, v116);
    v118 = v0[62];
    v119 = v0[58];
    v120 = v0[59];
    v184 = v0[53];
    v122 = v0[48];
    v121 = v0[49];
    if (v117)
    {
      v178 = v0[62];
      v123 = swift_slowAlloc();
      v124 = v119;
      v125 = swift_slowAlloc();
      v190 = v125;
      *v123 = 136315138;
      v126 = sub_2295A3E30(v31, v30, &v190);

      *(v123 + 4) = v126;
      _os_log_impl(&dword_229538000, v115, v116, "Could not find the scene with UUID %s", v123, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v125);
      MEMORY[0x22AAD4E50](v125, -1, -1);
      MEMORY[0x22AAD4E50](v123, -1, -1);

      (*(v121 + 8))(v184, v122);
      (*(v120 + 8))(v178, v124);
    }

    else
    {

      (*(v121 + 8))(v184, v122);
      (*(v120 + 8))(v118, v119);
    }

    v0 = v170;
    goto LABEL_22;
  }

  v108 = [v107 type];
  v109 = sub_22A4DD5EC();
  v111 = v110;

  v112 = *MEMORY[0x277CCF1A0];
  if (v109 == sub_22A4DD5EC() && v111 == v113)
  {

LABEL_43:
    v128 = v0[55];
    sub_229541CB0(v0[45], &off_283CDDAE8);
    v129 = sub_22A4DD05C();
    v130 = sub_22A4DDCCC();
    v131 = os_log_type_enabled(v129, v130);
    v132 = v0[62];
    v134 = v0[58];
    v133 = v0[59];
    v135 = v0[55];
    v137 = v0[48];
    v136 = v0[49];
    if (v131)
    {
      v138 = v0[62];
      v139 = swift_slowAlloc();
      *v139 = 0;
      _os_log_impl(&dword_229538000, v129, v130, "Not going to index trigger owned actionSet", v139, 2u);
      MEMORY[0x22AAD4E50](v139, -1, -1);

      (*(v136 + 8))(v135, v137);
      (*(v133 + 8))(v138, v134);
    }

    else
    {

      (*(v136 + 8))(v135, v137);
      (*(v133 + 8))(v132, v134);
    }

    v0 = v170;
    goto LABEL_22;
  }

  v127 = sub_22A4DE60C();

  if (v127)
  {
    goto LABEL_43;
  }

  v140 = v0[47];
  sub_2295C3B8C(v107, v140);
  v141 = type metadata accessor for SceneEntity();
  v142 = (*(*(v141 - 8) + 48))(v140, 1, v141);
  sub_22953EAE4(v140, &qword_27D87D9D8, &qword_22A579900);
  if (v142 == 1)
  {
    v143 = v0[54];
    sub_229541CB0(v0[45], &off_283CDDAE8);
    v144 = v107;
    v145 = sub_22A4DD05C();
    v146 = sub_22A4DDCEC();

    v147 = os_log_type_enabled(v145, v146);
    v148 = v0[62];
    v149 = v0[58];
    v150 = v0[59];
    v151 = v0[54];
    v153 = v0[48];
    v152 = v0[49];
    if (v147)
    {
      v185 = v0[48];
      v154 = swift_slowAlloc();
      v179 = v148;
      v155 = swift_slowAlloc();
      v190 = v155;
      *v154 = 136315138;
      v0[42] = v144;
      sub_229562F68(0, &qword_281401C20, off_278666020);
      v156 = sub_22A4DBA6C();
      v173 = v151;
      v158 = sub_2295A3E30(v156, v157, &v190);

      *(v154 + 4) = v158;
      _os_log_impl(&dword_229538000, v145, v146, "Unable to create SceneEntity from scene %s", v154, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v155);
      MEMORY[0x22AAD4E50](v155, -1, -1);
      MEMORY[0x22AAD4E50](v154, -1, -1);

      (*(v152 + 8))(v173, v185);
      (*(v150 + 8))(v179, v149);
    }

    else
    {

      (*(v152 + 8))(v151, v153);
      (*(v150 + 8))(v148, v149);
    }

    goto LABEL_22;
  }

  v159 = __swift_project_boxed_opaque_existential_0((v180 + 112), *(v180 + 136))[6];
  v0[65] = v159;
  v160 = *(v159 + 16);
  v0[66] = v160;
  if (!v160)
  {

    v165 = v0[62];
    v166 = v0[58];
    v167 = v0[59];

    (*(v167 + 8))(v165, v166);
    goto LABEL_22;
  }

  v0[67] = 0;
  v161 = *(v159 + 56);

  v163 = __swift_project_boxed_opaque_existential_0((v162 + 32), v161);
  v164 = *v163;
  v0[68] = *v163;

  return MEMORY[0x2822009F8](sub_2295E5744, v164, 0);
}