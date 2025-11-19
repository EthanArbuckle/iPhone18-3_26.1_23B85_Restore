uint64_t sub_20D8023B0()
{
  v1 = type metadata accessor for GridForecastSnapshotType(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v42[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v42[-1] - v7;
  v9 = type metadata accessor for GridForecastSnapshot(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v42[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GridForecastAppView();
  if (*(v0 + *(v13 + 52)) == 1)
  {
    if (qword_281127108 != -1)
    {
      swift_once();
    }

    v20 = sub_20D9734F8();
    __swift_project_value_buffer(v20, qword_28112AC18);
    v21 = sub_20D9734D8();
    v22 = sub_20D975448();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v42[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_20D7F4DC8(0xD00000000000001DLL, 0x800000020D983770, v42);
      _os_log_impl(&dword_20D7C9000, v21, v22, "%s Forcing Home Forecast", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x20F324260](v24, -1, -1);
      MEMORY[0x20F324260](v23, -1, -1);
    }

    return 1;
  }

  else if (*(v0 + *(v13 + 52)))
  {
    v25 = *(v0 + *(v13 + 24));
    swift_getKeyPath();
    v42[0] = v25;
    sub_20D8050A4(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
    sub_20D972858();

    v26 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
    swift_beginAccess();
    sub_20D80536C(v25 + v26, v12, type metadata accessor for GridForecastSnapshot);
    sub_20D80536C(v12, v4, type metadata accessor for GridForecastSnapshotType);
    sub_20D8053D4(v12, type metadata accessor for GridForecastSnapshot);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v27 = *(v4 + 2);

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
      sub_20D7EAF18(&v4[*(v28 + 64)], v8, &qword_27C8389F8, &qword_20D978460);
    }

    else
    {
      v29 = sub_20D972698();
      (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
      sub_20D8053D4(v4, type metadata accessor for GridForecastSnapshotType);
    }

    v30 = sub_20D972698();
    v31 = (*(*(v30 - 8) + 48))(v8, 1, v30);
    v32 = v31 != 1;
    sub_20D7E3944(v8, &qword_27C8389F8, &qword_20D978460);
    if (qword_281127108 != -1)
    {
      swift_once();
    }

    v33 = sub_20D9734F8();
    __swift_project_value_buffer(v33, qword_28112AC18);
    v34 = sub_20D9734D8();
    v35 = sub_20D975478();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v41 = v37;
      *v36 = 136315394;
      *(v36 + 4) = sub_20D7F4DC8(0xD00000000000001DLL, 0x800000020D983770, &v41);
      *(v36 + 12) = 2080;
      if (v31 == 1)
      {
        v38 = 0x544F4E2073656F64;
      }

      else
      {
        v38 = 5456200;
      }

      if (v31 == 1)
      {
        v39 = 0xED00006576616820;
      }

      else
      {
        v39 = 0xE300000000000000;
      }

      v40 = sub_20D7F4DC8(v38, v39, &v41);

      *(v36 + 14) = v40;
      _os_log_impl(&dword_20D7C9000, v34, v35, "%s home snapshot %s a valid homeID", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v37, -1, -1);
      MEMORY[0x20F324260](v36, -1, -1);
    }

    return v32;
  }

  else
  {
    if (qword_281127108 != -1)
    {
      swift_once();
    }

    v14 = sub_20D9734F8();
    __swift_project_value_buffer(v14, qword_28112AC18);
    v15 = sub_20D9734D8();
    v16 = sub_20D975448();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v42[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_20D7F4DC8(0xD00000000000001DLL, 0x800000020D983770, v42);
      _os_log_impl(&dword_20D7C9000, v15, v16, "%s Forcing Location Forecast", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x20F324260](v18, -1, -1);
      MEMORY[0x20F324260](v17, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_20D802A8C()
{
  if (qword_281127108 != -1)
  {
    swift_once();
  }

  v0 = sub_20D9734F8();
  __swift_project_value_buffer(v0, qword_28112AC18);
  v1 = sub_20D9734D8();
  v2 = sub_20D975478();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20D7C9000, v1, v2, "Updating pill via notification from GridForecastAppView", v3, 2u);
    MEMORY[0x20F324260](v3, -1, -1);
  }

  return sub_20D84B418();
}

uint64_t sub_20D802B74(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 104) = a3;
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;
  sub_20D9752E8();
  *(v3 + 96) = sub_20D9752D8();
  v5 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D802C10, v5, v4);
}

uint64_t sub_20D802C10()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);

  v3 = v2 + *(type metadata accessor for GridForecastAppView() + 48);
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 8);
    v6 = *(v0 + 104);
    v7 = *(v0 + 88);
    v8 = type metadata accessor for GridForecastSnapshot(0);
    LODWORD(v9) = *(v7 + v8[9]);
    *(v0 + 40) = MEMORY[0x277D83B88];
    if (v9 == 12)
    {
      v9 = 0;
    }

    else
    {
      v9 = v9;
    }

    *(v0 + 16) = v9;
    sub_20D7E39A4((v0 + 16), (v0 + 48));
    sub_20D7DD75C(v4);
    v10 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20D8D5160((v0 + 48), 0x737574617473, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    *(v0 + 40) = MEMORY[0x277D839B0];
    *(v0 + 16) = v6;
    sub_20D7E39A4((v0 + 16), (v0 + 48));
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_20D8D5160((v0 + 48), 0xD000000000000024, 0x800000020D983740, v12);
    v13 = (v7 + v8[6]);
    v14 = *v13;
    v15 = v13[1];
    *(v0 + 40) = MEMORY[0x277D837D0];
    *(v0 + 16) = v14;
    *(v0 + 24) = v15;
    sub_20D7E39A4((v0 + 16), (v0 + 48));

    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_20D8D5160((v0 + 48), 0x444964697267, 0xE600000000000000, v16);
    v17 = v10;
    v18 = v7 + v8[5];
    v19 = sub_20D9729C8();
    if (v19)
    {
      v20 = _s12HomeEnergyUI20GridForecastSnapshotV21serializeCleanWindowsySaySDySSypGGSay0A8Services0B6WindowVGFZ_0(v19);

      *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839190, &qword_20D977EB8);
      *(v0 + 16) = v20;
      sub_20D7E39A4((v0 + 16), (v0 + 48));
      v21 = swift_isUniquelyReferenced_nonNull_native();
      sub_20D8D5160((v0 + 48), 0x6957796772656E65, 0xED000073776F646ELL, v21);
    }

    v4(v17);

    sub_20D7DD774(v4);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_20D802E90(uint64_t a1)
{
  if (qword_281127108 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_28112AC18);
  v3 = sub_20D9734D8();
  v4 = sub_20D975478();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20D7C9000, v3, v4, "GridForecastAppView tapped...", v5, 2u);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  result = type metadata accessor for GridForecastAppView();
  v7 = a1 + *(result + 44);
  if (*v7)
  {
    v8 = *(v7 + 8);
    return (*v7)();
  }

  return result;
}

uint64_t sub_20D802F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for GridForecastAppView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - v10;
  v12 = sub_20D973AF8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, *MEMORY[0x277CDD6B8], v12);
  v17 = sub_20D973AE8();
  result = (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v19 = sub_20D975318();
    (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
    sub_20D80536C(a3, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GridForecastAppView);
    sub_20D9752E8();
    v20 = sub_20D9752D8();
    v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    *(v22 + 16) = v20;
    *(v22 + 24) = v23;
    sub_20D80503C(v7, v22 + v21, type metadata accessor for GridForecastAppView);
    sub_20D82D02C(0, 0, v11, &unk_20D978410, v22);
  }

  return result;
}

uint64_t sub_20D803250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_20D9752E8();
  v4[3] = sub_20D9752D8();
  v6 = sub_20D975298();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_20D8032E8, v6, v5);
}

uint64_t sub_20D8032E8()
{
  if (qword_281127108 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  __swift_project_value_buffer(v1, qword_28112AC18);
  v2 = sub_20D9734D8();
  v3 = sub_20D975478();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20D7C9000, v2, v3, "GridForecastAppView reloading onChange...", v4, 2u);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + *(type metadata accessor for GridForecastAppView() + 24));
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_20D803448;

  return GridForecastSnapshotManager.reloadSnapshots()();
}

uint64_t sub_20D803448()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_20D803568, v4, v3);
}

uint64_t sub_20D803568()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t GridForecastViewConfiguration.description.getter()
{
  v1 = *v0;
  v2 = 0x756F446563726F66;
  v3 = 0x6974616D6F747561;
  if (v1 != 3)
  {
    v3 = 0xD00000000000001DLL;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000019;
  if (*v0)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t GridForecastViewConfiguration.hashValue.getter()
{
  v1 = *v0;
  sub_20D975888();
  MEMORY[0x20F323A50](v1);
  return sub_20D9758A8();
}

unint64_t sub_20D8036F8()
{
  v1 = *v0;
  v2 = 0x756F446563726F66;
  v3 = 0x6974616D6F747561;
  if (v1 != 3)
  {
    v3 = 0xD00000000000001DLL;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000019;
  if (*v0)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

void GridForecastAppView.init(snapshotManager:host:explainMenuFunction:hideMenuFunction:viewTapFunction:analyticsFunction:viewConfiguration:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 *a12)
{
  v45 = a7;
  v46 = a8;
  v43 = a5;
  v44 = a6;
  v38 = a2;
  v39 = a3;
  v41 = a4;
  v42 = a11;
  v40 = a10;
  v14 = sub_20D9744B8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *a12;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839290, &unk_20D978118);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for GridForecastAppView();
  v20 = v19[5];
  swift_unknownObjectWeakInit();
  v21 = v19[10];
  v35 = (a9 + v19[9]);
  v36 = (a9 + v21);
  v22 = (a9 + v19[11]);
  v23 = (a9 + v19[12]);
  v24 = v19[14];
  v48 = 0x3FF0000000000000;
  (*(v15 + 104))(v18, *MEMORY[0x277CE0A68], v14);
  sub_20D7E6420();
  sub_20D973B68();
  *(a9 + v19[6]) = a1;
  swift_getKeyPath();
  v48 = a1;
  sub_20D8050A4(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);

  sub_20D972858();

  v25 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedNotificationsSnapshot;
  swift_beginAccess();
  *(a9 + v19[7]) = *(a1 + v25);
  swift_getKeyPath();
  v47 = a1;
  sub_20D972858();

  v26 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationNotificationsSnapshot;
  swift_beginAccess();
  LOBYTE(v26) = *(a1 + v26);

  *(a9 + v19[8]) = v26;
  v27 = v38;
  swift_unknownObjectWeakAssign();

  v29 = v35;
  v28 = v36;
  v30 = v41;
  *v35 = v39;
  v29[1] = v30;
  v31 = v44;
  *v28 = v43;
  v28[1] = v31;
  v32 = v46;
  *v22 = v45;
  v22[1] = v32;
  v33 = v42;
  *v23 = v40;
  v23[1] = v33;
  *(a9 + v19[13]) = v37;
}

uint64_t sub_20D803AAC@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392F0, &unk_20D9783E0);
  v2 = *(v1 - 8);
  v49 = v1 - 8;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8);
  v50 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v48 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = &v47 - v12;
  v13 = sub_20D7EAB84();
  v15 = v14;
  v17 = v16;
  v18 = [objc_opt_self() labelColor];
  sub_20D974888();
  v19 = sub_20D974508();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_20D7EADC0(v13, v15, v17 & 1);

  v52 = v19;
  v53 = v21;
  v54 = v23 & 1;
  v55 = v25;
  v26 = v47;
  sub_20D9747D8();
  sub_20D7EADC0(v19, v21, v23 & 1);

  sub_20D974B68();
  LOBYTE(v25) = sub_20D974328();
  sub_20D973AD8();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392F8, &qword_20D9783F0) + 36)];
  *v35 = v25;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  LOBYTE(v25) = sub_20D974338();
  sub_20D973AD8();
  v36 = v48;
  v37 = &v7[*(v49 + 44)];
  *v37 = v25;
  *(v37 + 1) = v38;
  *(v37 + 2) = v39;
  *(v37 + 3) = v40;
  *(v37 + 4) = v41;
  v37[40] = 0;
  v42 = v26;
  sub_20D7EB7E8(v26, v36, &qword_27C838F18, &unk_20D977860);
  v43 = v50;
  sub_20D7EB7E8(v7, v50, &qword_27C8392F0, &unk_20D9783E0);
  v44 = v51;
  sub_20D7EB7E8(v36, v51, &qword_27C838F18, &unk_20D977860);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839300, &qword_20D9783F8);
  sub_20D7EB7E8(v43, v44 + *(v45 + 48), &qword_27C8392F0, &unk_20D9783E0);
  sub_20D7E3944(v7, &qword_27C8392F0, &unk_20D9783E0);
  sub_20D7E3944(v42, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v43, &qword_27C8392F0, &unk_20D9783E0);
  return sub_20D7E3944(v36, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D803E28@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_20D974168();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392D0, &qword_20D9783C0);
  sub_20D803AAC(a1 + *(v2 + 44));
  v3 = sub_20D974328();
  sub_20D973AD8();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392D8, &qword_20D9783C8) + 36);
  *v12 = v3;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  v13 = sub_20D974348();
  sub_20D973AD8();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392E0, &qword_20D9783D0) + 36);
  *v22 = v13;
  *(v22 + 8) = v15;
  *(v22 + 16) = v17;
  *(v22 + 24) = v19;
  *(v22 + 32) = v21;
  *(v22 + 40) = 0;
  v23 = sub_20D974C48();
  v25 = v24;
  v26 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392E8, &qword_20D9783D8) + 36);
  sub_20D974C08();
  *(v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A78, &unk_20D976E10) + 56)) = 256;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A80, &qword_20D97B670);
  v28 = (v26 + *(result + 36));
  *v28 = v23;
  v28[1] = v25;
  return result;
}

uint64_t sub_20D804010@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_20D8050A4(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972858();

  v6 = *a2;
  swift_beginAccess();
  return sub_20D80536C(v5 + v6, a3, type metadata accessor for GridForecastSnapshot);
}

uint64_t sub_20D804110(uint64_t a1, uint64_t *a2)
{
  v4 = *(*(type metadata accessor for GridForecastSnapshot(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D80536C(a1, v6, type metadata accessor for GridForecastSnapshot);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_20D8050A4(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972848();

  return sub_20D8053D4(v6, type metadata accessor for GridForecastSnapshot);
}

uint64_t sub_20D8042CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_20D9729D8() - 8);
  v6 = ((*(v5 + 80) + 16) & ~*(v5 + 80)) + *(v5 + 64);
  v7 = *(type metadata accessor for GridForecastSnapshot(0) - 8);
  v8 = *(v7 + 80);
  v9 = (v6 + v8 + 1) & ~v8;
  v10 = *(v7 + 64);
  v11 = (v10 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(type metadata accessor for GridForecastAppView() - 8);
  v13 = (v11 + *(v12 + 80) + 40) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v8 + v14 + 16) & ~v8;
  return sub_20D801050(a1, *(v2 + v6), (v2 + v9), (v2 + v11), v2 + v13, *(v2 + v14), *(v2 + v14 + 8), a2, (v2 + v15), v2 + ((v15 + v10 + 7) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((v15 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 40), *(v2 + ((v15 + v10 + 55) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v15 + v10 + 55) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_20D8044B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_20D8050A4(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972858();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t sub_20D80459C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_20D8050A4(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972848();
}

uint64_t sub_20D80465C(uint64_t a1)
{
  v2 = sub_20D973AF8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20D973E48();
}

unint64_t sub_20D80472C()
{
  result = qword_281125118;
  if (!qword_281125118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838E48, &qword_20D977670);
    sub_20D8050A4(qword_281125128, MEMORY[0x277D17E98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281125118);
  }

  return result;
}

uint64_t sub_20D8047E0()
{
  v2 = *(type metadata accessor for GridForecastAppView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for GridForecastSnapshot(0) - 8);
  v6 = v0 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_20D805810;

  return sub_20D802B74(v0 + v3, v6, v7);
}

unint64_t sub_20D804950()
{
  result = qword_281124EB0;
  if (!qword_281124EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839280, &qword_20D9780B0);
    sub_20D804A0C();
    sub_20D8050A4(&qword_281124FD0, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124EB0);
  }

  return result;
}

unint64_t sub_20D804A0C()
{
  result = qword_281124F10;
  if (!qword_281124F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8392B0, &qword_20D978150);
    sub_20D804A98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F10);
  }

  return result;
}

unint64_t sub_20D804A98()
{
  result = qword_281124FB8;
  if (!qword_281124FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8392A8, &unk_20D978140);
    sub_20D804B50();
    sub_20D7EBC4C(&qword_281124FF8, &qword_27C838C98, &unk_20D977550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124FB8);
  }

  return result;
}

unint64_t sub_20D804B50()
{
  result = qword_281124FE8;
  if (!qword_281124FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8392B8, &qword_20D978168);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8392A0, &unk_20D978130);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838E48, &qword_20D977670);
    sub_20D7EBC4C(&qword_281124D58, &qword_27C8392A0, &unk_20D978130);
    sub_20D80472C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124FE8);
  }

  return result;
}

uint64_t sub_20D804C70(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for GridForecastAppView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20D802F90(a1, a2, v6);
}

unint64_t sub_20D804D10()
{
  result = qword_27C8392C0;
  if (!qword_27C8392C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8392C0);
  }

  return result;
}

void sub_20D804D8C()
{
  sub_20D804E78();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GridForecastSnapshotManager();
    if (v1 <= 0x3F)
    {
      sub_20D7E6310();
      if (v2 <= 0x3F)
      {
        sub_20D7E6360();
        if (v3 <= 0x3F)
        {
          sub_20D7E63C4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_20D804E78()
{
  if (!qword_281125010)
  {
    sub_20D973AF8();
    v0 = sub_20D973B28();
    if (!v1)
    {
      atomic_store(v0, &qword_281125010);
    }
  }
}

uint64_t sub_20D804F4C(uint64_t a1)
{
  v4 = *(type metadata accessor for GridForecastAppView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D7EB52C;

  return sub_20D803250(a1, v6, v7, v1 + v5);
}

uint64_t sub_20D80503C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D8050A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_14Tm()
{
  v1 = type metadata accessor for GridForecastAppView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839290, &unk_20D978118);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_20D973AF8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  MEMORY[0x20F324310](&v5[v1[5]]);
  v8 = *&v5[v1[6]];

  v9 = &v5[v1[9]];
  if (*v9)
  {
    v10 = *(v9 + 1);
  }

  v11 = &v5[v1[10]];
  if (*v11)
  {
    v12 = *(v11 + 1);
  }

  v13 = &v5[v1[11]];
  if (*v13)
  {
    v14 = *(v13 + 1);
  }

  v15 = &v5[v1[12]];
  if (*v15)
  {
    v16 = *(v15 + 1);
  }

  v17 = v1[14];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v18 - 8) + 8))(&v5[v17], v18);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D8052D8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for GridForecastAppView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_20D80536C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D8053D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20D805434(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D805810;

  return sub_20D846050(a1, v4, v5, v6);
}

uint64_t objectdestroy_48Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20D805528(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D805810;

  return sub_20D845C30(a1, v4, v5, v6);
}

unint64_t sub_20D805614()
{
  result = qword_27C839340;
  if (!qword_27C839340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8392E8, &qword_20D9783D8);
    sub_20D8056CC();
    sub_20D7EBC4C(&qword_281124E38, &qword_27C838A80, &qword_20D97B670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839340);
  }

  return result;
}

unint64_t sub_20D8056CC()
{
  result = qword_27C839348;
  if (!qword_27C839348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8392E0, &qword_20D9783D0);
    sub_20D805758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839348);
  }

  return result;
}

unint64_t sub_20D805758()
{
  result = qword_27C839350;
  if (!qword_27C839350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8392D8, &qword_20D9783C8);
    sub_20D7EBC4C(&qword_27C839358, &qword_27C839360, &qword_20D978478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839350);
  }

  return result;
}

