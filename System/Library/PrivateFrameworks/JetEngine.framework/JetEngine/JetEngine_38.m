uint64_t sub_1AB3323A4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &tv_nsec - v3;
  v5 = sub_1AB45FF84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &tv_nsec - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &tv_nsec - v10;
  v12 = *(v0 + 16);
  os_unfair_lock_lock(v12 + 4);
  v13 = *(v0 + 24);
  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v12 + 4);
  }

  else
  {
    v50 = v13;
    v51 = v4;
    v14 = *(v1 + 32);
    v15 = qword_1EB434BA8;
    v48 = v12;
    v49 = v14;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_1AB45FFC4();
    __swift_project_value_buffer(v16, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v17 = sub_1AB45FFA4();
    v18 = sub_1AB461234();
    if (sub_1AB461314())
    {
      v19 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v52.tv_sec = v47;
      *v19 = 136315138;
      sub_1AB016760(0, &qword_1EB435620);
      v20 = sub_1AB462314();
      v22 = sub_1AB030D2C(v20, v21, &v52.tv_sec);

      *(v19 + 4) = v22;
      v23 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v17, v18, v23, "MakeDependency", "object=%s,type=async", v19, 0xCu);
      v24 = v47;
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x1AC59F020](v24, -1, -1);
      MEMORY[0x1AC59F020](v19, -1, -1);
    }

    (*(v6 + 16))(v8, v11, v5);
    sub_1AB460014();
    swift_allocObject();
    v47 = sub_1AB460004();
    (*(v6 + 8))(v11, v5);
    static MonotonicTime.now.getter(&v52);
    tv_sec = v52.tv_sec;
    tv_nsec = v52.tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v26 = v52.tv_sec;
    v27 = sub_1AB016760(0, &qword_1EB435620);
    type metadata accessor for BaseObjectGraph();
    v28 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v52.tv_sec = v28;

    swift_task_localValuePush();
    v29 = sub_1AB01DBA0(*(v28 + 16));
    swift_task_localValuePop();

    if (v29)
    {
      v30 = swift_conformsToProtocol2();
      v31 = 0;
      if (v30 && v27)
      {
        v32 = *(v30 + 8);
        v33 = v30;

        v32(v27, v33);
        sub_1AB0318FC();
        sub_1AB460184();
        v31 = sub_1AB460154();
        v34 = *(v29 + 48);

        os_unfair_lock_lock((v34 + 20));
        v35 = *(v34 + 16);
        os_unfair_lock_unlock((v34 + 20));

        if (v35 == 1)
        {

          sub_1AB460124();
        }

        sub_1AB3858E0(v31);

        sub_1AB460164();
      }
    }

    else
    {
      v31 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B060);
    v13 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    v37 = MEMORY[0x1E69E7CC0];
    *(v13 + 16) = v36;
    *(v13 + 24) = v37;
    *(v13 + 32) = 0;
    *(v1 + 24) = v13;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1AB057304();
    os_unfair_lock_unlock(v48 + 4);
    v38 = sub_1AB460BE4();
    v39 = v51;
    (*(*(v38 - 8) + 56))(v51, 1, 1, v38);
    v40 = swift_allocObject();
    swift_weakInit();
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v42 = v49;
    v41[4] = v50;
    v41[5] = v42;
    v41[6] = v1;
    v41[7] = v27;
    v44 = tv_nsec;
    v43 = v47;
    v41[8] = tv_sec;
    v41[9] = v44;
    v41[10] = v43;
    v41[11] = v26;
    v41[12] = v31;
    v41[13] = v29;
    v41[14] = v13;
    v41[15] = v40;

    sub_1AB2313A4(0, 0, v39, &unk_1AB4EB618, v41);
  }

  return v13;
}

uint64_t sub_1AB332A14()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v43 - v3;
  v5 = sub_1AB45FF84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v12 = *(v1 + 16);
  os_unfair_lock_lock(v12 + 4);
  v13 = *(v1 + 24);
  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v12 + 4);
    return v13;
  }

  else
  {
    v50 = v4;
    v15 = *(v1 + 32);
    v16 = qword_1EB434BA8;
    v47 = v12;
    v48 = v15;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1AB45FFC4();
    __swift_project_value_buffer(v17, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v18 = sub_1AB45FFA4();
    v19 = sub_1AB461234();
    v20 = sub_1AB461314();
    v49 = v13;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v51.tv_sec = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1AB030D2C(0xD000000000000013, 0x80000001AB4FF1E0, &v51.tv_sec);
      v23 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v18, v19, v23, "MakeDependency", "object=%s,type=async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1AC59F020](v22, -1, -1);
      MEMORY[0x1AC59F020](v21, -1, -1);
    }

    (*(v6 + 16))(v8, v11, v5);
    sub_1AB460014();
    swift_allocObject();
    v46 = sub_1AB460004();
    (*(v6 + 8))(v11, v5);
    static MonotonicTime.now.getter(&v51);
    tv_nsec = v51.tv_nsec;
    tv_sec = v51.tv_sec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v24 = v51.tv_sec;
    v25 = type metadata accessor for JetPackAssetSession();
    type metadata accessor for BaseObjectGraph();
    v26 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v51.tv_sec = v26;

    swift_task_localValuePush();
    v27 = sub_1AB01DBA0(*(v26 + 16));
    swift_task_localValuePop();

    if (v27)
    {
      v28 = swift_conformsToProtocol2();
      v29 = 0;
      if (v28 && v25)
      {
        v30 = *(v28 + 8);
        v31 = v28;

        v30(v25, v31);
        sub_1AB0318FC();
        sub_1AB460184();
        v29 = sub_1AB460154();
        v32 = *(v27 + 48);

        os_unfair_lock_lock((v32 + 20));
        v33 = *(v32 + 16);
        os_unfair_lock_unlock((v32 + 20));

        if (v33 == 1)
        {

          sub_1AB460124();
        }

        sub_1AB3858E0(v29);

        sub_1AB460164();
      }
    }

    else
    {
      v29 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B078);
    v34 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    v36 = MEMORY[0x1E69E7CC0];
    *(v34 + 16) = v35;
    *(v34 + 24) = v36;
    *(v34 + 32) = 0;
    *(v1 + 24) = v34;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1AB057304();
    os_unfair_lock_unlock(v47 + 4);
    v37 = sub_1AB460BE4();
    v38 = v50;
    (*(*(v37 - 8) + 56))(v50, 1, 1, v37);
    v39 = swift_allocObject();
    swift_weakInit();
    v40 = swift_allocObject();
    v40[2] = 0;
    v40[3] = 0;
    v41 = v48;
    v40[4] = v49;
    v40[5] = v41;
    v40[6] = v1;
    v40[7] = v25;
    v42 = tv_nsec;
    v40[8] = tv_sec;
    v40[9] = v42;
    v40[10] = v46;
    v40[11] = v24;
    v40[12] = v29;
    v40[13] = v27;
    v40[14] = v34;
    v40[15] = v39;

    sub_1AB2313A4(0, 0, v38, &unk_1AB4EB6B0, v40);

    return v34;
  }
}

void *sub_1AB333064()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &tv_nsec - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437840);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &tv_nsec - v6;
  v8 = sub_1AB45FF84();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &tv_nsec - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &tv_nsec - v13;
  v15 = *(v0 + 16);
  os_unfair_lock_lock(v15 + 4);
  v16 = *(v0 + 24);
  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v15 + 4);
  }

  else
  {
    v49 = v15;
    v52 = v16;
    v53 = v4;
    v17 = qword_1EB434BA8;
    v51 = *(v1 + 32);

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_1AB45FFC4();
    __swift_project_value_buffer(v18, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v19 = sub_1AB45FFA4();
    v20 = sub_1AB461234();
    v21 = sub_1AB461314();
    v50 = v7;
    v48 = v5;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v54.tv_sec = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1AB030D2C(0x416B63615074654ALL, 0xEC00000074657373, &v54.tv_sec);
      v24 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v19, v20, v24, "MakeDependency", "object=%s,type=async", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1AC59F020](v23, -1, -1);
      MEMORY[0x1AC59F020](v22, -1, -1);
    }

    (*(v9 + 16))(v11, v14, v8);
    sub_1AB460014();
    swift_allocObject();
    v47 = sub_1AB460004();
    (*(v9 + 8))(v14, v8);
    static MonotonicTime.now.getter(&v54);
    tv_sec = v54.tv_sec;
    tv_nsec = v54.tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v26 = v54.tv_sec;
    v27 = type metadata accessor for JetPackAsset(0);
    type metadata accessor for BaseObjectGraph();
    v28 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v54.tv_sec = v28;

    swift_task_localValuePush();
    v29 = sub_1AB01DBA0(*(v28 + 16));
    swift_task_localValuePop();

    if (v29)
    {
      v30 = swift_conformsToProtocol2();
      v31 = 0;
      if (v30 && v27)
      {
        v32 = *(v30 + 8);
        v33 = v30;

        v32(v27, v33);
        sub_1AB0318FC();
        sub_1AB460184();
        v31 = sub_1AB460154();
        v34 = *(v29 + 48);

        os_unfair_lock_lock((v34 + 20));
        v35 = *(v34 + 16);
        os_unfair_lock_unlock((v34 + 20));

        if (v35 == 1)
        {

          sub_1AB460124();
        }

        sub_1AB3858E0(v31);

        sub_1AB460164();
      }
    }

    else
    {
      v31 = 0;
    }

    v36 = v50;
    *v50 = MEMORY[0x1E69E7CC0];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AFE8);
    v16 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    v16[2] = v37;
    sub_1AB017FB8(v36, v16 + *(*v16 + 96), &unk_1EB437840);
    *(v1 + 24) = v16;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1AB057304();
    os_unfair_lock_unlock(v49 + 4);
    v38 = sub_1AB460BE4();
    v39 = v53;
    (*(*(v38 - 8) + 56))(v53, 1, 1, v38);
    v40 = swift_allocObject();
    swift_weakInit();
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v42 = v51;
    v41[4] = v52;
    v41[5] = v42;
    v41[6] = v1;
    v41[7] = v27;
    v44 = tv_nsec;
    v43 = v47;
    v41[8] = tv_sec;
    v41[9] = v44;
    v41[10] = v43;
    v41[11] = v26;
    v41[12] = v31;
    v41[13] = v29;
    v41[14] = v16;
    v41[15] = v40;

    sub_1AB2313A4(0, 0, v39, &unk_1AB4EB4E8, v41);
  }

  return v16;
}

uint64_t sub_1AB333750()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &tv_nsec - v3;
  v5 = sub_1AB45FF84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &tv_nsec - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &tv_nsec - v10;
  v12 = *(v1 + 16);
  os_unfair_lock_lock(v12 + 4);
  v13 = *(v1 + 24);
  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v12 + 4);
    return v13;
  }

  else
  {
    v47 = v4;
    v15 = *(v1 + 32);
    v16 = qword_1EB434BA8;
    v44 = v12;
    v45 = v15;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1AB45FFC4();
    __swift_project_value_buffer(v17, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v18 = sub_1AB45FFA4();
    v19 = sub_1AB461234();
    v20 = sub_1AB461314();
    v46 = v13;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v48.tv_sec = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1AB030D2C(0xD000000000000011, 0x80000001AB4FF180, &v48.tv_sec);
      v23 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v18, v19, v23, "MakeDependency", "object=%s,type=async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1AC59F020](v22, -1, -1);
      MEMORY[0x1AC59F020](v21, -1, -1);
    }

    (*(v6 + 16))(v8, v11, v5);
    sub_1AB460014();
    swift_allocObject();
    v43 = sub_1AB460004();
    (*(v6 + 8))(v11, v5);
    static MonotonicTime.now.getter(&v48);
    tv_sec = v48.tv_sec;
    tv_nsec = v48.tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v25 = v48.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v26 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v48.tv_sec = v26;

    swift_task_localValuePush();
    v27 = sub_1AB01DBA0(*(v26 + 16));
    swift_task_localValuePop();

    if (v27 && (v28 = swift_conformsToProtocol2()) != 0)
    {
      v29 = *(v28 + 8);

      v29();
      sub_1AB0318FC();
      sub_1AB460184();
      v30 = sub_1AB460154();
      v31 = *(v27 + 48);

      os_unfair_lock_lock((v31 + 20));
      v32 = *(v31 + 16);
      os_unfair_lock_unlock((v31 + 20));

      if (v32 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v30);

      sub_1AB460164();
    }

    else
    {
      v30 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B038);
    v33 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    v35 = MEMORY[0x1E69E7CC0];
    *(v33 + 16) = v34;
    *(v33 + 24) = v35;
    *(v33 + 80) = 0;
    *(v1 + 24) = v33;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1AB057304();
    os_unfair_lock_unlock(v44 + 4);
    v36 = sub_1AB460BE4();
    v37 = v47;
    (*(*(v36 - 8) + 56))(v47, 1, 1, v36);
    v38 = swift_allocObject();
    swift_weakInit();
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v40 = v45;
    v39[4] = v46;
    v39[5] = v40;
    v39[6] = v1;
    v39[7] = &type metadata for DiskJetPackLoader;
    v39[8] = tv_sec;
    v41 = v43;
    v39[9] = tv_nsec;
    v39[10] = v41;
    v39[11] = v25;
    v39[12] = v30;
    v39[13] = v27;
    v39[14] = v33;
    v39[15] = v38;

    sub_1AB2313A4(0, 0, v37, &unk_1AB4EB5B8, v39);

    return v33;
  }
}

uint64_t sub_1AB333D9C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &tv_nsec - v3;
  v5 = sub_1AB45FF84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &tv_nsec - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &tv_nsec - v10;
  v12 = *(v1 + 16);
  os_unfair_lock_lock(v12 + 4);
  v13 = *(v1 + 24);
  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v12 + 4);
    return v13;
  }

  else
  {
    v47 = v4;
    v15 = *(v1 + 32);
    v16 = qword_1EB434BA8;
    v44 = v12;
    v45 = v15;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1AB45FFC4();
    __swift_project_value_buffer(v17, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v18 = sub_1AB45FFA4();
    v19 = sub_1AB461234();
    v20 = sub_1AB461314();
    v46 = v13;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v48.tv_sec = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1AB030D2C(0xD000000000000015, 0x80000001AB4FF160, &v48.tv_sec);
      v23 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v18, v19, v23, "MakeDependency", "object=%s,type=async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1AC59F020](v22, -1, -1);
      MEMORY[0x1AC59F020](v21, -1, -1);
    }

    (*(v6 + 16))(v8, v11, v5);
    sub_1AB460014();
    swift_allocObject();
    v43 = sub_1AB460004();
    (*(v6 + 8))(v11, v5);
    static MonotonicTime.now.getter(&v48);
    tv_sec = v48.tv_sec;
    tv_nsec = v48.tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v25 = v48.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v26 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v48.tv_sec = v26;

    swift_task_localValuePush();
    v27 = sub_1AB01DBA0(*(v26 + 16));
    swift_task_localValuePop();

    if (v27 && (v28 = swift_conformsToProtocol2()) != 0)
    {
      v29 = *(v28 + 8);

      v29();
      sub_1AB0318FC();
      sub_1AB460184();
      v30 = sub_1AB460154();
      v31 = *(v27 + 48);

      os_unfair_lock_lock((v31 + 20));
      v32 = *(v31 + 16);
      os_unfair_lock_unlock((v31 + 20));

      if (v32 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v30);

      sub_1AB460164();
    }

    else
    {
      v30 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B010);
    v33 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    v35 = MEMORY[0x1E69E7CC0];
    *(v33 + 16) = v34;
    *(v33 + 24) = v35;
    *(v33 + 80) = 0;
    *(v1 + 24) = v33;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1AB057304();
    os_unfair_lock_unlock(v44 + 4);
    v36 = sub_1AB460BE4();
    v37 = v47;
    (*(*(v36 - 8) + 56))(v47, 1, 1, v36);
    v38 = swift_allocObject();
    swift_weakInit();
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v40 = v45;
    v39[4] = v46;
    v39[5] = v40;
    v39[6] = v1;
    v39[7] = &type metadata for InMemoryJetPackLoader;
    v39[8] = tv_sec;
    v41 = v43;
    v39[9] = tv_nsec;
    v39[10] = v41;
    v39[11] = v25;
    v39[12] = v30;
    v39[13] = v27;
    v39[14] = v33;
    v39[15] = v38;

    sub_1AB2313A4(0, 0, v37, &unk_1AB4EB550, v39);

    return v33;
  }
}

uint64_t sub_1AB3343E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v15;
  *(v8 + 152) = v14;
  *(v8 + 136) = v13;
  *(v8 + 120) = v12;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 80) = a4;
  v9 = sub_1AB460134();
  *(v8 + 176) = v9;
  *(v8 + 184) = *(v9 - 8);
  *(v8 + 192) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB3344D0, 0, 0);
}

uint64_t sub_1AB3344D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v1 = swift_allocObject();
  *(v0 + 200) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v8 = *(v0 + 112);
  *(v0 + 72) = v1;
  v4 = swift_task_alloc();
  *(v0 + 208) = v4;
  v5 = *(v0 + 96);
  *(v4 + 16) = *(v0 + 80);
  *(v4 + 32) = v5;
  *(v4 + 48) = v8;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  *v6 = v0;
  v6[1] = sub_1AB334674;

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 72, &unk_1AB4EB888, v4, 0, 0, 0xD000000000000021, 0x80000001AB507270);
}

uint64_t sub_1AB334674()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1AB3348A4;
  }

  else
  {
    v2 = sub_1AB334798;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB334798()
{
  v7 = v0;
  if (v0[18])
  {
    v2 = v0[23];
    v1 = v0[24];
    v3 = v0[22];
    (*(v2 + 104))(v1, *MEMORY[0x1E6977AC8], v3);
    sub_1AB460174();
    (*(v2 + 8))(v1, v3);
  }

  if (v0[19])
  {
    v6 = &type metadata for JetEngineBootstrap.URLProtocolHandler;
    StartUpPerformanceEvent.record(checkpoint:)(&v6);
  }

  sub_1AB42E3D0(v0[2], v0[3], v0[4], v0[5]);

  sub_1AB093AF0(v0[2], v0[3]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB3348A4()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 16);
    v4 = swift_task_alloc();
    v5 = *(v0 + 80);
    *(v4 + 16) = v2;
    *(v4 + 24) = v5;
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_1AB341BD0;
    *(v6 + 24) = v4;

    os_unfair_lock_lock(v3 + 4);
    sub_1AB343AE0(v7);
    os_unfair_lock_unlock(v3 + 4);
  }

  if (*(v0 + 144))
  {
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);
    v10 = *(v0 + 176);
    (*(v9 + 104))(v8, *MEMORY[0x1E6977AC0], v10);
    sub_1AB460174();
    (*(v9 + 8))(v8, v10);
  }

  v11 = *(v0 + 224);
  sub_1AB2A11A8(v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1AB334A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 144) = v15;
  *(v8 + 112) = v13;
  *(v8 + 128) = v14;
  *(v8 + 96) = v12;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 56) = a4;
  v9 = sub_1AB460134();
  *(v8 + 152) = v9;
  *(v8 + 160) = *(v9 - 8);
  *(v8 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB334B44, 0, 0);
}

uint64_t sub_1AB334B44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v1 = swift_allocObject();
  *(v0 + 176) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v8 = *(v0 + 88);
  *(v0 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  v5 = *(v0 + 72);
  *(v4 + 16) = *(v0 + 56);
  *(v4 + 32) = v5;
  *(v4 + 48) = v8;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = swift_task_alloc();
  *(v0 + 192) = v6;
  *v6 = v0;
  v6[1] = sub_1AB334CEC;

  return MEMORY[0x1EEE6DE98](v0 + 40, v0 + 48, &unk_1AB4EB678, v4, 0, 0, 0xD000000000000021, 0x80000001AB507270);
}

uint64_t sub_1AB334CEC()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1AB334F14;
  }

  else
  {
    v2 = sub_1AB334E10;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB334E10()
{
  v7 = v0;
  if (v0[15])
  {
    v2 = v0[20];
    v1 = v0[21];
    v3 = v0[19];
    (*(v2 + 104))(v1, *MEMORY[0x1E6977AC8], v3);
    sub_1AB460174();
    (*(v2 + 8))(v1, v3);
  }

  if (v0[16])
  {
    v6 = &type metadata for Bag;
    StartUpPerformanceEvent.record(checkpoint:)(&v6);
  }

  sub_1AB08FEA0(v0[5]);

  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB334F14()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 16);
    v4 = swift_task_alloc();
    v5 = *(v0 + 56);
    *(v4 + 16) = v2;
    *(v4 + 24) = v5;
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_1AB341BD0;
    *(v6 + 24) = v4;

    os_unfair_lock_lock(v3 + 4);
    sub_1AB343AE0(v7);
    os_unfair_lock_unlock(v3 + 4);
  }

  if (*(v0 + 120))
  {
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 152);
    (*(v9 + 104))(v8, *MEMORY[0x1E6977AC0], v10);
    sub_1AB460174();
    (*(v9 + 8))(v8, v10);
  }

  v11 = *(v0 + 200);
  sub_1AB2A0C24(v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1AB3350D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 144) = v15;
  *(v8 + 112) = v13;
  *(v8 + 128) = v14;
  *(v8 + 96) = v12;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 56) = a4;
  v9 = sub_1AB460134();
  *(v8 + 152) = v9;
  *(v8 + 160) = *(v9 - 8);
  *(v8 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB3351B4, 0, 0);
}

uint64_t sub_1AB3351B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v1 = swift_allocObject();
  *(v0 + 176) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v8 = *(v0 + 88);
  *(v0 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  v5 = *(v0 + 72);
  *(v4 + 16) = *(v0 + 56);
  *(v4 + 32) = v5;
  *(v4 + 48) = v8;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = swift_task_alloc();
  *(v0 + 192) = v6;
  sub_1AB016760(0, &unk_1ED4D1398);
  *v6 = v0;
  v6[1] = sub_1AB33536C;

  return MEMORY[0x1EEE6DE98](v0 + 40, v0 + 48, &unk_1AB4EB8D0, v4, 0, 0, 0xD000000000000021, 0x80000001AB507270);
}

