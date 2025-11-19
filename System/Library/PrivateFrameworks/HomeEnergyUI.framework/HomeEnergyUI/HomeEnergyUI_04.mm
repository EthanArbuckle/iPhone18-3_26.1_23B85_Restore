uint64_t sub_20D838E64()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 224) = v3;
  v4 = *(v1 + 200);
  v5 = *(v1 + 192);
  if (v3)
  {
    v6 = sub_20D83990C;
  }

  else
  {
    v6 = sub_20D838F94;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_20D838F94()
{
  v80 = v0;
  v1 = v0[23];

  v3 = (v0 + 18);
  v2 = v0[18];
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_28:
    v42 = v0[26];
    v44 = v0[21];
    v43 = v0[22];

    v33 = sub_20D9734D8();
    v34 = sub_20D975458();

    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_31;
    }

    v45 = v0[21];
    v46 = v0[22];
    v47 = v0[20];
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v79[0] = v39;
    *v38 = 136315650;
    *(v38 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D9843F0, v79);
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_20D7F4DC8(*(v46 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v46 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v79);
    *(v38 + 22) = 2080;
    *(v38 + 24) = sub_20D7F4DC8(v47, v45, v79);
    v40 = "%s(%s)%s: UNEXPECTED ISSUE: Empty placemark array - please fix";
    goto LABEL_30;
  }

  if (v2 < 0)
  {
    v41 = v0[18];
  }

  result = sub_20D975748();
  if (!result)
  {
    goto LABEL_28;
  }

LABEL_3:
  v5 = v2 & 0xC000000000000001;
  if ((v2 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x20F323850](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v2 + 32);
  }

  v7 = v6;
  v8 = [v6 locality];

  if (!v8)
  {
    v9 = v5 ? MEMORY[0x20F323850](0, v2) : *(v2 + 32);
    v10 = v9;
    v8 = [v9 name];

    if (!v8)
    {
      v11 = 0;
      v13 = 0;
      if (v5)
      {
        goto LABEL_12;
      }

LABEL_14:
      v14 = *(v2 + 32);
      goto LABEL_15;
    }
  }

  v11 = sub_20D975098();
  v13 = v12;

  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_12:
  v14 = MEMORY[0x20F323850](0, v2);
LABEL_15:
  v15 = v14;

  v16 = [v15 ISOcountryCode];

  if (v16)
  {
    v17 = sub_20D975098();
    v19 = v18;

    if (v13)
    {
      if (v19)
      {
        v20 = v0[26];
        v22 = v0[21];
        v21 = v0[22];

        v23 = sub_20D9734D8();
        v24 = sub_20D975478();

        v25 = os_log_type_enabled(v23, v24);
        v26 = v0[27];
        if (v25)
        {
          v76 = v0[21];
          v78 = v0[27];
          v73 = v0[22];
          v74 = v0[20];
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v79[0] = v28;
          *v27 = 136316162;
          *(v27 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D9843F0, v79);
          *(v27 + 12) = 2080;
          *(v27 + 14) = sub_20D7F4DC8(*(v73 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v73 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v79);
          *(v27 + 22) = 2080;
          *(v27 + 24) = sub_20D7F4DC8(v74, v76, v79);
          *(v27 + 32) = 2080;
          *(v27 + 34) = sub_20D7F4DC8(v11, v13, v79);
          *(v27 + 42) = 2080;
          *(v27 + 44) = sub_20D7F4DC8(v17, v19, v79);
          _os_log_impl(&dword_20D7C9000, v23, v24, "\t...%s(%s)%s returning %s/%s", v27, 0x34u);
          swift_arrayDestroy();
          MEMORY[0x20F324260](v28, -1, -1);
          MEMORY[0x20F324260](v27, -1, -1);
          v26 = v78;
        }

        v29 = v0[1];

        return v29(v11, v13, v17, v19);
      }
    }
  }

  v30 = v0[26];
  v32 = v0[21];
  v31 = v0[22];

  v33 = sub_20D9734D8();
  v34 = sub_20D975458();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = v0[21];
    v36 = v0[22];
    v37 = v0[20];
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v79[0] = v39;
    *v38 = 136315650;
    *(v38 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D9843F0, v79);
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_20D7F4DC8(*(v36 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v36 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v79);
    *(v38 + 22) = 2080;
    *(v38 + 24) = sub_20D7F4DC8(v37, v35, v79);
    v40 = "%s(%s)%s: UNEXPECTED ISSUE: city/countrycode";
LABEL_30:
    _os_log_impl(&dword_20D7C9000, v33, v34, v40, v38, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v39, -1, -1);
    MEMORY[0x20F324260](v38, -1, -1);
  }

LABEL_31:

  v48 = (v0 + 10);
  v49 = v0[27];
  sub_20D84D14C();
  v50 = swift_allocError();
  *v51 = 11;
  swift_willThrow();

  v52 = v0[26];
  v54 = v0[21];
  v53 = v0[22];

  v55 = v50;
  v56 = sub_20D9734D8();
  v57 = sub_20D975458();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = v0[22];
    v75 = v0[20];
    v77 = v0[21];
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v79[0] = v61;
    *v59 = 136315906;
    *(v59 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D9843F0, v79);
    *(v59 + 12) = 2080;
    v62 = v58 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log;
    v3 = (v0 + 18);
    *(v59 + 14) = sub_20D7F4DC8(*v62, *(v62 + 8), v79);
    *(v59 + 22) = 2080;
    *(v59 + 24) = sub_20D7F4DC8(v75, v77, v79);
    *(v59 + 32) = 2112;
    v63 = v50;
    v64 = _swift_stdlib_bridgeErrorToNSError();
    *(v59 + 34) = v64;
    *v60 = v64;
    _os_log_impl(&dword_20D7C9000, v56, v57, "%s(%s)%s: can't reverseGeocodeLocation: %@", v59, 0x2Au);
    sub_20D7E3944(v60, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v60, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v61, -1, -1);
    MEMORY[0x20F324260](v59, -1, -1);
  }

  *v48 = v50;
  v65 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  type metadata accessor for CLError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_37;
  }

  v66 = *v3;
  *v48 = *v3;
  sub_20D84DFEC(&qword_281124C90, type metadata accessor for CLError);
  sub_20D9720C8();
  if (*v3 != 2)
  {

LABEL_37:
    *v48 = v50;
    v68 = v50;
    if (swift_dynamicCast())
    {
      v69 = *v3;
      sub_20D84D14C();
      swift_allocError();
      *v70 = v69;
    }

    else
    {
      sub_20D84D14C();
      swift_allocError();
      *v71 = 7;
    }

    swift_willThrow();
    goto LABEL_41;
  }

  sub_20D84D14C();
  swift_allocError();
  *v67 = 7;
  swift_willThrow();

LABEL_41:
  v72 = v0[1];

  return v72();
}

uint64_t sub_20D83990C()
{
  v29 = v0;
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[23];

  swift_willThrow();

  v4 = v0[28];
  v5 = v0[26];
  v7 = v0[21];
  v6 = v0[22];

  v8 = v4;
  v9 = sub_20D9734D8();
  v10 = sub_20D975458();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[22];
    v27 = v0[21];
    v12 = v0[20];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28[0] = v15;
    *v13 = 136315906;
    *(v13 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D9843F0, v28);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_20D7F4DC8(*(v11 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v11 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v28);
    *(v13 + 22) = 2080;
    *(v13 + 24) = sub_20D7F4DC8(v12, v27, v28);
    *(v13 + 32) = 2112;
    v16 = v4;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 34) = v17;
    *v14 = v17;
    _os_log_impl(&dword_20D7C9000, v9, v10, "%s(%s)%s: can't reverseGeocodeLocation: %@", v13, 0x2Au);
    sub_20D7E3944(v14, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v15, -1, -1);
    MEMORY[0x20F324260](v13, -1, -1);
  }

  v0[10] = v4;
  v18 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  type metadata accessor for CLError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v19 = v0[18];
  v0[10] = v19;
  sub_20D84DFEC(&qword_281124C90, type metadata accessor for CLError);
  sub_20D9720C8();
  if (v0[18] != 2)
  {

LABEL_7:
    v0[10] = v4;
    v21 = v4;
    if (swift_dynamicCast())
    {
      v22 = *(v0 + 144);
      sub_20D84D14C();
      swift_allocError();
      *v23 = v22;
    }

    else
    {
      sub_20D84D14C();
      swift_allocError();
      *v24 = 7;
    }

    swift_willThrow();
    goto LABEL_11;
  }

  sub_20D84D14C();
  swift_allocError();
  *v20 = 7;
  swift_willThrow();

LABEL_11:
  v25 = v0[1];

  return v25();
}

uint64_t sub_20D839CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_20D839CE0, 0, 0);
}

uint64_t sub_20D839CE0()
{
  v22 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = sub_20D9734F8();
  *(v0 + 48) = __swift_project_value_buffer(v3, qword_28112AC00);

  v4 = sub_20D9734D8();
  v5 = sub_20D975478();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);
    v8 = *(v0 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_20D7F4DC8(0xD000000000000014, 0x800000020D984360, &v21);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_20D7F4DC8(*(v7 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v7 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v21);
    *(v9 + 22) = 2080;
    *(v9 + 24) = sub_20D7F4DC8(v8, v6, &v21);
    _os_log_impl(&dword_20D7C9000, v4, v5, "\t...%s(%s):%s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v10, -1, -1);
    MEMORY[0x20F324260](v9, -1, -1);
  }

  [*(v0 + 16) coordinate];
  v12 = v11;
  v14 = v13;
  v15 = [objc_opt_self() sharedSession];
  *(v0 + 56) = v15;
  v16 = *(MEMORY[0x277D17E70] + 4);
  v17 = swift_task_alloc();
  *(v0 + 64) = v17;
  *v17 = v0;
  v17[1] = sub_20D839F6C;
  v18.n128_u64[0] = v12;
  v19.n128_u64[0] = v14;

  return MEMORY[0x282172080](v15, v18, v19);
}

uint64_t sub_20D839F6C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 64);
  v8 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_20D83A0D8, 0, 0);
  }

  else
  {

    v9 = *(v8 + 8);

    return v9(a1, a2);
  }
}

uint64_t sub_20D83A0D8()
{
  v22 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);

  v5 = v1;
  v6 = sub_20D9734D8();
  v7 = sub_20D975458();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 72);
    v9 = *(v0 + 40);
    v20 = *(v0 + 32);
    v10 = *(v0 + 24);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 136315906;
    *(v11 + 4) = sub_20D7F4DC8(0xD000000000000014, 0x800000020D984360, &v21);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_20D7F4DC8(*(v9 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v9 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v21);
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_20D7F4DC8(v10, v20, &v21);
    *(v11 + 32) = 2112;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 34) = v15;
    *v12 = v15;
    _os_log_impl(&dword_20D7C9000, v6, v7, "%s(%s):%s: GridIDLookup failed with error: %@", v11, 0x2Au);
    sub_20D7E3944(v12, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v13, -1, -1);
    MEMORY[0x20F324260](v11, -1, -1);
  }

  sub_20D84D14C();
  *(v0 + 80) = swift_allocError();
  *(v0 + 88) = v16;
  sub_20D9752E8();
  *(v0 + 96) = sub_20D9752D8();
  v18 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D83A364, v18, v17);
}

uint64_t sub_20D83A364()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[5];

  sub_20D8437C8(v3, v2);

  return MEMORY[0x2822009F8](sub_20D83A3E8, 0, 0);
}

uint64_t sub_20D83A3E8()
{
  v1 = v0[9];
  v2 = v0[10];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t GridForecastSnapshotManager.updateRelevantSnapshotsFor(_:updateFromCurrentLocation:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 232) = a2;
  *(v4 + 240) = v3;
  *(v4 + 456) = a3;
  *(v4 + 224) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460) - 8) + 64) + 15;
  *(v4 + 248) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750) - 8) + 64) + 15;
  *(v4 + 256) = swift_task_alloc();
  v7 = type metadata accessor for GridForecastSnapshotType(0);
  *(v4 + 264) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  v9 = type metadata accessor for GridForecastSnapshot(0);
  *(v4 + 288) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  v11 = sub_20D9729D8();
  *(v4 + 328) = v11;
  v12 = *(v11 - 8);
  *(v4 + 336) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  sub_20D9752E8();
  *(v4 + 360) = sub_20D9752D8();
  v15 = sub_20D975298();
  *(v4 + 368) = v15;
  *(v4 + 376) = v14;

  return MEMORY[0x2822009F8](sub_20D83A664, v15, v14);
}

uint64_t sub_20D83A664()
{
  v32 = v0;
  if (*(v0 + 456))
  {
    v1 = 0x6F4C203A63725328;
  }

  else
  {
    v1 = 0x6946203A63725328;
  }

  if (*(v0 + 456))
  {
    v2 = 0xEA00000000002963;
  }

  else
  {
    v2 = 0xEF2968746F422F78;
  }

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v5 = sub_20D9734F8();
  *(v0 + 384) = __swift_project_value_buffer(v5, qword_28112AC00);

  v6 = sub_20D9734D8();
  v7 = sub_20D975478();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 288);
    v30 = v7;
    v10 = *(v0 + 232);
    v9 = *(v0 + 240);
    v11 = *(v0 + 224);
    v12 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v12 = 136316418;
    *(v12 + 4) = sub_20D7F4DC8(0xD000000000000038, 0x800000020D984160, &v31);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_20D7F4DC8(*(v9 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v9 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v31);
    *(v12 + 22) = 2080;
    *(v12 + 24) = sub_20D7F4DC8(v1, v2, &v31);
    *(v12 + 32) = 2080;
    *(v12 + 34) = sub_20D7F4DC8(v11, v10, &v31);
    *(v12 + 42) = 2080;
    swift_getKeyPath();
    *(v0 + 208) = v9;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
    sub_20D972858();

    v13 = v9 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
    swift_beginAccess();
    v14 = (v13 + *(v8 + 24));
    v15 = *v14;
    v16 = v14[1];

    v17 = sub_20D7F4DC8(v15, v16, &v31);

    *(v12 + 44) = v17;
    *(v12 + 52) = 2080;
    swift_getKeyPath();
    *(v0 + 216) = v9;
    sub_20D972858();

    v18 = v9 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
    swift_beginAccess();
    v19 = (v18 + *(v8 + 24));
    v20 = *v19;
    v21 = v19[1];

    v22 = sub_20D7F4DC8(v20, v21, &v31);

    *(v12 + 54) = v22;
    _os_log_impl(&dword_20D7C9000, v6, v30, "\t...%s(%s):%s for gridID: %s. Fixed is currently %s, Loc is currently %s", v12, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v29, -1, -1);
    MEMORY[0x20F324260](v12, -1, -1);
  }

  v23 = swift_task_alloc();
  *(v0 + 392) = v23;
  *v23 = v0;
  v23[1] = sub_20D83AA90;
  v24 = *(v0 + 352);
  v25 = *(v0 + 232);
  v26 = *(v0 + 240);
  v27 = *(v0 + 224);

  return sub_20D841678(v24, v27, v25, v1, v2);
}