uint64_t sub_20D805814()
{
  v1 = sub_20D974048();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  if (*(v0 + 8) != 1)
  {
    v7 = *v0;

    sub_20D975468();
    v8 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();
    sub_20D809438(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

double sub_20D80595C()
{
  v1 = sub_20D974048();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  if (*(v0 + 48) == 1)
  {
    result = *(v0 + 16);
    v11 = *(v0 + 24);
    v12 = *(v0 + 32);
    v13 = *(v0 + 40);
  }

  else
  {
    v14 = *(v0 + 16);

    sub_20D975468();
    v15 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();
    sub_20D80948C(v7, v6, v9, v8, 0);
    (*(v2 + 8))(v5, v1);
    return v16;
  }

  return result;
}

uint64_t GridForecastWidgetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839368, &qword_20D978490);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v35 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839370, &unk_20D978498);
  v6 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35 - v11;
  v13 = sub_20D972628();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for GridForecastWidgetView(0);
  sub_20D7EB7E8(v1 + v18[8], v12, &qword_27C8389E8, &qword_20D9768D0);
  v19 = *(v14 + 48);
  if (v19(v12, 1, v13) == 1)
  {
    sub_20D9725C8();
    if (v19(v12, 1, v13) != 1)
    {
      sub_20D7E3944(v12, &qword_27C8389E8, &qword_20D9768D0);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
  }

  v20 = v1 + v18[9];
  if (*(v20 + 8))
  {
    v21 = 12;
  }

  else
  {
    v21 = *v20;
  }

  *v5 = sub_20D974168();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839378, &qword_20D9784A8);
  sub_20D805E64(v1, v17, v21, &v5[*(v22 + 44)]);
  v23 = sub_20D80595C();
  v25 = v24;
  v27 = v26;
  v28 = sub_20D805814();
  v29 = 0.0;
  if ((v28 & 1) == 0)
  {
    v29 = *(v1 + v18[11]);
  }

  v30 = v25 + v29;
  v31 = sub_20D974318();
  sub_20D7EAF18(v5, v8, &qword_27C839368, &qword_20D978490);
  v32 = v36;
  v33 = &v8[*(v35 + 36)];
  *v33 = v31;
  *(v33 + 1) = v23 + -3.0;
  *(v33 + 2) = v30;
  *(v33 + 3) = v27;
  *(v33 + 4) = 0;
  v33[40] = 0;
  sub_20D7EAF18(v8, v32, &qword_27C839370, &unk_20D978498);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_20D805E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a3;
  v48 = a4;
  v43 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8393F0, &qword_20D9786A8);
  v7 = *(v6 - 8);
  v45 = v6 - 8;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v46 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8393F8, &qword_20D9786B0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v44 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = (&v41 - v18);
  v20 = type metadata accessor for GridForecastWidgetView.UsageAdviceView(0);
  sub_20D7EB7E8(a1 + 64, v19 + v20[7], &qword_27C839380, &qword_20D97A7B0);
  v21 = v20[8];
  v22 = sub_20D972628();
  v42 = *(*(v22 - 8) + 16);
  v42(v19 + v21, a2, v22);
  v23 = (a1 + *(type metadata accessor for GridForecastWidgetView(0) + 40));
  v25 = *v23;
  v24 = v23[1];
  *(v19 + v20[5]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *v19 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839400, &unk_20D97D110);
  swift_storeEnumTagMultiPayload();
  v27 = v19 + v20[6];
  *v27 = KeyPath;
  v27[8] = 0;
  v28 = (v19 + v20[9]);
  *v28 = v25;
  v28[1] = v24;

  LOBYTE(v24) = sub_20D974368();
  sub_20D80595C();
  sub_20D973AD8();
  v29 = v19 + *(v14 + 44);
  *v29 = v24;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  v34 = *(a1 + 56);
  v35 = type metadata accessor for EnergyForecastChart();
  v42(&v12[v35[5]], v43, v22);
  *&v12[v35[9]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  swift_storeEnumTagMultiPayload();
  *&v12[v35[10]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA8, &qword_20D976EA0);
  swift_storeEnumTagMultiPayload();
  *v12 = v34;
  *&v12[v35[6]] = v47;
  v12[v35[7]] = 1;
  *&v12[v35[8]] = 0x4010000000000000;
  v36 = v44;
  *&v12[*(v45 + 44)] = xmmword_20D978480;
  sub_20D7EB7E8(v19, v36, &qword_27C8393F8, &qword_20D9786B0);
  v37 = v46;
  sub_20D7EB7E8(v12, v46, &qword_27C8393F0, &qword_20D9786A8);
  v38 = v48;
  sub_20D7EB7E8(v36, v48, &qword_27C8393F8, &qword_20D9786B0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839408, &qword_20D978790);
  sub_20D7EB7E8(v37, v38 + *(v39 + 48), &qword_27C8393F0, &qword_20D9786A8);

  sub_20D7E3944(v12, &qword_27C8393F0, &qword_20D9786A8);
  sub_20D7E3944(v19, &qword_27C8393F8, &qword_20D9786B0);
  sub_20D7E3944(v37, &qword_27C8393F0, &qword_20D9786A8);
  return sub_20D7E3944(v36, &qword_27C8393F8, &qword_20D9786B0);
}

uint64_t GridForecastWidgetView.init(featuredIntervals:forecastUIProvider:referenceTime:debugText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  *(a6 + 16) = swift_getKeyPath();
  v12 = type metadata accessor for GridForecastWidgetView(0);
  *(a6 + 32) = 0;
  *(a6 + 40) = 0;
  *(a6 + 24) = 0;
  *(a6 + 48) = 0;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0;
  *(a6 + 64) = 0u;
  v13 = v12[8];
  v14 = sub_20D972628();
  (*(*(v14 - 8) + 56))(a6 + v13, 1, 1, v14);
  v15 = a6 + v12[9];
  *(a6 + v12[11]) = 0x4018000000000000;
  *(a6 + 56) = a1;

  sub_20D80895C(a2, a6 + 64, &qword_27C839380, &qword_20D97A7B0);
  sub_20D80895C(a3, a6 + v13, &qword_27C8389E8, &qword_20D9768D0);
  *v15 = 12;
  *(v15 + 8) = 0;
  v16 = (a6 + v12[10]);
  *v16 = a4;
  v16[1] = a5;
  if (qword_2811250C0 != -1)
  {
    swift_once();
  }

  v17 = sub_20D9734F8();
  __swift_project_value_buffer(v17, qword_2811250C8);
  sub_20D7EB7E8(a2, v39, &qword_27C839380, &qword_20D97A7B0);

  v18 = sub_20D9734D8();
  v19 = sub_20D975448();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v38 = v21;
    *v20 = 136315650;
    *(v20 + 4) = sub_20D7F4DC8(0xD000000000000043, 0x800000020D9837B0, &v38);
    *(v20 + 12) = 2080;
    v22 = type metadata accessor for FeaturedInterval();
    v23 = MEMORY[0x20F323400](a1, v22);
    v25 = v24;

    v26 = sub_20D7F4DC8(v23, v25, &v38);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2080;
    sub_20D7EB7E8(v39, v35, &qword_27C839380, &qword_20D97A7B0);
    if (v36)
    {
      v27 = v37;
      __swift_project_boxed_opaque_existential_1Tm(v35, v36);
      v28 = *(v27 + 8);
      v29 = sub_20D9757A8();
      v31 = v30;
      __swift_destroy_boxed_opaque_existential_0(v35);
    }

    else
    {
      sub_20D7E3944(v35, &qword_27C839380, &qword_20D97A7B0);
      v31 = 0xE500000000000000;
      v29 = 0x3E6C696E3CLL;
    }

    sub_20D7E3944(v39, &qword_27C839380, &qword_20D97A7B0);
    v33 = sub_20D7F4DC8(v29, v31, &v38);

    *(v20 + 24) = v33;
    _os_log_impl(&dword_20D7C9000, v18, v19, "GridForecastWidgetView:%s: w/ windows %s & provider: %s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v21, -1, -1);
    MEMORY[0x20F324260](v20, -1, -1);

    sub_20D7E3944(a3, &qword_27C8389E8, &qword_20D9768D0);
    v32 = a2;
  }

  else
  {

    sub_20D7E3944(a3, &qword_27C8389E8, &qword_20D9768D0);
    sub_20D7E3944(a2, &qword_27C839380, &qword_20D97A7B0);
    v32 = v39;
  }

  return sub_20D7E3944(v32, &qword_27C839380, &qword_20D97A7B0);
}

uint64_t GridForecastWidgetView.init(featuredIntervals:forecastUIProvider:referenceTime:numHoursToDisplay:debugText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = swift_getKeyPath();
  *(a8 + 8) = 0;
  *(a8 + 16) = swift_getKeyPath();
  v14 = type metadata accessor for GridForecastWidgetView(0);
  *(a8 + 32) = 0;
  *(a8 + 40) = 0;
  *(a8 + 24) = 0;
  *(a8 + 48) = 0;
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0;
  *(a8 + 64) = 0u;
  v15 = v14[8];
  v16 = sub_20D972628();
  (*(*(v16 - 8) + 56))(a8 + v15, 1, 1, v16);
  v17 = a8 + v14[9];
  *(a8 + v14[11]) = 0x4018000000000000;
  *(a8 + 56) = a1;

  sub_20D80895C(a2, a8 + 64, &qword_27C839380, &qword_20D97A7B0);
  v39 = a3;
  sub_20D80895C(a3, a8 + v15, &qword_27C8389E8, &qword_20D9768D0);
  *v17 = a4;
  *(v17 + 8) = a5 & 1;
  v18 = (a8 + v14[10]);
  *v18 = a6;
  v18[1] = a7;
  if (qword_2811250C0 != -1)
  {
    swift_once();
  }

  v19 = sub_20D9734F8();
  __swift_project_value_buffer(v19, qword_2811250C8);
  sub_20D7EB7E8(a2, v44, &qword_27C839380, &qword_20D97A7B0);

  v20 = sub_20D9734D8();
  v21 = sub_20D975448();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v43 = v23;
    *v22 = 136315650;
    *(v22 + 4) = sub_20D7F4DC8(0xD000000000000055, 0x800000020D983800, &v43);
    *(v22 + 12) = 2080;
    v24 = type metadata accessor for FeaturedInterval();
    v25 = MEMORY[0x20F323400](a1, v24);
    v27 = v26;

    v28 = sub_20D7F4DC8(v25, v27, &v43);

    *(v22 + 14) = v28;
    *(v22 + 22) = 2080;
    sub_20D7EB7E8(v44, v40, &qword_27C839380, &qword_20D97A7B0);
    if (v41)
    {
      v29 = v42;
      __swift_project_boxed_opaque_existential_1Tm(v40, v41);
      v30 = *(v29 + 8);
      v31 = sub_20D9757A8();
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_0(v40);
    }

    else
    {
      sub_20D7E3944(v40, &qword_27C839380, &qword_20D97A7B0);
      v33 = 0xE500000000000000;
      v31 = 0x3E6C696E3CLL;
    }

    sub_20D7E3944(v44, &qword_27C839380, &qword_20D97A7B0);
    v35 = sub_20D7F4DC8(v31, v33, &v43);

    *(v22 + 24) = v35;
    _os_log_impl(&dword_20D7C9000, v20, v21, "GridForecastWidgetView:%s: w/ windows %s & provider: %s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v23, -1, -1);
    MEMORY[0x20F324260](v22, -1, -1);

    sub_20D7E3944(v39, &qword_27C8389E8, &qword_20D9768D0);
    v34 = a2;
  }

  else
  {

    sub_20D7E3944(a3, &qword_27C8389E8, &qword_20D9768D0);
    sub_20D7E3944(a2, &qword_27C839380, &qword_20D97A7B0);
    v34 = v44;
  }

  return sub_20D7E3944(v34, &qword_27C839380, &qword_20D97A7B0);
}