uint64_t sub_1AB33536C()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1AB335594;
  }

  else
  {
    v2 = sub_1AB335490;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB335490()
{
  v7 = v0;
  if (*(v0 + 120))
  {
    v2 = *(v0 + 160);
    v1 = *(v0 + 168);
    v3 = *(v0 + 152);
    (*(v2 + 104))(v1, *MEMORY[0x1E6977AC8], v3);
    sub_1AB460174();
    (*(v2 + 8))(v1, v3);
  }

  if (*(v0 + 128))
  {
    ObjectType = swift_getObjectType();
    StartUpPerformanceEvent.record(checkpoint:)(&ObjectType);
  }

  sub_1AB42E6CC(*(v0 + 40));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1AB335594()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 16);
    v4 = swift_task_alloc();
    v5 = *(v0 + 56);
    *(v4 + 16) = v2;
    *(v4 + 24) = v5;
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_1AB341BD0;
    *(v6 + 24) = v4;

    os_unfair_lock_lock(v3 + 4);
    sub_1AB343AE0(v7);
    os_unfair_lock_unlock(v3 + 4);
  }

  if (*(v0 + 120))
  {
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 152);
    (*(v9 + 104))(v8, *MEMORY[0x1E6977AC0], v10);
    sub_1AB460174();
    (*(v9 + 8))(v8, v10);
  }

  v11 = *(v0 + 200);
  sub_1AB2A1494(v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1AB335750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 144) = v15;
  *(v8 + 112) = v13;
  *(v8 + 128) = v14;
  *(v8 + 96) = v12;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 56) = a4;
  v9 = sub_1AB460134();
  *(v8 + 152) = v9;
  *(v8 + 160) = *(v9 - 8);
  *(v8 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB335834, 0, 0);
}

uint64_t sub_1AB335834()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v1 = swift_allocObject();
  *(v0 + 176) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v8 = *(v0 + 88);
  *(v0 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  v5 = *(v0 + 72);
  *(v4 + 16) = *(v0 + 56);
  *(v4 + 32) = v5;
  *(v4 + 48) = v8;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = swift_task_alloc();
  *(v0 + 192) = v6;
  type metadata accessor for StartUpPerformanceEvent();
  *v6 = v0;
  v6[1] = sub_1AB3359DC;

  return MEMORY[0x1EEE6DE98](v0 + 40, v0 + 48, &unk_1AB4EB830, v4, 0, 0, 0xD000000000000021, 0x80000001AB507270);
}

uint64_t sub_1AB3359DC()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1AB335C20;
  }

  else
  {
    v2 = sub_1AB335B00;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB335B00()
{
  v7 = v0;
  if (v0[15])
  {
    v2 = v0[20];
    v1 = v0[21];
    v3 = v0[19];
    (*(v2 + 104))(v1, *MEMORY[0x1E6977AC8], v3);
    sub_1AB460174();
    (*(v2 + 8))(v1, v3);
  }

  if (v0[16])
  {
    v6 = *v0[5];
    StartUpPerformanceEvent.record(checkpoint:)(&v6);
  }

  sub_1AB4303F8(v0[5]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB335C20()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 16);
    v4 = swift_task_alloc();
    v5 = *(v0 + 56);
    *(v4 + 16) = v2;
    *(v4 + 24) = v5;
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_1AB341BD0;
    *(v6 + 24) = v4;

    os_unfair_lock_lock(v3 + 4);
    sub_1AB343AE0(v7);
    os_unfair_lock_unlock(v3 + 4);
  }

  if (*(v0 + 120))
  {
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 152);
    (*(v9 + 104))(v8, *MEMORY[0x1E6977AC0], v10);
    sub_1AB460174();
    (*(v9 + 8))(v8, v10);
  }

  v11 = *(v0 + 200);
  sub_1AB2A3464(v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1AB335DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 176) = v15;
  *(v8 + 144) = v13;
  *(v8 + 160) = v14;
  *(v8 + 128) = v12;
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 88) = a4;
  v9 = sub_1AB460134();
  *(v8 + 184) = v9;
  *(v8 + 192) = *(v9 - 8);
  *(v8 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB335EC0, 0, 0);
}

uint64_t sub_1AB335EC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v1 = swift_allocObject();
  *(v0 + 208) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v8 = *(v0 + 120);
  *(v0 + 80) = v1;
  v4 = swift_task_alloc();
  *(v0 + 216) = v4;
  v5 = *(v0 + 104);
  *(v4 + 16) = *(v0 + 88);
  *(v4 + 32) = v5;
  *(v4 + 48) = v8;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = swift_task_alloc();
  *(v0 + 224) = v6;
  *(v0 + 232) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436690);
  *v6 = v0;
  v6[1] = sub_1AB336078;

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 80, &unk_1AB4EB418, v4, 0, 0, 0xD000000000000021, 0x80000001AB507270);
}

uint64_t sub_1AB336078()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1AB33629C;
  }

  else
  {
    v2 = sub_1AB33619C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB33619C()
{
  v7 = v0;
  if (v0[19])
  {
    v2 = v0[24];
    v1 = v0[25];
    v3 = v0[23];
    (*(v2 + 104))(v1, *MEMORY[0x1E6977AC8], v3);
    sub_1AB460174();
    (*(v2 + 8))(v1, v3);
  }

  if (v0[20])
  {
    v6 = v0[29];
    StartUpPerformanceEvent.record(checkpoint:)(&v6);
  }

  sub_1AB430C00((v0 + 2));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB33629C()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 16);
    v4 = swift_task_alloc();
    v5 = *(v0 + 88);
    *(v4 + 16) = v2;
    *(v4 + 24) = v5;
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_1AB341BD0;
    *(v6 + 24) = v4;

    os_unfair_lock_lock(v3 + 4);
    sub_1AB341BFC(v7);
    os_unfair_lock_unlock(v3 + 4);
  }

  if (*(v0 + 152))
  {
    v9 = *(v0 + 192);
    v8 = *(v0 + 200);
    v10 = *(v0 + 184);
    (*(v9 + 104))(v8, *MEMORY[0x1E6977AC0], v10);
    sub_1AB460174();
    (*(v9 + 8))(v8, v10);
  }

  v11 = *(v0 + 240);
  sub_1AB2A3DBC(v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1AB336458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v15;
  *(v8 + 136) = v14;
  *(v8 + 120) = v13;
  *(v8 + 104) = v12;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 64) = a4;
  v9 = sub_1AB460134();
  *(v8 + 160) = v9;
  *(v8 + 168) = *(v9 - 8);
  *(v8 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB336540, 0, 0);
}

uint64_t sub_1AB336540()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v1 = swift_allocObject();
  *(v0 + 184) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v8 = *(v0 + 96);
  *(v0 + 56) = v1;
  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  v5 = *(v0 + 80);
  *(v4 + 16) = *(v0 + 64);
  *(v4 + 32) = v5;
  *(v4 + 48) = v8;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = swift_task_alloc();
  *(v0 + 200) = v6;
  *v6 = v0;
  v6[1] = sub_1AB3366E4;

  return MEMORY[0x1EEE6DE98](v0 + 40, v0 + 56, &unk_1AB4EB460, v4, 0, 0, 0xD000000000000021, 0x80000001AB507270);
}

uint64_t sub_1AB3366E4()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1AB336908;
  }

  else
  {
    v2 = sub_1AB336808;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB336808()
{
  v7 = v0;
  if (*(v0 + 128))
  {
    v2 = *(v0 + 168);
    v1 = *(v0 + 176);
    v3 = *(v0 + 160);
    (*(v2 + 104))(v1, *MEMORY[0x1E6977AC8], v3);
    sub_1AB460174();
    (*(v2 + 8))(v1, v3);
  }

  if (*(v0 + 136))
  {
    v6 = &type metadata for IntentDispatchTimeout;
    StartUpPerformanceEvent.record(checkpoint:)(&v6);
  }

  sub_1AB430EF8(*(v0 + 40), *(v0 + 48));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1AB336908()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 16);
    v4 = swift_task_alloc();
    v5 = *(v0 + 64);
    *(v4 + 16) = v2;
    *(v4 + 24) = v5;
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_1AB341BD0;
    *(v6 + 24) = v4;

    os_unfair_lock_lock(v3 + 4);
    sub_1AB343AE0(v7);
    os_unfair_lock_unlock(v3 + 4);
  }

  if (*(v0 + 128))
  {
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v10 = *(v0 + 160);
    (*(v9 + 104))(v8, *MEMORY[0x1E6977AC0], v10);
    sub_1AB460174();
    (*(v9 + 8))(v8, v10);
  }

  v11 = *(v0 + 208);
  sub_1AB2A40AC(v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1AB336AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v15;
  *(v8 + 120) = v14;
  *(v8 + 104) = v13;
  *(v8 + 88) = v12;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 48) = a4;
  v9 = sub_1AB460134();
  *(v8 + 144) = v9;
  *(v8 + 152) = *(v9 - 8);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = type metadata accessor for PageIntentInstrumentation();
  *(v8 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB336BDC, 0, 0);
}

uint64_t sub_1AB336BDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v1 = swift_allocObject();
  *(v0 + 184) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v9 = *(v0 + 80);
  *(v0 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  v5 = *(v0 + 64);
  *(v4 + 16) = *(v0 + 48);
  *(v4 + 32) = v5;
  *(v4 + 48) = v9;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = swift_task_alloc();
  *(v0 + 200) = v6;
  *v6 = v0;
  v6[1] = sub_1AB336D78;
  v7 = *(v0 + 176);

  return MEMORY[0x1EEE6DE98](v7, v0 + 40, &unk_1AB4EB4A8, v4, 0, 0, 0xD000000000000021, 0x80000001AB507270);
}

uint64_t sub_1AB336D78()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1AB336FBC;
  }

  else
  {
    v2 = sub_1AB336E9C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB336E9C()
{
  v8 = v0;
  if (v0[14])
  {
    v2 = v0[19];
    v1 = v0[20];
    v3 = v0[18];
    (*(v2 + 104))(v1, *MEMORY[0x1E6977AC8], v3);
    sub_1AB460174();
    (*(v2 + 8))(v1, v3);
  }

  if (v0[15])
  {
    v7 = v0[21];
    StartUpPerformanceEvent.record(checkpoint:)(&v7);
  }

  v4 = v0[22];
  sub_1AB4311A4(v4);

  sub_1AB3422B0(v4, type metadata accessor for PageIntentInstrumentation);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1AB336FBC()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 16);
    v4 = swift_task_alloc();
    v5 = *(v0 + 48);
    *(v4 + 16) = v2;
    *(v4 + 24) = v5;
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_1AB341BD0;
    *(v6 + 24) = v4;

    os_unfair_lock_lock(v3 + 4);
    sub_1AB343AE0(v7);
    os_unfair_lock_unlock(v3 + 4);
  }

  if (*(v0 + 112))
  {
    v9 = *(v0 + 152);
    v8 = *(v0 + 160);
    v10 = *(v0 + 144);
    (*(v9 + 104))(v8, *MEMORY[0x1E6977AC0], v10);
    sub_1AB460174();
    (*(v9 + 8))(v8, v10);
  }

  v11 = *(v0 + 208);
  sub_1AB2A4364(v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1AB337184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 176) = v15;
  *(v8 + 144) = v13;
  *(v8 + 160) = v14;
  *(v8 + 128) = v12;
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 88) = a4;
  v9 = sub_1AB460134();
  *(v8 + 184) = v9;
  *(v8 + 192) = *(v9 - 8);
  *(v8 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB337268, 0, 0);
}

uint64_t sub_1AB337268()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v1 = swift_allocObject();
  *(v0 + 208) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v8 = *(v0 + 120);
  *(v0 + 80) = v1;
  v4 = swift_task_alloc();
  *(v0 + 216) = v4;
  v5 = *(v0 + 104);
  *(v4 + 16) = *(v0 + 88);
  *(v4 + 32) = v5;
  *(v4 + 48) = v8;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = swift_task_alloc();
  *(v0 + 224) = v6;
  *(v0 + 232) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436660);
  *v6 = v0;
  v6[1] = sub_1AB337420;

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 80, &unk_1AB4EB7E8, v4, 0, 0, 0xD000000000000021, 0x80000001AB507270);
}

uint64_t sub_1AB337420()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1AB337644;
  }

  else
  {
    v2 = sub_1AB337544;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB337544()
{
  v7 = v0;
  if (v0[19])
  {
    v2 = v0[24];
    v1 = v0[25];
    v3 = v0[23];
    (*(v2 + 104))(v1, *MEMORY[0x1E6977AC8], v3);
    sub_1AB460174();
    (*(v2 + 8))(v1, v3);
  }

  if (v0[20])
  {
    v6 = v0[29];
    StartUpPerformanceEvent.record(checkpoint:)(&v6);
  }

  sub_1AB432AE0((v0 + 2));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB337644()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 16);
    v4 = swift_task_alloc();
    v5 = *(v0 + 88);
    *(v4 + 16) = v2;
    *(v4 + 24) = v5;
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_1AB341BD0;
    *(v6 + 24) = v4;

    os_unfair_lock_lock(v3 + 4);
    sub_1AB343AE0(v7);
    os_unfair_lock_unlock(v3 + 4);
  }

  if (*(v0 + 152))
  {
    v9 = *(v0 + 192);
    v8 = *(v0 + 200);
    v10 = *(v0 + 184);
    (*(v9 + 104))(v8, *MEMORY[0x1E6977AC0], v10);
    sub_1AB460174();
    (*(v9 + 8))(v8, v10);
  }

  v11 = *(v0 + 240);
  sub_1AB2A53DC(v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1AB337800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 216) = v15;
  *(v8 + 200) = v14;
  *(v8 + 184) = v13;
  *(v8 + 168) = v12;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 136) = a5;
  *(v8 + 144) = a6;
  *(v8 + 128) = a4;
  v9 = sub_1AB460134();
  *(v8 + 224) = v9;
  *(v8 + 232) = *(v9 - 8);
  *(v8 + 240) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB3378E8, 0, 0);
}

uint64_t sub_1AB3378E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v1 = swift_allocObject();
  *(v0 + 248) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v8 = *(v0 + 160);
  *(v0 + 120) = v1;
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  v5 = *(v0 + 144);
  *(v4 + 16) = *(v0 + 128);
  *(v4 + 32) = v5;
  *(v4 + 48) = v8;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = swift_task_alloc();
  *(v0 + 264) = v6;
  *v6 = v0;
  v6[1] = sub_1AB337A8C;

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 120, &unk_1AB4EB730, v4, 0, 0, 0xD000000000000021, 0x80000001AB507270);
}

uint64_t sub_1AB337A8C()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_1AB337CB4;
  }

  else
  {
    v2 = sub_1AB337BB0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB337BB0()
{
  v7 = v0;
  if (v0[24])
  {
    v2 = v0[29];
    v1 = v0[30];
    v3 = v0[28];
    (*(v2 + 104))(v1, *MEMORY[0x1E6977AC8], v3);
    sub_1AB460174();
    (*(v2 + 8))(v1, v3);
  }

  if (v0[25])
  {
    v6 = &type metadata for JetPackAssetSession.Configuration;
    StartUpPerformanceEvent.record(checkpoint:)(&v6);
  }

  sub_1AB432DD8((v0 + 2));

  sub_1AB026354((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB337CB4()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 16);
    v4 = swift_task_alloc();
    v5 = *(v0 + 128);
    *(v4 + 16) = v2;
    *(v4 + 24) = v5;
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_1AB341BD0;
    *(v6 + 24) = v4;

    os_unfair_lock_lock(v3 + 4);
    sub_1AB343AE0(v7);
    os_unfair_lock_unlock(v3 + 4);
  }

  if (*(v0 + 192))
  {
    v9 = *(v0 + 232);
    v8 = *(v0 + 240);
    v10 = *(v0 + 224);
    (*(v9 + 104))(v8, *MEMORY[0x1E6977AC0], v10);
    sub_1AB460174();
    (*(v9 + 8))(v8, v10);
  }

  v11 = *(v0 + 272);
  sub_1AB2A56CC(v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1AB337E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 176) = v15;
  *(v8 + 144) = v13;
  *(v8 + 160) = v14;
  *(v8 + 128) = v12;
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 88) = a4;
  v9 = sub_1AB460134();
  *(v8 + 184) = v9;
  *(v8 + 192) = *(v9 - 8);
  *(v8 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB337F54, 0, 0);
}

uint64_t sub_1AB337F54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v1 = swift_allocObject();
  *(v0 + 208) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v8 = *(v0 + 120);
  *(v0 + 80) = v1;
  v4 = swift_task_alloc();
  *(v0 + 216) = v4;
  v5 = *(v0 + 104);
  *(v4 + 16) = *(v0 + 88);
  *(v4 + 32) = v5;
  *(v4 + 48) = v8;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = swift_task_alloc();
  *(v0 + 224) = v6;
  *(v0 + 232) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436730);
  *v6 = v0;
  v6[1] = sub_1AB33810C;

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 80, &unk_1AB4EB798, v4, 0, 0, 0xD000000000000021, 0x80000001AB507270);
}

uint64_t sub_1AB33810C()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1AB338330;
  }

  else
  {
    v2 = sub_1AB338230;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB338230()
{
  v7 = v0;
  if (v0[19])
  {
    v2 = v0[24];
    v1 = v0[25];
    v3 = v0[23];
    (*(v2 + 104))(v1, *MEMORY[0x1E6977AC8], v3);
    sub_1AB460174();
    (*(v2 + 8))(v1, v3);
  }

  if (v0[20])
  {
    v6 = v0[29];
    StartUpPerformanceEvent.record(checkpoint:)(&v6);
  }

  sub_1AB4330F4((v0 + 2));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB338330()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 16);
    v4 = swift_task_alloc();
    v5 = *(v0 + 88);
    *(v4 + 16) = v2;
    *(v4 + 24) = v5;
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_1AB341BD0;
    *(v6 + 24) = v4;

    os_unfair_lock_lock(v3 + 4);
    sub_1AB343AE0(v7);
    os_unfair_lock_unlock(v3 + 4);
  }

  if (*(v0 + 152))
  {
    v9 = *(v0 + 192);
    v8 = *(v0 + 200);
    v10 = *(v0 + 184);
    (*(v9 + 104))(v8, *MEMORY[0x1E6977AC0], v10);
    sub_1AB460174();
    (*(v9 + 8))(v8, v10);
  }

  v11 = *(v0 + 240);
  sub_1AB2A59BC(v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1AB3384EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 144) = v15;
  *(v8 + 112) = v13;
  *(v8 + 128) = v14;
  *(v8 + 96) = v12;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 56) = a4;
  v9 = sub_1AB460134();
  *(v8 + 152) = v9;
  *(v8 + 160) = *(v9 - 8);
  *(v8 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB3385D0, 0, 0);
}

uint64_t sub_1AB3385D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v1 = swift_allocObject();
  *(v0 + 176) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v8 = *(v0 + 88);
  *(v0 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  v5 = *(v0 + 72);
  *(v4 + 16) = *(v0 + 56);
  *(v4 + 32) = v5;
  *(v4 + 48) = v8;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = swift_task_alloc();
  *(v0 + 192) = v6;
  sub_1AB016760(0, &qword_1EB435620);
  *v6 = v0;
  v6[1] = sub_1AB338788;

  return MEMORY[0x1EEE6DE98](v0 + 40, v0 + 48, &unk_1AB4EB628, v4, 0, 0, 0xD000000000000021, 0x80000001AB507270);
}

uint64_t sub_1AB338788()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1AB3389B0;
  }

  else
  {
    v2 = sub_1AB3388AC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB3388AC()
{
  v7 = v0;
  if (*(v0 + 120))
  {
    v2 = *(v0 + 160);
    v1 = *(v0 + 168);
    v3 = *(v0 + 152);
    (*(v2 + 104))(v1, *MEMORY[0x1E6977AC8], v3);
    sub_1AB460174();
    (*(v2 + 8))(v1, v3);
  }

  if (*(v0 + 128))
  {
    ObjectType = swift_getObjectType();
    StartUpPerformanceEvent.record(checkpoint:)(&ObjectType);
  }

  sub_1AB4333EC(*(v0 + 40));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1AB3389B0()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 16);
    v4 = swift_task_alloc();
    v5 = *(v0 + 56);
    *(v4 + 16) = v2;
    *(v4 + 24) = v5;
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_1AB341BD0;
    *(v6 + 24) = v4;

    os_unfair_lock_lock(v3 + 4);
    sub_1AB343AE0(v7);
    os_unfair_lock_unlock(v3 + 4);
  }

  if (*(v0 + 120))
  {
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 152);
    (*(v9 + 104))(v8, *MEMORY[0x1E6977AC0], v10);
    sub_1AB460174();
    (*(v9 + 8))(v8, v10);
  }

  v11 = *(v0 + 200);
  sub_1AB2A5CAC(v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1AB338B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 144) = v15;
  *(v8 + 112) = v13;
  *(v8 + 128) = v14;
  *(v8 + 96) = v12;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 56) = a4;
  v9 = sub_1AB460134();
  *(v8 + 152) = v9;
  *(v8 + 160) = *(v9 - 8);
  *(v8 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB338C50, 0, 0);
}

uint64_t sub_1AB338C50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v1 = swift_allocObject();
  *(v0 + 176) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v8 = *(v0 + 88);
  *(v0 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  v5 = *(v0 + 72);
  *(v4 + 16) = *(v0 + 56);
  *(v4 + 32) = v5;
  *(v4 + 48) = v8;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = swift_task_alloc();
  *(v0 + 192) = v6;
  type metadata accessor for JetPackAssetSession();
  *v6 = v0;
  v6[1] = sub_1AB338DF8;

  return MEMORY[0x1EEE6DE98](v0 + 40, v0 + 48, &unk_1AB4EB6C0, v4, 0, 0, 0xD000000000000021, 0x80000001AB507270);
}

uint64_t sub_1AB338DF8()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1AB33903C;
  }

  else
  {
    v2 = sub_1AB338F1C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB338F1C()
{
  v7 = v0;
  if (v0[15])
  {
    v2 = v0[20];
    v1 = v0[21];
    v3 = v0[19];
    (*(v2 + 104))(v1, *MEMORY[0x1E6977AC8], v3);
    sub_1AB460174();
    (*(v2 + 8))(v1, v3);
  }

  if (v0[16])
  {
    v6 = *v0[5];
    StartUpPerformanceEvent.record(checkpoint:)(&v6);
  }

  sub_1AB43341C(v0[5]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB33903C()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 16);
    v4 = swift_task_alloc();
    v5 = *(v0 + 56);
    *(v4 + 16) = v2;
    *(v4 + 24) = v5;
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_1AB341BD0;
    *(v6 + 24) = v4;

    os_unfair_lock_lock(v3 + 4);
    sub_1AB343AE0(v7);
    os_unfair_lock_unlock(v3 + 4);
  }

  if (*(v0 + 120))
  {
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 152);
    (*(v9 + 104))(v8, *MEMORY[0x1E6977AC0], v10);
    sub_1AB460174();
    (*(v9 + 8))(v8, v10);
  }

  v11 = *(v0 + 200);
  sub_1AB2A5CDC(v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1AB3391F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v15;
  *(v8 + 120) = v14;
  *(v8 + 104) = v13;
  *(v8 + 88) = v12;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 48) = a4;
  v9 = sub_1AB460134();
  *(v8 + 144) = v9;
  *(v8 + 152) = *(v9 - 8);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = type metadata accessor for JetPackAsset(0);
  *(v8 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB339310, 0, 0);
}