uint64_t sub_20D83AA90()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v8 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    *(v2 + 456);

    v4 = *(v2 + 368);
    v5 = *(v2 + 376);
    v6 = sub_20D83CB18;
  }

  else
  {
    v4 = *(v2 + 368);
    v5 = *(v2 + 376);
    v6 = sub_20D83ABCC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20D83ABCC()
{
  v172 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 224);
  swift_getKeyPath();
  *(v0 + 112) = v3;
  *(v0 + 408) = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager___observationRegistrar;
  *(v0 + 416) = sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972858();

  v5 = v3 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  swift_beginAccess();
  v143 = v1;
  v163 = v5;
  v6 = (v5 + *(v1 + 24));
  v7 = *v6 == v4 && v6[1] == v2;
  if (v7 || (v8 = *(v0 + 224), v9 = *(v0 + 232), (sub_20D9757C8() & 1) != 0))
  {
    v10 = *(v0 + 384);
    v11 = *(v0 + 240);
    v12 = 0xEA00000000002963;
    *(v0 + 456);

    v13 = sub_20D9734D8();
    v14 = sub_20D975478();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 240);
      if (*(v0 + 456))
      {
        v16 = 0x6F4C203A63725328;
      }

      else
      {
        v16 = 0x6946203A63725328;
      }

      if (!*(v0 + 456))
      {
        v12 = 0xEF2968746F422F78;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v171[0] = v18;
      *v17 = 136315650;
      *(v17 + 4) = sub_20D7F4DC8(0xD000000000000038, 0x800000020D984160, v171);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_20D7F4DC8(*(v15 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v15 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v171);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_20D7F4DC8(v16, v12, v171);
      _os_log_impl(&dword_20D7C9000, v13, v14, "\t...%s(%s):%s Updating fix snapshot...", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v18, -1, -1);
      MEMORY[0x20F324260](v17, -1, -1);
    }

    v146 = *(v0 + 344);
    v147 = *(v0 + 336);
    v145 = *(v0 + 328);
    v131 = *(v0 + 320);
    v156 = *(v0 + 312);
    v135 = *(v0 + 400);
    v137 = *(v0 + 304);
    v19 = *(v0 + 280);
    v129 = *(v0 + 352);
    v130 = *(v0 + 288);
    v148 = v19;
    v139 = *(v0 + 272);
    v141 = *(v0 + 264);
    v20 = *(v0 + 240);
    v133 = *(v0 + 232);
    v134 = *(v0 + 256);
    v132 = *(v0 + 224);
    swift_getKeyPath();
    *(v0 + 168) = v20;
    v152 = v20;
    sub_20D972858();

    sub_20D84BC18(v163, v19, type metadata accessor for GridForecastSnapshotType);
    v21 = *(v147 + 16);
    v21(v146, v129, v145);
    swift_getKeyPath();
    *(v0 + 176) = v20;
    sub_20D972858();

    v22 = (v163 + v130[7]);
    v24 = *v22;
    v23 = v22[1];
    sub_20D84BC18(v148, v131, type metadata accessor for GridForecastSnapshotType);
    v21(v131 + v130[5], v146, v145);
    v25 = (v131 + *(v143 + 24));
    *v25 = v132;
    v25[1] = v133;
    v26 = (v131 + v130[7]);
    *v26 = v24;
    v26[1] = v23;
    *(v131 + v130[9]) = 12;
    v21(v134, v146, v145);
    (*(v147 + 56))(v134, 0, 1, v145);

    v27 = sub_20D87934C(v134);
    sub_20D7E3944(v134, &qword_27C838A00, &qword_20D976750);
    v171[0] = v27;
    v28 = sub_20D8797EC(v171);

    v29 = *(v147 + 8);
    *(v0 + 424) = v29;
    *(v0 + 432) = (v147 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v29(v146, v145);
    sub_20D84BADC(v148, type metadata accessor for GridForecastSnapshotType);
    *(v131 + v130[8]) = v28;
    sub_20D84BC18(v131, v156, type metadata accessor for GridForecastSnapshot);
    swift_getKeyPath();
    v30 = swift_task_alloc();
    *(v30 + 16) = v152;
    *(v30 + 24) = v156;
    *(v0 + 184) = v152;
    sub_20D972848();

    sub_20D84BADC(v156, type metadata accessor for GridForecastSnapshot);
    swift_getKeyPath();
    *(v0 + 192) = v152;
    sub_20D972858();

    sub_20D84BC18(v163, v137, type metadata accessor for GridForecastSnapshot);
    sub_20D84BC18(v137, v139, type metadata accessor for GridForecastSnapshotType);
    sub_20D84BADC(v137, type metadata accessor for GridForecastSnapshot);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v32 = *(v0 + 272);
    v33 = *(v0 + 248);
    if (EnumCaseMultiPayload == 1)
    {

      v34 = *(v32 + 16);

      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
      sub_20D7E2A54(v32 + *(v35 + 64), v33);
    }

    else
    {
      v36 = sub_20D972698();
      (*(*(v36 - 8) + 56))(v33, 1, 1, v36);
      sub_20D84BADC(v32, type metadata accessor for GridForecastSnapshotType);
    }

    v37 = swift_task_alloc();
    *(v0 + 440) = v37;
    *v37 = v0;
    v37[1] = sub_20D83BE78;
    v38 = *(v0 + 248);
    v40 = *(v0 + 224);
    v39 = *(v0 + 232);

    return (sub_20D84BD34)(v40, v39, v38);
  }

  else
  {
    v42 = *(v0 + 384);
    v43 = *(v0 + 360);
    v44 = *(v0 + 456);
    v46 = *(v0 + 232);
    v45 = *(v0 + 240);

    v47 = sub_20D9734D8();
    v48 = sub_20D975478();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = *(v0 + 240);
      v149 = *(v0 + 224);
      v153 = *(v0 + 232);
      v157 = v48;
      if (*(v0 + 456))
      {
        v50 = 0x6F4C203A63725328;
      }

      else
      {
        v50 = 0x6946203A63725328;
      }

      if (*(v0 + 456))
      {
        v51 = 0xEA00000000002963;
      }

      else
      {
        v51 = 0xEF2968746F422F78;
      }

      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v171[0] = v53;
      *v52 = 136316162;
      *(v52 + 4) = sub_20D7F4DC8(0xD000000000000038, 0x800000020D984160, v171);
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_20D7F4DC8(*(v49 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v49 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v171);
      *(v52 + 22) = 2080;
      *(v52 + 24) = sub_20D7F4DC8(v50, v51, v171);
      *(v52 + 32) = 2080;
      swift_getKeyPath();
      *(v0 + 160) = v49;
      sub_20D972858();

      v54 = (v163 + *(v143 + 24));
      v55 = *v54;
      v56 = v54[1];

      v57 = sub_20D7F4DC8(v55, v56, v171);

      *(v52 + 34) = v57;
      *(v52 + 42) = 2080;
      *(v52 + 44) = sub_20D7F4DC8(v149, v153, v171);
      _os_log_impl(&dword_20D7C9000, v47, v157, "\t...%s(%s):%s fix snapshot grid (%s), does not match update grid (%s) - NOT UPDATING", v52, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v53, -1, -1);
      MEMORY[0x20F324260](v52, -1, -1);
    }

    v59 = *(v0 + 408);
    v58 = *(v0 + 416);
    v154 = *(v0 + 400);
    v60 = *(v0 + 288);
    v61 = *(v0 + 232);
    v62 = *(v0 + 240);
    v63 = *(v0 + 224);
    swift_getKeyPath();
    *(v0 + 120) = v62;
    sub_20D972858();

    v64 = v62 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
    swift_beginAccess();
    v158 = v64;
    v65 = (v64 + *(v60 + 24));
    if (*v65 == v63 && v65[1] == v61 || (v79 = *(v0 + 456), v80 = *(v0 + 224), v81 = *(v0 + 232), (sub_20D9757C8() & 1) != 0) || v79)
    {
      v66 = *(v0 + 384);
      v67 = *(v0 + 240);
      *(v0 + 456);

      v68 = sub_20D9734D8();
      v69 = sub_20D975478();

      if (os_log_type_enabled(v68, v69))
      {
        if (*(v0 + 456))
        {
          v70 = 0x800000020D9841A0;
        }

        else
        {
          v70 = 0xE000000000000000;
        }

        v71 = *(v0 + 240);
        if (*(v0 + 456))
        {
          v72 = 0xEA00000000002963;
        }

        else
        {
          v72 = 0xEF2968746F422F78;
        }

        if (*(v0 + 456))
        {
          v73 = 0x6F4C203A63725328;
        }

        else
        {
          v73 = 0x6946203A63725328;
        }

        if (*(v0 + 456))
        {
          v74 = 0xD000000000000018;
        }

        else
        {
          v74 = 0;
        }

        v165 = v73;
        v168 = v74;
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v171[0] = v76;
        *v75 = 136315906;
        *(v75 + 4) = sub_20D7F4DC8(0xD000000000000038, 0x800000020D984160, v171);
        *(v75 + 12) = 2080;
        *(v75 + 14) = sub_20D7F4DC8(*(v71 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v71 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v171);
        *(v75 + 22) = 2080;
        v77 = sub_20D7F4DC8(v165, v72, v171);

        *(v75 + 24) = v77;
        *(v75 + 32) = 2080;
        v78 = sub_20D7F4DC8(v168, v70, v171);

        *(v75 + 34) = v78;
        _os_log_impl(&dword_20D7C9000, v68, v69, "\t...%s(%s):%s Updating loc snapshot...%s", v75, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v76, -1, -1);
        MEMORY[0x20F324260](v75, -1, -1);
      }

      else
      {
        v98 = *(v0 + 456);
      }

      v100 = *(v0 + 408);
      v99 = *(v0 + 416);
      v170 = *(v0 + 352);
      v162 = *(v0 + 344);
      v101 = *(v0 + 336);
      v160 = *(v0 + 328);
      v151 = *(v0 + 296);
      v136 = *(v0 + 288);
      v138 = *(v0 + 312);
      v102 = *(v0 + 280);
      v167 = v102;
      v103 = *(v0 + 240);
      v142 = *(v0 + 232);
      v144 = *(v0 + 256);
      v140 = *(v0 + 224);
      swift_getKeyPath();
      *(v0 + 136) = v103;
      sub_20D972858();

      sub_20D84BC18(v158, v102, type metadata accessor for GridForecastSnapshotType);
      v104 = *(v101 + 16);
      v104(v162, v170, v160);
      swift_getKeyPath();
      *(v0 + 144) = v103;
      sub_20D972858();

      v105 = (v158 + v136[7]);
      v107 = *v105;
      v106 = v105[1];
      sub_20D84BC18(v167, v138, type metadata accessor for GridForecastSnapshotType);
      v104(v138 + v136[5], v162, v160);
      v108 = (v138 + v136[6]);
      *v108 = v140;
      v108[1] = v142;
      v109 = (v138 + v136[7]);
      *v109 = v107;
      v109[1] = v106;
      *(v138 + v136[9]) = 12;
      v104(v144, v162, v160);
      (*(v101 + 56))(v144, 0, 1, v160);

      v110 = sub_20D87934C(v144);
      sub_20D7E3944(v144, &qword_27C838A00, &qword_20D976750);
      v171[0] = v110;
      v111 = sub_20D8797EC(v171);

      v112 = *(v101 + 8);
      v112(v162, v160);
      sub_20D84BADC(v167, type metadata accessor for GridForecastSnapshotType);
      *(v138 + v136[8]) = v111;
      sub_20D84BC18(v138, v151, type metadata accessor for GridForecastSnapshot);
      swift_getKeyPath();
      v113 = swift_task_alloc();
      *(v113 + 16) = v103;
      *(v113 + 24) = v151;
      *(v0 + 152) = v103;
      sub_20D972848();

      sub_20D84BADC(v138, type metadata accessor for GridForecastSnapshot);
      v112(v170, v160);

      sub_20D84BADC(v151, type metadata accessor for GridForecastSnapshot);
    }

    else
    {
      v82 = *(v0 + 384);
      v84 = *(v0 + 232);
      v83 = *(v0 + 240);
      *(v0 + 456);

      v85 = sub_20D9734D8();
      v86 = sub_20D975478();

      if (os_log_type_enabled(v85, v86))
      {
        v150 = *(v0 + 408);
        v155 = *(v0 + 416);
        v87 = *(v0 + 336);
        v166 = *(v0 + 328);
        v169 = *(v0 + 352);
        v88 = *(v0 + 240);
        v164 = *(v0 + 232);
        v159 = *(v0 + 288);
        v161 = *(v0 + 224);
        if (*(v0 + 456))
        {
          v89 = 0xEA00000000002963;
        }

        else
        {
          v89 = 0xEF2968746F422F78;
        }

        if (*(v0 + 456))
        {
          v90 = 0x6F4C203A63725328;
        }

        else
        {
          v90 = 0x6946203A63725328;
        }

        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v171[0] = v92;
        *v91 = 136316162;
        *(v91 + 4) = sub_20D7F4DC8(0xD000000000000038, 0x800000020D984160, v171);
        *(v91 + 12) = 2080;
        *(v91 + 14) = sub_20D7F4DC8(*(v88 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v88 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v171);
        *(v91 + 22) = 2080;
        v93 = sub_20D7F4DC8(v90, v89, v171);

        *(v91 + 24) = v93;
        *(v91 + 32) = 2080;
        swift_getKeyPath();
        *(v0 + 128) = v88;
        sub_20D972858();

        v94 = (v158 + *(v159 + 24));
        v95 = *v94;
        v96 = v94[1];

        v97 = sub_20D7F4DC8(v95, v96, v171);

        *(v91 + 34) = v97;
        *(v91 + 42) = 2080;
        *(v91 + 44) = sub_20D7F4DC8(v161, v164, v171);
        _os_log_impl(&dword_20D7C9000, v85, v86, "\t...%s(%s):%s loc snapshot grid (%s), does not match update grid (%s) - NOT UPDATING", v91, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v92, -1, -1);
        MEMORY[0x20F324260](v91, -1, -1);

        (*(v87 + 8))(v169, v166);
      }

      else
      {
        v125 = *(v0 + 352);
        v126 = *(v0 + 328);
        v127 = *(v0 + 336);
        v128 = *(v0 + 456);

        (*(v127 + 8))(v125, v126);
      }
    }

    v115 = *(v0 + 344);
    v114 = *(v0 + 352);
    v117 = *(v0 + 312);
    v116 = *(v0 + 320);
    v119 = *(v0 + 296);
    v118 = *(v0 + 304);
    v121 = *(v0 + 272);
    v120 = *(v0 + 280);
    v123 = *(v0 + 248);
    v122 = *(v0 + 256);

    v124 = *(v0 + 8);

    return v124();
  }
}

uint64_t sub_20D83BE78(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 440);
  v6 = *v2;
  *(v4 + 448) = v1;

  v7 = *(v4 + 248);
  if (v1)
  {
    *(v4 + 456);
    sub_20D7E3944(v7, &qword_27C8389F8, &qword_20D978460);

    v8 = *(v4 + 368);
    v9 = *(v4 + 376);
    v10 = sub_20D83C9FC;
  }

  else
  {
    *(v4 + 457) = a1 & 1;
    sub_20D7E3944(v7, &qword_27C8389F8, &qword_20D978460);
    v8 = *(v4 + 368);
    v9 = *(v4 + 376);
    v10 = sub_20D83C010;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_20D83C010()
{
  v103 = v0;
  v1 = *(v0 + 457);
  v2 = *(v0 + 448);
  v4 = *(v0 + 408);
  v3 = *(v0 + 416);
  v5 = *(v0 + 360);
  v6 = *(v0 + 320);
  v7 = *(v0 + 240);
  swift_getKeyPath();
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  *(v0 + 200) = v7;
  sub_20D972848();

  sub_20D84BADC(v6, type metadata accessor for GridForecastSnapshot);

  v10 = *(v0 + 408);
  v9 = *(v0 + 416);
  v11 = *(v0 + 288);
  v13 = *(v0 + 232);
  v12 = *(v0 + 240);
  v14 = *(v0 + 224);
  swift_getKeyPath();
  *(v0 + 120) = v12;
  sub_20D972858();

  v15 = v12 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
  swift_beginAccess();
  v98 = v15;
  v16 = (v15 + *(v11 + 24));
  v17 = *v16 == v14 && v16[1] == v13;
  if (v17 || (v18 = *(v0 + 456), v19 = *(v0 + 224), v20 = *(v0 + 232), (sub_20D9757C8() & 1) != 0) || v18)
  {
    v37 = *(v0 + 384);
    v38 = *(v0 + 240);
    v39 = 0xEA00000000002963;
    *(v0 + 456);

    v40 = sub_20D9734D8();
    v41 = sub_20D975478();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = 0x800000020D9841A0;
      if (!*(v0 + 456))
      {
        v42 = 0xE000000000000000;
      }

      v100 = v42;
      v43 = *(v0 + 240);
      if (*(v0 + 456))
      {
        v44 = 0x6F4C203A63725328;
      }

      else
      {
        v39 = 0xEF2968746F422F78;
        v44 = 0x6946203A63725328;
      }

      if (*(v0 + 456))
      {
        v45 = 0xD000000000000018;
      }

      else
      {
        v45 = 0;
      }

      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v102[0] = v47;
      *v46 = 136315906;
      *(v46 + 4) = sub_20D7F4DC8(0xD000000000000038, 0x800000020D984160, v102);
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_20D7F4DC8(*(v43 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v43 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v102);
      *(v46 + 22) = 2080;
      v48 = sub_20D7F4DC8(v44, v39, v102);

      *(v46 + 24) = v48;
      *(v46 + 32) = 2080;
      v49 = sub_20D7F4DC8(v45, v100, v102);

      *(v46 + 34) = v49;
      _os_log_impl(&dword_20D7C9000, v40, v41, "\t...%s(%s):%s Updating loc snapshot...%s", v46, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v47, -1, -1);
      MEMORY[0x20F324260](v46, -1, -1);
    }

    else
    {
      v50 = *(v0 + 456);
    }

    v52 = *(v0 + 408);
    v51 = *(v0 + 416);
    v97 = *(v0 + 352);
    v92 = *(v0 + 344);
    v53 = *(v0 + 336);
    v81 = v53;
    v101 = *(v0 + 328);
    v87 = *(v0 + 296);
    v90 = *(v0 + 288);
    v94 = *(v0 + 280);
    v54 = *(v0 + 240);
    v84 = *(v0 + 232);
    v85 = *(v0 + 256);
    v82 = *(v0 + 312);
    v83 = *(v0 + 224);
    swift_getKeyPath();
    *(v0 + 136) = v54;
    sub_20D972858();

    sub_20D84BC18(v98, v94, type metadata accessor for GridForecastSnapshotType);
    v55 = *(v53 + 16);
    v55(v92, v97, v101);
    swift_getKeyPath();
    *(v0 + 144) = v54;
    sub_20D972858();

    v56 = (v98 + v90[7]);
    v58 = *v56;
    v57 = v56[1];
    sub_20D84BC18(v94, v82, type metadata accessor for GridForecastSnapshotType);
    v55(v82 + v90[5], v92, v101);
    v59 = (v82 + v90[6]);
    *v59 = v83;
    v59[1] = v84;
    v60 = (v82 + v90[7]);
    *v60 = v58;
    v60[1] = v57;
    *(v82 + v90[9]) = 12;
    v55(v85, v92, v101);
    (*(v81 + 56))(v85, 0, 1, v101);

    v61 = sub_20D87934C(v85);
    sub_20D7E3944(v85, &qword_27C838A00, &qword_20D976750);
    v102[0] = v61;
    v62 = sub_20D8797EC(v102);

    v63 = *(v81 + 8);
    v63(v92, v101);
    sub_20D84BADC(v94, type metadata accessor for GridForecastSnapshotType);
    *(v82 + v90[8]) = v62;
    sub_20D84BC18(v82, v87, type metadata accessor for GridForecastSnapshot);
    swift_getKeyPath();
    v64 = swift_task_alloc();
    *(v64 + 16) = v54;
    *(v64 + 24) = v87;
    *(v0 + 152) = v54;
    sub_20D972848();

    sub_20D84BADC(v82, type metadata accessor for GridForecastSnapshot);
    v63(v97, v101);

    sub_20D84BADC(v87, type metadata accessor for GridForecastSnapshot);
  }

  else
  {
    v21 = *(v0 + 384);
    v23 = *(v0 + 232);
    v22 = *(v0 + 240);
    *(v0 + 456);

    v24 = sub_20D9734D8();
    v25 = sub_20D975478();

    if (os_log_type_enabled(v24, v25))
    {
      v86 = *(v0 + 408);
      v88 = *(v0 + 416);
      v99 = *(v0 + 352);
      v26 = *(v0 + 336);
      v96 = *(v0 + 328);
      v27 = *(v0 + 240);
      v93 = *(v0 + 232);
      v89 = *(v0 + 288);
      v91 = *(v0 + 224);
      v95 = v25;
      if (*(v0 + 456))
      {
        v28 = 0xEA00000000002963;
      }

      else
      {
        v28 = 0xEF2968746F422F78;
      }

      if (*(v0 + 456))
      {
        v29 = 0x6F4C203A63725328;
      }

      else
      {
        v29 = 0x6946203A63725328;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v102[0] = v31;
      *v30 = 136316162;
      *(v30 + 4) = sub_20D7F4DC8(0xD000000000000038, 0x800000020D984160, v102);
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_20D7F4DC8(*(v27 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v27 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v102);
      *(v30 + 22) = 2080;
      v32 = sub_20D7F4DC8(v29, v28, v102);

      *(v30 + 24) = v32;
      *(v30 + 32) = 2080;
      swift_getKeyPath();
      *(v0 + 128) = v27;
      sub_20D972858();

      v33 = (v98 + *(v89 + 24));
      v35 = *v33;
      v34 = v33[1];

      v36 = sub_20D7F4DC8(v35, v34, v102);

      *(v30 + 34) = v36;
      *(v30 + 42) = 2080;
      *(v30 + 44) = sub_20D7F4DC8(v91, v93, v102);
      _os_log_impl(&dword_20D7C9000, v24, v95, "\t...%s(%s):%s loc snapshot grid (%s), does not match update grid (%s) - NOT UPDATING", v30, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v31, -1, -1);
      MEMORY[0x20F324260](v30, -1, -1);

      (*(v26 + 8))(v99, v96);
    }

    else
    {
      v65 = *(v0 + 352);
      v66 = *(v0 + 328);
      v67 = *(v0 + 336);
      v68 = *(v0 + 456);

      (*(v67 + 8))(v65, v66);
    }
  }

  v70 = *(v0 + 344);
  v69 = *(v0 + 352);
  v72 = *(v0 + 312);
  v71 = *(v0 + 320);
  v74 = *(v0 + 296);
  v73 = *(v0 + 304);
  v76 = *(v0 + 272);
  v75 = *(v0 + 280);
  v78 = *(v0 + 248);
  v77 = *(v0 + 256);

  v79 = *(v0 + 8);

  return v79();
}

uint64_t sub_20D83C9FC()
{
  v2 = v0[53];
  v1 = v0[54];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[40];
  v5 = v0[41];

  sub_20D84BADC(v6, type metadata accessor for GridForecastSnapshot);
  v2(v4, v5);
  v19 = v0[56];
  v8 = v0[43];
  v7 = v0[44];
  v10 = v0[39];
  v9 = v0[40];
  v12 = v0[37];
  v11 = v0[38];
  v14 = v0[34];
  v13 = v0[35];
  v15 = v0[31];
  v16 = v0[32];

  v17 = v0[1];

  return v17();
}

uint64_t sub_20D83CB18()
{
  v1 = v0[45];

  v14 = v0[50];
  v3 = v0[43];
  v2 = v0[44];
  v5 = v0[39];
  v4 = v0[40];
  v7 = v0[37];
  v6 = v0[38];
  v9 = v0[34];
  v8 = v0[35];
  v10 = v0[31];
  v11 = v0[32];

  v12 = v0[1];

  return v12();
}

uint64_t sub_20D83CC04(unsigned __int8 *a1, uint64_t a2, uint64_t (*a3)(uint64_t a1))
{
  v4 = v3;
  v99 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v93 = &v86 - v9;
  v10 = sub_20D9729D8();
  v94 = *(v10 - 8);
  v95 = v10;
  v11 = *(v94 + 64);
  MEMORY[0x28223BE20](v10);
  v91 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GridForecastSnapshotType(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v100 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for GridForecastSnapshot(0);
  v16 = *(*(v101 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v101);
  v96 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v90 = &v86 - v19;
  v97 = *a1;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v20 = sub_20D9734F8();
  __swift_project_value_buffer(v20, qword_28112AC00);

  v21 = sub_20D9734D8();
  v22 = sub_20D975478();

  v23 = os_log_type_enabled(v21, v22);
  v89 = a2;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v105[0] = v26;
    *v24 = 136315650;
    *(v24 + 4) = sub_20D7F4DC8(0xD000000000000022, 0x800000020D9843A0, v105);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_20D7F4DC8(*(v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v105);
    *(v24 + 22) = 2112;
    sub_20D84D14C();
    swift_allocError();
    *v27 = v97;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 24) = v28;
    *v25 = v28;
    _os_log_impl(&dword_20D7C9000, v21, v22, "\t...%s(%s): creating an error snapshot for %@", v24, 0x20u);
    sub_20D7E3944(v25, &unk_27C839E80, &qword_20D979610);
    v29 = v25;
    a2 = v89;
    MEMORY[0x20F324260](v29, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v26, -1, -1);
    MEMORY[0x20F324260](v24, -1, -1);
  }

  swift_getKeyPath();
  v30 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager___observationRegistrar;
  v105[0] = v4;
  v31 = sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972858();

  v32 = v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
  swift_beginAccess();
  v33 = (v32 + *(v101 + 24));
  v34 = v33[1];
  v35 = *v33 == a2;
  v102 = v4;
  v92 = v30;
  v98 = v31;
  if (v35 && v34 == v99 || (sub_20D9757C8() & 1) != 0)
  {
    swift_getKeyPath();
    v104[0] = v4;
    sub_20D972858();

    v36 = v100;
    v88 = type metadata accessor for GridForecastSnapshotType;
    sub_20D84BC18(v32, v100, type metadata accessor for GridForecastSnapshotType);
    v37 = v91;
    static EnergyWindows.mockNoCleanEnergyWindows()(v91);
    swift_getKeyPath();
    v104[0] = v4;
    sub_20D972858();

    v38 = v101;
    v39 = (v32 + *(v101 + 24));
    v40 = v39[1];
    v87 = *v39;
    swift_getKeyPath();
    v41 = v38;
    v104[0] = v102;

    sub_20D972858();

    v42 = (v32 + v38[7]);
    v44 = *v42;
    v43 = v42[1];
    v45 = v36;
    v46 = v90;
    sub_20D84BC18(v45, v90, type metadata accessor for GridForecastSnapshotType);
    v47 = v94;
    v48 = *(v94 + 16);
    v49 = v46 + v41[5];
    v50 = v46;
    v51 = v95;
    v48(v49, v37, v95);
    v52 = (v50 + v41[6]);
    *v52 = v87;
    v52[1] = v40;
    v53 = (v50 + v41[7]);
    *v53 = v44;
    v53[1] = v43;
    *(v50 + v41[9]) = v97;
    v54 = v93;
    v48(v93, v37, v51);
    (*(v47 + 56))(v54, 0, 1, v51);

    v55 = sub_20D87934C(v54);
    sub_20D7E3944(v54, &qword_27C838A00, &qword_20D976750);
    v104[0] = v55;
    v56 = sub_20D8797EC(v104);

    (*(v47 + 8))(v37, v51);
    sub_20D84BADC(v100, v88);
    *(v50 + v41[8]) = v56;
    v57 = v96;
    sub_20D84BC18(v50, v96, type metadata accessor for GridForecastSnapshot);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v86 - 2) = v102;
    *(&v86 - 1) = v57;
    v104[0] = v102;
    sub_20D972848();
    v88 = 0;
    v4 = v102;

    sub_20D84BADC(v50, type metadata accessor for GridForecastSnapshot);
    a2 = v89;
    sub_20D84BADC(v57, type metadata accessor for GridForecastSnapshot);
  }

  else
  {
    v88 = 0;
  }

  swift_getKeyPath();
  v104[0] = v4;
  sub_20D972858();

  v59 = v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  swift_beginAccess();
  v60 = v59 + *(v101 + 24);
  if (*v60 == a2 && *(v60 + 8) == v99 || (result = sub_20D9757C8(), (result & 1) != 0))
  {
    swift_getKeyPath();
    v103 = v4;
    sub_20D972858();

    v62 = v100;
    v99 = type metadata accessor for GridForecastSnapshotType;
    sub_20D84BC18(v59, v100, type metadata accessor for GridForecastSnapshotType);
    v63 = v91;
    static EnergyWindows.mockNoCleanEnergyWindows()(v91);
    swift_getKeyPath();
    v103 = v4;
    sub_20D972858();

    v64 = v101;
    v65 = (v59 + *(v101 + 24));
    v66 = v65[1];
    v89 = *v65;
    swift_getKeyPath();
    v67 = v4;
    v68 = v64;
    v103 = v67;

    sub_20D972858();

    v69 = (v59 + v64[7]);
    v71 = *v69;
    v70 = v69[1];
    v72 = v62;
    v73 = v90;
    sub_20D84BC18(v72, v90, type metadata accessor for GridForecastSnapshotType);
    v74 = v63;
    v76 = v94;
    v75 = v95;
    v77 = *(v94 + 16);
    v77(v73 + v68[5], v74, v95);
    v78 = (v73 + v68[6]);
    *v78 = v89;
    v78[1] = v66;
    v79 = (v73 + v68[7]);
    *v79 = v71;
    v79[1] = v70;
    *(v73 + v68[9]) = v97;
    v80 = v93;
    v77(v93, v74, v75);
    (*(v76 + 56))(v80, 0, 1, v75);

    v81 = sub_20D87934C(v80);
    sub_20D7E3944(v80, &qword_27C838A00, &qword_20D976750);
    v103 = v81;
    v82 = sub_20D8797EC(&v103);

    (*(v76 + 8))(v74, v75);
    sub_20D84BADC(v100, v99);
    *(v73 + v68[8]) = v82;
    v83 = v96;
    sub_20D84BC18(v73, v96, type metadata accessor for GridForecastSnapshot);
    v84 = swift_getKeyPath();
    MEMORY[0x28223BE20](v84);
    v85 = v102;
    *(&v86 - 2) = v102;
    *(&v86 - 1) = v83;
    v103 = v85;
    sub_20D972848();

    sub_20D84BADC(v73, type metadata accessor for GridForecastSnapshot);
    return sub_20D84BADC(v83, type metadata accessor for GridForecastSnapshot);
  }

  return result;
}

uint64_t sub_20D83D72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_20D9752E8();
  v4[4] = sub_20D9752D8();
  v6 = sub_20D975298();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_20D83D7C4, v6, v5);
}

uint64_t sub_20D83D7C4()
{
  v13 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_20D9734F8();
  v0[7] = __swift_project_value_buffer(v2, qword_28112AC00);

  v3 = sub_20D9734D8();
  v4 = sub_20D975478();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984600, &v12);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_20D7F4DC8(*(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v12);
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s(%s): faking a bell update every 5 seconds", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v7, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  else
  {
  }

  v8 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log;
  v0[8] = 0x800000020D984600;
  v0[9] = v8;
  v0[10] = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager___observationRegistrar;
  v0[11] = -1;
  v9 = *(MEMORY[0x277D857E8] + 4);
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_20D83DA0C;

  return MEMORY[0x282200480](5000000000);
}

uint64_t sub_20D83DA0C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 48);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_20D83DF38;
  }

  else
  {
    v7 = sub_20D83DB48;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_20D83DB48()
{
  v27 = v0;
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[7];
  v5 = v0[3];
  swift_getKeyPath();
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  *(v6 + 24) = !((v3 + 1) & 1);
  v0[2] = v5;
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972848();

  v7 = sub_20D9734D8();
  v8 = sub_20D975478();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[8];
    v10 = v0[3] + v0[9];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26[0] = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_20D7F4DC8(0xD000000000000019, v9, v26);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_20D7F4DC8(*v10, *(v10 + 8), v26);
    *(v11 + 22) = 1024;
    *(v11 + 24) = !((v3 + 1) & 1);
    _os_log_impl(&dword_20D7C9000, v7, v8, "%s(%s): New bell = %{BOOL}d", v11, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v12, -1, -1);
    MEMORY[0x20F324260](v11, -1, -1);
  }

  if (v3 >= 9)
  {
    v15 = v0[7];
    v17 = v0[3];
    v16 = v0[4];

    v18 = sub_20D9734D8();
    v19 = sub_20D975478();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = v0[8];
      v21 = v0[3] + v0[9];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26[0] = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_20D7F4DC8(0xD000000000000019, v20, v26);
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_20D7F4DC8(*v21, *(v21 + 8), v26);
      _os_log_impl(&dword_20D7C9000, v18, v19, "%s(%s): no longer faking bell updates", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v23, -1, -1);
      MEMORY[0x20F324260](v22, -1, -1);
    }

    v24 = v0[1];

    return v24();
  }

  else
  {
    v0[11] = v3 + 1;
    v13 = *(MEMORY[0x277D857E8] + 4);
    v14 = swift_task_alloc();
    v0[12] = v14;
    *v14 = v0;
    v14[1] = sub_20D83DA0C;

    return MEMORY[0x282200480](5000000000);
  }
}

uint64_t sub_20D83DF38()
{
  v30 = v0;
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[3];

  v4 = v1;
  v5 = sub_20D9734D8();
  v6 = sub_20D975458();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[13];
  if (v7)
  {
    v9 = v0[8];
    v10 = v0[3] + v0[9];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v11 = 136315650;
    *(v11 + 4) = sub_20D7F4DC8(0xD000000000000019, v9, &v29);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_20D7F4DC8(*v10, *(v10 + 8), &v29);
    *(v11 + 22) = 2112;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v15;
    *v12 = v15;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s(%s): Could not loop: %@", v11, 0x20u);
    sub_20D7E3944(v12, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v13, -1, -1);
    MEMORY[0x20F324260](v11, -1, -1);
  }

  else
  {
  }

  if (v0[11] >= 10)
  {
    v18 = v0[7];
    v20 = v0[3];
    v19 = v0[4];

    v21 = sub_20D9734D8();
    v22 = sub_20D975478();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = v0[8];
      v24 = v0[3] + v0[9];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29 = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_20D7F4DC8(0xD000000000000019, v23, &v29);
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_20D7F4DC8(*v24, *(v24 + 8), &v29);
      _os_log_impl(&dword_20D7C9000, v21, v22, "%s(%s): no longer faking bell updates", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v26, -1, -1);
      MEMORY[0x20F324260](v25, -1, -1);
    }

    v27 = v0[1];

    return v27();
  }

  else
  {
    v16 = *(MEMORY[0x277D857E8] + 4);
    v17 = swift_task_alloc();
    v0[12] = v17;
    *v17 = v0;
    v17[1] = sub_20D83DA0C;

    return MEMORY[0x282200480](5000000000);
  }
}

uint64_t GridForecastSnapshotManager.retrieveFixedSnapshot()(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_20D9752E8();
  v2[8] = sub_20D9752D8();
  v4 = sub_20D975298();
  v2[9] = v4;
  v2[10] = v3;

  return MEMORY[0x2822009F8](sub_20D83E370, v4, v3);
}

uint64_t sub_20D83E370()
{
  v12 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_28112AC00);

  v3 = sub_20D9734D8();
  v4 = sub_20D975478();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 56);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_20D7F4DC8(0xD000000000000017, 0x800000020D9841C0, &v11);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_20D7F4DC8(*(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v11);
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s(%s): starting fixed snapshot retrieval", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v7, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_20D83E568;
  v9 = *(v0 + 56);

  return sub_20D831DFC();
}

uint64_t sub_20D83E568()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_20D83E688, v4, v3);
}

uint64_t sub_20D83E688()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  swift_getKeyPath();
  v0[5] = v2;
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972858();

  v4 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  swift_beginAccess();
  sub_20D84BC18(v2 + v4, v3, type metadata accessor for GridForecastSnapshot);
  v5 = v0[1];

  return v5();
}

uint64_t GridForecastSnapshotManager.retrieveImmediateLocationSnapshotForWidget()(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v4 = sub_20D9729D8();
  v2[29] = v4;
  v5 = *(v4 - 8);
  v2[30] = v5;
  v6 = *(v5 + 64) + 15;
  v2[31] = swift_task_alloc();
  v7 = type metadata accessor for GridForecastSnapshotType(0);
  v2[32] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v9 = type metadata accessor for GridForecastSnapshot(0);
  v2[34] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400) - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = sub_20D9752E8();
  v2[39] = sub_20D9752D8();
  v13 = sub_20D975298();
  v2[40] = v13;
  v2[41] = v12;

  return MEMORY[0x2822009F8](sub_20D83E97C, v13, v12);
}

uint64_t sub_20D83E97C()
{
  v13 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = sub_20D9734F8();
  v0[42] = __swift_project_value_buffer(v2, qword_28112AC00);

  v3 = sub_20D9734D8();
  v4 = sub_20D975478();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[27];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_20D7F4DC8(0xD00000000000002CLL, 0x800000020D9841E0, &v12);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_20D7F4DC8(*(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v12);
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s(%s): starting location snapshot retrieval", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v7, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  v8 = v0[38];
  v0[43] = sub_20D9752D8();
  v10 = sub_20D975298();
  v0[44] = v10;
  v0[45] = v9;

  return MEMORY[0x2822009F8](sub_20D83EB74, v10, v9);
}

uint64_t sub_20D83EB74()
{
  v1 = v0[37];
  v2 = sub_20D975318();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = sub_20D8450B8(0, 0, v1, &unk_20D979250, v3);
  v0[46] = v4;
  sub_20D7E3944(v1, &unk_27C839F30, &qword_20D978400);
  v5 = *(MEMORY[0x277D857E0] + 4);
  v6 = swift_task_alloc();
  v0[47] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395D0, &qword_20D979258);
  *v6 = v0;
  v6[1] = sub_20D83ECCC;

  return MEMORY[0x282200460](v0 + 17, v4, v7);
}

uint64_t sub_20D83ECCC()
{
  v1 = *v0;
  v2 = *(*v0 + 376);
  v3 = *(*v0 + 368);
  v7 = *v0;

  v4 = *(v1 + 360);
  v5 = *(v1 + 352);

  return MEMORY[0x2822009F8](sub_20D83EE10, v5, v4);
}

uint64_t sub_20D83EE10()
{
  v1 = *(v0 + 344);

  *(v0 + 400) = *(v0 + 136);
  *(v0 + 384) = *(v0 + 144);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);

  return MEMORY[0x2822009F8](sub_20D83EE84, v2, v3);
}