uint64_t sub_20D806B20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D974048();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for GridForecastWidgetView.UsageAdviceView(0);
  sub_20D7EB7E8(v1 + *(v12 + 20), v11, &qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20D973D58();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_20D975468();
    v16 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_20D806D28()
{
  v1 = sub_20D974048();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for GridForecastWidgetView.UsageAdviceView(0) + 24);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_20D975468();
    v8 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();
    sub_20D809438(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_20D806E80()
{
  v0 = sub_20D973D58();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  sub_20D806B20(&v16 - v6);
  (*(v1 + 104))(v5, *MEMORY[0x277CDF9F0], v0);
  v8 = sub_20D973D48();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  if (qword_2811250C0 != -1)
  {
    swift_once();
  }

  v10 = sub_20D9734F8();
  __swift_project_value_buffer(v10, qword_2811250C8);
  v11 = sub_20D9734D8();
  v12 = sub_20D975448();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_20D7F4DC8(0x61746544776F6873, 0xEB00000000736C69, &v17);
    *(v13 + 12) = 1024;
    *(v13 + 14) = v8 & 1;
    _os_log_impl(&dword_20D7C9000, v11, v12, "%s %{BOOL}d", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x20F324260](v14, -1, -1);
    MEMORY[0x20F324260](v13, -1, -1);
  }

  return v8 & 1;
}

uint64_t sub_20D8070DC()
{
  v1 = v0;
  v2 = sub_20D9740E8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = *(type metadata accessor for GridForecastWidgetView.UsageAdviceView(0) + 28);
  sub_20D7EB7E8(v0 + v4, v25, &qword_27C839380, &qword_20D97A7B0);
  v5 = v26;
  if (v26)
  {
    v6 = v27;
    __swift_project_boxed_opaque_existential_1Tm(v25, v26);
    v7 = (*(v6 + 16))(1, v5, v6);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0(v25);
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_20D7E3944(v25, &qword_27C839380, &qword_20D97A7B0);
  }

  v9 = 0xE200000000000000;
  v7 = 11565;
LABEL_6:
  v25[0] = v7;
  v25[1] = v9;
  sub_20D7E1EF8();
  v10 = sub_20D9745C8();
  v12 = v11;
  v14 = v13;
  sub_20D7EB7E8(v1 + v4, v25, &qword_27C839380, &qword_20D97A7B0);
  v15 = v26;
  if (v26)
  {
    v16 = v27;
    __swift_project_boxed_opaque_existential_1Tm(v25, v26);
    v17 = (*(v16 + 32))(v15, v16);
    __swift_destroy_boxed_opaque_existential_0(v25);
    if (v17)
    {
      sub_20D9740D8();
      sub_20D9740C8();
      sub_20D9749B8();
      sub_20D9740A8();

      sub_20D9740C8();
      sub_20D974108();
      v18 = sub_20D9745A8();
      v20 = v19;
      v22 = v21;
      v23 = sub_20D974528();
      sub_20D7EADC0(v18, v20, v22 & 1);

      sub_20D7EADC0(v10, v12, v14 & 1);

      return v23;
    }
  }

  else
  {
    sub_20D7E3944(v25, &qword_27C839380, &qword_20D97A7B0);
  }

  return v10;
}

uint64_t sub_20D8073E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v212 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C08, &qword_20D977450);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v200 = &v189 - v5;
  v194 = sub_20D974EA8();
  v192 = *(v194 - 8);
  v6 = *(v192 + 64);
  v7 = MEMORY[0x28223BE20](v194);
  v191 = &v189 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v190 = &v189 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8393A0, &qword_20D978610);
  v198 = *(v10 - 8);
  v199 = v10;
  v11 = *(v198 + 64);
  MEMORY[0x28223BE20](v10);
  v196 = &v189 - v12;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8393A8, &qword_20D978618);
  v13 = *(*(v197 - 8) + 64);
  MEMORY[0x28223BE20](v197);
  v195 = &v189 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8393B0, &qword_20D978620);
  v210 = *(v15 - 8);
  v211 = v15;
  v16 = *(v210 + 64);
  MEMORY[0x28223BE20](v15);
  v193 = &v189 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8393B8, &unk_20D978628);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v223 = &v189 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v227 = &v189 - v22;
  v23 = sub_20D974458();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v189 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v28 = *(*(v208 - 8) + 64);
  MEMORY[0x28223BE20](v208);
  v207 = &v189 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8393C0, &qword_20D978638);
  v221 = *(v30 - 8);
  v222 = v30;
  v31 = v221[8];
  v32 = MEMORY[0x28223BE20](v30);
  v220 = &v189 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v226 = &v189 - v34;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AC0, &qword_20D976F20);
  v35 = *(*(v213 - 8) + 64);
  MEMORY[0x28223BE20](v213);
  v204 = (&v189 - v36);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AC8, &qword_20D976F28);
  v37 = *(*(v205 - 8) + 64);
  MEMORY[0x28223BE20](v205);
  v203 = (&v189 - v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8393C8, &unk_20D978640);
  v218 = *(v39 - 8);
  v219 = v39;
  v40 = v218[8];
  v41 = MEMORY[0x28223BE20](v39);
  v217 = &v189 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v225 = &v189 - v43;
  v44 = type metadata accessor for GridForecastWidgetView.UsageAdviceView(0);
  v45 = *(v44 + 28);
  sub_20D7EB7E8(a1 + v45, &v238, &qword_27C839380, &qword_20D97A7B0);
  v46 = *(&v239 + 1);
  if (*(&v239 + 1))
  {
    v47 = *v240;
    __swift_project_boxed_opaque_existential_1Tm(&v238, *(&v239 + 1));
    *&v202 = (*(v47 + 40))(a1 + *(v44 + 32), v46, v47);
    *(&v202 + 1) = v48;
    __swift_destroy_boxed_opaque_existential_0(&v238);
  }

  else
  {
    sub_20D7E3944(&v238, &qword_27C839380, &qword_20D97A7B0);
    *&v202 = 11565;
    *(&v202 + 1) = 0xE200000000000000;
  }

  sub_20D7EB7E8(a1 + v45, &v238, &qword_27C839380, &qword_20D97A7B0);
  v49 = *(&v239 + 1);
  v209 = v44;
  v214 = v27;
  v215 = v23;
  v224 = v24;
  if (*(&v239 + 1))
  {
    v50 = *v240;
    __swift_project_boxed_opaque_existential_1Tm(&v238, *(&v239 + 1));
    v189 = (*(v50 + 48))(a1 + *(v44 + 32), v49, v50);
    v206 = v51;
    __swift_destroy_boxed_opaque_existential_0(&v238);
  }

  else
  {
    sub_20D7E3944(&v238, &qword_27C839380, &qword_20D97A7B0);
    v206 = 0xE200000000000000;
    v189 = 11565;
  }

  v52 = sub_20D8070DC();
  v54 = v53;
  v216 = a1;
  v56 = v55;
  sub_20D974498();
  v57 = sub_20D974558();
  v59 = v58;
  v61 = v60;

  sub_20D7EADC0(v52, v54, v56 & 1);

  v201 = objc_opt_self();
  v62 = [v201 labelColor];
  sub_20D974888();
  v63 = sub_20D974508();
  v65 = v64;
  v67 = v66;
  v69 = v68;

  sub_20D7EADC0(v57, v59, v61 & 1);

  v70 = v204;
  v71 = (v204 + *(v213 + 36));
  v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE0, &qword_20D976F40) + 28);
  v73 = *MEMORY[0x277CE1050];
  v74 = sub_20D9749F8();
  (*(*(v74 - 8) + 104))(v71 + v72, v73, v74);
  *v71 = swift_getKeyPath();
  *v70 = v63;
  *(v70 + 8) = v65;
  *(v70 + 16) = v67 & 1;
  *(v70 + 24) = v69;
  sub_20D808FBC();
  v75 = v203;
  sub_20D9747D8();
  sub_20D7E3944(v70, &qword_27C838AC0, &qword_20D976F20);
  sub_20D809074();
  sub_20D9746B8();
  sub_20D7E3944(v75, &qword_27C838AC8, &qword_20D976F28);
  v238 = v202;
  v213 = sub_20D7E1EF8();
  v76 = sub_20D9745C8();
  v78 = v77;
  v80 = v79;
  sub_20D974438();
  v81 = *MEMORY[0x277CE0A10];
  v82 = v224;
  v83 = v214;
  v84 = v215;
  v204 = *(v224 + 104);
  v205 = v224 + 104;
  v204(v214, v81, v215);
  sub_20D974478();

  v85 = *(v82 + 8);
  v224 = v82 + 8;
  v203 = v85;
  v85(v83, v84);
  v86 = sub_20D974558();
  v88 = v87;
  LOBYTE(v84) = v89;

  sub_20D7EADC0(v76, v78, v80 & 1);

  sub_20D9743E8();
  v90 = sub_20D9744F8();
  v92 = v91;
  v94 = v93;
  sub_20D7EADC0(v86, v88, v84 & 1);

  v95 = [v201 labelColor];
  sub_20D974888();
  v96 = sub_20D974508();
  v98 = v97;
  LOBYTE(v88) = v99;
  v101 = v100;

  v102 = v94 & 1;
  v103 = v216;
  sub_20D7EADC0(v90, v92, v102);

  *&v238 = v96;
  *(&v238 + 1) = v98;
  LOBYTE(v239) = v88 & 1;
  *(&v239 + 1) = v101;
  v104 = v207;
  sub_20D9747D8();
  v105 = v96;
  v106 = v103;
  sub_20D7EADC0(v105, v98, v88 & 1);

  sub_20D809130();
  sub_20D9746B8();
  sub_20D7E3944(v104, &qword_27C838F18, &unk_20D977860);
  if (sub_20D806E80())
  {
    *&v238 = v189;
    *(&v238 + 1) = v206;
    v107 = sub_20D9745C8();
    v109 = v108;
    v111 = v110;
    sub_20D974488();
    v112 = v214;
    v113 = v215;
    v204(v214, *MEMORY[0x277CE0A18], v215);
    sub_20D974478();

    v203(v112, v113);
    v114 = sub_20D974558();
    v116 = v115;
    LOBYTE(v112) = v117;

    sub_20D7EADC0(v107, v109, v111 & 1);

    sub_20D974968();
    v118 = sub_20D974508();
    v215 = v118;
    v120 = v119;
    v122 = v121;
    v124 = v123;
    v224 = v123;

    v125 = v216;
    sub_20D7EADC0(v114, v116, v112 & 1);

    *&v238 = v118;
    *(&v238 + 1) = v120;
    v126 = v120;
    LOBYTE(v114) = v122 & 1;
    LOBYTE(v239) = v122 & 1;
    *(&v239 + 1) = v124;
    v127 = v190;
    sub_20D9082CC(v190);
    v128 = v191;
    v129 = v192;
    v130 = v194;
    (*(v192 + 104))(v191, *MEMORY[0x277CE3B68], v194);
    sub_20D809444(&qword_281124CB0, MEMORY[0x277CE3BA0]);
    sub_20D975208();
    sub_20D975208();
    v131 = *(v129 + 8);
    v132 = v128;
    v106 = v125;
    v131(v132, v130);
    v131(v127, v130);
    v133 = v196;
    v134 = MEMORY[0x277CE0BD8];
    v135 = MEMORY[0x277CE0BC8];
    sub_20D974868();
    sub_20D7EADC0(v215, v126, v114);

    *&v238 = v134;
    *(&v238 + 1) = v135;
    swift_getOpaqueTypeConformance2();
    v136 = v195;
    v137 = v199;
    sub_20D9747D8();
    (*(v198 + 8))(v133, v137);
    sub_20D80934C();
    v138 = v193;
    sub_20D9746B8();
    sub_20D7E3944(v136, &qword_27C8393A8, &qword_20D978618);
    v140 = v210;
    v139 = v211;
    v141 = v227;
    (*(v210 + 32))(v227, v138, v211);
    v142 = 0;
  }

  else
  {

    v142 = 1;
    v141 = v227;
    v140 = v210;
    v139 = v211;
  }

  (*(v140 + 56))(v141, v142, 1, v139);
  v143 = sub_20D806D28();
  v144 = v209;
  if (v143)
  {
    LOBYTE(v228[0]) = 1;
    LOBYTE(v241) = 0;
    *&v238 = 0;
    BYTE8(v238) = 1;
    v240[24] = 0;
  }

  else
  {
    *&v238 = sub_20D9748F8();
    sub_20D8091EC();
    v145 = sub_20D974998();
    sub_20D974C48();
    sub_20D973C18();
    LOBYTE(v228[0]) = v242;
    v231 = v244;
    v230 = 1;
    *&v238 = v145;
    *(&v238 + 1) = v241;
    LOBYTE(v239) = v242;
    *(&v239 + 1) = v243;
    v240[0] = v244;
    *&v240[8] = v245;
    v240[24] = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8393D0, &qword_20D978680);
  sub_20D809240();
  sub_20D9741B8();
  v235 = v232;
  v236 = v233;
  v237[0] = v234[0];
  *(v237 + 9) = *(v234 + 9);
  v238 = v232;
  v239 = v233;
  *v240 = v234[0];
  *&v240[9] = *(v234 + 9);
  v146 = (v106 + *(v144 + 36));
  v147 = v146[1];
  if (v147)
  {
    *&v228[0] = *v146;
    *(&v228[0] + 1) = v147;
    sub_20D7EB7E8(&v238, &v232, &qword_27C8393D8, &qword_20D978688);

    v148 = sub_20D9745C8();
    v150 = v149;
    v152 = v151;
    v153 = sub_20D9743C8();
    v154 = v200;
    (*(*(v153 - 8) + 56))(v200, 1, 1, v153);
    sub_20D974418();
    sub_20D7E3944(v154, &qword_27C838C08, &qword_20D977450);
    v155 = sub_20D974558();
    v157 = v156;
    v159 = v158;

    sub_20D7EADC0(v148, v150, v152 & 1);

    sub_20D9748B8();
    v160 = sub_20D974508();
    v162 = v161;
    v164 = v163;
    v166 = v165;

    sub_20D7EADC0(v155, v157, v159 & 1);

    v224 = v160;
    v215 = v164 & 1;
    v216 = v162;
    sub_20D7DDC4C(v160, v162, v164 & 1);
    v214 = v166;
  }

  else
  {
    sub_20D7EB7E8(&v238, &v232, &qword_27C8393D8, &qword_20D978688);
    v224 = 0;
    v215 = 0;
    v216 = 0;
    v214 = 0;
  }

  v167 = v217;
  v168 = v218[2];
  v169 = v219;
  v168(v217, v225, v219);
  v170 = v220;
  v213 = v221[2];
  v171 = v222;
  (v213)(v220, v226, v222);
  v172 = v223;
  sub_20D7CE774(v227, v223);
  v173 = v212;
  v168(v212, v167, v169);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8393E0, &qword_20D978690);
  v175 = v171;
  (v213)(&v173[v174[12]], v170, v171);
  sub_20D7CE774(v172, &v173[v174[16]]);
  v176 = &v173[v174[20]];
  v177 = v236;
  v228[0] = v235;
  v228[1] = v236;
  v178 = v237[0];
  v229[0] = v237[0];
  v179 = *(v237 + 9);
  *(v229 + 9) = *(v237 + 9);
  *v176 = v235;
  *(v176 + 1) = v177;
  *(v176 + 2) = v178;
  *(v176 + 41) = v179;
  v180 = &v173[v174[24]];
  sub_20D7EB7E8(v228, &v232, &qword_27C8393E8, &unk_20D978698);
  v181 = v224;
  v182 = v215;
  v183 = v216;
  v184 = v214;
  sub_20D8092C4(v224, v216, v215, v214);
  sub_20D7E3944(&v238, &qword_27C8393D8, &qword_20D978688);
  sub_20D809308(v181, v183, v182, v184);
  *v180 = v181;
  v180[1] = v183;
  v180[2] = v182;
  v180[3] = v184;
  sub_20D7E3944(v227, &qword_27C8393B8, &unk_20D978628);
  v185 = v221[1];
  v185(v226, v175);
  v186 = v219;
  v187 = v218[1];
  v187(v225, v219);
  sub_20D809308(v181, v183, v182, v184);
  v232 = v235;
  v233 = v236;
  v234[0] = v237[0];
  *(v234 + 9) = *(v237 + 9);
  sub_20D7E3944(&v232, &qword_27C8393D8, &qword_20D978688);
  sub_20D7E3944(v223, &qword_27C8393B8, &unk_20D978628);
  v185(v220, v222);
  return (v187)(v217, v186);
}