uint64_t sub_1AB339310()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v1 = swift_allocObject();
  *(v0 + 184) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v9 = *(v0 + 80);
  *(v0 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  v5 = *(v0 + 64);
  *(v4 + 16) = *(v0 + 48);
  *(v4 + 32) = v5;
  *(v4 + 48) = v9;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = swift_task_alloc();
  *(v0 + 200) = v6;
  *v6 = v0;
  v6[1] = sub_1AB3394AC;
  v7 = *(v0 + 176);

  return MEMORY[0x1EEE6DE98](v7, v0 + 40, &unk_1AB4EB4F8, v4, 0, 0, 0xD000000000000021, 0x80000001AB507270);
}

uint64_t sub_1AB3394AC()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1AB3396F0;
  }

  else
  {
    v2 = sub_1AB3395D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB3395D0()
{
  v8 = v0;
  if (v0[14])
  {
    v2 = v0[19];
    v1 = v0[20];
    v3 = v0[18];
    (*(v2 + 104))(v1, *MEMORY[0x1E6977AC8], v3);
    sub_1AB460174();
    (*(v2 + 8))(v1, v3);
  }

  if (v0[15])
  {
    v7 = v0[21];
    StartUpPerformanceEvent.record(checkpoint:)(&v7);
  }

  v4 = v0[22];
  sub_1AB4336B8(v4);

  sub_1AB3422B0(v4, type metadata accessor for JetPackAsset);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1AB3396F0()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 16);
    v4 = swift_task_alloc();
    v5 = *(v0 + 48);
    *(v4 + 16) = v2;
    *(v4 + 24) = v5;
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_1AB341BD0;
    *(v6 + 24) = v4;

    os_unfair_lock_lock(v3 + 4);
    sub_1AB343AE0(v7);
    os_unfair_lock_unlock(v3 + 4);
  }

  if (*(v0 + 112))
  {
    v9 = *(v0 + 152);
    v8 = *(v0 + 160);
    v10 = *(v0 + 144);
    (*(v9 + 104))(v8, *MEMORY[0x1E6977AC0], v10);
    sub_1AB460174();
    (*(v9 + 8))(v8, v10);
  }

  v11 = *(v0 + 208);
  sub_1AB2A5F78(v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1AB3398B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 192) = v15;
  *(v8 + 160) = v13;
  *(v8 + 176) = v14;
  *(v8 + 144) = v12;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 104) = a4;
  v9 = sub_1AB460134();
  *(v8 + 200) = v9;
  *(v8 + 208) = *(v9 - 8);
  *(v8 + 216) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB33999C, 0, 0);
}

uint64_t sub_1AB33999C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v1 = swift_allocObject();
  *(v0 + 224) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v8 = *(v0 + 136);
  *(v0 + 96) = v1;
  v4 = swift_task_alloc();
  *(v0 + 232) = v4;
  v5 = *(v0 + 120);
  *(v4 + 16) = *(v0 + 104);
  *(v4 + 32) = v5;
  *(v4 + 48) = v8;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = swift_task_alloc();
  *(v0 + 240) = v6;
  *v6 = v0;
  v6[1] = sub_1AB339B44;

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 96, &unk_1AB4EB5C8, v4, 0, 0, 0xD000000000000021, 0x80000001AB507270);
}

uint64_t sub_1AB339B44()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1AB339D6C;
  }

  else
  {
    v2 = sub_1AB339C68;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB339C68()
{
  v7 = v0;
  if (v0[21])
  {
    v2 = v0[26];
    v1 = v0[27];
    v3 = v0[25];
    (*(v2 + 104))(v1, *MEMORY[0x1E6977AC8], v3);
    sub_1AB460174();
    (*(v2 + 8))(v1, v3);
  }

  if (v0[22])
  {
    v6 = &type metadata for DiskJetPackLoader;
    StartUpPerformanceEvent.record(checkpoint:)(&v6);
  }

  sub_1AB433B8C((v0 + 2));

  sub_1AB1999C8((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB339D6C()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 16);
    v4 = swift_task_alloc();
    v5 = *(v0 + 104);
    *(v4 + 16) = v2;
    *(v4 + 24) = v5;
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_1AB341BD0;
    *(v6 + 24) = v4;

    os_unfair_lock_lock(v3 + 4);
    sub_1AB343AE0(v7);
    os_unfair_lock_unlock(v3 + 4);
  }

  if (*(v0 + 168))
  {
    v9 = *(v0 + 208);
    v8 = *(v0 + 216);
    v10 = *(v0 + 200);
    (*(v9 + 104))(v8, *MEMORY[0x1E6977AC0], v10);
    sub_1AB460174();
    (*(v9 + 8))(v8, v10);
  }

  v11 = *(v0 + 248);
  sub_1AB2A6338(v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1AB339F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 192) = v15;
  *(v8 + 160) = v13;
  *(v8 + 176) = v14;
  *(v8 + 144) = v12;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 104) = a4;
  v9 = sub_1AB460134();
  *(v8 + 200) = v9;
  *(v8 + 208) = *(v9 - 8);
  *(v8 + 216) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB33A00C, 0, 0);
}

uint64_t sub_1AB33A00C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v1 = swift_allocObject();
  *(v0 + 224) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v8 = *(v0 + 136);
  *(v0 + 96) = v1;
  v4 = swift_task_alloc();
  *(v0 + 232) = v4;
  v5 = *(v0 + 120);
  *(v4 + 16) = *(v0 + 104);
  *(v4 + 32) = v5;
  *(v4 + 48) = v8;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = swift_task_alloc();
  *(v0 + 240) = v6;
  *v6 = v0;
  v6[1] = sub_1AB33A1B4;

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 96, &unk_1AB4EB560, v4, 0, 0, 0xD000000000000021, 0x80000001AB507270);
}

uint64_t sub_1AB33A1B4()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1AB33A3DC;
  }

  else
  {
    v2 = sub_1AB33A2D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB33A2D8()
{
  v7 = v0;
  if (v0[21])
  {
    v2 = v0[26];
    v1 = v0[27];
    v3 = v0[25];
    (*(v2 + 104))(v1, *MEMORY[0x1E6977AC8], v3);
    sub_1AB460174();
    (*(v2 + 8))(v1, v3);
  }

  if (v0[22])
  {
    v6 = &type metadata for InMemoryJetPackLoader;
    StartUpPerformanceEvent.record(checkpoint:)(&v6);
  }

  sub_1AB433EA8((v0 + 2));

  sub_1AB199974((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB33A3DC()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 16);
    v4 = swift_task_alloc();
    v5 = *(v0 + 104);
    *(v4 + 16) = v2;
    *(v4 + 24) = v5;
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_1AB341BD0;
    *(v6 + 24) = v4;

    os_unfair_lock_lock(v3 + 4);
    sub_1AB343AE0(v7);
    os_unfair_lock_unlock(v3 + 4);
  }

  if (*(v0 + 168))
  {
    v9 = *(v0 + 208);
    v8 = *(v0 + 216);
    v10 = *(v0 + 200);
    (*(v9 + 104))(v8, *MEMORY[0x1E6977AC0], v10);
    sub_1AB460174();
    (*(v9 + 8))(v8, v10);
  }

  v11 = *(v0 + 248);
  sub_1AB2A6628(v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1AB33A598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v18;
  v8[11] = v19;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a1;
  v8[7] = a6;
  v13 = sub_1AB45FFD4();
  v8[12] = v13;
  v8[13] = *(v13 - 8);
  v8[14] = swift_task_alloc();
  v14 = sub_1AB45FF84();
  v8[15] = v14;
  v8[16] = *(v14 - 8);
  v8[17] = swift_task_alloc();
  v15 = swift_task_alloc();
  v8[18] = v15;
  *v15 = v8;
  v15[1] = sub_1AB33A738;

  return sub_1AB325CD0((v8 + 2), a2, a3, a4, a5);
}

uint64_t sub_1AB33A738()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1AB33AB24;
  }

  else
  {
    v2 = sub_1AB33A84C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB33A84C()
{
  v27 = v0;
  static MonotonicTime.now.getter(&v26);
  tv_sec = v26.tv_sec;
  tv_nsec = v26.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v3 = tv_nsec / *&qword_1ED4D1F90 + tv_sec;
  v4 = *(v0 + 64) / *&qword_1ED4D1F90 + *(v0 + 56);
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v5 = v3 - v4;
  v6 = sub_1AB45FFC4();
  __swift_project_value_buffer(v6, qword_1EB46C230);

  v7 = sub_1AB45FFA4();
  sub_1AB45FFF4();
  v8 = sub_1AB461224();

  if (sub_1AB461314())
  {
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    v11 = *(v0 + 96);

    sub_1AB460024();

    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E69E93E8])
    {
      v12 = 0;
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
      v13 = "selfTime=%f";
      v12 = 1;
    }

    v14 = *(v0 + 80);
    v15 = swift_slowAlloc();
    *v15 = 0;
    *(v15 + 1) = v12;
    *(v15 + 2) = 2048;
    os_unfair_lock_lock((v14 + 24));
    v16 = *(v14 + 16);
    os_unfair_lock_unlock((v14 + 24));
    *(v15 + 4) = v5 - v16;
    v17 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v7, v8, v17, "MakeDependency", v13, v15, 0xCu);
    MEMORY[0x1AC59F020](v15, -1, -1);
  }

  v19 = *(v0 + 128);
  v18 = *(v0 + 136);
  v20 = *(v0 + 120);
  v21 = *(v0 + 88);
  v22 = *(v0 + 48);

  (*(v19 + 8))(v18, v20);
  os_unfair_lock_lock((v21 + 24));
  *(v21 + 16) = v5 + *(v21 + 16);
  os_unfair_lock_unlock((v21 + 24));
  v23 = *(v0 + 32);
  *v22 = *(v0 + 16);
  v22[1] = v23;

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1AB33AB24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB33AB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v18;
  v8[8] = v19;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a1;
  v8[4] = a6;
  v13 = sub_1AB45FFD4();
  v8[9] = v13;
  v8[10] = *(v13 - 8);
  v8[11] = swift_task_alloc();
  v14 = sub_1AB45FF84();
  v8[12] = v14;
  v8[13] = *(v14 - 8);
  v8[14] = swift_task_alloc();
  v15 = swift_task_alloc();
  v8[15] = v15;
  *v15 = v8;
  v15[1] = sub_1AB33AD34;

  return sub_1AB325FE0((v8 + 2), a2, a3, a4, a5);
}

uint64_t sub_1AB33AD34()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1AB2B6E44;
  }

  else
  {
    v2 = sub_1AB33AE48;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB33AE48()
{
  v26 = v0;
  static MonotonicTime.now.getter(&v25);
  tv_sec = v25.tv_sec;
  tv_nsec = v25.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v3 = tv_nsec / *&qword_1ED4D1F90 + tv_sec;
  v4 = v0[5] / *&qword_1ED4D1F90 + v0[4];
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v5 = v3 - v4;
  v6 = sub_1AB45FFC4();
  __swift_project_value_buffer(v6, qword_1EB46C230);

  v7 = sub_1AB45FFA4();
  sub_1AB45FFF4();
  v8 = sub_1AB461224();

  if (sub_1AB461314())
  {
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[9];

    sub_1AB460024();

    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E69E93E8])
    {
      v12 = 0;
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[10] + 8))(v0[11], v0[9]);
      v13 = "selfTime=%f";
      v12 = 1;
    }

    v14 = v0[7];
    v15 = swift_slowAlloc();
    *v15 = 0;
    *(v15 + 1) = v12;
    *(v15 + 2) = 2048;
    os_unfair_lock_lock((v14 + 24));
    v16 = *(v14 + 16);
    os_unfair_lock_unlock((v14 + 24));
    *(v15 + 4) = v5 - v16;
    v17 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v7, v8, v17, "MakeDependency", v13, v15, 0xCu);
    MEMORY[0x1AC59F020](v15, -1, -1);
  }

  v19 = v0[13];
  v18 = v0[14];
  v20 = v0[12];
  v21 = v0[8];
  v22 = v0[3];

  (*(v19 + 8))(v18, v20);
  os_unfair_lock_lock((v21 + 24));
  *(v21 + 16) = v5 + *(v21 + 16);
  os_unfair_lock_unlock((v21 + 24));
  *v22 = v0[2];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1AB33B120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v18;
  v8[6] = a6;
  v8[7] = a7;
  v8[5] = a5;
  v13 = sub_1AB45FFD4();
  v8[10] = v13;
  v8[11] = *(v13 - 8);
  v8[12] = swift_task_alloc();
  v14 = sub_1AB45FF84();
  v8[13] = v14;
  v8[14] = *(v14 - 8);
  v8[15] = swift_task_alloc();
  v15 = swift_task_alloc();
  v8[16] = v15;
  *v15 = v8;
  v15[1] = sub_1AB33B2B8;

  return sub_1AB3261A0(a1, a2, a3, a4);
}

uint64_t sub_1AB33B2B8(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v4 = *v2;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB343ABC, 0, 0);
  }
}

uint64_t sub_1AB33B418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v18;
  v8[6] = a6;
  v8[7] = a7;
  v8[5] = a5;
  v13 = sub_1AB45FFD4();
  v8[10] = v13;
  v8[11] = *(v13 - 8);
  v8[12] = swift_task_alloc();
  v14 = sub_1AB45FF84();
  v8[13] = v14;
  v8[14] = *(v14 - 8);
  v8[15] = swift_task_alloc();
  v15 = swift_task_alloc();
  v8[16] = v15;
  *v15 = v8;
  v15[1] = sub_1AB33B5B0;

  return sub_1AB32649C(a1, a2, a3, a4);
}

uint64_t sub_1AB33B5B0(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v4 = *v2;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB33B710, 0, 0);
  }
}

uint64_t sub_1AB33B710()
{
  v26 = v0;
  static MonotonicTime.now.getter(&v25);
  tv_sec = v25.tv_sec;
  tv_nsec = v25.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v3 = tv_nsec / *&qword_1ED4D1F90 + tv_sec;
  v4 = v0[6] / *&qword_1ED4D1F90 + v0[5];
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v5 = v3 - v4;
  v6 = sub_1AB45FFC4();
  __swift_project_value_buffer(v6, qword_1EB46C230);

  v7 = sub_1AB45FFA4();
  sub_1AB45FFF4();
  v8 = sub_1AB461224();

  if (sub_1AB461314())
  {
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[10];

    sub_1AB460024();

    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E69E93E8])
    {
      v12 = 0;
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[11] + 8))(v0[12], v0[10]);
      v13 = "selfTime=%f";
      v12 = 1;
    }

    v14 = v0[8];
    v15 = swift_slowAlloc();
    *v15 = 0;
    *(v15 + 1) = v12;
    *(v15 + 2) = 2048;
    os_unfair_lock_lock((v14 + 24));
    v16 = *(v14 + 16);
    os_unfair_lock_unlock((v14 + 24));
    *(v15 + 4) = v5 - v16;
    v17 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v7, v8, v17, "MakeDependency", v13, v15, 0xCu);
    MEMORY[0x1AC59F020](v15, -1, -1);
  }

  v18 = v0[3];
  v20 = v0[14];
  v19 = v0[15];
  v21 = v0[13];
  v22 = v0[9];

  (*(v20 + 8))(v19, v21);
  os_unfair_lock_lock((v22 + 24));
  *(v22 + 16) = v5 + *(v22 + 16);
  os_unfair_lock_unlock((v22 + 24));

  v23 = v0[1];

  return v23(v18);
}

uint64_t sub_1AB33B9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v8;
  v13[5] = v20;
  v13[6] = v21;
  v13[3] = a7;
  v13[4] = a8;
  v13[2] = a6;
  v15 = sub_1AB45FFD4();
  v13[7] = v15;
  v13[8] = *(v15 - 8);
  v13[9] = swift_task_alloc();
  v16 = sub_1AB45FF84();
  v13[10] = v16;
  v13[11] = *(v16 - 8);
  v13[12] = swift_task_alloc();
  v17 = swift_task_alloc();
  v13[13] = v17;
  *v17 = v13;
  v17[1] = sub_1AB33BB90;

  return sub_1AB326658(a1, a2, a3, a4, a5);
}

uint64_t sub_1AB33BB90()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB343ADC, 0, 0);
  }
}

uint64_t sub_1AB33BCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v18;
  v8[9] = v19;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a1;
  v8[5] = a6;
  v13 = sub_1AB45FFD4();
  v8[10] = v13;
  v8[11] = *(v13 - 8);
  v8[12] = swift_task_alloc();
  v14 = sub_1AB45FF84();
  v8[13] = v14;
  v8[14] = *(v14 - 8);
  v8[15] = swift_task_alloc();
  v15 = swift_task_alloc();
  v8[16] = v15;
  *v15 = v8;
  v15[1] = sub_1AB33BE88;

  return sub_1AB326828((v8 + 2), a2, a3, a4, a5);
}

uint64_t sub_1AB33BE88()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1AB33C27C;
  }

  else
  {
    v2 = sub_1AB33BF9C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB33BF9C()
{
  v27 = v0;
  static MonotonicTime.now.getter(&v26);
  tv_sec = v26.tv_sec;
  tv_nsec = v26.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v3 = tv_nsec / *&qword_1ED4D1F90 + tv_sec;
  v4 = *(v0 + 48) / *&qword_1ED4D1F90 + *(v0 + 40);
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v5 = v3 - v4;
  v6 = sub_1AB45FFC4();
  __swift_project_value_buffer(v6, qword_1EB46C230);

  v7 = sub_1AB45FFA4();
  sub_1AB45FFF4();
  v8 = sub_1AB461224();

  if (sub_1AB461314())
  {
    v10 = *(v0 + 88);
    v9 = *(v0 + 96);
    v11 = *(v0 + 80);

    sub_1AB460024();

    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E69E93E8])
    {
      v12 = 0;
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
      v13 = "selfTime=%f";
      v12 = 1;
    }

    v14 = *(v0 + 64);
    v15 = swift_slowAlloc();
    *v15 = 0;
    *(v15 + 1) = v12;
    *(v15 + 2) = 2048;
    os_unfair_lock_lock((v14 + 24));
    v16 = *(v14 + 16);
    os_unfair_lock_unlock((v14 + 24));
    *(v15 + 4) = v5 - v16;
    v17 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v7, v8, v17, "MakeDependency", v13, v15, 0xCu);
    MEMORY[0x1AC59F020](v15, -1, -1);
  }

  v19 = *(v0 + 112);
  v18 = *(v0 + 120);
  v20 = *(v0 + 104);
  v21 = *(v0 + 72);
  v22 = *(v0 + 32);

  (*(v19 + 8))(v18, v20);
  os_unfair_lock_lock((v21 + 24));
  *(v21 + 16) = v5 + *(v21 + 16);
  os_unfair_lock_unlock((v21 + 24));
  v23 = *(v0 + 24);
  *v22 = *(v0 + 16);
  *(v22 + 8) = v23;

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1AB33C27C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB33C2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v8;
  v13[5] = v20;
  v13[6] = v21;
  v13[3] = a7;
  v13[4] = a8;
  v13[2] = a6;
  v15 = sub_1AB45FFD4();
  v13[7] = v15;
  v13[8] = *(v15 - 8);
  v13[9] = swift_task_alloc();
  v16 = sub_1AB45FF84();
  v13[10] = v16;
  v13[11] = *(v16 - 8);
  v13[12] = swift_task_alloc();
  v17 = swift_task_alloc();
  v13[13] = v17;
  *v17 = v13;
  v17[1] = sub_1AB33BB90;

  return sub_1AB3269E8(a1, a2, a3, a4, a5);
}

uint64_t sub_1AB33C498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v8;
  v13[5] = v20;
  v13[6] = v21;
  v13[3] = a7;
  v13[4] = a8;
  v13[2] = a6;
  v15 = sub_1AB45FFD4();
  v13[7] = v15;
  v13[8] = *(v15 - 8);
  v13[9] = swift_task_alloc();
  v16 = sub_1AB45FF84();
  v13[10] = v16;
  v13[11] = *(v16 - 8);
  v13[12] = swift_task_alloc();
  v17 = swift_task_alloc();
  v13[13] = v17;
  *v17 = v13;
  v17[1] = sub_1AB33BB90;

  return sub_1AB326BAC(a1, a2, a3, a4, a5);
}

uint64_t sub_1AB33C644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v8;
  v13[5] = v20;
  v13[6] = v21;
  v13[3] = a7;
  v13[4] = a8;
  v13[2] = a6;
  v15 = sub_1AB45FFD4();
  v13[7] = v15;
  v13[8] = *(v15 - 8);
  v13[9] = swift_task_alloc();
  v16 = sub_1AB45FF84();
  v13[10] = v16;
  v13[11] = *(v16 - 8);
  v13[12] = swift_task_alloc();
  v17 = swift_task_alloc();
  v13[13] = v17;
  *v17 = v13;
  v17[1] = sub_1AB33BB90;

  return sub_1AB326D7C(a1, a2, a3, a4, a5);
}

uint64_t sub_1AB33C7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v8;
  v13[5] = v20;
  v13[6] = v21;
  v13[3] = a7;
  v13[4] = a8;
  v13[2] = a6;
  v15 = sub_1AB45FFD4();
  v13[7] = v15;
  v13[8] = *(v15 - 8);
  v13[9] = swift_task_alloc();
  v16 = sub_1AB45FF84();
  v13[10] = v16;
  v13[11] = *(v16 - 8);
  v13[12] = swift_task_alloc();
  v17 = swift_task_alloc();
  v13[13] = v17;
  *v17 = v13;
  v17[1] = sub_1AB33BB90;

  return sub_1AB326F3C(a1, a2, a3, a4, a5);
}

uint64_t sub_1AB33C99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v18;
  v8[6] = a6;
  v8[7] = a7;
  v8[5] = a5;
  v13 = sub_1AB45FFD4();
  v8[10] = v13;
  v8[11] = *(v13 - 8);
  v8[12] = swift_task_alloc();
  v14 = sub_1AB45FF84();
  v8[13] = v14;
  v8[14] = *(v14 - 8);
  v8[15] = swift_task_alloc();
  v15 = swift_task_alloc();
  v8[16] = v15;
  *v15 = v8;
  v15[1] = sub_1AB33B2B8;

  return sub_1AB32710C(a1, a2, a3, a4);
}

uint64_t sub_1AB33CB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v18;
  v8[6] = a6;
  v8[7] = a7;
  v8[5] = a5;
  v13 = sub_1AB45FFD4();
  v8[10] = v13;
  v8[11] = *(v13 - 8);
  v8[12] = swift_task_alloc();
  v14 = sub_1AB45FF84();
  v8[13] = v14;
  v8[14] = *(v14 - 8);
  v8[15] = swift_task_alloc();
  v15 = swift_task_alloc();
  v8[16] = v15;
  *v15 = v8;
  v15[1] = sub_1AB33B5B0;

  return sub_1AB3272D8(a1, a2, a3, a4);
}