uint64_t sub_20D83EE84()
{
  v93 = v0;
  if (*(v0 + 400) == 1)
  {
    v1 = *(v0 + 384);
    v2 = *(v0 + 336);
    if (v1)
    {
      v3 = *(v0 + 216);
      v4 = v1;

      v5 = sub_20D9734D8();
      v6 = sub_20D975478();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = *(v0 + 384);
        v8 = *(v0 + 216);
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v92[0] = v10;
        *v9 = 136315650;
        *(v9 + 4) = sub_20D7F4DC8(0xD00000000000002CLL, 0x800000020D9841E0, v92);
        *(v9 + 12) = 2080;
        *(v9 + 14) = sub_20D7F4DC8(*(v8 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v8 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v92);
        *(v9 + 22) = 2080;
        v11 = sub_20D972F48();
        v13 = sub_20D7F4DC8(v11, v12, v92);

        *(v9 + 24) = v13;
        _os_log_impl(&dword_20D7C9000, v5, v6, "%s(%s): making snapshot with loc (%s)...", v9, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v10, -1, -1);
        MEMORY[0x20F324260](v9, -1, -1);
      }

      v14 = *(v0 + 336);
      v15 = *(v0 + 216);

      v16 = v4;
      v17 = sub_20D9734D8();
      v18 = sub_20D975448();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = *(v0 + 384);
        v20 = *(v0 + 288);
        v21 = *(v0 + 216);
        v22 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v92[0] = v90;
        *v22 = 136315906;
        *(v22 + 4) = sub_20D7F4DC8(0xD00000000000002CLL, 0x800000020D9841E0, v92);
        *(v22 + 12) = 2080;
        *(v22 + 14) = sub_20D7F4DC8(*(v21 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v21 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v92);
        *(v22 + 22) = 2112;
        *(v22 + 24) = v16;
        *v89 = v19;
        *(v22 + 32) = 2080;
        swift_getKeyPath();
        *(v0 + 200) = v21;
        sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
        v23 = v16;
        sub_20D972858();

        v24 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
        swift_beginAccess();
        sub_20D84BC18(v21 + v24, v20, type metadata accessor for GridForecastSnapshot);
        v25 = GridForecastSnapshot.description.getter();
        v27 = v26;
        sub_20D84BADC(v20, type metadata accessor for GridForecastSnapshot);
        v28 = sub_20D7F4DC8(v25, v27, v92);

        *(v22 + 34) = v28;
        _os_log_impl(&dword_20D7C9000, v17, v18, "\t...%s(%s): loc: %@: %s", v22, 0x2Au);
        sub_20D7E3944(v89, &unk_27C839E80, &qword_20D979610);
        MEMORY[0x20F324260](v89, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v90, -1, -1);
        MEMORY[0x20F324260](v22, -1, -1);
      }

      v29 = swift_task_alloc();
      *(v0 + 392) = v29;
      *v29 = v0;
      v29[1] = sub_20D83FB14;
      v30 = *(v0 + 384);
      v31 = *(v0 + 216);

      return sub_20D836348(v30);
    }

    v55 = *(v0 + 312);
    v56 = *(v0 + 216);

    v57 = sub_20D9734D8();
    v58 = sub_20D975458();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = *(v0 + 216);
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v92[0] = v61;
      *v60 = 136315394;
      *(v60 + 4) = sub_20D7F4DC8(0xD00000000000002CLL, 0x800000020D9841E0, v92);
      *(v60 + 12) = 2080;
      *(v60 + 14) = sub_20D7F4DC8(*(v59 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v59 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v92);
      _os_log_impl(&dword_20D7C9000, v57, v58, "%s(%s): Could not retrieve location, returning 'No Location Found' error snapshot", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v61, -1, -1);
      MEMORY[0x20F324260](v60, -1, -1);
    }

    v62 = *(v0 + 288);
    v86 = *(v0 + 280);
    v64 = *(v0 + 264);
    v63 = *(v0 + 272);
    v66 = *(v0 + 248);
    v65 = *(v0 + 256);
    v68 = *(v0 + 232);
    v67 = *(v0 + 240);
    v69 = *(v0 + 224);
    v91 = *(v0 + 216);
    *v64 = 0;
    swift_storeEnumTagMultiPayload();
    static EnergyWindows.mockNoCleanEnergyWindows()(v66);
    sub_20D84BC18(v64, v62, type metadata accessor for GridForecastSnapshotType);
    v70 = *(v67 + 16);
    v70(v62 + v63[5], v66, v68);
    v71 = (v62 + v63[6]);
    *v71 = 11565;
    v71[1] = 0xE200000000000000;
    v72 = (v62 + v63[7]);
    *v72 = 11565;
    v72[1] = 0xE200000000000000;
    *(v62 + v63[9]) = 4;
    v70(v69, v66, v68);
    (*(v67 + 56))(v69, 0, 1, v68);
    v73 = sub_20D87934C(v69);
    sub_20D7E3944(v69, &qword_27C838A00, &qword_20D976750);
    v92[0] = v73;
    v74 = sub_20D8797EC(v92);

    (*(v67 + 8))(v66, v68);
    sub_20D84BADC(v64, type metadata accessor for GridForecastSnapshotType);
    *(v62 + v63[8]) = v74;
    v87 = v62;
    sub_20D84BC18(v62, v86, type metadata accessor for GridForecastSnapshot);
    swift_getKeyPath();
    v75 = swift_task_alloc();
    *(v75 + 16) = v91;
    *(v75 + 24) = v86;
    *(v0 + 168) = v91;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
    sub_20D972848();

    sub_20D84BADC(v86, type metadata accessor for GridForecastSnapshot);
    swift_getKeyPath();
    *(v0 + 176) = v91;
    sub_20D972858();
  }

  else
  {
    v33 = *(v0 + 336);
    v34 = *(v0 + 312);
    v35 = *(v0 + 216);

    v36 = sub_20D9734D8();
    v37 = sub_20D975458();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v0 + 216);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v92[0] = v40;
      *v39 = 136315394;
      *(v39 + 4) = sub_20D7F4DC8(0xD00000000000002CLL, 0x800000020D9841E0, v92);
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_20D7F4DC8(*(v38 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v38 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v92);
      _os_log_impl(&dword_20D7C9000, v36, v37, "%s(%s): Location NOT authorized, returning 'No Location Permission' error snapshot", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v40, -1, -1);
      MEMORY[0x20F324260](v39, -1, -1);
    }

    v41 = *(v0 + 288);
    v84 = *(v0 + 280);
    v85 = *(v0 + 384);
    v42 = *(v0 + 264);
    v43 = *(v0 + 272);
    v45 = *(v0 + 248);
    v44 = *(v0 + 256);
    v47 = *(v0 + 232);
    v46 = *(v0 + 240);
    v48 = *(v0 + 224);
    v91 = *(v0 + 216);
    *v42 = 0;
    swift_storeEnumTagMultiPayload();
    static EnergyWindows.mockNoCleanEnergyWindows()(v45);
    sub_20D84BC18(v42, v41, type metadata accessor for GridForecastSnapshotType);
    v49 = *(v46 + 16);
    v49(v41 + v43[5], v45, v47);
    v50 = (v41 + v43[6]);
    *v50 = 11565;
    v50[1] = 0xE200000000000000;
    v51 = (v41 + v43[7]);
    *v51 = 11565;
    v51[1] = 0xE200000000000000;
    *(v41 + v43[9]) = 3;
    v49(v48, v45, v47);
    (*(v46 + 56))(v48, 0, 1, v47);
    v52 = sub_20D87934C(v48);
    sub_20D7E3944(v48, &qword_27C838A00, &qword_20D976750);
    v92[0] = v52;
    v53 = sub_20D8797EC(v92);

    (*(v46 + 8))(v45, v47);
    sub_20D84BADC(v42, type metadata accessor for GridForecastSnapshotType);
    *(v41 + v43[8]) = v53;
    v87 = v41;
    sub_20D84BC18(v41, v84, type metadata accessor for GridForecastSnapshot);
    swift_getKeyPath();
    v54 = swift_task_alloc();
    *(v54 + 16) = v91;
    *(v54 + 24) = v84;
    *(v0 + 152) = v91;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
    sub_20D972848();

    sub_20D84BADC(v84, type metadata accessor for GridForecastSnapshot);
    swift_getKeyPath();
    *(v0 + 160) = v91;
    sub_20D972858();
  }

  sub_20D84BADC(v87, type metadata accessor for GridForecastSnapshot);
  v76 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
  v78 = *(v0 + 288);
  v77 = *(v0 + 296);
  v79 = *(v0 + 280);
  v80 = *(v0 + 264);
  v81 = *(v0 + 248);
  v88 = *(v0 + 224);
  v82 = *(v0 + 208);
  swift_beginAccess();
  sub_20D84BC18(v91 + v76, v82, type metadata accessor for GridForecastSnapshot);

  v83 = *(v0 + 8);

  return v83();
}

uint64_t sub_20D83FB14()
{
  v1 = *v0;
  v2 = *(*v0 + 392);
  v6 = *v0;

  v3 = *(v1 + 328);
  v4 = *(v1 + 320);

  return MEMORY[0x2822009F8](sub_20D83FC34, v4, v3);
}

uint64_t sub_20D83FC34()
{
  v32 = v0;
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[27];

  v4 = sub_20D9734D8();
  v5 = sub_20D975478();

  v6 = &qword_281125000;
  v7 = &qword_281125000;
  if (os_log_type_enabled(v4, v5))
  {
    v8 = v0[36];
    v9 = v0[27];
    v10 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v10 = 136315650;
    *(v10 + 4) = sub_20D7F4DC8(0xD00000000000002CLL, 0x800000020D9841E0, &v31);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_20D7F4DC8(*(v9 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v9 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v31);
    *(v10 + 22) = 2080;
    swift_getKeyPath();
    v0[24] = v9;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
    sub_20D972858();

    v11 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
    swift_beginAccess();
    v12 = v9 + v11;
    v7 = &qword_281125000;
    sub_20D84BC18(v12, v8, type metadata accessor for GridForecastSnapshot);
    v13 = GridForecastSnapshot.description.getter();
    v15 = v14;
    sub_20D84BADC(v8, type metadata accessor for GridForecastSnapshot);
    v16 = sub_20D7F4DC8(v13, v15, &v31);

    *(v10 + 24) = v16;
    v6 = &qword_281125000;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s(%s): updated locationSnapshot: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v30, -1, -1);
    MEMORY[0x20F324260](v10, -1, -1);
  }

  v17 = v0[48];
  v18 = v0[27];
  swift_getKeyPath();
  v19 = v6[475];
  v0[23] = v18;
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972858();

  v20 = v7[476];
  v21 = v0[36];
  v22 = v0[37];
  v23 = v0[35];
  v24 = v0[33];
  v25 = v0[31];
  v26 = v0[28];
  v27 = v0[26];
  swift_beginAccess();
  sub_20D84BC18(v18 + v20, v27, type metadata accessor for GridForecastSnapshot);

  v28 = v0[1];

  return v28();
}

uint64_t sub_20D83FFC8(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  sub_20D9752E8();
  v2[13] = sub_20D9752D8();
  v4 = sub_20D975298();
  v2[14] = v4;
  v2[15] = v3;

  return MEMORY[0x2822009F8](sub_20D840060, v4, v3);
}

uint64_t sub_20D840060()
{
  v62 = v0;
  if (qword_281127100 != -1)
  {
LABEL_34:
    swift_once();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = sub_20D9734F8();
  *(v0 + 128) = __swift_project_value_buffer(v3, qword_28112AC00);

  v4 = sub_20D9734D8();
  v5 = sub_20D975478();

  v6 = &unk_28112A000;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v61 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D9846F0, &v61);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_20D7F4DC8(*(v8 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v8 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v61);
    *(v9 + 22) = 2080;
    v11 = sub_20D975368();
    v13 = sub_20D7F4DC8(v11, v12, &v61);
    v6 = &unk_28112A000;

    *(v9 + 24) = v13;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s(%s): renewing fixed snapshots for %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v10, -1, -1);
    MEMORY[0x20F324260](v9, -1, -1);
  }

  *(v0 + 136) = 0x800000020D9846F0;
  v14 = *(v0 + 88);
  v15 = *(v0 + 96);
  v16 = *(v14 + 32);
  *(v0 + 225) = v16;
  v17 = 1 << v16;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v14 + 56);
  v20 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager___observationRegistrar;
  *(v0 + 144) = v6[376];
  *(v0 + 152) = v20;
  v21 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
  *(v0 + 160) = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  *(v0 + 168) = v21;

  swift_beginAccess();
  swift_beginAccess();
  v22 = 0;
  if (v19)
  {
    while (1)
    {
      v23 = *(v0 + 88);
LABEL_13:
      *(v0 + 176) = v19;
      *(v0 + 184) = v22;
      v25 = *(v0 + 128);
      v26 = *(v0 + 96);
      v27 = (*(v23 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v19)))));
      v28 = *v27;
      *(v0 + 192) = *v27;
      v29 = v27[1];
      *(v0 + 200) = v29;

      v30 = sub_20D9734D8();
      v31 = sub_20D975478();

      v60 = v28;
      if (os_log_type_enabled(v30, v31))
      {
        v58 = *(v0 + 136);
        v32 = *(v0 + 96) + *(v0 + 144);
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v61 = v34;
        *v33 = 136315650;
        *(v33 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, v58, &v61);
        *(v33 + 12) = 2080;
        *(v33 + 14) = sub_20D7F4DC8(*v32, *(v32 + 8), &v61);
        *(v33 + 22) = 2080;
        *(v33 + 24) = sub_20D7F4DC8(v28, v29, &v61);
        _os_log_impl(&dword_20D7C9000, v30, v31, "\t...%s(%s): checking %s", v33, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v34, -1, -1);
        MEMORY[0x20F324260](v33, -1, -1);
      }

      v35 = *(v0 + 152);
      v36 = *(v0 + 96);
      v37 = v36 + *(v0 + 160);
      swift_getKeyPath();
      *(v0 + 64) = v36;
      sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
      sub_20D972858();

      v38 = type metadata accessor for GridForecastSnapshot(0);
      v39 = (v37 + *(v38 + 24));
      if (*v39 == v60 && v39[1] == v29)
      {
        break;
      }

      if (sub_20D9757C8())
      {
        break;
      }

      v41 = *(v0 + 152);
      v42 = *(v0 + 96);
      v59 = v42 + *(v0 + 168);
      swift_getKeyPath();
      *(v0 + 72) = v42;
      sub_20D972858();

      v43 = (v59 + *(v38 + 24));
      if (*v43 == v60 && v43[1] == v29)
      {
        break;
      }

      if (sub_20D9757C8())
      {
        break;
      }

      v19 &= v19 - 1;

      if (!v19)
      {
        goto LABEL_9;
      }
    }

    v56 = swift_task_alloc();
    *(v0 + 208) = v56;
    *v56 = v0;
    v56[1] = sub_20D8407B4;
    v57 = *(v0 + 96);

    return GridForecastSnapshotManager.updateRelevantSnapshotsFor(_:updateFromCurrentLocation:)(v60, v29, 0);
  }

  else
  {
    while (1)
    {
LABEL_9:
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v24 >= (((1 << *(v0 + 225)) + 63) >> 6))
      {
        break;
      }

      v23 = *(v0 + 88);
      v19 = *(v23 + 8 * v24 + 56);
      ++v22;
      if (v19)
      {
        v22 = v24;
        goto LABEL_13;
      }
    }

    v44 = *(v0 + 128);
    v46 = *(v0 + 96);
    v45 = *(v0 + 104);
    v47 = *(v0 + 88);

    v48 = sub_20D9734D8();
    v49 = sub_20D975478();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = *(v0 + 136);
      v51 = *(v0 + 96) + *(v0 + 144);
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v61 = v53;
      *v52 = 136315394;
      *(v52 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, v50, &v61);
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_20D7F4DC8(*v51, *(v51 + 8), &v61);
      _os_log_impl(&dword_20D7C9000, v48, v49, "\t...%s(%s): finished.", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v53, -1, -1);
      MEMORY[0x20F324260](v52, -1, -1);
    }

    v54 = *(v0 + 8);

    return v54();
  }
}

uint64_t sub_20D8407B4()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v9 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = v2[14];
    v5 = v2[15];
    v6 = sub_20D840DEC;
  }

  else
  {
    v7 = v2[25];

    v4 = v2[14];
    v5 = v2[15];
    v6 = sub_20D8408D0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

void sub_20D8408D0()
{
  v41 = v0;
  v1 = *(v0 + 184);
  v2 = (*(v0 + 176) - 1) & *(v0 + 176);
  if (v2)
  {
    while (1)
    {
      v3 = *(v0 + 88);
LABEL_7:
      *(v0 + 176) = v2;
      *(v0 + 184) = v1;
      v5 = *(v0 + 128);
      v6 = *(v0 + 96);
      v7 = (*(v3 + 48) + ((v1 << 10) | (16 * __clz(__rbit64(v2)))));
      v8 = *v7;
      *(v0 + 192) = *v7;
      v9 = v7[1];
      *(v0 + 200) = v9;

      v10 = sub_20D9734D8();
      v11 = sub_20D975478();

      v39 = v8;
      if (os_log_type_enabled(v10, v11))
      {
        v37 = *(v0 + 136);
        v12 = *(v0 + 96) + *(v0 + 144);
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v40 = v14;
        *v13 = 136315650;
        *(v13 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, v37, &v40);
        *(v13 + 12) = 2080;
        *(v13 + 14) = sub_20D7F4DC8(*v12, *(v12 + 8), &v40);
        *(v13 + 22) = 2080;
        *(v13 + 24) = sub_20D7F4DC8(v8, v9, &v40);
        _os_log_impl(&dword_20D7C9000, v10, v11, "\t...%s(%s): checking %s", v13, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v14, -1, -1);
        MEMORY[0x20F324260](v13, -1, -1);
      }

      v15 = *(v0 + 152);
      v16 = *(v0 + 96);
      v17 = v16 + *(v0 + 160);
      swift_getKeyPath();
      *(v0 + 64) = v16;
      sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
      sub_20D972858();

      v18 = type metadata accessor for GridForecastSnapshot(0);
      v19 = (v17 + *(v18 + 24));
      if (*v19 == v39 && v19[1] == v9)
      {
        break;
      }

      if (sub_20D9757C8())
      {
        break;
      }

      v21 = *(v0 + 152);
      v22 = *(v0 + 96);
      v38 = v22 + *(v0 + 168);
      swift_getKeyPath();
      *(v0 + 72) = v22;
      sub_20D972858();

      v23 = (v38 + *(v18 + 24));
      if (*v23 == v39 && v23[1] == v9)
      {
        break;
      }

      if (sub_20D9757C8())
      {
        break;
      }

      v2 &= v2 - 1;

      if (!v2)
      {
        goto LABEL_3;
      }
    }

    v35 = swift_task_alloc();
    *(v0 + 208) = v35;
    *v35 = v0;
    v35[1] = sub_20D8407B4;
    v36 = *(v0 + 96);

    GridForecastSnapshotManager.updateRelevantSnapshotsFor(_:updateFromCurrentLocation:)(v39, v9, 0);
  }

  else
  {
    while (1)
    {
LABEL_3:
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      if (v4 >= (((1 << *(v0 + 225)) + 63) >> 6))
      {
        break;
      }

      v3 = *(v0 + 88);
      v2 = *(v3 + 8 * v4 + 56);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v24 = *(v0 + 128);
    v26 = *(v0 + 96);
    v25 = *(v0 + 104);
    v27 = *(v0 + 88);

    v28 = sub_20D9734D8();
    v29 = sub_20D975478();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 136);
      v31 = *(v0 + 96) + *(v0 + 144);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40 = v33;
      *v32 = 136315394;
      *(v32 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, v30, &v40);
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_20D7F4DC8(*v31, *(v31 + 8), &v40);
      _os_log_impl(&dword_20D7C9000, v28, v29, "\t...%s(%s): finished.", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v33, -1, -1);
      MEMORY[0x20F324260](v32, -1, -1);
    }

    v34 = *(v0 + 8);

    v34();
  }
}

uint64_t sub_20D840DEC()
{
  v81 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 128);
  v3 = *(v0 + 96);

  v4 = v1;
  v5 = sub_20D9734D8();
  v6 = sub_20D975458();

  v7 = &unk_20D977000;
  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 216);
    v9 = *(v0 + 136);
    v10 = *(v0 + 96) + *(v0 + 144);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v80 = v13;
    *v11 = 136315650;
    *(v11 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, v9, &v80);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_20D7F4DC8(*v10, *(v10 + 8), &v80);
    *(v11 + 22) = 2112;
    v14 = v8;
    v7 = &unk_20D977000;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v15;
    *v12 = v15;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s(%s):ERROR: %@", v11, 0x20u);
    sub_20D7E3944(v12, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v13, -1, -1);
    MEMORY[0x20F324260](v11, -1, -1);
  }

  v16 = *(v0 + 216);
  *(v0 + 80) = v16;
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  v18 = swift_dynamicCast();
  v19 = *(v0 + 216);
  if (v18)
  {
    v20 = *(v0 + 192);
    v21 = *(v0 + 200);
    v22 = *(v0 + 96);
    v23 = *(v0 + 224);
  }

  else
  {
    v24 = *(v0 + 128);
    v25 = *(v0 + 96);

    v26 = v19;
    v27 = sub_20D9734D8();
    v28 = sub_20D975458();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = v7;
      v30 = *(v0 + 216);
      v31 = *(v0 + 136);
      v32 = *(v0 + 96) + *(v0 + 144);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v80 = v35;
      *v33 = v29[203];
      *(v33 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, v31, &v80);
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_20D7F4DC8(*v32, *(v32 + 8), &v80);
      *(v33 + 22) = 2112;
      v36 = v30;
      v7 = v29;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 24) = v37;
      *v34 = v37;
      _os_log_impl(&dword_20D7C9000, v27, v28, "%s(%s): UNEXPECTED ISSUE: %@", v33, 0x20u);
      sub_20D7E3944(v34, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v34, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v35, -1, -1);
      MEMORY[0x20F324260](v33, -1, -1);
    }

    v19 = *(v0 + 216);
    v20 = *(v0 + 192);
    v21 = *(v0 + 200);
    v38 = *(v0 + 96);
    v23 = 11;
  }

  LOBYTE(v80) = v23;
  sub_20D83CC04(&v80, v20, v21);

  v40 = *(v0 + 184);
  v41 = (*(v0 + 176) - 1) & *(v0 + 176);
  v76 = v7[203];
  if (v41)
  {
    while (1)
    {
      v42 = *(v0 + 88);
LABEL_14:
      *(v0 + 176) = v41;
      *(v0 + 184) = v40;
      v44 = *(v0 + 128);
      v45 = *(v0 + 96);
      v46 = (*(v42 + 48) + ((v40 << 10) | (16 * __clz(__rbit64(v41)))));
      v47 = *v46;
      *(v0 + 192) = *v46;
      v48 = v46[1];
      *(v0 + 200) = v48;

      v49 = sub_20D9734D8();
      v50 = sub_20D975478();

      v79 = v47;
      if (os_log_type_enabled(v49, v50))
      {
        v77 = *(v0 + 136);
        v51 = *(v0 + 96) + *(v0 + 144);
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v80 = v53;
        *v52 = v76;
        *(v52 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, v77, &v80);
        *(v52 + 12) = 2080;
        *(v52 + 14) = sub_20D7F4DC8(*v51, *(v51 + 8), &v80);
        *(v52 + 22) = 2080;
        *(v52 + 24) = sub_20D7F4DC8(v47, v48, &v80);
        _os_log_impl(&dword_20D7C9000, v49, v50, "\t...%s(%s): checking %s", v52, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v53, -1, -1);
        MEMORY[0x20F324260](v52, -1, -1);
      }

      v54 = *(v0 + 152);
      v55 = *(v0 + 96);
      v56 = v55 + *(v0 + 160);
      swift_getKeyPath();
      *(v0 + 64) = v55;
      sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
      sub_20D972858();

      v57 = type metadata accessor for GridForecastSnapshot(0);
      v58 = (v56 + *(v57 + 24));
      if (*v58 == v79 && v58[1] == v48)
      {
        break;
      }

      if (sub_20D9757C8())
      {
        break;
      }

      v60 = *(v0 + 152);
      v61 = *(v0 + 96);
      v78 = v61 + *(v0 + 168);
      swift_getKeyPath();
      *(v0 + 72) = v61;
      sub_20D972858();

      v62 = (v78 + *(v57 + 24));
      if (*v62 == v79 && v62[1] == v48)
      {
        break;
      }

      if (sub_20D9757C8())
      {
        break;
      }

      v41 &= v41 - 1;

      if (!v41)
      {
        goto LABEL_10;
      }
    }

    v74 = swift_task_alloc();
    *(v0 + 208) = v74;
    *v74 = v0;
    v74[1] = sub_20D8407B4;
    v75 = *(v0 + 96);

    return GridForecastSnapshotManager.updateRelevantSnapshotsFor(_:updateFromCurrentLocation:)(v79, v48, 0);
  }

  else
  {
    while (1)
    {
LABEL_10:
      v43 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
        return result;
      }

      if (v43 >= (((1 << *(v0 + 225)) + 63) >> 6))
      {
        break;
      }

      v42 = *(v0 + 88);
      v41 = *(v42 + 8 * v43 + 56);
      ++v40;
      if (v41)
      {
        v40 = v43;
        goto LABEL_14;
      }
    }

    v63 = *(v0 + 128);
    v65 = *(v0 + 96);
    v64 = *(v0 + 104);
    v66 = *(v0 + 88);

    v67 = sub_20D9734D8();
    v68 = sub_20D975478();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = *(v0 + 136);
      v70 = *(v0 + 96) + *(v0 + 144);
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v80 = v72;
      *v71 = 136315394;
      *(v71 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, v69, &v80);
      *(v71 + 12) = 2080;
      *(v71 + 14) = sub_20D7F4DC8(*v70, *(v70 + 8), &v80);
      _os_log_impl(&dword_20D7C9000, v67, v68, "\t...%s(%s): finished.", v71, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v72, -1, -1);
      MEMORY[0x20F324260](v71, -1, -1);
    }

    v73 = *(v0 + 8);

    return v73();
  }
}

uint64_t sub_20D841678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750) - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v8 = sub_20D972A28();
  v6[11] = v8;
  v9 = *(v8 - 8);
  v6[12] = v9;
  v10 = *(v9 + 64) + 15;
  v6[13] = swift_task_alloc();
  v11 = sub_20D9729E8();
  v6[14] = v11;
  v12 = *(v11 - 8);
  v6[15] = v12;
  v13 = *(v12 + 64) + 15;
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D8417D4, 0, 0);
}