uint64_t sub_20D8087CC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_20D974168();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839398, &unk_20D978600);
  return sub_20D8073E0(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_20D808820()
{
  sub_20D973FA8();
  sub_20D809444(&qword_281124E48, MEMORY[0x277CE3940]);
  sub_20D974058();
  return v1;
}

uint64_t sub_20D80889C@<X0>(_BYTE *a1@<X8>)
{
  sub_20D973FA8();
  sub_20D809444(&qword_281124E48, MEMORY[0x277CE3940]);
  result = sub_20D974058();
  *a1 = v3;
  return result;
}

void sub_20D80892C(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x20F3221C0]();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t sub_20D80895C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

void sub_20D808A08()
{
  sub_20D808C60(319, &qword_281125000, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_20D808C60(319, &qword_281125018, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_20D808F3C(319, &qword_281126EC8, type metadata accessor for FeaturedInterval, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_20D808BFC();
        if (v3 <= 0x3F)
        {
          sub_20D808F3C(319, &qword_281126E20, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_20D808C60(319, &qword_281124BD8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_20D808C60(319, &qword_281124C28, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_20D808BFC()
{
  if (!qword_281126688[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839388, &qword_20D978588);
    v0 = sub_20D975508();
    if (!v1)
    {
      atomic_store(v0, qword_281126688);
    }
  }
}

void sub_20D808C60(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_20D808CB0()
{
  result = qword_281124F30;
  if (!qword_281124F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839370, &unk_20D978498);
    sub_20D7EBC4C(&qword_281124D40, &qword_27C839368, &qword_20D978490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F30);
  }

  return result;
}

void sub_20D808DB0()
{
  sub_20D808F3C(319, &qword_281125020, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_20D808F3C(319, &qword_281127050, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_20D808C60(319, &qword_281125000, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_20D808BFC();
        if (v3 <= 0x3F)
        {
          sub_20D972628();
          if (v4 <= 0x3F)
          {
            sub_20D808C60(319, &qword_281124C28, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_20D808F3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_20D808FBC()
{
  result = qword_281127010;
  if (!qword_281127010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838AC0, &qword_20D976F20);
    sub_20D7EBC4C(&qword_281126F40, &qword_27C838AE0, &qword_20D976F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281127010);
  }

  return result;
}

unint64_t sub_20D809074()
{
  result = qword_281124EF8;
  if (!qword_281124EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838AC8, &qword_20D976F28);
    sub_20D808FBC();
    sub_20D809444(&qword_281126F38, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124EF8);
  }

  return result;
}

unint64_t sub_20D809130()
{
  result = qword_281124F98;
  if (!qword_281124F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838F18, &unk_20D977860);
    sub_20D809444(&qword_281126F38, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F98);
  }

  return result;
}

unint64_t sub_20D8091EC()
{
  result = qword_281126F28;
  if (!qword_281126F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126F28);
  }

  return result;
}

unint64_t sub_20D809240()
{
  result = qword_281124F68;
  if (!qword_281124F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8393D0, &qword_20D978680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F68);
  }

  return result;
}

uint64_t sub_20D8092C4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_20D7DDC4C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_20D809308(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_20D7EADC0(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_20D80934C()
{
  result = qword_281124F70;
  if (!qword_281124F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8393A8, &qword_20D978618);
    swift_getOpaqueTypeConformance2();
    sub_20D809444(&qword_281126F38, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F70);
  }

  return result;
}

uint64_t sub_20D809438(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_20D809444(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D80948C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t type metadata accessor for EnergyForecastChart()
{
  result = qword_281127710;
  if (!qword_281127710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20D80950C()
{
  sub_20D80966C(319, &qword_281126EC8, type metadata accessor for FeaturedInterval, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20D972628();
    if (v1 <= 0x3F)
    {
      sub_20D80966C(319, &qword_281127058, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_20D80966C(319, &qword_281127060, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20D80966C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20D8096EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D974048();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for EnergyForecastChart();
  sub_20D7EB7E8(v1 + *(v12 + 36), v11, &qword_27C838AA0, &qword_20D978750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20D973B18();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_20D975468();
    v16 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_20D8098F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D974048();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA8, &qword_20D976EA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for EnergyForecastChart();
  sub_20D7EB7E8(v1 + *(v12 + 40), v11, &qword_27C838AA8, &qword_20D976EA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20D974E98();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_20D975468();
    v16 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_20D809AFC@<X0>(uint64_t a1@<X8>)
{
  v163 = a1;
  v158 = sub_20D9744B8();
  v156 = *(v158 - 8);
  v2 = *(v156 + 64);
  MEMORY[0x28223BE20](v158);
  v157 = &v143 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for FeaturedHoursChart(0);
  v4 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161);
  v160 = &v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839428, &unk_20D978828);
  v6 = *(*(v162 - 8) + 64);
  MEMORY[0x28223BE20](v162);
  v159 = &v143 - v7;
  v151 = sub_20D972A08();
  v150 = *(v151 - 8);
  v8 = *(v150 + 64);
  MEMORY[0x28223BE20](v151);
  v149 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D972628();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v164 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v148 = &v143 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v172 = &v143 - v18;
  MEMORY[0x28223BE20](v17);
  v171 = &v143 - v19;
  v154 = sub_20D974E98();
  v147 = *(v154 - 1);
  v20 = *(v147 + 64);
  v21 = MEMORY[0x28223BE20](v154);
  v146 = &v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v145 = &v143 - v23;
  v24 = sub_20D973B18();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v143 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v143 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v143 - v34;
  v155 = type metadata accessor for FeaturedHoursInfo();
  v36 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155);
  v169 = &v143 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *v1;
  v39 = type metadata accessor for EnergyForecastChart();
  v40 = v39[5];
  v144 = *(v1 + v39[6]);
  v165 = v11[2];
  v166 = (v11 + 2);
  v165(v35, v1 + v40, v10);
  v168 = v11;
  v41 = v11[7];
  v170 = v10;
  v41(v35, 0, 1, v10);

  sub_20D8096EC(v31);
  (*(v25 + 104))(v29, *MEMORY[0x277CDF3C0], v24);
  v167 = sub_20D973B08();
  v42 = *(v25 + 8);
  v42(v29, v24);
  v42(v31, v24);
  v43 = v38;
  v44 = *(v1 + v39[8]);
  v153 = *(v1 + v39[7]);
  v45 = v145;
  sub_20D8098F4(v145);
  v46 = v146;
  sub_20D974E88();
  v152 = sub_20D974E78();
  v47 = *(v147 + 8);
  v48 = v46;
  v49 = v154;
  v47(v48, v154);
  v50 = v144;
  v47(v45, v49);
  v154 = v35;
  sub_20D877B28(v35, v38, v171);
  sub_20D973028();
  sub_20D972498();
  if (qword_281127108 != -1)
  {
    swift_once();
  }

  v51 = sub_20D9734F8();
  v52 = __swift_project_value_buffer(v51, qword_28112AC18);
  v53 = sub_20D9734D8();
  v54 = sub_20D975448();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v176[0] = v56;
    *v55 = 136315394;
    *(v55 + 4) = sub_20D7F4DC8(0xD000000000000060, 0x800000020D983930, v176);
    *(v55 + 12) = 2048;
    *(v55 + 14) = v50;
    _os_log_impl(&dword_20D7C9000, v53, v54, "%s Showing a %ld-hour chart", v55, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x20F324260](v56, -1, -1);
    MEMORY[0x20F324260](v55, -1, -1);
  }

  v57 = v170;
  v59 = v164;
  v58 = v165;
  v60 = v148;
  v165(v148, v171, v170);
  v58(v59, v172, v57);

  v61 = sub_20D9734D8();
  v62 = sub_20D975478();

  v63 = os_log_type_enabled(v61, v62);
  v64 = MEMORY[0x277D17F20];
  v164 = v43;
  if (v63)
  {
    v65 = swift_slowAlloc();
    v147 = v52;
    v66 = v65;
    v146 = swift_slowAlloc();
    *&v176[0] = v146;
    *v66 = 136316162;
    *(v66 + 4) = sub_20D7F4DC8(0xD000000000000060, 0x800000020D983930, v176);
    *(v66 + 12) = 2080;
    v67 = type metadata accessor for FeaturedInterval();
    v68 = MEMORY[0x20F323400](v43, v67);
    LODWORD(v145) = v62;
    v70 = sub_20D7F4DC8(v68, v69, v176);

    *(v66 + 14) = v70;
    *(v66 + 22) = 2080;
    v71 = v59;
    v72 = v150;
    v73 = v149;
    v74 = v151;
    (*(v150 + 104))(v149, *v64, v151);
    v75 = sub_20D9729F8();
    v77 = v76;
    (*(v72 + 8))(v73, v74);
    v78 = sub_20D7F4DC8(v75, v77, v176);

    *(v66 + 24) = v78;
    *(v66 + 32) = 2080;
    v79 = sub_20D9725F8();
    v81 = v80;
    v82 = v168[1];
    v82(v60, v57);
    v83 = sub_20D7F4DC8(v79, v81, v176);

    *(v66 + 34) = v83;
    *(v66 + 42) = 2080;
    v84 = sub_20D9725F8();
    v86 = v85;
    v148 = v82;
    v82(v71, v57);
    v43 = v164;
    v87 = sub_20D7F4DC8(v84, v86, v176);

    *(v66 + 44) = v87;
    _os_log_impl(&dword_20D7C9000, v61, v145, "--Start: %s energyWindows: %s, making chart featuring %s hours from %s to %s", v66, 0x34u);
    v88 = v146;
    swift_arrayDestroy();
    MEMORY[0x20F324260](v88, -1, -1);
    MEMORY[0x20F324260](v66, -1, -1);
  }

  else
  {

    v89 = v168[1];
    v89(v59, v57);
    v148 = v89;
    v89(v60, v57);
  }

  v90 = sub_20D9734D8();
  v91 = sub_20D975448();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    *&v176[0] = v147;
    *v92 = 136315906;
    *(v92 + 4) = sub_20D7F4DC8(0xD000000000000060, 0x800000020D983930, v176);
    *(v92 + 12) = 2048;
    *(v92 + 14) = *(v43 + 2);

    *(v92 + 22) = 2080;
    v93 = v150;
    v94 = *(v150 + 104);
    v95 = v149;
    v96 = v151;
    v94(v149, *MEMORY[0x277D17F20], v151);
    v97 = sub_20D9729F8();
    LODWORD(v146) = v91;
    v98 = v97;
    v100 = v99;
    v101 = *(v93 + 8);
    v101(v95, v96);
    v102 = sub_20D7F4DC8(v98, v100, v176);

    *(v92 + 24) = v102;
    *(v92 + 32) = 2080;
    v94(v95, *MEMORY[0x277D17F28], v96);
    v103 = sub_20D9729F8();
    v105 = v104;
    v101(v95, v96);
    v57 = v170;
    v106 = sub_20D7F4DC8(v103, v105, v176);

    *(v92 + 34) = v106;
    _os_log_impl(&dword_20D7C9000, v90, v146, "--End: %s Found %ld between %s and %s energyIntervals", v92, 0x2Au);
    v107 = v147;
    swift_arrayDestroy();
    MEMORY[0x20F324260](v107, -1, -1);
    MEMORY[0x20F324260](v92, -1, -1);
  }

  else
  {
  }

  v108 = v169;
  v109 = objc_opt_self();
  v110 = &selRef_systemWhiteColor;
  if ((v167 & 1) == 0)
  {
    v110 = &selRef_systemOrangeColor;
  }

  v111 = [v109 *v110];
  v151 = sub_20D974888();
  v165(v108, v171, v57);
  sub_20D972458();
  v113 = v112;
  v114 = [objc_opt_self() quaternarySystemFillColor];
  *&v176[0] = sub_20D974888();
  v166 = sub_20D973C28();
  if (qword_2811275A8 != -1)
  {
    swift_once();
  }

  v116 = qword_28112AC68;
  v115 = unk_28112AC70;
  v117 = qword_281127670;

  if (v117 != -1)
  {
    swift_once();
  }

  v119 = qword_28112AC78;
  v118 = unk_28112AC80;
  v120 = qword_281127138;

  if (v120 != -1)
  {
    swift_once();
  }

  v122 = qword_28112AC30;
  v121 = *algn_28112AC38;

  v123 = sub_20D974958();
  sub_20D973B38();
  sub_20D7E3944(v154, &qword_27C8389E8, &qword_20D9768D0);
  v124 = v170;
  v125 = v148;
  (v148)(v172, v170);
  v125(v171, v124);
  v126 = v155;
  v127 = v169;
  *&v169[*(v155 + 20)] = v113;
  *(v127 + v126[6]) = v164;
  *(v127 + v126[7]) = v166;
  v128 = (v127 + v126[8]);
  *v128 = v116;
  v128[1] = v115;
  v129 = (v127 + v126[9]);
  *v129 = v119;
  v129[1] = v118;
  v130 = (v127 + v126[10]);
  *v130 = v122;
  v130[1] = v121;
  *(v127 + v126[11]) = v123;
  *(v127 + v126[12]) = v151;
  v131 = v127 + v126[13];
  v132 = v176[1];
  *v131 = v176[0];
  *(v131 + 16) = v132;
  *(v131 + 32) = v177;
  *(v127 + v126[14]) = v153;
  *(v127 + v126[15]) = v152 & 1;
  *(v127 + v126[16]) = v167 & 1;
  v133 = v160;
  sub_20D80ACB4(v127, v160);
  KeyPath = swift_getKeyPath();
  v135 = v161;
  *(v133 + *(v161 + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  *(v133 + v135[6]) = 0;
  v136 = v135[7];
  v174 = 0x3FF0000000000000;
  (*(v156 + 104))(v157, *MEMORY[0x277CE0A68], v158);
  sub_20D7E6420();
  sub_20D973B68();
  v137 = (v133 + v135[8]);
  v173 = 0;
  sub_20D974A38();
  v138 = v175;
  *v137 = v174;
  v137[1] = v138;
  v139 = (v133 + v135[9]);
  v173 = 0;
  sub_20D974A38();
  v140 = v175;
  *v139 = v174;
  v139[1] = v140;
  if (qword_281127150 != -1)
  {
    swift_once();
  }

  v174 = qword_28112AC40;
  v175 = *algn_28112AC48;
  sub_20D80AE64(qword_281127438, type metadata accessor for FeaturedHoursChart);
  sub_20D7E1EF8();
  v141 = v159;
  sub_20D9747A8();
  sub_20D80AD18(v133, type metadata accessor for FeaturedHoursChart);
  sub_20D973D98();
  sub_20D7E3944(v141, &qword_27C839428, &unk_20D978828);
  return sub_20D80AD18(v127, type metadata accessor for FeaturedHoursInfo);
}

uint64_t sub_20D80ACB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturedHoursInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D80AD18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20D80AD78()
{
  result = qword_281127028;
  if (!qword_281127028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839428, &unk_20D978828);
    sub_20D80AE64(qword_281127438, type metadata accessor for FeaturedHoursChart);
    sub_20D80AE64(&qword_281126F38, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281127028);
  }

  return result;
}

uint64_t sub_20D80AE64(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_20D80AEE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20D80AF28(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20D80AFC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v92 = a1;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839430, &qword_20D9789C0);
  v3 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v82 = &v76 - v4;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839438, &qword_20D9789C8);
  v85 = *(v86 - 8);
  v5 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v81 = &v76 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839440, &qword_20D9789D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v91 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v97 = &v76 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839448, &qword_20D9789D8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v76 - v15;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839450, &qword_20D9789E0);
  v17 = *(*(v80 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v80);
  v89 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v90 = &v76 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v88 = &v76 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v78 = &v76 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v79 = &v76 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v76 - v28;
  v31 = *(v2 + 112);
  v30 = *(v2 + 120);
  v33 = *(v2 + 48);
  v32 = *(v2 + 56);
  v34 = swift_allocObject();
  v34[2] = v31;
  v34[3] = v30;
  v34[4] = v33;
  v34[5] = v32;
  v98 = v31;
  v99 = v30;
  v100 = 0x7269632E6F666E69;
  v101 = 0xEB00000000656C63;

  v35 = v33;
  v36 = v13;
  sub_20D7DD75C(v35);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839458, &qword_20D9789E8);
  v95 = sub_20D7EBC4C(&qword_27C839460, &qword_27C839458, &qword_20D9789E8);
  v96 = v37;
  sub_20D974A88();
  v38 = sub_20D7EBC4C(&qword_27C839468, &qword_27C839448, &qword_20D9789D8);
  v87 = v29;
  v94 = v38;
  sub_20D9747D8();
  v39 = *(v36 + 8);
  v39(v16, v12);
  v40 = *v2 == 1;
  v93 = v39;
  v84 = v36 + 8;
  if (v40)
  {
    if (*(v2 + 1) == 1)
    {
      v41 = *(v2 + 152);
      v78 = *(v2 + 144);
      v43 = *(v2 + 80);
      v42 = *(v2 + 88);
      v77 = v42;
      v76 = v43;
      if (v43)
      {
        v44 = v42;
      }

      else
      {
        sub_20D7E7080(v2 + 8, v102);
        v44 = swift_allocObject();
        sub_20D7EB734(v102, v44 + 16);
        v43 = sub_20D80BF20;
      }

      v53 = swift_allocObject();
      *(v53 + 16) = v43;
      *(v53 + 24) = v44;
      v54 = swift_allocObject();
      *(v54 + 16) = sub_20D80BF80;
      *(v54 + 24) = v53;
      v55 = swift_allocObject();
      v55[2] = v78;
      v55[3] = v41;
      v55[4] = sub_20D80BF78;
      v55[5] = v54;
      MEMORY[0x28223BE20](v55);
      *(&v76 - 4) = v56;
      *(&v76 - 3) = v41;
      *(&v76 - 2) = 0x616C732E6C6C6562;
      *(&v76 - 1) = 0xEA00000000006873;
      sub_20D7DD75C(v76);

      sub_20D974A88();
      v57 = v79;
      sub_20D9747D8();
    }

    else
    {
      v48 = *(v2 + 128);
      v47 = *(v2 + 136);
      v50 = *(v2 + 64);
      v49 = *(v2 + 72);
      v79 = v49;
      v77 = v50;
      if (v50)
      {
        v51 = sub_20D80BF80;
        v52 = v49;
      }

      else
      {
        sub_20D7E7080(v2 + 8, v102);
        v52 = swift_allocObject();
        sub_20D7EB734(v102, v52 + 16);
        v51 = sub_20D80BDA8;
        v50 = sub_20D7EB74C;
      }

      v58 = swift_allocObject();
      *(v58 + 16) = v50;
      *(v58 + 24) = v52;
      v59 = swift_allocObject();
      *(v59 + 16) = v51;
      *(v59 + 24) = v58;
      v60 = swift_allocObject();
      v60[2] = v48;
      v60[3] = v47;
      v60[4] = sub_20D80BDD0;
      v60[5] = v59;
      MEMORY[0x28223BE20](v60);
      *(&v76 - 4) = v48;
      *(&v76 - 3) = v47;
      *(&v76 - 2) = 1819043170;
      *(&v76 - 1) = 0xE400000000000000;
      sub_20D7DD75C(v77);

      sub_20D974A88();
      v57 = v78;
      sub_20D9747D8();
      v39 = v93;
    }

    v39(v16, v12);
    sub_20D7EB7E8(v57, v82, &qword_27C839450, &qword_20D9789E0);
    swift_storeEnumTagMultiPayload();
    sub_20D80BDF8();
    v61 = v81;
    sub_20D9741B8();
    sub_20D7E3944(v57, &qword_27C839450, &qword_20D9789E0);
    v46 = v97;
    sub_20D80BEB0(v61, v97);
    v45 = 0;
  }

  else
  {
    v45 = 1;
    v46 = v97;
  }

  (*(v85 + 56))(v46, v45, 1, v86);
  v63 = *(v2 + 160);
  v62 = *(v2 + 168);
  v64 = *(v2 + 96);
  v65 = *(v2 + 104);
  v66 = swift_allocObject();
  v66[2] = v63;
  v66[3] = v62;
  v66[4] = v64;
  v66[5] = v65;
  MEMORY[0x28223BE20](v66);
  *(&v76 - 4) = v63;
  *(&v76 - 3) = v62;
  strcpy(&v76 - 16, "minus.circle");
  *(&v76 - 3) = 0;
  *(&v76 - 1) = -5120;

  sub_20D7DD75C(v64);
  sub_20D974A88();
  v67 = v88;
  sub_20D9747D8();
  v93(v16, v12);
  v68 = v87;
  v69 = v90;
  sub_20D7EB7E8(v87, v90, &qword_27C839450, &qword_20D9789E0);
  v70 = v97;
  v71 = v91;
  sub_20D7EB7E8(v97, v91, &qword_27C839440, &qword_20D9789D0);
  v72 = v89;
  sub_20D7EB7E8(v67, v89, &qword_27C839450, &qword_20D9789E0);
  v73 = v92;
  sub_20D7EB7E8(v69, v92, &qword_27C839450, &qword_20D9789E0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839470, &qword_20D9789F0);
  sub_20D7EB7E8(v71, v73 + *(v74 + 48), &qword_27C839440, &qword_20D9789D0);
  sub_20D7EB7E8(v72, v73 + *(v74 + 64), &qword_27C839450, &qword_20D9789E0);
  sub_20D7E3944(v67, &qword_27C839450, &qword_20D9789E0);
  sub_20D7E3944(v70, &qword_27C839440, &qword_20D9789D0);
  sub_20D7E3944(v68, &qword_27C839450, &qword_20D9789E0);
  sub_20D7E3944(v72, &qword_27C839450, &qword_20D9789E0);
  sub_20D7E3944(v71, &qword_27C839440, &qword_20D9789D0);
  return sub_20D7E3944(v69, &qword_27C839450, &qword_20D9789E0);
}

void sub_20D80BBA8(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  if (qword_281127108 != -1)
  {
    swift_once();
  }

  v6 = sub_20D9734F8();
  __swift_project_value_buffer(v6, qword_28112AC18);

  v7 = sub_20D9734D8();
  v8 = sub_20D975448();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_20D7F4DC8(a1, a2, &v11);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F324260](v10, -1, -1);
    MEMORY[0x20F324260](v9, -1, -1);
  }

  if (a3)
  {
    a3();
  }
}

uint64_t sub_20D80BD1C()
{
  sub_20D7E1EF8();

  return sub_20D974A28();
}

uint64_t sub_20D80BD9C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_20D80BD1C();
}

uint64_t sub_20D80BDA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_20D80BDD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_20D80BDF8()
{
  result = qword_27C839478;
  if (!qword_27C839478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839450, &qword_20D9789E0);
    sub_20D7EBC4C(&qword_27C839468, &qword_27C839448, &qword_20D9789D8);
    sub_20D7EB424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839478);
  }

  return result;
}

uint64_t sub_20D80BEB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839438, &qword_20D9789C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D80BF20()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v1);
  return (*(v2 + 88))(v1, v2);
}

HomeEnergyUI::UtilityRateInfoSnapshotManager::SnapshotManagerType_optional __swiftcall UtilityRateInfoSnapshotManager.SnapshotManagerType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20D975788();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t UtilityRateInfoSnapshotManager.SnapshotManagerType.rawValue.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 1801678701;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6572616853707061;
  }
}

uint64_t sub_20D80C03C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x800000020D981530;
  v5 = 0xE400000000000000;
  if (v2 == 1)
  {
    v5 = 0x800000020D981530;
  }

  else
  {
    v3 = 1801678701;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6572616853707061;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE900000000000064;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 1801678701;
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6572616853707061;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20D9757C8();
  }

  return v11 & 1;
}

uint64_t sub_20D80C128()
{
  v1 = *v0;
  sub_20D975888();
  sub_20D975158();

  return sub_20D9758A8();
}

uint64_t sub_20D80C1CC()
{
  *v0;
  *v0;
  sub_20D975158();
}

uint64_t sub_20D80C25C()
{
  v1 = *v0;
  sub_20D975888();
  sub_20D975158();

  return sub_20D9758A8();
}

void sub_20D80C308(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0x800000020D981530;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 1801678701;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6572616853707061;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_20D80C368@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_20D80C410@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_20D80C4B8(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x800000020D981530;
  v5 = 0xE400000000000000;
  if (*(v1 + 16) == 1)
  {
    v5 = 0x800000020D981530;
  }

  else
  {
    v3 = 1801678701;
  }

  if (*(v1 + 16))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6572616853707061;
  }

  if (*(v1 + 16))
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE900000000000064;
  }

  v8 = 0xD000000000000010;
  if (v2 != 1)
  {
    v8 = 1801678701;
    v4 = 0xE400000000000000;
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6572616853707061;
  }

  if (v2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v6 == v9 && v7 == v10)
  {

LABEL_22:
    *(v1 + 16) = v2;
    return result;
  }

  v12 = sub_20D9757C8();

  if (v12)
  {
    goto LABEL_22;
  }

  swift_getKeyPath();
  MEMORY[0x28223BE20]();
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972848();
}

uint64_t sub_20D80C68C()
{
  v5 = 0;
  v0 = type metadata accessor for UtilityRateInfoSnapshotManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = UtilityRateInfoSnapshotManager.init(type:siteID:)(&v5, 0, 0);
  qword_27C839490 = v3;
  return result;
}

uint64_t UtilityRateInfoSnapshotManager.__allocating_init(type:siteID:)(char *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  UtilityRateInfoSnapshotManager.init(type:siteID:)(a1, a2, a3);
  return v9;
}

uint64_t sub_20D80C760()
{
  v0 = sub_20D972628();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 2;
  sub_20D972618();
  v4 = type metadata accessor for UtilityRateInfoSnapshotManager();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  result = UtilityRateInfoSnapshotManager.init(type:startDate:siteID:ratePlanName:utilityPeakPeriods:)(&v10, v3, 0, 0, 0, 0, 0);
  qword_27C839498 = v7;
  return result;
}

uint64_t UtilityRateInfoSnapshotManager.__allocating_init(type:startDate:siteID:ratePlanName:utilityPeakPeriods:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  UtilityRateInfoSnapshotManager.init(type:startDate:siteID:ratePlanName:utilityPeakPeriods:)(a1, a2, a3, a4, a5, a6, a7);
  return v17;
}

uint64_t sub_20D80C8C4(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_20D80C974@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_20D80CA4C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  swift_beginAccess();
  v2 = *(v0 + 24);
  v1 = *(v4 + 32);

  return v2;
}

uint64_t sub_20D80CB10(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 24) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 32);
      if (sub_20D9757C8())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  swift_getKeyPath();
  MEMORY[0x28223BE20]();
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972848();
}

uint64_t sub_20D80CC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 32);
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
}

void (*sub_20D80CCE0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D972878();

  v4[7] = sub_20D80C924();
  return sub_20D80CE18;
}

uint64_t sub_20D80CE88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  v4 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot;
  swift_beginAccess();
  return sub_20D815A38(v3 + v4, a2);
}

uint64_t sub_20D80CF50(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for UtilityRateInfoSnapshot();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D815A38(a1, v7);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972848();

  return sub_20D815AB8(v7);
}

uint64_t sub_20D80D078@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  v3 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot;
  swift_beginAccess();
  return sub_20D815A38(v5 + v3, a1);
}

uint64_t sub_20D80D140(uint64_t a1)
{
  swift_getKeyPath();
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972848();

  return sub_20D815AB8(a1);
}

uint64_t sub_20D80D210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UtilityRateInfoSnapshot();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D815A38(a2, v7);
  v8 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot;
  swift_beginAccess();
  sub_20D81A514(v7, a1 + v8);
  return swift_endAccess();
}

void (*sub_20D80D2CC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D972878();

  v4[7] = sub_20D80CE24();
  return sub_20D80D404;
}

void (*sub_20D80D4D8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D972878();

  v4[7] = sub_20D80D410();
  return sub_20D80D610;
}

uint64_t sub_20D80D690@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  v6 = (v5 + *a2);
  swift_beginAccess();
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_20D80D7D4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];

  return v6;
}

uint64_t sub_20D80D8C4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  if (v7)
  {
    if (a2)
    {
      if (*v6 == a1 && v7 == a2)
      {
        goto LABEL_8;
      }

      v9 = v6[1];
      if (sub_20D9757C8())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v6 = a1;
    v6[1] = a2;
  }

  swift_getKeyPath();
  MEMORY[0x28223BE20]();
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972848();
}

uint64_t sub_20D80DA2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a1 + *a4);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a2;
  v6[1] = a3;
}

void (*sub_20D80DA9C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D972878();

  v4[7] = sub_20D80D61C();
  return sub_20D80DBD4;
}

void sub_20D80DBE0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_20D972868();

  free(v1);
}

uint64_t sub_20D80DC74@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  v3 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__lastReloadDate;
  swift_beginAccess();
  v4 = sub_20D972628();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_20D80DD6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  v4 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__lastReloadDate;
  swift_beginAccess();
  v5 = sub_20D972628();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_20D80DE64(uint64_t a1, uint64_t *a2)
{
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_20D80DF30(v7);
}

uint64_t sub_20D80DF30(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20D972628();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__lastReloadDate;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_20D81A4CC(&qword_281127740, MEMORY[0x277CC9578]);
  v15[0] = a1;
  LOBYTE(a1) = sub_20D974FD8();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v15[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13 = v15[0];
    v15[-2] = v2;
    v15[-1] = v13;
    v15[1] = v2;
    sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
    sub_20D972848();
  }

  return (v11)(v15[0], v4);
}

uint64_t sub_20D80E1D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D972628();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__lastReloadDate;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

uint64_t sub_20D80E2EC()
{
  swift_getKeyPath();
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  return *(v0 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__tileRefreshPeriod);
}

uint64_t sub_20D80E394@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  *a2 = *(v3 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__tileRefreshPeriod);
  return result;
}

uint64_t sub_20D80E444(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__tileRefreshPeriod) != result)
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
    sub_20D972848();
  }

  return result;
}