uint64_t sub_1AB33CCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v8;
  v13[5] = v20;
  v13[6] = v21;
  v13[3] = a7;
  v13[4] = a8;
  v13[2] = a6;
  v15 = sub_1AB45FFD4();
  v13[7] = v15;
  v13[8] = *(v15 - 8);
  v13[9] = swift_task_alloc();
  v16 = sub_1AB45FF84();
  v13[10] = v16;
  v13[11] = *(v16 - 8);
  v13[12] = swift_task_alloc();
  v17 = swift_task_alloc();
  v13[13] = v17;
  *v17 = v13;
  v17[1] = sub_1AB33BB90;

  return sub_1AB3275F8(a1, a2, a3, a4, a5);
}

uint64_t sub_1AB33CE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v8;
  v13[5] = v20;
  v13[6] = v21;
  v13[3] = a7;
  v13[4] = a8;
  v13[2] = a6;
  v15 = sub_1AB45FFD4();
  v13[7] = v15;
  v13[8] = *(v15 - 8);
  v13[9] = swift_task_alloc();
  v16 = sub_1AB45FF84();
  v13[10] = v16;
  v13[11] = *(v16 - 8);
  v13[12] = swift_task_alloc();
  v17 = swift_task_alloc();
  v13[13] = v17;
  *v17 = v13;
  v17[1] = sub_1AB33D024;

  return sub_1AB3277BC(a1, a2, a3, a4, a5);
}

uint64_t sub_1AB33D024()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB33D17C, 0, 0);
  }
}

uint64_t sub_1AB33D17C()
{
  v25 = v0;
  static MonotonicTime.now.getter(&v24);
  tv_sec = v24.tv_sec;
  tv_nsec = v24.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v3 = tv_nsec / *&qword_1ED4D1F90 + tv_sec;
  v4 = v0[3] / *&qword_1ED4D1F90 + v0[2];
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v5 = v3 - v4;
  v6 = sub_1AB45FFC4();
  __swift_project_value_buffer(v6, qword_1EB46C230);

  v7 = sub_1AB45FFA4();
  sub_1AB45FFF4();
  v8 = sub_1AB461224();

  if (sub_1AB461314())
  {
    v10 = v0[8];
    v9 = v0[9];
    v11 = v0[7];

    sub_1AB460024();

    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E69E93E8])
    {
      v12 = 0;
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[8] + 8))(v0[9], v0[7]);
      v13 = "selfTime=%f";
      v12 = 1;
    }

    v14 = v0[5];
    v15 = swift_slowAlloc();
    *v15 = 0;
    *(v15 + 1) = v12;
    *(v15 + 2) = 2048;
    os_unfair_lock_lock((v14 + 24));
    v16 = *(v14 + 16);
    os_unfair_lock_unlock((v14 + 24));
    *(v15 + 4) = v5 - v16;
    v17 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v7, v8, v17, "MakeDependency", v13, v15, 0xCu);
    MEMORY[0x1AC59F020](v15, -1, -1);
  }

  v19 = v0[11];
  v18 = v0[12];
  v20 = v0[10];
  v21 = v0[6];

  (*(v19 + 8))(v18, v20);
  os_unfair_lock_lock((v21 + 24));
  *(v21 + 16) = v5 + *(v21 + 16);
  os_unfair_lock_unlock((v21 + 24));

  v22 = v0[1];

  return v22();
}

uint64_t sub_1AB33D448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v8;
  v13[5] = v20;
  v13[6] = v21;
  v13[3] = a7;
  v13[4] = a8;
  v13[2] = a6;
  v15 = sub_1AB45FFD4();
  v13[7] = v15;
  v13[8] = *(v15 - 8);
  v13[9] = swift_task_alloc();
  v16 = sub_1AB45FF84();
  v13[10] = v16;
  v13[11] = *(v16 - 8);
  v13[12] = swift_task_alloc();
  v17 = swift_task_alloc();
  v13[13] = v17;
  *v17 = v13;
  v17[1] = sub_1AB33BB90;

  return sub_1AB327ACC(a1, a2, a3, a4, a5);
}

uint64_t sub_1AB33D5F4(uint64_t a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB33D614, 0, 0);
}

uint64_t sub_1AB33D614()
{
  v3 = v0;
  v2.i64[0] = *(v0 + 200);
  v2.i64[1] = &type metadata for JetEngineBootstrap.URLProtocolHandler;
  sub_1AB030B7C(&v2);
  *(v0 + 208) = sub_1AB32E7E0();

  return MEMORY[0x1EEE6DFA0](sub_1AB33D6E0, 0, 0);
}

uint64_t sub_1AB33D6E0()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1AB33D7AC;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB193F18(v2);
  sub_1AB014AC0(v2, &unk_1EB43D290);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB33D7AC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 216) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1AB33D908, 0, 0);
  }

  else
  {
    v4 = *(v1 + 192);

    v5 = *(v1 + 176);
    *v4 = *(v1 + 160);
    v4[1] = v5;
    v6 = *(v2 + 8);

    return v6();
  }
}

uint64_t sub_1AB33D908()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB33D96C(uint64_t a1)
{
  *(v2 + 168) = a1;
  *(v2 + 176) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB33D98C, 0, 0);
}

uint64_t sub_1AB33D98C()
{
  v3 = v0;
  v2.i64[0] = *(v0 + 176);
  v2.i64[1] = &type metadata for Bag;
  sub_1AB030B7C(&v2);
  *(v0 + 184) = sub_1AB32EE34();

  return MEMORY[0x1EEE6DFA0](sub_1AB33DA58, 0, 0);
}

uint64_t sub_1AB33DA58()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1AB33DB24;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB08E9F8(v2);
  sub_1AB014AC0(v2, &unk_1EB4397E0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB33DB24()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 192) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1AB33DC80, 0, 0);
  }

  else
  {
    v4 = *(v1 + 168);

    *v4 = *(v1 + 160);
    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t sub_1AB33DC80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB33DD04()
{
  v3 = v0;
  v2.i64[0] = *(v0 + 168);
  v2.i64[1] = sub_1AB016760(0, &unk_1ED4D1398);
  sub_1AB030B7C(&v2);
  *(v0 + 176) = sub_1AB32F474();

  return MEMORY[0x1EEE6DFA0](sub_1AB33DDE0, 0, 0);
}

uint64_t sub_1AB33DDE0()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1AB33DEAC;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB194128(v2);
  sub_1AB014AC0(v2, qword_1EB437980);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB33DEAC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 184) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1AB343AC8, 0, 0);
  }

  else
  {

    v4 = *(v1 + 160);
    v5 = *(v2 + 8);

    return v5(v4);
  }
}

uint64_t sub_1AB33E020()
{
  v3 = v0;
  v2.i64[0] = *(v0 + 168);
  v2.i64[1] = type metadata accessor for StartUpPerformanceEvent();
  sub_1AB030B7C(&v2);
  *(v0 + 176) = sub_1AB32FAE4();

  return MEMORY[0x1EEE6DFA0](sub_1AB33E0EC, 0, 0);
}

uint64_t sub_1AB33E0EC()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1AB33DEAC;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB195B8C(v2);
  sub_1AB014AC0(v2, &unk_1EB437960);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB33E1B8(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB33E1D8, 0, 0);
}

uint64_t sub_1AB33E1D8()
{
  v3 = v0;
  v2.i64[0] = *(v0 + 168);
  v2.i64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436690);
  sub_1AB030B7C(&v2);
  *(v0 + 176) = sub_1AB32FFB4();

  return MEMORY[0x1EEE6DFA0](sub_1AB33E2B0, 0, 0);
}

uint64_t sub_1AB33E2B0()
{
  v1 = v0 + 2;
  v2 = v0[20];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1AB33E37C;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1AB195F44(v3);
  sub_1AB014AC0(v3, &unk_1EB437790);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB33E37C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1AB343AC8, 0, 0);
  }

  else
  {

    v3 = *(v1 + 8);

    return v3();
  }
}

uint64_t sub_1AB33E4CC(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB33E4EC, 0, 0);
}

uint64_t sub_1AB33E4EC()
{
  v3 = v0;
  v2.i64[0] = *(v0 + 184);
  v2.i64[1] = &type metadata for IntentDispatchTimeout;
  sub_1AB030B7C(&v2);
  *(v0 + 192) = sub_1AB33052C();

  return MEMORY[0x1EEE6DFA0](sub_1AB33E5B8, 0, 0);
}

uint64_t sub_1AB33E5B8()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1AB33E684;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB196110(v2);
  sub_1AB014AC0(v2, &unk_1EB439820);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB33E684()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1AB33E7E8, 0, 0);
  }

  else
  {
    v4 = *(v1 + 176);

    v5 = *(v1 + 168);
    *v4 = *(v1 + 160);
    *(v4 + 8) = v5;
    v6 = *(v2 + 8);

    return v6();
  }
}

uint64_t sub_1AB33E7E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB33E84C(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB33E86C, 0, 0);
}

uint64_t sub_1AB33E86C()
{
  v3 = v0;
  v2.i64[0] = *(v0 + 168);
  v2.i64[1] = type metadata accessor for PageIntentInstrumentation();
  sub_1AB030B7C(&v2);
  *(v0 + 176) = sub_1AB330B78();

  return MEMORY[0x1EEE6DFA0](sub_1AB33E938, 0, 0);
}

uint64_t sub_1AB33E938()
{
  v1 = v0 + 2;
  v2 = v0[20];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1AB33E37C;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1AB1962C8(v3);
  sub_1AB014AC0(v3, &unk_1EB43D240);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB33EA04(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB33EA24, 0, 0);
}

uint64_t sub_1AB33EA24()
{
  v3 = v0;
  v2.i64[0] = *(v0 + 168);
  v2.i64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436660);
  sub_1AB030B7C(&v2);
  *(v0 + 176) = sub_1AB331260();

  return MEMORY[0x1EEE6DFA0](sub_1AB33EAFC, 0, 0);
}

uint64_t sub_1AB33EAFC()
{
  v1 = v0 + 2;
  v2 = v0[20];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1AB33E37C;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1AB196FA0(v3);
  sub_1AB014AC0(v3, &qword_1EB4378C0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB33EBC8(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB33EBE8, 0, 0);
}

uint64_t sub_1AB33EBE8()
{
  v3 = v0;
  v2.i64[0] = *(v0 + 168);
  v2.i64[1] = &type metadata for JetPackAssetSession.Configuration;
  sub_1AB030B7C(&v2);
  *(v0 + 176) = sub_1AB3317D8();

  return MEMORY[0x1EEE6DFA0](sub_1AB33ECB4, 0, 0);
}

uint64_t sub_1AB33ECB4()
{
  v1 = v0 + 2;
  v2 = v0[20];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1AB33E37C;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1AB19716C(v3);
  sub_1AB014AC0(v3, &unk_1EB4378A0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB33ED80(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB33EDA0, 0, 0);
}

uint64_t sub_1AB33EDA0()
{
  v3 = v0;
  v2.i64[0] = *(v0 + 168);
  v2.i64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436730);
  sub_1AB030B7C(&v2);
  *(v0 + 176) = sub_1AB331E2C();

  return MEMORY[0x1EEE6DFA0](sub_1AB33EE78, 0, 0);
}

uint64_t sub_1AB33EE78()
{
  v1 = v0 + 2;
  v2 = v0[20];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1AB33E37C;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1AB19734C(v3);
  sub_1AB014AC0(v3, &unk_1EB4378B0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB33EF64()
{
  v3 = v0;
  v2.i64[0] = *(v0 + 168);
  v2.i64[1] = sub_1AB016760(0, &qword_1EB435620);
  sub_1AB030B7C(&v2);
  *(v0 + 176) = sub_1AB3323A4();

  return MEMORY[0x1EEE6DFA0](sub_1AB33F040, 0, 0);
}

uint64_t sub_1AB33F040()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1AB33DEAC;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB197518(v2);
  sub_1AB014AC0(v2, &qword_1EB439EA0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB33F12C()
{
  v3 = v0;
  v2.i64[0] = *(v0 + 168);
  v2.i64[1] = type metadata accessor for JetPackAssetSession();
  sub_1AB030B7C(&v2);
  *(v0 + 176) = sub_1AB332A14();

  return MEMORY[0x1EEE6DFA0](sub_1AB33F1F8, 0, 0);
}

uint64_t sub_1AB33F1F8()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1AB33F2C4;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB1976CC(v2);
  sub_1AB014AC0(v2, &unk_1EB437890);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB33F2C4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 184) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1AB33F418, 0, 0);
  }

  else
  {

    v4 = *(v1 + 160);
    v5 = *(v2 + 8);

    return v5(v4);
  }
}

uint64_t sub_1AB33F418()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB33F47C(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB33F49C, 0, 0);
}

uint64_t sub_1AB33F49C()
{
  v3 = v0;
  v2.i64[0] = *(v0 + 168);
  v2.i64[1] = type metadata accessor for JetPackAsset(0);
  sub_1AB030B7C(&v2);
  *(v0 + 176) = sub_1AB333064();

  return MEMORY[0x1EEE6DFA0](sub_1AB33F568, 0, 0);
}

uint64_t sub_1AB33F568()
{
  v1 = v0 + 2;
  v2 = v0[20];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1AB33E37C;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1AB1978D0(v3);
  sub_1AB014AC0(v3, &unk_1EB4398A0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB33F634(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB33F654, 0, 0);
}

uint64_t sub_1AB33F654()
{
  v3 = v0;
  v2.i64[0] = *(v0 + 168);
  v2.i64[1] = &type metadata for DiskJetPackLoader;
  sub_1AB030B7C(&v2);
  *(v0 + 176) = sub_1AB333750();

  return MEMORY[0x1EEE6DFA0](sub_1AB33F720, 0, 0);
}

uint64_t sub_1AB33F720()
{
  v1 = v0 + 2;
  v2 = v0[20];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1AB33F7EC;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1AB197BAC(v3);
  sub_1AB014AC0(v3, &unk_1EB437880);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB33F7EC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1AB33F418, 0, 0);
  }

  else
  {

    v3 = *(v1 + 8);

    return v3();
  }
}

uint64_t sub_1AB33F93C(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB33F95C, 0, 0);
}

uint64_t sub_1AB33F95C()
{
  v3 = v0;
  v2.i64[0] = *(v0 + 168);
  v2.i64[1] = &type metadata for InMemoryJetPackLoader;
  sub_1AB030B7C(&v2);
  *(v0 + 176) = sub_1AB333D9C();

  return MEMORY[0x1EEE6DFA0](sub_1AB33FA28, 0, 0);
}

uint64_t sub_1AB33FA28()
{
  v1 = v0 + 2;
  v2 = v0[20];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1AB33E37C;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1AB197D8C(v3);
  sub_1AB014AC0(v3, &unk_1EB4398B0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t static JSStack.makeStandardPrerequisites(using:bag:urlSession:process:accounts:)(uint64_t a1, uint64_t *a2, void *a3, void *a4, uint64_t a5)
{
  v8 = *(a1 + 1);
  v9 = *a2;
  v17[0] = *a1;
  v17[1] = v8;
  v18 = *(a1 + 8);
  v16 = v9;
  if (a5)
  {
    v10 = type metadata accessor for Unstable.Accounts();
    v11 = &protocol witness table for Unstable.Accounts;
    v12 = a5;
  }

  else
  {
    v12 = 0;
    v10 = 0;
    v11 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  v15[0] = v12;
  v15[3] = v10;
  v15[4] = v11;

  v13 = _s9JetEngine7JSStackC25makeStandardPrerequisites5using3bag10urlSession7process15accountProviderSayAC12PrerequisiteOGAC0E19GlobalConfigurationV_AA3BagVSgSo13AMSURLSessionCSgSo14AMSProcessInfoCSgAA07AccountM0_pSgtFZ_0(v17, &v16, a3, a4, v15);
  sub_1AB014AC0(v15, &qword_1EB438A70);
  return v13;
}

uint64_t static JSStack.makeStandardPrerequisites(using:bag:urlSession:process:accountStore:)(uint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5)
{
  v8 = *(a1 + 1);
  v9 = *a2;
  v18[0] = *a1;
  v18[1] = v8;
  v19 = *(a1 + 8);
  v17 = v9;
  if (a5)
  {
    v10 = sub_1AB016760(0, &qword_1ED4D1F60);
    v11 = &protocol witness table for ACAccountStore;
    v12 = a5;
  }

  else
  {
    v12 = 0;
    v10 = 0;
    v11 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  v16[0] = v12;
  v16[3] = v10;
  v16[4] = v11;
  v13 = a5;
  v14 = _s9JetEngine7JSStackC25makeStandardPrerequisites5using3bag10urlSession7process15accountProviderSayAC12PrerequisiteOGAC0E19GlobalConfigurationV_AA3BagVSgSo13AMSURLSessionCSgSo14AMSProcessInfoCSgAA07AccountM0_pSgtFZ_0(v18, &v17, a3, a4, v16);
  sub_1AB014AC0(v16, &qword_1EB438A70);
  return v14;
}

id static JSStack.makeNetObject(configuration:urlSession:bag:accounts:process:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v8 = *a1;
  v9 = *(a1 + 1);
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *a3;
  v25[3] = type metadata accessor for Unstable.Accounts();
  v25[4] = &protocol witness table for Unstable.Accounts;
  v25[0] = a4;
  v21[0] = v8;
  v21[1] = v9;
  v22 = v10;
  v23 = v11;
  v20 = v12;
  sub_1AB01494C(v25, v19);

  sub_1AB2241F4(v10);
  v13 = a2;
  swift_unknownObjectRetain();
  sub_1AB095C08(v13, v21, &v20, v19, a5, v24);
  sub_1AB01494C(v24, v19);
  v14 = type metadata accessor for JSNetObject();
  v15 = objc_allocWithZone(v14);
  sub_1AB01494C(v19, v15 + OBJC_IVAR____TtC9JetEngine11JSNetObject_guts);
  v18.receiver = v15;
  v18.super_class = v14;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  sub_1AB096838(v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return v16;
}

id static JSStack.makeNetObject(configuration:urlSession:bag:accounts:process:)(uint64_t a1, void *a2, uint64_t *a3, void *a4, void *a5)
{
  v10 = a4[3];
  v11 = a4[4];
  v12 = __swift_project_boxed_opaque_existential_1Tm(a4, v10);

  return sub_1AB3415E4(a1, a2, a3, v12, a5, v5, v10, v11);
}

char *JSStack.dispatch<A>(intentRequest:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for JSIntentRequest();
  v38 = v8;
  v9 = *(v8 - 8);
  v40 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v36 = &v36 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D220);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v36 - v14);
  v44[3] = type metadata accessor for _IntentAsJSIntentModel();
  v44[4] = &off_1F1FF71A0;
  v44[5] = swift_getWitnessTable();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v44);
  v37 = a1;
  sub_1AB17E8D8(a2, boxed_opaque_existential_0);
  v17 = a1 + *(v8 + 36);
  v18 = *v17;
  LOBYTE(v17) = *(v17 + 8);
  v44[6] = v18;
  v45 = v17;
  v19 = sub_1AB014B20();
  *&v41 = MEMORY[0x1AC59B670](0, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v19);
  v20 = MEMORY[0x1E69E7CC0];
  sub_1AB014B88(MEMORY[0x1E69E7CC0]);
  v21 = v41;
  type metadata accessor for BaseObjectGraph();
  v22 = swift_allocObject();
  v22[3] = 0xD000000000000018;
  v22[4] = 0x80000001AB50A1E0;
  v22[2] = v21;
  sub_1AB34173C(v44, &v41);
  v23 = swift_allocObject();
  *(v23 + 16) = v4;
  v24 = v42;
  *(v23 + 24) = v41;
  *(v23 + 40) = v24;
  *(v23 + 56) = v43[0];
  *(v23 + 65) = *(v43 + 9);
  *(v23 + 88) = v22;
  *v15 = v20;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AF90);
  v25 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v25[2] = v26;
  sub_1AB017FB8(v15, v25 + *(*v25 + 96), &unk_1EB43D220);
  v27 = sub_1AB460BE4();
  v28 = v36;
  (*(*(v27 - 8) + 56))(v36, 1, 1, v27);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = &unk_1AB4EB378;
  v29[5] = v23;
  v29[6] = v25;

  sub_1AB39BBA8(0, 0, v28, &unk_1AB4EB388, v29);

  v30 = v38;
  v31 = v39;
  (*(v9 + 16))(v39, v37, v38);
  v32 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = a2;
  *(v33 + 24) = a3;
  (*(v9 + 32))(v33 + v32, v31, v30);
  type metadata accessor for JSIntentResult();
  type metadata accessor for JSIntentResponse();
  *(&v42 + 1) = &type metadata for SyncTaskScheduler;
  *&v43[0] = &protocol witness table for SyncTaskScheduler;
  v34 = Promise.map<A>(on:_:)(&v41, sub_1AB341928, v33);

  __swift_destroy_boxed_opaque_existential_1Tm(&v41);
  sub_1AB0C6B34(v44);
  return v34;
}

uint64_t sub_1AB34038C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1AB027460;

  return sub_1AB327C8C(a1, a3, a4);
}

uint64_t sub_1AB340444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437770);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_1AB45F244();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for JSIntentRequest();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  (*(v16 + 16))(&v19 - v14, a2, v13);
  (*(v9 + 16))(v11, a1, v8);
  v17 = type metadata accessor for JSIntentResult();
  sub_1AB08C08C(a1 + *(v17 + 20), v7);
  return sub_1AB3E0AA4(v15, v11, v7, v20);
}

uint64_t sub_1AB34064C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a1;
  type metadata accessor for _UncheckedSendableIntentReturnType();
  v9 = swift_task_alloc();
  v6[5] = v9;
  v10 = swift_task_alloc();
  v6[6] = v10;
  v11 = type metadata accessor for _IntentAsJSIntentModel();
  WitnessTable = swift_getWitnessTable();
  *v10 = v6;
  v10[1] = sub_1AB325114;

  return JSStack.dispatch<A>(_:objectGraph:)(v9, a3, a4, v11, WitnessTable);
}

uint64_t JSStack.dispatch<A>(intentRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB3407B8, 0, 0);
}