void sub_20D8417D4()
{
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = sub_20D9734F8();
  v0[17] = __swift_project_value_buffer(v3, qword_28112AC00);

  v4 = sub_20D9734D8();
  v5 = sub_20D975478();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v7 = v0[9];
    v8 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_20D7F4DC8(0xD000000000000027, 0x800000020D984560, &v20);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_20D7F4DC8(*(v7 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v7 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v20);
    *(v9 + 22) = 2080;
    *(v9 + 24) = sub_20D7F4DC8(v8, v6, &v20);
    _os_log_impl(&dword_20D7C9000, v4, v5, "\t...%s(%s):%s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v10, -1, -1);
    MEMORY[0x20F324260](v9, -1, -1);
  }

  v12 = v0[15];
  v11 = v0[16];
  v13 = v0[14];
  sub_20D972AA8();
  v0[18] = sub_20D972A98();
  (*(v12 + 104))(v11, *MEMORY[0x277D17EE8], v13);
  v14 = *(MEMORY[0x277D07580] + 4);
  v19 = *MEMORY[0x277D07580] + MEMORY[0x277D07580];
  v15 = swift_task_alloc();
  v0[19] = v15;
  *v15 = v0;
  v15[1] = sub_20D841A94;
  v16 = v0[16];
  v18 = v0[5];
  v17 = v0[6];
  v23 = 1;
  v22 = 0xE000000000000000;

  __asm { BR              X8 }
}

uint64_t sub_20D841A94(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 152);
  v7 = *v3;
  v5[20] = a1;
  v5[21] = a2;
  v5[22] = v2;

  v8 = v4[18];
  (*(v4[15] + 8))(v4[16], v4[14]);

  if (v2)
  {
    v9 = sub_20D8423BC;
  }

  else
  {
    v9 = sub_20D841C24;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_20D841C24()
{
  v59 = v0;
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[13];
  v5 = v0[11];
  v6 = sub_20D971C68();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_20D971C58();
  sub_20D84DFEC(&qword_281125108, MEMORY[0x277D17FB0]);
  sub_20D971C48();
  if (v2)
  {
    v9 = v2;
    sub_20D84D374(v0[20], v0[21]);

LABEL_8:
    v0[23] = v9;
    v35 = v0[17];
    v37 = v0[8];
    v36 = v0[9];

    v38 = v9;
    v39 = sub_20D9734D8();
    v40 = sub_20D975458();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = v0[9];
      v57 = v0[8];
      v42 = v0[7];
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v58[0] = v45;
      *v43 = 136315906;
      *(v43 + 4) = sub_20D7F4DC8(0xD000000000000027, 0x800000020D984560, v58);
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_20D7F4DC8(*(v41 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v41 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v58);
      *(v43 + 22) = 2080;
      *(v43 + 24) = sub_20D7F4DC8(v42, v57, v58);
      *(v43 + 32) = 2112;
      v46 = v9;
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 34) = v47;
      *v44 = v47;
      _os_log_impl(&dword_20D7C9000, v39, v40, "%s(%s):%s: EG fetch failed with: %@", v43, 0x2Au);
      sub_20D7E3944(v44, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v44, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v45, -1, -1);
      MEMORY[0x20F324260](v43, -1, -1);
    }

    sub_20D84D14C();
    v0[24] = swift_allocError();
    v0[25] = v48;
    sub_20D9752E8();
    v0[26] = sub_20D9752D8();
    v50 = sub_20D975298();

    return MEMORY[0x2822009F8](sub_20D842298, v50, v49);
  }

  v10 = v0[17];
  v11 = v0[13];
  v12 = v0[11];
  v14 = v0[8];
  v13 = v0[9];

  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  sub_20D975728();
  v16 = v0[2];
  v15 = v0[3];

  v17 = sub_20D9734D8();
  v18 = sub_20D975478();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = v0[9];
    v56 = v0[8];
    v20 = v0[7];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v58[0] = v22;
    *v21 = 136315906;
    *(v21 + 4) = sub_20D7F4DC8(0xD000000000000027, 0x800000020D984560, v58);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_20D7F4DC8(*(v19 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v19 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v58);
    *(v21 + 22) = 2080;
    *(v21 + 24) = sub_20D7F4DC8(v20, v56, v58);
    *(v21 + 32) = 2080;
    v23 = sub_20D7F4DC8(v16, v15, v58);

    *(v21 + 34) = v23;
    _os_log_impl(&dword_20D7C9000, v17, v18, "\t...%s(%s):%s returning: %s", v21, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v22, -1, -1);
    MEMORY[0x20F324260](v21, -1, -1);
  }

  else
  {
  }

  v24 = v0[13];
  v25 = v0[10];
  sub_20D972A18();
  v26 = sub_20D9729D8();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 48))(v25, 1, v26);
  v30 = v0[20];
  v29 = v0[21];
  if (v28 == 1)
  {
    v32 = v0[12];
    v31 = v0[13];
    v33 = v0[11];
    sub_20D7E3944(v0[10], &qword_27C838A00, &qword_20D976750);
    sub_20D84D14C();
    v9 = swift_allocError();
    *v34 = 8;
    swift_willThrow();
    sub_20D84D374(v30, v29);
    (*(v32 + 8))(v31, v33);
    goto LABEL_8;
  }

  v51 = v0[16];
  v52 = v0[10];
  v53 = v0[4];
  (*(v0[12] + 8))(v0[13], v0[11]);
  sub_20D84D374(v30, v29);
  (*(v27 + 32))(v53, v52, v26);

  v54 = v0[1];

  return v54();
}

uint64_t sub_20D842298()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v4 = v0[9];

  sub_20D8437C8(v3, v2);

  return MEMORY[0x2822009F8](sub_20D84231C, 0, 0);
}

uint64_t sub_20D84231C()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[10];
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[24];

  return v6();
}

uint64_t sub_20D8423BC()
{
  v21 = v0;
  v1 = v0[22];
  v0[23] = v1;
  v2 = v0[17];
  v4 = v0[8];
  v3 = v0[9];

  v5 = v1;
  v6 = sub_20D9734D8();
  v7 = sub_20D975458();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[9];
    v19 = v0[8];
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136315906;
    *(v10 + 4) = sub_20D7F4DC8(0xD000000000000027, 0x800000020D984560, &v20);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_20D7F4DC8(*(v8 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v8 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v20);
    *(v10 + 22) = 2080;
    *(v10 + 24) = sub_20D7F4DC8(v9, v19, &v20);
    *(v10 + 32) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 34) = v14;
    *v11 = v14;
    _os_log_impl(&dword_20D7C9000, v6, v7, "%s(%s):%s: EG fetch failed with: %@", v10, 0x2Au);
    sub_20D7E3944(v11, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v12, -1, -1);
    MEMORY[0x20F324260](v10, -1, -1);
  }

  sub_20D84D14C();
  v0[24] = swift_allocError();
  v0[25] = v15;
  sub_20D9752E8();
  v0[26] = sub_20D9752D8();
  v17 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D842298, v17, v16);
}

uint64_t sub_20D842644(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_20D975318();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_20D9752E8();

  v8 = sub_20D9752D8();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a2;
  sub_20D82D02C(0, 0, v6, &unk_20D979480, v9);
}

uint64_t sub_20D842768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = *(*(type metadata accessor for GridForecastSnapshot(0) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  sub_20D9752E8();
  v4[8] = sub_20D9752D8();
  v7 = sub_20D975298();
  v4[9] = v7;
  v4[10] = v6;

  return MEMORY[0x2822009F8](sub_20D84282C, v7, v6);
}

uint64_t sub_20D84282C()
{
  v11 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_20D9734F8();
  v0[11] = __swift_project_value_buffer(v2, qword_28112AC00);

  v3 = sub_20D9734D8();
  v4 = sub_20D975478();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_20D7F4DC8(*(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v10);
    _os_log_impl(&dword_20D7C9000, v3, v4, "NOTIFICATION:(%s): UPDATING Curent Location", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x20F324260](v7, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_20D8429E8;

  return sub_20D84D5B8();
}

uint64_t sub_20D8429E8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = a1;

  v4 = *(v2 + 80);
  v5 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_20D842B10, v5, v4);
}

uint64_t sub_20D842B10()
{
  v32 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  v3 = *(v0 + 104);

  v4 = sub_20D9734D8();
  v5 = sub_20D975478();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 104);
    v7 = *(v0 + 48);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_20D7F4DC8(*(v7 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v7 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v31);
    *(v8 + 12) = 2080;
    v10 = sub_20D972F48();
    v12 = sub_20D7F4DC8(v10, v11, &v31);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_20D7C9000, v4, v5, "NOTIFICATION:(%s): UPDATED Curent Location (%s)...", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  v13 = *(v0 + 88);
  v14 = *(v0 + 48);

  v15 = v3;
  v16 = sub_20D9734D8();
  v17 = sub_20D975448();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v0 + 104);
    v19 = *(v0 + 48);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_20D7F4DC8(*(v19 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v19 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v31);
    *(v20 + 12) = 2080;
    if (v18)
    {
      v22 = [v15 description];
      v23 = sub_20D975098();
      v25 = v24;
    }

    else
    {
      v25 = 0xE500000000000000;
      v23 = 0x3E6C696E3CLL;
    }

    v26 = sub_20D7F4DC8(v23, v25, &v31);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_20D7C9000, v16, v17, "\t...NOTIFICATION:(%s): to %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v21, -1, -1);
    MEMORY[0x20F324260](v20, -1, -1);
  }

  v27 = swift_task_alloc();
  *(v0 + 112) = v27;
  *v27 = v0;
  v27[1] = sub_20D842E50;
  v28 = *(v0 + 104);
  v29 = *(v0 + 48);

  return sub_20D836348(v28);
}

uint64_t sub_20D842E50()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v6 = *v0;

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_20D842F70, v4, v3);
}

uint64_t sub_20D842F70()
{
  v21 = v0;
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[6];

  v4 = sub_20D9734D8();
  v5 = sub_20D975478();

  if (os_log_type_enabled(v4, v5))
  {
    v19 = v0[13];
    v6 = v0[6];
    v7 = v0[7];
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v8 = 136315394;
    *(v8 + 4) = sub_20D7F4DC8(*(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v20);
    *(v8 + 12) = 2080;
    swift_getKeyPath();
    v0[5] = v6;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
    sub_20D972858();

    v9 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
    swift_beginAccess();
    sub_20D84BC18(v6 + v9, v7, type metadata accessor for GridForecastSnapshot);
    v10 = GridForecastSnapshot.description.getter();
    v12 = v11;
    sub_20D84BADC(v7, type metadata accessor for GridForecastSnapshot);
    v13 = sub_20D7F4DC8(v10, v12, &v20);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_20D7C9000, v4, v5, "NOTIFICATION:(%s): updated locSnapshot: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v18, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  else
  {
    v14 = v0[13];
  }

  v15 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_20D8431FC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v15 - v5;
  v7 = sub_20D971DD8();
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v7;
  v15[1] = 7562345;
  v15[2] = 0xE300000000000000;
  sub_20D975628();
  if (!*(v8 + 16) || (v9 = sub_20D8D4B04(v16), (v10 & 1) == 0))
  {

    sub_20D84D3F0(v16);
LABEL_8:
    v17 = 0u;
    v18 = 0u;
    return sub_20D7E3944(&v17, &qword_27C838A18, &qword_20D9768D8);
  }

  sub_20D7EB630(*(v8 + 56) + 32 * v9, &v17);
  sub_20D84D3F0(v16);

  if (!*(&v18 + 1))
  {
    return sub_20D7E3944(&v17, &qword_27C838A18, &qword_20D9768D8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839620, &qword_20D979460);
  result = swift_dynamicCast();
  if (result)
  {
    v12 = v16[0];
    v13 = sub_20D975318();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v12;
    v14[5] = a2;

    sub_20D82D02C(0, 0, v6, &unk_20D979470, v14);
  }

  return result;
}

uint64_t sub_20D8433F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_20D843414, 0, 0);
}

uint64_t sub_20D843414()
{
  v16 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_28112AC00);

  v3 = sub_20D9734D8();
  v4 = sub_20D975478();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v8 = sub_20D975368();
    v10 = sub_20D7F4DC8(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_20D7C9000, v3, v4, "NOTIFICATION: EnergyData Cache refreshed for: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x20F324260](v7, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[4] = v11;
  *v11 = v0;
  v11[1] = sub_20D8435F4;
  v12 = v0[2];
  v13 = v0[3];

  return sub_20D83FFC8(v12);
}

uint64_t sub_20D8435F4()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20D8436E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_20D84D1B8();
    **(*(v4 + 64) + 40) = sub_20D975238();

    return MEMORY[0x282200950](v4);
  }
}

void sub_20D8437C8(char *a1@<X0>, char *a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839600, &qword_20D979420);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v75 - v5;
  v7 = sub_20D972A88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v77 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v78 = &v75 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839608, &qword_20D979428);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v75 - v15;
  v17 = sub_20D9729B8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v79 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v75 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v75 - v25;
  v82 = a1;
  v27 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  v28 = swift_dynamicCast();
  v29 = *(v18 + 56);
  if (v28)
  {
    v29(v16, 0, 1, v17);
    (*(v18 + 32))(v26, v16, v17);
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v30 = sub_20D9734F8();
    __swift_project_value_buffer(v30, qword_28112AC00);
    v31 = *(v18 + 16);
    v31(v24, v26, v17);
    v32 = v80;

    v33 = sub_20D9734D8();
    v34 = sub_20D975458();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v82 = v78;
      *v35 = 136315650;
      *(v35 + 4) = sub_20D7F4DC8(0xD00000000000001DLL, 0x800000020D984380, &v82);
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_20D7F4DC8(*(v32 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v32 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v82);
      *(v35 + 22) = 2112;
      sub_20D84DFEC(&qword_281125110, MEMORY[0x277D17EC0]);
      swift_allocError();
      v31(v36, v24, v17);
      v37 = _swift_stdlib_bridgeErrorToNSError();
      v38 = *(v18 + 8);
      v38(v24, v17);
      *(v35 + 24) = v37;
      v39 = v77;
      *v77 = v37;
      _os_log_impl(&dword_20D7C9000, v33, v34, "%s(%s): Got NetworkError: %@", v35, 0x20u);
      sub_20D7E3944(v39, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v39, -1, -1);
      v40 = v78;
      swift_arrayDestroy();
      MEMORY[0x20F324260](v40, -1, -1);
      MEMORY[0x20F324260](v35, -1, -1);
    }

    else
    {

      v38 = *(v18 + 8);
      v38(v24, v17);
    }

    v60 = *(v18 + 104);
    v61 = v79;
    v60(v79, *MEMORY[0x277D17EB8], v17);
    v62 = MEMORY[0x20F320B60](v26, v61);
    v38(v61, v17);
    if (v62)
    {
      v38(v26, v17);
      v53 = 7;
    }

    else
    {
      v60(v61, *MEMORY[0x277D17EB0], v17);
      v73 = MEMORY[0x20F320B60](v26, v61);
      v38(v61, v17);
      v38(v26, v17);
      if (v73)
      {
        v53 = 6;
      }

      else
      {
        v53 = 8;
      }
    }
  }

  else
  {
    v29(v16, 1, 1, v17);
    sub_20D7E3944(v16, &qword_27C839608, &qword_20D979428);
    v82 = a1;
    v41 = a1;
    v42 = swift_dynamicCast();
    v43 = *(v8 + 56);
    if (v42)
    {
      v43(v6, 0, 1, v7);
      v44 = v78;
      (*(v8 + 32))(v78, v6, v7);
      v45 = v80;
      if (qword_281127100 != -1)
      {
        swift_once();
      }

      v46 = sub_20D9734F8();
      __swift_project_value_buffer(v46, qword_28112AC00);
      v47 = *(v8 + 16);
      v48 = v77;
      v47(v77, v44, v7);

      v49 = sub_20D9734D8();
      v50 = sub_20D975458();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v76 = v8;
        v52 = v7;
        v53 = 8;
        v54 = v48;
        v55 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v82 = v79;
        *v51 = 136315650;
        *(v51 + 4) = sub_20D7F4DC8(0xD00000000000001DLL, 0x800000020D984380, &v82);
        *(v51 + 12) = 2080;
        *(v51 + 14) = sub_20D7F4DC8(*(v45 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v45 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v82);
        *(v51 + 22) = 2112;
        sub_20D84DFEC(&qword_281125100, MEMORY[0x277D07550]);
        swift_allocError();
        v47(v56, v54, v52);
        v57 = _swift_stdlib_bridgeErrorToNSError();
        v58 = *(v76 + 8);
        v58(v54, v52);
        *(v51 + 24) = v57;
        *v55 = v57;
        _os_log_impl(&dword_20D7C9000, v49, v50, "%s(%s): Got HomeEnergyError: %@", v51, 0x20u);
        sub_20D7E3944(v55, &unk_27C839E80, &qword_20D979610);
        MEMORY[0x20F324260](v55, -1, -1);
        v59 = v79;
        swift_arrayDestroy();
        MEMORY[0x20F324260](v59, -1, -1);
        MEMORY[0x20F324260](v51, -1, -1);

        v58(v78, v52);
      }

      else
      {

        v74 = *(v8 + 8);
        v74(v48, v7);
        v74(v44, v7);
        v53 = 8;
      }
    }

    else
    {
      v43(v6, 1, 1, v7);
      sub_20D7E3944(v6, &qword_27C839600, &qword_20D979420);
      v63 = v80;
      if (qword_281127100 != -1)
      {
        swift_once();
      }

      v64 = sub_20D9734F8();
      __swift_project_value_buffer(v64, qword_28112AC00);
      v65 = a1;

      v66 = sub_20D9734D8();
      v67 = sub_20D975458();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v82 = v70;
        *v68 = 136315650;
        *(v68 + 4) = sub_20D7F4DC8(0xD00000000000001DLL, 0x800000020D984380, &v82);
        *(v68 + 12) = 2080;
        *(v68 + 14) = sub_20D7F4DC8(*(v63 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v63 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v82);
        *(v68 + 22) = 2112;
        v71 = a1;
        v72 = _swift_stdlib_bridgeErrorToNSError();
        *(v68 + 24) = v72;
        *v69 = v72;
        _os_log_impl(&dword_20D7C9000, v66, v67, "%s(%s): UNEXPECTED ISSUE: %@, returning .otherError", v68, 0x20u);
        sub_20D7E3944(v69, &unk_27C839E80, &qword_20D979610);
        MEMORY[0x20F324260](v69, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v70, -1, -1);
        MEMORY[0x20F324260](v68, -1, -1);
      }

      v53 = 11;
    }
  }

  *v81 = v53;
}

uint64_t sub_20D844318(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_20D972928();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839618, &unk_20D979450) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = sub_20D9728B8();
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v9 = sub_20D972908();
  v1[11] = v9;
  v10 = *(v9 - 8);
  v1[12] = v10;
  v11 = *(v10 + 64) + 15;
  v1[13] = swift_task_alloc();
  v12 = sub_20D9728F8();
  v1[14] = v12;
  v13 = *(v12 - 8);
  v1[15] = v13;
  v14 = *(v13 + 64) + 15;
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D844524, 0, 0);
}

uint64_t sub_20D844524()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  (*(v7 + 104))(v5, *MEMORY[0x277D850A0], v6);
  sub_20D9728A8();
  (*(v7 + 8))(v5, v6);
  sub_20D9728E8();
  (*(v3 + 8))(v2, v4);
  v8 = sub_20D84DFEC(&qword_281126E08, MEMORY[0x277D850A8]);
  v9 = *(MEMORY[0x277D856D0] + 4);
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_20D844698;
  v11 = v0[16];
  v12 = v0[14];
  v13 = v0[7];

  return MEMORY[0x282200308](v13, v12, v8);
}

uint64_t sub_20D844698()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_20D844DC4;
  }

  else
  {
    v3 = sub_20D8447AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20D8447AC()
{
  v51 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v4 = sub_20D9734F8();
    __swift_project_value_buffer(v4, qword_28112AC00);
    v5 = sub_20D9734D8();
    v6 = sub_20D975478();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v50 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D9844E0, &v50);
      _os_log_impl(&dword_20D7C9000, v5, v6, "%s liveUpdates returned neither location nor access denied -presumably location is not authorized.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x20F324260](v8, -1, -1);
      MEMORY[0x20F324260](v7, -1, -1);
    }

LABEL_20:
    v21 = 0;
    **(v0 + 24) = 0;
LABEL_21:
    v36 = *(v0 + 128);
    v37 = *(v0 + 104);
    v38 = *(v0 + 80);
    v40 = *(v0 + 48);
    v39 = *(v0 + 56);
    *(*(v0 + 24) + 8) = v21;

    v41 = *(v0 + 8);

    return v41();
  }

  (*(v3 + 32))(*(v0 + 48), v1, v2);
  v9 = sub_20D972918();
  if (v9)
  {

    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v10 = sub_20D9734F8();
    __swift_project_value_buffer(v10, qword_28112AC00);
    v11 = sub_20D9734D8();
    v12 = sub_20D975478();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v50 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D9844E0, &v50);
      _os_log_impl(&dword_20D7C9000, v11, v12, "%s location received", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x20F324260](v14, -1, -1);
      MEMORY[0x20F324260](v13, -1, -1);
    }

    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v17 = *(v0 + 112);
    v19 = *(v0 + 40);
    v18 = *(v0 + 48);
    v20 = *(v0 + 32);
    **(v0 + 24) = 1;
    v21 = sub_20D972918();
    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v15, v17);
    goto LABEL_21;
  }

  v22 = *(v0 + 48);
  if (sub_20D9728C8() & 1) != 0 || (v23 = *(v0 + 48), (sub_20D9728D8()))
  {
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v24 = sub_20D9734F8();
    __swift_project_value_buffer(v24, qword_28112AC00);
    v25 = sub_20D9734D8();
    v26 = sub_20D975478();
    v27 = os_log_type_enabled(v25, v26);
    v29 = *(v0 + 120);
    v28 = *(v0 + 128);
    v30 = *(v0 + 112);
    v31 = *(v0 + 40);
    v32 = *(v0 + 48);
    v33 = *(v0 + 32);
    if (v27)
    {
      v49 = *(v0 + 128);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v50 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D9844E0, &v50);
      _os_log_impl(&dword_20D7C9000, v25, v26, "%s location NOT authorized", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x20F324260](v35, -1, -1);
      MEMORY[0x20F324260](v34, -1, -1);

      (*(v31 + 8))(v32, v33);
      (*(v29 + 8))(v49, v30);
    }

    else
    {

      (*(v31 + 8))(v32, v33);
      (*(v29 + 8))(v28, v30);
    }

    goto LABEL_20;
  }

  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  v43 = sub_20D84DFEC(&qword_281126E08, MEMORY[0x277D850A8]);
  v44 = *(MEMORY[0x277D856D0] + 4);
  v45 = swift_task_alloc();
  *(v0 + 136) = v45;
  *v45 = v0;
  v45[1] = sub_20D844698;
  v46 = *(v0 + 128);
  v47 = *(v0 + 112);
  v48 = *(v0 + 56);

  return MEMORY[0x282200308](v48, v47, v43);
}

uint64_t sub_20D844DC4()
{
  *(v0 + 16) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_20D844E58, 0, 0);
}

uint64_t sub_20D844E58()
{
  v21 = v0;
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_28112AC00);
  v3 = v1;
  v4 = sub_20D9734D8();
  v5 = sub_20D975478();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 144);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D9844E0, &v20);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s liveUpdates returned unexpected error: %@", v8, 0x16u);
    sub_20D7E3944(v9, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F324260](v10, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  else
  {
  }

  **(v0 + 24) = 0;
  v13 = *(v0 + 128);
  v14 = *(v0 + 104);
  v15 = *(v0 + 80);
  v17 = *(v0 + 48);
  v16 = *(v0 + 56);
  *(*(v0 + 24) + 8) = 0;

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_20D8450B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_20D7EB7E8(a3, v27 - v11, &unk_27C839F30, &qword_20D978400);
  v13 = sub_20D975318();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_20D7E3944(v12, &unk_27C839F30, &qword_20D978400);
  }

  else
  {
    sub_20D975308();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_20D975298();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_20D975138() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395D0, &qword_20D979258);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395D0, &qword_20D979258);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_20D84538C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400) - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  v6[8] = sub_20D9752E8();
  v6[9] = sub_20D9752D8();
  v9 = sub_20D975298();
  v6[10] = v9;
  v6[11] = v8;

  return MEMORY[0x2822009F8](sub_20D845464, v9, v8);
}

uint64_t sub_20D845464()
{
  v21 = v0;
  v1 = *(v0 + 32);
  v2 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_cachedLocationIsAuthorized;
  *(v0 + 96) = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_cachedLocationIsAuthorized;
  v3 = *(v1 + v2);
  if (v3 == 2)
  {
    v4 = *(v0 + 64);
    *(v0 + 104) = sub_20D9752D8();
    v6 = sub_20D975298();
    *(v0 + 112) = v6;
    *(v0 + 120) = v5;

    return MEMORY[0x2822009F8](sub_20D845704, v6, v5);
  }

  else
  {
    v7 = *(v0 + 72);

    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v8 = sub_20D9734F8();
    __swift_project_value_buffer(v8, qword_28112AC00);
    v9 = sub_20D9734D8();
    v10 = sub_20D975478();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_20D7F4DC8(0xD00000000000002ALL, 0x800000020D984620, &v20);
      *(v11 + 12) = 2080;
      if (v3)
      {
        v13 = 0x5A49524F48545541;
      }

      else
      {
        v13 = 0x6874756120544F4ELL;
      }

      if (v3)
      {
        v14 = 0xEA00000000004445;
      }

      else
      {
        v14 = 0xEE0064657A69726FLL;
      }

      v15 = sub_20D7F4DC8(v13, v14, &v20);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_20D7C9000, v9, v10, "%s loc auth CACHED status : %s, running process", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v12, -1, -1);
      MEMORY[0x20F324260](v11, -1, -1);
    }

    v17 = *(v0 + 48);
    v16 = *(v0 + 56);
    (*(v0 + 40))();

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_20D845704()
{
  v1 = v0[7];
  v2 = sub_20D975318();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = sub_20D8450B8(0, 0, v1, &unk_20D9794B8, v3);
  v0[16] = v4;
  sub_20D7E3944(v1, &unk_27C839F30, &qword_20D978400);
  v5 = *(MEMORY[0x277D857E0] + 4);
  v6 = swift_task_alloc();
  v0[17] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395D0, &qword_20D979258);
  *v6 = v0;
  v6[1] = sub_20D84585C;

  return MEMORY[0x282200460](v0 + 2, v4, v7);
}

uint64_t sub_20D84585C()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v7 = *v0;

  v4 = *(v1 + 120);
  v5 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_20D8459A0, v5, v4);
}

uint64_t sub_20D8459A0()
{
  v1 = *(v0 + 104);

  *(v0 + 144) = *(v0 + 16);

  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_20D845A14, v2, v3);
}

uint64_t sub_20D845A14()
{
  v16 = v0;
  v1 = *(v0 + 72);

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_28112AC00);
  v3 = sub_20D9734D8();
  v4 = sub_20D975478();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 144);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_20D7F4DC8(0xD00000000000002ALL, 0x800000020D984620, &v15);
    *(v6 + 12) = 2080;
    if (v5)
    {
      v8 = 0x5A49524F48545541;
    }

    else
    {
      v8 = 0xD00000000000001FLL;
    }

    if (v5)
    {
      v9 = 0xEA00000000004445;
    }

    else
    {
      v9 = 0x800000020D984650;
    }

    v10 = sub_20D7F4DC8(v8, v9, &v15);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s caching obtained auth status: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v7, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  *(*(v0 + 32) + *(v0 + 96)) = *(v0 + 144);
  v12 = *(v0 + 48);
  v11 = *(v0 + 56);
  (*(v0 + 40))();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_20D845C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v6 = *(type metadata accessor for GridForecastSnapshotType(0) - 8);
  v4[16] = v6;
  v4[17] = *(v6 + 64);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = sub_20D9752E8();
  v4[21] = sub_20D9752D8();
  v8 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D845D70, v8, v7);
}

uint64_t sub_20D845D70()
{
  v1 = v0[21];
  v2 = v0[14];

  swift_getKeyPath();
  v0[11] = v2;
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972858();

  v3 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationNotificationsSnapshot;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 == 2 || (v5 = &unk_20D979518, (v4 & 1) == 0))
  {
    v6 = v0 + 12;
    v5 = &unk_20D979510;
  }

  else
  {
    v6 = v0 + 13;
  }

  v23 = v5;
  v7 = v0[14];
  swift_getKeyPath();
  *v6 = v7;
  sub_20D972858();

  v8 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
  v10 = v0[19];
  v9 = v0[20];
  v12 = v0[17];
  v11 = v0[18];
  v14 = v0[15];
  v13 = v0[16];
  v15 = v0[14];
  swift_beginAccess();
  sub_20D84BC18(v15 + v8, v10, type metadata accessor for GridForecastSnapshotType);
  v16 = sub_20D975318();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  sub_20D84BC18(v10, v11, type metadata accessor for GridForecastSnapshotType);

  v17 = sub_20D9752D8();
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v17;
  *(v19 + 24) = v20;
  sub_20D84E098(v11, v19 + v18, type metadata accessor for GridForecastSnapshotType);
  *(v19 + ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  sub_20D82D02C(0, 0, v14, v23, v19);

  sub_20D84BADC(v10, type metadata accessor for GridForecastSnapshotType);

  v21 = v0[1];

  return v21();
}

uint64_t sub_20D846050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v6 = *(type metadata accessor for GridForecastSnapshotType(0) - 8);
  v4[16] = v6;
  v4[17] = *(v6 + 64);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = sub_20D9752E8();
  v4[21] = sub_20D9752D8();
  v8 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D846190, v8, v7);
}