uint64_t UtilityRateInfoSnapshotManager.init(type:startDate:siteID:ratePlanName:utilityPeakPeriods:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v8 = v7;
  v107 = a6;
  v108 = a7;
  v100 = a5;
  v109 = a4;
  v101 = a3;
  v115 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v95 - v12;
  v106 = sub_20D972838();
  v111 = *(v106 - 8);
  v14 = *(v111 + 64);
  MEMORY[0x28223BE20](v106);
  v105 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UtilityRateInfoSnapshot();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v103 = (&v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v102 = &v95 - v21;
  MEMORY[0x28223BE20](v20);
  v99 = &v95 - v22;
  v23 = sub_20D972628();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v104 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v95 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v95 - v31;
  v33 = *a1;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  if (qword_27C838778 != -1)
  {
    swift_once();
  }

  v112 = v16;
  v34 = __swift_project_value_buffer(v16, qword_27C83C9B0);
  sub_20D815A38(v34, v8 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot);
  v35 = (v8 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__utilityArtworkURL);
  *v35 = 0;
  v35[1] = 0;
  v36 = (v8 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__utilityName);
  *v36 = 0;
  v36[1] = 0;
  sub_20D972888();
  *(v8 + 16) = v33;
  sub_20D9725C8();
  v113 = v24;
  (*(v24 + 32))(v8 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__lastReloadDate, v32, v23);
  v37 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v38 = sub_20D975078();
  v39 = [v37 initWithSuiteName_];

  v114 = v23;
  if (v39)
  {
    v40 = sub_20D975078();
    v41 = [v39 integerForKey_];
  }

  else
  {
    v41 = 0;
  }

  v42 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__tileRefreshPeriod;
  *(v8 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__tileRefreshPeriod) = v41;
  swift_getKeyPath();
  v43 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager___observationRegistrar;
  v116[0] = v8;
  v110 = sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  if (*(v8 + v42) <= 0)
  {
    sub_20D973118();
    if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v44 > -9.22337204e18)
    {
      if (v44 < 9.22337204e18)
      {
        v45 = v44;
        if (*(v8 + v42) != v44)
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          *(&v95 - 2) = v8;
          *(&v95 - 1) = v45;
          v116[0] = v8;
          sub_20D972848();
        }

        goto LABEL_12;
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_12:
  v46 = v111;
  v47 = v112;
  if (v33 > 1)
  {
LABEL_23:

    if (qword_27C838588 != -1)
    {
      swift_once();
    }

    v73 = __swift_project_value_buffer(v47, qword_27C839D20);
    v74 = v103;
    sub_20D815A38(v73, v103);
    v75 = swift_getKeyPath();
    MEMORY[0x28223BE20](v75);
    *(&v95 - 2) = v8;
    *(&v95 - 1) = v74;
    v116[0] = v8;
    sub_20D972848();

    (*(v113 + 8))(v115, v114);
    sub_20D815AB8(v74);
    return v8;
  }

  v97 = 0;
  v98 = v43;
  v48 = v30;
  v49 = v30;
  v50 = v114;
  v103 = *(v113 + 16);
  (v103)(v49, v115, v114);
  sub_20D9727F8();
  v51 = v106;
  if ((*(v46 + 48))(v13, 1, v106) == 1)
  {
    goto LABEL_33;
  }

  v52 = v107;
  v53 = 0xE000000000000000;
  if (v107)
  {
    v53 = v107;
  }

  v107 = v53;
  v54 = v100;
  if (!v52)
  {
    v54 = 0;
  }

  v100 = v54;
  v55 = v105;
  (*(v46 + 32))(v105, v13, v51);
  v56 = v108;
  if (!v108)
  {
    v56 = MEMORY[0x277D84F90];
  }

  v108 = v56;
  v57 = v104;
  v96 = v48;
  v58 = v103;
  (v103)(v104, v48, v50);
  v59 = v47[10];
  v60 = v102;
  v102[v59] = 7;
  v61 = v51;
  v62 = v47[11];
  *(v60 + v62) = 6;
  v63 = v109;
  *v60 = v101;
  v60[1] = v63;
  v64 = v55;
  v65 = v60;
  (*(v46 + 16))(v60 + v47[9], v64, v61);
  v58(&v65[v47[5]], v57, v50);
  v66 = &v65[v47[8]];
  v67 = v107;
  v68 = v108;
  *v66 = v100;
  *(v66 + 1) = v67;
  v65[v59] = 7;
  v65[v62] = 6;
  v69 = sub_20D817948(v68);

  v70 = *(v69 + 16);
  if (v70)
  {
    v71 = sub_20D815D18(*(v69 + 16), 0);
    v72 = *(sub_20D973158() - 8);
    v109 = sub_20D81754C(v116, &v71[(*(v72 + 80) + 32) & ~*(v72 + 80)], v70, v69);
    v47 = v116[2];

    sub_20D817AE4();
    if (v109 != v70)
    {
      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {
    v71 = MEMORY[0x277D84F90];
  }

  v116[0] = v71;
  v76 = v97;
  sub_20D815E14(v116);
  v77 = v112;
  v78 = v113;
  v109 = v76;
  if (!v76)
  {

    v79 = v116[0];
    *&v65[v77[12]] = v116[0];
    v80 = v77[6];

    v81 = v104;
    v82 = v65;
    v83 = v105;
    sub_20D972F88();
    v84 = v77[7];
    sub_20D9730F8();
    _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v82 + v80, v82 + v84, v79, v83);
    *(v82 + v77[13]) = v85;
    _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v81, v82 + v84, v79, v83);
    v87 = v86;

    v88 = *(v78 + 8);
    v89 = v81;
    v90 = v114;
    v88(v89, v114);
    (*(v111 + 8))(v83, v106);
    v88(v96, v90);
    *(v82 + v77[14]) = v87;
    v91 = v99;
    sub_20D817AEC(v82, v99);
    v92 = swift_getKeyPath();
    MEMORY[0x28223BE20](v92);
    *(&v95 - 2) = v8;
    *(&v95 - 1) = v91;
    v116[0] = v8;
    sub_20D972848();

    sub_20D815AB8(v91);
    sub_20D80EFD4();
    v88(v115, v90);
    return v8;
  }

LABEL_34:

  __break(1u);
  return result;
}

void sub_20D80EFD4()
{
  v1 = v0;
  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_27C840CE0);
  v3 = sub_20D9734D8();
  v4 = sub_20D975478();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C80, &v15);
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s: registering for foreground notifications", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x20F324260](v6, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  v7 = [objc_opt_self() defaultCenter];
  v8 = *MEMORY[0x277D76758];
  v19 = sub_20D81A290;
  v20 = v1;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_20D82D950;
  v18 = &block_descriptor_0;
  v9 = _Block_copy(&v15);

  v10 = [v7 addObserverForName:v8 object:0 queue:0 usingBlock:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();

  sub_20D81A2E0();
  v11 = [swift_getObjCClassFromMetadata() defaultCenter];
  sub_20D972F08();
  v12 = sub_20D975078();

  v19 = sub_20D81A32C;
  v20 = v1;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_20D82D950;
  v18 = &block_descriptor_90;
  v13 = _Block_copy(&v15);

  v14 = [v11 addObserverForName:v12 object:0 queue:0 usingBlock:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();
}

uint64_t UtilityRateInfoSnapshotManager.__allocating_init(siteID:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  swift_allocObject();
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20D80F3B0;

  return UtilityRateInfoSnapshotManager.init(siteID:)(a1, a2);
}

uint64_t sub_20D80F3B0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t UtilityRateInfoSnapshotManager.init(siteID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_20D972628();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  sub_20D9752E8();
  v3[8] = sub_20D9752D8();
  v8 = sub_20D975298();
  v3[9] = v8;
  v3[10] = v7;

  return MEMORY[0x2822009F8](sub_20D80F5A4, v8, v7);
}

uint64_t sub_20D80F5A4()
{
  v26 = v0;
  v1 = v0[4];
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  if (qword_27C838778 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v3 = type metadata accessor for UtilityRateInfoSnapshot();
  v4 = __swift_project_value_buffer(v3, qword_27C83C9B0);
  sub_20D815A38(v4, v2 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot);
  v5 = (v2 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__utilityArtworkURL);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v2 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__utilityName);
  *v6 = 0;
  v6[1] = 0;
  sub_20D972888();
  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v7 = v0[3];
  v8 = sub_20D9734F8();
  __swift_project_value_buffer(v8, qword_27C840CE0);

  v9 = sub_20D9734D8();
  v10 = sub_20D975478();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = v0[2];
    v11 = v0[3];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_20D7F4DC8(0x7469732874696E69, 0xED0000293A444965, &v25);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_20D7F4DC8(v12, v11, &v25);
    _os_log_impl(&dword_20D7C9000, v9, v10, "UtilityRateInfoSnapshotManager:%s awaiting initialization with %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v14, -1, -1);
    MEMORY[0x20F324260](v13, -1, -1);
  }

  v16 = v0[6];
  v15 = v0[7];
  v18 = v0[4];
  v17 = v0[5];
  *(v1 + 16) = 1;
  sub_20D9725C8();
  (*(v16 + 32))(v18 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__lastReloadDate, v15, v17);
  result = sub_20D973118();
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v0[4] + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__tileRefreshPeriod) = v20;
  v21 = swift_task_alloc();
  v0[11] = v21;
  *v21 = v0;
  v21[1] = sub_20D80F8D8;
  v22 = v0[3];
  v23 = v0[4];
  v24 = v0[2];

  return sub_20D80FEF0(v24, v22);
}

uint64_t sub_20D80F8D8()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 24);
  v7 = *v0;

  v4 = *(v1 + 80);
  v5 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_20D80FA1C, v5, v4);
}

uint64_t sub_20D80FA1C()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[4];

  return v3(v4);
}

uint64_t UtilityRateInfoSnapshotManager.init(type:siteID:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UtilityRateInfoSnapshot();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v28 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D972628();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (qword_27C838778 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v8, qword_27C83C9B0);
  sub_20D815A38(v17, v4 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot);
  v18 = (v4 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__utilityArtworkURL);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v4 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__utilityName);
  *v19 = 0;
  v19[1] = 0;
  sub_20D972888();
  *(v4 + 16) = v16;
  v20 = *(v4 + 32);

  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  sub_20D9725C8();
  (*(v12 + 32))(v4 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__lastReloadDate, v15, v11);
  *(v4 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__tileRefreshPeriod) = sub_20D817B50();
  swift_getKeyPath();
  v29 = v4;
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  if (*(v4 + 16))
  {
    v21 = v28;
    if (*(v4 + 16) != 1)
    {

      goto LABEL_10;
    }
  }

  else
  {
    v21 = v28;
  }

  v22 = sub_20D9757C8();

  if ((v22 & 1) == 0)
  {
    sub_20D815A38(v17, v21);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v27 - 2) = v4;
    *(&v27 - 1) = v21;
    v29 = v4;
    goto LABEL_13;
  }

LABEL_10:
  if (qword_27C838520 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v8, qword_27C839C08);
  sub_20D815A38(v24, v21);
  v25 = swift_getKeyPath();
  MEMORY[0x28223BE20](v25);
  *(&v27 - 2) = v4;
  *(&v27 - 1) = v21;
  v29 = v4;
LABEL_13:
  sub_20D972848();

  sub_20D815AB8(v21);
  sub_20D80EFD4();
  return v4;
}

uint64_t type metadata accessor for UtilityRateInfoSnapshotManager()
{
  result = qword_281125598;
  if (!qword_281125598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20D80FEF0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_20D9752E8();
  v3[5] = sub_20D9752D8();
  v5 = sub_20D975298();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_20D80FF8C, v5, v4);
}

uint64_t sub_20D80FF8C()
{
  v16 = v0;
  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_20D9734F8();
  v0[8] = __swift_project_value_buffer(v2, qword_27C840CE0);

  v3 = sub_20D9734D8();
  v4 = sub_20D975478();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_20D7F4DC8(0xD000000000000014, 0x800000020D983AE0, &v15);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_20D7F4DC8(v6, v5, &v15);
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s: start %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];

  sub_20D80CB10(v11, v9);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_20D8101A4;
  v13 = v0[4];

  return sub_20D810448();
}

uint64_t sub_20D8101A4()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_20D8102C4, v4, v3);
}

uint64_t sub_20D8102C4()
{
  v13 = v0;
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[3];

  v4 = sub_20D9734D8();
  v5 = sub_20D975478();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_20D7F4DC8(0xD000000000000014, 0x800000020D983AE0, &v12);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_20D7F4DC8(v7, v6, &v12);
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s: end %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_20D810448()
{
  v1[27] = v0;
  v2 = sub_20D972628();
  v1[28] = v2;
  v3 = *(v2 - 8);
  v1[29] = v3;
  v4 = *(v3 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v5 = sub_20D972EA8();
  v1[35] = v5;
  v6 = *(v5 - 8);
  v1[36] = v6;
  v7 = *(v6 + 64) + 15;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v8 = type metadata accessor for UtilityRateInfoSnapshot();
  v1[39] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0) - 8) + 64) + 15;
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v11 = sub_20D972838();
  v1[47] = v11;
  v12 = *(v11 - 8);
  v1[48] = v12;
  v13 = *(v12 + 64) + 15;
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  sub_20D9752E8();
  v1[53] = sub_20D9752D8();
  v15 = sub_20D975298();
  v1[54] = v15;
  v1[55] = v14;

  return MEMORY[0x2822009F8](sub_20D8106F8, v15, v14);
}

uint64_t sub_20D8106F8()
{
  v38 = v0;
  v1 = v0[27];
  swift_getKeyPath();
  v0[19] = v1;
  v0[56] = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager___observationRegistrar;
  v0[57] = sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  swift_beginAccess();
  v2 = *(v1 + 24);
  v0[58] = v2;
  v3 = *(v1 + 32);
  v0[59] = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_20D972CD8();
    v5 = *(MEMORY[0x277D07690] + 4);
    swift_bridgeObjectRetain_n();
    v6 = swift_task_alloc();
    v0[60] = v6;
    *v6 = v0;
    v6[1] = sub_20D810B78;

    return MEMORY[0x28215C988](v2, v3);
  }

  else
  {
LABEL_8:
    v7 = v0[53];

    if (qword_27C838480 != -1)
    {
      swift_once();
    }

    v8 = sub_20D9734F8();
    __swift_project_value_buffer(v8, qword_27C840CE0);
    v9 = sub_20D9734D8();
    v10 = sub_20D975438();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v37 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D983BC0, &v37);
      _os_log_impl(&dword_20D7C9000, v9, v10, "%s: Site ID is empty, no Utility Rate snapshots to get.... setting infoSnapshot to error", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x20F324260](v12, -1, -1);
      MEMORY[0x20F324260](v11, -1, -1);
    }

    if (qword_27C838780 != -1)
    {
      swift_once();
    }

    v13 = v0[44];
    v14 = v0[27];
    v15 = __swift_project_value_buffer(v0[39], qword_27C83C9C8);
    sub_20D815A38(v15, v13);
    swift_getKeyPath();
    v16 = swift_task_alloc();
    *(v16 + 16) = v14;
    *(v16 + 24) = v13;
    v0[20] = v14;
    sub_20D972848();

    v17 = v0[51];
    v18 = v0[52];
    v20 = v0[49];
    v19 = v0[50];
    v22 = v0[45];
    v21 = v0[46];
    v24 = v0[43];
    v23 = v0[44];
    v27 = v0[42];
    v28 = v0[41];
    v29 = v0[40];
    v30 = v0[38];
    v31 = v0[37];
    v32 = v0[34];
    v33 = v0[33];
    v34 = v0[32];
    v35 = v0[31];
    v36 = v0[30];

    sub_20D815AB8(v23);

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_20D810B78(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v7 = *v1;
  *(*v1 + 488) = a1;

  v4 = *(v2 + 440);
  v5 = *(v2 + 432);

  return MEMORY[0x2822009F8](sub_20D810CA0, v5, v4);
}

uint64_t sub_20D810CA0()
{
  v107 = v0;
  v1 = v0[61];
  if (!v1)
  {
    v10 = v0[53];

    if (qword_27C838480 != -1)
    {
      swift_once();
    }

    v11 = v0[59];
    v12 = sub_20D9734F8();
    __swift_project_value_buffer(v12, qword_27C840CE0);

    v13 = sub_20D9734D8();
    v14 = sub_20D975458();

    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[59];
    if (v15)
    {
      v17 = v0[58];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v106[0] = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D983BC0, v106);
      *(v18 + 12) = 2080;
      v20 = sub_20D7F4DC8(v17, v16, v106);

      *(v18 + 14) = v20;
      _os_log_impl(&dword_20D7C9000, v13, v14, "%s: Failed to initialize Energy Site for %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v19, -1, -1);
      MEMORY[0x20F324260](v18, -1, -1);
    }

    else
    {
    }

    if (qword_27C838780 != -1)
    {
      swift_once();
    }

    v69 = v0[56];
    v68 = v0[57];
    v70 = v0[44];
    v71 = v0[27];
    v72 = __swift_project_value_buffer(v0[39], qword_27C83C9C8);
    sub_20D815A38(v72, v70);
    swift_getKeyPath();
    v73 = swift_task_alloc();
    *(v73 + 16) = v71;
    *(v73 + 24) = v70;
    v0[21] = v71;
    sub_20D972848();
    goto LABEL_27;
  }

  v2 = v0[61];
  sub_20D972CB8();
  if (!v3)
  {
    v21 = v0[53];

    goto LABEL_10;
  }

  v4 = v0[47];
  v5 = v0[48];
  v6 = v0[46];
  sub_20D9727E8();

  v7 = *(v5 + 48);
  v0[62] = v7;
  v0[63] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v7(v6, 1, v4) == 1)
  {
    v8 = v0[53];
    v9 = v0[46];

    sub_20D7E3944(v9, &qword_27C83CAA0, &qword_20D978AA0);
LABEL_10:
    if (qword_27C838480 != -1)
    {
      swift_once();
    }

    v22 = v0[59];
    v23 = sub_20D9734F8();
    __swift_project_value_buffer(v23, qword_27C840CE0);

    v24 = sub_20D9734D8();
    v25 = sub_20D975458();

    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[59];
    if (v26)
    {
      v28 = v0[58];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v106[0] = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D983BC0, v106);
      *(v29 + 12) = 2080;
      v31 = sub_20D7F4DC8(v28, v27, v106);

      *(v29 + 14) = v31;
      _os_log_impl(&dword_20D7C9000, v24, v25, "%s: Failed to fetch + create timeZone from %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v30, -1, -1);
      MEMORY[0x20F324260](v29, -1, -1);
    }

    else
    {
    }

    if (qword_27C838788 != -1)
    {
      swift_once();
    }

    v32 = v0[56];
    v33 = v0[57];
    v34 = v0[44];
    v35 = v0[27];
    v36 = __swift_project_value_buffer(v0[39], qword_27C83C9E0);
    sub_20D815A38(v36, v34);
    swift_getKeyPath();
    v37 = swift_task_alloc();
    *(v37 + 16) = v35;
    *(v37 + 24) = v34;
    v0[22] = v35;
    sub_20D972848();

LABEL_27:

LABEL_28:
    v74 = v0[51];
    v75 = v0[52];
    v77 = v0[49];
    v76 = v0[50];
    v79 = v0[45];
    v78 = v0[46];
    v81 = v0[43];
    v80 = v0[44];
    v82 = v0[42];
    v95 = v0[41];
    v96 = v0[40];
    v97 = v0[38];
    v98 = v0[37];
    v99 = v0[34];
    v100 = v0[33];
    v102 = v0[32];
    v103 = v0[31];
    v105 = v0[30];

    sub_20D815AB8(v80);

    v83 = v0[1];

    return v83();
  }

  v38 = v0[52];
  v39 = v0[47];
  v40 = v0[48];
  v41 = v0[46];
  v42 = *(v40 + 32);
  v0[64] = v42;
  v0[65] = (v40 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v42(v38, v41, v39);
  if ((sub_20D972C88() & 1) == 0)
  {
    v85 = v0[59];
    v86 = v0[53];

    if (qword_27C838798 != -1)
    {
      swift_once();
    }

    v88 = v0[56];
    v87 = v0[57];
    v61 = v0[52];
    v63 = v0[47];
    v62 = v0[48];
    v89 = v0[44];
    v90 = v0[27];
    v91 = __swift_project_value_buffer(v0[39], qword_27C83CA10);
    sub_20D815A38(v91, v89);
    swift_getKeyPath();
    v92 = swift_task_alloc();
    *(v92 + 16) = v90;
    *(v92 + 24) = v89;
    v0[23] = v90;
    sub_20D972848();

    goto LABEL_34;
  }

  v43 = v0[38];
  v101 = v0[37];
  v45 = v0[35];
  v44 = v0[36];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8394D0, &qword_20D9790A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D977210;
  v47 = *(v44 + 104);
  v47(v43, *MEMORY[0x277D07348], v45);
  v48 = sub_20D972E98();
  v104 = v1;
  v50 = v49;
  v51 = *(v44 + 8);
  v51(v43, v45);
  *(inited + 32) = v48;
  *(inited + 40) = v50;
  v47(v101, *MEMORY[0x277D07350], v45);
  v52 = sub_20D972E98();
  v54 = v53;
  v51(v101, v45);
  *(inited + 48) = v52;
  *(inited + 56) = v54;
  v0[17] = sub_20D972C98();
  v0[18] = v55;
  v56 = swift_task_alloc();
  *(v56 + 16) = v0 + 17;
  LOBYTE(v54) = sub_20D8292B0(sub_20D81A200, v56, inited);
  v0[66] = 0;
  swift_setDeallocating();
  swift_arrayDestroy();

  if (v54)
  {
    v57 = v0[59];
    v58 = v0[53];

    if (qword_27C838790 != -1)
    {
      swift_once();
    }

    v59 = v0[56];
    v60 = v0[57];
    v61 = v0[52];
    v63 = v0[47];
    v62 = v0[48];
    v64 = v0[44];
    v65 = v0[27];
    v66 = __swift_project_value_buffer(v0[39], qword_27C83C9F8);
    sub_20D815A38(v66, v64);
    swift_getKeyPath();
    v67 = swift_task_alloc();
    *(v67 + 16) = v65;
    *(v67 + 24) = v64;
    v0[26] = v65;
    sub_20D972848();

LABEL_34:

    (*(v62 + 8))(v61, v63);
    goto LABEL_28;
  }

  v93 = swift_task_alloc();
  v0[67] = v93;
  *v93 = v0;
  v93[1] = sub_20D8116FC;
  v94 = v0[52];

  return sub_20D819238(v104, v94);
}