uint64_t sub_1AB3407B8()
{
  v0[7] = JSStack.dispatch<A>(intentRequest:)(v0[3], v0[4], v0[5]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  type metadata accessor for JSIntentResponse();
  v2 = type metadata accessor for Promise();
  WitnessTable = swift_getWitnessTable();
  *v1 = v0;
  v1[1] = sub_1AB21CD14;
  v4 = v0[2];

  return Future.result.getter(v4, v2, WitnessTable);
}

uint64_t JSStack.dispatch<A>(intent:jsonContext:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a4;
  v6[5] = a5;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *a3;
  v6[6] = v5;
  v6[7] = v7;
  return MEMORY[0x1EEE6DFA0](sub_1AB3408E4, 0, 0);
}

uint64_t sub_1AB3408E4()
{
  v10 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v9 = v0[7];
  v0[8] = JSStack.dispatch<A>(intent:jsonContext:)(v3, &v9, v2, v1);
  v4 = swift_task_alloc();
  v0[9] = v4;
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Promise();
  WitnessTable = swift_getWitnessTable();
  *v4 = v0;
  v4[1] = sub_1AB340A08;
  v7 = v0[2];

  return Future.result.getter(v7, v5, WitnessTable);
}

uint64_t sub_1AB340A08()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1AB340B80;
  }

  else
  {
    v2 = sub_1AB340B1C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB340B1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB340B80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB340BE4(uint64_t a1)
{
  v5 = v1[2];
  v4 = v1[3];
  v6 = *(type metadata accessor for _IntentAsJSIntentModel() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = v1[4];
  v9 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1AB027554;

  return sub_1AB34064C(a1, v8, v1 + v7, v9, v5, v4);
}

uint64_t sub_1AB340D1C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB340D3C, 0, 0);
}

uint64_t sub_1AB340D3C()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1AB091FE0;
  v3 = v0[2];

  return sub_1AB32A720(v3, v1);
}

uint64_t sub_1AB340DF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB340E10, 0, 0);
}

uint64_t sub_1AB340E10()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1AB091FE0;
  v3 = v0[2];

  return sub_1AB32AD18(v3, v1);
}

uint64_t sub_1AB340EC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB340EE4, 0, 0);
}

uint64_t sub_1AB340EE4()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1AB091FE0;
  v3 = v0[2];

  return sub_1AB32B5D0(v3, v1);
}

uint64_t sub_1AB340F98(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB340FB8, 0, 0);
}

uint64_t sub_1AB340FB8()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1AB091FE0;
  v3 = v0[2];

  return sub_1AB32CE08(v3, v1);
}

uint64_t sub_1AB34106C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB34108C, 0, 0);
}

uint64_t sub_1AB34108C()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1AB091FE4;
  v3 = v0[2];

  return sub_1AB32D854(v3, v1);
}

uint64_t sub_1AB341140(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB341160, 0, 0);
}

uint64_t sub_1AB341160()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1AB091FE0;
  v3 = v0[2];

  return sub_1AB32E108(v3, v1);
}

uint64_t sub_1AB341214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_1AB343AB8;

  return sub_1AB33B120(a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1AB341308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_1AB343AB8;

  return sub_1AB33B418(a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1AB3413FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_1AB343AB8;

  return sub_1AB33C99C(a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1AB3414F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_1AB0B20F4;

  return sub_1AB33CB34(a2, a3, a4, a5, a6, a7, a8, a9);
}

id sub_1AB3415E4(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31[3] = a7;
  v31[4] = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_0, a4, a7);
  v15 = *(a1 + 1);
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  v18 = *a3;
  v27[0] = *a1;
  v27[1] = v15;
  v28 = v16;
  v29 = v17;
  v26 = v18;
  sub_1AB01494C(v31, v25);
  sub_1AB2241F4(v16);
  v19 = a2;
  swift_unknownObjectRetain();
  sub_1AB095C08(v19, v27, &v26, v25, a5, v30);
  sub_1AB01494C(v30, v25);
  v20 = type metadata accessor for JSNetObject();
  v21 = objc_allocWithZone(v20);
  sub_1AB01494C(v25, v21 + OBJC_IVAR____TtC9JetEngine11JSNetObject_guts);
  v24.receiver = v21;
  v24.super_class = v20;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  sub_1AB096838(v30);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  return v22;
}

uint64_t sub_1AB341798(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 88);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1AB027554;

  return sub_1AB34038C(a1, v4, v1 + 24, v5);
}