uint64_t sub_20D846190()
{
  v1 = v0[21];
  v2 = v0[14];

  swift_getKeyPath();
  v0[11] = v2;
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972858();

  v3 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedNotificationsSnapshot;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 == 2 || (v5 = &unk_20D9794F8, (v4 & 1) == 0))
  {
    v6 = v0 + 12;
    v5 = &unk_20D9794E8;
  }

  else
  {
    v6 = v0 + 13;
  }

  v23 = v5;
  v7 = v0[14];
  swift_getKeyPath();
  *v6 = v7;
  sub_20D972858();

  v8 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  v10 = v0[19];
  v9 = v0[20];
  v12 = v0[17];
  v11 = v0[18];
  v14 = v0[15];
  v13 = v0[16];
  v15 = v0[14];
  swift_beginAccess();
  sub_20D84BC18(v15 + v8, v10, type metadata accessor for GridForecastSnapshotType);
  v16 = sub_20D975318();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  sub_20D84BC18(v10, v11, type metadata accessor for GridForecastSnapshotType);

  v17 = sub_20D9752D8();
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v17;
  *(v19 + 24) = v20;
  sub_20D84E098(v11, v19 + v18, type metadata accessor for GridForecastSnapshotType);
  *(v19 + ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  sub_20D82D02C(0, 0, v14, v23, v19);

  sub_20D84BADC(v10, type metadata accessor for GridForecastSnapshotType);

  v21 = v0[1];

  return v21();
}

uint64_t sub_20D846470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = sub_20D972EC8();
  v5[16] = v6;
  v7 = *(v6 - 8);
  v5[17] = v7;
  v8 = *(v7 + 64) + 15;
  v5[18] = swift_task_alloc();
  v9 = sub_20D972A78();
  v5[19] = v9;
  v10 = *(v9 - 8);
  v5[20] = v10;
  v11 = *(v10 + 64) + 15;
  v5[21] = swift_task_alloc();
  v12 = sub_20D972698();
  v5[22] = v12;
  v13 = *(v12 - 8);
  v5[23] = v13;
  v14 = *(v13 + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460) - 8) + 64) + 15;
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v16 = type metadata accessor for GridForecastSnapshotType(0);
  v5[29] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v18 = type metadata accessor for GridForecastSnapshot(0);
  v5[34] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v5[35] = swift_task_alloc();
  sub_20D9752E8();
  v5[36] = sub_20D9752D8();
  v21 = sub_20D975298();
  v5[37] = v21;
  v5[38] = v20;

  return MEMORY[0x2822009F8](sub_20D8466FC, v21, v20);
}

uint64_t sub_20D8466FC()
{
  v109 = v0;
  v1 = v0[29];
  sub_20D84BC18(v0[14], v0[33], type metadata accessor for GridForecastSnapshotType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v9 = v0[35];
    v10 = v0[15];
    sub_20D84BADC(v0[33], type metadata accessor for GridForecastSnapshotType);
    swift_getKeyPath();
    v0[13] = v10;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
    sub_20D972858();

    v11 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
    swift_beginAccess();
    sub_20D84BC18(v10 + v11, v9, type metadata accessor for GridForecastSnapshot);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v3 = v0[35];
    v4 = v0[33];
    v5 = v0[15];

    v6 = *(v4 + 16);

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
    swift_getKeyPath();
    v0[10] = v5;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
    sub_20D972858();

    v8 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
    swift_beginAccess();
    sub_20D84BC18(v5 + v8, v3, type metadata accessor for GridForecastSnapshot);
    sub_20D7E3944(v4 + v7, &qword_27C8389F8, &qword_20D978460);
LABEL_5:
    v12 = v0[29];
    sub_20D84BC18(v0[35], v0[32], type metadata accessor for GridForecastSnapshotType);
    v13 = swift_getEnumCaseMultiPayload();
    v14 = v0[32];
    if (v13 == 1)
    {

      v16 = *(v14 + 8);
      v15 = *(v14 + 16);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
      sub_20D7E3944(v14 + *(v17 + 64), &qword_27C8389F8, &qword_20D978460);
    }

    else
    {
      sub_20D84BADC(v0[32], type metadata accessor for GridForecastSnapshotType);
      v15 = 0;
    }

    v18 = v0[35];
    v19 = v0[29];
    v20 = (v18 + *(v0[34] + 28));
    v21 = v20[1];
    v102 = *v20;
    sub_20D84BC18(v18, v0[31], type metadata accessor for GridForecastSnapshotType);
    v22 = swift_getEnumCaseMultiPayload();
    v23 = v0[31];
    v24 = v0[28];
    if (v22 == 1)
    {

      v25 = *(v23 + 16);

      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
      sub_20D7E2A54(v23 + *(v26 + 64), v24);
    }

    else
    {
      (*(v0[23] + 56))(v0[28], 1, 1, v0[22]);
      sub_20D84BADC(v23, type metadata accessor for GridForecastSnapshotType);
    }

    v27 = (v0[35] + *(v0[34] + 24));
    v106 = *v27;
    v0[39] = *v27;
    v104 = v27[1];
    v0[40] = v104;
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    sub_20D971FF8();
    if (v15)
    {
    }

    v46 = v0[27];
    v47 = v0[28];
    v49 = v0[22];
    v48 = v0[23];
    sub_20D971FF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7B0, &qword_20D979500);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_20D979110;
    *(v50 + 56) = MEMORY[0x277D837D0];
    *(v50 + 64) = sub_20D84E340();
    *(v50 + 32) = v102;
    *(v50 + 40) = v21;

    sub_20D9750C8();

    v0[8] = 0xD00000000000003FLL;
    v0[9] = 0x800000020D984820;
    sub_20D7EB7E8(v47, v46, &qword_27C8389F8, &qword_20D978460);
    v51 = *(v48 + 48);
    v52 = v51(v46, 1, v49);
    v53 = v0[27];
    if (v52 == 1)
    {
      sub_20D7E3944(v53, &qword_27C8389F8, &qword_20D978460);
      if (qword_281127100 != -1)
      {
        swift_once();
      }

      v54 = v0[15];
      v55 = sub_20D9734F8();
      __swift_project_value_buffer(v55, qword_28112AC00);

      v56 = sub_20D9734D8();
      v57 = sub_20D975478();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = v0[15];
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v108[0] = v60;
        *v59 = 136315394;
        *(v59 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D984740, v108);
        *(v59 + 12) = 2080;
        *(v59 + 14) = sub_20D7F4DC8(*(v58 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v58 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v108);
        _os_log_impl(&dword_20D7C9000, v56, v57, "%s(%s): creating notification for current location", v59, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v60, -1, -1);
        MEMORY[0x20F324260](v59, -1, -1);
      }
    }

    else
    {
      v101 = v51;
      (*(v0[23] + 32))(v0[25], v53, v0[22]);
      v61 = sub_20D972648();
      v108[0] = 0x3D6469656D6F6826;
      v108[1] = 0xE800000000000000;
      MEMORY[0x20F323340](v61);

      MEMORY[0x20F323340](0x3D6469656D6F6826, 0xE800000000000000);

      if (qword_281127100 != -1)
      {
        swift_once();
      }

      v62 = v0[24];
      v63 = v0[25];
      v64 = v0[22];
      v65 = v0[23];
      v66 = v0[15];
      v67 = sub_20D9734F8();
      __swift_project_value_buffer(v67, qword_28112AC00);
      (*(v65 + 16))(v62, v63, v64);

      v68 = sub_20D9734D8();
      v69 = sub_20D975478();

      v70 = os_log_type_enabled(v68, v69);
      v71 = v0[24];
      v72 = v0[25];
      v73 = v0[22];
      v74 = v0[23];
      if (v70)
      {
        v100 = v0[25];
        v75 = v0[15];
        v76 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v108[0] = v99;
        *v76 = 136315650;
        *(v76 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D984740, v108);
        *(v76 + 12) = 2080;
        *(v76 + 14) = sub_20D7F4DC8(*(v75 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v75 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v108);
        *(v76 + 22) = 2080;
        v77 = sub_20D972648();
        v79 = v78;
        v80 = *(v74 + 8);
        v80(v71, v73);
        v81 = sub_20D7F4DC8(v77, v79, v108);

        *(v76 + 24) = v81;
        _os_log_impl(&dword_20D7C9000, v68, v69, "%s(%s): creating notification for homeID: %s", v76, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v99, -1, -1);
        MEMORY[0x20F324260](v76, -1, -1);

        v82 = v100;
      }

      else
      {

        v80 = *(v74 + 8);
        v80(v71, v73);
        v82 = v72;
      }

      v80(v82, v73);
      v51 = v101;
    }

    v83 = v0[26];
    v84 = v0[22];
    v85 = v0[8];
    v86 = v0[9];
    sub_20D7EB7E8(v0[28], v83, &qword_27C8389F8, &qword_20D978460);
    v87 = v51(v83, 1, v84);
    v88 = v0[26];
    if (v87 == 1)
    {
      sub_20D7E3944(v0[26], &qword_27C8389F8, &qword_20D978460);
    }

    else
    {
      v89 = v0[22];
      v90 = v0[23];
      v91 = v0[26];
      sub_20D972648();
      (*(v90 + 8))(v88, v89);
    }

    v92 = v0[21];
    v94 = v0[17];
    v93 = v0[18];
    v95 = v0[16];
    (*(v94 + 104))(v93, *MEMORY[0x277D07360], v95);
    sub_20D972EB8();
    (*(v94 + 8))(v93, v95);
    sub_20D972A68();
    sub_20D972AA8();
    v0[41] = sub_20D972A98();
    v96 = *(MEMORY[0x277D07568] + 4);
    v103 = (*MEMORY[0x277D07568] + MEMORY[0x277D07568]);
    v97 = swift_task_alloc();
    v0[42] = v97;
    *v97 = v0;
    v97[1] = sub_20D847444;
    v98 = v0[21];

    return v103(v106, v104, v98);
  }

  v28 = v0[36];

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v29 = sub_20D9734F8();
  __swift_project_value_buffer(v29, qword_28112AC00);
  v30 = sub_20D9734D8();
  v31 = sub_20D975458();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v108[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D984740, v108);
    _os_log_impl(&dword_20D7C9000, v30, v31, "%s for a static snapshot makes no sense", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x20F324260](v33, -1, -1);
    MEMORY[0x20F324260](v32, -1, -1);
  }

  v34 = v0[35];
  v35 = v0[32];
  v36 = v0[33];
  v38 = v0[30];
  v37 = v0[31];
  v40 = v0[27];
  v39 = v0[28];
  v42 = v0[25];
  v41 = v0[26];
  v43 = v0[24];
  v105 = v0[21];
  v107 = v0[18];

  v44 = v0[1];

  return v44();
}

uint64_t sub_20D847444(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v10 = *v2;
  v3[43] = a1;
  v3[44] = v1;

  if (v1)
  {
    v5 = v3[37];
    v6 = v3[38];
    v7 = sub_20D847CC0;
  }

  else
  {
    v8 = v3[41];

    v5 = v3[37];
    v6 = v3[38];
    v7 = sub_20D847560;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20D847560()
{
  v66 = v0;
  v1 = v0[36];

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v2 = v0[40];
  v3 = v0[15];
  v4 = sub_20D9734F8();
  __swift_project_value_buffer(v4, qword_28112AC00);

  v5 = sub_20D9734D8();
  v6 = sub_20D975478();

  if (os_log_type_enabled(v5, v6))
  {
    v61 = v4;
    v7 = v0[43];
    v9 = v0[39];
    v8 = v0[40];
    v10 = v0[15];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v65[0] = v12;
    *v11 = 136315906;
    *(v11 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D984740, v65);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_20D7F4DC8(*(v10 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v10 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v65);
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_20D7F4DC8(v9, v8, v65);
    *(v11 + 32) = 2080;
    v13 = sub_20D972A38();
    v15 = sub_20D7F4DC8(v13, v14, v65);
    v4 = v61;

    *(v11 + 34) = v15;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s(%s): for %s status = %s", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v12, -1, -1);
    MEMORY[0x20F324260](v11, -1, -1);
  }

  v16 = v0[43];
  v17 = v0[44];
  v18 = sub_20D972A48();
  if (v18 == sub_20D972A48())
  {
    v19 = v0[29];
    sub_20D84BC18(v0[14], v0[30], type metadata accessor for GridForecastSnapshotType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v21 = v0[30];
        v59 = v0[28];
        v62 = v0[35];
        v22 = v0[20];
        v23 = v0[21];
        v24 = v0[19];
        v25 = v0[15];

        v26 = *(v21 + 16);

        v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
        swift_getKeyPath();
        v27 = swift_task_alloc();
        *(v27 + 16) = v25;
        *(v27 + 24) = 1;
        v0[11] = v25;
        sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
        sub_20D972848();

        (*(v22 + 8))(v23, v24);
        sub_20D7E3944(v59, &qword_27C8389F8, &qword_20D978460);

        sub_20D84BADC(v62, type metadata accessor for GridForecastSnapshot);
        sub_20D7E3944(v21 + v58, &qword_27C8389F8, &qword_20D978460);
        goto LABEL_17;
      }

      if (qword_281127100 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v4, qword_28112AC00);
      v37 = sub_20D9734D8();
      v38 = sub_20D975458();
      v39 = os_log_type_enabled(v37, v38);
      v40 = v0[28];
      v42 = v0[20];
      v41 = v0[21];
      v43 = v0[19];
      if (v39)
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v65[0] = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D984740, v65);
        _os_log_impl(&dword_20D7C9000, v37, v38, "%s for a static snapshot makes no sense", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x20F324260](v45, -1, -1);
        MEMORY[0x20F324260](v44, -1, -1);
      }

      (*(v42 + 8))(v41, v43);
      sub_20D7E3944(v40, &qword_27C8389F8, &qword_20D978460);
      v30 = v0[35];
    }

    else
    {
      v63 = v0[35];
      v31 = v0[28];
      v33 = v0[20];
      v32 = v0[21];
      v34 = v0[19];
      v35 = v0[15];
      sub_20D84BADC(v0[30], type metadata accessor for GridForecastSnapshotType);
      swift_getKeyPath();
      v36 = swift_task_alloc();
      *(v36 + 16) = v35;
      *(v36 + 24) = 1;
      v0[12] = v35;
      sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
      sub_20D972848();

      (*(v33 + 8))(v32, v34);
      sub_20D7E3944(v31, &qword_27C8389F8, &qword_20D978460);

      v30 = v63;
    }
  }

  else
  {
    v28 = v0[35];
    v29 = v0[28];
    (*(v0[20] + 8))(v0[21], v0[19]);
    sub_20D7E3944(v29, &qword_27C8389F8, &qword_20D978460);
    v30 = v28;
  }

  sub_20D84BADC(v30, type metadata accessor for GridForecastSnapshot);
LABEL_17:
  v46 = v0[35];
  v47 = v0[32];
  v48 = v0[33];
  v50 = v0[30];
  v49 = v0[31];
  v52 = v0[27];
  v51 = v0[28];
  v54 = v0[25];
  v53 = v0[26];
  v55 = v0[24];
  v60 = v0[21];
  v64 = v0[18];

  v56 = v0[1];

  return v56();
}

uint64_t sub_20D847CC0()
{
  v64 = v0;
  v1 = v0[41];
  v2 = v0[36];

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v3 = v0[44];
  v4 = v0[15];
  v5 = sub_20D9734F8();
  __swift_project_value_buffer(v5, qword_28112AC00);

  v6 = v3;
  v7 = sub_20D9734D8();
  v8 = sub_20D975458();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[44];
  if (v9)
  {
    v11 = v0[15];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v63[0] = v14;
    *v12 = 136315650;
    *(v12 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D984740, v63);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_20D7F4DC8(*(v11 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v11 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v63);
    *(v12 + 22) = 2112;
    v15 = v10;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v16;
    *v13 = v16;
    _os_log_impl(&dword_20D7C9000, v7, v8, "%s(%s): error: %@", v12, 0x20u);
    sub_20D7E3944(v13, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v14, -1, -1);
    MEMORY[0x20F324260](v12, -1, -1);
  }

  else
  {
  }

  v17 = sub_20D972A48();
  if (v17 == sub_20D972A48())
  {
    v18 = v0[29];
    sub_20D84BC18(v0[14], v0[30], type metadata accessor for GridForecastSnapshotType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v20 = v0[30];
        v59 = v0[28];
        v61 = v0[35];
        v21 = v0[20];
        v22 = v0[21];
        v23 = v0[19];
        v24 = v0[15];

        v25 = *(v20 + 16);

        v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
        swift_getKeyPath();
        v27 = swift_task_alloc();
        *(v27 + 16) = v24;
        *(v27 + 24) = 1;
        v0[11] = v24;
        sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
        sub_20D972848();

        (*(v21 + 8))(v22, v23);
        sub_20D7E3944(v59, &qword_27C8389F8, &qword_20D978460);

        sub_20D84BADC(v61, type metadata accessor for GridForecastSnapshot);
        sub_20D7E3944(v20 + v26, &qword_27C8389F8, &qword_20D978460);
        goto LABEL_18;
      }

      if (qword_281127100 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v5, qword_28112AC00);
      v38 = sub_20D9734D8();
      v39 = sub_20D975458();
      v40 = os_log_type_enabled(v38, v39);
      v41 = v0[28];
      v43 = v0[20];
      v42 = v0[21];
      v44 = v0[19];
      if (v40)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v63[0] = v46;
        *v45 = 136315138;
        *(v45 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D984740, v63);
        _os_log_impl(&dword_20D7C9000, v38, v39, "%s for a static snapshot makes no sense", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v46);
        MEMORY[0x20F324260](v46, -1, -1);
        MEMORY[0x20F324260](v45, -1, -1);
      }

      (*(v43 + 8))(v42, v44);
      sub_20D7E3944(v41, &qword_27C8389F8, &qword_20D978460);
      v30 = v0[35];
    }

    else
    {
      v31 = v0[35];
      v32 = v0[28];
      v34 = v0[20];
      v33 = v0[21];
      v35 = v0[19];
      v36 = v0[15];
      sub_20D84BADC(v0[30], type metadata accessor for GridForecastSnapshotType);
      swift_getKeyPath();
      v37 = swift_task_alloc();
      *(v37 + 16) = v36;
      *(v37 + 24) = 1;
      v0[12] = v36;
      sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
      sub_20D972848();

      (*(v34 + 8))(v33, v35);
      sub_20D7E3944(v32, &qword_27C8389F8, &qword_20D978460);

      v30 = v31;
    }
  }

  else
  {
    v28 = v0[35];
    v29 = v0[28];
    (*(v0[20] + 8))(v0[21], v0[19]);
    sub_20D7E3944(v29, &qword_27C8389F8, &qword_20D978460);
    v30 = v28;
  }

  sub_20D84BADC(v30, type metadata accessor for GridForecastSnapshot);
LABEL_18:
  v47 = v0[35];
  v48 = v0[32];
  v49 = v0[33];
  v51 = v0[30];
  v50 = v0[31];
  v53 = v0[27];
  v52 = v0[28];
  v55 = v0[25];
  v54 = v0[26];
  v56 = v0[24];
  v60 = v0[21];
  v62 = v0[18];

  v57 = v0[1];

  return v57();
}

uint64_t sub_20D848448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = sub_20D972698();
  v5[20] = v6;
  v7 = *(v6 - 8);
  v5[21] = v7;
  v8 = *(v7 + 64) + 15;
  v5[22] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v10 = type metadata accessor for GridForecastSnapshotType(0);
  v5[25] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v12 = type metadata accessor for GridForecastSnapshot(0);
  v5[29] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v5[30] = swift_task_alloc();
  sub_20D9752E8();
  v5[31] = sub_20D9752D8();
  v15 = sub_20D975298();
  v5[32] = v15;
  v5[33] = v14;

  return MEMORY[0x2822009F8](sub_20D8485F8, v15, v14);
}

uint64_t sub_20D8485F8()
{
  v52 = v0;
  v1 = v0[25];
  sub_20D84BC18(v0[18], v0[28], type metadata accessor for GridForecastSnapshotType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v9 = v0[30];
    v10 = v0[19];
    sub_20D84BADC(v0[28], type metadata accessor for GridForecastSnapshotType);
    swift_getKeyPath();
    v0[17] = v10;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
    sub_20D972858();

    v11 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
    swift_beginAccess();
    sub_20D84BC18(v10 + v11, v9, type metadata accessor for GridForecastSnapshot);
LABEL_5:
    v12 = v0[25];
    sub_20D84BC18(v0[30], v0[27], type metadata accessor for GridForecastSnapshotType);
    v13 = swift_getEnumCaseMultiPayload();
    v14 = v0[27];
    v15 = v0[24];
    if (v13 == 1)
    {

      v16 = *(v14 + 16);

      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
      sub_20D7E2A54(v14 + *(v17 + 64), v15);
    }

    else
    {
      (*(v0[21] + 56))(v0[24], 1, 1, v0[20]);
      sub_20D84BADC(v14, type metadata accessor for GridForecastSnapshotType);
    }

    v19 = v0[23];
    v18 = v0[24];
    v20 = v0[20];
    v21 = v0[21];
    v22 = (v0[30] + *(v0[29] + 24));
    v23 = *v22;
    v0[34] = *v22;
    v24 = v22[1];
    v0[35] = v24;
    sub_20D7EB7E8(v18, v19, &qword_27C8389F8, &qword_20D978460);
    v25 = (*(v21 + 48))(v19, 1, v20);
    v26 = v0[23];
    if (v25 == 1)
    {
      sub_20D7E3944(v0[23], &qword_27C8389F8, &qword_20D978460);
      sub_20D972AA8();
      v0[36] = sub_20D972A98();
      v27 = *(MEMORY[0x277D07578] + 4);
      v49 = (*MEMORY[0x277D07578] + MEMORY[0x277D07578]);
      v28 = swift_task_alloc();
      v0[37] = v28;
      *v28 = v0;
      v28[1] = sub_20D848CA4;

      return v49(v23, v24);
    }

    else
    {
      (*(v0[21] + 32))(v0[22], v0[23], v0[20]);
      sub_20D972AA8();
      v0[39] = sub_20D972A98();
      v30 = sub_20D972648();
      v32 = v31;
      v0[40] = v31;
      v33 = *(MEMORY[0x277D07570] + 4);
      v50 = (*MEMORY[0x277D07570] + MEMORY[0x277D07570]);
      v34 = swift_task_alloc();
      v0[41] = v34;
      *v34 = v0;
      v34[1] = sub_20D848DC8;

      return v50(v23, v24, v30, v32);
    }
  }

  if (EnumCaseMultiPayload == 1)
  {
    v3 = v0[30];
    v4 = v0[28];
    v5 = v0[19];

    v6 = *(v4 + 16);

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
    swift_getKeyPath();
    v0[14] = v5;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
    sub_20D972858();

    v8 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
    swift_beginAccess();
    sub_20D84BC18(v5 + v8, v3, type metadata accessor for GridForecastSnapshot);
    sub_20D7E3944(v4 + v7, &qword_27C8389F8, &qword_20D978460);
    goto LABEL_5;
  }

  v35 = v0[31];

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v36 = sub_20D9734F8();
  __swift_project_value_buffer(v36, qword_28112AC00);
  v37 = sub_20D9734D8();
  v38 = sub_20D975458();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v51 = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_20D7F4DC8(0xD00000000000002ALL, 0x800000020D984710, &v51);
    _os_log_impl(&dword_20D7C9000, v37, v38, "%s for a static snapshot makes no sense", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x20F324260](v40, -1, -1);
    MEMORY[0x20F324260](v39, -1, -1);
  }

  v41 = v0[30];
  v42 = v0[27];
  v43 = v0[28];
  v44 = v0[26];
  v46 = v0[23];
  v45 = v0[24];
  v47 = v0[22];

  v48 = v0[1];

  return v48();
}