uint64_t sub_20D8116FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v5[10] = v3;
  v5[11] = a1;
  v5[12] = a2;
  v5[13] = a3;
  v6 = v4[67];
  v10 = *v3;
  v5[68] = a1;

  v7 = v4[55];
  v8 = v4[54];

  return MEMORY[0x2822009F8](sub_20D81182C, v8, v7);
}

uint64_t sub_20D81182C()
{
  v1 = *(v0 + 488);
  *(v0 + 552) = vextq_s8(*(v0 + 96), *(v0 + 96), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 568) = v2;
  *v2 = v0;
  v2[1] = sub_20D8118D8;

  return sub_20D813C48(v0 + 608, v1);
}

uint64_t sub_20D8118D8()
{
  v1 = *v0;
  v2 = *(*v0 + 568);
  v6 = *v0;

  v3 = *(v1 + 440);
  v4 = *(v1 + 432);

  return MEMORY[0x2822009F8](sub_20D8119F8, v4, v3);
}

uint64_t sub_20D8119F8()
{
  v92 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 608);
  *(v0 + 609) = v2;
  sub_20D9725C8();
  v3 = MEMORY[0x277D84F90];
  if (v2 == 1)
  {
  }

  else
  {
    v4 = sub_20D9757C8();

    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (*(v0 + 544))
  {
    v5 = *(v0 + 544);
  }

  else
  {
    v5 = v3;
  }

  if (*(v5 + 16))
  {
LABEL_9:
    v6 = *(v0 + 424);

    v7 = *(v0 + 560);
    v8 = *(v0 + 552);
    v9 = *(v0 + 544);
    if (v9)
    {
      v10 = *(v0 + 544);
    }

    else
    {
      v10 = v3;
    }

    if (!v9)
    {
      v8 = 0xE000000000000000;
    }

    v79 = v8;
    v82 = v10;
    if (!v9)
    {
      v7 = 0;
    }

    v76 = v7;
    v73 = *(v0 + 609);
    v67 = *(v0 + 464);
    v70 = *(v0 + 472);
    v11 = *(v0 + 400);
    v13 = *(v0 + 376);
    v12 = *(v0 + 384);
    v15 = *(v0 + 312);
    v14 = *(v0 + 320);
    v16 = *(v0 + 272);
    v55 = *(v0 + 528);
    v57 = *(v0 + 248);
    v85 = *(v0 + 392);
    v88 = *(v0 + 240);
    v17 = *(v0 + 224);
    v18 = *(*(v0 + 232) + 16);
    v61 = v17;
    v64 = *(v0 + 416);
    v18();
    v19 = *(v12 + 16);
    v59 = v13;
    v19(v11, v64, v13);
    v19(v85, v11, v13);
    (v18)(v88, v57, v17);
    v20 = v15[10];
    *(v14 + v20) = 7;
    v21 = v15[11];
    *(v14 + v21) = 6;
    *v14 = v67;
    v14[1] = v70;
    v19(v14 + v15[9], v85, v59);
    (v18)(v14 + v15[5], v88, v61);
    v22 = (v14 + v15[8]);
    *v22 = v76;
    v22[1] = v79;
    *(v14 + v20) = v73;
    *(v14 + v21) = 6;
    v23 = sub_20D817948(v82);

    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = sub_20D815D18(*(v23 + 16), 0);
      v26 = *(sub_20D973158() - 8);
      v27 = v25;
      v28 = sub_20D81754C(&v91, (v25 + ((*(v26 + 80) + 32) & ~*(v26 + 80))), v24, v23);

      sub_20D817AE4();
      if (v28 == v24)
      {
        goto LABEL_20;
      }

      __break(1u);
    }

    v27 = MEMORY[0x277D84F90];
LABEL_20:
    v91 = v27;
    sub_20D815E14(&v91);
    if (v55)
    {
    }

    else
    {
      v74 = *(v0 + 448);
      v77 = *(v0 + 456);
      v83 = *(v0 + 488);
      v86 = *(v0 + 416);
      v30 = *(v0 + 392);
      v89 = *(v0 + 376);
      v31 = *(v0 + 320);
      v65 = *(v0 + 400);
      v68 = *(v0 + 328);
      v32 = *(v0 + 312);
      v80 = *(v0 + 272);
      v33 = *(v0 + 240);
      v60 = *(v0 + 384);
      v62 = *(v0 + 248);
      v34 = *(v0 + 232);
      v58 = *(v0 + 224);
      v71 = *(v0 + 216);

      v35 = v91;
      *(v31 + v32[12]) = v91;
      v36 = v32[6];

      sub_20D972F88();
      v37 = v32[7];
      sub_20D9730F8();
      _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v31 + v36, v31 + v37, v35, v30);
      *(v31 + v32[13]) = v38;
      _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v33, v31 + v37, v35, v30);
      v56 = v39;

      v40 = *(v34 + 8);
      v40(v33, v58);
      v41 = *(v60 + 8);
      v41(v30, v89);
      v41(v65, v89);
      v40(v62, v58);
      *(v31 + v32[14]) = v56;
      sub_20D817AEC(v31, v68);
      swift_getKeyPath();
      v42 = swift_task_alloc();
      *(v42 + 16) = v71;
      *(v42 + 24) = v68;
      *(v0 + 192) = v71;
      sub_20D972848();

      v40(v80, v58);
      v41(v86, v89);
      v43 = *(v0 + 408);
      v44 = *(v0 + 416);
      v46 = *(v0 + 392);
      v45 = *(v0 + 400);
      v48 = *(v0 + 360);
      v47 = *(v0 + 368);
      v49 = *(v0 + 352);
      v50 = *(v0 + 328);
      v63 = *(v0 + 344);
      v66 = *(v0 + 336);
      v69 = *(v0 + 320);
      v72 = *(v0 + 304);
      v75 = *(v0 + 296);
      v78 = *(v0 + 272);
      v81 = *(v0 + 264);
      v84 = *(v0 + 256);
      v87 = *(v0 + 248);
      v90 = *(v0 + 240);

      sub_20D815AB8(v50);

      v51 = *(v0 + 8);

      return v51();
    }
  }

  v52 = *(v0 + 552);
  v53 = *(v0 + 488);

  v54 = swift_task_alloc();
  *(v0 + 576) = v54;
  *v54 = v0;
  v54[1] = sub_20D812148;

  return sub_20D818818(v53);
}

uint64_t sub_20D812148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 576);
  v10 = *v3;
  v5[73] = a1;
  v5[74] = a2;
  v5[75] = a3;

  v7 = v4[55];
  v8 = v4[54];

  return MEMORY[0x2822009F8](sub_20D812278, v8, v7);
}

uint64_t sub_20D812278()
{
  v134 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 424);

  if (*(v1 + 16))
  {
    v81 = *(v0 + 528);
  }

  else
  {
    v23 = *(v0 + 496);
    v22 = *(v0 + 504);
    v24 = *(v0 + 376);
    v25 = *(v0 + 360);
    v128 = *(*(v0 + 232) + 16);
    v128(*(v0 + 264), *(v0 + 272), *(v0 + 224));
    sub_20D9727F8();
    result = v23(v25, 1, v24);
    if (result == 1)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v113 = *(v0 + 592);
    v118 = *(v0 + 600);
    v123 = *(v0 + 584);
    v26 = *(v0 + 520);
    v27 = *(v0 + 472);
    v28 = *(v0 + 408);
    v30 = *(v0 + 376);
    v29 = *(v0 + 384);
    v31 = *(v0 + 360);
    v32 = *(v0 + 336);
    v33 = *(v0 + 312);
    v34 = *(v0 + 256);
    v35 = *(v0 + 264);
    v103 = v34;
    v108 = *(v0 + 464);
    v36 = *(v0 + 224);
    v94 = v28;
    (*(v0 + 512))();
    v128(v34, v35, v36);
    v37 = v33[10];
    *(v32 + v37) = 7;
    v38 = v33[11];
    *(v32 + v38) = 6;
    *v32 = v108;
    v32[1] = v27;
    (*(v29 + 16))(v32 + v33[9], v94, v30);
    v128(v32 + v33[5], v103, v36);
    v39 = (v32 + v33[8]);
    *v39 = v113;
    v39[1] = v118;
    *(v32 + v37) = 7;
    *(v32 + v38) = 3;

    v40 = sub_20D817948(v123);

    v41 = *(v40 + 16);
    if (v41)
    {
      v42 = sub_20D815D18(*(v40 + 16), 0);
      v43 = *(sub_20D973158() - 8);
      v44 = sub_20D81754C(&v133, &v42[(*(v43 + 80) + 32) & ~*(v43 + 80)], v41, v40);

      sub_20D817AE4();
      if (v44 != v41)
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    else
    {
      v42 = MEMORY[0x277D84F90];
    }

    v45 = *(v0 + 528);
    v132 = v42;
    sub_20D815E14(&v132);
    if (v45)
    {
      goto LABEL_17;
    }

    v126 = *(v0 + 448);
    v131 = *(v0 + 456);
    v68 = *(v0 + 408);
    v69 = *(v0 + 336);
    v111 = *(v0 + 376);
    v116 = *(v0 + 344);
    v70 = *(v0 + 312);
    v71 = *(v0 + 256);
    v101 = *(v0 + 384);
    v106 = *(v0 + 264);
    v72 = *(v0 + 232);
    v97 = *(v0 + 224);
    v121 = *(v0 + 216);

    v73 = v132;
    *(v69 + v70[12]) = v132;
    v74 = v70[6];

    sub_20D972F88();
    v75 = v70[7];
    sub_20D9730F8();
    _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v69 + v74, v69 + v75, v73, v68);
    *(v69 + v70[13]) = v76;
    _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v71, v69 + v75, v73, v68);
    v78 = v77;

    v79 = *(v72 + 8);
    v79(v71, v97);
    (*(v101 + 8))(v68, v111);
    v79(v106, v97);
    *(v69 + v70[14]) = v78;
    sub_20D817AEC(v69, v116);
    swift_getKeyPath();
    v80 = swift_task_alloc();
    *(v80 + 16) = v121;
    *(v80 + 24) = v116;
    *(v0 + 200) = v121;
    sub_20D972848();
    v81 = 0;

    sub_20D815AB8(v116);
  }

  v112 = *(v0 + 600);
  v117 = *(v0 + 584);
  v107 = *(v0 + 609);
  v3 = *(v0 + 472);
  v98 = v3;
  v102 = *(v0 + 592);
  v90 = *(v0 + 416);
  v93 = *(v0 + 464);
  v4 = *(v0 + 400);
  v6 = *(v0 + 376);
  v5 = *(v0 + 384);
  v8 = *(v0 + 312);
  v7 = *(v0 + 320);
  v9 = *(v0 + 272);
  v83 = *(v0 + 248);
  v122 = *(v0 + 392);
  v127 = *(v0 + 240);
  v10 = *(v0 + 224);
  v11 = *(*(v0 + 232) + 16);
  v87 = v10;
  v11();
  v12 = *(v5 + 16);
  v85 = v6;
  v12(v4, v90, v6);
  v12(v122, v4, v6);
  (v11)(v127, v83, v10);
  v13 = v8[10];
  *(v7 + v13) = 7;
  v14 = v8[11];
  *(v7 + v14) = 6;
  *v7 = v93;
  v7[1] = v98;
  v12(v7 + v8[9], v122, v85);
  (v11)(v7 + v8[5], v127, v87);
  v15 = (v7 + v8[8]);
  *v15 = v102;
  v15[1] = v112;
  *(v7 + v13) = v107;
  *(v7 + v14) = 6;
  v16 = sub_20D817948(v117);

  v17 = *(v16 + 16);
  if (!v17)
  {
LABEL_10:
    v18 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  v18 = sub_20D815D18(*(v16 + 16), 0);
  v19 = *(sub_20D973158() - 8);
  v20 = sub_20D81754C(&v133, &v18[(*(v19 + 80) + 32) & ~*(v19 + 80)], v17, v16);

  result = sub_20D817AE4();
  if (v20 != v17)
  {
    __break(1u);
    goto LABEL_20;
  }

LABEL_11:
  v132 = v18;
  v45 = v81;
  sub_20D815E14(&v132);
  if (v81)
  {
LABEL_17:
  }

  v99 = *(v0 + 448);
  v104 = *(v0 + 456);
  v114 = *(v0 + 488);
  v119 = *(v0 + 416);
  v46 = *(v0 + 392);
  v124 = *(v0 + 376);
  v129 = *(v0 + 384);
  v47 = *(v0 + 320);
  v88 = *(v0 + 400);
  v91 = *(v0 + 328);
  v48 = *(v0 + 312);
  v109 = *(v0 + 272);
  v49 = *(v0 + 240);
  v50 = *(v0 + 232);
  v84 = *(v0 + 224);
  v86 = *(v0 + 248);
  v95 = *(v0 + 216);

  v51 = v132;
  *(v47 + v48[12]) = v132;
  v52 = v48[6];

  sub_20D972F88();
  v53 = v48[7];
  sub_20D9730F8();
  _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v47 + v52, v47 + v53, v51, v46);
  *(v47 + v48[13]) = v54;
  _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v49, v47 + v53, v51, v46);
  v82 = v55;

  v56 = *(v50 + 8);
  v56(v49, v84);
  v57 = *(v129 + 8);
  v57(v46, v124);
  v57(v88, v124);
  v56(v86, v84);
  *(v47 + v48[14]) = v82;
  sub_20D817AEC(v47, v91);
  swift_getKeyPath();
  v58 = swift_task_alloc();
  *(v58 + 16) = v95;
  *(v58 + 24) = v91;
  *(v0 + 192) = v95;
  sub_20D972848();

  v56(v109, v84);
  v57(v119, v124);
  v59 = *(v0 + 408);
  v60 = *(v0 + 416);
  v62 = *(v0 + 392);
  v61 = *(v0 + 400);
  v64 = *(v0 + 360);
  v63 = *(v0 + 368);
  v65 = *(v0 + 352);
  v66 = *(v0 + 328);
  v89 = *(v0 + 344);
  v92 = *(v0 + 336);
  v96 = *(v0 + 320);
  v100 = *(v0 + 304);
  v105 = *(v0 + 296);
  v110 = *(v0 + 272);
  v115 = *(v0 + 264);
  v120 = *(v0 + 256);
  v125 = *(v0 + 248);
  v130 = *(v0 + 240);

  sub_20D815AB8(v66);

  v67 = *(v0 + 8);

  return v67();
}

uint64_t UtilityRateInfoSnapshotManager.deinit()
{
  v1 = *(v0 + 32);

  sub_20D815AB8(v0 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot);
  v2 = *(v0 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__utilityArtworkURL + 8);

  v3 = *(v0 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__utilityName + 8);

  v4 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__lastReloadDate;
  v5 = sub_20D972628();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager___observationRegistrar;
  v7 = sub_20D972898();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t UtilityRateInfoSnapshotManager.__deallocating_deinit()
{
  v1 = *(v0 + 4);

  sub_20D815AB8(&v0[OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot]);
  v2 = *&v0[OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__utilityArtworkURL + 8];

  v3 = *&v0[OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__utilityName + 8];

  v4 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__lastReloadDate;
  v5 = sub_20D972628();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager___observationRegistrar;
  v7 = sub_20D972898();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_20D812DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = sub_20D972628();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  sub_20D9752E8();
  v4[17] = sub_20D9752D8();
  v9 = sub_20D975298();
  v4[18] = v9;
  v4[19] = v8;

  return MEMORY[0x2822009F8](sub_20D812EC4, v9, v8);
}

uint64_t sub_20D812EC4()
{
  v32 = v0;
  v1 = v0[12];
  swift_getKeyPath();
  v0[8] = v1;
  v0[20] = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager___observationRegistrar;
  v0[21] = sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  v2 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot;
  v0[22] = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot;
  v3 = v1 + v2;
  swift_beginAccess();
  v4 = type metadata accessor for UtilityRateInfoSnapshot();
  v0[23] = v4;
  if (!*(*(v3 + *(v4 + 48)) + 16))
  {
    if (qword_27C838480 != -1)
    {
      swift_once();
    }

    v19 = sub_20D9734F8();
    v0[24] = __swift_project_value_buffer(v19, qword_27C840CE0);
    v20 = sub_20D9734D8();
    v21 = sub_20D975478();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C80, &v31);
      _os_log_impl(&dword_20D7C9000, v20, v21, "%s: No data, getting recent data", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x20F324260](v23, -1, -1);
      MEMORY[0x20F324260](v22, -1, -1);
    }

    v17 = swift_task_alloc();
    v0[25] = v17;
    *v17 = v0;
    v18 = sub_20D813414;
    goto LABEL_13;
  }

  v5 = v0[15];
  v30 = v0[16];
  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[12];
  swift_getKeyPath();
  v0[9] = v8;
  sub_20D972858();

  v9 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__lastReloadDate;
  swift_beginAccess();
  (*(v7 + 16))(v5, v8 + v9, v6);
  swift_getKeyPath();
  v0[10] = v8;
  sub_20D972858();

  v10 = *(v8 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__tileRefreshPeriod);
  sub_20D972498();
  v11 = *(v7 + 8);
  v11(v5, v6);
  sub_20D9725C8();
  LOBYTE(v9) = sub_20D972548();
  v11(v5, v6);
  v11(v30, v6);
  if (v9)
  {
    if (qword_27C838480 != -1)
    {
      swift_once();
    }

    v12 = sub_20D9734F8();
    __swift_project_value_buffer(v12, qword_27C840CE0);
    v13 = sub_20D9734D8();
    v14 = sub_20D975478();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C80, &v31);
      _os_log_impl(&dword_20D7C9000, v13, v14, "%s: time passed, getting data now", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x20F324260](v16, -1, -1);
      MEMORY[0x20F324260](v15, -1, -1);
    }

    v17 = swift_task_alloc();
    v0[26] = v17;
    *v17 = v0;
    v18 = sub_20D8136F0;
LABEL_13:
    v17[1] = v18;
    v24 = v0[12];

    return sub_20D810448();
  }

  v26 = v0[17];

  v28 = v0[15];
  v27 = v0[16];

  v29 = v0[1];

  return v29();
}

uint64_t sub_20D813414()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_20D813534, v4, v3);
}

uint64_t sub_20D813534()
{
  v19 = v0;
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[17];
  v6 = v0[12];

  swift_getKeyPath();
  v0[11] = v6;
  sub_20D972858();

  if (*(*(v6 + v1 + *(v2 + 48)) + 16) >= 2uLL)
  {
    v7 = v0[24];
    v8 = sub_20D9734D8();
    v9 = sub_20D975478();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C80, &v18);
      _os_log_impl(&dword_20D7C9000, v8, v9, "%s: received data updating lastReloadDate", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x20F324260](v11, -1, -1);
      MEMORY[0x20F324260](v10, -1, -1);
    }

    v12 = v0[16];
    v13 = v0[12];
    sub_20D9725C8();
    sub_20D80DF30(v12);
  }

  v15 = v0[15];
  v14 = v0[16];

  v16 = v0[1];

  return v16();
}