uint64_t sub_1AB34184C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AB027554;

  return sub_1AB39A0D8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1AB3419C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1AB027554;

  return sub_1AB335DDC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AB341ADC(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1AB027554;

  return sub_1AB33B9E4(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AB341C18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1AB027554;

  return sub_1AB336458(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AB341D34(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1AB027554;

  return sub_1AB33BCE8(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AB341E28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1AB027554;

  return sub_1AB336AC4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AB341F44(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1AB027554;

  return sub_1AB33C2EC(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AB342038(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AB3420A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1AB027554;

  return sub_1AB3391F8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AB3421BC(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1AB027554;

  return sub_1AB33CCCC(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AB3422B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AB342310(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1AB027554;

  return sub_1AB339F28(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AB34242C(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1AB027554;

  return sub_1AB33D448(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AB342520(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1AB027460;

  return sub_1AB3398B8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AB34263C(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1AB027554;

  return sub_1AB33CE78(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AB342730(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1AB027554;

  return sub_1AB3384EC(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1AB34284C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AB027554;

  JUMPOUT(0x1AB3413FCLL);
}

uint64_t sub_1AB342948(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1AB027554;

  return sub_1AB334A60(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AB342A64(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1AB027554;

  return sub_1AB33AB94(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AB342B58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1AB027554;

  return sub_1AB338B6C(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1AB342C74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AB027554;

  JUMPOUT(0x1AB3414F0);
}

uint64_t sub_1AB342D70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1AB027554;

  return sub_1AB337800(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AB342E8C(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1AB027554;

  return sub_1AB33C644(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AB342F80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1AB027554;

  return sub_1AB337E70(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AB34309C(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1AB027554;

  return sub_1AB33C7F0(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AB343190(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1AB027554;

  return sub_1AB337184(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AB3432AC(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1AB027554;

  return sub_1AB33C498(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AB3433A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1AB027554;

  return sub_1AB335750(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1AB3434BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AB027554;

  JUMPOUT(0x1AB341308);
}

uint64_t sub_1AB3435B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1AB027554;

  return sub_1AB3343E8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AB3436D4(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1AB027554;

  return sub_1AB33A598(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_36Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1AB343838(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1AB027554;

  return sub_1AB3350D0(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1AB343954()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AB027554;

  JUMPOUT(0x1AB341214);
}

uint64_t sub_1AB343A50(void (*a1)(uint64_t, uint64_t, uint64_t))
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  *(v3 + 24) = v4;
  *(v3 + 32) = v5;
  *(v3 + 40) = 0;
  a1(v6, v7, v8);
}

uint64_t sub_1AB343B04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1120) = v15;
  *(v8 + 1112) = v14;
  *(v8 + 1104) = a8;
  *(v8 + 1096) = a7;
  *(v8 + 1088) = a6;
  *(v8 + 217) = a5;
  *(v8 + 1080) = a3;
  *(v8 + 1072) = a2;
  *(v8 + 1064) = a1;
  v10 = type metadata accessor for MTMetricsIdentifier();
  *(v8 + 1128) = v10;
  *(v8 + 1136) = *(v10 - 8);
  *(v8 + 1144) = swift_task_alloc();
  *(v8 + 1152) = swift_task_alloc();
  *(v8 + 1160) = swift_task_alloc();
  *(v8 + 1168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  *(v8 + 1176) = swift_task_alloc();
  *(v8 + 1184) = swift_task_alloc();
  v11 = sub_1AB45F9B4();
  *(v8 + 1192) = v11;
  *(v8 + 1200) = *(v11 - 8);
  *(v8 + 1208) = swift_task_alloc();
  *(v8 + 1216) = swift_task_alloc();
  *(v8 + 1224) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1AB343CC8, 0, 0);
}

uint64_t sub_1AB343CC8()
{
  v22 = v0;
  v1 = v0[138];
  if (v1)
  {
    v2 = v0[150];
    v3 = v0[149];
    v4 = v0[148];
    v5 = v0[136];
    v0[132] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43B110);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1AB4D47F0;
    *(v6 + 32) = 5;
    *(v6 + 64) = MEMORY[0x1E69E6530];
    *(v6 + 40) = 0;
    *(v6 + 72) = 6;
    v7 = sub_1AB460AD4();
    *(v6 + 104) = sub_1AB016760(0, &qword_1ED4D1940);
    *(v6 + 80) = v7;
    v8 = sub_1AB1DAAF0(v6);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438068);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v0[131] = v8;
    sub_1AB014A58(v5, v4, &qword_1EB4395E0);
    v9 = *(v2 + 48);
    v0[154] = v9;
    v0[155] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v9(v4, 1, v3) == 1)
    {
      sub_1AB014AC0(v0[148], &qword_1EB4395E0);
    }

    else
    {
      v15 = v0[152];
      v16 = v0[150];
      v17 = v0[149];
      (*(v16 + 32))(v15, v0[148], v17);
      v0[112] = v17;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 109);
      (*(v16 + 16))(boxed_opaque_existential_0, v15, v17);
      sub_1AB1CE520((v0 + 109), 0);
      (*(v16 + 8))(v15, v17);
      v8 = v0[131];
    }

    v0[156] = v8;
    v19 = v0[137];
    v20 = sub_1AB345670(v0 + 132, v0[153], v0[139]);
    v0[157] = (*(*v20 + 144))(v19, v1, v8);

    return MEMORY[0x1EEE6DFA0](sub_1AB344138, 0, 0);
  }

  else
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AB4D4720;
    v0[88] = MEMORY[0x1E69E6158];
    v0[85] = 0xD000000000000038;
    v0[86] = 0x80000001AB50A2C0;
    *(v11 + 48) = 0u;
    *(v11 + 32) = 0u;
    sub_1AB0169C4((v0 + 85), v11 + 32);
    *(v11 + 64) = 0;
    *(v10 + 32) = v11;
    v21 = 0;
    OSLogger.log(contentsOf:withLevel:)(v10, &v21);

    v12 = sub_1AB0BA124(MEMORY[0x1E69E7CC0]);

    v13 = v0[1];

    return v13(v12);
  }
}

uint64_t sub_1AB344138()
{
  v1 = v0 + 10;
  v0[10] = v0;
  v0[15] = v0 + 129;
  v0[11] = sub_1AB344204;
  v0[28] = swift_continuation_init();
  v2 = (v0 + 28);
  *(v2 + 72) = 1;
  sub_1AB1942DC(v2);
  sub_1AB014AC0(v2, &unk_1EB4377E0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB344204()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1264) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1AB344E70;
  }

  else
  {

    *(v1 + 1272) = *(v1 + 1032);
    v3 = sub_1AB344330;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB344330()
{
  v93 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1064);
  LOBYTE(v88[0]) = 1;
  sub_1AB3ACFF8(v2, v1, v88, v3, v0 + 376);
  v4 = *(v0 + 392);
  *(v0 + 304) = *(v0 + 376);
  *(v0 + 320) = v4;
  v5 = *(v0 + 424);
  *(v0 + 336) = *(v0 + 408);
  *(v0 + 352) = v5;
  *(v0 + 368) = *(v0 + 440);
  v6 = *(v0 + 312);
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = *(v0 + 1064);
  v88[0] = *(v0 + 304);
  v88[1] = v6;
  v8 = *(v0 + 408);
  v89 = *(v0 + 392);
  v90 = v8;
  v91 = *(v0 + 424);
  v92 = *(v0 + 440);
  sub_1AB3AD338(v88, v7, v86);
  sub_1AB014AC0(v0 + 304, &qword_1EB439238);
  *(v0 + 512) = v87;
  v9 = v86[3];
  *(v0 + 480) = v86[2];
  *(v0 + 496) = v9;
  v10 = v86[1];
  *(v0 + 448) = v86[0];
  *(v0 + 464) = v10;
  if (!*(v0 + 456))
  {
    goto LABEL_11;
  }

  v11 = *(v0 + 480);
  v12 = *(v0 + 488);
  v14 = *(v0 + 504);
  v13 = *(v0 + 512);
  v15 = *(v0 + 1072);
  v16 = v15[3];
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_1Tm(v15, v16);
  (*(v17 + 8))(v88, v16, v17);
  v18 = v88[0];
  *(v0 + 1280) = v88[0];
  if (!v18)
  {
    sub_1AB014AC0(v0 + 448, &qword_1EB439238);
LABEL_11:

LABEL_12:

    v24 = *(v0 + 1272);

    v25 = *(v0 + 8);

    return v25(v24);
  }

  v84 = v14;
  v19 = *(v0 + 217);
  v20 = *(v0 + 1080);
  v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + 1288) = v21;
  v22 = v21;
  [v22 setAccount_];
  [v22 setClientInfo_];
  v23 = sub_1AB460514();
  [v22 setDomain_];

  [v22 setIsActiveITunesAccountRequired_];
  if ((v12 & 1) == 0)
  {
LABEL_9:
    sub_1AB014AC0(v0 + 448, &qword_1EB439238);
LABEL_10:
    [v22 setResetInterval_];
    goto LABEL_19;
  }

  if (v13)
  {
    if (v84 == 0x796C696164 && v13 == 0xE500000000000000)
    {
      v11 = 86400.0;
      goto LABEL_9;
    }

    v27 = sub_1AB461DA4();
    sub_1AB014AC0(v0 + 448, &qword_1EB439238);
    if (v27)
    {
      v11 = 86400.0;
      goto LABEL_10;
    }
  }

  else
  {
    sub_1AB014AC0(v0 + 448, &qword_1EB439238);
  }

LABEL_19:
  v85 = v22;
  v28 = sub_1AB460514();
  v29 = objc_opt_self();
  v30 = [v29 keyWithName:v28 crossDeviceSync:0];
  *(v0 + 1296) = v30;

  v31 = sub_1AB460514();
  v32 = [v29 keyWithName:v31 crossDeviceSync:1];
  *(v0 + 1304) = v32;

  v33 = [objc_opt_self() standardUserDefaults];
  v34 = sub_1AB460514();
  v35 = [v33 BOOLForKey_];

  if (v35)
  {

    [v22 reset];

    goto LABEL_12;
  }

  v83 = v18;
  v36 = *(v0 + 1232);
  v37 = *(v0 + 1192);
  v38 = *(v0 + 1176);
  v39 = *(v0 + 1088);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437548);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1AB4D7EA0;
  *(v40 + 32) = v30;
  *(v40 + 40) = v32;
  sub_1AB016760(0, &qword_1EB433470);
  v81 = v30;
  v82 = v32;
  v41 = sub_1AB460934();

  sub_1AB014A58(v39, v38, &qword_1EB4395E0);
  v42 = v36(v38, 1, v37);
  v43 = *(v0 + 1192);
  v44 = *(v0 + 1176);
  if (v42 == 1)
  {
    v45 = *(v0 + 1232);
    sub_1AB45F994();
    if (v45(v44, 1, v43) != 1)
    {
      sub_1AB014AC0(*(v0 + 1176), &qword_1EB4395E0);
    }
  }

  else
  {
    (*(*(v0 + 1200) + 32))(*(v0 + 1208), *(v0 + 1176), *(v0 + 1192));
  }

  v46 = *(v0 + 1208);
  v47 = *(v0 + 1200);
  v48 = *(v0 + 1192);
  v49 = sub_1AB45F914();
  (*(v47 + 8))(v46, v48);
  v50 = [v85 generateEventFieldsForKeys:v41 date:v49];

  v51 = sub_1AB4602F4();
  *(v0 + 904) = 0x644972657375;
  *(v0 + 912) = 0xE600000000000000;
  sub_1AB461564();
  if (*(v51 + 16) && (v52 = sub_1AB02B1D8(v0 + 640), (v53 & 1) != 0))
  {
    sub_1AB0165C4(*(v51 + 56) + 32 * v52, v0 + 776);
    sub_1AB02B2E4(v0 + 640);
    v54 = swift_dynamicCast();
    if (v54)
    {
      v55 = *(v0 + 1016);
    }

    else
    {
      v55 = 0;
    }

    if (v54)
    {
      v56 = *(v0 + 1024);
    }

    else
    {
      v56 = 0;
    }
  }

  else
  {
    sub_1AB02B2E4(v0 + 640);
    v55 = 0;
    v56 = 0;
  }

  v57 = *(v0 + 1272);
  *(v0 + 920) = 0x644972657375;
  *(v0 + 928) = 0xE600000000000000;
  sub_1AB461564();
  if (*(v57 + 16) && (v58 = sub_1AB02B1D8(v0 + 520), (v59 & 1) != 0))
  {
    sub_1AB0165C4(*(*(v0 + 1272) + 56) + 32 * v58, v0 + 712);
    sub_1AB02B2E4(v0 + 520);
    v60 = swift_dynamicCast();
    if (v60)
    {
      v61 = *(v0 + 1000);
    }

    else
    {
      v61 = 0;
    }

    if (v60)
    {
      v62 = *(v0 + 1008);
    }

    else
    {
      v62 = 0;
    }

    if (!v56)
    {
      if (!v62)
      {
        v63 = 1;
        goto LABEL_51;
      }

      v63 = 0;
      goto LABEL_49;
    }

    if (v62)
    {
      if (v55 == v61 && v56 == v62)
      {

        v63 = 1;
      }

      else
      {
        v63 = sub_1AB461DA4();
      }

      goto LABEL_49;
    }
  }

  else
  {
    sub_1AB02B2E4(v0 + 520);
    if (!v56)
    {
      v63 = 1;
      goto LABEL_51;
    }
  }

  v63 = 0;
LABEL_49:

LABEL_51:
  *(v0 + 218) = v63 & 1;
  *(v0 + 936) = 0x6449746E65696C63;
  *(v0 + 944) = 0xE800000000000000;
  sub_1AB461564();
  if (*(v51 + 16) && (v64 = sub_1AB02B1D8(v0 + 600), (v65 & 1) != 0))
  {
    sub_1AB0165C4(*(v51 + 56) + 32 * v64, v0 + 744);
    sub_1AB02B2E4(v0 + 600);

    v66 = swift_dynamicCast();
    if (v66)
    {
      v67 = *(v0 + 984);
    }

    else
    {
      v67 = 0;
    }

    if (v66)
    {
      v68 = *(v0 + 992);
    }

    else
    {
      v68 = 0;
    }
  }

  else
  {

    sub_1AB02B2E4(v0 + 600);
    v67 = 0;
    v68 = 0;
  }

  *(v0 + 952) = 0x6449746E65696C63;
  *(v0 + 960) = 0xE800000000000000;
  sub_1AB461564();
  if (!*(v57 + 16) || (v69 = sub_1AB02B1D8(v0 + 560), (v70 & 1) == 0))
  {
    sub_1AB02B2E4(v0 + 560);
    if (v68)
    {
      goto LABEL_75;
    }

LABEL_79:
    if ((v63 & 1) == 0)
    {
LABEL_81:
      v74 = 1;
      goto LABEL_82;
    }

LABEL_80:

    goto LABEL_12;
  }

  sub_1AB0165C4(*(*(v0 + 1272) + 56) + 32 * v69, v0 + 808);
  sub_1AB02B2E4(v0 + 560);
  v71 = swift_dynamicCast();
  if (v71)
  {
    v72 = *(v0 + 968);
  }

  else
  {
    v72 = 0;
  }

  if (v71)
  {
    v73 = *(v0 + 976);
  }

  else
  {
    v73 = 0;
  }

  if (!v68)
  {
    if (v73)
    {
      goto LABEL_75;
    }

    goto LABEL_79;
  }

  if (v73)
  {
    if (v67 == v72 && v68 == v73)
    {

      if ((v63 & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    else
    {
      v80 = sub_1AB461DA4();

      if ((v63 & v80 & 1) == 0)
      {
        v74 = (v63 ^ 1) & v80;
        goto LABEL_82;
      }
    }

    goto LABEL_80;
  }

LABEL_75:

  v74 = 0;
LABEL_82:
  *(v0 + 219) = v74 & 1;
  v75 = *(v0 + 1248);
  v76 = *(v0 + 1104);
  v77 = *(v0 + 1096);
  v78 = *(v0 + 1056);
  *(v0 + 1312) = v78;
  v79 = *(*v78 + 128);

  *(v0 + 1320) = v79(v77, v76, v75);

  return MEMORY[0x1EEE6DFA0](sub_1AB344F68, 0, 0);
}

uint64_t sub_1AB344E70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB344F68()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 130;
  v0[3] = sub_1AB345034;
  v0[18] = swift_continuation_init();
  v2 = (v0 + 18);
  *(v2 + 72) = 1;
  sub_1AB0BFCD0(v2);
  sub_1AB014AC0(v2, &unk_1EB4376B0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB345034()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  if (v2)
  {

    swift_willThrow();
    v3 = sub_1AB345458;
  }

  else
  {

    *(v1 + 1328) = *(v1 + 1040);
    v3 = sub_1AB345178;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB345178()
{
  if ((*(v0 + 218) & 1) == 0)
  {
    if (*(*(v0 + 1328) + 16))
    {
      v1 = sub_1AB0AE60C(0);
      if (v2)
      {
        v3 = *(v0 + 1168);
        v4 = *(v0 + 1160);
        v5 = *(v0 + 1128);
        sub_1AB0AD08C(*(*(v0 + 1328) + 56) + *(*(v0 + 1136) + 72) * v1, v4);
        sub_1AB0AD118(v4, v3);
        v6 = *(v3 + *(v5 + 32));
        if (v6 != 2 && (v6 & 1) != 0)
        {
          v7 = *(v0 + 1304);
          v8 = *(v0 + 1288);
          v9 = sub_1AB460514();
          v10 = sub_1AB45F914();
          [v8 _setIdentifier_withStartedDate_forKey_];
        }

        sub_1AB0AECAC(*(v0 + 1168));
      }
    }
  }

  if (*(v0 + 219))
  {
    v11 = *(v0 + 1304);
    v12 = *(v0 + 1296);
    v13 = *(v0 + 1288);
    v14 = *(v0 + 1280);
  }

  else
  {
    if (*(*(v0 + 1328) + 16))
    {
      v15 = sub_1AB0AE60C(1);
      if (v16)
      {
        v17 = *(v0 + 1304);
        v18 = *(v0 + 1296);
        v19 = *(v0 + 1288);
        v20 = *(v0 + 1280);
        v21 = *(v0 + 1152);
        v22 = *(v0 + 1144);
        sub_1AB0AD08C(*(*(v0 + 1328) + 56) + *(*(v0 + 1136) + 72) * v15, v22);

        sub_1AB0AD118(v22, v21);
        v23 = sub_1AB460514();
        v24 = sub_1AB45F914();
        [v19 _setIdentifier_withStartedDate_forKey_];

        sub_1AB0AECAC(v21);

        goto LABEL_15;
      }
    }

    v25 = *(v0 + 1304);
    v26 = *(v0 + 1288);
    v14 = *(v0 + 1280);
  }

LABEL_15:
  v27 = *(v0 + 1272);

  v28 = *(v0 + 8);

  return v28(v27);
}

uint64_t sub_1AB345458()
{
  v11 = v0;

  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v1 = v0[163];
  v2 = v0[162];
  v3 = v0[161];
  v4 = v0[160];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AB4D4720;
  v0[108] = MEMORY[0x1E69E6158];
  v0[105] = 0xD000000000000022;
  v0[106] = 0x80000001AB50A320;
  *(v6 + 48) = 0u;
  *(v6 + 32) = 0u;
  sub_1AB0169C4((v0 + 105), v6 + 32);
  *(v6 + 64) = 0;
  *(v5 + 32) = v6;
  v10 = 0;
  OSLogger.log(contentsOf:withLevel:)(v5, &v10);

  v7 = v0[159];

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_1AB345670(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v8[0] = a2;
    v6 = *(a3 + 104);
    swift_unknownObjectRetain();
    v5 = v6(v8);
    swift_beginAccess();
    *a1 = v5;
  }

  return v5;
}

void *sub_1AB345714(void *a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    type metadata accessor for MTStandardIDServiceWrapper();
    v4 = swift_allocObject();
    v6 = objc_allocWithZone(JESoftLinkedMTStandardIDService);
    v7 = sub_1AB4602D4();
    v8 = [v6 initWithConfigDictionary_];

    v4[2] = v8;
    v4[3] = 0;
    v4[4] = a2;
    swift_beginAccess();
    *a1 = v4;
  }

  return v4;
}

void sub_1AB345810(uint64_t a1, void *a2, void *a3, void *a4, NSObject *a5)
{
  v9 = sub_1AB45F9B4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB016760(0, &qword_1ED4D1040);
  v13 = sub_1AB4612E4();
  v14 = sub_1AB4612C4();

  if (v14)
  {
    v57 = v10;
    v58 = a5;
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v15 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v16 = swift_allocObject();
    v56 = xmmword_1AB4D4720;
    *(v16 + 16) = xmmword_1AB4D4720;
    v66 = sub_1AB0168A8(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v17._countAndFlagsBits = 0x20676E69766F4DLL;
    v17._object = 0xE700000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    v18 = [a2 name];
    v19 = sub_1AB460544();
    v21 = v20;

    v65 = MEMORY[0x1E69E6158];
    v63 = v19;
    v64 = v21;
    sub_1AB014A58(&v63, v59, &unk_1EB437E60);
    v60 = 0u;
    v61 = 0u;
    sub_1AB0169C4(v59, &v60);
    v62 = 0;
    v22 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1AB0168A8(0, *(v22 + 2) + 1, 1, v22);
      v66 = v22;
    }

    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_1AB0168A8((v23 > 1), v24 + 1, 1, v22);
    }

    *(v22 + 2) = v24 + 1;
    v25 = &v22[40 * v24];
    v26 = v60;
    v27 = v61;
    v25[64] = v62;
    *(v25 + 2) = v26;
    *(v25 + 3) = v27;
    v66 = v22;
    sub_1AB014AC0(&v63, &unk_1EB437E60);
    v28._countAndFlagsBits = 0xD000000000000018;
    v28._object = 0x80000001AB50A350;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    *(v16 + 32) = v66;
    v29 = sub_1AB461094();
    if (os_log_type_enabled(v15, v29))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v55 = a3;
      v30 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v30[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v30 + 5);
      v32 = a4;
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v33 = swift_allocObject();
      *(v33 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v60 = v16;
      *(&v60 + 1) = sub_1AB0223E4;
      *&v61 = v33;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v34 = sub_1AB460484();
      v36 = v35;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v37 = swift_allocObject();
      *(v37 + 16) = v56;
      *(v37 + 56) = MEMORY[0x1E69E6158];
      *(v37 + 64) = sub_1AB016854();
      *(v37 + 32) = v34;
      *(v37 + 40) = v36;
      sub_1AB45FF14();

      a4 = v32;
      a3 = v55;
    }

    else
    {
    }

    v52 = [a3 identifierForKey_];
    a5 = v58;
    if (!v52)
    {
      sub_1AB460544();
      v52 = sub_1AB460514();
    }

    sub_1AB45F994();
    v53 = sub_1AB45F914();
    (*(v57 + 8))(v12, v9);
    [a4 _setIdentifier_withStartedDate_forKey_];
  }

  else
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v38 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1AB4D4720;
    v66 = sub_1AB0168A8(0, 59, 0, MEMORY[0x1E69E7CC0]);
    v40._object = 0x80000001AB50A3E0;
    v40._countAndFlagsBits = 0xD000000000000013;
    LogMessage.StringInterpolation.appendLiteral(_:)(v40);
    v41 = [a2 name];
    v42 = sub_1AB460544();
    v44 = v43;

    v65 = MEMORY[0x1E69E6158];
    v63 = v42;
    v64 = v44;
    sub_1AB014A58(&v63, v59, &unk_1EB437E60);
    v60 = 0u;
    v61 = 0u;
    sub_1AB0169C4(v59, &v60);
    v62 = 0;
    v45 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_1AB0168A8(0, *(v45 + 2) + 1, 1, v45);
      v66 = v45;
    }

    v47 = *(v45 + 2);
    v46 = *(v45 + 3);
    if (v47 >= v46 >> 1)
    {
      v45 = sub_1AB0168A8((v46 > 1), v47 + 1, 1, v45);
    }

    *(v45 + 2) = v47 + 1;
    v48 = &v45[40 * v47];
    v49 = v60;
    v50 = v61;
    v48[64] = v62;
    *(v48 + 2) = v49;
    *(v48 + 3) = v50;
    v66 = v45;
    sub_1AB014AC0(&v63, &unk_1EB437E60);
    v51._countAndFlagsBits = 0xD000000000000027;
    v51._object = 0x80000001AB50A400;
    LogMessage.StringInterpolation.appendLiteral(_:)(v51);
    *(v39 + 32) = v66;
    *&v60 = v38;
    LOBYTE(v63) = 3;
    OSLogger.log(contentsOf:withLevel:)(v39, &v63);
  }

  dispatch_group_leave(a5);
}

void sub_1AB345F4C(uint64_t a1, void *a2, void *a3, void *a4, NSObject *a5)
{
  v46 = a4;
  v47 = a5;
  v44 = a3;
  v45 = sub_1AB45F9B4();
  v6 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED4D1FC8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v10 = swift_allocObject();
  v43 = xmmword_1AB4D4720;
  *(v10 + 16) = xmmword_1AB4D4720;
  v56 = sub_1AB0168A8(0, 75, 0, MEMORY[0x1E69E7CC0]);
  v11._countAndFlagsBits = 0xD000000000000028;
  v11._object = 0x80000001AB50A3B0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  swift_getErrorValue();
  v12 = v52;
  v13 = v53;
  v55 = v53;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v54);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, v12, v13);
  sub_1AB014A58(v54, v48, &unk_1EB437E60);
  v49 = 0u;
  v50 = 0u;
  sub_1AB0169C4(v48, &v49);
  v51 = 0;
  v15 = v56;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1AB0168A8(0, *(v15 + 2) + 1, 1, v15);
    v56 = v15;
  }

  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1AB0168A8((v16 > 1), v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  v18 = &v15[40 * v17];
  v19 = v49;
  v20 = v50;
  v18[64] = v51;
  *(v18 + 2) = v19;
  *(v18 + 3) = v20;
  v56 = v15;
  sub_1AB014AC0(v54, &unk_1EB437E60);
  v21._countAndFlagsBits = 0x676E69766F6D202CLL;
  v21._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  v22 = [a2 name];
  v23 = sub_1AB460544();
  v25 = v24;

  v55 = MEMORY[0x1E69E6158];
  v54[0] = v23;
  v54[1] = v25;
  sub_1AB014A58(v54, v48, &unk_1EB437E60);
  v49 = 0u;
  v50 = 0u;
  sub_1AB0169C4(v48, &v49);
  v51 = 0;
  v26 = v56;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
    v56 = v26;
  }

  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
  }

  *(v26 + 2) = v28 + 1;
  v29 = &v26[40 * v28];
  v30 = v49;
  v31 = v50;
  v29[64] = v51;
  *(v29 + 2) = v30;
  *(v29 + 3) = v31;
  v56 = v26;
  sub_1AB014AC0(v54, &unk_1EB437E60);
  v32._object = 0x80000001AB50A350;
  v32._countAndFlagsBits = 0xD000000000000018;
  LogMessage.StringInterpolation.appendLiteral(_:)(v32);
  *(v10 + 32) = v56;
  v33 = sub_1AB461094();
  if (os_log_type_enabled(v9, v33))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v34 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v34[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v34 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v36 = swift_allocObject();
    *(v36 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v49 = v10;
    *(&v49 + 1) = sub_1AB0223E4;
    *&v50 = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
    sub_1AB016A34();
    v37 = sub_1AB460484();
    v39 = v38;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
    v40 = swift_allocObject();
    *(v40 + 16) = v43;
    *(v40 + 56) = MEMORY[0x1E69E6158];
    *(v40 + 64) = sub_1AB016854();
    *(v40 + 32) = v37;
    *(v40 + 40) = v39;
    sub_1AB45FF14();
  }

  v41 = [v44 identifierForKey_];
  if (!v41)
  {
    sub_1AB460544();
    v41 = sub_1AB460514();
  }

  sub_1AB45F994();
  v42 = sub_1AB45F914();
  (*(v6 + 8))(v8, v45);
  [v46 _setIdentifier_withStartedDate_forKey_];

  dispatch_group_leave(v47);
}

uint64_t sub_1AB346574(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6)
{
  v15 = *v6;
  v14 = v6[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_1AB200878;

  return sub_1AB343B04(a1, a2, a3, a4, a5, a6, v15, v14);
}

uint64_t static JEMetricsSecretMigrator.migrateSecretIfNecessaryAndReturnSecretValue(namespace:topic:secretKey:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AB0AF9E8;

  return (sub_1AB347E40)(a1, a2, a3, a4);
}

uint64_t sub_1AB3468EC(void *a1, void *a2, void *a3, void *a4, void *aBlock)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_1AB3469F4;

  return sub_1AB347E40(v10, v11, v12, v13);
}

uint64_t sub_1AB3469F4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  if (v2)
  {
    v9 = sub_1AB45F584();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    v12 = sub_1AB460514();

    v11 = v12;
    v10 = 0;
    v9 = v12;
  }

  v13 = *(v3 + 48);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

id JEMetricsSecretMigrator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id JEMetricsSecretMigrator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JEMetricsSecretMigrator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id JEMetricsSecretMigrator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JEMetricsSecretMigrator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AB346CB0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v79 = a6;
  v77 = a5;
  v78 = a4;
  v84 = a3;
  v82 = sub_1AB4601C4();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v80 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED4D1FC8;
  v76[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v10 = swift_allocObject();
  v83 = xmmword_1AB4D4720;
  *(v10 + 16) = xmmword_1AB4D4720;
  v92 = sub_1AB0168A8(0, 35, 0, MEMORY[0x1E69E7CC0]);
  v11._countAndFlagsBits = 0x6E6974617267694DLL;
  v11._object = 0xEA00000000002067;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  v12 = [a1 name];
  v13 = sub_1AB460544();
  v15 = v14;

  v16 = MEMORY[0x1E69E6158];
  v89 = MEMORY[0x1E69E6158];
  v88[0] = v13;
  v88[1] = v15;
  sub_1AB014A58(v88, v91, &unk_1EB437E60);
  v85 = 0u;
  v86 = 0u;
  sub_1AB0169C4(v91, &v85);
  v87[0] = 0;
  v17 = v92;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1AB0168A8(0, *(v17 + 2) + 1, 1, v17);
    v92 = v17;
  }

  v19 = *(v17 + 2);
  v18 = *(v17 + 3);
  if (v19 >= v18 >> 1)
  {
    v17 = sub_1AB0168A8((v18 > 1), v19 + 1, 1, v17);
  }

  *(v17 + 2) = v19 + 1;
  v20 = &v17[40 * v19];
  v21 = v85;
  v22 = v86;
  v20[64] = v87[0];
  *(v20 + 2) = v21;
  *(v20 + 3) = v22;
  v92 = v17;
  sub_1AB014AC0(v88, &unk_1EB437E60);
  v23._object = 0x80000001AB50A350;
  v23._countAndFlagsBits = 0xD000000000000018;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  *(v10 + 32) = v92;
  v24 = sub_1AB461094();
  if (os_log_type_enabled(v9, v24))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v25 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v25[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v25 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v27 = swift_allocObject();
    *(v27 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v85 = v10;
    *(&v85 + 1) = sub_1AB0223E4;
    *&v86 = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
    sub_1AB016A34();
    v28 = sub_1AB460484();
    v30 = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
    v31 = swift_allocObject();
    *(v31 + 16) = v83;
    *(v31 + 56) = v16;
    *(v31 + 64) = sub_1AB016854();
    *(v31 + 32) = v28;
    *(v31 + 40) = v30;
    v32 = v9;
    sub_1AB45FF14();
  }

  else
  {
    v32 = v9;
  }

  v33 = a2[3];
  v34 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v33);
  v35 = *(v34 + 8);
  v35(&v85, v33, v34);
  v36 = v85;
  if (v85)
  {
    v37 = [v85 identifier];
  }

  else
  {
    v37 = 0;
  }

  v38 = [v84 account];
  v39 = [v38 identifier];

  if (!v37)
  {
    if (!v39)
    {
      goto LABEL_22;
    }

LABEL_29:

LABEL_30:
    v51 = dispatch_group_create();
    dispatch_group_enter(v51);
    v52 = v79;
    v53 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v35(&v85, v33, v34);
    v54 = v85;
    [v53 setAccount_];

    v55 = v84;
    v56 = [v84 clientInfo];
    [v53 setClientInfo_];

    [v53 setIsActiveITunesAccountRequired_];
    v57 = [v55 domain];
    [v53 setDomain_];

    [v55 resetInterval];
    [v53 setResetInterval_];

    *&v83 = sub_1AB0A0A2C([v55 identifierIfExistsForKey_]);
    v58 = swift_allocObject();
    v59 = v78;
    v60 = v77;
    v58[2] = v78;
    v58[3] = v60;
    v58[4] = v52;
    v58[5] = a1;
    v58[6] = v53;
    v58[7] = v55;
    v58[8] = v51;
    v61 = swift_allocObject();
    v61[2] = v59;
    v61[3] = v60;
    v61[4] = v52;
    v61[5] = a1;
    v61[6] = v53;
    v61[7] = v55;
    v61[8] = v51;
    v62 = sub_1AB016760(0, &qword_1ED4D2060);
    v63 = v81;
    v64 = v80;
    v65 = v82;
    (*(v81 + 104))(v80, *MEMORY[0x1E69E7F98], v82);
    v66 = v53;
    v67 = a1;
    v68 = v55;
    v69 = v51;
    v70 = v66;
    v71 = v67;
    v72 = v68;
    v73 = v69;
    v74 = sub_1AB461164();
    (*(v63 + 8))(v64, v65);
    v89 = v62;
    v90 = &protocol witness table for OS_dispatch_queue;
    v88[0] = v74;
    *&v85 = sub_1AB3483D0;
    *(&v85 + 1) = v58;
    *&v86 = sub_1AB348434;
    *(&v86 + 1) = v61;
    sub_1AB01494C(v88, v87);
    v87[40] = 0;

    sub_1AB0A0CA8(&v85);

    sub_1AB014AC0(&v85, &unk_1EB43D200);
    return __swift_destroy_boxed_opaque_existential_1Tm(v88);
  }

  if (!v39)
  {
    v39 = v37;
    goto LABEL_29;
  }

  sub_1AB016760(0, &qword_1ED4D1040);
  v40 = sub_1AB4612C4();

  if ((v40 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_22:
  v41 = swift_allocObject();
  *(v41 + 16) = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v42 = swift_allocObject();
  *(v42 + 16) = v83;
  *(&v86 + 1) = MEMORY[0x1E69E6158];
  *&v85 = 0xD00000000000003ELL;
  *(&v85 + 1) = 0x80000001AB50A370;
  *(v42 + 48) = 0u;
  *(v42 + 32) = 0u;
  sub_1AB0169C4(&v85, v42 + 32);
  *(v42 + 64) = 0;
  *(v41 + 32) = v42;
  v43 = sub_1AB461094();
  if (os_log_type_enabled(v32, v43))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v44 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    v45 = LOBYTE(v44[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v44 + 5);
    if (v45 == 2)
    {
      LOBYTE(v45) = os_variant_has_internal_content();
    }

    v46 = swift_allocObject();
    *(v46 + 16) = (v45 & 1) == 0;
    *&v85 = v41;
    *(&v85 + 1) = sub_1AB01A8D8;
    *&v86 = v46;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
    sub_1AB016A34();
    v47 = sub_1AB460484();
    v49 = v48;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
    v50 = swift_allocObject();
    *(v50 + 16) = v83;
    *(v50 + 56) = MEMORY[0x1E69E6158];
    *(v50 + 64) = sub_1AB016854();
    *(v50 + 32) = v47;
    *(v50 + 40) = v49;
    sub_1AB45FF14();
  }
}

uint64_t sub_1AB34775C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a5;
  v6[32] = a6;
  v6[29] = a3;
  v6[30] = a4;
  v6[27] = a1;
  v6[28] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB347784, 0, 0);
}

uint64_t sub_1AB347784()
{
  v11 = v0;
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v0[26] = 0;
  v4 = [objc_allocWithZone(MEMORY[0x1E698CA20]) init];
  v0[33] = v4;
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v5);
  (*(v6 + 8))(&v10, v5, v6);
  v7 = v10;
  [v4 setAccount_];

  [v4 setClientInfo_];
  v8 = sub_1AB460514();
  [v4 setDomain_];

  sub_1AB345714(v0 + 26, v1);
  v0[34] = sub_1AB18AC18();

  return MEMORY[0x1EEE6DFA0](sub_1AB3478EC, 0, 0);
}

uint64_t sub_1AB3478EC()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1AB3479B8;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB19520C(v2);
  sub_1AB014AC0(v2, &unk_1EB439CC0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB3479B8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1AB347DD0;
  }

  else
  {

    v4 = v1[21];
    v1[36] = v1[20];
    v1[37] = v4;
    v3 = sub_1AB347AE4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB347AE4()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_1AB460514();
  v3 = [v1 BOOLForKey_];

  v4 = *(v0 + 264);
  if (v3)
  {
    [*(v0 + 264) reset];
    goto LABEL_11;
  }

  v5 = *(v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437548);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AB4DE160;
  *(v6 + 32) = v5;
  sub_1AB016760(0, &qword_1EB433470);
  v7 = v5;
  v8 = sub_1AB460934();

  v9 = [v4 generateEventFieldsForKeys_];

  v10 = sub_1AB4602F4();
  v11 = [v7 name];
  v12 = sub_1AB460544();
  v14 = v13;

  *(v0 + 192) = v12;
  *(v0 + 200) = v14;
  sub_1AB461564();
  if (!*(v10 + 16) || (v15 = sub_1AB02B1D8(v0 + 80), (v16 & 1) == 0))
  {

    sub_1AB02B2E4(v0 + 80);
LABEL_10:
    v4 = *(v0 + 264);
    v17 = *(v0 + 232);
    v18 = sub_1AB460514();
    [v4 setIdentifier:v18 forKey:v17];

    goto LABEL_11;
  }

  sub_1AB0165C4(*(v10 + 56) + 32 * v15, v0 + 160);
  sub_1AB02B2E4(v0 + 80);

  if (!swift_dynamicCast())
  {
    goto LABEL_10;
  }

  if (*(v0 + 192) == *(v0 + 288) && *(v0 + 200) == *(v0 + 296))
  {
    v4 = *(v0 + 264);

    goto LABEL_11;
  }

  v23 = sub_1AB461DA4();

  if ((v23 & 1) == 0)
  {
    goto LABEL_10;
  }

  v4 = *(v0 + 264);
LABEL_11:

  v19 = *(v0 + 8);
  v20 = *(v0 + 288);
  v21 = *(v0 + 296);

  return v19(v20, v21);
}

uint64_t sub_1AB347DD0()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB347E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB347E64, 0, 0);
}

uint64_t sub_1AB347E64()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_1AB4605D4();
  *(v0 + 88) = v4;
  v5 = v2;
  v6 = sub_1AB4605D4();
  v8 = v7;
  *(v0 + 96) = v7;
  v9 = [objc_opt_self() ams_sharedAccountStore];
  *(v0 + 40) = sub_1AB016760(0, &qword_1ED4D1F60);
  *(v0 + 48) = &protocol witness table for ACAccountStore;
  *(v0 + 16) = v9;
  v10 = [objc_opt_self() currentProcess];
  *(v0 + 104) = v10;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *v11 = v0;
  v11[1] = sub_1AB347FD8;
  v12 = *(v0 + 72);

  return sub_1AB34775C(v6, v8, v12, v0 + 16, v10, ~(v1 >> 1) & 0x4000000000000000 | v1);
}

uint64_t sub_1AB347FD8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 120) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB348174, 0, 0);
  }

  else
  {
    v7 = *(v6 + 104);

    __swift_destroy_boxed_opaque_existential_1Tm(v6 + 16);
    v8 = *(v6 + 8);

    return v8(a1, a2);
  }
}

uint64_t sub_1AB348174()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB3481FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1AB027460;

  return sub_1AB3468EC(v2, v3, v4, v5, v6);
}

uint64_t sub_1AB3482D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB34830C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1AB348368(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t objectdestroy_21Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t LRUMultiCache.Values.makeIterator()@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + 8);
  a1[1] = 0;
}

uint64_t LRUMultiCache.Values.endIndex.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AB4609F4();
  *a1 = result;
  return result;
}

void *LRUMultiCache.Values.index(after:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

uint64_t LRUMultiCache.Values.insert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB4609F4();
  if ((v8 & 0x8000000000000000) == 0 && v8 == *v2)
  {
    sub_1AB460A64();
    swift_getWitnessTable();
    sub_1AB460FA4();
    (*(v5 + 8))(v7, v4);
  }

  (*(v5 + 16))(v7, a1, v4);
  sub_1AB460A64();
  return sub_1AB460A14();
}

uint64_t LRUMultiCache.Values.removeAll(where:)()
{
  sub_1AB460A64();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1AB460FC4();
}

void (*sub_1AB348764(void *a1, uint64_t a2, uint64_t a3))(void *a1)
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
  v6[4] = sub_1AB348834(v6, a2, a3);
  return sub_1AB3487EC;
}

void sub_1AB3487EC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_1AB348834(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v4 = *(a3 + 24);
  *a1 = v4;
  v5 = *(v4 - 8);
  a1[1] = v5;
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v5 + 64));
  }

  a1[2] = v6;
  sub_1AB460AC4();
  return sub_1AB2447B0;
}

uint64_t sub_1AB3489F0@<X0>(void *a1@<X8>)
{
  LRUMultiCache.Values.makeIterator()(a1);
}

uint64_t sub_1AB348A1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AB348A70()
{
  swift_getWitnessTable();
  v0 = sub_1AB349BAC();

  return v0;
}

uint64_t LRUMultiCache.__allocating_init(keyLimit:valueLimit:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LRUMultiCache.init(keyLimit:valueLimit:)(a1, a2);
  return v4;
}

void LRUMultiCache.init(keyLimit:valueLimit:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_1AB4601B4();
  v33 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB4601F4();
  v36 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AB4611B4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  if (a1 && a2)
  {
    v3[2] = a2;
    sub_1AB348FDC();
    v32 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D4C0);
    v30 = v9;
    v31 = v10;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1AB4D47F0;
    sub_1AB461194();
    sub_1AB4611A4();
    aBlock = v16;
    sub_1AB349028();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D4D0);
    sub_1AB349080();
    sub_1AB4614E4();
    v17 = sub_1AB4611C4();
    (*(v13 + 8))(v15, v12);
    v3[3] = v17;
    v18 = v6[10];
    v19 = v6[11];
    v20 = v6[12];
    type metadata accessor for LRUMultiCache.Values();
    aBlock = sub_1AB2AD800(v34);
    v38 = v21;
    v39 = v22;
    type metadata accessor for _LRUCache();
    v23 = sub_1AB02FFC0();

    v3[4] = v23;
    swift_getObjectType();
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    v25[2] = v18;
    v25[3] = v19;
    v25[4] = v20;
    v25[5] = v24;
    v41 = sub_1AB349C7C;
    v42 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v38 = 1107296256;
    v39 = sub_1AB01D528;
    v40 = &block_descriptor_31;
    v26 = _Block_copy(&aBlock);

    v27 = v35;
    j___s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
    v28 = v30;
    sub_1AB073BA0();
    sub_1AB4611D4();
    _Block_release(v26);
    (*(v33 + 8))(v28, v32);
    (*(v36 + 8))(v27, v31);

    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1AB461214();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1AB348FDC()
{
  result = qword_1ED4CFE60;
  if (!qword_1ED4CFE60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED4CFE60);
  }

  return result;
}

unint64_t sub_1AB349028()
{
  result = qword_1EB4323A0;
  if (!qword_1EB4323A0)
  {
    sub_1AB4611B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4323A0);
  }

  return result;
}

unint64_t sub_1AB349080()
{
  result = qword_1EB4323C0;
  if (!qword_1EB4323C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4323C0);
  }

  return result;
}

uint64_t sub_1AB3490FC()
{
  v0 = sub_1AB4611B4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_1AB461284();
    sub_1AB349210();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

void sub_1AB349210()
{
  v0 = sub_1AB4611B4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB461194();
  sub_1AB349028();
  v4 = sub_1AB4614C4();
  v5 = *(v1 + 8);
  v5(v3, v0);
  if (v4 & 1) != 0 || (sub_1AB4611A4(), v6 = sub_1AB4614C4(), v5(v3, v0), (v6))
  {
    LRUMultiCache.removeAll(keepingCapacity:)(v4 & 1);
  }
}

uint64_t LRUMultiCache.deinit()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1AB4611E4();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t LRUMultiCache.__deallocating_deinit()
{
  LRUMultiCache.deinit();

  return swift_deallocClassInstance();
}

void LRUMultiCache.withValues<A>(forKey:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6[2] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = a3;
  type metadata accessor for LRUMultiCache.Values();
  type metadata accessor for _LRUCache();
  sub_1AB1AA5AC(sub_1AB349C88, v6, v5);
}

uint64_t sub_1AB3494C4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, void *a5, uint64_t a6)
{
  v17 = a6;
  v9 = *(*a5 + 80);
  type metadata accessor for LRUMultiCache.Values();
  v10 = type metadata accessor for _LRUCache();
  sub_1AB2AC8AC(a2, v10, &v13);
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    a3(&v15);
    sub_1AB34964C(&v15, a1, a2, v9);
  }

  else
  {
    v15 = a5[2];
    v16 = sub_1AB4609A4();
    a3(&v15);
    sub_1AB3497EC(&v15, a1, a2, v9);
  }
}

uint64_t sub_1AB34964C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10[1];
  v16 = *v10;
  v17 = v11;
  type metadata accessor for LRUMultiCache.Values();
  swift_getWitnessTable();
  if (sub_1AB460F44())
  {
    v12 = type metadata accessor for _LRUCache();
    sub_1AB2ACF84(a3, v12, &v16);
  }

  else
  {
    (*(v7 + 16))(v9, a3, a4);
    v14 = a1[1];
    v16 = *a1;
    v17 = v14;
    v15 = type metadata accessor for _LRUCache();

    return sub_1AB2ACC9C(&v16, v9, v15);
  }
}

uint64_t sub_1AB3497EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10[1];
  v15 = *v10;
  v16 = v11;
  type metadata accessor for LRUMultiCache.Values();
  swift_getWitnessTable();
  result = sub_1AB460F44();
  if ((result & 1) == 0)
  {
    (*(v7 + 16))(v9, a3, a4);
    v13 = a1[1];
    v15 = *a1;
    v16 = v13;
    v14 = type metadata accessor for _LRUCache();

    return sub_1AB2ACC9C(&v15, v9, v14);
  }

  return result;
}

Swift::Void __swiftcall LRUMultiCache.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v2 = *v1;
  v3 = v1[4];
  v4[2] = *(*v1 + 80);
  v4[3] = *(v2 + 88);
  v4[4] = *(v2 + 96);
  v5 = keepingCapacity;
  type metadata accessor for LRUMultiCache.Values();
  type metadata accessor for _LRUCache();
  sub_1AB1AA5AC(sub_1AB349CAC, v4, v3);
}