uint64_t sub_20D848CA4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[8] = v2;
  v4[9] = a1;
  v4[10] = v1;
  v5 = v3[37];
  v11 = *v2;
  v4[38] = v1;

  if (v1)
  {
    v6 = v4[32];
    v7 = v4[33];
    v8 = sub_20D84A370;
  }

  else
  {
    v9 = v4[36];

    v6 = v4[32];
    v7 = v4[33];
    v8 = sub_20D8495FC;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_20D848DC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[11] = v2;
  v4[12] = a1;
  v4[13] = v1;
  v5 = v3[41];
  v6 = *v2;
  v4[42] = v1;

  v7 = v3[40];
  v8 = v3[39];

  v9 = v3[33];
  v10 = v3[32];
  if (v1)
  {
    v11 = sub_20D849C98;
  }

  else
  {
    v11 = sub_20D848F40;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_20D848F40()
{
  v53 = v0;
  v1 = v0[31];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];

  (*(v3 + 8))(v2, v4);
  v5 = v0[42];
  v6 = v0[12];
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v7 = v0[35];
  v8 = v0[19];
  v9 = sub_20D9734F8();
  __swift_project_value_buffer(v9, qword_28112AC00);

  v10 = sub_20D9734D8();
  v11 = sub_20D975478();

  if (os_log_type_enabled(v10, v11))
  {
    v51 = v9;
    v13 = v0[34];
    v12 = v0[35];
    v14 = v0[19];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v52[0] = v16;
    *v15 = 136315906;
    *(v15 + 4) = sub_20D7F4DC8(0xD00000000000002ALL, 0x800000020D984710, v52);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_20D7F4DC8(*(v14 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v14 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v52);
    *(v15 + 22) = 2080;
    *(v15 + 24) = sub_20D7F4DC8(v13, v12, v52);
    *(v15 + 32) = 2080;
    v17 = sub_20D972A38();
    v19 = sub_20D7F4DC8(v17, v18, v52);
    v9 = v51;

    *(v15 + 34) = v19;
    _os_log_impl(&dword_20D7C9000, v10, v11, "%s(%s): for %s status = %s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v16, -1, -1);
    MEMORY[0x20F324260](v15, -1, -1);
  }

  v20 = sub_20D972A48();
  if (v20 == sub_20D972A48())
  {
    v21 = v0[25];
    sub_20D84BC18(v0[18], v0[26], type metadata accessor for GridForecastSnapshotType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v23 = v0[30];
        v24 = v0[26];
        v25 = v0[24];
        v26 = v0[19];

        v27 = *(v24 + 16);

        v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
        swift_getKeyPath();
        v29 = swift_task_alloc();
        *(v29 + 16) = v26;
        *(v29 + 24) = 0;
        v0[15] = v26;
        sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
        sub_20D972848();

        sub_20D7E3944(v25, &qword_27C8389F8, &qword_20D978460);

        sub_20D84BADC(v23, type metadata accessor for GridForecastSnapshot);
        sub_20D7E3944(v24 + v28, &qword_27C8389F8, &qword_20D978460);
        goto LABEL_17;
      }

      if (qword_281127100 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v9, qword_28112AC00);
      v36 = sub_20D9734D8();
      v37 = sub_20D975458();
      v38 = os_log_type_enabled(v36, v37);
      v39 = v0[24];
      if (v38)
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v52[0] = v41;
        *v40 = 136315138;
        *(v40 + 4) = sub_20D7F4DC8(0xD00000000000002ALL, 0x800000020D984710, v52);
        _os_log_impl(&dword_20D7C9000, v36, v37, "%s for a static snapshot makes no sense", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x20F324260](v41, -1, -1);
        MEMORY[0x20F324260](v40, -1, -1);
      }

      sub_20D7E3944(v39, &qword_27C8389F8, &qword_20D978460);
      v31 = v0[30];
    }

    else
    {
      v32 = v0[30];
      v33 = v0[24];
      v34 = v0[19];
      sub_20D84BADC(v0[26], type metadata accessor for GridForecastSnapshotType);
      swift_getKeyPath();
      v35 = swift_task_alloc();
      *(v35 + 16) = v34;
      *(v35 + 24) = 0;
      v0[16] = v34;
      sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
      sub_20D972848();

      sub_20D7E3944(v33, &qword_27C8389F8, &qword_20D978460);

      v31 = v32;
    }
  }

  else
  {
    v30 = v0[30];
    sub_20D7E3944(v0[24], &qword_27C8389F8, &qword_20D978460);
    v31 = v30;
  }

  sub_20D84BADC(v31, type metadata accessor for GridForecastSnapshot);
LABEL_17:
  v42 = v0[30];
  v43 = v0[27];
  v44 = v0[28];
  v45 = v0[26];
  v47 = v0[23];
  v46 = v0[24];
  v48 = v0[22];

  v49 = v0[1];

  return v49();
}

uint64_t sub_20D8495FC()
{
  v50 = v0;
  v1 = v0[31];

  v2 = v0[38];
  v3 = v0[9];
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v4 = v0[35];
  v5 = v0[19];
  v6 = sub_20D9734F8();
  __swift_project_value_buffer(v6, qword_28112AC00);

  v7 = sub_20D9734D8();
  v8 = sub_20D975478();

  if (os_log_type_enabled(v7, v8))
  {
    v48 = v6;
    v10 = v0[34];
    v9 = v0[35];
    v11 = v0[19];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v49[0] = v13;
    *v12 = 136315906;
    *(v12 + 4) = sub_20D7F4DC8(0xD00000000000002ALL, 0x800000020D984710, v49);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_20D7F4DC8(*(v11 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v11 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v49);
    *(v12 + 22) = 2080;
    *(v12 + 24) = sub_20D7F4DC8(v10, v9, v49);
    *(v12 + 32) = 2080;
    v14 = sub_20D972A38();
    v16 = sub_20D7F4DC8(v14, v15, v49);
    v6 = v48;

    *(v12 + 34) = v16;
    _os_log_impl(&dword_20D7C9000, v7, v8, "%s(%s): for %s status = %s", v12, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v13, -1, -1);
    MEMORY[0x20F324260](v12, -1, -1);
  }

  v17 = sub_20D972A48();
  if (v17 == sub_20D972A48())
  {
    v18 = v0[25];
    sub_20D84BC18(v0[18], v0[26], type metadata accessor for GridForecastSnapshotType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v20 = v0[30];
        v21 = v0[26];
        v22 = v0[24];
        v23 = v0[19];

        v24 = *(v21 + 16);

        v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
        swift_getKeyPath();
        v26 = swift_task_alloc();
        *(v26 + 16) = v23;
        *(v26 + 24) = 0;
        v0[15] = v23;
        sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
        sub_20D972848();

        sub_20D7E3944(v22, &qword_27C8389F8, &qword_20D978460);

        sub_20D84BADC(v20, type metadata accessor for GridForecastSnapshot);
        sub_20D7E3944(v21 + v25, &qword_27C8389F8, &qword_20D978460);
        goto LABEL_17;
      }

      if (qword_281127100 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v6, qword_28112AC00);
      v33 = sub_20D9734D8();
      v34 = sub_20D975458();
      v35 = os_log_type_enabled(v33, v34);
      v36 = v0[24];
      if (v35)
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v49[0] = v38;
        *v37 = 136315138;
        *(v37 + 4) = sub_20D7F4DC8(0xD00000000000002ALL, 0x800000020D984710, v49);
        _os_log_impl(&dword_20D7C9000, v33, v34, "%s for a static snapshot makes no sense", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x20F324260](v38, -1, -1);
        MEMORY[0x20F324260](v37, -1, -1);
      }

      sub_20D7E3944(v36, &qword_27C8389F8, &qword_20D978460);
      v28 = v0[30];
    }

    else
    {
      v29 = v0[30];
      v30 = v0[24];
      v31 = v0[19];
      sub_20D84BADC(v0[26], type metadata accessor for GridForecastSnapshotType);
      swift_getKeyPath();
      v32 = swift_task_alloc();
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      v0[16] = v31;
      sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
      sub_20D972848();

      sub_20D7E3944(v30, &qword_27C8389F8, &qword_20D978460);

      v28 = v29;
    }
  }

  else
  {
    v27 = v0[30];
    sub_20D7E3944(v0[24], &qword_27C8389F8, &qword_20D978460);
    v28 = v27;
  }

  sub_20D84BADC(v28, type metadata accessor for GridForecastSnapshot);
LABEL_17:
  v39 = v0[30];
  v40 = v0[27];
  v41 = v0[28];
  v42 = v0[26];
  v44 = v0[23];
  v43 = v0[24];
  v45 = v0[22];

  v46 = v0[1];

  return v46();
}

uint64_t sub_20D849C98()
{
  v49 = v0;
  v1 = v0[31];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];

  (*(v3 + 8))(v2, v4);
  v5 = v0[42];
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v6 = v0[19];
  v7 = sub_20D9734F8();
  __swift_project_value_buffer(v7, qword_28112AC00);

  v8 = v5;
  v9 = sub_20D9734D8();
  v10 = sub_20D975458();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[19];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v48[0] = v14;
    *v12 = 136315650;
    *(v12 + 4) = sub_20D7F4DC8(0xD00000000000002ALL, 0x800000020D984710, v48);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_20D7F4DC8(*(v11 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v11 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v48);
    *(v12 + 22) = 2112;
    v15 = v5;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v16;
    *v13 = v16;
    _os_log_impl(&dword_20D7C9000, v9, v10, "%s(%s): error: %@", v12, 0x20u);
    sub_20D7E3944(v13, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v14, -1, -1);
    MEMORY[0x20F324260](v12, -1, -1);
  }

  else
  {
  }

  v17 = sub_20D972A48();
  if (v17 == sub_20D972A48())
  {
    v18 = v0[25];
    sub_20D84BC18(v0[18], v0[26], type metadata accessor for GridForecastSnapshotType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v20 = v0[30];
        v21 = v0[26];
        v22 = v0[24];
        v23 = v0[19];

        v24 = *(v21 + 16);

        v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
        swift_getKeyPath();
        v26 = swift_task_alloc();
        *(v26 + 16) = v23;
        *(v26 + 24) = 0;
        v0[15] = v23;
        sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
        sub_20D972848();

        sub_20D7E3944(v22, &qword_27C8389F8, &qword_20D978460);

        sub_20D84BADC(v20, type metadata accessor for GridForecastSnapshot);
        sub_20D7E3944(v21 + v25, &qword_27C8389F8, &qword_20D978460);
        goto LABEL_18;
      }

      if (qword_281127100 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v7, qword_28112AC00);
      v33 = sub_20D9734D8();
      v34 = sub_20D975458();
      v35 = os_log_type_enabled(v33, v34);
      v36 = v0[24];
      if (v35)
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v48[0] = v38;
        *v37 = 136315138;
        *(v37 + 4) = sub_20D7F4DC8(0xD00000000000002ALL, 0x800000020D984710, v48);
        _os_log_impl(&dword_20D7C9000, v33, v34, "%s for a static snapshot makes no sense", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x20F324260](v38, -1, -1);
        MEMORY[0x20F324260](v37, -1, -1);
      }

      sub_20D7E3944(v36, &qword_27C8389F8, &qword_20D978460);
      v28 = v0[30];
    }

    else
    {
      v29 = v0[30];
      v30 = v0[24];
      v31 = v0[19];
      sub_20D84BADC(v0[26], type metadata accessor for GridForecastSnapshotType);
      swift_getKeyPath();
      v32 = swift_task_alloc();
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      v0[16] = v31;
      sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
      sub_20D972848();

      sub_20D7E3944(v30, &qword_27C8389F8, &qword_20D978460);

      v28 = v29;
    }
  }

  else
  {
    v27 = v0[30];
    sub_20D7E3944(v0[24], &qword_27C8389F8, &qword_20D978460);
    v28 = v27;
  }

  sub_20D84BADC(v28, type metadata accessor for GridForecastSnapshot);
LABEL_18:
  v39 = v0[30];
  v40 = v0[27];
  v41 = v0[28];
  v42 = v0[26];
  v44 = v0[23];
  v43 = v0[24];
  v45 = v0[22];

  v46 = v0[1];

  return v46();
}

uint64_t sub_20D84A370()
{
  v47 = v0;
  v1 = v0[36];
  v2 = v0[31];

  v3 = v0[38];
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v4 = v0[19];
  v5 = sub_20D9734F8();
  __swift_project_value_buffer(v5, qword_28112AC00);

  v6 = v3;
  v7 = sub_20D9734D8();
  v8 = sub_20D975458();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v46[0] = v12;
    *v10 = 136315650;
    *(v10 + 4) = sub_20D7F4DC8(0xD00000000000002ALL, 0x800000020D984710, v46);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_20D7F4DC8(*(v9 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v9 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v46);
    *(v10 + 22) = 2112;
    v13 = v3;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v14;
    *v11 = v14;
    _os_log_impl(&dword_20D7C9000, v7, v8, "%s(%s): error: %@", v10, 0x20u);
    sub_20D7E3944(v11, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v12, -1, -1);
    MEMORY[0x20F324260](v10, -1, -1);
  }

  else
  {
  }

  v15 = sub_20D972A48();
  if (v15 == sub_20D972A48())
  {
    v16 = v0[25];
    sub_20D84BC18(v0[18], v0[26], type metadata accessor for GridForecastSnapshotType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v18 = v0[30];
        v19 = v0[26];
        v20 = v0[24];
        v21 = v0[19];

        v22 = *(v19 + 16);

        v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
        swift_getKeyPath();
        v24 = swift_task_alloc();
        *(v24 + 16) = v21;
        *(v24 + 24) = 0;
        v0[15] = v21;
        sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
        sub_20D972848();

        sub_20D7E3944(v20, &qword_27C8389F8, &qword_20D978460);

        sub_20D84BADC(v18, type metadata accessor for GridForecastSnapshot);
        sub_20D7E3944(v19 + v23, &qword_27C8389F8, &qword_20D978460);
        goto LABEL_18;
      }

      if (qword_281127100 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v5, qword_28112AC00);
      v31 = sub_20D9734D8();
      v32 = sub_20D975458();
      v33 = os_log_type_enabled(v31, v32);
      v34 = v0[24];
      if (v33)
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v46[0] = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_20D7F4DC8(0xD00000000000002ALL, 0x800000020D984710, v46);
        _os_log_impl(&dword_20D7C9000, v31, v32, "%s for a static snapshot makes no sense", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x20F324260](v36, -1, -1);
        MEMORY[0x20F324260](v35, -1, -1);
      }

      sub_20D7E3944(v34, &qword_27C8389F8, &qword_20D978460);
      v26 = v0[30];
    }

    else
    {
      v27 = v0[30];
      v28 = v0[24];
      v29 = v0[19];
      sub_20D84BADC(v0[26], type metadata accessor for GridForecastSnapshotType);
      swift_getKeyPath();
      v30 = swift_task_alloc();
      *(v30 + 16) = v29;
      *(v30 + 24) = 0;
      v0[16] = v29;
      sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
      sub_20D972848();

      sub_20D7E3944(v28, &qword_27C8389F8, &qword_20D978460);

      v26 = v27;
    }
  }

  else
  {
    v25 = v0[30];
    sub_20D7E3944(v0[24], &qword_27C8389F8, &qword_20D978460);
    v26 = v25;
  }

  sub_20D84BADC(v26, type metadata accessor for GridForecastSnapshot);
LABEL_18:
  v37 = v0[30];
  v38 = v0[27];
  v39 = v0[28];
  v40 = v0[26];
  v42 = v0[23];
  v41 = v0[24];
  v43 = v0[22];

  v44 = v0[1];

  return v44();
}

void sub_20D84AA34(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for GridForecastSnapshotType(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v39 - v11;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v13 = sub_20D9734F8();
  v14 = __swift_project_value_buffer(v13, qword_28112AC00);
  sub_20D84BC18(a1, v12, type metadata accessor for GridForecastSnapshotType);

  v15 = sub_20D9734D8();
  v16 = sub_20D975478();

  v17 = os_log_type_enabled(v15, v16);
  v41 = v3;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v39[1] = v14;
    v19 = v18;
    v20 = swift_slowAlloc();
    v40 = a1;
    v21 = v20;
    v42 = v20;
    *v19 = 136315906;
    *(v19 + 4) = sub_20D7F4DC8(0xD000000000000027, 0x800000020D984310, &v42);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_20D7F4DC8(*(v3 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v3 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v42);
    *(v19 + 22) = 2080;
    v22 = GridForecastSnapshotType.description.getter();
    v23 = a2;
    v25 = v24;
    sub_20D84BADC(v12, type metadata accessor for GridForecastSnapshotType);
    v26 = sub_20D7F4DC8(v22, v25, &v42);
    a2 = v23;

    *(v19 + 24) = v26;
    *(v19 + 32) = 1024;
    *(v19 + 34) = v23 & 1;
    _os_log_impl(&dword_20D7C9000, v15, v16, "%s(%s): %s notification snapshot to %{BOOL}d", v19, 0x26u);
    swift_arrayDestroy();
    v27 = v21;
    a1 = v40;
    MEMORY[0x20F324260](v27, -1, -1);
    MEMORY[0x20F324260](v19, -1, -1);
  }

  else
  {

    sub_20D84BADC(v12, type metadata accessor for GridForecastSnapshotType);
  }

  sub_20D84BC18(a1, v10, type metadata accessor for GridForecastSnapshotType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v29 = v41;
    if (EnumCaseMultiPayload == 1)
    {

      v30 = *(v10 + 2);

      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v39[-2] = v29;
      LOBYTE(v39[-1]) = a2 & 1;
      v42 = v29;
      sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
      sub_20D972848();

      sub_20D7E3944(&v10[v31], &qword_27C8389F8, &qword_20D978460);
    }

    else
    {
      v35 = sub_20D9734D8();
      v36 = sub_20D975458();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v42 = v38;
        *v37 = 136315138;
        *(v37 + 4) = sub_20D7F4DC8(0xD000000000000027, 0x800000020D984310, &v42);
        _os_log_impl(&dword_20D7C9000, v35, v36, "%s: makes no sense for static snapshot!", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x20F324260](v38, -1, -1);
        MEMORY[0x20F324260](v37, -1, -1);
      }
    }
  }

  else
  {
    sub_20D84BADC(v10, type metadata accessor for GridForecastSnapshotType);
    v33 = swift_getKeyPath();
    MEMORY[0x28223BE20](v33);
    v34 = v41;
    v39[-2] = v41;
    LOBYTE(v39[-1]) = a2 & 1;
    v42 = v34;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
    sub_20D972848();
  }
}

uint64_t sub_20D84B000(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20D84B0F8;

  return v7(a1);
}

uint64_t sub_20D84B0F8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20D84B1F0(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_20D84B2E4;

  return v6(v2 + 16);
}

uint64_t sub_20D84B2E4()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *v0;

  v5 = *(v1 + 24);
  *v3 = *(v1 + 16);
  *(v3 + 8) = v5;
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_20D84B418()
{
  v0 = sub_20D971DE8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20D972628();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v10 = sub_20D9734F8();
  __swift_project_value_buffer(v10, qword_28112AC00);
  v11 = sub_20D9734D8();
  v12 = sub_20D975478();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = v0;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26 = v1;
    v16 = v15;
    *&v28[0] = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_20D7F4DC8(0xD000000000000024, 0x800000020D9846C0, v28);
    *(v14 + 12) = 2080;
    sub_20D9725C8();
    sub_20D84DFEC(&qword_281127730, MEMORY[0x277CC9578]);
    v17 = sub_20D9757A8();
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    v20 = sub_20D7F4DC8(v17, v19, v28);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_20D7C9000, v11, v12, "%s Window state changed. Sending notification at %s for non-SwiftUI view updates", v14, 0x16u);
    swift_arrayDestroy();
    v21 = v16;
    v1 = v26;
    MEMORY[0x20F324260](v21, -1, -1);
    v22 = v14;
    v0 = v27;
    MEMORY[0x20F324260](v22, -1, -1);
  }

  sub_20D975078();
  memset(v28, 0, sizeof(v28));
  sub_20D971DC8();
  v23 = [objc_opt_self() defaultCenter];
  v24 = sub_20D971DA8();
  [v23 postNotification_];

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_20D84B7B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395F8, &qword_20D979400);
    v3 = sub_20D975658();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      sub_20D975888();
      MEMORY[0x20F323A50](v10);
      result = sub_20D9758A8();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_20D84B8EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839628, &qword_20D9794D0);
    v3 = sub_20D975658();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_20D975888();

      sub_20D975158();
      result = sub_20D9758A8();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_20D9757C8();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_20D84BADC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20D84BB44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_20D805810;

  return sub_20D84538C(a1, v4, v5, v6, v7, v9);
}

uint64_t sub_20D84BC18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D84BC80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D7EB52C;

  return sub_20D8318C8(a1, v4, v5, v6);
}

uint64_t sub_20D84BD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  sub_20D9752E8();
  v3[10] = sub_20D9752D8();
  v6 = sub_20D975298();
  v3[11] = v6;
  v3[12] = v5;

  return MEMORY[0x2822009F8](sub_20D84BE38, v6, v5);
}

uint64_t sub_20D84BE38()
{
  v41 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v3 = v0[3];
  v2 = v0[4];
  v4 = sub_20D9734F8();
  v0[13] = __swift_project_value_buffer(v4, qword_28112AC00);
  sub_20D7EB7E8(v2, v1, &qword_27C8389F8, &qword_20D978460);

  v5 = sub_20D9734D8();
  v6 = sub_20D975478();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[9];
  if (v7)
  {
    v9 = v0[8];
    v11 = v0[2];
    v10 = v0[3];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v40 = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_20D7F4DC8(0xD00000000000003ALL, 0x800000020D984520, &v40);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_20D7F4DC8(v11, v10, &v40);
    *(v12 + 22) = 2080;
    sub_20D7EB7E8(v8, v9, &qword_27C8389F8, &qword_20D978460);
    v14 = sub_20D972698();
    v15 = *(v14 - 8);
    v16 = (*(v15 + 48))(v9, 1, v14);
    v17 = v0[8];
    if (v16 == 1)
    {
      sub_20D7E3944(v0[8], &qword_27C8389F8, &qword_20D978460);
      v18 = 0xE500000000000000;
      v19 = 0x3E6C696E3CLL;
    }

    else
    {
      v20 = v0[8];
      v19 = MEMORY[0x20F320810]();
      v18 = v21;
      (*(v15 + 8))(v17, v14);
    }

    sub_20D7E3944(v0[9], &qword_27C8389F8, &qword_20D978460);
    v22 = sub_20D7F4DC8(v19, v18, &v40);

    *(v12 + 24) = v22;
    _os_log_impl(&dword_20D7C9000, v5, v6, "\t...%s: retrieving notifications for grid:%s/home:%s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v13, -1, -1);
    MEMORY[0x20F324260](v12, -1, -1);
  }

  else
  {

    sub_20D7E3944(v8, &qword_27C8389F8, &qword_20D978460);
  }

  v23 = v0[7];
  v24 = v0[4];
  sub_20D972AA8();
  v0[14] = sub_20D972A98();
  sub_20D7EB7E8(v24, v23, &qword_27C8389F8, &qword_20D978460);
  v25 = sub_20D972698();
  v0[15] = v25;
  v26 = *(v25 - 8);
  v0[16] = v26;
  v27 = *(v26 + 48);
  v0[17] = v27;
  v0[18] = (v26 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v28 = v27(v23, 1, v25);
  v29 = v0[7];
  if (v28 == 1)
  {
    sub_20D7E3944(v0[7], &qword_27C8389F8, &qword_20D978460);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v32 = v0[7];
    v30 = sub_20D972648();
    v31 = v33;
    (*(v26 + 8))(v29, v25);
  }

  v0[19] = v31;
  v34 = *(MEMORY[0x277D07560] + 4);
  v39 = (*MEMORY[0x277D07560] + MEMORY[0x277D07560]);
  v35 = swift_task_alloc();
  v0[20] = v35;
  *v35 = v0;
  v35[1] = sub_20D84C2B8;
  v37 = v0[2];
  v36 = v0[3];

  return v39(v37, v36, v30, v31);
}

uint64_t sub_20D84C2B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v11 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v5 = v3[11];
    v6 = v3[12];
    v7 = sub_20D84C760;
  }

  else
  {
    v8 = v3[19];
    v9 = v3[14];

    v5 = v3[11];
    v6 = v3[12];
    v7 = sub_20D84C3E0;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20D84C3E0()
{
  v40 = v0;
  v1 = v0[21];
  v2 = v0[10];

  v3 = sub_20D972A58();
  if (v3 == sub_20D972A58())
  {
    v4 = 1;
  }

  else
  {
    v5 = v0[21];
    v6 = sub_20D972A58();
    v4 = v6 == sub_20D972A58();
  }

  v7 = v0[13];
  v8 = v0[3];
  sub_20D7EB7E8(v0[4], v0[6], &qword_27C8389F8, &qword_20D978460);

  v9 = sub_20D9734D8();
  v10 = sub_20D975478();

  if (os_log_type_enabled(v9, v10))
  {
    v35 = v0[17];
    v36 = v0[18];
    v11 = v0[5];
    v33 = v0[6];
    v34 = v0[15];
    v12 = v0[2];
    v13 = v0[3];
    v14 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v14 = 136315906;
    *(v14 + 4) = sub_20D7F4DC8(0xD00000000000003ALL, 0x800000020D984520, &v39);
    *(v14 + 12) = 2080;
    v38 = v4;
    if (v4)
    {
      v15 = 4543041;
    }

    else
    {
      v15 = 0x544F4E20657261;
    }

    if (v4)
    {
      v16 = 0xE300000000000000;
    }

    else
    {
      v16 = 0xE700000000000000;
    }

    v17 = sub_20D7F4DC8(v15, v16, &v39);

    *(v14 + 14) = v17;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_20D7F4DC8(v12, v13, &v39);
    *(v14 + 32) = 2080;
    sub_20D7EB7E8(v33, v11, &qword_27C8389F8, &qword_20D978460);
    if (v35(v11, 1, v34) == 1)
    {
      sub_20D7E3944(v0[5], &qword_27C8389F8, &qword_20D978460);
      v18 = 0xE500000000000000;
      v19 = 0x3E6C696E3CLL;
    }

    else
    {
      v22 = v0[15];
      v21 = v0[16];
      v23 = v0[5];
      v19 = MEMORY[0x20F320810]();
      v18 = v24;
      (*(v21 + 8))(v23, v22);
    }

    sub_20D7E3944(v0[6], &qword_27C8389F8, &qword_20D978460);
    v25 = sub_20D7F4DC8(v19, v18, &v39);

    *(v14 + 34) = v25;
    _os_log_impl(&dword_20D7C9000, v9, v10, "\t...%s: notifications %s enabled for grid:%s/home:%s", v14, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v37, -1, -1);
    MEMORY[0x20F324260](v14, -1, -1);

    v4 = v38;
  }

  else
  {
    v20 = v0[6];

    sub_20D7E3944(v20, &qword_27C8389F8, &qword_20D978460);
  }

  v27 = v0[8];
  v26 = v0[9];
  v29 = v0[6];
  v28 = v0[7];
  v30 = v0[5];

  v31 = v0[1];

  return v31(v4);
}

uint64_t sub_20D84C760()
{
  v25 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[10];

  v6 = v1;
  v7 = sub_20D9734D8();
  v8 = sub_20D975458();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[22];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_20D7F4DC8(0xD00000000000003ALL, 0x800000020D984520, &v24);
    *(v10 + 12) = 2112;
    v13 = v9;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_20D7C9000, v7, v8, "%s: retrieved notification status failed with error: %@", v10, 0x16u);
    sub_20D7E3944(v11, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x20F324260](v12, -1, -1);
    MEMORY[0x20F324260](v10, -1, -1);
  }

  v15 = v0[22];
  v17 = v0[8];
  v16 = v0[9];
  v19 = v0[6];
  v18 = v0[7];
  v20 = v0[5];
  sub_20D84D14C();
  swift_allocError();
  *v21 = 8;
  swift_willThrow();

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_20D84C9A4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D805810;

  return sub_20D844318(a1);
}

unint64_t sub_20D84CA54()
{
  result = qword_27C8395D8;
  if (!qword_27C8395D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8395D8);
  }

  return result;
}

uint64_t sub_20D84CAB0()
{
  result = type metadata accessor for GridForecastSnapshot(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_20D972898();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_20D84CE2C(uint64_t a1)
{
  v2 = sub_20D9727B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395E0, &qword_20D9793F8);
    v10 = sub_20D975658();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_20D84DFEC(&qword_27C8395E8, MEMORY[0x277CC99D0]);
      v18 = sub_20D974F78();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_20D84DFEC(&qword_27C8395F0, MEMORY[0x277CC99D0]);
          v25 = sub_20D974FD8();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_20D84D14C()
{
  result = qword_2811269E8;
  if (!qword_2811269E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811269E8);
  }

  return result;
}

unint64_t sub_20D84D1B8()
{
  result = qword_281124BC0;
  if (!qword_281124BC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281124BC0);
  }

  return result;
}

uint64_t sub_20D84D204(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D805810;

  return sub_20D84B1F0(a1, v5);
}

uint64_t sub_20D84D2BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D7EB52C;

  return sub_20D84B1F0(a1, v5);
}

uint64_t sub_20D84D374(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t block_copy_helper_117(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20D84D444(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D805810;

  return sub_20D8433F4(a1, v4, v5, v7, v6);
}

uint64_t sub_20D84D504(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D805810;

  return sub_20D842768(a1, v4, v5, v6);
}

uint64_t sub_20D84D5B8()
{
  sub_20D9752E8();
  v0[2] = sub_20D9752D8();
  v2 = sub_20D975298();
  v0[3] = v2;
  v0[4] = v1;

  return MEMORY[0x2822009F8](sub_20D84D64C, v2, v1);
}

uint64_t sub_20D84D64C()
{
  v11 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  v0[5] = __swift_project_value_buffer(v1, qword_28112AC00);
  v2 = sub_20D9734D8();
  v3 = sub_20D975478();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D9845E0, &v10);
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s: calling getCurrentLocation on daemon", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  sub_20D972AA8();
  v0[6] = sub_20D972A98();
  v6 = *(MEMORY[0x277D07588] + 4);
  v9 = (*MEMORY[0x277D07588] + MEMORY[0x277D07588]);
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_20D84D824;

  return v9();
}

uint64_t sub_20D84D824(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v10 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = v3[3];
    v6 = v3[4];
    v7 = sub_20D84DBF8;
  }

  else
  {
    v8 = v3[6];

    v5 = v3[3];
    v6 = v3[4];
    v7 = sub_20D84D940;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20D84D940()
{
  v26 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);

  v4 = v1;
  v5 = sub_20D9734D8();
  v6 = sub_20D975478();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 64);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D9845E0, &v25);
    *(v8 + 12) = 2080;
    v10 = sub_20D972F48();
    v12 = sub_20D7F4DC8(v10, v11, &v25);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s: received %s from daemon...", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  v13 = *(v0 + 40);
  v14 = *(v0 + 64);
  v15 = sub_20D9734D8();
  v16 = sub_20D975448();

  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 64);
  if (v17)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v19 = 136315394;
    *(v19 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D9845E0, &v25);
    *(v19 + 12) = 2112;
    *(v19 + 14) = v18;
    *v20 = v18;
    v22 = v18;
    _os_log_impl(&dword_20D7C9000, v15, v16, "\t...%s: loc: %@", v19, 0x16u);
    sub_20D7E3944(v20, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x20F324260](v21, -1, -1);
    MEMORY[0x20F324260](v19, -1, -1);
  }

  v23 = *(v0 + 8);

  return v23(v18);
}