uint64_t sub_20D8136F0()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_20D813810, v4, v3);
}

uint64_t sub_20D813810()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[12];

  sub_20D9725C8();
  sub_20D80DF30(v2);
  v5 = v0[15];
  v4 = v0[16];

  v6 = v0[1];

  return v6();
}

uint64_t sub_20D813894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  v10 = sub_20D975318();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_20D9752E8();

  v11 = sub_20D9752D8();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a2;
  sub_20D82D02C(0, 0, v9, a4, v12);
}

uint64_t sub_20D8139B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(sub_20D972628() - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v4[4] = sub_20D9752E8();
  v4[5] = sub_20D9752D8();
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_20D813A90;

  return sub_20D810448();
}

uint64_t sub_20D813A90()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v7 = *v0;

  v5 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D813BCC, v5, v4);
}

uint64_t sub_20D813BCC()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];

  sub_20D9725C8();
  sub_20D80DF30(v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20D813C48(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_20D972EA8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  sub_20D9752E8();
  v2[7] = sub_20D9752D8();
  v7 = sub_20D975298();
  v2[8] = v7;
  v2[9] = v6;

  return MEMORY[0x2822009F8](sub_20D813D3C, v7, v6);
}

uint64_t sub_20D813D3C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = sub_20D972C98();
  v7 = v6;
  (*(v2 + 104))(v1, *MEMORY[0x277D07358], v4);
  v8 = sub_20D972E98();
  v10 = v9;
  (*(v2 + 8))(v1, v4);
  if (v5 == v8 && v7 == v10)
  {
    v14 = *(v0 + 56);

    goto LABEL_8;
  }

  v12 = sub_20D9757C8();

  if (v12)
  {
    v13 = *(v0 + 56);
LABEL_8:

    v15 = *(v0 + 48);
    **(v0 + 16) = 6;

    v16 = *(v0 + 8);

    return v16();
  }

  v18 = *(MEMORY[0x277D07680] + 4);
  v21 = (*MEMORY[0x277D07680] + MEMORY[0x277D07680]);
  v19 = swift_task_alloc();
  *(v0 + 80) = v19;
  *v19 = v0;
  v19[1] = sub_20D813F0C;
  v20 = *(v0 + 24);

  return v21();
}

uint64_t sub_20D813F0C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);
    v9 = sub_20D814A78;
  }

  else
  {
    *(v4 + 160) = a1 & 1;
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);
    v9 = sub_20D814038;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_20D814038()
{
  if (*(v0 + 160) == 1)
  {
    v1 = *(v0 + 56);

    v2 = *(v0 + 48);
    **(v0 + 16) = 1;

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(MEMORY[0x277D076A0] + 4);
    v8 = (*MEMORY[0x277D076A0] + MEMORY[0x277D076A0]);
    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *v6 = v0;
    v6[1] = sub_20D814134;
    v7 = *(v0 + 24);

    return v8();
  }
}

uint64_t sub_20D814134(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);
    v9 = sub_20D814D98;
  }

  else
  {
    *(v4 + 161) = a1 & 1;
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);
    v9 = sub_20D814260;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_20D814260()
{
  if (*(v0 + 161) == 1)
  {
    v1 = *(v0 + 56);

    v2 = *(v0 + 48);
    **(v0 + 16) = 2;

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(MEMORY[0x277D07688] + 4);
    v8 = (*MEMORY[0x277D07688] + MEMORY[0x277D07688]);
    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    *v6 = v0;
    v6[1] = sub_20D81435C;
    v7 = *(v0 + 24);

    return v8();
  }
}

uint64_t sub_20D81435C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);
    v9 = sub_20D8150B8;
  }

  else
  {
    *(v4 + 162) = a1 & 1;
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);
    v9 = sub_20D814488;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_20D814488()
{
  if (*(v0 + 162) == 1)
  {
    v1 = *(v0 + 56);

    v2 = *(v0 + 48);
    **(v0 + 16) = 3;

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(MEMORY[0x277D07698] + 4);
    v8 = (*MEMORY[0x277D07698] + MEMORY[0x277D07698]);
    v6 = swift_task_alloc();
    *(v0 + 128) = v6;
    *v6 = v0;
    v6[1] = sub_20D814584;
    v7 = *(v0 + 24);

    return v8();
  }
}

uint64_t sub_20D814584(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);
    v9 = sub_20D8153D8;
  }

  else
  {
    *(v4 + 163) = a1 & 1;
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);
    v9 = sub_20D8146B0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_20D8146B0()
{
  if (*(v0 + 163) == 1)
  {
    v1 = *(v0 + 56);

    v2 = *(v0 + 48);
    **(v0 + 16) = 4;

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(MEMORY[0x277D07638] + 4);
    v8 = (*MEMORY[0x277D07638] + MEMORY[0x277D07638]);
    v6 = swift_task_alloc();
    *(v0 + 144) = v6;
    *v6 = v0;
    v6[1] = sub_20D8147AC;
    v7 = *(v0 + 24);

    return v8();
  }
}