uint64_t sub_1AB349A30()
{
  type metadata accessor for LRUMultiCache.Values();
  type metadata accessor for _LRUCache();
  return sub_1AB2ADF04();
}

uint64_t sub_1AB349AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1AB4604B4();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AB349BB0()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1AB4604B4();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1AB460FE4();
  result = sub_1AB4604B4();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AB349CEC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AB349EA4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB349EE0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB349F80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AB34A3A4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AB349FCC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4387E0);
  if (v1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D47F0;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x80000001AB4FF460;
    *(inited + 48) = v1;
    *(inited + 56) = 0x6E6F73616572;
    *(inited + 64) = 0xE600000000000000;
    *(inited + 72) = sub_1AB460EA4();
    v3 = sub_1AB02DD7C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4387E8);
    swift_arrayDestroy();
  }

  else
  {
    v4 = swift_initStackObject();
    *(v4 + 16) = xmmword_1AB4D4720;
    *(v4 + 32) = 0x6E6F73616572;
    *(v4 + 40) = 0xE600000000000000;
    *(v4 + 48) = sub_1AB460EA4();
    v3 = sub_1AB02DD7C(v4);
    swift_setDeallocating();
    sub_1AB02DECC(v4 + 32);
  }

  return v3;
}

uint64_t sub_1AB34A174()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1 + 1);
  return sub_1AB462104();
}

uint64_t sub_1AB34A1BC()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1 + 1);
  return sub_1AB462104();
}

unint64_t sub_1AB34A204()
{
  result = qword_1EB43B320;
  if (!qword_1EB43B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B320);
  }

  return result;
}

unint64_t sub_1AB34A258(uint64_t a1)
{
  result = sub_1AB34A280();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AB34A280()
{
  result = qword_1EB43B328;
  if (!qword_1EB43B328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B328);
  }

  return result;
}

unint64_t sub_1AB34A2E8()
{
  result = qword_1EB43B330;
  if (!qword_1EB43B330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43B338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B330);
  }

  return result;
}

unint64_t sub_1AB34A350()
{
  result = qword_1EB43B340;
  if (!qword_1EB43B340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B340);
  }

  return result;
}

uint64_t sub_1AB34A3A4(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 8;
  }

  else
  {
    return a1 - 1;
  }
}

__n128 AppleServicesEncoderInstrumented.init(_:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v2;
  v3 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v3;
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v5;
  return result;
}

uint64_t AppleServicesEncoderInstrumented.encodeRequest(fromContentsOf:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1AB34A484;

  return AppleServicesEncoder.encodeRequest(fromContentsOf:)(a2);
}

uint64_t sub_1AB34A484(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1AB09C7A0, 0, 0);
  }
}

uint64_t sub_1AB34A5D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1AB34A620(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1AB34A69C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1AB34A6E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB34A774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_1AB45F764();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = _s10_URLSourceVMa();
  v11 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1AB01EC0C(a1, v25);
  v14 = v26;
  if (!v26)
  {
    sub_1AB066D84(a1);
    sub_1AB014AC0(v25, &qword_1EB436BA0);
LABEL_7:
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_8;
  }

  v23 = a2;
  v15 = v27;
  __swift_project_boxed_opaque_existential_1Tm(v25, v26);
  (*(v15 + 24))(v14, v15);
  v17 = v16;
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  if (!v17)
  {
    sub_1AB066D84(a1);
    a2 = v23;
    goto LABEL_7;
  }

  sub_1AB45F714();

  sub_1AB066D84(a1);
  v18 = (*(v8 + 48))(v6, 1, v7);
  a2 = v23;
  if (v18 == 1)
  {
LABEL_8:
    sub_1AB014AC0(v6, &unk_1EB4395B0);
    v20 = 1;
    return (*(v11 + 56))(a2, v20, 1, v24);
  }

  v19 = *(v8 + 32);
  v19(v10, v6, v7);
  v19(v13, v10, v7);
  sub_1AB3037E0(v13, a2);
  v20 = 0;
  return (*(v11 + 56))(a2, v20, 1, v24);
}

uint64_t sub_1AB34AA80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = sub_1AB45F764();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s10_URLSourceVMa();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462204();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1Tm(v13, v13[3]);
    sub_1AB34C854();
    sub_1AB461DF4();
    (*(v5 + 32))(v10, v7, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    sub_1AB3037E0(v10, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t MediaArtworkSource.cachedImagesKey(using:)@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EB435DA8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1AB01494C(&qword_1EB43A948, v2);
}

uint64_t _s10_URLSourceVMa()
{
  result = qword_1EB43B348;
  if (!qword_1EB43B348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AB34AED0@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EB435DA8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1AB01494C(&qword_1EB43A948, v2);
}

uint64_t sub_1AB34AF40@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1AB45F764();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1AB34AFC4(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462254();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1AB461E84();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t sub_1AB34B060@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AB34C168(a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1AB34B08C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A970);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16[-v7 - 8];
  v9 = *a2;
  sub_1AB0B9254(a1, v16);
  v17 = v9;
  sub_1AB34A774(v16, v8);
  v10 = _s10_URLSourceVMa();
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    sub_1AB014AC0(v8, &qword_1EB43A970);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A978);
    sub_1AB163664();
    swift_allocError();
    v12 = MEMORY[0x1E69E7CC0];
    *v13 = v11;
    v13[1] = v12;
    v13[2] = 0;
    v13[3] = 0;
    swift_willThrow();
    return sub_1AB066D84(a1);
  }

  else
  {
    sub_1AB066D84(a1);
    return sub_1AB3037E0(v8, a3);
  }
}

uint64_t sub_1AB34B210@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AB45F614();
  v3 = MEMORY[0x1E69E6168];
  a1[3] = MEMORY[0x1E69E6158];
  a1[4] = v3;
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AB34B264(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462254();
  sub_1AB45F614();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1AB461E34();

  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t sub_1AB34B338@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1AB45F764();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = [a2 URLWithSize:a1[3] cropStyle:*a1 format:70 quality:{1.0, 1.0}];
  if (v13)
  {
    v14 = v13;
    sub_1AB45F6C4();

    (*(v7 + 32))(v12, v9, v6);
    v15 = sub_1AB45F614();
    v16 = MEMORY[0x1E69E6168];
    a3[3] = MEMORY[0x1E69E6158];
    a3[4] = v16;
    *a3 = v15;
    a3[1] = v17;
    return (*(v7 + 8))(v12, v6);
  }

  else
  {
    if (qword_1EB435DA8 != -1)
    {
      swift_once();
    }

    return sub_1AB01494C(&qword_1EB43A948, a3);
  }
}

uint64_t sub_1AB34B510@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  if (*(a1 + 4) <= 0.0 || *(a1 + 5) <= 0.0)
  {
    v17 = sub_1AB45F764();
    v18 = *(*(v17 - 8) + 56);

    return v18(a3, 1, 1, v17);
  }

  else
  {
    v12 = *a1;
    v13 = a1[3];
    if (a1[2])
    {
      v14 = [a2 URLWithSize:v13 cropStyle:v12 format:?];
      if (v14)
      {
        v15 = v14;
        sub_1AB45F6C4();

        v16 = sub_1AB45F764();
        (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
      }

      else
      {
        v23 = sub_1AB45F764();
        (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
      }

      v24 = v8;
    }

    else
    {
      v20 = [a2 URLWithSize:v13 cropStyle:v12 format:a1[1] quality:?];
      if (v20)
      {
        v21 = v20;
        sub_1AB45F6C4();

        v22 = sub_1AB45F764();
        (*(*(v22 - 8) + 56))(v11, 0, 1, v22);
      }

      else
      {
        v25 = sub_1AB45F764();
        (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
      }

      v24 = v11;
    }

    return sub_1AB2D0A88(v24, a3);
  }
}

id sub_1AB34B7A8(uint64_t a1)
{
  v3 = *v1;

  return [v3 colorWithKind_];
}

uint64_t sub_1AB34B7FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AB34C228(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AB34B828(void *a1)
{
  v3 = [*v1 artworkDictionary];
  v4 = sub_1AB4602F4();

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AE0);
  *&v6 = v4;
  v8[3] = &type metadata for FoundationValue;
  v8[4] = &off_1F1FFB5A8;
  v8[0] = swift_allocObject();
  sub_1AB014B78(&v6, (v8[0] + 16));
  JSONObject.encode(to:)(a1);
  return sub_1AB066D84(v8);
}

uint64_t sub_1AB34B918@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1AB0B9254(a1, v10);
  v4 = sub_1AB34BE64(v10);
  if (v4)
  {
    v5 = v4;
    result = sub_1AB066D84(a1);
    *a2 = v5;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A978);
    sub_1AB163664();
    swift_allocError();
    v8 = MEMORY[0x1E69E7CC0];
    *v9 = v7;
    v9[1] = v8;
    v9[2] = 0;
    v9[3] = 0;
    swift_willThrow();
    return sub_1AB066D84(a1);
  }

  return result;
}

id sub_1AB34B9E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1AB34BE64(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AB34BA20(void *a1, void *a2)
{
  v3 = [a1 artworkDictionary];
  v4 = sub_1AB4602F4();

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AE0);
  v9[0] = v4;
  v5 = [a2 artworkDictionary];
  v6 = sub_1AB4602F4();

  v8[3] = v10;
  v8[0] = v6;
  LOBYTE(v5) = _isStructurallyEqual(_:to:with:at:)(v9, v8, 3uLL, 0);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v5 & 1;
}

uint64_t sub_1AB34BB2C(void *a1)
{
  v3 = sub_1AB4616A4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462204();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1Tm(v12, v12[3]);
    if ((sub_1AB461E04() & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
      sub_1AB4621E4();
      sub_1AB461694();
      v7 = sub_1AB4616B4();
      swift_allocError();
      v9 = v8;
      (*(v4 + 16))(v8, v6, v3);
      (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B00], v7);
      swift_willThrow();
      (*(v4 + 8))(v6, v3);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1AB34BD38(uint64_t a1)
{
  sub_1AB0B9254(a1, v12);

  sub_1AB01EC0C(v12, v9);
  v2 = v10;
  if (v10)
  {
    v3 = v11;
    __swift_project_boxed_opaque_existential_1Tm(v9, v10);
    v4 = (*(v3 + 128))(v2, v3);
    sub_1AB066D84(v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    if ((v4 & 1) == 0)
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A978);
      sub_1AB163664();
      swift_allocError();
      v6 = MEMORY[0x1E69E7CC0];
      *v7 = v5;
      v7[1] = v6;
      v7[2] = 0;
      v7[3] = 0;
      swift_willThrow();
    }
  }

  else
  {
    sub_1AB066D84(v12);
    sub_1AB014AC0(v9, &qword_1EB436BA0);
  }

  return sub_1AB066D84(a1);
}

id sub_1AB34BE64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21[-1] - v3;

  sub_1AB01EC0C(a1, v21);
  v5 = v22;
  if (!v22)
  {
    sub_1AB066D84(a1);
    sub_1AB014AC0(v21, &qword_1EB436BA0);
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
LABEL_8:
    v17 = &qword_1EB436BC0;
    v18 = &v24;
    goto LABEL_9;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1Tm(v21, v22);
  (*(v6 + 160))(&v24, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  v7 = *(&v25 + 1);
  if (!*(&v25 + 1))
  {
    sub_1AB066D84(a1);
    goto LABEL_8;
  }

  v8 = v26;
  __swift_project_boxed_opaque_existential_1Tm(&v24, *(&v25 + 1));
  v9 = (*(v8 + 32))(MEMORY[0x1E69E69B8], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E69C0], v7, v8);
  sub_1AB07CDB0(&v24);
  if (!v9)
  {
    sub_1AB066D84(a1);
    return 0;
  }

  v10 = objc_allocWithZone(MEMORY[0x1E698C9B0]);
  v11 = sub_1AB4602D4();
  v12 = [v10 initWithDictionary_];

  [v12 artworkSize];
  v13 = [v12 URLWithSize_];
  if (v13)
  {
    v14 = v13;
    sub_1AB45F6C4();

    sub_1AB066D84(a1);
    v15 = sub_1AB45F764();
    (*(*(v15 - 8) + 56))(v4, 0, 1, v15);
    sub_1AB014AC0(v4, &unk_1EB4395B0);
    return v12;
  }

  sub_1AB066D84(a1);

  v19 = sub_1AB45F764();
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  v17 = &unk_1EB4395B0;
  v18 = v4;
LABEL_9:
  sub_1AB014AC0(v18, v17);
  return 0;
}

uint64_t sub_1AB34C168(uint64_t a1)
{

  sub_1AB01EC0C(a1, v6);
  v2 = v7;
  if (v7)
  {
    v3 = v8;
    __swift_project_boxed_opaque_existential_1Tm(v6, v7);
    v4 = (*(v3 + 128))(v2, v3);
    sub_1AB066D84(a1);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    if ((v4 & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
    sub_1AB066D84(a1);
    sub_1AB014AC0(v6, &qword_1EB436BA0);
  }

  return 0;
}

uint64_t sub_1AB34C228(void *a1)
{
  v3 = sub_1AB4616A4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31[-1] - v8;
  v10 = a1[3];
  __swift_project_boxed_opaque_existential_1Tm(a1, v10);
  sub_1AB462204();
  if (v1)
  {
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1Tm(v38, v38[3]);
  sub_1AB1BF694();
  sub_1AB461DF4();
  sub_1AB01EC0C(v37, v31);
  v11 = v32;
  if (!v32)
  {
    sub_1AB014AC0(v31, &qword_1EB436BA0);
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    goto LABEL_9;
  }

  v12 = v33;
  __swift_project_boxed_opaque_existential_1Tm(v31, v32);
  (*(v12 + 160))(&v34, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  v13 = *(&v35 + 1);
  if (!*(&v35 + 1))
  {
LABEL_9:
    sub_1AB014AC0(&v34, &qword_1EB436BC0);
    goto LABEL_10;
  }

  v14 = v36;
  __swift_project_boxed_opaque_existential_1Tm(&v34, *(&v35 + 1));
  v15 = (*(v14 + 32))(MEMORY[0x1E69E69B8], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E69C0], v13, v14);
  sub_1AB07CDB0(&v34);
  if (!v15)
  {
LABEL_10:
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB4621E4();
    sub_1AB461694();
    v21 = sub_1AB4616B4();
    swift_allocError();
    v23 = v22;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938) + 48);
    *v23 = sub_1AB016760(0, &qword_1EB43B358);
    (*(v4 + 16))(v23 + v10, v6, v3);
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
    swift_willThrow();
    goto LABEL_11;
  }

  v16 = objc_allocWithZone(MEMORY[0x1E698C9B0]);
  v17 = sub_1AB4602D4();
  v10 = [v16 initWithDictionary_];

  [v10 artworkSize];
  v18 = [v10 URLWithSize_];
  if (!v18)
  {
    v25 = sub_1AB45F764();
    (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
    sub_1AB014AC0(v9, &unk_1EB4395B0);
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB4621E4();
    sub_1AB461694();
    v26 = sub_1AB4616B4();
    swift_allocError();
    v28 = v27;
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438010) + 48);
    *(v28 + 24) = &type metadata for OpenCodingKey;
    *(v28 + 32) = sub_1AB179C3C();
    *v28 = xmmword_1AB4E1B30;
    *(v28 + 16) = 1;
    (*(v4 + 16))(v28 + v29, v6, v3);
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF0], v26);
    swift_willThrow();

LABEL_11:
    (*(v4 + 8))(v6, v3);
    sub_1AB066D84(v37);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v10;
  }

  v19 = v18;
  sub_1AB45F6C4();

  sub_1AB066D84(v37);
  v20 = sub_1AB45F764();
  (*(*(v20 - 8) + 56))(v9, 0, 1, v20);
  sub_1AB014AC0(v9, &unk_1EB4395B0);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

unint64_t sub_1AB34C854()
{
  result = qword_1EB436C10;
  if (!qword_1EB436C10)
  {
    sub_1AB45F764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436C10);
  }

  return result;
}