uint64_t sub_20D84DBF8()
{
  v18 = v0;
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];

  v5 = v1;
  v6 = sub_20D9734D8();
  v7 = sub_20D975458();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[9];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D9845E0, &v17);
    *(v10 + 12) = 2112;
    v13 = v9;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_20D7C9000, v6, v7, "%s: ERROR getCurrentLocation failed: %@", v10, 0x16u);
    sub_20D7E3944(v11, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x20F324260](v12, -1, -1);
    MEMORY[0x20F324260](v10, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15(0);
}

uint64_t sub_20D84DDCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D805810;

  return sub_20D83D72C(a1, v4, v5, v6);
}

uint64_t sub_20D84DE80(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D805810;

  return sub_20D84B000(a1, v5);
}

uint64_t sub_20D84DF38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D805810;

  return sub_20D834120(a1, v4, v5, v6);
}

uint64_t sub_20D84DFEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D84E034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridForecastSnapshot(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D84E098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D84E100(uint64_t a1)
{
  v4 = *(type metadata accessor for GridForecastSnapshotType(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20D805810;

  return sub_20D846470(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_20D84E220(uint64_t a1)
{
  v4 = *(type metadata accessor for GridForecastSnapshotType(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20D805810;

  return sub_20D848448(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_20D84E340()
{
  result = qword_281126EE0;
  if (!qword_281126EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126EE0);
  }

  return result;
}

uint64_t sub_20D84E394(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

uint64_t objectdestroy_170Tm()
{
  v1 = *(type metadata accessor for GridForecastSnapshotType(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    v8 = *(v6 + 16);

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
    v10 = sub_20D972698();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v6 + v9, 1, v10))
    {
      (*(v11 + 8))(v6 + v9, v10);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + v12);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v2 | 7);
}

uint64_t ElectricUtility.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ElectricUtility.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ElectricUtility.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ElectricUtility.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ElectricUtility.longName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ElectricUtility.longName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void *ElectricUtility.logo.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t ElectricUtility.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ElectricUtility() + 32);

  return sub_20D84EA2C(v3, a1);
}

uint64_t type metadata accessor for ElectricUtility()
{
  result = qword_27C839630;
  if (!qword_27C839630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20D84EA2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B78, &qword_20D97A5A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ElectricUtility.url.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ElectricUtility() + 32);

  return sub_20D84EAE0(a1, v3);
}

uint64_t sub_20D84EAE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B78, &qword_20D97A5A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ElectricUtility.config.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ElectricUtility() + 36);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  v8 = v4;
}

__n128 ElectricUtility.config.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = v1 + *(type metadata accessor for ElectricUtility() + 36);
  v7 = *v5;
  v6 = *(v5 + 8);
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);

  *v5 = v3;
  result = *(a1 + 1);
  *(v5 + 8) = result;
  *(v5 + 24) = v4;
  return result;
}

uint64_t sub_20D84ECDC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void sub_20D84ED10()
{
  sub_20D84EE38(319, &qword_27C839640, sub_20D84EDEC);
  if (v0 <= 0x3F)
  {
    sub_20D84EE38(319, &qword_27C839650, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_20D84EDEC()
{
  result = qword_27C839648;
  if (!qword_27C839648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C839648);
  }

  return result;
}

void sub_20D84EE38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20D975508();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20D84EE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839668, &unk_20D9795F8);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = -1 << *(a1 + 32);
  v9 = sub_20D9755E8();
  if (v9 == 1 << *(a1 + 32))
  {
    v10 = *(v14 + 56);

    return v10(a2, 1, 1, v4);
  }

  else
  {
    v12 = sub_20D854C90(v7, v9, *(a1 + 36), 0, a1);
    sub_20D855DE8(v7, a2, type metadata accessor for HistoricalUsageWidgetCommon.Home);
    *(a2 + *(v4 + 48)) = v12;
    return (*(v14 + 56))(a2, 0, 1, v4);
  }
}

uint64_t HistoricalUsageWidgetCommon.Home.description.getter()
{
  v1 = type metadata accessor for HistoricalUsageWidgetCommon.Home(0);
  MEMORY[0x20F323340](*(v0 + *(v1 + 20)), *(v0 + *(v1 + 20) + 8));
  MEMORY[0x20F323340](44, 0xE100000000000000);
  sub_20D972698();
  sub_20D84F314(&qword_27C839658, MEMORY[0x277CC95F0]);
  v2 = sub_20D9757A8();
  MEMORY[0x20F323340](v2);

  MEMORY[0x20F323340](41, 0xE100000000000000);
  return 40;
}

uint64_t HistoricalUsageWidgetCommon.Home.name.getter()
{
  v1 = (v0 + *(type metadata accessor for HistoricalUsageWidgetCommon.Home(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t HistoricalUsageWidgetCommon.Home.init(id:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_20D972698();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for HistoricalUsageWidgetCommon.Home(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t static HistoricalUsageWidgetCommon.Home.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_20D972668() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for HistoricalUsageWidgetCommon.Home(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_20D9757C8();
}

uint64_t HistoricalUsageWidgetCommon.Home.hash(into:)()
{
  sub_20D972698();
  sub_20D84F314(&unk_281127720, MEMORY[0x277CC95F0]);
  sub_20D974F88();
  v1 = (v0 + *(type metadata accessor for HistoricalUsageWidgetCommon.Home(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return sub_20D975158();
}

uint64_t sub_20D84F314(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HistoricalUsageWidgetCommon.Home.hashValue.getter()
{
  sub_20D975888();
  sub_20D972698();
  sub_20D84F314(&unk_281127720, MEMORY[0x277CC95F0]);
  sub_20D974F88();
  v1 = (v0 + *(type metadata accessor for HistoricalUsageWidgetCommon.Home(0) + 20));
  v2 = *v1;
  v3 = v1[1];
  sub_20D975158();
  return sub_20D9758A8();
}

uint64_t sub_20D84F400(uint64_t a1)
{
  sub_20D975888();
  sub_20D972698();
  sub_20D84F314(&unk_281127720, MEMORY[0x277CC95F0]);
  sub_20D974F88();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_20D975158();
  return sub_20D9758A8();
}

uint64_t sub_20D84F4A8(uint64_t a1, uint64_t a2)
{
  sub_20D972698();
  sub_20D84F314(&unk_281127720, MEMORY[0x277CC95F0]);
  sub_20D974F88();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];

  return sub_20D975158();
}

uint64_t sub_20D84F544(uint64_t a1, uint64_t a2)
{
  sub_20D975888();
  sub_20D972698();
  sub_20D84F314(&unk_281127720, MEMORY[0x277CC95F0]);
  sub_20D974F88();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_20D975158();
  return sub_20D9758A8();
}

uint64_t sub_20D84F5E8(uint64_t a1)
{
  MEMORY[0x20F323340](*(v1 + *(a1 + 20)), *(v1 + *(a1 + 20) + 8));
  MEMORY[0x20F323340](44, 0xE100000000000000);
  sub_20D972698();
  sub_20D84F314(&qword_27C839658, MEMORY[0x277CC95F0]);
  v2 = sub_20D9757A8();
  MEMORY[0x20F323340](v2);

  MEMORY[0x20F323340](41, 0xE100000000000000);
  return 40;
}

uint64_t sub_20D84F6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_20D972668() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_20D9757C8();
}

uint64_t static HistoricalUsageWidgetCommon.placeholder()@<X0>(uint64_t a1@<X8>)
{
  if (qword_281125098 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_2811250A0);
  v3 = sub_20D9734D8();
  v4 = sub_20D975478();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_20D7F4DC8(0x6C6F686563616C70, 0xED00002928726564, &v12);
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s Generating placeholder with mock data.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x20F324260](v6, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  if (qword_27C838600 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for HistoricalUsageSnapshot();
  v8 = __swift_project_value_buffer(v7, qword_27C83A1D8);
  sub_20D9725C8();
  v9 = type metadata accessor for HistoricalUsageEntryCommon(0);
  result = sub_20D855EB0(v8, a1 + v9[5], type metadata accessor for HistoricalUsageSnapshot);
  *(a1 + v9[6]) = 0;
  v11 = (a1 + v9[7]);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t HistoricalUsageEntryCommon.init(date:usageSnapshot:shouldBlockout:displaySize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = sub_20D972628();
  (*(*(v12 - 8) + 32))(a4, a1, v12);
  v13 = type metadata accessor for HistoricalUsageEntryCommon(0);
  result = sub_20D855DE8(a2, a4 + v13[5], type metadata accessor for HistoricalUsageSnapshot);
  *(a4 + v13[6]) = a3;
  v15 = (a4 + v13[7]);
  *v15 = a5;
  v15[1] = a6;
  return result;
}

uint64_t static HistoricalUsageWidgetCommon.snapshot()(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_20D972628();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_20D971EA8();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v11 = sub_20D9726F8();
  v1[12] = v11;
  v12 = *(v11 - 8);
  v1[13] = v12;
  v13 = *(v12 + 64) + 15;
  v1[14] = swift_task_alloc();
  v14 = sub_20D9727D8();
  v1[15] = v14;
  v15 = *(v14 - 8);
  v1[16] = v15;
  v16 = *(v15 + 64) + 15;
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D84FC68, 0, 0);
}

uint64_t sub_20D84FC68()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[5];
  v34 = v0[4];
  v31 = v0[11];
  v33 = v0[3];
  (*(v5 + 104))(v4, *MEMORY[0x277CC9830], v6);
  sub_20D972708();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 16))(v7, v1, v3);
  (*(v2 + 56))(v7, 0, 1, v3);
  v10 = sub_20D972838();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_20D971E98();
  sub_20D972748();
  result = (*(v9 + 48))(v33, 1, v34);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v18 = v0[16];
    v17 = v0[17];
    v29 = v0[15];
    v30 = v0[14];
    v20 = v0[10];
    v19 = v0[11];
    v35 = v0[7];
    v27 = v0[6];
    v28 = v0[9];
    v21 = v0[4];
    v22 = v0[2];
    v32 = v0[8];
    v23 = *(v0[5] + 32);
    (v23)(v27, v0[3], v21, v12, v13, v14, v15, v16, 17, 0, 3, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1);
    v24 = type metadata accessor for HistoricalUsageEntryCommon(0);
    static HistoricalUsageSnapshot.staticMock_WidgetPlaceholderData_8dFrom06102024_Import_Week_Snapshot(with:)(v17, v22 + v24[5]);
    (*(v20 + 8))(v19, v28);
    (*(v18 + 8))(v17, v29);
    v23(v22, v27, v21);
    *(v22 + v24[6]) = 0;
    v25 = (v22 + v24[7]);
    *v25 = 0;
    v25[1] = 0;

    v26 = v0[1];

    return v26();
  }

  return result;
}

uint64_t HistoricalUsageEntryCommon.init(date:usageSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_20D972628();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = type metadata accessor for HistoricalUsageEntryCommon(0);
  result = sub_20D855DE8(a2, a3 + v7[5], type metadata accessor for HistoricalUsageSnapshot);
  *(a3 + v7[6]) = 0;
  v9 = (a3 + v7[7]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t static HistoricalUsageWidgetCommon.snapshot(showUpgradeRequired:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v45 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v40 - v4;
  v46 = sub_20D972628();
  v5 = *(v46 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v46);
  v43 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v40 - v14;
  v16 = sub_20D971EA8();
  v41 = *(v16 - 8);
  v42 = v16;
  v17 = *(v41 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20D9726F8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20D9727D8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v40 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v24, *MEMORY[0x277CC9830], v20);
  sub_20D972708();
  v30 = v20;
  v31 = v46;
  (*(v21 + 8))(v24, v30);
  (*(v26 + 16))(v15, v29, v25);
  (*(v26 + 56))(v15, 0, 1, v25);
  v32 = sub_20D972838();
  (*(*(v32 - 8) + 56))(v11, 1, 1, v32);
  v33 = v47;
  sub_20D971E98();
  sub_20D972748();
  result = (*(v5 + 48))(v33, 1, v31);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v35 = *(v5 + 32);
    v36 = v43;
    v35(v43, v33, v31);
    v37 = type metadata accessor for HistoricalUsageEntryCommon(0);
    v38 = v45;
    static HistoricalUsageSnapshot.staticMock_WidgetPlaceholderData_8dFrom06102024_Import_Week_Snapshot(with:)(v29, v45 + v37[5]);
    (*(v41 + 8))(v19, v42);
    (*(v26 + 8))(v29, v25);
    result = (v35)(v38, v36, v31);
    *(v38 + v37[6]) = v44 & 1;
    v39 = (v38 + v37[7]);
    *v39 = 0;
    v39[1] = 0;
  }

  return result;
}

uint64_t static HistoricalUsageWidgetCommon.timeline(siteDetailIdentifier:homes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = type metadata accessor for HistoricalUsageEntryCommon(0);
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v8 = sub_20D9727D8();
  v4[18] = v8;
  v9 = *(v8 - 8);
  v4[19] = v9;
  v10 = *(v9 + 64) + 15;
  v4[20] = swift_task_alloc();
  v11 = sub_20D972628();
  v4[21] = v11;
  v12 = *(v11 - 8);
  v4[22] = v12;
  v13 = *(v12 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v14 = type metadata accessor for HistoricalUsageSnapshot();
  v4[27] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839660, &qword_20D97A510) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D8507D0, 0, 0);
}

uint64_t sub_20D8507D0()
{
  v23 = v0;
  if (qword_281125098 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = sub_20D9734F8();
  v0[31] = __swift_project_value_buffer(v3, qword_2811250A0);

  v4 = sub_20D9734D8();
  v5 = sub_20D975478();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[10];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, &v22);
    *(v9 + 12) = 2080;
    v11 = v7 == 0;
    if (v7)
    {
      v12 = v8;
    }

    else
    {
      v12 = 0x3E6C696E3CLL;
    }

    if (v11)
    {
      v13 = 0xE500000000000000;
    }

    else
    {
      v13 = v2;
    }

    v14 = sub_20D7F4DC8(v12, v13, &v22);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2080;
    v15 = type metadata accessor for HistoricalUsageWidgetCommon.Home(0);
    v16 = MEMORY[0x20F323400](v6, v15);
    v18 = sub_20D7F4DC8(v16, v17, &v22);

    *(v9 + 24) = v18;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s: with siteID: %s & homes: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v10, -1, -1);
    MEMORY[0x20F324260](v9, -1, -1);
  }

  v19 = swift_task_alloc();
  v0[32] = v19;
  *v19 = v0;
  v19[1] = sub_20D850A64;
  v20 = v0[12];

  return sub_20D854D5C(v20);
}

uint64_t sub_20D850A64(uint64_t a1)
{
  v2 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = a1;

  return MEMORY[0x2822009F8](sub_20D850B64, 0, 0);
}

uint64_t sub_20D850B64()
{
  v70 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  if (*(v0 + 88))
  {

    v3 = sub_20D9734D8();
    v4 = sub_20D975458();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 80);
      v5 = *(v0 + 88);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v69[0] = v8;
      *v7 = 136315394;
      *(v7 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, v69);
      *(v7 + 12) = 2080;
      *(v0 + 40) = v6;
      *(v0 + 48) = v5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA30, &qword_20D976870);
      v9 = sub_20D975118();
      v11 = sub_20D7F4DC8(v9, v10, v69);

      *(v7 + 14) = v11;
      _os_log_impl(&dword_20D7C9000, v3, v4, "%s SiteDetail provided with non-nil siteID: %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v8, -1, -1);
      MEMORY[0x20F324260](v7, -1, -1);
    }

    v12 = *(v0 + 80);
    v13 = *(v0 + 88);
    goto LABEL_19;
  }

  v14 = sub_20D9734D8();
  v15 = sub_20D975458();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 264);
  if (v16)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v69[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, v69);
    *(v18 + 12) = 2048;
    *(v18 + 14) = *(v17 + 16);

    _os_log_impl(&dword_20D7C9000, v14, v15, "%s No SiteDetail provided. ***Attempting Fallback to first onboarded home (of %ld available)***", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x20F324260](v19, -1, -1);
    MEMORY[0x20F324260](v18, -1, -1);
  }

  else
  {
    v20 = *(v0 + 264);
  }

  v21 = *(v0 + 240);
  sub_20D84EE8C(*(v0 + 264), v21);

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839668, &unk_20D9795F8);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22) != 1)
  {
    v59 = *(v0 + 240);
    v60 = *(v59 + *(v22 + 48));
    v12 = sub_20D972C68();
    v13 = v61;

    sub_20D855E50(v59, type metadata accessor for HistoricalUsageWidgetCommon.Home);
    v62 = *(v0 + 88);
LABEL_19:
    v63 = type metadata accessor for HistoricalUsageSnapshotManager();
    v64 = *(v63 + 48);
    v65 = *(v63 + 52);
    swift_allocObject();

    v66 = swift_task_alloc();
    *(v0 + 272) = v66;
    *v66 = v0;
    v66[1] = sub_20D851304;

    return HistoricalUsageSnapshotManager.init(siteID:)(v12, v13);
  }

  v23 = *(v0 + 248);
  sub_20D7E3944(*(v0 + 240), &qword_27C839660, &qword_20D97A510);
  v24 = sub_20D9734D8();
  v25 = sub_20D975458();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v69[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, v69);
    _os_log_impl(&dword_20D7C9000, v24, v25, "%s: Widget configuration has no entity (no home)", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x20F324260](v27, -1, -1);
    MEMORY[0x20F324260](v26, -1, -1);
  }

  sub_20D855D94();
  v28 = swift_allocError();
  *v29 = 0;
  swift_willThrow();
  v30 = *(v0 + 248);
  v31 = v28;
  v32 = sub_20D9734D8();
  v33 = sub_20D975458();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v69[0] = v36;
    *v34 = 136315394;
    *(v34 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, v69);
    *(v34 + 12) = 2112;
    v37 = v28;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 14) = v38;
    *v35 = v38;
    _os_log_impl(&dword_20D7C9000, v32, v33, "%s:ERROR: %@", v34, 0x16u);
    sub_20D7E3944(v35, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v35, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x20F324260](v36, -1, -1);
    MEMORY[0x20F324260](v34, -1, -1);
  }

  v40 = *(v0 + 112);
  v39 = *(v0 + 120);
  v41 = *(v0 + 72);
  *(v0 + 56) = v28;
  v42 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  v43 = swift_dynamicCast();
  v44 = *(v0 + 288);
  if (!v43)
  {
    v44 = 5;
  }

  LOBYTE(v69[0]) = v44;
  sub_20D852054(v39, v41, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839678, &qword_20D979608);
  v45 = *(v40 + 72);
  v46 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_20D979110;
  sub_20D855DE8(v39, v47 + v46, type metadata accessor for HistoricalUsageEntryCommon);

  v49 = *(v0 + 232);
  v48 = *(v0 + 240);
  v50 = *(v0 + 224);
  v52 = *(v0 + 200);
  v51 = *(v0 + 208);
  v54 = *(v0 + 184);
  v53 = *(v0 + 192);
  v55 = *(v0 + 160);
  v56 = *(v0 + 136);
  v67 = *(v0 + 128);
  v68 = *(v0 + 120);

  v57 = *(v0 + 8);

  return v57(v47);
}

uint64_t sub_20D851304(uint64_t a1)
{
  v2 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = a1;

  return MEMORY[0x2822009F8](sub_20D851404, 0, 0);
}

uint64_t sub_20D851404()
{
  v121 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  swift_getKeyPath();
  *(v0 + 64) = v1;
  sub_20D84F314(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  v5 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__summaryWeeklySnapshot;
  swift_beginAccess();
  sub_20D855EB0(v1 + v5, v3, type metadata accessor for HistoricalUsageSnapshot);

  sub_20D855EB0(v3, v4, type metadata accessor for HistoricalUsageSnapshot);
  v6 = sub_20D9734D8();
  v7 = sub_20D975478();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 224);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v119 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, &v119);
    *(v10 + 12) = 2080;
    v12 = HistoricalUsageSnapshot.description.getter();
    v14 = v13;
    sub_20D855E50(v9, type metadata accessor for HistoricalUsageSnapshot);
    v15 = sub_20D7F4DC8(v12, v14, &v119);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_20D7C9000, v6, v7, "%s: Retrieved week snapshot for widget %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v11, -1, -1);
    MEMORY[0x20F324260](v10, -1, -1);
  }

  else
  {

    sub_20D855E50(v9, type metadata accessor for HistoricalUsageSnapshot);
  }

  v16 = *(v0 + 232);
  v17 = *(v16 + *(*(v0 + 216) + 64));
  v18 = *(v0 + 248);
  if (v17 == 6)
  {
    v20 = *(v0 + 200);
    v19 = *(v0 + 208);
    v111 = *(v0 + 192);
    v113 = *(v0 + 184);
    v21 = *(v0 + 176);
    v22 = *(v0 + 152);
    v23 = *(v0 + 160);
    v25 = *(v0 + 136);
    v24 = *(v0 + 144);
    v107 = *(v0 + 168);
    log = *(v0 + 128);
    v26 = *(v0 + 104);
    sub_20D9725C8();
    sub_20D972778();
    sub_20D973108();
    (*(v22 + 8))(v23, v24);
    v27 = *(v21 + 16);
    v27(v25, v19, v107);
    v28 = v16;
    v29 = v26;
    sub_20D855EB0(v28, v25 + v26[5], type metadata accessor for HistoricalUsageSnapshot);
    *(v25 + v26[6]) = 0;
    v30 = (v25 + v26[7]);
    *v30 = 0;
    v30[1] = 0;
    sub_20D855EB0(v25, log, type metadata accessor for HistoricalUsageEntryCommon);
    v27(v111, v19, v107);
    v27(v113, v20, v107);
    v31 = sub_20D9734D8();
    v116 = sub_20D975478();
    v32 = os_log_type_enabled(v31, v116);
    v33 = *(v0 + 184);
    v34 = *(v0 + 192);
    v35 = *(v0 + 168);
    v36 = *(v0 + 176);
    v37 = *(v0 + 128);
    if (v32)
    {
      v38 = *(v0 + 192);
      v39 = *(v0 + 120);
      v112 = *(v0 + 184);
      v40 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v118 = v114;
      *v40 = 136315906;
      *(v40 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, &v118);
      *(v40 + 12) = 2080;
      sub_20D855EB0(v37, v39, type metadata accessor for HistoricalUsageEntryCommon);
      v119 = 0;
      v120 = 0xE000000000000000;
      loga = v31;
      sub_20D975678();
      MEMORY[0x20F323340](0xD000000000000022, 0x800000020D9848C0);
      v41 = sub_20D9725F8();
      v108 = v35;
      MEMORY[0x20F323340](v41);

      MEMORY[0x20F323340](0xD000000000000012, 0x800000020D9848F0);
      v42 = v39 + v29[5];
      v43 = HistoricalUsageSnapshot.description.getter();
      MEMORY[0x20F323340](v43);

      v44 = v119;
      v45 = v120;
      sub_20D855E50(v39, type metadata accessor for HistoricalUsageEntryCommon);
      sub_20D855E50(v37, type metadata accessor for HistoricalUsageEntryCommon);
      v46 = sub_20D7F4DC8(v44, v45, &v118);

      *(v40 + 14) = v46;
      *(v40 + 22) = 2080;
      v47 = v38;
      v48 = sub_20D9725F8();
      v50 = v49;
      v51 = *(v36 + 8);
      v51(v47, v108);
      v52 = sub_20D7F4DC8(v48, v50, &v118);

      *(v40 + 24) = v52;
      *(v40 + 32) = 2080;
      v53 = sub_20D9725F8();
      v55 = v54;
      v51(v112, v108);
      v56 = sub_20D7F4DC8(v53, v55, &v118);

      *(v40 + 34) = v56;
      _os_log_impl(&dword_20D7C9000, loga, v116, "%s Entry:%s created for %s, until %s", v40, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v114, -1, -1);
      MEMORY[0x20F324260](v40, -1, -1);
    }

    else
    {

      v51 = *(v36 + 8);
      v51(v33, v35);
      v51(v34, v35);
      sub_20D855E50(v37, type metadata accessor for HistoricalUsageEntryCommon);
    }

    v85 = *(v0 + 232);
    v87 = *(v0 + 200);
    v86 = *(v0 + 208);
    v88 = *(v0 + 168);
    v89 = *(v0 + 136);
    v90 = *(v0 + 112);
    v91 = *(v0 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839678, &qword_20D979608);
    v92 = *(v90 + 72);
    v93 = (*(v90 + 80) + 32) & ~*(v90 + 80);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_20D979110;
    v117 = v94;
    sub_20D855EB0(v89, v94 + v93, type metadata accessor for HistoricalUsageEntryCommon);
    sub_20D974EB8();
    sub_20D855E50(v89, type metadata accessor for HistoricalUsageEntryCommon);
    v51(v87, v88);
    v51(v86, v88);
    sub_20D855E50(v85, type metadata accessor for HistoricalUsageSnapshot);
  }

  else
  {
    v57 = sub_20D9734D8();
    v58 = sub_20D975478();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v119 = v61;
      *v59 = 136315394;
      *(v59 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, &v119);
      *(v59 + 12) = 2112;
      sub_20D855D94();
      swift_allocError();
      *v62 = v17;
      v63 = _swift_stdlib_bridgeErrorToNSError();
      *(v59 + 14) = v63;
      *v60 = v63;
      _os_log_impl(&dword_20D7C9000, v57, v58, "%s retrieved snapshot with error: %@, giving up.", v59, 0x16u);
      sub_20D7E3944(v60, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v60, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x20F324260](v61, -1, -1);
      MEMORY[0x20F324260](v59, -1, -1);
    }

    v64 = *(v0 + 232);
    sub_20D855D94();
    v65 = swift_allocError();
    *v66 = v17;
    swift_willThrow();
    sub_20D855E50(v64, type metadata accessor for HistoricalUsageSnapshot);
    v67 = *(v0 + 248);
    v68 = v65;
    v69 = sub_20D9734D8();
    v70 = sub_20D975458();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v119 = v73;
      *v71 = 136315394;
      *(v71 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, &v119);
      *(v71 + 12) = 2112;
      v74 = v65;
      v75 = _swift_stdlib_bridgeErrorToNSError();
      *(v71 + 14) = v75;
      *v72 = v75;
      _os_log_impl(&dword_20D7C9000, v69, v70, "%s:ERROR: %@", v71, 0x16u);
      sub_20D7E3944(v72, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v72, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x20F324260](v73, -1, -1);
      MEMORY[0x20F324260](v71, -1, -1);
    }

    v77 = *(v0 + 112);
    v76 = *(v0 + 120);
    v78 = *(v0 + 72);
    *(v0 + 56) = v65;
    v79 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
    v80 = swift_dynamicCast();
    v81 = *(v0 + 288);
    if (!v80)
    {
      v81 = 5;
    }

    LOBYTE(v119) = v81;
    sub_20D852054(v76, v78, &v119);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839678, &qword_20D979608);
    v82 = *(v77 + 72);
    v83 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_20D979110;
    v117 = v84;
    sub_20D855DE8(v76, v84 + v83, type metadata accessor for HistoricalUsageEntryCommon);
  }

  v96 = *(v0 + 232);
  v95 = *(v0 + 240);
  v97 = *(v0 + 224);
  v99 = *(v0 + 200);
  v98 = *(v0 + 208);
  v101 = *(v0 + 184);
  v100 = *(v0 + 192);
  v102 = *(v0 + 160);
  v103 = *(v0 + 128);
  v104 = *(v0 + 136);
  v115 = *(v0 + 120);

  v105 = *(v0 + 8);

  return v105(v117);
}

uint64_t static HistoricalUsageWidgetCommon.utilityOnboardedHomesAndEnergySites(homes:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20D80F3B0;

  return sub_20D854D5C(a1);
}