uint64_t sub_20D8147AC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);
    v9 = sub_20D8156F8;
  }

  else
  {
    *(v4 + 164) = a1 & 1;
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);
    v9 = sub_20D8148D8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_20D8148D8()
{
  v13 = v0;
  v1 = *(v0 + 164);
  v2 = *(v0 + 56);

  if (v1)
  {
    v3 = 5;
  }

  else
  {
    if (qword_27C838480 != -1)
    {
      swift_once();
    }

    v4 = sub_20D9734F8();
    __swift_project_value_buffer(v4, qword_27C840CE0);
    v5 = sub_20D9734D8();
    v6 = sub_20D975478();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C10, &v12);
      _os_log_impl(&dword_20D7C9000, v5, v6, "%s: All other checks did not pass. Returning unknown", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x20F324260](v8, -1, -1);
      MEMORY[0x20F324260](v7, -1, -1);
    }

    v3 = 0;
  }

  v9 = *(v0 + 48);
  **(v0 + 16) = v3;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_20D814A78()
{
  v20 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);

  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v3 = sub_20D9734F8();
  __swift_project_value_buffer(v3, qword_27C840CE0);
  v4 = v1;
  v5 = sub_20D9734D8();
  v6 = sub_20D975458();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C10, &v19);
    *(v7 + 12) = 2112;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s: Error retrieving rate plan type: %@", v7, 0x16u);
    sub_20D7E3944(v8, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  else
  {
  }

  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, qword_27C840CE0);
  v12 = sub_20D9734D8();
  v13 = sub_20D975478();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C10, &v19);
    _os_log_impl(&dword_20D7C9000, v12, v13, "%s: All other checks did not pass. Returning unknown", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x20F324260](v15, -1, -1);
    MEMORY[0x20F324260](v14, -1, -1);
  }

  v16 = *(v0 + 48);
  **(v0 + 16) = 0;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_20D814D98()
{
  v20 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 56);

  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v3 = sub_20D9734F8();
  __swift_project_value_buffer(v3, qword_27C840CE0);
  v4 = v1;
  v5 = sub_20D9734D8();
  v6 = sub_20D975458();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C10, &v19);
    *(v7 + 12) = 2112;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s: Error retrieving rate plan type: %@", v7, 0x16u);
    sub_20D7E3944(v8, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  else
  {
  }

  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, qword_27C840CE0);
  v12 = sub_20D9734D8();
  v13 = sub_20D975478();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C10, &v19);
    _os_log_impl(&dword_20D7C9000, v12, v13, "%s: All other checks did not pass. Returning unknown", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x20F324260](v15, -1, -1);
    MEMORY[0x20F324260](v14, -1, -1);
  }

  v16 = *(v0 + 48);
  **(v0 + 16) = 0;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_20D8150B8()
{
  v20 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 56);

  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v3 = sub_20D9734F8();
  __swift_project_value_buffer(v3, qword_27C840CE0);
  v4 = v1;
  v5 = sub_20D9734D8();
  v6 = sub_20D975458();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C10, &v19);
    *(v7 + 12) = 2112;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s: Error retrieving rate plan type: %@", v7, 0x16u);
    sub_20D7E3944(v8, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  else
  {
  }

  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, qword_27C840CE0);
  v12 = sub_20D9734D8();
  v13 = sub_20D975478();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C10, &v19);
    _os_log_impl(&dword_20D7C9000, v12, v13, "%s: All other checks did not pass. Returning unknown", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x20F324260](v15, -1, -1);
    MEMORY[0x20F324260](v14, -1, -1);
  }

  v16 = *(v0 + 48);
  **(v0 + 16) = 0;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_20D8153D8()
{
  v20 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 56);

  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v3 = sub_20D9734F8();
  __swift_project_value_buffer(v3, qword_27C840CE0);
  v4 = v1;
  v5 = sub_20D9734D8();
  v6 = sub_20D975458();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C10, &v19);
    *(v7 + 12) = 2112;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s: Error retrieving rate plan type: %@", v7, 0x16u);
    sub_20D7E3944(v8, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  else
  {
  }

  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, qword_27C840CE0);
  v12 = sub_20D9734D8();
  v13 = sub_20D975478();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C10, &v19);
    _os_log_impl(&dword_20D7C9000, v12, v13, "%s: All other checks did not pass. Returning unknown", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x20F324260](v15, -1, -1);
    MEMORY[0x20F324260](v14, -1, -1);
  }

  v16 = *(v0 + 48);
  **(v0 + 16) = 0;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_20D8156F8()
{
  v20 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 56);

  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v3 = sub_20D9734F8();
  __swift_project_value_buffer(v3, qword_27C840CE0);
  v4 = v1;
  v5 = sub_20D9734D8();
  v6 = sub_20D975458();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C10, &v19);
    *(v7 + 12) = 2112;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s: Error retrieving rate plan type: %@", v7, 0x16u);
    sub_20D7E3944(v8, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  else
  {
  }

  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, qword_27C840CE0);
  v12 = sub_20D9734D8();
  v13 = sub_20D975478();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C10, &v19);
    _os_log_impl(&dword_20D7C9000, v12, v13, "%s: All other checks did not pass. Returning unknown", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x20F324260](v15, -1, -1);
    MEMORY[0x20F324260](v14, -1, -1);
  }

  v16 = *(v0 + 48);
  **(v0 + 16) = 0;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_20D815A38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UtilityRateInfoSnapshot();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D815AB8(uint64_t a1)
{
  v2 = type metadata accessor for UtilityRateInfoSnapshot();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D815B64(uint64_t a1)
{
  result = MEMORY[0x20F323530](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_20D89D0C8(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_20D815C94(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8394D0, &qword_20D9790A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

size_t sub_20D815D18(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8394E0, &qword_20D978CF0);
  v4 = *(sub_20D973158() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20D815E14(void **a1)
{
  v2 = *(sub_20D973158() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20D9562A8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_20D815EBC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_20D815EBC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_20D975798();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20D973158();
        v6 = sub_20D975268();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20D973158() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20D8162F4(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_20D815FE8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20D815FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20D973158();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v49 = &v35 - v13;
  result = MEMORY[0x28223BE20](v12);
  v48 = &v35 - v16;
  v37 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v46 = *(v15 + 16);
    v47 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v43 = (v15 + 32);
    v44 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v42 = -v18;
    v21 = a1 - a3;
    v36 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v40 = v20;
    v41 = a3;
    v38 = v22;
    v39 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v46;
      v46(v48, v22, v8);
      v25(v49, v24, v8);
      v26 = sub_20D973148();
      v28 = v27;
      if (v26 == sub_20D973148() && v28 == v29)
      {

        v23 = *v19;
        (*v19)(v49, v8);
        result = (v23)(v48, v8);
LABEL_5:
        a3 = v41 + 1;
        v20 = v40 + v36;
        v21 = v39 - 1;
        v22 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_6;
      }

      v30 = sub_20D9757C8();

      v31 = *v19;
      (*v19)(v49, v8);
      result = (v31)(v48, v8);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v24, v33, v8);
      v24 += v42;
      v22 += v42;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20D8162F4(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_20D973158();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v139 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v150 = &v129 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v155 = &v129 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v154 = &v129 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v147 = &v129 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v146 = &v129 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v134 = &v129 - v24;
  result = MEMORY[0x28223BE20](v23);
  v133 = &v129 - v27;
  v28 = *(a3 + 1);
  v144 = v26;
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_103:
    v32 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (result)
    {
LABEL_105:
      v156 = v30;
      v123 = *(v30 + 16);
      if (v123 >= 2)
      {
        while (1)
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v30 + 16 * v123);
          a3 = v30;
          v127 = *(v30 + 16 * (v123 - 1) + 32);
          v30 = *(v30 + 16 * (v123 - 1) + 40);
          sub_20D816EB0(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v30], v32);
          if (v6)
          {
          }

          if (v30 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_20D9560B0(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v30;
          v156 = a3;
          result = sub_20D956024(v123 - 1);
          v30 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
          if (v123 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_20D9560B0(v30);
    v30 = result;
    goto LABEL_105;
  }

  v130 = a4;
  v29 = 0;
  v152 = v26 + 16;
  v153 = (v26 + 8);
  v151 = (v26 + 32);
  v30 = MEMORY[0x277D84F90];
  v136 = a3;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v138 = v29;
    if (v29 + 1 < v28)
    {
      v142 = v28;
      v131 = v30;
      v33 = *a3;
      v34 = *(v144 + 72);
      v5 = v29 + 1;
      v35 = &v33[v34 * v32];
      v36 = *(v144 + 16);
      v36(v133, v35, v9);
      v145 = v34;
      v141 = v36;
      v36(v134, &v33[v34 * v31], v9);
      v32 = sub_20D973148();
      v38 = v37;
      v39 = sub_20D973148();
      v132 = v6;
      if (v32 == v39 && v38 == v40)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_20D9757C8();
      }

      v41 = *v153;
      (*v153)(v134, v9);
      v140 = v41;
      result = (v41)(v133, v9);
      v42 = (v138 + 2);
      v43 = v145 * (v138 + 2);
      v44 = &v33[v43];
      v45 = v145 * v5;
      v46 = &v33[v145 * v5];
      do
      {
        a3 = v42;
        v49 = v5;
        v6 = v45;
        v30 = v43;
        if (v42 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v42;
        v50 = v141;
        (v141)(v146, v44, v9);
        v50(v147, v46, v9);
        v51 = sub_20D973148();
        v53 = v52;
        if (v51 == sub_20D973148() && v53 == v54)
        {
          v47 = 0;
        }

        else
        {
          v47 = sub_20D9757C8();
        }

        a3 = v149;

        v32 = v140;
        v140(v147, v9);
        result = (v32)(v146, v9);
        v48 = v143 ^ v47;
        v42 = a3 + 1;
        v44 += v145;
        v46 += v145;
        v49 = v148;
        v5 = v148 + 1;
        v45 = v6 + v145;
        v43 = v30 + v145;
      }

      while ((v48 & 1) == 0);
      if (v143)
      {
        v31 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v55 = v138 * v145;
          v56 = v138;
          do
          {
            if (v56 != v49)
            {
              v58 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v49;
              v149 = *v151;
              (v149)(v139, v58 + v55, v9);
              if (v55 < v6 || v58 + v55 >= (v58 + v30))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v149)(v58 + v6, v139, v9);
              v31 = v138;
              v49 = v5;
            }

            ++v56;
            v6 -= v145;
            v30 -= v145;
            v55 += v145;
          }

          while (v56 < v49--);
        }

        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
      }

      else
      {
        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
      }
    }

    v59 = *(a3 + 1);
    if (v32 < v59)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_131;
      }

      if (v32 - v31 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v32 < v31)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20D8D42B4(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v77 = *(v30 + 16);
    v76 = *(v30 + 24);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      result = sub_20D8D42B4((v76 > 1), v77 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v78;
    v79 = v30 + 16 * v77;
    *(v79 + 32) = v31;
    *(v79 + 40) = v32;
    v80 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v32;
    if (v77)
    {
      while (1)
      {
        v32 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v81 = *(v30 + 32);
          v82 = *(v30 + 40);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_72:
          if (v84)
          {
            goto LABEL_119;
          }

          v97 = (v30 + 16 * v78);
          v99 = *v97;
          v98 = v97[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_122;
          }

          v103 = (v30 + 32 + 16 * v32);
          v105 = *v103;
          v104 = v103[1];
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_126;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v32 = v78 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v107 = (v30 + 16 * v78);
        v109 = *v107;
        v108 = v107[1];
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_86:
        if (v102)
        {
          goto LABEL_121;
        }

        v110 = v30 + 16 * v32;
        v112 = *(v110 + 32);
        v111 = *(v110 + 40);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_124;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_93:
        v118 = v32 - 1;
        if (v32 - 1 >= v78)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v119 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v30;
        v120 = *(v30 + 32 + 16 * v118);
        v121 = *(v30 + 32 + 16 * v32);
        v30 = *(v30 + 32 + 16 * v32 + 8);
        sub_20D816EB0(&v119[*(v144 + 72) * v120], &v119[*(v144 + 72) * v121], &v119[*(v144 + 72) * v30], v80);
        if (v6)
        {
        }

        if (v30 < v120)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_20D9560B0(a3);
        }

        if (v118 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v122 = &a3[16 * v118];
        *(v122 + 4) = v120;
        *(v122 + 5) = v30;
        v156 = a3;
        result = sub_20D956024(v32);
        v30 = v156;
        v78 = *(v156 + 16);
        a3 = v5;
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = v30 + 32 + 16 * v78;
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_117;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_118;
      }

      v92 = (v30 + 16 * v78);
      v94 = *v92;
      v93 = v92[1];
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_120;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_123;
      }

      if (v96 >= v88)
      {
        v114 = (v30 + 32 + 16 * v32);
        v116 = *v114;
        v115 = v114[1];
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_127;
        }

        if (v83 < v117)
        {
          v32 = v78 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v28 = *(a3 + 1);
    v29 = v145;
    if (v145 >= v28)
    {
      goto LABEL_103;
    }
  }

  v60 = (v31 + v130);
  if (__OFADD__(v31, v130))
  {
    goto LABEL_133;
  }

  if (v60 >= v59)
  {
    v60 = *(a3 + 1);
  }

  if (v60 < v31)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v32 == v60)
  {
    goto LABEL_52;
  }

  v131 = v30;
  v132 = v6;
  v61 = *a3;
  v62 = *(v144 + 72);
  v63 = *(v144 + 16);
  v64 = *a3 + v62 * (v32 - 1);
  v148 = -v62;
  v149 = v61;
  v65 = v31 - v32;
  v137 = v62;
  v66 = &v61[v32 * v62];
  v140 = v60;
LABEL_43:
  v145 = v32;
  v141 = v66;
  v142 = v65;
  v143 = v64;
  v68 = v64;
  while (1)
  {
    v63(v154, v66, v9);
    (v63)(v155, v68);
    v5 = sub_20D973148();
    v70 = v69;
    if (v5 == sub_20D973148() && v70 == v71)
    {

      v67 = *v153;
      (*v153)(v155, v9);
      v67(v154, v9);
LABEL_42:
      v32 = v145 + 1;
      v64 = v143 + v137;
      v65 = v142 - 1;
      v66 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v32 = v140;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_20D9757C8();

    v72 = *v153;
    (*v153)(v155, v9);
    result = (v72)(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v73 = v150;
    v5 = v151;
    v74 = *v151;
    (*v151)(v150, v66, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v74)(v68, v73, v9);
    v68 += v148;
    v66 += v148;
    if (__CFADD__(v65++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_20D816EB0(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v72 = sub_20D973158();
  v8 = *(v72 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v72);
  v69 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v68 = &v60 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v60 - v15;
  result = MEMORY[0x28223BE20](v14);
  v70 = &v60 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_70;
  }

  v20 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v21 = (a2 - a1) / v19;
  v75 = a1;
  v74 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v23;
    if (v23 < 1)
    {
      v45 = a4 + v23;
    }

    else
    {
      v64 = a4;
      v65 = (v8 + 16);
      v63 = (v8 + 8);
      v43 = -v19;
      v44 = a4 + v23;
      v45 = v42;
      v66 = v43;
      while (2)
      {
        while (1)
        {
          v61 = v45;
          v46 = (a2 + v43);
          v70 = (a2 + v43);
          v67 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v75 = a2;
              v73 = v61;
              goto LABEL_68;
            }

            v48 = a3;
            v62 = v45;
            v49 = *v65;
            v71 = (v44 + v43);
            v50 = v72;
            (v49)(v68);
            (v49)(v69, v46, v50);
            v51 = sub_20D973148();
            v53 = v52;
            if (v51 != sub_20D973148())
            {
              goto LABEL_51;
            }

            if (v53 == v54)
            {
              v55 = 0;
            }

            else
            {
LABEL_51:
              v55 = sub_20D9757C8();
            }

            v43 = v66;
            a3 = v66 + v48;
            v56 = *v63;
            v57 = v72;
            (*v63)(v69, v72);
            v56(v68, v57);
            if (v55)
            {
              break;
            }

            v58 = v71;
            v45 = v71;
            if (v48 < v44 || a3 >= v44)
            {
              swift_arrayInitWithTakeFrontToBack();
              v46 = v70;
            }

            else
            {
              v46 = v70;
              if (v48 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v44 = v45;
            v47 = v58 > v64;
            a2 = v67;
            if (!v47)
            {
              goto LABEL_66;
            }
          }

          if (v48 < v67 || a3 >= v67)
          {
            break;
          }

          a2 = v70;
          v59 = v64;
          v45 = v62;
          if (v48 != v67)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v44 <= v59)
          {
            goto LABEL_66;
          }
        }

        a2 = v70;
        swift_arrayInitWithTakeFrontToBack();
        v45 = v62;
        if (v44 > v64)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v75 = a2;
    v73 = v45;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v69 = (a4 + v22);
    v73 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v25 = *(v8 + 16);
      v67 = v19;
      v68 = (v8 + 16);
      v65 = (v8 + 8);
      v66 = v25;
      do
      {
        v26 = a3;
        v27 = a2;
        v28 = a2;
        v29 = v72;
        v30 = v66;
        v66(v70, v28, v72);
        v30(v71, a4, v29);
        v31 = sub_20D973148();
        v33 = v32;
        if (v31 == sub_20D973148() && v33 == v34)
        {

          v35 = *v65;
          v36 = v72;
          (*v65)(v71, v72);
          v35(v70, v36);
        }

        else
        {
          v37 = sub_20D9757C8();

          v38 = *v65;
          v39 = v72;
          (*v65)(v71, v72);
          v38(v70, v39);
          if (v37)
          {
            a2 = v27 + v67;
            a3 = v26;
            if (a1 < v27 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v41 = v67;
            goto LABEL_37;
          }
        }

        v40 = a4;
        v41 = v67;
        a4 += v67;
        a2 = v27;
        a3 = v26;
        if (a1 < v40 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v40)
        {
          swift_arrayInitWithTakeBackToFront();
          v74 = a4;
          goto LABEL_37;
        }

        v74 = a4;
LABEL_37:
        a1 += v41;
        v75 = a1;
      }

      while (a4 < v69 && a2 < a3);
    }
  }

LABEL_68:
  sub_20D9560C4(&v75, &v74, &v73);
  return 1;
}

uint64_t sub_20D81754C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_20D973158();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_20D8177F0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_20D817948(uint64_t a1)
{
  v2 = sub_20D973158();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_20D81A4CC(&qword_27C839F40, MEMORY[0x277D180E0]);
  result = MEMORY[0x20F323530](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_20D89CCF0(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_20D817AEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UtilityRateInfoSnapshot();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D817B50()
{
  if ((sub_20D972ED8() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (qword_281126E98 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v0 = [qword_28112ABE8 bundleIdentifier];
    if (v0)
    {
      v1 = v0;
      sub_20D975098();

      v2 = sub_20D975078();
    }

    else
    {
      v2 = 0;
    }

    v3 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];

    if (v3)
    {
      v4 = sub_20D975078();
      v5 = [v3 integerForKey_];

      result = v5;
      if (v5 > 0)
      {
        return result;
      }
    }

LABEL_8:
    sub_20D973118();
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if (v7 <= -9.22337204e18)
    {
      goto LABEL_14;
    }

    if (v7 < 9.22337204e18)
    {
      return v7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }
}

unint64_t sub_20D817CC4()
{
  result = qword_27C8394C8;
  if (!qword_27C8394C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8394C8);
  }

  return result;
}

uint64_t sub_20D817D20()
{
  result = type metadata accessor for UtilityRateInfoSnapshot();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_20D972628();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_20D972898();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of UtilityRateInfoSnapshotManager.__allocating_init(siteID:)(uint64_t a1, uint64_t a2)
{
  v9 = (*(v2 + 488) + **(v2 + 488));
  v6 = *(*(v2 + 488) + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20D80F3B0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of UtilityRateInfoSnapshotManager.configureForSite(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 504);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20D7EB52C;

  return v10(a1, a2);
}

uint64_t getEnumTagSinglePayload for GridForecastSnapshotManager.SnapshotManagerType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GridForecastSnapshotManager.SnapshotManagerType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20D818444(uint64_t a1)
{
  v2 = sub_20D972628();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v30 = &v29 - v7;
  v8 = sub_20D972488();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = v20 - 1;
    v22 = *(sub_20D973158() - 8);
    v23 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v21;
    sub_20D972FD8();
    sub_20D973148();
    sub_20D972468();
    (*(v9 + 8))(v12, v8);

    (*(v3 + 56))(v19, 0, 1, v2);
    sub_20D81A220(v19, v17);
    if ((*(v3 + 48))(v17, 1, v2) == 1)
    {
      sub_20D7E3944(v19, &qword_27C8389E8, &qword_20D9768D0);
      sub_20D7E3944(v17, &qword_27C8389E8, &qword_20D9768D0);
    }

    else
    {
      v24 = v30;
      (*(v3 + 32))(v30, v17, v2);
      v25 = v31;
      sub_20D9725C8();
      v26 = sub_20D972538();
      v27 = *(v3 + 8);
      v27(v25, v2);
      v27(v24, v2);
      sub_20D7E3944(v19, &qword_27C8389E8, &qword_20D9768D0);
      if (v26)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_20D818818(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_20D972628();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  sub_20D9752E8();
  v1[11] = sub_20D9752D8();
  v6 = sub_20D975298();
  v1[12] = v6;
  v1[13] = v5;

  return MEMORY[0x2822009F8](sub_20D81890C, v6, v5);
}

uint64_t sub_20D81890C()
{
  v14 = v0;
  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  v0[14] = __swift_project_value_buffer(v1, qword_27C840CE0);
  v2 = sub_20D9734D8();
  v3 = sub_20D975448();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_20D7F4DC8(0xD00000000000002DLL, 0x800000020D983BE0, &v13);
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s: fetching UtilityPeakPeriod data from server", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  v6 = v0[10];
  sub_20D9725C8();
  v7 = *(MEMORY[0x277D07668] + 4);
  v12 = (*MEMORY[0x277D07668] + MEMORY[0x277D07668]);
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_20D818AE0;
  v9 = v0[10];
  v10 = v0[7];

  return v12(v9);
}

uint64_t sub_20D818AE0()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {
    (*(v3[9] + 8))(v3[10], v3[8]);
    v4 = v3[12];
    v5 = v3[13];

    return MEMORY[0x2822009F8](sub_20D818E80, v4, v5);
  }

  else
  {
    (*(v3[9] + 8))(v3[10], v3[8]);
    v6 = *(MEMORY[0x277D07670] + 4);
    v10 = (*MEMORY[0x277D07670] + MEMORY[0x277D07670]);
    v7 = swift_task_alloc();
    v3[17] = v7;
    *v7 = v3;
    v7[1] = sub_20D818C9C;
    v8 = v3[7];

    return v10(v3 + 2);
  }
}

uint64_t sub_20D818C9C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 104);
  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_20D81905C;
  }

  else
  {
    v7 = sub_20D818DD8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_20D818DD8()
{
  v1 = v0[11];

  v2 = v0[2];
  if (v2)
  {
    v3 = v0[6];
    v4 = v0[3];
    v5 = v0[4];
  }

  else
  {
    v4 = 0;
    v2 = MEMORY[0x277D84F90];
    v5 = 0xE000000000000000;
  }

  v6 = v0[10];

  v7 = v0[1];

  return v7(v2, v4, v5);
}

uint64_t sub_20D818E80()
{
  v17 = v0;
  v1 = v0[11];

  v2 = v0[16];
  v3 = v0[14];
  v4 = v2;
  v5 = sub_20D9734D8();
  v6 = sub_20D975458();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_20D7F4DC8(0xD00000000000002DLL, 0x800000020D983BE0, &v16);
    *(v7 + 12) = 2112;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s: failed to refresh utility peak periods: %@", v7, 0x16u);
    sub_20D7E3944(v8, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  else
  {
  }

  v12 = v0[10];

  v13 = v0[1];
  v14 = MEMORY[0x277D84F90];

  return v13(v14, 0, 0xE000000000000000);
}

uint64_t sub_20D81905C()
{
  v17 = v0;
  v1 = v0[11];

  v2 = v0[18];
  v3 = v0[14];
  v4 = v2;
  v5 = sub_20D9734D8();
  v6 = sub_20D975458();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_20D7F4DC8(0xD00000000000002DLL, 0x800000020D983BE0, &v16);
    *(v7 + 12) = 2112;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s: failed to refresh utility peak periods: %@", v7, 0x16u);
    sub_20D7E3944(v8, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  else
  {
  }

  v12 = v0[10];

  v13 = v0[1];
  v14 = MEMORY[0x277D84F90];

  return v13(v14, 0, 0xE000000000000000);
}

uint64_t sub_20D819238(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v2[9] = sub_20D9752E8();
  v2[10] = sub_20D9752D8();
  v3 = *(MEMORY[0x277D07670] + 4);
  v6 = (*MEMORY[0x277D07670] + MEMORY[0x277D07670]);
  v4 = swift_task_alloc();
  v2[11] = v4;
  *v4 = v2;
  v4[1] = sub_20D819308;

  return v6(v2 + 2);
}

uint64_t sub_20D819308()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v11 = *v1;
  v3[12] = v2;

  v8 = sub_20D975298();
  v3[13] = v8;
  v3[14] = v7;
  if (v2)
  {
    v9 = sub_20D819EDC;
  }

  else
  {
    v9 = sub_20D819468;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_20D819468()
{
  v28 = v0;
  v1 = v0[2];
  if (!v1)
  {
    v4 = 0;
    v1 = MEMORY[0x277D84F90];
    v3 = 0xE000000000000000;
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_3;
    }

LABEL_12:

    if (qword_27C838480 != -1)
    {
      swift_once();
    }

    v14 = sub_20D9734F8();
    __swift_project_value_buffer(v14, qword_27C840CE0);
    v15 = sub_20D9734D8();
    v16 = sub_20D975448();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D983C30, &v27);
      _os_log_impl(&dword_20D7C9000, v15, v16, "%s: utility peaks returned nil/empty from ES object", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x20F324260](v18, -1, -1);
      MEMORY[0x20F324260](v17, -1, -1);
    }

    v19 = swift_task_alloc();
    v0[19] = v19;
    *v19 = v0;
    v20 = sub_20D819C18;
    goto LABEL_22;
  }

  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];

  if (!*(v1 + 16))
  {
    goto LABEL_12;
  }

LABEL_3:
  v5 = v0[8];
  if (sub_20D818444(v1))
  {
    v6 = v0[10];

    if (qword_27C838480 != -1)
    {
      swift_once();
    }

    v7 = sub_20D9734F8();
    __swift_project_value_buffer(v7, qword_27C840CE0);
    v8 = sub_20D9734D8();
    v9 = sub_20D975448();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v27 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D983C30, &v27);
      _os_log_impl(&dword_20D7C9000, v8, v9, "%s: retrieved utility peak periods and rate plan name", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x20F324260](v11, -1, -1);
      MEMORY[0x20F324260](v10, -1, -1);
    }

    v12 = v0[1];

    return v12(v1, v4, v3);
  }

  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v21 = sub_20D9734F8();
  __swift_project_value_buffer(v21, qword_27C840CE0);
  v22 = sub_20D9734D8();
  v23 = sub_20D975448();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D983C30, &v27);
    _os_log_impl(&dword_20D7C9000, v22, v23, "%s: stale UtilityPeakPeriod data found from ES", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x20F324260](v25, -1, -1);
    MEMORY[0x20F324260](v24, -1, -1);
  }

  v19 = swift_task_alloc();
  v0[15] = v19;
  *v19 = v0;
  v20 = sub_20D819954;
LABEL_22:
  v19[1] = v20;
  v26 = v0[7];

  return sub_20D818818(v26);
}

uint64_t sub_20D819954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 120);
  v10 = *v3;
  v5[16] = a1;
  v5[17] = a2;
  v5[18] = a3;

  v7 = v4[14];
  v8 = v4[13];

  return MEMORY[0x2822009F8](sub_20D819A80, v8, v7);
}

uint64_t sub_20D819A80()
{
  v13 = v0;
  v1 = v0[10];

  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v5 = sub_20D9734F8();
  __swift_project_value_buffer(v5, qword_27C840CE0);
  v6 = sub_20D9734D8();
  v7 = sub_20D975448();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D983C30, &v12);
    _os_log_impl(&dword_20D7C9000, v6, v7, "%s: retrieved utility peak periods and rate plan name", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  v10 = v0[1];

  return v10(v4, v3, v2);
}

uint64_t sub_20D819C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 152);
  v10 = *v3;
  v5[20] = a1;
  v5[21] = a2;
  v5[22] = a3;

  v7 = v4[14];
  v8 = v4[13];

  return MEMORY[0x2822009F8](sub_20D819D44, v8, v7);
}

uint64_t sub_20D819D44()
{
  v13 = v0;
  v1 = v0[10];

  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v5 = sub_20D9734F8();
  __swift_project_value_buffer(v5, qword_27C840CE0);
  v6 = sub_20D9734D8();
  v7 = sub_20D975448();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D983C30, &v12);
    _os_log_impl(&dword_20D7C9000, v6, v7, "%s: retrieved utility peak periods and rate plan name", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  v10 = v0[1];

  return v10(v4, v3, v2);
}

uint64_t sub_20D819EDC()
{
  v17 = v0;
  v1 = v0[10];

  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v3 = sub_20D9734F8();
  __swift_project_value_buffer(v3, qword_27C840CE0);
  v4 = v2;
  v5 = sub_20D9734D8();
  v6 = sub_20D975458();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[12];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D983C30, &v16);
    *(v9 + 12) = 2112;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s: error retrieving utility peak periods + rate plan name: %@", v9, 0x16u);
    sub_20D7E3944(v10, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F324260](v11, -1, -1);
    MEMORY[0x20F324260](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14(0, 0, 0);
}

uint64_t sub_20D81A0F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x20F323530](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_20D89D0C8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_20D81A18C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x20F323530](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_20D89D218(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_20D81A220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20D81A2E0()
{
  result = qword_27C8394D8;
  if (!qword_27C8394D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C8394D8);
  }

  return result;
}

uint64_t sub_20D81A364(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D805810;

  return sub_20D8139B4(a1, v4, v5, v6);
}

uint64_t sub_20D81A418(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D805810;

  return sub_20D812DC4(a1, v4, v5, v6);
}

uint64_t sub_20D81A4CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D81A514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UtilityRateInfoSnapshot();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_20D81A5B4()
{
  result = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*MEMORY[0x277CE4278] longitude:*(MEMORY[0x277CE4278] + 8)];
  qword_27C8394E8 = result;
  return result;
}

id static HEUILocation.invalid.getter()
{
  if (qword_27C8383E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27C8394E8;

  return v0;
}

void static HEUILocation.invalid.setter(uint64_t a1)
{
  if (qword_27C8383E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27C8394E8;
  qword_27C8394E8 = a1;
}

uint64_t (*static HEUILocation.invalid.modify())()
{
  if (qword_27C8383E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_20D81A790@<X0>(void *a1@<X8>)
{
  if (qword_27C8383E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27C8394E8;
  *a1 = qword_27C8394E8;

  return v2;
}

void sub_20D81A81C(id *a1)
{
  v1 = qword_27C8383E8;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27C8394E8;
  qword_27C8394E8 = v2;
}

id sub_20D81A8CC()
{
  result = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:37.77493 longitude:-122.41942];
  qword_27C8394F0 = result;
  return result;
}

id sub_20D81A934()
{
  result = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:37.334886 longitude:-122.008988];
  qword_281126A10 = result;
  return result;
}

id sub_20D81A99C()
{
  result = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:34.05223 longitude:-118.24368];
  qword_27C8394F8 = result;
  return result;
}

id sub_20D81AA04()
{
  result = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:40.7648 longitude:-73.9808];
  qword_27C839500 = result;
  return result;
}

id sub_20D81AA6C()
{
  result = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:38.900497 longitude:-77.007507];
  qword_27C839508 = result;
  return result;
}

id sub_20D81AAD4(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

HomeEnergyUI::HistoricalUsageSnapshotManager::SnapshotManagerType_optional __swiftcall HistoricalUsageSnapshotManager.SnapshotManagerType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20D975788();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HistoricalUsageSnapshotManager.SnapshotManagerType.rawValue.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 1801678701;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6572616853707061;
  }
}

uint64_t sub_20D81AC08@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_20D81ACB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_20D81AD58(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x800000020D981530;
  v5 = 0xE400000000000000;
  if (*(v1 + 16) == 1)
  {
    v5 = 0x800000020D981530;
  }

  else
  {
    v3 = 1801678701;
  }

  if (*(v1 + 16))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6572616853707061;
  }

  if (*(v1 + 16))
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE900000000000064;
  }

  v8 = 0xD000000000000010;
  if (v2 != 1)
  {
    v8 = 1801678701;
    v4 = 0xE400000000000000;
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6572616853707061;
  }

  if (v2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v6 == v9 && v7 == v10)
  {

LABEL_22:
    *(v1 + 16) = v2;
    return result;
  }

  v12 = sub_20D9757C8();

  if (v12)
  {
    goto LABEL_22;
  }

  swift_getKeyPath();
  MEMORY[0x28223BE20]();
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
  sub_20D972848();
}

uint64_t HistoricalUsageSnapshotManager.__allocating_init(type:)(unsigned __int8 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  HistoricalUsageSnapshotManager.init(type:)(a1);
  return v5;
}

uint64_t sub_20D81AFB0(uint64_t a1, unsigned __int8 a2, uint64_t *a3)
{
  v9 = a2;
  v4 = type metadata accessor for HistoricalUsageSnapshotManager();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  result = HistoricalUsageSnapshotManager.init(type:)(&v9);
  *a3 = v7;
  return result;
}

uint64_t sub_20D81B024@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_20D81B0FC()
{
  swift_getKeyPath();
  v4 = v0;
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  swift_beginAccess();
  v2 = *(v0 + 24);
  v1 = *(v4 + 32);

  return v2;
}

uint64_t sub_20D81B1C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 24) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 32);
      if (sub_20D9757C8())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  swift_getKeyPath();
  MEMORY[0x28223BE20]();
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
  sub_20D972848();
}

void (*sub_20D81B324(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D972878();

  v4[7] = sub_20D80C924();
  return sub_20D81B45C;
}

uint64_t sub_20D81B4B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t keypath_setTm_0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_20D81B5D8()
{
  swift_getKeyPath();
  v4 = v0;
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  swift_beginAccess();
  v2 = *(v0 + 40);
  v1 = *(v4 + 48);

  return v2;
}

uint64_t sub_20D81B69C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 40) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 48);
      if (sub_20D9757C8())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  swift_getKeyPath();
  MEMORY[0x28223BE20]();
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
  sub_20D972848();
}

uint64_t sub_20D81B800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 48);
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
}

void (*sub_20D81B86C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D972878();

  v4[7] = sub_20D81B468();
  return sub_20D81B9A4;
}