uint64_t sub_1AB34C8AC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4190;
  v11 = MEMORY[0x1E69E6158];
  sub_1AB461564();
  *(inited + 96) = v11;
  *(inited + 72) = a1;
  *(inited + 80) = a2;
  sub_1AB461564();
  v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v13 = sub_1AB016760(0, &qword_1ED4D1940);
  *(inited + 168) = v13;
  *(inited + 144) = v12;
  v55[0] = 0x746867696568;
  v55[1] = 0xE600000000000000;
  sub_1AB461564();
  v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(inited + 240) = v13;
  *(inited + 216) = v14;
  v15 = sub_1AB0BA124(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B78);
  swift_arrayDestroy();
  v16 = 0;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a3 + 64);
  v20 = (v17 + 63) >> 6;
  while (1)
  {
    v21 = v16;
    if (!v19)
    {
      break;
    }

LABEL_8:
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v23 = (v16 << 9) | (8 * v22);
    v24 = *(*(a3 + 56) + v23);
    v25 = *(*(a3 + 48) + v23);
    v26 = v24;
    sub_1AB19FE70(0);
    if (v28)
    {
      v29 = v27;
      v50 = v28;
      *&v53 = sub_1AB460544();
      *(&v53 + 1) = v30;
      sub_1AB461564();
      v54 = v11;
      *&v53 = v29;
      *(&v53 + 1) = v50;
      sub_1AB014B78(&v53, v52);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v15;
      v32 = sub_1AB02B1D8(v55);
      v34 = *(v15 + 16);
      v35 = (v33 & 1) == 0;
      v36 = __OFADD__(v34, v35);
      v37 = v34 + v35;
      if (v36)
      {
        goto LABEL_22;
      }

      if (*(v15 + 24) >= v37)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v44 = v32;
          v45 = v33;
          sub_1AB1D76C0();
          v33 = v45;
          v32 = v44;
        }
      }

      else
      {
        v38 = v33;
        sub_1AB0C03C8(v37, isUniquelyReferenced_nonNull_native);
        v32 = sub_1AB02B1D8(v55);
        if ((v38 & 1) != (v39 & 1))
        {
          goto LABEL_24;
        }

        v33 = v38;
      }

      v11 = MEMORY[0x1E69E6158];
      v15 = v51;
      if (v33)
      {
        v40 = (v51[7] + 32 * v32);
        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        sub_1AB014B78(v52, v40);

        sub_1AB02B2E4(v55);
      }

      else
      {
        v51[(v32 >> 6) + 8] |= 1 << v32;
        v41 = v32;
        sub_1AB02B4BC(v55, v51[6] + 40 * v32);
        sub_1AB014B78(v52, (v51[7] + 32 * v41));

        sub_1AB02B2E4(v55);
        v42 = v51[2];
        v36 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v36)
        {
          goto LABEL_23;
        }

        v51[2] = v43;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v16 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v16 >= v20)
    {

      v46 = objc_allocWithZone(MEMORY[0x1E698C9B0]);
      v47 = sub_1AB4602D4();

      v48 = [v46 initWithDictionary_];

      return v48;
    }

    v19 = *(a3 + 64 + 8 * v16);
    ++v21;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

uint64_t sub_1AB34CD18(void (*a1)(uint64_t *__return_ptr, _BYTE *))
{
  v4 = sub_1AB45F9B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12[-v9];
  sub_1AB19C16C(v1, &v12[-v9]);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return 2;
  }

  (*(v5 + 32))(v7, v10, v4);
  a1(&v13, v7);
  if (v2)
  {
    result = (*(v5 + 8))(v7, v4);
    __break(1u);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    return v13;
  }

  return result;
}

uint64_t sub_1AB34CF34(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_retain_n();
  a1(a4, a3, a5, a3);
}

uint64_t SignpostAggregator.TimedEvent.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

id static SignpostAggregator.log.getter()
{
  if (qword_1EB433758 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB432F70;

  return v1;
}

void *SignpostAggregator.__allocating_init(subsystem:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AB45F9B4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  _s9JetEngine18SystemDateProviderV3now10Foundation0D0Vvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B360);
  v13 = swift_allocObject();
  *(v13 + ((*(*v13 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v9 + 32))(v13 + *(*v13 + *MEMORY[0x1E69E6B68] + 16), v11, v8);
  v12[2] = v13;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  return v12;
}

void *SignpostAggregator.init(subsystem:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1AB45F9B4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s9JetEngine18SystemDateProviderV3now10Foundation0D0Vvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B360);
  v13 = swift_allocObject();
  *(v13 + ((*(*v13 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v10 + 32))(v13 + *(*v13 + *MEMORY[0x1E69E6B68] + 16), v12, v9);
  v4[2] = v13;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = a4;
  v4[7] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  return v4;
}

uint64_t SignpostAggregator.collect(on:)(uint64_t a1)
{
  sub_1AB01494C(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B368);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = 0;
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  v5 = v11;
  v6 = v12;
  __swift_project_boxed_opaque_existential_1Tm(v10, v11);
  v7 = swift_allocObject();
  v7[2] = sub_1AB34D61C;
  v7[3] = v1;
  v7[4] = v2;
  v8 = *(v6 + 8);
  swift_retain_n();

  v8(sub_1AB34D624, v7, v5, v6);

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v2;
}

id sub_1AB34D560(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(void *), void (**a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v10 = *(a5 + 56);

  [v10 lock];
  sub_1AB34D66C(a5, a3, a4, a1, a2);

  return [v10 unlock];
}

void sub_1AB34D66C(uint64_t a1, void (*a2)(void *), void (**a3)(char *, uint64_t, uint64_t), void (*a4)(uint64_t *), uint64_t a5)
{
  v110 = a5;
  v102 = a4;
  v103 = a3;
  v104 = a2;
  v115 = a1;
  v126 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  MEMORY[0x1EEE9AC00](v5);
  v98 = v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v101 = v89 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v114 = v89 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v113 = v89 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v112 = v89 - v14;
  v15 = sub_1AB45F9B4();
  v111 = *(v15 - 8);
  v16 = v111;
  MEMORY[0x1EEE9AC00](v15);
  v100 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v91 = v89 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v89 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v89 - v24;
  v26 = swift_allocObject();
  *(v26 + 16) = MEMORY[0x1E69E7CC0];
  v99 = (v26 + 16);
  v109 = v25;
  _s9JetEngine18SystemDateProviderV3now10Foundation0D0Vvg_0();
  v27 = swift_allocBox();
  v28 = *(v16 + 56);
  v92 = v29;
  v116 = v28;
  v117 = v16 + 56;
  v28(v29, 1, 1, v15);
  v30 = [objc_allocWithZone(MEMORY[0x1E69CDFF8]) init];
  v31 = [objc_allocWithZone(MEMORY[0x1E69CE000]) init];
  v32 = sub_1AB460514();
  v33 = sub_1AB460514();
  [v31 addSubsystem:v32 category:v33];

  [v30 setSubsystemCategoryFilter_];
  v106 = v31;

  v34 = swift_allocObject();
  *(v34 + 16) = v26;
  *(v34 + 24) = v27;
  v124 = sub_1AB34FEDC;
  v125 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v122 = sub_1AB350060;
  v123 = &block_descriptor_32;
  v35 = _Block_copy(&aBlock);
  v108 = v26;

  v107 = v27;
  v36 = v15;

  [v30 setIntervalCompletionProcessingBlock_];
  _Block_release(v35);
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1AB1DB0D8(MEMORY[0x1E69E7CC0]);
  v38 = v37 + 16;
  v124 = sub_1AB34FEE4;
  v125 = v37;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v122 = sub_1AB350060;
  v123 = &block_descriptor_18_1;
  v39 = _Block_copy(&aBlock);

  [v30 setBeginEventProcessingBlock_];
  _Block_release(v39);
  v124 = sub_1AB34FEEC;
  v125 = v37;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v40 = v111;
  v122 = sub_1AB350060;
  v123 = &block_descriptor_21_1;
  v41 = _Block_copy(&aBlock);

  [v30 setEndEventProcessingBlock_];
  _Block_release(v41);
  v42 = *(v115 + 16);
  v43 = *(*v42 + *MEMORY[0x1E69E6B68] + 16);
  v44 = (*(*v42 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v42 + v44));
  v45 = *(v40 + 16);
  v95 = v43;
  v94 = v40 + 16;
  v93 = v45;
  v45(v22, (v42 + v43), v36);
  v96 = v44;
  os_unfair_lock_unlock((v42 + v44));
  v46 = sub_1AB45F914();
  v105 = *(v40 + 8);
  v105(v22, v36);
  aBlock = 0;
  LODWORD(v22) = [v30 processLogArchiveWithPath:0 startDate:v46 endDate:0 errorOut:&aBlock];

  v47 = aBlock;
  if (!v22)
  {
    v73 = aBlock;
    v74 = sub_1AB45F594();

    swift_willThrow();
    v104(v74);

    v105(v109, v36);
LABEL_31:

    return;
  }

  v89[0] = v42;
  v89[1] = v40 + 8;
  v89[2] = v37;
  v90 = v30;
  v115 = v36;
  swift_beginAccess();
  v48 = *v38;
  v49 = *v38 + 64;
  v50 = 1 << *(*v38 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & *(*v38 + 64);
  v53 = (v50 + 63) >> 6;
  v54 = (v40 + 48);
  v103 = (v40 + 32);
  swift_bridgeObjectRetain_n();
  v55 = v47;
  v56 = 0;
  v104 = MEMORY[0x1E69E7CC0];
  while (v52)
  {
    v57 = v56;
LABEL_10:
    v58 = *(*(v48 + 56) + ((v57 << 9) | (8 * __clz(__rbit64(v52)))));
    v59 = [v58 beginDate];
    if (v59)
    {
      v60 = v59;
      v61 = v114;
      sub_1AB45F984();

      v62 = 0;
    }

    else
    {
      v62 = 1;
      v61 = v114;
    }

    v52 &= v52 - 1;
    v63 = v115;
    v116(v61, v62, 1, v115);
    v64 = v61;
    v65 = v113;
    sub_1AB167244(v64, v113);
    v66 = v65;
    v67 = v112;
    sub_1AB167244(v66, v112);

    if ((*v54)(v67, 1, v63) == 1)
    {
      sub_1AB19C1DC(v67);
      v56 = v57;
    }

    else
    {
      v68 = v67;
      v69 = *v103;
      (*v103)(v91, v68, v115);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v104 = sub_1AB2B1550(0, *(v104 + 2) + 1, 1, v104);
      }

      v71 = *(v104 + 2);
      v70 = *(v104 + 3);
      if (v71 >= v70 >> 1)
      {
        v104 = sub_1AB2B1550(v70 > 1, v71 + 1, 1, v104);
      }

      v72 = v104;
      *(v104 + 2) = v71 + 1;
      v69(&v72[((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v71], v91, v115);
      v56 = v57;
    }
  }

  while (1)
  {
    v57 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
    }

    if (v57 >= v53)
    {
      break;
    }

    v52 = *(v49 + 8 * v57);
    ++v56;
    if (v52)
    {
      goto LABEL_10;
    }
  }

  v119 = v104;

  v75 = v97;
  sub_1AB34E9C0(&v119);
  if (!v75)
  {

    v76 = v115;
    v77 = v109;
    v78 = v101;
    v79 = v100;
    v80 = v98;
    if (*(v119 + 2))
    {
      v81 = v111;
      v93(v101, &v119[(*(v81 + 80) + 32) & ~*(v81 + 80)], v115);

      v116(v78, 0, 1, v76);
      v82 = (*(v81 + 32))(v79, v78, v76);
    }

    else
    {

      v116(v78, 1, 1, v76);
      v83 = v92;
      swift_beginAccess();
      sub_1AB19C16C(v83, v80);
      v84 = *v54;
      if ((*v54)(v80, 1, v76) == 1)
      {
        v93(v79, v77, v76);
        if (v84(v80, 1, v76) != 1)
        {
          sub_1AB19C1DC(v80);
        }
      }

      else
      {
        (*v103)(v79, v80, v76);
      }

      v82 = (v84)(v78, 1, v76);
      if (v82 != 1)
      {
        v82 = sub_1AB19C1DC(v78);
      }
    }

    MEMORY[0x1EEE9AC00](v82);
    v89[-2] = v79;
    v85 = v89[0];
    v86 = v96;
    os_unfair_lock_lock((v89[0] + v96));
    sub_1AB34FEF4(v85 + v95);
    os_unfair_lock_unlock((v85 + v86));
    v87 = v105;
    v105(v79, v76);
    v88 = v99;
    swift_beginAccess();
    v118 = *v88;

    v102(&v118);

    v87(v77, v76);
    goto LABEL_31;
  }

  __break(1u);

  os_unfair_lock_unlock(&v75[v52]);
  __break(1u);
}

uint64_t sub_1AB34E3BC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_1AB45F9B4();
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v33 = &v31 - v11;
  v32 = swift_projectBox();
  v12 = [a1 durationNanoseconds];
  v13 = [a1 name];
  v14 = sub_1AB460544();
  v16 = v15;

  swift_beginAccess();
  v17 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_1AB2B1578(0, *(v17 + 2) + 1, 1, v17);
    *(a2 + 16) = v17;
  }

  v20 = *(v17 + 2);
  v19 = *(v17 + 3);
  if (v20 >= v19 >> 1)
  {
    v17 = sub_1AB2B1578((v19 > 1), v20 + 1, 1, v17);
  }

  *(v17 + 2) = v20 + 1;
  v21 = &v17[24 * v20];
  *(v21 + 4) = v12;
  *(v21 + 5) = v14;
  *(v21 + 6) = v16;
  *(a2 + 16) = v17;
  swift_endAccess();
  v22 = [a1 endEvent];
  v23 = [v22 endDate];

  if (v23)
  {
    sub_1AB45F984();

    v25 = v33;
    v24 = v34;
    v26 = v35;
    (*(v34 + 32))(v33, v9, v35);
    v27 = v32;
    swift_beginAccess();
    v28 = sub_1AB19C16C(v27, v6);
    MEMORY[0x1EEE9AC00](v28);
    *(&v31 - 2) = v25;
    v29 = sub_1AB34CD18(sub_1AB34FFB4);
    sub_1AB19C1DC(v6);
    if (v29 == 2 || (v29 & 1) != 0)
    {
      (*(v24 + 16))(v6, v25, v26);
      (*(v24 + 56))(v6, 0, 1, v26);
      swift_beginAccess();
      sub_1AB34FFEC(v6, v27);
    }

    (*(v24 + 8))(v25, v26);
  }

  return 1;
}

uint64_t sub_1AB34E754(void *a1, uint64_t a2)
{
  v4 = [a1 signpostId];
  swift_beginAccess();
  v5 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + 16);
  *(a2 + 16) = 0x8000000000000000;
  sub_1AB1D6698(v5, v4, isUniquelyReferenced_nonNull_native);
  *(a2 + 16) = v8;
  swift_endAccess();
  return 1;
}

uint64_t sub_1AB34E7F4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_1AB34E84C(void *a1)
{
  v1 = [a1 signpostId];
  swift_beginAccess();
  v2 = sub_1AB177574(v1);
  swift_endAccess();

  return 1;
}

uint64_t SignpostAggregator.deinit()
{

  return v0;
}

uint64_t SignpostAggregator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1AB34E9C0(void **a1)
{
  v2 = *(sub_1AB45F9B4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1AB234F00(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1AB34EA68(v5);
  *a1 = v3;
}

void sub_1AB34EA68(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1AB461C24();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1AB45F9B4();
        v6 = sub_1AB4609B4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1AB45F9B4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1AB34EE24(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1AB34EB94(0, v2, 1, a1);
  }
}

void sub_1AB34EB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1AB45F9B4();
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v30 - v11;
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v13 + 16);
    v42 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v19 = (v16 + v17 * (a3 - 1));
    v37 = -v17;
    v38 = (v13 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      (v41)(v43, v21, v8, v14);
      v24 = v44;
      v23(v44, v19, v8);
      sub_1AB05D094();
      v25 = sub_1AB460494();
      v26 = *v18;
      (*v18)(v24, v8);
      v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = &v35[v31];
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v27(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1AB34EE24(int64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v122 = a1;
  v9 = sub_1AB45F9B4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v126 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v134 = &v119 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v139 = &v119 - v15;
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v140 = &v119 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v113 = a4;
    }

    else
    {
LABEL_128:
      v113 = sub_1AB391760(a4);
    }

    v142 = v113;
    v114 = *(v113 + 2);
    if (v114 >= 2)
    {
      while (*a3)
      {
        a4 = v114 - 1;
        v115 = *&v113[16 * v114];
        v116 = v113;
        v117 = *&v113[16 * v114 + 24];
        sub_1AB34F814(*a3 + *(v10 + 72) * v115, *a3 + *(v10 + 72) * *&v113[16 * v114 + 16], *a3 + *(v10 + 72) * v117, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v117 < v115)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_1AB391760(v116);
        }

        if (v114 - 2 >= *(v116 + 2))
        {
          goto LABEL_122;
        }

        v118 = &v116[16 * v114];
        *v118 = v115;
        *(v118 + 1) = v117;
        v142 = v116;
        sub_1AB3916D4(a4);
        v113 = v142;
        v114 = *(v142 + 2);
        if (v114 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v20 = 0;
  v137 = (v10 + 8);
  v138 = v10 + 16;
  v136 = (v10 + 32);
  v21 = MEMORY[0x1E69E7CC0];
  v124 = a3;
  v121 = a4;
  v141 = v9;
  v120 = v10;
  while (1)
  {
    v22 = v20;
    v127 = v21;
    if (v20 + 1 >= v19)
    {
      v36 = v20 + 1;
    }

    else
    {
      v132 = v19;
      v23 = v9;
      v24 = *a3;
      v25 = v10;
      v26 = *(v10 + 72);
      v5 = v24 + v26 * (v20 + 1);
      v128 = v24;
      v27 = *(v25 + 16);
      v27(v140, v5, v23, v17);
      v28 = v24 + v26 * v22;
      v29 = v25;
      v123 = v22;
      v30 = v139;
      v131 = v27;
      (v27)(v139, v28, v23);
      v31 = sub_1AB05D094();
      v32 = v140;
      v130 = v31;
      LODWORD(v133) = sub_1AB460494();
      v33 = *(v29 + 8);
      v33(v30, v23);
      v129 = v33;
      v33(v32, v23);
      v34 = v123 + 2;
      v135 = v26;
      v35 = v128 + v26 * (v123 + 2);
      while (1)
      {
        v36 = v132;
        if (v132 == v34)
        {
          break;
        }

        v38 = v140;
        v37 = v141;
        v39 = v131;
        (v131)(v140, v35, v141);
        v40 = v6;
        v41 = v139;
        v39(v139, v5, v37);
        v42 = sub_1AB460494() & 1;
        v43 = v41;
        v6 = v40;
        v44 = v129;
        v129(v43, v37);
        v44(v38, v37);
        ++v34;
        v35 += v135;
        v5 += v135;
        if ((v133 & 1) != v42)
        {
          v36 = v34 - 1;
          break;
        }
      }

      v22 = v123;
      a3 = v124;
      v10 = v120;
      v21 = v127;
      a4 = v121;
      v9 = v141;
      if (v133)
      {
        if (v36 < v123)
        {
          goto LABEL_125;
        }

        if (v123 < v36)
        {
          v45 = v135 * (v36 - 1);
          v5 = v36 * v135;
          v132 = v36;
          v46 = v36;
          v47 = v123;
          v48 = v123 * v135;
          do
          {
            if (v47 != --v46)
            {
              v50 = *a3;
              if (!v50)
              {
                goto LABEL_131;
              }

              v133 = *v136;
              (v133)(v126, &v50[v48], v141, v21);
              if (v48 < v45 || &v50[v48] >= &v50[v5])
              {
                v49 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v49 = v141;
                if (v48 != v45)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v50[v45], v126, v49);
              a3 = v124;
              v21 = v127;
            }

            ++v47;
            v45 -= v135;
            v5 -= v135;
            v48 += v135;
          }

          while (v47 < v46);
          v10 = v120;
          a4 = v121;
          v9 = v141;
          v22 = v123;
          v36 = v132;
        }
      }
    }

    v51 = a3[1];
    if (v36 < v51)
    {
      if (__OFSUB__(v36, v22))
      {
        goto LABEL_124;
      }

      if (v36 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v51)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v22 + a4;
        }

        if (v5 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v36 != v5)
        {
          break;
        }
      }
    }

    v5 = v36;
    if (v36 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v127;
    }

    else
    {
      v21 = sub_1AB2AFBEC(0, *(v127 + 2) + 1, 1, v127);
    }

    a4 = *(v21 + 2);
    v52 = *(v21 + 3);
    v53 = a4 + 1;
    if (a4 >= v52 >> 1)
    {
      v21 = sub_1AB2AFBEC((v52 > 1), a4 + 1, 1, v21);
    }

    *(v21 + 2) = v53;
    v54 = &v21[16 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v5;
    v55 = *v122;
    if (!*v122)
    {
      goto LABEL_133;
    }

    v128 = v5;
    if (a4)
    {
      while (1)
      {
        v5 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v56 = *(v21 + 4);
          v57 = *(v21 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_52:
          if (v59)
          {
            goto LABEL_112;
          }

          v72 = &v21[16 * v53];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_115;
          }

          v78 = &v21[16 * v5 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_119;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v5 = v53 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v82 = &v21[16 * v53];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_66:
        if (v77)
        {
          goto LABEL_114;
        }

        v85 = &v21[16 * v5];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_117;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v5 - 1;
        if (v5 - 1 >= v53)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v93 = v21;
        v94 = *&v21[16 * a4 + 32];
        v95 = *&v21[16 * v5 + 40];
        sub_1AB34F814(*a3 + *(v10 + 72) * v94, *a3 + *(v10 + 72) * *&v21[16 * v5 + 32], *a3 + *(v10 + 72) * v95, v55);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v95 < v94)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_1AB391760(v93);
        }

        if (a4 >= *(v93 + 2))
        {
          goto LABEL_109;
        }

        v96 = &v93[16 * a4];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        v142 = v93;
        sub_1AB3916D4(v5);
        v21 = v142;
        v53 = *(v142 + 2);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v21[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_110;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_111;
      }

      v67 = &v21[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_113;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_116;
      }

      if (v71 >= v63)
      {
        v89 = &v21[16 * v5 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_120;
        }

        if (v58 < v92)
        {
          v5 = v53 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v128;
    a4 = v121;
    v9 = v141;
    if (v128 >= v19)
    {
      goto LABEL_95;
    }
  }

  v119 = v6;
  v97 = *a3;
  v98 = *(v10 + 72);
  v135 = *(v10 + 16);
  v99 = v97 + v98 * (v36 - 1);
  v100 = v22;
  v101 = -v98;
  v123 = v100;
  v102 = v100 - v36;
  v133 = v97;
  v125 = v98;
  a4 = v97 + v36 * v98;
  v128 = v5;
LABEL_85:
  v131 = v99;
  v132 = v36;
  v129 = a4;
  v130 = v102;
  v103 = v99;
  while (1)
  {
    v104 = v140;
    v105 = v135;
    (v135)(v140, a4, v9, v21);
    v106 = v139;
    v105(v139, v103, v141);
    sub_1AB05D094();
    v107 = sub_1AB460494();
    v108 = *v137;
    v109 = v106;
    v9 = v141;
    (*v137)(v109, v141);
    v108(v104, v9);
    if ((v107 & 1) == 0)
    {
LABEL_84:
      v36 = v132 + 1;
      v99 = &v131[v125];
      v102 = v130 - 1;
      a4 = v129 + v125;
      v5 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v6 = v119;
      v22 = v123;
      a3 = v124;
      v10 = v120;
      if (v128 < v123)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v110 = *v136;
    v111 = v134;
    (*v136)(v134, a4, v9);
    swift_arrayInitWithTakeFrontToBack();
    v110(v103, v111, v9);
    v103 += v101;
    a4 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}