uint64_t sub_20D852054(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = sub_20D972AF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D972628();
  v80 = *(v11 - 8);
  v81 = v11;
  v12 = *(v80 + 64);
  MEMORY[0x28223BE20](v11);
  v77 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D974EE8();
  v78 = *(v14 - 8);
  v79 = v14;
  v15 = *(v78 + 64);
  MEMORY[0x28223BE20](v14);
  v76 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  if (qword_281125098 != -1)
  {
    swift_once();
  }

  v18 = sub_20D9734F8();
  __swift_project_value_buffer(v18, qword_2811250A0);
  v19 = sub_20D9734D8();
  v20 = sub_20D975458();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v75 = v10;
    v23 = v7;
    v24 = v6;
    v25 = a1;
    v26 = v22;
    v27 = swift_slowAlloc();
    v74 = a2;
    v28 = v27;
    v82 = v27;
    *v21 = 136315394;
    *(v21 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984A60, &v82);
    *(v21 + 12) = 2112;
    sub_20D855D94();
    swift_allocError();
    *v29 = v17;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v30;
    *v26 = v30;
    _os_log_impl(&dword_20D7C9000, v19, v20, "%s: Erroring out widget due to snapshot error: %@", v21, 0x16u);
    sub_20D7E3944(v26, &unk_27C839E80, &qword_20D979610);
    v31 = v26;
    a1 = v25;
    v6 = v24;
    v7 = v23;
    v10 = v75;
    MEMORY[0x20F324260](v31, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v32 = v28;
    a2 = v74;
    MEMORY[0x20F324260](v32, -1, -1);
    MEMORY[0x20F324260](v21, -1, -1);
  }

  sub_20D974EC8();
  v33 = sub_20D9734D8();
  if (v17 > 2)
  {
    if (v17 == 3)
    {
      v39 = sub_20D975458();
      if (!os_log_type_enabled(v33, v39))
      {
        goto LABEL_25;
      }

      v40 = a2;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v82 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984A60, &v82);
      v43 = "%s: Utility has been offboarded for EnergySite. Asking for 60 minute reload";
    }

    else if (v17 == 4)
    {
      v39 = sub_20D975458();
      if (!os_log_type_enabled(v33, v39))
      {
        goto LABEL_25;
      }

      v40 = a2;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v82 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984A60, &v82);
      v43 = "%s: Subscription disconnected, erroring out widget. Asking for 60 minute reload";
    }

    else
    {
      v39 = sub_20D975458();
      if (!os_log_type_enabled(v33, v39))
      {
        goto LABEL_25;
      }

      v40 = a2;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v82 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984A60, &v82);
      v43 = "%s: historical usage loading failed, but error is recoverable, asking for 60 minute reload";
    }

    _os_log_impl(&dword_20D7C9000, v33, v39, v43, v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x20F324260](v42, -1, -1);
    v57 = v41;
    a2 = v40;
LABEL_24:
    MEMORY[0x20F324260](v57, -1, -1);
    goto LABEL_25;
  }

  if (!v17)
  {
    v44 = sub_20D975458();
    if (!os_log_type_enabled(v33, v44))
    {
      goto LABEL_25;
    }

    v45 = swift_slowAlloc();
    v46 = v10;
    v47 = v7;
    v48 = v6;
    v49 = a1;
    v50 = swift_slowAlloc();
    v51 = a2;
    v52 = swift_slowAlloc();
    v82 = v52;
    *v45 = 136315394;
    *(v45 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984A60, &v82);
    *(v45 + 12) = 2112;
    sub_20D855D94();
    swift_allocError();
    *v53 = 0;
    v54 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 14) = v54;
    *v50 = v54;
    _os_log_impl(&dword_20D7C9000, v33, v44, "%s: No site for available, erroring out widget. asking for 60 minute reload %@", v45, 0x16u);
    sub_20D7E3944(v50, &unk_27C839E80, &qword_20D979610);
    v55 = v50;
    a1 = v49;
    v6 = v48;
    v7 = v47;
    v10 = v46;
    MEMORY[0x20F324260](v55, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v52);
    v56 = v52;
    a2 = v51;
    MEMORY[0x20F324260](v56, -1, -1);
    v57 = v45;
    goto LABEL_24;
  }

  if (v17 != 1)
  {
    v58 = sub_20D975458();
    if (!os_log_type_enabled(v33, v58))
    {
      goto LABEL_25;
    }

    v59 = swift_slowAlloc();
    v60 = a2;
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v82 = v62;
    *v59 = 136315394;
    *(v59 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984A60, &v82);
    *(v59 + 12) = 2112;
    sub_20D855D94();
    swift_allocError();
    *v63 = 2;
    v64 = _swift_stdlib_bridgeErrorToNSError();
    *(v59 + 14) = v64;
    *v61 = v64;
    _os_log_impl(&dword_20D7C9000, v33, v58, "%s: historical usage loading failed, erroring out widget, asking for 60 minute reload: %@", v59, 0x16u);
    sub_20D7E3944(v61, &unk_27C839E80, &qword_20D979610);
    v65 = v61;
    a2 = v60;
    MEMORY[0x20F324260](v65, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x20F324260](v62, -1, -1);
    v57 = v59;
    goto LABEL_24;
  }

  v34 = sub_20D975478();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = a2;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v82 = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984A60, &v82);
    _os_log_impl(&dword_20D7C9000, v33, v34, "%s: historical usage is still loading (or a transient error), displaying empty, retrying as soon as WidgetKit allows...", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x20F324260](v37, -1, -1);
    v38 = v36;
    a2 = v35;
    MEMORY[0x20F324260](v38, -1, -1);
  }

LABEL_25:

  v66 = v77;
  sub_20D972578();
  v67 = v76;
  sub_20D974EB8();
  (*(v80 + 8))(v66, v81);
  v69 = v78;
  v68 = v79;
  (*(v78 + 8))(a2, v79);
  (*(v69 + 32))(a2, v67, v68);
  sub_20D9725C8();
  LOBYTE(v82) = 0;
  (*(v7 + 104))(v10, *MEMORY[0x277D075B8], v6);
  v70 = type metadata accessor for HistoricalUsageEntryCommon(0);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v82, v10, (a1 + v70[5]));
  result = (*(v7 + 8))(v10, v6);
  *(a1 + v70[6]) = 0;
  v72 = (a1 + v70[7]);
  *v72 = 0;
  v72[1] = 0;
  return result;
}

uint64_t HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily.init(widgetFamily:entry:homeName:homeID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_20D974EA8();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v15 = type metadata accessor for HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily(0);
  result = sub_20D855DE8(a2, a7 + v15[5], type metadata accessor for HistoricalUsageEntryCommon);
  v17 = (a7 + v15[6]);
  *v17 = a3;
  v17[1] = a4;
  v18 = (a7 + v15[7]);
  *v18 = a5;
  v18[1] = a6;
  return result;
}

uint64_t HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v206 = a1;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839680, &qword_20D979650);
  v3 = *(*(v169 - 8) + 64);
  MEMORY[0x28223BE20](v169);
  v171 = &v160 - v4;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839688, &qword_20D979658);
  v5 = *(*(v205 - 8) + 64);
  MEMORY[0x28223BE20](v205);
  v172 = &v160 - v6;
  v168 = type metadata accessor for CircularHistoricalUsageView(0);
  v7 = *(*(v168 - 8) + 64);
  MEMORY[0x28223BE20](v168);
  v165 = (&v160 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839690, &qword_20D979660);
  v167 = *(v170 - 8);
  v9 = *(v167 + 64);
  MEMORY[0x28223BE20](v170);
  v166 = &v160 - v10;
  v191 = type metadata accessor for RectangularLockHistoricalUsageView();
  v11 = *(*(v191 - 8) + 64);
  MEMORY[0x28223BE20](v191);
  v161 = &v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839698, &qword_20D979668);
  v163 = *(v193 - 8);
  v13 = *(v163 + 64);
  MEMORY[0x28223BE20](v193);
  v162 = &v160 - v14;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396A0, &qword_20D979670);
  v15 = *(*(v202 - 8) + 64);
  MEMORY[0x28223BE20](v202);
  v204 = &v160 - v16;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396A8, &qword_20D979678);
  v17 = *(*(v189 - 8) + 64);
  MEMORY[0x28223BE20](v189);
  v190 = &v160 - v18;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396B0, &qword_20D979680);
  v19 = *(*(v203 - 8) + 64);
  MEMORY[0x28223BE20](v203);
  v192 = &v160 - v20;
  v183 = sub_20D9742A8();
  v182 = *(v183 - 8);
  v21 = *(v182 + 64);
  MEMORY[0x28223BE20](v183);
  v181 = &v160 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20D9726E8();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v175 = &v160 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20D975058();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v174 = &v160 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for HistoricalUsageSnapshot();
  v29 = *(*(v173 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v173);
  v196 = &v160 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v160 - v32;
  v208 = sub_20D972628();
  v201 = *(v208 - 8);
  v34 = *(v201 + 64);
  v35 = MEMORY[0x28223BE20](v208);
  v164 = &v160 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v195 = &v160 - v38;
  MEMORY[0x28223BE20](v37);
  v200 = &v160 - v39;
  v186 = type metadata accessor for HistoricalUsageWidgetView(0);
  v40 = *(*(v186 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v186);
  v199 = &v160 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v176 = &v160 - v43;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396B8, &qword_20D979688);
  v178 = *(v187 - 8);
  v44 = *(v178 + 64);
  MEMORY[0x28223BE20](v187);
  v177 = &v160 - v45;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396C0, &unk_20D979690);
  v180 = *(v188 - 8);
  v46 = *(v180 + 64);
  MEMORY[0x28223BE20](v188);
  v179 = &v160 - v47;
  v48 = sub_20D974EA8();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  v198 = &v160 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily(0);
  v53 = *(*(v52 - 8) + 64);
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v160 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v58 = &v160 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B78, &qword_20D97A5A0);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59 - 8);
  v62 = &v160 - v61;
  v63 = v1 + *(v52 + 20);
  v207 = type metadata accessor for HistoricalUsageEntryCommon(0);
  v64 = *(v207 + 24);
  v194 = v63;
  LODWORD(v64) = *(v63 + v64);
  v197 = v52;
  if (v64 == 1)
  {
    sub_20D9721B8();
  }

  else
  {
    v65 = (v1 + *(v52 + 28));
    v66 = v65[1];
    if (v66)
    {
      v185 = v49;
      v184 = v48;
      v67 = *v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7B0, &qword_20D979500);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_20D977210;
      v69 = MEMORY[0x277D837D0];
      *(v68 + 56) = MEMORY[0x277D837D0];
      v70 = sub_20D84E340();
      *(v68 + 32) = 0xD000000000000039;
      *(v68 + 40) = 0x800000020D984910;
      *(v68 + 96) = v69;
      *(v68 + 104) = v70;
      v2 = v1;
      *(v68 + 64) = v70;
      *(v68 + 72) = v67;
      v48 = v184;
      v49 = v185;
      *(v68 + 80) = v66;

      sub_20D9750C8();
    }

    sub_20D9721B8();
  }

  v209 = v62;
  if (qword_281125098 != -1)
  {
    swift_once();
  }

  v71 = sub_20D9734F8();
  __swift_project_value_buffer(v71, qword_2811250A0);
  sub_20D855EB0(v2, v58, type metadata accessor for HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily);
  sub_20D855EB0(v2, v56, type metadata accessor for HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily);
  v72 = sub_20D9734D8();
  v73 = sub_20D975478();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v185 = v49;
    v75 = v74;
    v160 = swift_slowAlloc();
    v210 = v160;
    *v75 = 136315394;
    sub_20D84F314(&qword_281124CA8, MEMORY[0x277CE3BA0]);
    v76 = sub_20D9757A8();
    v77 = v33;
    v78 = v2;
    v80 = v79;
    v184 = v48;
    sub_20D855E50(v58, type metadata accessor for HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily);
    v81 = sub_20D7F4DC8(v76, v80, &v210);
    v2 = v78;
    v33 = v77;

    *(v75 + 4) = v81;
    *(v75 + 12) = 2080;
    v82 = &v56[*(v197 + 20) + *(v207 + 20)];
    v83 = HistoricalUsageSnapshot.description.getter();
    v85 = v84;
    v48 = v184;
    sub_20D855E50(v56, type metadata accessor for HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily);
    v86 = sub_20D7F4DC8(v83, v85, &v210);

    *(v75 + 14) = v86;
    _os_log_impl(&dword_20D7C9000, v72, v73, "HistoricalUsageWidgetForFamily: creating %s widget for usageSnapshot %s", v75, 0x16u);
    v87 = v160;
    swift_arrayDestroy();
    MEMORY[0x20F324260](v87, -1, -1);
    v88 = v75;
    v49 = v185;
    MEMORY[0x20F324260](v88, -1, -1);
  }

  else
  {

    sub_20D855E50(v56, type metadata accessor for HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily);
    sub_20D855E50(v58, type metadata accessor for HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily);
  }

  v89 = v198;
  (*(v49 + 16))(v198, v2, v48);
  v90 = (*(v49 + 88))(v89, v48);
  v91 = v201;
  if (v90 == *MEMORY[0x277CE3B68])
  {
    v92 = *(v201 + 16);
    v93 = v200;
    v94 = v194;
    v95 = v208;
    v92(v200, v194, v208);
    sub_20D855EB0(v94 + *(v207 + 20), v33, type metadata accessor for HistoricalUsageSnapshot);
    v96 = (v2 + *(v197 + 24));
    v98 = *v96;
    v97 = v96[1];
    v99 = v199;
    v92(v199, v93, v95);
    v100 = v186;
    sub_20D855EB0(v33, &v99[*(v186 + 20)], type metadata accessor for HistoricalUsageSnapshot);
    v101 = *(v173 + 48);

    if (sub_20D972D68())
    {
      sub_20D974FE8();
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v102 = qword_28112ABE8;
      sub_20D9726B8();
      v103 = sub_20D975108();
      if (!v97)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_20D974FE8();
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v124 = qword_28112ABE8;
      sub_20D9726B8();
      v103 = sub_20D9750F8();
      if (!v97)
      {
        goto LABEL_23;
      }
    }

    v103 = v98;
    v104 = v97;
LABEL_23:
    v126 = v199;
    v125 = v200;
    v127 = &v199[*(v100 + 24)];
    *v127 = v103;
    v127[1] = v104;
    v128 = v195;
    v129 = v208;
    v92(v195, v125, v208);
    v130 = v196;
    sub_20D855EB0(v33, v196, type metadata accessor for HistoricalUsageSnapshot);
    HistoricalUsageSnapshotDerivedInfo.init(requestedDisplayDate:snapshot:)(v128, v130, v126 + *(v100 + 28));
    sub_20D855E50(v33, type metadata accessor for HistoricalUsageSnapshot);
    (*(v91 + 8))(v125, v129);
    v131 = v176;
    sub_20D855DE8(v126, v176, type metadata accessor for HistoricalUsageWidgetView);
    v132 = sub_20D84F314(qword_2811261A0, type metadata accessor for HistoricalUsageWidgetView);
    v133 = v177;
    sub_20D9746C8();
    sub_20D855E50(v131, type metadata accessor for HistoricalUsageWidgetView);
    v134 = v181;
    sub_20D974298();
    sub_20D974C48();
    v210 = v100;
    v211 = v132;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v136 = MEMORY[0x277CE1410];
    v137 = MEMORY[0x277CE1428];
    v138 = v179;
    v139 = v187;
    sub_20D9747C8();
    (*(v182 + 8))(v134, v183);
    (*(v178 + 8))(v133, v139);
    v140 = v180;
    v141 = v188;
    (*(v180 + 16))(v190, v138, v188);
    swift_storeEnumTagMultiPayload();
    v210 = v139;
    v211 = v137;
    v212 = OpaqueTypeConformance2;
    v213 = v136;
    swift_getOpaqueTypeConformance2();
    v142 = sub_20D84F314(qword_281125258, type metadata accessor for RectangularLockHistoricalUsageView);
    v210 = v191;
    v211 = v142;
    swift_getOpaqueTypeConformance2();
    v143 = v192;
    sub_20D9741B8();
    sub_20D7EB7E8(v143, v204, &qword_27C8396B0, &qword_20D979680);
    swift_storeEnumTagMultiPayload();
    sub_20D855F38();
    sub_20D8560D0();
    sub_20D9741B8();
    sub_20D7E3944(v143, &qword_27C8396B0, &qword_20D979680);
    (*(v140 + 8))(v138, v141);
    return sub_20D7E3944(v209, &qword_27C838B78, &qword_20D97A5A0);
  }

  if (v90 == *MEMORY[0x277CE3B90])
  {
    v105 = *(v201 + 16);
    v106 = v194;
    v107 = v195;
    v108 = v208;
    v105(v195, v194, v208);
    v109 = v168;
    v110 = *(v168 + 24);
    v111 = v106 + *(v207 + 20);
    v112 = v165;
    sub_20D855EB0(v111, v165 + v110, type metadata accessor for HistoricalUsageSnapshot);
    *v112 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA8, &qword_20D976EA0);
    swift_storeEnumTagMultiPayload();
    v113 = v164;
    v105(v164, v107, v108);
    v114 = v112 + v110;
    v115 = v196;
    sub_20D855EB0(v114, v196, type metadata accessor for HistoricalUsageSnapshot);
    v116 = v112 + *(v109 + 28);
    HistoricalUsageSnapshotDerivedInfo.init(requestedDisplayDate:snapshot:)(v113, v115, v116);
    (*(v91 + 8))(v107, v108);
    v117 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
    v105(v112 + *(v109 + 20), v116 + *(v117 + 52), v108);
    v118 = sub_20D84F314(&qword_281125FA0, type metadata accessor for CircularHistoricalUsageView);
    v119 = v166;
    v120 = v209;
    sub_20D9746C8();
    sub_20D855E50(v112, type metadata accessor for CircularHistoricalUsageView);
    v121 = v167;
    v122 = v170;
    (*(v167 + 16))(v171, v119, v170);
    swift_storeEnumTagMultiPayload();
    v210 = v109;
    v211 = v118;
    swift_getOpaqueTypeConformance2();
    v123 = v172;
    sub_20D9741B8();
    sub_20D7EB7E8(v123, v204, &qword_27C839688, &qword_20D979658);
    swift_storeEnumTagMultiPayload();
    sub_20D855F38();
    sub_20D8560D0();
    sub_20D9741B8();
    sub_20D7E3944(v123, &qword_27C839688, &qword_20D979658);
    (*(v121 + 8))(v119, v122);
    return sub_20D7E3944(v120, &qword_27C838B78, &qword_20D97A5A0);
  }

  if (v90 == *MEMORY[0x277CE3B98])
  {
    v145 = v194;
    v146 = v195;
    (*(v201 + 16))(v195, v194, v208);
    v147 = v145 + *(v207 + 20);
    v148 = v196;
    sub_20D855EB0(v147, v196, type metadata accessor for HistoricalUsageSnapshot);
    v149 = v161;
    RectangularLockHistoricalUsageView.init(widgetStartDate:usageSnapshot:)(v146, v148, v161);
    v150 = sub_20D84F314(qword_281125258, type metadata accessor for RectangularLockHistoricalUsageView);
    v151 = v162;
    v120 = v209;
    v152 = v191;
    sub_20D9746C8();
    sub_20D855E50(v149, type metadata accessor for RectangularLockHistoricalUsageView);
    v153 = v163;
    v154 = v193;
    (*(v163 + 16))(v190, v151, v193);
    swift_storeEnumTagMultiPayload();
    v155 = sub_20D84F314(qword_2811261A0, type metadata accessor for HistoricalUsageWidgetView);
    v210 = v186;
    v211 = v155;
    v156 = swift_getOpaqueTypeConformance2();
    v210 = v187;
    v211 = MEMORY[0x277CE1428];
    v212 = v156;
    v213 = MEMORY[0x277CE1410];
    swift_getOpaqueTypeConformance2();
    v210 = v152;
    v211 = v150;
    swift_getOpaqueTypeConformance2();
    v157 = v192;
    sub_20D9741B8();
    sub_20D7EB7E8(v157, v204, &qword_27C8396B0, &qword_20D979680);
    swift_storeEnumTagMultiPayload();
    sub_20D855F38();
    sub_20D8560D0();
    sub_20D9741B8();
    sub_20D7E3944(v157, &qword_27C8396B0, &qword_20D979680);
    (*(v153 + 8))(v151, v154);
    return sub_20D7E3944(v120, &qword_27C838B78, &qword_20D97A5A0);
  }

  swift_storeEnumTagMultiPayload();
  v158 = sub_20D84F314(&qword_281125FA0, type metadata accessor for CircularHistoricalUsageView);
  v210 = v168;
  v211 = v158;
  swift_getOpaqueTypeConformance2();
  v159 = v172;
  sub_20D9741B8();
  sub_20D7EB7E8(v159, v204, &qword_27C839688, &qword_20D979658);
  swift_storeEnumTagMultiPayload();
  sub_20D855F38();
  sub_20D8560D0();
  sub_20D9741B8();
  sub_20D7E3944(v159, &qword_27C839688, &qword_20D979658);
  sub_20D7E3944(v209, &qword_27C838B78, &qword_20D97A5A0);
  return (*(v49 + 8))(v89, v48);
}

uint64_t static HistoricalUsageWidgetCommon.widgetConfigurationDisplayName()()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static HistoricalUsageWidgetCommon.widgetDescription()()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t sub_20D854790@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t HistoricalUsageEntryCommon.date.setter(uint64_t a1)
{
  v3 = sub_20D972628();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

double HistoricalUsageEntryCommon.displaySize.getter()
{
  v1 = v0 + *(type metadata accessor for HistoricalUsageEntryCommon(0) + 28);
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t HistoricalUsageEntryCommon.description.getter()
{
  sub_20D975678();
  MEMORY[0x20F323340](0xD000000000000022, 0x800000020D9848C0);
  v1 = sub_20D9725F8();
  MEMORY[0x20F323340](v1);

  MEMORY[0x20F323340](0xD000000000000012, 0x800000020D9848F0);
  v2 = v0 + *(type metadata accessor for HistoricalUsageEntryCommon(0) + 20);
  v3 = HistoricalUsageSnapshot.description.getter();
  MEMORY[0x20F323340](v3);

  return 0;
}

uint64_t sub_20D854A40(uint64_t a1)
{
  v2 = sub_20D974E98();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20D973FF8();
}

uint64_t sub_20D854B08(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for HistoricalUsageWidgetCommon.Home(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v2;
  v28 = v13;
  v14 = sub_20D8D4B48(a2);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v15;
  if (v13[3] < v19)
  {
    sub_20D908D2C(v19, isUniquelyReferenced_nonNull_native);
    v14 = sub_20D8D4B48(a2);
    if ((v3 & 1) == (v20 & 1))
    {
      goto LABEL_6;
    }

    v14 = sub_20D9757F8();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v24 = v14;
    sub_20D8D6200();
    v14 = v24;
    v21 = v28;
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    v25 = v14;
    sub_20D855EB0(a2, v10, type metadata accessor for HistoricalUsageWidgetCommon.Home);
    sub_20D8D5890(v25, v10, a1, v21);
    v23 = 0;
    goto LABEL_11;
  }

LABEL_6:
  v21 = v28;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v22 = v21[7];
  v23 = *(v22 + 8 * v14);
  *(v22 + 8 * v14) = a1;
LABEL_11:
  *v4 = v21;
  return v23;
}

uint64_t sub_20D854C90(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = *(a5 + 48);
  v9 = type metadata accessor for HistoricalUsageWidgetCommon.Home(0);
  sub_20D855EB0(v8 + *(*(v9 - 8) + 72) * a2, v7, type metadata accessor for HistoricalUsageWidgetCommon.Home);
  v10 = *(*(a5 + 56) + 8 * a2);
}

uint64_t sub_20D854D5C(uint64_t a1)
{
  v1[3] = a1;
  v2 = type metadata accessor for HistoricalUsageWidgetCommon.Home(0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D854E4C, 0, 0);
}

uint64_t sub_20D854E4C()
{
  v46 = v0;
  *(v0 + 16) = MEMORY[0x277D84F98];
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  *(v0 + 88) = v2;
  if (v2)
  {
    v3 = *(v0 + 40);
    *(v0 + 96) = sub_20D972CD8();
    v4 = *(v3 + 80);
    *(v0 + 152) = v4;
    *(v0 + 104) = *(v3 + 72);
    *(v0 + 112) = 0;
    sub_20D855EB0(v1 + ((v4 + 32) & ~v4), *(v0 + 80), type metadata accessor for HistoricalUsageWidgetCommon.Home);
    if (qword_2811270D8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 72);
    v6 = *(v0 + 80);
    v7 = *(v0 + 64);
    v8 = sub_20D9734F8();
    *(v0 + 120) = v8;
    *(v0 + 128) = __swift_project_value_buffer(v8, qword_2811270E0);
    sub_20D855EB0(v6, v5, type metadata accessor for HistoricalUsageWidgetCommon.Home);
    sub_20D855EB0(v6, v7, type metadata accessor for HistoricalUsageWidgetCommon.Home);
    v9 = sub_20D9734D8();
    v10 = sub_20D975478();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 64);
    v13 = *(v0 + 72);
    if (v11)
    {
      v14 = *(v0 + 32);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v45 = v16;
      *v15 = 136315650;
      *(v15 + 4) = sub_20D7F4DC8(0xD00000000000002BLL, 0x800000020D984A80, &v45);
      *(v15 + 12) = 2080;
      v17 = (v13 + *(v14 + 20));
      v18 = *v17;
      v19 = v17[1];

      sub_20D855E50(v13, type metadata accessor for HistoricalUsageWidgetCommon.Home);
      v20 = sub_20D7F4DC8(v18, v19, &v45);

      *(v15 + 14) = v20;
      *(v15 + 22) = 2080;
      v21 = sub_20D972648();
      v23 = v22;
      sub_20D855E50(v12, type metadata accessor for HistoricalUsageWidgetCommon.Home);
      v24 = sub_20D7F4DC8(v21, v23, &v45);

      *(v15 + 24) = v24;
      _os_log_impl(&dword_20D7C9000, v9, v10, "%s checking '%s'/%s for onboarded EnergySite...", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v16, -1, -1);
      MEMORY[0x20F324260](v15, -1, -1);
    }

    else
    {

      sub_20D855E50(v12, type metadata accessor for HistoricalUsageWidgetCommon.Home);
      sub_20D855E50(v13, type metadata accessor for HistoricalUsageWidgetCommon.Home);
    }

    v31 = *(v0 + 80);
    v32 = sub_20D972648();
    v34 = v33;
    v35 = *(MEMORY[0x277D07650] + 4);
    v36 = swift_task_alloc();
    *(v0 + 136) = v36;
    *v36 = v0;
    v36[1] = sub_20D855370;
    v37 = *(v0 + 96);

    return MEMORY[0x28215C940](v32, v34);
  }

  else
  {
    if (qword_281125098 != -1)
    {
      swift_once();
    }

    v25 = sub_20D9734F8();
    __swift_project_value_buffer(v25, qword_2811250A0);
    v26 = *(v0 + 16);

    v27 = sub_20D9734D8();
    v28 = sub_20D975478();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v45 = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_20D7F4DC8(0xD00000000000002BLL, 0x800000020D984A80, &v45);
      *(v29 + 12) = 2048;
      *(v29 + 14) = *(v26 + 16);

      _os_log_impl(&dword_20D7C9000, v27, v28, "%s found %ld onboarded homes+sites", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x20F324260](v30, -1, -1);
      MEMORY[0x20F324260](v29, -1, -1);
    }

    else
    {
    }

    v39 = *(v0 + 72);
    v38 = *(v0 + 80);
    v41 = *(v0 + 56);
    v40 = *(v0 + 64);
    v42 = *(v0 + 48);

    v43 = *(v0 + 8);

    return v43(v26);
  }
}