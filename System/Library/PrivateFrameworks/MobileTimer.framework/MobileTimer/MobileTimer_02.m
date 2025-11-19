uint64_t sub_1B207B97C()
{
  v0[2] = sub_1B20A9BA4();
  v0[3] = sub_1B20A9B94();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1B207BA2C;

  return sub_1B2086C78(2);
}

uint64_t sub_1B207BA2C(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *v2;
  v5[5] = v1;

  v8 = v5[3];
  v9 = v5[2];
  if (v3)
  {
    v10 = sub_1B20A9B64();
    v12 = v11;
    v13 = sub_1B2098958;
  }

  else
  {
    v5[6] = a1;
    v10 = sub_1B20A9B64();
    v12 = v14;
    v13 = sub_1B2098954;
  }

  return MEMORY[0x1EEE6DFA0](v13, v10, v12);
}

uint64_t MTCDDataStore.getRecentsFavoritesLatest(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v7 = v2;

  os_unfair_lock_lock(v6 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v6 + 4);
  v8 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v8)
  {
    v9 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v8(v10);
    sub_1B1FA6834(v8);
  }
}

uint64_t sub_1B207BCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  v4 = sub_1B20A98B4();
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v6 = *(v5 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B207BDB8, 0, 0);
}

uint64_t sub_1B207BDB8()
{
  v60 = v0;
  v1 = *(v0 + 112);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 112);
  *(v0 + 216) = 0;
  v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
  v5 = swift_allocObject();
  *(v5 + 16) = v0 + 216;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B2098884;
  *(v6 + 24) = v5;
  *(v0 + 48) = sub_1B20988D0;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B20668F0;
  *(v0 + 40) = &block_descriptor_819;
  v7 = _Block_copy((v0 + 16));
  v8 = *(v0 + 56);
  v9 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    return result;
  }

  v11 = *(v0 + 216);

  if (v11 == 1)
  {
    v12 = *(v1 + v2);
    *(v0 + 168) = v12;
    if (v12)
    {
      *(v0 + 176) = sub_1B20A9BA4();

      *(v0 + 184) = sub_1B20A9B94();
      v13 = swift_task_alloc();
      *(v0 + 192) = v13;
      *v13 = v0;
      v13[1] = sub_1B207C494;

      return sub_1B2086C78(2);
    }

    v35 = *(v0 + 160);
    v36 = *(v0 + 136);
    v37 = *(v0 + 144);
    v38 = *(v0 + 128);
    (*(v0 + 120))(0, 0, 0);
    swift_bridgeObjectRelease_n();
    v39 = sub_1B205E940();
    (*(v37 + 16))(v35, v39, v36);
    sub_1B20983FC(0, 0, 0);
    v40 = sub_1B20A9894();
    v41 = sub_1B20A9C74();
    sub_1B2098448(0, 0, 0);
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v59[0] = v43;
      *v42 = 136315650;
      *(v0 + 88) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F508, &qword_1B20B9178);
      v44 = sub_1B20A9A84();
      v46 = sub_1B2061574(v44, v45, v59);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      *(v0 + 96) = 0;
      v47 = sub_1B20A9A84();
      v49 = sub_1B2061574(v47, v48, v59);

      *(v42 + 14) = v49;
      *(v42 + 22) = 2080;
      v50 = *(v0 + 160);
      v51 = *(v0 + 136);
      v52 = *(v0 + 144);
      *(v0 + 104) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F538, &qword_1B20B9530);
      v53 = sub_1B20A9A84();
      v55 = sub_1B2061574(v53, v54, v59);

      *(v42 + 24) = v55;
      _os_log_impl(&dword_1B1F9F000, v40, v41, "Fetched recents: %s, favorites: %s, latest: %s", v42, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B2741310](v43, -1, -1);
      MEMORY[0x1B2741310](v42, -1, -1);

      swift_bridgeObjectRelease_n();
      sub_1B2098448(0, 0, 0);
      (*(v52 + 8))(v50, v51);
    }

    else
    {
      v56 = *(v0 + 160);
      v57 = *(v0 + 136);
      v58 = *(v0 + 144);
      sub_1B2098448(0, 0, 0);
      swift_bridgeObjectRelease_n();

      (*(v58 + 8))(v56, v57);
    }
  }

  else
  {
LABEL_8:
    type metadata accessor for BugCapture();
    static BugCapture.reportBug(type:subType:name:value:)(0x536174614443544DLL, 0xEC00000065726F74, 0xD000000000000010, 0x80000001B20D3580, 0xD00000000000002ALL, 0x80000001B20D35A0, 0xD000000000000019, 0x80000001B20D3A30);
    sub_1B20915B0();
    v14 = swift_allocError();
    *v15 = 3;
    swift_willThrow();
    v17 = *(v0 + 144);
    v16 = *(v0 + 152);
    v18 = *(v0 + 136);
    v19 = sub_1B205E940();
    (*(v17 + 16))(v16, v19, v18);
    v20 = v14;
    v21 = sub_1B20A9894();
    v22 = sub_1B20A9C84();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v14;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1B1F9F000, v21, v22, "Failed to fetch recents, favorites, and latest: %@", v23, 0xCu);
      sub_1B20985B4(v24, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v24, -1, -1);
      MEMORY[0x1B2741310](v23, -1, -1);
    }

    v28 = *(v0 + 144);
    v27 = *(v0 + 152);
    v29 = *(v0 + 128);
    v30 = *(v0 + 136);
    v31 = *(v0 + 120);

    (*(v28 + 8))(v27, v30);
    v31(0, 0, 0);
  }

  v33 = *(v0 + 152);
  v32 = *(v0 + 160);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1B207C494(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 192);
  v7 = *v2;
  *(v5 + 200) = a1;
  *(v5 + 208) = v1;

  v8 = *(v4 + 184);
  v9 = *(v4 + 176);
  v11 = sub_1B20A9B64();
  if (v3)
  {
    v12 = sub_1B207C5F4;
  }

  else
  {
    v12 = sub_1B207C828;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, v10);
}

uint64_t sub_1B207C5F4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1B207C668, 0, 0);
}

uint64_t sub_1B207C668()
{
  v1 = v0[26];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1B20A9894();
  v8 = sub_1B20A9C84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B1F9F000, v7, v8, "Failed to fetch recents, favorites, and latest: %@", v9, 0xCu);
    sub_1B20985B4(v10, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v10, -1, -1);
    MEMORY[0x1B2741310](v9, -1, -1);
  }

  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[16];
  v16 = v0[17];
  v17 = v0[15];

  (*(v14 + 8))(v13, v16);
  v17(0, 0, 0);

  v19 = v0[19];
  v18 = v0[20];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1B207C828()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1B207C89C, 0, 0);
}

uint64_t sub_1B207C89C()
{
  v58 = v0;
  v1 = v0[25];
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v49 = v0)
    {
      v3 = 0;
      v4 = 0;
      v5 = v0[25];
      v51 = v5 & 0xFFFFFFFFFFFFFF8;
      v53 = v5 & 0xC000000000000001;
      v6 = MEMORY[0x1E69E7CC0];
      v7 = MEMORY[0x1E69E7CC0];
      v50 = i;
      while (1)
      {
        if (v53)
        {
          v8 = MEMORY[0x1B27403C0](v3, v1);
        }

        else
        {
          if (v3 >= *(v51 + 16))
          {
            goto LABEL_24;
          }

          v8 = *(v1 + 8 * v3 + 32);
        }

        v9 = v8;
        v10 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v57 = v6;
        v55 = v4;
        v0 = v4;

        if ([v9 isFavorite])
        {
          v11 = v9;
          MEMORY[0x1B2740000]();
          if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v47 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1B20A9B24();
          }

          sub_1B20A9B44();
          v12 = v57;
          v13 = v7;
        }

        else
        {
          v12 = v6;
          v13 = v7;
          if ([v9 validRecent])
          {
            v14 = v9;
            MEMORY[0x1B2740000]();
            if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v48 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1B20A9B24();
            }

            sub_1B20A9B44();
            v13 = v7;
            v12 = v6;
          }
        }

        v15 = [v9 latest];

        if (v15)
        {

          v4 = v9;
        }

        else
        {

          v4 = v55;
        }

        ++v3;
        v6 = v12;
        v7 = v13;
        if (v10 == v50)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      i = sub_1B20A9DE4();
    }

    v4 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v12 = MEMORY[0x1E69E7CC0];
LABEL_27:

    v17 = v4;

    v0 = v49;
    v16 = v4;
  }

  else
  {
    v16 = 0;
    v12 = 0;
    v13 = 0;
  }

  v18 = v0[20];
  v19 = v0[17];
  v20 = v0[18];
  v21 = v0[16];
  (v0[15])(v13, v12, v16);

  v22 = sub_1B205E940();
  (*(v20 + 2))(v18, v22, v19);
  sub_1B20983FC(v13, v12, v16);
  v23 = sub_1B20A9894();
  v24 = sub_1B20A9C74();
  sub_1B2098448(v13, v12, v16);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v16;
    v26 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v57 = v56;
    *v26 = 136315650;
    if (v13)
    {
    }

    v0[11] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F508, &qword_1B20B9178);
    v27 = sub_1B20A9A84();
    v29 = sub_1B2061574(v27, v28, &v57);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    if (v13)
    {

      v30 = v12;
    }

    else
    {
      v30 = 0;
    }

    v0[12] = v30;
    v34 = sub_1B20A9A84();
    v36 = sub_1B2061574(v34, v35, &v57);

    *(v26 + 14) = v36;
    *(v26 + 22) = 2080;
    if (v13)
    {
      v37 = v25;
      v38 = v25;
    }

    else
    {
      v38 = 0;
    }

    v39 = v0[18];
    v52 = v0[17];
    v54 = v0[20];
    v0[13] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F538, &qword_1B20B9530);
    v40 = sub_1B20A9A84();
    v42 = sub_1B2061574(v40, v41, &v57);

    *(v26 + 24) = v42;
    _os_log_impl(&dword_1B1F9F000, v23, v24, "Fetched recents: %s, favorites: %s, latest: %s", v26, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B2741310](v56, -1, -1);
    MEMORY[0x1B2741310](v26, -1, -1);

    swift_bridgeObjectRelease_n();
    sub_1B2098448(v13, v12, v25);
    (*(v39 + 1))(v54, v52);
  }

  else
  {
    v31 = v0[20];
    v32 = v0[17];
    v33 = v0[18];
    sub_1B2098448(v13, v12, v16);
    swift_bridgeObjectRelease_n();

    (*(v33 + 1))(v31, v32);
  }

  v44 = v0[19];
  v43 = v0[20];

  v45 = v0[1];

  return v45();
}

void sub_1B207CE68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  if (a1)
  {
    type metadata accessor for MTCDTimerDuration();
    v6 = sub_1B20A9AF4();
  }

  if (a2)
  {
    type metadata accessor for MTCDTimerDuration();
    v7 = sub_1B20A9AF4();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t MTCDDataStore.getRecentDurations(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v7 = v2;

  os_unfair_lock_lock(v6 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v6 + 4);
  v8 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v8)
  {
    v9 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v8(v10);
    sub_1B1FA6834(v8);
  }
}

uint64_t sub_1B207D018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_1B20A98B4();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B207D0E8, 0, 0);
}

uint64_t sub_1B207D0E8()
{
  v52 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 96);
  *(v0 + 200) = 0;
  v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
  v5 = swift_allocObject();
  *(v5 + 16) = v0 + 200;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B2098884;
  *(v6 + 24) = v5;
  *(v0 + 48) = sub_1B20988D0;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B20668F0;
  *(v0 + 40) = &block_descriptor_807;
  v7 = _Block_copy((v0 + 16));
  v8 = *(v0 + 56);
  v9 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    return result;
  }

  v11 = *(v0 + 200);

  if (v11 == 1)
  {
    v12 = *(v1 + v2);
    *(v0 + 152) = v12;
    if (v12)
    {
      *(v0 + 160) = sub_1B20A9BA4();

      *(v0 + 168) = sub_1B20A9B94();
      v13 = swift_task_alloc();
      *(v0 + 176) = v13;
      *v13 = v0;
      v13[1] = sub_1B207D69C;

      return sub_1B2086C78(0);
    }

    v35 = *(v0 + 144);
    v36 = *(v0 + 120);
    v37 = *(v0 + 128);
    v38 = sub_1B205E940();
    (*(v37 + 16))(v35, v38, v36);
    v39 = sub_1B20A9894();
    v40 = sub_1B20A9C74();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 144);
    v43 = *(v0 + 120);
    v44 = *(v0 + 128);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v51 = v46;
      *v45 = 136315138;
      *(v0 + 88) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F508, &qword_1B20B9178);
      v47 = sub_1B20A9A84();
      v49 = sub_1B2061574(v47, v48, &v51);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_1B1F9F000, v39, v40, "Fetched recent timer durations: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x1B2741310](v46, -1, -1);
      MEMORY[0x1B2741310](v45, -1, -1);
    }

    (*(v44 + 8))(v42, v43);
    v50 = *(v0 + 112);
    (*(v0 + 104))(0);
  }

  else
  {
LABEL_8:
    type metadata accessor for BugCapture();
    static BugCapture.reportBug(type:subType:name:value:)(0x536174614443544DLL, 0xEC00000065726F74, 0xD000000000000010, 0x80000001B20D3580, 0xD00000000000002ALL, 0x80000001B20D35A0, 0xD000000000000012, 0x80000001B20D3A10);
    sub_1B20915B0();
    v14 = swift_allocError();
    *v15 = 3;
    swift_willThrow();
    v17 = *(v0 + 128);
    v16 = *(v0 + 136);
    v18 = *(v0 + 120);
    v19 = sub_1B205E940();
    (*(v17 + 16))(v16, v19, v18);
    v20 = v14;
    v21 = sub_1B20A9894();
    v22 = sub_1B20A9C84();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v14;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1B1F9F000, v21, v22, "Failed to fetch recent timer durations: %@", v23, 0xCu);
      sub_1B20985B4(v24, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v24, -1, -1);
      MEMORY[0x1B2741310](v23, -1, -1);
    }

    v28 = *(v0 + 128);
    v27 = *(v0 + 136);
    v29 = *(v0 + 112);
    v30 = *(v0 + 120);
    v31 = *(v0 + 104);

    (*(v28 + 8))(v27, v30);
    v31(0);
  }

  v33 = *(v0 + 136);
  v32 = *(v0 + 144);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1B207D69C(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 176);
  v7 = *v2;
  v5[23] = v1;

  v8 = v5[21];
  v9 = v5[20];
  if (v3)
  {
    v10 = sub_1B20A9B64();
    v12 = v11;
    v13 = sub_1B207DAA4;
  }

  else
  {
    v5[24] = a1;
    v10 = sub_1B20A9B64();
    v12 = v14;
    v13 = sub_1B207D81C;
  }

  return MEMORY[0x1EEE6DFA0](v13, v10, v12);
}

uint64_t sub_1B207D81C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1B207D890, 0, 0);
}

uint64_t sub_1B207D890()
{
  v25 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = sub_1B205E940();
  (*(v4 + 16))(v2, v5, v3);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  if (os_log_type_enabled(v6, v7))
  {
    v23 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    *(v0 + 88) = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F508, &qword_1B20B9178);
    v12 = sub_1B20A9A84();
    v14 = sub_1B2061574(v12, v13, &v24);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1B1F9F000, v6, v7, "Fetched recent timer durations: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2741310](v11, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);

    (*(v8 + 8))(v23, v9);
  }

  else
  {
    v15 = *(v0 + 144);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);

    (*(v17 + 8))(v15, v16);
  }

  v18 = *(v0 + 112);
  (*(v0 + 104))(v1);

  v20 = *(v0 + 136);
  v19 = *(v0 + 144);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1B207DAA4()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1B207DB18, 0, 0);
}

uint64_t sub_1B207DB18()
{
  v1 = v0[23];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1B20A9894();
  v8 = sub_1B20A9C84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B1F9F000, v7, v8, "Failed to fetch recent timer durations: %@", v9, 0xCu);
    sub_1B20985B4(v10, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v10, -1, -1);
    MEMORY[0x1B2741310](v9, -1, -1);
  }

  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[14];
  v16 = v0[15];
  v17 = v0[13];

  (*(v14 + 8))(v13, v16);
  v17(0);

  v19 = v0[17];
  v18 = v0[18];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1B207DCD0()
{
  v0[2] = sub_1B20A9BA4();
  v0[3] = sub_1B20A9B94();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1B207BA2C;

  return sub_1B2086C78(0);
}

uint64_t MTCDDataStore.getFavoriteDurations(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v7 = v2;

  os_unfair_lock_lock(v6 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v6 + 4);
  v8 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v8)
  {
    v9 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v8(v10);
    sub_1B1FA6834(v8);
  }
}

uint64_t sub_1B207DEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_1B20A98B4();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B207DF8C, 0, 0);
}

uint64_t sub_1B207DF8C()
{
  v52 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 96);
  *(v0 + 200) = 0;
  v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
  v5 = swift_allocObject();
  *(v5 + 16) = v0 + 200;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B2098884;
  *(v6 + 24) = v5;
  *(v0 + 48) = sub_1B20988D0;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B20668F0;
  *(v0 + 40) = &block_descriptor_795;
  v7 = _Block_copy((v0 + 16));
  v8 = *(v0 + 56);
  v9 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    return result;
  }

  v11 = *(v0 + 200);

  if (v11 == 1)
  {
    v12 = *(v1 + v2);
    *(v0 + 152) = v12;
    if (v12)
    {
      *(v0 + 160) = sub_1B20A9BA4();

      *(v0 + 168) = sub_1B20A9B94();
      v13 = swift_task_alloc();
      *(v0 + 176) = v13;
      *v13 = v0;
      v13[1] = sub_1B207E540;

      return sub_1B2086C78(1);
    }

    v35 = *(v0 + 144);
    v36 = *(v0 + 120);
    v37 = *(v0 + 128);
    v38 = sub_1B205E940();
    (*(v37 + 16))(v35, v38, v36);
    v39 = sub_1B20A9894();
    v40 = sub_1B20A9C74();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 144);
    v43 = *(v0 + 120);
    v44 = *(v0 + 128);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v51 = v46;
      *v45 = 136315138;
      *(v0 + 88) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F508, &qword_1B20B9178);
      v47 = sub_1B20A9A84();
      v49 = sub_1B2061574(v47, v48, &v51);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_1B1F9F000, v39, v40, "Fetched favorite timer durations: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x1B2741310](v46, -1, -1);
      MEMORY[0x1B2741310](v45, -1, -1);
    }

    (*(v44 + 8))(v42, v43);
    v50 = *(v0 + 112);
    (*(v0 + 104))(0);
  }

  else
  {
LABEL_8:
    type metadata accessor for BugCapture();
    static BugCapture.reportBug(type:subType:name:value:)(0x536174614443544DLL, 0xEC00000065726F74, 0xD000000000000010, 0x80000001B20D3580, 0xD00000000000002ALL, 0x80000001B20D35A0, 0xD000000000000014, 0x80000001B20D39F0);
    sub_1B20915B0();
    v14 = swift_allocError();
    *v15 = 3;
    swift_willThrow();
    v17 = *(v0 + 128);
    v16 = *(v0 + 136);
    v18 = *(v0 + 120);
    v19 = sub_1B205E940();
    (*(v17 + 16))(v16, v19, v18);
    v20 = v14;
    v21 = sub_1B20A9894();
    v22 = sub_1B20A9C84();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v14;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1B1F9F000, v21, v22, "Failed to fetch favorite timer durations: %@", v23, 0xCu);
      sub_1B20985B4(v24, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v24, -1, -1);
      MEMORY[0x1B2741310](v23, -1, -1);
    }

    v28 = *(v0 + 128);
    v27 = *(v0 + 136);
    v29 = *(v0 + 112);
    v30 = *(v0 + 120);
    v31 = *(v0 + 104);

    (*(v28 + 8))(v27, v30);
    v31(0);
  }

  v33 = *(v0 + 136);
  v32 = *(v0 + 144);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1B207E540(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 176);
  v7 = *v2;
  v5[23] = v1;

  v8 = v5[21];
  v9 = v5[20];
  if (v3)
  {
    v10 = sub_1B20A9B64();
    v12 = v11;
    v13 = sub_1B207E948;
  }

  else
  {
    v5[24] = a1;
    v10 = sub_1B20A9B64();
    v12 = v14;
    v13 = sub_1B207E6C0;
  }

  return MEMORY[0x1EEE6DFA0](v13, v10, v12);
}

uint64_t sub_1B207E6C0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1B207E734, 0, 0);
}

uint64_t sub_1B207E734()
{
  v25 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = sub_1B205E940();
  (*(v4 + 16))(v2, v5, v3);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  if (os_log_type_enabled(v6, v7))
  {
    v23 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    *(v0 + 88) = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F508, &qword_1B20B9178);
    v12 = sub_1B20A9A84();
    v14 = sub_1B2061574(v12, v13, &v24);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1B1F9F000, v6, v7, "Fetched favorite timer durations: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2741310](v11, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);

    (*(v8 + 8))(v23, v9);
  }

  else
  {
    v15 = *(v0 + 144);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);

    (*(v17 + 8))(v15, v16);
  }

  v18 = *(v0 + 112);
  (*(v0 + 104))(v1);

  v20 = *(v0 + 136);
  v19 = *(v0 + 144);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1B207E948()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1B207E9BC, 0, 0);
}

uint64_t sub_1B207E9BC()
{
  v1 = v0[23];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1B20A9894();
  v8 = sub_1B20A9C84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B1F9F000, v7, v8, "Failed to fetch favorite timer durations: %@", v9, 0xCu);
    sub_1B20985B4(v10, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v10, -1, -1);
    MEMORY[0x1B2741310](v9, -1, -1);
  }

  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[14];
  v16 = v0[15];
  v17 = v0[13];

  (*(v14 + 8))(v13, v16);
  v17(0);

  v19 = v0[17];
  v18 = v0[18];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1B207EB74()
{
  v0[2] = sub_1B20A9BA4();
  v0[3] = sub_1B20A9B94();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1B207BA2C;

  return sub_1B2086C78(1);
}

Swift::Void __swiftcall MTCDDataStore.deleteDuration(_:isFavorite:)(MTTimerDuration *_, Swift::Bool isFavorite)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = _;
  *(v5 + 32) = isFavorite;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  v6 = *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v7 = v2;
  v8 = _;
  os_unfair_lock_lock(v6 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v6 + 4);
  v9 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v9)
  {
    v10 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v9(v11);
    sub_1B1FA6834(v9);
  }
}

uint64_t MTCDDataStore.deleteDuration(_:isFavorite:completion:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  v10 = *&v4[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v11 = v4;
  v12 = a1;
  sub_1B209192C(a3);
  os_unfair_lock_lock(v10 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v10 + 4);
  v13 = *&v11[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v13)
  {
    v14 = *&v11[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v13(v15);
    sub_1B1FA6834(v13);
  }
}

uint64_t sub_1B207EF34(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  *(v5 + 177) = a3;
  *(v5 + 88) = a1;
  *(v5 + 96) = a2;
  v6 = sub_1B20A98B4();
  *(v5 + 120) = v6;
  v7 = *(v6 - 8);
  *(v5 + 128) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B207F008, 0, 0);
}

uint64_t sub_1B207F008()
{
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 88);
  *(v0 + 176) = 0;
  v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
  v5 = swift_allocObject();
  *(v5 + 16) = v0 + 176;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B2098884;
  *(v6 + 24) = v5;
  *(v0 + 48) = sub_1B20988D0;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B20668F0;
  *(v0 + 40) = &block_descriptor_783;
  v7 = _Block_copy((v0 + 16));
  v8 = *(v0 + 56);
  v9 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    return result;
  }

  v11 = *(v0 + 176);

  if (v11 == 1)
  {
    v12 = *(v1 + v2);
    *(v0 + 152) = v12;
    if (v12)
    {

      v13 = swift_task_alloc();
      *(v0 + 160) = v13;
      *v13 = v0;
      v13[1] = sub_1B207F5B4;
      v14 = *(v0 + 177);
      v15 = *(v0 + 96);

      return sub_1B207FA44(v15, v14);
    }

    v43 = *(v0 + 144);
    v44 = *(v0 + 120);
    v45 = *(v0 + 128);
    v46 = *(v0 + 96);
    v47 = sub_1B205E940();
    (*(v45 + 16))(v43, v47, v44);
    v48 = v46;
    v49 = sub_1B20A9894();
    v50 = sub_1B20A9C74();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = *(v0 + 96);
      v52 = swift_slowAlloc();
      *v52 = 134217984;
      [v51 duration];
      *(v52 + 4) = v53;
      _os_log_impl(&dword_1B1F9F000, v49, v50, "Deleted timer duration from core data: %f", v52, 0xCu);
      MEMORY[0x1B2741310](v52, -1, -1);
    }

    v54 = *(v0 + 144);
    v55 = *(v0 + 120);
    v56 = *(v0 + 128);
    v57 = *(v0 + 104);

    (*(v56 + 8))(v54, v55);
    if (v57)
    {
      v58 = *(v0 + 112);
      (*(v0 + 104))(0);
    }
  }

  else
  {
LABEL_8:
    type metadata accessor for BugCapture();
    static BugCapture.reportBug(type:subType:name:value:)(0x536174614443544DLL, 0xEC00000065726F74, 0xD000000000000010, 0x80000001B20D3580, 0xD00000000000002ALL, 0x80000001B20D35A0, 0x75446574656C6564, 0xEE006E6F69746172);
    sub_1B20915B0();
    v16 = swift_allocError();
    *v17 = 3;
    swift_willThrow();
    v19 = *(v0 + 128);
    v18 = *(v0 + 136);
    v20 = *(v0 + 120);
    v21 = *(v0 + 96);
    v22 = sub_1B205E940();
    (*(v19 + 16))(v18, v22, v20);
    v23 = v21;
    v24 = v16;
    v25 = sub_1B20A9894();
    v26 = sub_1B20A9C84();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 96);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 134218242;
      [v27 duration];
      *(v28 + 4) = v30;
      *(v28 + 12) = 2112;
      v31 = v16;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v32;
      *v29 = v32;
      _os_log_impl(&dword_1B1F9F000, v25, v26, "Failed to delete timer durations from core data: %f, error: %@", v28, 0x16u);
      sub_1B20985B4(v29, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v29, -1, -1);
      MEMORY[0x1B2741310](v28, -1, -1);
    }

    v34 = *(v0 + 128);
    v33 = *(v0 + 136);
    v35 = *(v0 + 120);
    v36 = *(v0 + 104);

    (*(v34 + 8))(v33, v35);
    if (v36)
    {
      v38 = *(v0 + 104);
      v37 = *(v0 + 112);
      v39 = v16;
      v38(v16);
    }
  }

  v41 = *(v0 + 136);
  v40 = *(v0 + 144);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1B207F5B4()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_1B207F844;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_1B207F6D0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B207F6D0()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[12];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v1, v5, v2);
  v6 = v4;
  v7 = sub_1B20A9894();
  v8 = sub_1B20A9C74();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[12];
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    [v9 duration];
    *(v10 + 4) = v11;
    _os_log_impl(&dword_1B1F9F000, v7, v8, "Deleted timer duration from core data: %f", v10, 0xCu);
    MEMORY[0x1B2741310](v10, -1, -1);
  }

  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[16];
  v15 = v0[13];

  (*(v14 + 8))(v12, v13);
  if (v15)
  {
    v16 = v0[14];
    (v0[13])(0);
  }

  v18 = v0[17];
  v17 = v0[18];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1B207F844()
{
  v1 = v0[19];

  v2 = v0[21];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v6 = v0[12];
  v7 = sub_1B205E940();
  (*(v4 + 16))(v3, v7, v5);
  v8 = v6;
  v9 = v2;
  v10 = sub_1B20A9894();
  v11 = sub_1B20A9C84();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[12];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 134218242;
    [v12 duration];
    *(v13 + 4) = v15;
    *(v13 + 12) = 2112;
    v16 = v2;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&dword_1B1F9F000, v10, v11, "Failed to delete timer durations from core data: %f, error: %@", v13, 0x16u);
    sub_1B20985B4(v14, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v14, -1, -1);
    MEMORY[0x1B2741310](v13, -1, -1);
  }

  v19 = v0[16];
  v18 = v0[17];
  v20 = v0[15];
  v21 = v0[13];

  (*(v19 + 8))(v18, v20);
  if (v21)
  {
    v23 = v0[13];
    v22 = v0[14];
    v24 = v2;
    v23(v2);
  }

  v26 = v0[17];
  v25 = v0[18];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1B207FA44(uint64_t a1, char a2)
{
  *(v3 + 128) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_1B20A9D34();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B207FB08, v2, 0);
}

uint64_t sub_1B207FB08()
{
  v1 = *(v0 + 16);
  type metadata accessor for MTCDTimerDuration();
  v38 = static MTCDTimerDuration.fetchRequest()();
  *(v0 + 56) = v38;
  v2 = [v1 title];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1B20A9A74();
    v6 = v5;

    sub_1B20982AC(0, &qword_1EB79CE38, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4D0, &qword_1B20B8F70);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1B20B8E70;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1B2095E48();
    *(v7 + 32) = v4;
    *(v7 + 40) = v6;
  }

  else
  {
    sub_1B20982AC(0, &qword_1EB79CE38, 0x1E696AE18);
  }

  v8 = sub_1B20A9C64();
  *(v0 + 64) = v8;
  v9 = *(v0 + 40);
  v36 = *(v0 + 32);
  v37 = *(v0 + 48);
  v10 = *(v0 + 128);
  v35 = *(v0 + 24);
  v11 = *(v0 + 16);
  sub_1B20982AC(0, &qword_1EB79CE38, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4D0, &qword_1B20B8F70);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B20B8E70;
  [v11 duration];
  v13 = sub_1B20A9C24();
  v14 = sub_1B20982AC(0, &qword_1EB79CDE0, 0x1E696AD98);
  *(v12 + 56) = v14;
  v15 = sub_1B2094634();
  *(v12 + 64) = v15;
  *(v12 + 32) = v13;
  v16 = sub_1B20A9C64();
  *(v0 + 72) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B20B8E70;
  v18 = sub_1B20A9B54();
  *(v17 + 56) = v14;
  *(v17 + 64) = v15;
  *(v17 + 32) = v18;
  v19 = sub_1B20A9C64();
  *(v0 + 80) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4F0, &qword_1B20B9128);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B20B8E80;
  *(v20 + 32) = v8;
  *(v20 + 40) = v16;
  *(v20 + 48) = v19;
  v21 = objc_allocWithZone(MEMORY[0x1E696AB28]);
  v22 = v8;
  v23 = v16;
  v24 = v19;
  v25 = sub_1B20A9AF4();

  v26 = [v21 initWithType:1 subpredicates:v25];
  *(v0 + 88) = v26;

  [v38 setPredicate_];
  v27 = [*(v35 + 112) newBackgroundContext];
  *(v0 + 96) = v27;
  v28 = swift_allocObject();
  *(v0 + 104) = v28;
  *(v28 + 16) = v27;
  *(v28 + 24) = v38;
  (*(v9 + 104))(v37, *MEMORY[0x1E695D2B8], v36);
  v29 = *(MEMORY[0x1E695D2C0] + 4);
  v27;
  v30 = v38;
  v31 = swift_task_alloc();
  *(v0 + 112) = v31;
  *v31 = v0;
  v31[1] = sub_1B207FF48;
  v32 = *(v0 + 48);
  v33 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v31, v32, sub_1B2095CC8, v28, v33);
}

uint64_t sub_1B207FF48()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 120) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 24);
  if (v0)
  {
    v10 = sub_1B2080190;
  }

  else
  {
    v10 = sub_1B20800F4;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1B20800F4()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 48);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B2080190()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 48);

  v7 = *(v0 + 8);
  v8 = *(v0 + 120);

  return v7();
}

Swift::Void __swiftcall MTCDDataStore.deleteAllDurations()()
{
  v1 = swift_allocObject();
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = v0;
  v2 = *&v0[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v3 = v0;
  os_unfair_lock_lock(v2 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v2 + 4);
  v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v4)
  {
    v5 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v4(v6);
    sub_1B1FA6834(v4);
  }
}

uint64_t MTCDDataStore.deleteAllDurations(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v7 = v2;
  sub_1B209192C(a1);
  os_unfair_lock_lock(v6 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v6 + 4);
  v8 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v8)
  {
    v9 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v8(v10);
    sub_1B1FA6834(v8);
  }
}

void sub_1B208055C(void *a1)
{
  v2 = swift_allocObject();
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = a1;
  v3 = a1;
  sub_1B2068230();
}

uint64_t sub_1B20805E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = sub_1B20A98B4();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B20806B8, 0, 0);
}

uint64_t sub_1B20806B8()
{
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 88);
  *(v0 + 168) = 0;
  v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
  v5 = swift_allocObject();
  *(v5 + 16) = v0 + 168;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B2098884;
  *(v6 + 24) = v5;
  *(v0 + 48) = sub_1B20988D0;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B20668F0;
  *(v0 + 40) = &block_descriptor_771;
  v7 = _Block_copy((v0 + 16));
  v8 = *(v0 + 56);
  v9 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    return result;
  }

  v11 = *(v0 + 168);

  if (v11 == 1)
  {
    v12 = *(v1 + v2);
    *(v0 + 144) = v12;
    if (v12)
    {

      v13 = swift_task_alloc();
      *(v0 + 152) = v13;
      *v13 = v0;
      v13[1] = sub_1B2080BEC;

      return sub_1B208101C();
    }

    v37 = *(v0 + 136);
    v38 = *(v0 + 112);
    v39 = *(v0 + 120);
    v40 = sub_1B205E940();
    (*(v39 + 16))(v37, v40, v38);
    v41 = sub_1B20A9894();
    v42 = sub_1B20A9C74();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1B1F9F000, v41, v42, "Deleted all timer durations from core data", v43, 2u);
      MEMORY[0x1B2741310](v43, -1, -1);
    }

    v44 = *(v0 + 136);
    v45 = *(v0 + 112);
    v46 = *(v0 + 120);
    v47 = *(v0 + 96);

    (*(v46 + 8))(v44, v45);
    if (v47)
    {
      v48 = *(v0 + 104);
      (*(v0 + 96))(0);
    }
  }

  else
  {
LABEL_8:
    type metadata accessor for BugCapture();
    static BugCapture.reportBug(type:subType:name:value:)(0x536174614443544DLL, 0xEC00000065726F74, 0xD000000000000010, 0x80000001B20D3580, 0xD00000000000002ALL, 0x80000001B20D35A0, 0xD000000000000012, 0x80000001B20D39D0);
    sub_1B20915B0();
    v14 = swift_allocError();
    *v15 = 3;
    swift_willThrow();
    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    v18 = *(v0 + 112);
    v19 = sub_1B205E940();
    (*(v17 + 16))(v16, v19, v18);
    v20 = v14;
    v21 = sub_1B20A9894();
    v22 = sub_1B20A9C84();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v14;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1B1F9F000, v21, v22, "Failed to delete all timer durations from core data: %@", v23, 0xCu);
      sub_1B20985B4(v24, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v24, -1, -1);
      MEMORY[0x1B2741310](v23, -1, -1);
    }

    v28 = *(v0 + 120);
    v27 = *(v0 + 128);
    v29 = *(v0 + 112);
    v30 = *(v0 + 96);

    (*(v28 + 8))(v27, v29);
    if (v30)
    {
      v32 = *(v0 + 96);
      v31 = *(v0 + 104);
      v33 = v14;
      v32(v14);
    }
  }

  v35 = *(v0 + 128);
  v34 = *(v0 + 136);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1B2080BEC()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_1B2080E4C;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_1B2080D08;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B2080D08()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = sub_1B205E940();
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C74();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v5, v6, "Deleted all timer durations from core data", v7, 2u);
    MEMORY[0x1B2741310](v7, -1, -1);
  }

  v8 = v0[17];
  v9 = v0[14];
  v10 = v0[15];
  v11 = v0[12];

  (*(v10 + 8))(v8, v9);
  if (v11)
  {
    v12 = v0[13];
    (v0[12])(0);
  }

  v14 = v0[16];
  v13 = v0[17];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1B2080E4C()
{
  v1 = v0[18];

  v2 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = sub_1B205E940();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_1B20A9894();
  v9 = sub_1B20A9C84();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1B1F9F000, v8, v9, "Failed to delete all timer durations from core data: %@", v10, 0xCu);
    sub_1B20985B4(v11, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v11, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);
  }

  v15 = v0[15];
  v14 = v0[16];
  v16 = v0[14];
  v17 = v0[12];

  (*(v15 + 8))(v14, v16);
  if (v17)
  {
    v19 = v0[12];
    v18 = v0[13];
    v20 = v2;
    v19(v2);
  }

  v22 = v0[16];
  v21 = v0[17];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1B208101C()
{
  v1[2] = v0;
  v2 = sub_1B20A9D34();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B20810DC, v0, 0);
}

uint64_t sub_1B20810DC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for MTCDTimerDuration();
  v6 = (*(v5 + 88))();
  v0[6] = v6;
  v7 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  v0[7] = v7;
  v8 = [*(v4 + 112) newBackgroundContext];
  v0[8] = v8;
  v9 = swift_allocObject();
  v0[9] = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v10 = *(MEMORY[0x1E695D2C0] + 4);
  v8;
  v11 = v7;
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1B2081268;
  v13 = v0[5];
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v12, v13, sub_1B2095F44, v9, v14);
}

uint64_t sub_1B2081268()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 88) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 16);
  if (v0)
  {
    v10 = sub_1B2081494;
  }

  else
  {
    v10 = sub_1B2081414;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1B2081414()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B2081494()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);

  v4 = *(v0 + 8);
  v5 = *(v0 + 88);

  return v4();
}

void *sub_1B2081604(int a1)
{
  LODWORD(v139) = a1;
  v138 = sub_1B20A9764();
  v141 = *(v138 - 8);
  v2 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v137 = &v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1B20A98B4();
  v142 = *(v144 - 1);
  v4 = *(v142 + 64);
  v5 = MEMORY[0x1EEE9AC00](v144);
  v135 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v134 = &v126 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v143 = &v126 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v126 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F500, qword_1B20B9150);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v126 - v15;
  v148 = sub_1B20A97B4();
  v17 = *(v148 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v148);
  v136 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v126 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v145 = &v126 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v126 - v26;
  swift_defaultActor_initialize();
  v28 = *v1;
  v146 = v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [objc_opt_self() bundleForClass_];
  v31 = sub_1B20A9A64();
  v32 = sub_1B20A9A64();
  v33 = [v30 URLForResource:v31 withExtension:v32];

  if (!v33)
  {
    sub_1B20915B0();
    swift_allocError();
    *v59 = 0;
    swift_willThrow();
LABEL_12:
    type metadata accessor for CoreDataStoreActor();
    v63 = v146;
    swift_defaultActor_destroy();
    swift_deallocPartialClassInstance();
    return v63;
  }

  sub_1B20A9794();

  v34 = objc_allocWithZone(MEMORY[0x1E695D638]);
  v35 = sub_1B20A9784();
  v36 = [v34 initWithContentsOfURL_];

  v37 = v27;
  if (!v36)
  {
    sub_1B20915B0();
    swift_allocError();
    *v60 = 1;
    swift_willThrow();
LABEL_9:
    (*(v17 + 8))(v37, v148);
    goto LABEL_12;
  }

  if ((v139 & 1) == 0)
  {
    v61 = type metadata accessor for MTCDUtilities();
    v62 = v140;
    (*(v61 + 80))(0xD000000000000022, 0x80000001B20D3610);
    v39 = v143;
    if (v62)
    {
      (*(v17 + 8))(v37, v148);

      goto LABEL_12;
    }

    v140 = 0;
    v38 = v148;
    if ((*(v17 + 48))(v16, 1, v148) != 1)
    {
      goto LABEL_5;
    }

    sub_1B20985B4(v16, &qword_1EB79F500, qword_1B20B9150);
    v119 = sub_1B205E940();
    v120 = v142;
    v121 = v144;
    (*(v142 + 16))(v12, v119, v144);
    v122 = sub_1B20A9894();
    v123 = sub_1B20A9C84();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_1B1F9F000, v122, v123, "Failed to create grouped container url for core data stores", v124, 2u);
      MEMORY[0x1B2741310](v124, -1, -1);
    }

    (*(v120 + 8))(v12, v121);
    sub_1B20915B0();
    swift_allocError();
    *v125 = 2;
    swift_willThrow();

    goto LABEL_9;
  }

  sub_1B20A9774();
  v38 = v148;
  (*(v17 + 56))(v16, 0, 1, v148);
  v39 = v143;
LABEL_5:
  v139 = v36;
  v132 = v37;
  v40 = v145;
  (*(v17 + 32))(v145, v16, v38);
  v41 = sub_1B205E940();
  v42 = v142;
  v43 = *(v142 + 16);
  v44 = v39;
  v129 = v41;
  v130 = v43;
  v45 = v144;
  v131 = v142 + 16;
  v43(v44);
  (*(v17 + 16))(v23, v40, v38);
  v46 = sub_1B20A9894();
  v47 = sub_1B20A9C74();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v147[0] = v49;
    *v48 = 136315138;
    sub_1B20916FC(&qword_1EB79CEA0, 255, MEMORY[0x1E6968FB0]);
    v50 = sub_1B20A9F74();
    v51 = v38;
    v53 = v52;
    v54 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v133 = *(v17 + 8);
    v133(v23, v51);
    v55 = sub_1B2061574(v50, v53, v147);

    *(v48 + 4) = v55;
    _os_log_impl(&dword_1B1F9F000, v46, v47, "Created grouped container url: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x1B2741310](v49, -1, -1);
    MEMORY[0x1B2741310](v48, -1, -1);

    v56 = v143;
    v57 = *(v142 + 8);
    v58 = v144;
  }

  else
  {

    v54 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v133 = *(v17 + 8);
    v133(v23, v38);
    v57 = *(v42 + 8);
    v56 = v143;
    v58 = v45;
  }

  v143 = v57;
  (v57)(v56, v58);
  strcpy(v147, "local.sqlite");
  BYTE5(v147[1]) = 0;
  HIWORD(v147[1]) = -5120;
  v64 = v141;
  v65 = *(v141 + 104);
  v67 = v137;
  v66 = v138;
  v128 = *MEMORY[0x1E6968F70];
  v127 = v65;
  v65(v137);
  sub_1B2095F5C();
  v68 = v136;
  sub_1B20A97A4();
  v69 = *(v64 + 8);
  v141 = v64 + 8;
  v69(v67, v66);
  v70 = objc_allocWithZone(MEMORY[0x1E695D6C8]);
  v71 = sub_1B20A9784();
  v72 = [v70 initWithURL_];

  v73 = v68;
  v74 = v133;
  v133(v73, v148);
  v75 = sub_1B20A9A64();
  [v72 setConfiguration_];

  v76 = type metadata accessor for MTCDUtilities();
  if ((*(v76 + 88))())
  {
    v126 = v72;
    v135 = v54;
    v77 = v134;
    v130(v134, v129, v144);
    v78 = sub_1B20A9894();
    v79 = sub_1B20A9C74();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_1B1F9F000, v78, v79, "Supports cloudkit, loading NSPersistentCloudKitContainer", v80, 2u);
      MEMORY[0x1B2741310](v80, -1, -1);
    }

    (v143)(v77, v144);
    strcpy(v147, "cloud.sqlite");
    BYTE5(v147[1]) = 0;
    HIWORD(v147[1]) = -5120;
    v82 = v137;
    v81 = v138;
    v127(v137, v128, v138);
    v83 = v136;
    sub_1B20A97A4();
    v69(v82, v81);
    v84 = objc_allocWithZone(MEMORY[0x1E695D6C8]);
    v85 = sub_1B20A9784();
    v86 = [v84 initWithURL_];

    v87 = v133;
    v133(v83, v148);
    v88 = sub_1B20A9A64();
    [v86 setConfiguration_];

    v89 = objc_allocWithZone(MEMORY[0x1E695D680]);
    v90 = sub_1B20A9A64();
    v91 = [v89 initWithContainerIdentifier_];
    v144 = v91;

    v92 = sub_1B20A9A64();
    [v91 setApsConnectionMachServiceName_];

    [v86 setCloudKitContainerOptions_];
    v93 = objc_allocWithZone(MEMORY[0x1E695D668]);
    v94 = v139;
    v95 = sub_1B20A9A64();
    v96 = [v93 initWithName:v95 managedObjectModel:v94];

    v63 = v146;
    v146[14] = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4F0, &qword_1B20B9128);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_1B20B8EA0;
    v98 = v126;
    *(v97 + 32) = v86;
    *(v97 + 40) = v98;
    sub_1B20982AC(0, &qword_1EB79CE00, 0x1E695D6C8);
    v99 = v96;
    v100 = v86;
    v101 = v98;
    v102 = sub_1B20A9AF4();
    v72 = v98;
    v103 = v145;

    [v99 setPersistentStoreDescriptions_];

    v104 = v132;
  }

  else
  {
    v87 = v74;
    v105 = v135;
    v106 = v144;
    v130(v135, v129, v144);
    v107 = sub_1B20A9894();
    v108 = sub_1B20A9C74();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&dword_1B1F9F000, v107, v108, "Loading NSPersistentContainer", v109, 2u);
      MEMORY[0x1B2741310](v109, -1, -1);
    }

    (v143)(v105, v106);
    v110 = objc_allocWithZone(MEMORY[0x1E695D688]);
    v111 = v139;
    v112 = sub_1B20A9A64();
    v113 = [v110 initWithName:v112 managedObjectModel:v111];

    v63 = v146;
    v146[14] = v113;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4F0, &qword_1B20B9128);
    v114 = swift_allocObject();
    *(v114 + 16) = xmmword_1B20B8E90;
    *(v114 + 32) = v72;
    sub_1B20982AC(0, &qword_1EB79CE00, 0x1E695D6C8);
    v115 = v72;
    v99 = v113;
    v102 = sub_1B20A9AF4();

    [v99 setPersistentStoreDescriptions_];
    v104 = v132;
    v103 = v145;
  }

  v116 = [v63[14] viewContext];
  [v116 setAutomaticallyMergesChangesFromParent_];

  v117 = v148;
  v87(v103, v148);
  v87(v104, v117);
  return v63;
}

uint64_t sub_1B2082590()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B2098894;

  return sub_1B20674CC(v3, v4, v5, v2);
}

uint64_t sub_1B2082624@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_1B20A9774();
    v3 = sub_1B20A97B4();
    return (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
  }

  else
  {
    v5 = type metadata accessor for MTCDUtilities();
    return (*(v5 + 80))(0xD000000000000022, 0x80000001B20D3610);
  }
}

uint64_t sub_1B20826F8()
{
  v1[2] = v0;
  v2 = sub_1B20A98B4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B20827B8, v0, 0);
}

uint64_t sub_1B20827B8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_1B205E940();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C74();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v5, v6, "Loading data store", v7, 2u);
    MEMORY[0x1B2741310](v7, -1, -1);
  }

  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[2];
  v11 = v0[3];

  (*(v9 + 8))(v8, v11);
  sub_1B20916FC(&qword_1EB79CE80, v12, type metadata accessor for CoreDataStoreActor);
  v13 = *(MEMORY[0x1E69E8920] + 4);
  v14 = swift_task_alloc();
  v0[6] = v14;
  *v14 = v0;
  v14[1] = sub_1B208298C;
  v15 = v0[2];

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1B208298C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_1B2082B1C;
  }

  else
  {
    v6 = sub_1B2082AB8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1B2082AB8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B2082B1C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

void sub_1B2082B80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F530, &qword_1B20B9528);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 112);
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  *(v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1B2098344;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B20835C8;
  aBlock[3] = &block_descriptor_760;
  v12 = _Block_copy(aBlock);

  [v9 loadPersistentStoresWithCompletionHandler_];
  _Block_release(v12);
}

id sub_1B2082D50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v101[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1B20A98B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v90 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v90 - v20;
  if (a2)
  {
    v22 = sub_1B20A9744();
    v23 = sub_1B205E940();
    (*(v8 + 16))(v21, v23, v7);
    v24 = v22;
    v25 = sub_1B20A9894();
    v26 = sub_1B20A9C84();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      LODWORD(v99) = v26;
      v28 = v27;
      v98 = swift_slowAlloc();
      v101[0] = v98;
      *v28 = 136315138;
      v29 = v24;
      v100 = v7;
      v30 = v29;
      v31 = [v29 description];
      v32 = v8;
      v33 = sub_1B20A9A74();
      v35 = v34;

      v36 = sub_1B2061574(v33, v35, v101);

      *(v28 + 4) = v36;
      _os_log_impl(&dword_1B1F9F000, v25, v99, "Error loading persistent store: %s", v28, 0xCu);
      v37 = v98;
      __swift_destroy_boxed_opaque_existential_0(v98);
      MEMORY[0x1B2741310](v37, -1, -1);
      MEMORY[0x1B2741310](v28, -1, -1);

      (*(v32 + 8))(v21, v100);
    }

    else
    {

      (*(v8 + 8))(v21, v7);
    }

    v101[0] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F530, &qword_1B20B9528);
    result = sub_1B20A9B74();
  }

  else
  {
    v100 = v19;
    v96 = a4;
    v97 = v18;
    v38 = sub_1B205E940();
    v39 = *(v8 + 16);
    v98 = (v8 + 16);
    v99 = v38;
    v39(v17);
    v40 = v8;
    v41 = a1;
    v42 = sub_1B20A9894();
    v43 = sub_1B20A9C74();

    v44 = os_log_type_enabled(v42, v43);
    v95 = v12;
    if (v44)
    {
      v45 = swift_slowAlloc();
      v92 = v40;
      v46 = v45;
      v91 = swift_slowAlloc();
      v101[0] = v91;
      *v46 = 136315138;
      v47 = v41;
      v93 = v41;
      v48 = v47;
      v49 = [v47 description];
      v50 = sub_1B20A9A74();
      v94 = v39;
      v52 = v51;

      v41 = v93;
      v53 = sub_1B2061574(v50, v52, v101);
      v39 = v94;

      *(v46 + 4) = v53;
      _os_log_impl(&dword_1B1F9F000, v42, v43, "Loaded persistent store: %s", v46, 0xCu);
      v54 = v91;
      __swift_destroy_boxed_opaque_existential_0(v91);
      MEMORY[0x1B2741310](v54, -1, -1);
      MEMORY[0x1B2741310](v46, -1, -1);

      v40 = v92;
    }

    else
    {
    }

    v56 = *(v40 + 8);
    v56(v17, v7);
    result = [v41 configuration];
    v57 = v100;
    if (result)
    {
      v58 = result;
      v59 = sub_1B20A9A74();
      v61 = v60;

      if (v59 == 0x6C61636F4CLL && v61 == 0xE500000000000000)
      {
      }

      else
      {
        v62 = sub_1B20A9F84();

        if ((v62 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      (v39)(v57, v99, v7);
      v63 = sub_1B20A9894();
      v64 = sub_1B20A9C74();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_1B1F9F000, v63, v64, "Local persistent store loaded, proceeding", v65, 2u);
        MEMORY[0x1B2741310](v65, -1, -1);
      }

      v56(v57, v7);
      v66 = type metadata accessor for MTCDUtilities();
      if ((*(v66 + 88))())
      {
        v67 = *(v96 + 112);
        objc_opt_self();
        v68 = swift_dynamicCastObjCClassUnconditional();
        v101[0] = 0;
        v69 = v67;
        v70 = [v68 initializeCloudKitSchemaWithOptions:0 error:v101];
        v71 = v101[0];
        if (v70)
        {
          (v39)(v97, v99, v7);
          v72 = v71;
          v73 = sub_1B20A9894();
          v74 = sub_1B20A9C74();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            *v75 = 0;
            _os_log_impl(&dword_1B1F9F000, v73, v74, "Successfully initialized cloud schema", v75, 2u);
            MEMORY[0x1B2741310](v75, -1, -1);
          }

          v76 = v97;
        }

        else
        {
          v77 = v101[0];
          v78 = v7;
          v79 = sub_1B20A9754();

          swift_willThrow();
          v80 = v95;
          v100 = v78;
          (v39)(v95, v99, v78);
          v81 = v79;
          v82 = sub_1B20A9894();
          v83 = sub_1B20A9C84();

          if (os_log_type_enabled(v82, v83))
          {
            v84 = v80;
            v85 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            *v85 = 138412290;
            v87 = v79;
            v88 = _swift_stdlib_bridgeErrorToNSError();
            *(v85 + 4) = v88;
            *v86 = v88;
            _os_log_impl(&dword_1B1F9F000, v82, v83, "Error initializing cloud schema: %@", v85, 0xCu);
            sub_1B20985B4(v86, &qword_1EB79F4B0, &qword_1B20B8ED8);
            MEMORY[0x1B2741310](v86, -1, -1);
            MEMORY[0x1B2741310](v85, -1, -1);

            v76 = v84;
          }

          else
          {

            v76 = v80;
          }

          v7 = v100;
        }

        v56(v76, v7);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F530, &qword_1B20B9528);
      result = sub_1B20A9B84();
    }
  }

LABEL_27:
  v89 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B20835C8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t sub_1B208367C()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1B20836E0(void *a1, void *a2, unint64_t a3)
{
  v88 = a2;
  v90[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1B20A9874();
  v87 = *(v5 - 8);
  v6 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F568, &unk_1B20B9560);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v63 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB79F640, &qword_1B20B8D08);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v63 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v63 - v21;
  type metadata accessor for MTCDAlarm();
  v23 = v89;
  result = sub_1B20A9D44();
  v63 = v23;
  if (!v23)
  {
    v81 = v12;
    v82 = v9;
    v85 = v22;
    v75 = v17;
    v76 = v20;
    v72 = v8;
    v69 = a1;
    v66 = result;
    if (result >> 62)
    {
      goto LABEL_43;
    }

    v26 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (2)
    {
      v27 = v69;
      v28 = v76;
      v29 = v85;
      if (!v26)
      {
LABEL_36:

        v90[0] = 0;
        if ([v27 save_])
        {
          result = v90[0];
        }

        else
        {
          v61 = v90[0];
          v62 = sub_1B20A9754();

          v63 = v62;
          result = swift_willThrow();
        }

        goto LABEL_2;
      }

      v79 = a3 & 0xFFFFFFFFFFFFFF8;
      if (a3 >> 62)
      {
        v83 = sub_1B20A9DE4();
      }

      else
      {
        v83 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v30 = 0;
      v68 = v66 & 0xC000000000000001;
      v65 = v66 & 0xFFFFFFFFFFFFFF8;
      v64 = v66 + 32;
      v80 = a3 & 0xC000000000000001;
      v89 = (v87 + 56);
      v78 = (v87 + 48);
      v71 = (v87 + 32);
      v74 = (v87 + 8);
      v67 = v26;
      v77 = a3;
LABEL_11:
      if (v68)
      {
        v31 = MEMORY[0x1B27403C0](v30, v66);
      }

      else
      {
        if (v30 >= *(v65 + 16))
        {
          goto LABEL_42;
        }

        v31 = *(v64 + 8 * v30);
      }

      v84 = v31;
      v32 = __OFADD__(v30, 1);
      v33 = v30 + 1;
      if (v32)
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        v26 = sub_1B20A9DE4();
        continue;
      }

      break;
    }

    v70 = v33;
    if (!v83)
    {
      goto LABEL_10;
    }

    v34 = 0;
    while (1)
    {
      if (v80)
      {
        v39 = MEMORY[0x1B27403C0](v34, a3);
      }

      else
      {
        if (v34 >= *(v79 + 16))
        {
          goto LABEL_40;
        }

        v39 = *(a3 + 8 * v34 + 32);
      }

      v40 = v39;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v86 = v34 + 1;
      v87 = v34;
      v41 = [v39 alarmID];
      sub_1B20A9864();

      v42 = *v89;
      v43 = 1;
      (*v89)(v29, 0, 1, v5);
      v44 = [v84 mtid];
      v88 = v40;
      if (v44)
      {
        v45 = v44;
        sub_1B20A9864();

        v43 = 0;
      }

      v42(v28, v43, 1, v5);
      v46 = v81;
      v47 = *(v82 + 48);
      v29 = v85;
      sub_1B2063BF8(v85, v81, &unk_1EB79F640, &qword_1B20B8D08);
      sub_1B2063BF8(v28, v46 + v47, &unk_1EB79F640, &qword_1B20B8D08);
      v48 = *v78;
      if ((*v78)(v46, 1, v5) == 1)
      {
        break;
      }

      v49 = v75;
      sub_1B2063BF8(v46, v75, &unk_1EB79F640, &qword_1B20B8D08);
      if (v48(v46 + v47, 1, v5) == 1)
      {
        v50 = v76;
        sub_1B20985B4(v76, &unk_1EB79F640, &qword_1B20B8D08);
        v29 = v85;
        sub_1B20985B4(v85, &unk_1EB79F640, &qword_1B20B8D08);
        v35 = v50;
        (*v74)(v49, v5);
        v37 = v46;
LABEL_19:
        sub_1B20985B4(v37, &qword_1EB79F568, &unk_1B20B9560);
        v28 = v35;
        v38 = v88;
        goto LABEL_20;
      }

      v51 = v72;
      (*v71)(v72, v46 + v47, v5);
      sub_1B20916FC(&qword_1EB79CE98, 255, MEMORY[0x1E69695A8]);
      v73 = sub_1B20A9A54();
      v52 = *v74;
      (*v74)(v51, v5);
      v53 = v76;
      sub_1B20985B4(v76, &unk_1EB79F640, &qword_1B20B8D08);
      v54 = v85;
      sub_1B20985B4(v85, &unk_1EB79F640, &qword_1B20B8D08);
      v55 = v49;
      v28 = v53;
      v29 = v54;
      v52(v55, v5);
      sub_1B20985B4(v46, &unk_1EB79F640, &qword_1B20B8D08);
      v38 = v88;
      if (v73)
      {
        goto LABEL_34;
      }

LABEL_20:

      v34 = v87 + 1;
      a3 = v77;
      if (v86 == v83)
      {
        goto LABEL_10;
      }
    }

    v35 = v28;
    sub_1B20985B4(v28, &unk_1EB79F640, &qword_1B20B8D08);
    sub_1B20985B4(v29, &unk_1EB79F640, &qword_1B20B8D08);
    v36 = v48(v46 + v47, 1, v5) == 1;
    v37 = v46;
    if (v36)
    {
      sub_1B20985B4(v46, &unk_1EB79F640, &qword_1B20B8D08);
      v38 = v88;
LABEL_34:
      v56 = v84;
      v57 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *v84) + 0x50))(v38);
      v58 = [v56 sound];
      if (v58)
      {
        v59 = v58;
        v60 = [v38 sound];
        (*((*v57 & *v59) + 0x50))();

        v29 = v85;
      }

      a3 = v77;
LABEL_10:

      v30 = v70;
      v27 = v69;
      if (v70 == v67)
      {
        goto LABEL_36;
      }

      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_2:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B2083F18(void *a1, uint64_t a2, unint64_t a3)
{
  v248 = a3;
  v272 = *MEMORY[0x1E69E9840];
  v264 = sub_1B20A9874();
  v227 = *(v264 - 8);
  v4 = *(v227 + 64);
  MEMORY[0x1EEE9AC00](v264);
  v250 = v222 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F568, &unk_1B20B9560);
  v6 = *(*(v261 - 8) + 64);
  MEMORY[0x1EEE9AC00](v261);
  v235 = v222 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB79F640, &qword_1B20B8D08);
  v9 = *(v8 - 8);
  v266 = v8;
  v267 = v9;
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v233 = v222 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v232 = v222 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v236 = v222 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v245 = v222 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v253 = v222 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v254 = v222 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v255 = v222 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = v222 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = v222 - v28;
  v246 = sub_1B20A98B4();
  v230 = *(v246 - 8);
  v30 = v230[8];
  v31 = MEMORY[0x1EEE9AC00](v246);
  v33 = v222 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = v222 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = v222 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v41 = v222 - v40;
  v42 = type metadata accessor for MTCDAlarm();
  v244 = a1;
  v43 = v268;
  result = sub_1B20A9D44();
  if (v43)
  {
    goto LABEL_2;
  }

  v46 = result;
  v268 = v29;
  v260 = v42;
  v234 = v39;
  v226 = v36;
  v224 = v33;
  v222[1] = 0;
  v47 = sub_1B205E940();
  v48 = v230[2];
  v242 = v47;
  v49 = v246;
  v243 = v230 + 2;
  v241 = v48;
  (v48)(v41);

  v50 = sub_1B20A9894();
  v51 = sub_1B20A9C74();

  v52 = os_log_type_enabled(v50, v51);
  v53 = v46 >> 62;
  v54 = v46;
  v265 = v46;
  v225 = v46 >> 62;
  if (v52)
  {
    LODWORD(v259) = v51;
    v262 = v50;
    v263 = v41;
    v55 = swift_slowAlloc();
    v258 = swift_slowAlloc();
    v270 = v258;
    v257 = v55;
    *v55 = 136315138;
    if (!v53)
    {
      v56 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_144;
  }

  v240 = v230[1];
  v240(v41, v49);
  v58 = v248;
  v72 = v235;
  v27 = v260;
LABEL_21:
  v80 = v255;
  v223 = v58 >> 62;
  if (!(v58 >> 62))
  {
    v81 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_23;
  }

  while (1)
  {
    v81 = sub_1B20A9DE4();
LABEL_23:
    v82 = v254;
    if (v81)
    {
      v83 = v80;
      v258 = (v54 & 0xFFFFFFFFFFFFFF8);
      if (v225)
      {
        v263 = sub_1B20A9DE4();
      }

      else
      {
        v263 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v80 = 0;
      v239 = v248 & 0xC000000000000001;
      v229 = v248 & 0xFFFFFFFFFFFFFF8;
      v228 = v248 + 32;
      v259 = v54 & 0xC000000000000001;
      v257 = (v227 + 56);
      v256 = (v227 + 48);
      v249 = (v227 + 32);
      v252 = (v227 + 8);
      v238 = v230 + 1;
      *&v71 = 136315138;
      v231 = v71;
      v237 = v81;
      while (1)
      {
        if (v239)
        {
          v86 = MEMORY[0x1B27403C0](v80, v248);
        }

        else
        {
          if (v80 >= *(v229 + 16))
          {
            goto LABEL_139;
          }

          v86 = *(v228 + 8 * v80);
        }

        v87 = v86;
        v88 = __OFADD__(v80++, 1);
        if (v88)
        {
          goto LABEL_137;
        }

        v247 = v80;
        if (!v263)
        {
LABEL_53:
          v115 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v116 = v244;
          v117 = [v115 initWithContext_];
          v118 = MEMORY[0x1E69E7D40];
          (*((*MEMORY[0x1E69E7D40] & *v117) + 0x50))(v87);
          type metadata accessor for MTCDSound();
          v119 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
          v120 = [v87 sound];
          (*((*v118 & *v119) + 0x50))();

          v268 = v117;
          [v117 setSound_];
          v121 = v234;
          v122 = v246;
          v241(v234, v242, v246);
          v123 = v87;
          v124 = sub_1B20A9894();
          v125 = sub_1B20A9C74();

          if (os_log_type_enabled(v124, v125))
          {
            v126 = swift_slowAlloc();
            v267 = swift_slowAlloc();
            v270 = v267;
            *v126 = v231;
            v127 = [v123 alarmIDString];
            v262 = sub_1B20A9A74();
            LODWORD(v266) = v125;
            v129 = v128;

            v130 = sub_1B2061574(v262, v129, &v270);

            *(v126 + 4) = v130;
            _os_log_impl(&dword_1B1F9F000, v124, v266, "Added new sleep alarm: %s", v126, 0xCu);
            v131 = v267;
            __swift_destroy_boxed_opaque_existential_0(v267);
            MEMORY[0x1B2741310](v131, -1, -1);
            MEMORY[0x1B2741310](v126, -1, -1);

            v84 = v121;
            v85 = v246;
          }

          else
          {

            v84 = v121;
            v85 = v122;
          }

          v240(v84, v85);
          v83 = v255;
          v82 = v254;
          v72 = v235;
          goto LABEL_29;
        }

        v89 = 0;
        v262 = v86;
        while (1)
        {
          if (v259)
          {
            v92 = MEMORY[0x1B27403C0](v89, v54);
          }

          else
          {
            if (v89 >= *(v258 + 2))
            {
              goto LABEL_133;
            }

            v92 = *(v54 + 8 * v89 + 32);
          }

          v80 = v92;
          if (__OFADD__(v89, 1))
          {
            __break(1u);
LABEL_133:
            __break(1u);
            goto LABEL_134;
          }

          v266 = (v89 + 1);
          v267 = v89;
          v93 = [v92 mtid];
          v268 = v80;
          if (v93)
          {
            v94 = v93;
            sub_1B20A9864();

            v95 = 0;
          }

          else
          {
            v95 = 1;
          }

          v96 = *v257;
          v97 = v264;
          (*v257)(v83, v95, 1, v264);
          v98 = [v87 alarmID];
          sub_1B20A9864();

          v96(v82, 0, 1, v97);
          v99 = *(v261 + 48);
          sub_1B2063BF8(v83, v72, &unk_1EB79F640, &qword_1B20B8D08);
          sub_1B2063BF8(v82, v72 + v99, &unk_1EB79F640, &qword_1B20B8D08);
          v100 = *v256;
          v101 = v97;
          if ((*v256)(v72, 1, v97) == 1)
          {
            break;
          }

          v102 = v253;
          sub_1B2063BF8(v72, v253, &unk_1EB79F640, &qword_1B20B8D08);
          v103 = v97;
          v104 = v100(v72 + v99, 1, v97);
          v54 = v265;
          v80 = v268;
          if (v104 == 1)
          {
            v105 = v102;
            v106 = v254;
            sub_1B20985B4(v254, &unk_1EB79F640, &qword_1B20B8D08);
            v107 = v255;
            sub_1B20985B4(v255, &unk_1EB79F640, &qword_1B20B8D08);
            v108 = v105;
            v90 = v107;
            v82 = v106;
            (*v252)(v108, v101);
            v87 = v262;
            goto LABEL_38;
          }

          v109 = v250;
          (*v249)(v250, v72 + v99, v101);
          sub_1B20916FC(&qword_1EB79CE98, 255, MEMORY[0x1E69695A8]);
          LODWORD(v251) = sub_1B20A9A54();
          v110 = *v252;
          (*v252)(v109, v101);
          v111 = v102;
          v112 = v254;
          sub_1B20985B4(v254, &unk_1EB79F640, &qword_1B20B8D08);
          v113 = v255;
          sub_1B20985B4(v255, &unk_1EB79F640, &qword_1B20B8D08);
          v114 = v113;
          v82 = v112;
          v83 = v114;
          v110(v111, v103);
          v54 = v265;
          sub_1B20985B4(v72, &unk_1EB79F640, &qword_1B20B8D08);
          v27 = v260;
          v87 = v262;
          if (v251)
          {
            goto LABEL_56;
          }

LABEL_39:

          v89 = (v267 + 1);
          if (v266 == v263)
          {
            goto LABEL_53;
          }
        }

        sub_1B20985B4(v82, &unk_1EB79F640, &qword_1B20B8D08);
        v90 = v83;
        sub_1B20985B4(v83, &unk_1EB79F640, &qword_1B20B8D08);
        v91 = v100(v72 + v99, 1, v101);
        v54 = v265;
        v87 = v262;
        if (v91 != 1)
        {
          break;
        }

        sub_1B20985B4(v72, &unk_1EB79F640, &qword_1B20B8D08);
        v27 = v260;
        v80 = v268;
LABEL_56:
        v132 = MEMORY[0x1E69E7D40];
        (*((*MEMORY[0x1E69E7D40] & *v80) + 0x50))(v87);
        v133 = [v80 sound];
        if (v133)
        {
          v134 = v133;
          v135 = [v87 sound];
          (*((*v132 & *v134) + 0x50))();
        }

        v136 = v226;
        v137 = v246;
        v241(v226, v242, v246);
        v138 = v87;
        v139 = sub_1B20A9894();
        v140 = sub_1B20A9C74();

        if (os_log_type_enabled(v139, v140))
        {
          v141 = swift_slowAlloc();
          v266 = v141;
          v267 = swift_slowAlloc();
          v270 = v267;
          *v141 = v231;
          v142 = [v138 alarmIDString];
          v262 = v139;
          v143 = v140;
          v144 = v142;
          v251 = sub_1B20A9A74();
          v146 = v145;

          v147 = sub_1B2061574(v251, v146, &v270);

          v148 = v266;
          *(v266 + 4) = v147;
          v149 = v262;
          v150 = v148;
          _os_log_impl(&dword_1B1F9F000, v262, v143, "Updated sleep alarm: %s", v148, 0xCu);
          v151 = v267;
          __swift_destroy_boxed_opaque_existential_0(v267);
          MEMORY[0x1B2741310](v151, -1, -1);
          MEMORY[0x1B2741310](v150, -1, -1);

          v152 = v136;
          v153 = v246;
        }

        else
        {

          v152 = v136;
          v153 = v137;
        }

        v240(v152, v153);
        v83 = v255;
LABEL_29:
        v80 = v247;
        if (v247 == v237)
        {
          goto LABEL_62;
        }
      }

LABEL_38:
      sub_1B20985B4(v72, &qword_1EB79F568, &unk_1B20B9560);
      v27 = v260;
      v83 = v90;
      v80 = v268;
      goto LABEL_39;
    }

LABEL_62:
    v154 = v248;
    if (v223)
    {
      v54 = sub_1B20A9DE4();
    }

    else
    {
      v54 = *((v248 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v155 = v264;
    v72 = v236;
    v156 = v227;
    v157 = MEMORY[0x1E69E7CC0];
    v158 = v225;
    if (v54)
    {
      v270 = MEMORY[0x1E69E7CC0];
      sub_1B2091C38(0, v54 & ~(v54 >> 63), 0);
      if (v54 < 0)
      {
        __break(1u);
LABEL_144:
        v56 = sub_1B20A9DE4();
LABEL_6:
        v57 = v230;
        v58 = v248;
        v60 = v267;
        v59 = v268;
        v61 = MEMORY[0x1E69E7CC0];
        if (v56)
        {
          v271 = MEMORY[0x1E69E7CC0];
          sub_1B2091C78(0, v56 & ~(v56 >> 63), 0);
          if (v56 < 0)
          {
            __break(1u);
          }

          v62 = 0;
          v61 = v271;
          v268 = (v54 & 0xC000000000000001);
          v63 = (v227 + 56);
          do
          {
            if (v268)
            {
              v64 = MEMORY[0x1B27403C0](v62, v265);
            }

            else
            {
              v64 = *(v265 + 8 * v62 + 32);
            }

            v65 = v64;
            v66 = [v64 mtid];
            if (v66)
            {
              v67 = v66;
              sub_1B20A9864();

              v68 = 0;
            }

            else
            {
              v68 = 1;
            }

            (*v63)(v27, v68, 1, v264);
            sub_1B20600E0(v27, v59);
            v271 = v61;
            v70 = *(v61 + 16);
            v69 = *(v61 + 24);
            if (v70 >= v69 >> 1)
            {
              sub_1B2091C78(v69 > 1, v70 + 1, 1);
              v61 = v271;
            }

            ++v62;
            *(v61 + 16) = v70 + 1;
            sub_1B20600E0(v59, v61 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + v60[9] * v70);
          }

          while (v56 != v62);
          v54 = v265;
          v57 = v230;
          v58 = v248;
        }

        v73 = MEMORY[0x1B2740030](v61, v266);
        v75 = v74;

        v76 = sub_1B2061574(v73, v75, &v270);

        v77 = v257;
        *(v257 + 1) = v76;
        v78 = v262;
        _os_log_impl(&dword_1B1F9F000, v262, v259, "Fetched existing sleep alarms: %s", v77, 0xCu);
        v79 = v258;
        __swift_destroy_boxed_opaque_existential_0(v258);
        MEMORY[0x1B2741310](v79, -1, -1);
        MEMORY[0x1B2741310](v77, -1, -1);

        v240 = v57[1];
        v240(v263, v246);
        v27 = v260;
        v72 = v235;
        goto LABEL_21;
      }

      v159 = 0;
      v157 = v270;
      v160 = v154;
      v161 = v154 & 0xC000000000000001;
      do
      {
        if (v161)
        {
          v162 = MEMORY[0x1B27403C0](v159, v160);
        }

        else
        {
          v162 = *(v160 + 8 * v159 + 32);
        }

        v163 = v162;
        v164 = [v162 alarmIDString];
        v165 = sub_1B20A9A74();
        v167 = v166;

        v270 = v157;
        v27 = *(v157 + 2);
        v168 = *(v157 + 3);
        if (v27 >= v168 >> 1)
        {
          sub_1B2091C38((v168 > 1), v27 + 1, 1);
          v157 = v270;
        }

        ++v159;
        *(v157 + 2) = v27 + 1;
        v169 = &v157[16 * v27];
        *(v169 + 4) = v165;
        *(v169 + 5) = v167;
        v160 = v248;
      }

      while (v54 != v159);
      v155 = v264;
      v72 = v236;
      v156 = v227;
      v158 = v225;
    }

    v170 = sub_1B20967B0(v157);

    v54 = v244;
    v259 = v170;
    v171 = v265;
    v263 = v265 & 0xFFFFFFFFFFFFFF8;
    v172 = v158 ? sub_1B20A9DE4() : *((v265 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v267 = (v156 + 56);
    v268 = (v171 & 0xC000000000000001);
    v173 = (v156 + 48);
    v262 = (v156 + 16);
    v261 = v156 + 8;
    v266 = v172;
    if (!v172)
    {
      break;
    }

    v80 = 0;
    v260 = MEMORY[0x1E69E7CC0];
    v174 = v245;
LABEL_79:
    v175 = v80;
    while (1)
    {
      if (v268)
      {
        v176 = MEMORY[0x1B27403C0](v175, v265);
      }

      else
      {
        if (v175 >= *(v263 + 16))
        {
          goto LABEL_135;
        }

        v176 = *(v265 + 8 * v175 + 32);
      }

      v27 = v176;
      v80 = v175 + 1;
      if (__OFADD__(v175, 1))
      {
        break;
      }

      v177 = [v176 mtid];
      if (v177)
      {
        v178 = v177;
        sub_1B20A9864();

        v72 = v236;
        v155 = v264;
        v179 = 0;
      }

      else
      {
        v179 = 1;
      }

      (*v267)(v72, v179, 1, v155);
      sub_1B20600E0(v72, v174);
      if (!(*v173)(v174, 1, v155))
      {
        v180 = v250;
        (v262->isa)(v250, v174, v155);
        sub_1B20985B4(v174, &unk_1EB79F640, &qword_1B20B8D08);
        v181 = sub_1B20A9844();
        v183 = v182;

        (*v261)(v180, v155);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v260 = sub_1B2091318(0, *(v260 + 2) + 1, 1, v260);
        }

        v184 = v266;
        v186 = *(v260 + 2);
        v185 = *(v260 + 3);
        v27 = v186 + 1;
        if (v186 >= v185 >> 1)
        {
          v260 = sub_1B2091318((v185 > 1), v186 + 1, 1, v260);
        }

        v187 = v260;
        *(v260 + 2) = v27;
        v188 = &v187[16 * v186];
        *(v188 + 4) = v181;
        *(v188 + 5) = v183;
        v219 = v80 == v184;
        v54 = v244;
        v155 = v264;
        v72 = v236;
        if (v219)
        {
          goto LABEL_99;
        }

        goto LABEL_79;
      }

      sub_1B20985B4(v174, &unk_1EB79F640, &qword_1B20B8D08);
      ++v175;
      if (v80 == v266)
      {
        goto LABEL_99;
      }
    }

LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
  }

  v260 = MEMORY[0x1E69E7CC0];
LABEL_99:
  v189 = sub_1B20967B0(v260);

  v269 = v189;
  sub_1B20923C0(v259);

  v190 = v224;
  v191 = v246;
  v241(v224, v242, v246);
  v192 = sub_1B20A9894();
  v193 = sub_1B20A9C74();
  if (os_log_type_enabled(v192, v193))
  {
    v194 = swift_slowAlloc();
    v260 = swift_slowAlloc();
    v270 = v260;
    *v194 = 136315138;
    swift_beginAccess();

    v195 = sub_1B20A9C44();
    v197 = v196;

    v198 = sub_1B2061574(v195, v197, &v270);
    v155 = v264;

    *(v194 + 4) = v198;
    _os_log_impl(&dword_1B1F9F000, v192, v193, "Sleep alarms to remove: %s", v194, 0xCu);
    v199 = v260;
    __swift_destroy_boxed_opaque_existential_0(v260);
    MEMORY[0x1B2741310](v199, -1, -1);
    MEMORY[0x1B2741310](v194, -1, -1);

    v200 = v224;
    v201 = v246;
  }

  else
  {

    v200 = v190;
    v201 = v191;
  }

  v240(v200, v201);
  v27 = v233;
  v72 = v232;
  v202 = v266;
  if (v266)
  {
    v260 = (v265 + 32);
    swift_beginAccess();
    v80 = 0;
    while (1)
    {
      while (1)
      {
        if (v268)
        {
          v203 = MEMORY[0x1B27403C0](v80, v265);
        }

        else
        {
          if (v80 >= *(v263 + 16))
          {
            goto LABEL_138;
          }

          v203 = *&v260[8 * v80];
        }

        v204 = v203;
        v88 = __OFADD__(v80++, 1);
        if (v88)
        {
          goto LABEL_136;
        }

        v205 = [v203 mtid];
        if (v205)
        {
          v206 = v205;
          sub_1B20A9864();

          v207 = 0;
        }

        else
        {
          v207 = 1;
        }

        (*v267)(v27, v207, 1, v155);
        sub_1B20600E0(v27, v72);
        if (!(*v173)(v72, 1, v155))
        {
          break;
        }

        sub_1B20985B4(v72, &unk_1EB79F640, &qword_1B20B8D08);
        if (v80 == v202)
        {
          goto LABEL_128;
        }
      }

      v208 = v250;
      (v262->isa)(v250, v72, v155);
      sub_1B20985B4(v72, &unk_1EB79F640, &qword_1B20B8D08);
      v209 = sub_1B20A9844();
      v211 = v210;
      (*v261)(v208, v155);
      v212 = v269;
      if (!*(v269 + 16))
      {
        break;
      }

      v213 = *(v269 + 40);
      sub_1B20AA004();

      sub_1B20A9AA4();
      v214 = sub_1B20AA024();
      v215 = -1 << *(v212 + 32);
      v216 = v214 & ~v215;
      if ((*(v212 + 56 + ((v216 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v216))
      {
        v217 = ~v215;
        while (1)
        {
          v218 = (*(v212 + 48) + 16 * v216);
          v219 = *v218 == v209 && v218[1] == v211;
          if (v219 || (sub_1B20A9F84() & 1) != 0)
          {
            break;
          }

          v216 = (v216 + 1) & v217;
          if (((*(v212 + 56 + ((v216 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v216) & 1) == 0)
          {
            goto LABEL_123;
          }
        }

        v54 = v244;
        [v244 deleteObject_];
        goto LABEL_126;
      }

LABEL_123:

      v54 = v244;
LABEL_127:
      v155 = v264;
      v27 = v233;
      v72 = v232;
      v202 = v266;
      if (v80 == v266)
      {
        goto LABEL_128;
      }
    }

LABEL_126:

    goto LABEL_127;
  }

LABEL_128:

  v270 = 0;
  if ([v54 save_])
  {
    v220 = v270;
  }

  else
  {
    v221 = v270;
    sub_1B20A9754();

    swift_willThrow();
  }

LABEL_2:
  v45 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B2085BA8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B2085BC8, v1, 0);
}

uint64_t sub_1B2085BC8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v4 = sub_1B20A9A64();
  v5 = [v3 initWithEntityName_];
  v0[5] = v5;

  [v5 setPredicate_];
  v6 = *(v2 + 112);
  v7 = swift_allocObject();
  v0[6] = v7;
  *(v7 + 16) = v5;
  v8 = *(MEMORY[0x1E695D2B0] + 4);
  v9 = v5;
  v10 = swift_task_alloc();
  v0[7] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4D8, &qword_1B20B8FB0);
  *v10 = v0;
  v10[1] = sub_1B2085D2C;

  return MEMORY[0x1EEDB64B8](v0 + 2, sub_1B2095FB8, v7, v11);
}

uint64_t sub_1B2085D2C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_1B2085EBC;
  }

  else
  {
    v6 = *(v2 + 48);
    v7 = *(v2 + 32);

    v5 = sub_1B2085E54;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B2085E54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B2085EBC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_1B2085F28()
{
  v1[2] = v0;
  v2 = sub_1B20A9D34();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2085FE8, v0, 0);
}

uint64_t sub_1B2085FE8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for MTCDAlarm();
  v6 = (*(v5 + 96))();
  v0[6] = v6;
  v7 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  v0[7] = v7;
  v8 = [*(v4 + 112) newBackgroundContext];
  v0[8] = v8;
  v9 = swift_allocObject();
  v0[9] = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v10 = *(MEMORY[0x1E695D2C0] + 4);
  v8;
  v11 = v7;
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1B2077E84;
  v13 = v0[5];
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v12, v13, sub_1B209893C, v9, v14);
}

unint64_t sub_1B2086194(void *a1, void *a2, unint64_t a3)
{
  v88 = a2;
  v90[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1B20A9874();
  v87 = *(v5 - 8);
  v6 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F568, &unk_1B20B9560);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v63 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB79F640, &qword_1B20B8D08);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v63 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v63 - v21;
  type metadata accessor for MTCDTimer();
  v23 = v89;
  result = sub_1B20A9D44();
  v63 = v23;
  if (!v23)
  {
    v81 = v12;
    v82 = v9;
    v85 = v22;
    v75 = v17;
    v76 = v20;
    v72 = v8;
    v69 = a1;
    v66 = result;
    if (result >> 62)
    {
      goto LABEL_43;
    }

    v26 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (2)
    {
      v27 = v69;
      v28 = v76;
      v29 = v85;
      if (!v26)
      {
LABEL_36:

        v90[0] = 0;
        if ([v27 save_])
        {
          result = v90[0];
        }

        else
        {
          v61 = v90[0];
          v62 = sub_1B20A9754();

          v63 = v62;
          result = swift_willThrow();
        }

        goto LABEL_2;
      }

      v79 = a3 & 0xFFFFFFFFFFFFFF8;
      if (a3 >> 62)
      {
        v83 = sub_1B20A9DE4();
      }

      else
      {
        v83 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v30 = 0;
      v68 = v66 & 0xC000000000000001;
      v65 = v66 & 0xFFFFFFFFFFFFFF8;
      v64 = v66 + 32;
      v80 = a3 & 0xC000000000000001;
      v89 = (v87 + 56);
      v78 = (v87 + 48);
      v71 = (v87 + 32);
      v74 = (v87 + 8);
      v67 = v26;
      v77 = a3;
LABEL_11:
      if (v68)
      {
        v31 = MEMORY[0x1B27403C0](v30, v66);
      }

      else
      {
        if (v30 >= *(v65 + 16))
        {
          goto LABEL_42;
        }

        v31 = *(v64 + 8 * v30);
      }

      v84 = v31;
      v32 = __OFADD__(v30, 1);
      v33 = v30 + 1;
      if (v32)
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        v26 = sub_1B20A9DE4();
        continue;
      }

      break;
    }

    v70 = v33;
    if (!v83)
    {
      goto LABEL_10;
    }

    v34 = 0;
    while (1)
    {
      if (v80)
      {
        v39 = MEMORY[0x1B27403C0](v34, a3);
      }

      else
      {
        if (v34 >= *(v79 + 16))
        {
          goto LABEL_40;
        }

        v39 = *(a3 + 8 * v34 + 32);
      }

      v40 = v39;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v86 = v34 + 1;
      v87 = v34;
      v41 = [v39 timerID];
      sub_1B20A9864();

      v42 = *v89;
      v43 = 1;
      (*v89)(v29, 0, 1, v5);
      v44 = [v84 mtid];
      v88 = v40;
      if (v44)
      {
        v45 = v44;
        sub_1B20A9864();

        v43 = 0;
      }

      v42(v28, v43, 1, v5);
      v46 = v81;
      v47 = *(v82 + 48);
      v29 = v85;
      sub_1B2063BF8(v85, v81, &unk_1EB79F640, &qword_1B20B8D08);
      sub_1B2063BF8(v28, v46 + v47, &unk_1EB79F640, &qword_1B20B8D08);
      v48 = *v78;
      if ((*v78)(v46, 1, v5) == 1)
      {
        break;
      }

      v49 = v75;
      sub_1B2063BF8(v46, v75, &unk_1EB79F640, &qword_1B20B8D08);
      if (v48(v46 + v47, 1, v5) == 1)
      {
        v50 = v76;
        sub_1B20985B4(v76, &unk_1EB79F640, &qword_1B20B8D08);
        v29 = v85;
        sub_1B20985B4(v85, &unk_1EB79F640, &qword_1B20B8D08);
        v35 = v50;
        (*v74)(v49, v5);
        v37 = v46;
LABEL_19:
        sub_1B20985B4(v37, &qword_1EB79F568, &unk_1B20B9560);
        v28 = v35;
        v38 = v88;
        goto LABEL_20;
      }

      v51 = v72;
      (*v71)(v72, v46 + v47, v5);
      sub_1B20916FC(&qword_1EB79CE98, 255, MEMORY[0x1E69695A8]);
      v73 = sub_1B20A9A54();
      v52 = *v74;
      (*v74)(v51, v5);
      v53 = v76;
      sub_1B20985B4(v76, &unk_1EB79F640, &qword_1B20B8D08);
      v54 = v85;
      sub_1B20985B4(v85, &unk_1EB79F640, &qword_1B20B8D08);
      v55 = v49;
      v28 = v53;
      v29 = v54;
      v52(v55, v5);
      sub_1B20985B4(v46, &unk_1EB79F640, &qword_1B20B8D08);
      v38 = v88;
      if (v73)
      {
        goto LABEL_34;
      }

LABEL_20:

      v34 = v87 + 1;
      a3 = v77;
      if (v86 == v83)
      {
        goto LABEL_10;
      }
    }

    v35 = v28;
    sub_1B20985B4(v28, &unk_1EB79F640, &qword_1B20B8D08);
    sub_1B20985B4(v29, &unk_1EB79F640, &qword_1B20B8D08);
    v36 = v48(v46 + v47, 1, v5) == 1;
    v37 = v46;
    if (v36)
    {
      sub_1B20985B4(v46, &unk_1EB79F640, &qword_1B20B8D08);
      v38 = v88;
LABEL_34:
      v56 = v84;
      v57 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *v84) + 0x50))(v38);
      v58 = [v56 sound];
      if (v58)
      {
        v59 = v58;
        v60 = [v38 sound];
        (*((*v57 & *v59) + 0x50))();

        v29 = v85;
      }

      a3 = v77;
LABEL_10:

      v30 = v70;
      v27 = v69;
      if (v70 == v67)
      {
        goto LABEL_36;
      }

      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_2:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B20869CC(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B20869EC, v1, 0);
}

uint64_t sub_1B20869EC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v4 = sub_1B20A9A64();
  v5 = [v3 initWithEntityName_];
  v0[5] = v5;

  [v5 setPredicate_];
  v6 = *(v2 + 112);
  v7 = swift_allocObject();
  v0[6] = v7;
  *(v7 + 16) = v5;
  v8 = *(MEMORY[0x1E695D2B0] + 4);
  v9 = v5;
  v10 = swift_task_alloc();
  v0[7] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4E8, &qword_1B20B9080);
  *v10 = v0;
  v10[1] = sub_1B2086B50;

  return MEMORY[0x1EEDB64B8](v0 + 2, sub_1B2095FE4, v7, v11);
}

uint64_t sub_1B2086B50()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_1B2098898;
  }

  else
  {
    v6 = *(v2 + 48);
    v7 = *(v2 + 32);

    v5 = sub_1B20988A0;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B2086C78(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 112) = a1;
  v3 = sub_1B20A9D34();
  *(v2 + 32) = v3;
  v4 = *(v3 - 8);
  *(v2 + 40) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  sub_1B20A9BA4();
  *(v2 + 56) = sub_1B20A9B94();
  v7 = sub_1B20A9B64();
  *(v2 + 64) = v7;
  *(v2 + 72) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B2086D70, v7, v6);
}

uint64_t sub_1B2086D70()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 112);
  *(v0 + 80) = [*(v4 + 112) viewContext];
  v6 = swift_allocObject();
  *(v0 + 88) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v7 = *(MEMORY[0x1E695D2C0] + 4);

  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F508, &qword_1B20B9178);
  *v8 = v0;
  v8[1] = sub_1B2086ED4;
  v10 = *(v0 + 48);

  return MEMORY[0x1EEDB6538](v0 + 16, v10, sub_1B209606C, v6, v9);
}

uint64_t sub_1B2086ED4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v9 = *v1;
  *(*v1 + 104) = v0;

  (*(v7 + 8))(v6, v8);

  v10 = *(v2 + 72);
  v11 = *(v2 + 64);
  if (v0)
  {
    v12 = sub_1B20870A8;
  }

  else
  {
    v12 = sub_1B2070678;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, v10);
}

uint64_t sub_1B20870A8()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_1B208714C(unsigned __int8 a1)
{
  sub_1B20AA004();
  MEMORY[0x1B2740530](a1);
  return sub_1B20AA024();
}

uint64_t sub_1B20871A8()
{
  v1 = *v0;
  sub_1B20AA004();
  MEMORY[0x1B2740530](v1);
  return sub_1B20AA024();
}

uint64_t sub_1B208721C()
{
  v1 = *v0;
  sub_1B20AA004();
  MEMORY[0x1B2740530](v1);
  return sub_1B20AA024();
}

uint64_t MTCDDataStore.addAKCAlarms(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

  os_unfair_lock_lock(v8 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v8 + 4);
  v10 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v10)
  {
    v11 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v10(v12);
    sub_1B1FA6834(v10);
  }
}

uint64_t sub_1B208737C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_1B20A98B4();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B208744C, 0, 0);
}

char *sub_1B208744C()
{
  v51 = v0;
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 104) = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_1B208781C;
    v5 = *(v0 + 48);

    return sub_1B2087FA4(v5);
  }

  else
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = *(v0 + 48);
    v11 = sub_1B205E940();
    (*(v9 + 16))(v7, v11, v8);

    v12 = sub_1B20A9894();
    v13 = sub_1B20A9C74();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 48);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v49 = v16;
      *v15 = 136315138;
      v46 = v13;
      if (v14 >> 62)
      {
        if (*(v0 + 48) < 0)
        {
          v43 = *(v0 + 48);
        }

        v17 = sub_1B20A9DE4();
      }

      else
      {
        v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = MEMORY[0x1E69E7CC0];
      log = v12;
      if (v17)
      {
        v44 = v16;
        v45 = v15;
        v50 = MEMORY[0x1E69E7CC0];
        result = sub_1B2091C38(0, v17 & ~(v17 >> 63), 0);
        if (v17 < 0)
        {
          __break(1u);
          return result;
        }

        v19 = 0;
        v18 = v50;
        v48 = *(v0 + 48) + 32;
        do
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x1B27403C0](v19, *(v0 + 48));
          }

          else
          {
            v20 = *(v48 + 8 * v19);
          }

          v21 = v20;
          v22 = [v20 identifier];
          v23 = sub_1B20A9A74();
          v25 = v24;

          v50 = v18;
          v27 = *(v18 + 16);
          v26 = *(v18 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_1B2091C38((v26 > 1), v27 + 1, 1);
            v18 = v50;
          }

          ++v19;
          *(v18 + 16) = v27 + 1;
          v28 = v18 + 16 * v27;
          *(v28 + 32) = v23;
          *(v28 + 40) = v25;
        }

        while (v17 != v19);
        v16 = v44;
        v15 = v45;
      }

      v32 = *(v0 + 96);
      v34 = *(v0 + 72);
      v33 = *(v0 + 80);
      v35 = MEMORY[0x1B2740030](v18, MEMORY[0x1E69E6158]);
      v37 = v36;

      v38 = sub_1B2061574(v35, v37, &v49);

      *(v15 + 4) = v38;
      _os_log_impl(&dword_1B1F9F000, log, v46, "Saved alarmkit alarms into core data: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1B2741310](v16, -1, -1);
      MEMORY[0x1B2741310](v15, -1, -1);

      (*(v33 + 8))(v32, v34);
    }

    else
    {
      v29 = *(v0 + 96);
      v31 = *(v0 + 72);
      v30 = *(v0 + 80);

      (*(v30 + 8))(v29, v31);
    }

    v39 = *(v0 + 64);
    (*(v0 + 56))(0);
    v41 = *(v0 + 88);
    v40 = *(v0 + 96);

    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t sub_1B208781C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1B2087C5C;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1B2087938;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

char *sub_1B2087938()
{
  v46 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);
  v5 = sub_1B205E940();
  (*(v3 + 16))(v1, v5, v2);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 48);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v44 = v10;
    *v9 = 136315138;
    if (v8 >> 62)
    {
      if (*(v0 + 48) < 0)
      {
        v38 = *(v0 + 48);
      }

      v11 = sub_1B20A9DE4();
    }

    else
    {
      v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = MEMORY[0x1E69E7CC0];
    log = v6;
    v41 = v7;
    v40 = v10;
    if (v11)
    {
      v45 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C38(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        __break(1u);
        return result;
      }

      v39 = v9;
      v14 = 0;
      v12 = v45;
      v43 = *(v0 + 48) + 32;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1B27403C0](v14, *(v0 + 48));
        }

        else
        {
          v15 = *(v43 + 8 * v14);
        }

        v16 = v15;
        v17 = [v15 identifier];
        v18 = sub_1B20A9A74();
        v20 = v19;

        v45 = v12;
        v22 = *(v12 + 16);
        v21 = *(v12 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1B2091C38((v21 > 1), v22 + 1, 1);
          v12 = v45;
        }

        ++v14;
        *(v12 + 16) = v22 + 1;
        v23 = v12 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
      }

      while (v11 != v14);
      v9 = v39;
    }

    v27 = *(v0 + 96);
    v29 = *(v0 + 72);
    v28 = *(v0 + 80);
    v30 = MEMORY[0x1B2740030](v12, MEMORY[0x1E69E6158]);
    v32 = v31;

    v33 = sub_1B2061574(v30, v32, &v44);

    *(v9 + 4) = v33;
    _os_log_impl(&dword_1B1F9F000, log, v41, "Saved alarmkit alarms into core data: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x1B2741310](v40, -1, -1);
    MEMORY[0x1B2741310](v9, -1, -1);

    (*(v28 + 8))(v27, v29);
  }

  else
  {
    v24 = *(v0 + 96);
    v26 = *(v0 + 72);
    v25 = *(v0 + 80);

    (*(v25 + 8))(v24, v26);
  }

  v34 = *(v0 + 64);
  (*(v0 + 56))(0);
  v36 = *(v0 + 88);
  v35 = *(v0 + 96);

  v37 = *(v0 + 8);

  return v37();
}

char *sub_1B2087C5C()
{
  v50 = v0;
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[6];

  v6 = sub_1B205E940();
  (*(v3 + 16))(v2, v6, v4);

  v7 = sub_1B20A9894();
  v8 = sub_1B20A9C84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[6];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v48 = v11;
    *v10 = 136315138;
    if (v9 >> 62)
    {
      if (v0[6] < 0)
      {
        v42 = v0[6];
      }

      v12 = sub_1B20A9DE4();
    }

    else
    {
      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = MEMORY[0x1E69E7CC0];
    log = v7;
    v45 = v8;
    v44 = v11;
    if (v12)
    {
      v49 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C38(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        __break(1u);
        return result;
      }

      v43 = v10;
      v15 = 0;
      v13 = v49;
      v47 = v0[6] + 32;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1B27403C0](v15, v0[6]);
        }

        else
        {
          v16 = *(v47 + 8 * v15);
        }

        v17 = v16;
        v18 = [v16 identifier];
        v19 = sub_1B20A9A74();
        v21 = v20;

        v49 = v13;
        v23 = *(v13 + 16);
        v22 = *(v13 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1B2091C38((v22 > 1), v23 + 1, 1);
          v13 = v49;
        }

        ++v15;
        *(v13 + 16) = v23 + 1;
        v24 = v13 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
      }

      while (v12 != v15);
      v10 = v43;
    }

    v28 = v0[10];
    v29 = v0[11];
    v30 = v0[9];
    v31 = MEMORY[0x1B2740030](v13, MEMORY[0x1E69E6158]);
    v33 = v32;

    v34 = sub_1B2061574(v31, v33, &v48);

    *(v10 + 4) = v34;
    _os_log_impl(&dword_1B1F9F000, log, v45, "Failed to save alarmkit alarms into core data: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x1B2741310](v44, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);

    (*(v28 + 8))(v29, v30);
  }

  else
  {
    v25 = v0[10];
    v26 = v0[11];
    v27 = v0[9];

    (*(v25 + 8))(v26, v27);
  }

  v35 = v0[15];
  v37 = v0[7];
  v36 = v0[8];
  v38 = v35;
  v37(v35);

  v40 = v0[11];
  v39 = v0[12];

  v41 = v0[1];

  return v41();
}

uint64_t sub_1B2087FA4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2088064, v1, 0);
}

uint64_t sub_1B2088064()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = [*(v0[3] + 112) newBackgroundContext];
  v0[7] = v5;
  v6 = swift_allocObject();
  v0[8] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v7 = *(MEMORY[0x1E695D2C0] + 4);

  v5;
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_1B2069E10;
  v9 = v0[6];
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v8, v9, sub_1B20964A4, v6, v10);
}

uint64_t MTCDDataStore.updateAKCAlarms(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

  os_unfair_lock_lock(v8 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v8 + 4);
  v10 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v10)
  {
    v11 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v10(v12);
    sub_1B1FA6834(v10);
  }
}

uint64_t sub_1B20882F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_1B20A98B4();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B20883C4, 0, 0);
}

char *sub_1B20883C4()
{
  v51 = v0;
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 104) = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_1B2088794;
    v5 = *(v0 + 48);

    return sub_1B2088F1C(v5);
  }

  else
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = *(v0 + 48);
    v11 = sub_1B205E940();
    (*(v9 + 16))(v7, v11, v8);

    v12 = sub_1B20A9894();
    v13 = sub_1B20A9C74();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 48);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v49 = v16;
      *v15 = 136315138;
      v46 = v13;
      if (v14 >> 62)
      {
        if (*(v0 + 48) < 0)
        {
          v43 = *(v0 + 48);
        }

        v17 = sub_1B20A9DE4();
      }

      else
      {
        v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = MEMORY[0x1E69E7CC0];
      log = v12;
      if (v17)
      {
        v44 = v16;
        v45 = v15;
        v50 = MEMORY[0x1E69E7CC0];
        result = sub_1B2091C38(0, v17 & ~(v17 >> 63), 0);
        if (v17 < 0)
        {
          __break(1u);
          return result;
        }

        v19 = 0;
        v18 = v50;
        v48 = *(v0 + 48) + 32;
        do
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x1B27403C0](v19, *(v0 + 48));
          }

          else
          {
            v20 = *(v48 + 8 * v19);
          }

          v21 = v20;
          v22 = [v20 identifier];
          v23 = sub_1B20A9A74();
          v25 = v24;

          v50 = v18;
          v27 = *(v18 + 16);
          v26 = *(v18 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_1B2091C38((v26 > 1), v27 + 1, 1);
            v18 = v50;
          }

          ++v19;
          *(v18 + 16) = v27 + 1;
          v28 = v18 + 16 * v27;
          *(v28 + 32) = v23;
          *(v28 + 40) = v25;
        }

        while (v17 != v19);
        v16 = v44;
        v15 = v45;
      }

      v32 = *(v0 + 96);
      v34 = *(v0 + 72);
      v33 = *(v0 + 80);
      v35 = MEMORY[0x1B2740030](v18, MEMORY[0x1E69E6158]);
      v37 = v36;

      v38 = sub_1B2061574(v35, v37, &v49);

      *(v15 + 4) = v38;
      _os_log_impl(&dword_1B1F9F000, log, v46, "Updated alarmkit alarms in core data: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1B2741310](v16, -1, -1);
      MEMORY[0x1B2741310](v15, -1, -1);

      (*(v33 + 8))(v32, v34);
    }

    else
    {
      v29 = *(v0 + 96);
      v31 = *(v0 + 72);
      v30 = *(v0 + 80);

      (*(v30 + 8))(v29, v31);
    }

    v39 = *(v0 + 64);
    (*(v0 + 56))(0);
    v41 = *(v0 + 88);
    v40 = *(v0 + 96);

    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t sub_1B2088794()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1B2088BD4;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1B20888B0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

char *sub_1B20888B0()
{
  v46 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);
  v5 = sub_1B205E940();
  (*(v3 + 16))(v1, v5, v2);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 48);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v44 = v10;
    *v9 = 136315138;
    if (v8 >> 62)
    {
      if (*(v0 + 48) < 0)
      {
        v38 = *(v0 + 48);
      }

      v11 = sub_1B20A9DE4();
    }

    else
    {
      v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = MEMORY[0x1E69E7CC0];
    log = v6;
    v41 = v7;
    v40 = v10;
    if (v11)
    {
      v45 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C38(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        __break(1u);
        return result;
      }

      v39 = v9;
      v14 = 0;
      v12 = v45;
      v43 = *(v0 + 48) + 32;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1B27403C0](v14, *(v0 + 48));
        }

        else
        {
          v15 = *(v43 + 8 * v14);
        }

        v16 = v15;
        v17 = [v15 identifier];
        v18 = sub_1B20A9A74();
        v20 = v19;

        v45 = v12;
        v22 = *(v12 + 16);
        v21 = *(v12 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1B2091C38((v21 > 1), v22 + 1, 1);
          v12 = v45;
        }

        ++v14;
        *(v12 + 16) = v22 + 1;
        v23 = v12 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
      }

      while (v11 != v14);
      v9 = v39;
    }

    v27 = *(v0 + 96);
    v29 = *(v0 + 72);
    v28 = *(v0 + 80);
    v30 = MEMORY[0x1B2740030](v12, MEMORY[0x1E69E6158]);
    v32 = v31;

    v33 = sub_1B2061574(v30, v32, &v44);

    *(v9 + 4) = v33;
    _os_log_impl(&dword_1B1F9F000, log, v41, "Updated alarmkit alarms in core data: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x1B2741310](v40, -1, -1);
    MEMORY[0x1B2741310](v9, -1, -1);

    (*(v28 + 8))(v27, v29);
  }

  else
  {
    v24 = *(v0 + 96);
    v26 = *(v0 + 72);
    v25 = *(v0 + 80);

    (*(v25 + 8))(v24, v26);
  }

  v34 = *(v0 + 64);
  (*(v0 + 56))(0);
  v36 = *(v0 + 88);
  v35 = *(v0 + 96);

  v37 = *(v0 + 8);

  return v37();
}

char *sub_1B2088BD4()
{
  v50 = v0;
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[6];

  v6 = sub_1B205E940();
  (*(v3 + 16))(v2, v6, v4);

  v7 = sub_1B20A9894();
  v8 = sub_1B20A9C84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[6];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v48 = v11;
    *v10 = 136315138;
    if (v9 >> 62)
    {
      if (v0[6] < 0)
      {
        v42 = v0[6];
      }

      v12 = sub_1B20A9DE4();
    }

    else
    {
      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = MEMORY[0x1E69E7CC0];
    log = v7;
    v45 = v8;
    v44 = v11;
    if (v12)
    {
      v49 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C38(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        __break(1u);
        return result;
      }

      v43 = v10;
      v15 = 0;
      v13 = v49;
      v47 = v0[6] + 32;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1B27403C0](v15, v0[6]);
        }

        else
        {
          v16 = *(v47 + 8 * v15);
        }

        v17 = v16;
        v18 = [v16 identifier];
        v19 = sub_1B20A9A74();
        v21 = v20;

        v49 = v13;
        v23 = *(v13 + 16);
        v22 = *(v13 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1B2091C38((v22 > 1), v23 + 1, 1);
          v13 = v49;
        }

        ++v15;
        *(v13 + 16) = v23 + 1;
        v24 = v13 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
      }

      while (v12 != v15);
      v10 = v43;
    }

    v28 = v0[10];
    v29 = v0[11];
    v30 = v0[9];
    v31 = MEMORY[0x1B2740030](v13, MEMORY[0x1E69E6158]);
    v33 = v32;

    v34 = sub_1B2061574(v31, v33, &v48);

    *(v10 + 4) = v34;
    _os_log_impl(&dword_1B1F9F000, log, v45, "Failed to update alarmkit alarms in core data: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x1B2741310](v44, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);

    (*(v28 + 8))(v29, v30);
  }

  else
  {
    v25 = v0[10];
    v26 = v0[11];
    v27 = v0[9];

    (*(v25 + 8))(v26, v27);
  }

  v35 = v0[15];
  v37 = v0[7];
  v36 = v0[8];
  v38 = v35;
  v37(v35);

  v40 = v0[11];
  v39 = v0[12];

  v41 = v0[1];

  return v41();
}

uint64_t sub_1B2088F1C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2088FDC, v1, 0);
}

uint64_t sub_1B2088FDC()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  type metadata accessor for AKCDAlarm();
  v6 = static AKCDAlarm.fetchRequest()();
  v0[7] = v6;
  v7 = sub_1B2096848(v5);
  [v6 setPredicate_];

  v8 = [*(v4 + 112) newBackgroundContext];
  v0[8] = v8;
  v9 = swift_allocObject();
  v0[9] = v9;
  v9[2] = v8;
  v9[3] = v6;
  v9[4] = v5;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v10 = *(MEMORY[0x1E695D2C0] + 4);
  v8;
  v11 = v6;

  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1B20753FC;
  v13 = v0[6];
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v12, v13, sub_1B2096A4C, v9, v14);
}

void sub_1B20891AC(void *a1, int a2, int a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = _Block_copy(aBlock);
  sub_1B20982AC(0, &qword_1EB79CDE8, 0x1E698A730);
  v10 = sub_1B20A9B04();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v10;
  v12[4] = a7;
  v12[5] = v11;
  v13 = a1;

  sub_1B2068230();
}

uint64_t MTCDDataStore.deleteAKCAlarms(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

  os_unfair_lock_lock(v8 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v8 + 4);
  v10 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v10)
  {
    v11 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v10(v12);
    sub_1B1FA6834(v10);
  }
}

uint64_t sub_1B20893BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_1B20A98B4();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B208948C, 0, 0);
}

uint64_t sub_1B208948C()
{
  v29 = v0;
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 104) = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_1B2089704;
    v5 = *(v0 + 48);

    return sub_1B2089BCC(v5);
  }

  else
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = *(v0 + 48);
    v11 = sub_1B205E940();
    (*(v9 + 16))(v7, v11, v8);

    v12 = sub_1B20A9894();
    v13 = sub_1B20A9C74();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 96);
    v16 = *(v0 + 72);
    v17 = *(v0 + 80);
    if (v14)
    {
      v18 = *(v0 + 48);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      v21 = MEMORY[0x1B2740030](v18, MEMORY[0x1E69E6158]);
      v23 = sub_1B2061574(v21, v22, &v28);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1B1F9F000, v12, v13, "Deleted alarmkit alarms from core data: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1B2741310](v20, -1, -1);
      MEMORY[0x1B2741310](v19, -1, -1);
    }

    (*(v17 + 8))(v15, v16);
    v24 = *(v0 + 64);
    (*(v0 + 56))(0);
    v26 = *(v0 + 88);
    v25 = *(v0 + 96);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_1B2089704()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1B20899E4;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1B2089820;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B2089820()
{
  v24 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);
  v5 = sub_1B205E940();
  (*(v3 + 16))(v1, v5, v2);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 96);
  v10 = *(v0 + 72);
  v11 = *(v0 + 80);
  if (v8)
  {
    v12 = *(v0 + 48);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    v15 = MEMORY[0x1B2740030](v12, MEMORY[0x1E69E6158]);
    v17 = sub_1B2061574(v15, v16, &v23);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1B1F9F000, v6, v7, "Deleted alarmkit alarms from core data: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1B2741310](v14, -1, -1);
    MEMORY[0x1B2741310](v13, -1, -1);
  }

  (*(v11 + 8))(v9, v10);
  v18 = *(v0 + 64);
  (*(v0 + 56))(0);
  v20 = *(v0 + 88);
  v19 = *(v0 + 96);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1B20899E4()
{
  v28 = v0;
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[6];

  v6 = sub_1B205E940();
  (*(v3 + 16))(v2, v6, v4);

  v7 = sub_1B20A9894();
  v8 = sub_1B20A9C84();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[9];
  if (v9)
  {
    v13 = v0[6];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136315138;
    v16 = MEMORY[0x1B2740030](v13, MEMORY[0x1E69E6158]);
    v18 = sub_1B2061574(v16, v17, &v27);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1B1F9F000, v7, v8, "Failed to delete alarmkit alarms from core data: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1B2741310](v15, -1, -1);
    MEMORY[0x1B2741310](v14, -1, -1);
  }

  (*(v11 + 8))(v10, v12);
  v19 = v0[15];
  v21 = v0[7];
  v20 = v0[8];
  v22 = v19;
  v21(v19);

  v24 = v0[11];
  v23 = v0[12];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1B2089BCC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2089C8C, v1, 0);
}

uint64_t sub_1B2089C8C()
{
  v1 = v0[5];
  v2 = v0[3];
  v17 = v0[4];
  v18 = v0[6];
  v3 = v0[2];
  v4 = type metadata accessor for AKCDAlarm();
  v5 = (*(v4 + 88))();
  v0[7] = v5;
  sub_1B20982AC(0, &qword_1EB79CE38, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4D0, &qword_1B20B8F70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B20B8E70;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F510, &qword_1B20B91C8);
  *(v6 + 64) = sub_1B209849C(&qword_1EB79CE50, &qword_1EB79F510, &qword_1B20B91C8);
  *(v6 + 32) = v3;

  v7 = sub_1B20A9C64();
  [v5 setPredicate_];

  v8 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  v0[8] = v8;
  v9 = [*(v2 + 112) newBackgroundContext];
  v0[9] = v9;
  v10 = swift_allocObject();
  v0[10] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  (*(v1 + 104))(v18, *MEMORY[0x1E695D2B8], v17);
  v11 = *(MEMORY[0x1E695D2C0] + 4);
  v9;
  v12 = v8;
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_1B2076DEC;
  v14 = v0[6];
  v15 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v13, v14, sub_1B209893C, v10, v15);
}

uint64_t MTCDDataStore.getAKCAlarms(includeAttributes:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

  os_unfair_lock_lock(v8 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v8 + 4);
  v10 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v10)
  {
    v11 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v10(v12);
    sub_1B1FA6834(v10);
  }
}

uint64_t sub_1B208A050(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = a4;
  *(v4 + 152) = a2;
  *(v4 + 40) = a1;
  v5 = sub_1B20A98B4();
  *(v4 + 64) = v5;
  v6 = *(v5 - 8);
  *(v4 + 72) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B208A130, 0, 0);
}

uint64_t sub_1B208A130()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 104) = v3;
  if (v3)
  {
    *(v0 + 112) = sub_1B20A9BA4();

    *(v0 + 120) = sub_1B20A9B94();
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_1B208A33C;
    v5 = *(v0 + 152);

    return sub_1B208BBB0(0, v5);
  }

  else
  {
    v7 = *(v0 + 88);
    v8 = *(v0 + 64);
    v9 = *(v0 + 72);
    v10 = sub_1B205E940();
    (*(v9 + 16))(v7, v10, v8);
    v11 = sub_1B20A9894();
    v12 = sub_1B20A9C74();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B1F9F000, v11, v12, "No alarmkit alarms fetched", v13, 2u);
      MEMORY[0x1B2741310](v13, -1, -1);
    }

    v14 = *(v0 + 88);
    v15 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 48);
    v17 = *(v0 + 56);

    (*(v16 + 8))(v14, v15);
    v18(0);
    v20 = *(v0 + 88);
    v19 = *(v0 + 96);
    v21 = *(v0 + 80);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1B208A33C(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *(*v2 + 120);
  v7 = *(*v2 + 112);
  v12 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = v3;

  v9 = sub_1B20A9B64();
  if (v3)
  {
    v10 = sub_1B208A8E8;
  }

  else
  {
    v10 = sub_1B208A49C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1B208A49C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1B208A510, 0, 0);
}

uint64_t sub_1B208A510()
{
  v45 = v0;
  v1 = v0[17];
  v2 = v0[8];
  v3 = v0[9];
  if (!v1)
  {
    v18 = v0[11];
    v19 = sub_1B205E940();
    (*(v3 + 16))(v18, v19, v2);
    v20 = sub_1B20A9894();
    v21 = sub_1B20A9C74();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1B1F9F000, v20, v21, "No alarmkit alarms fetched", v22, 2u);
      MEMORY[0x1B2741310](v22, -1, -1);
    }

    v23 = v0[11];
    v24 = v0[8];
    v25 = v0[9];
    v27 = v0[6];
    v26 = v0[7];

    (*(v25 + 8))(v23, v24);
    v27(0);
    goto LABEL_20;
  }

  v4 = v0[10];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v4, v5, v2);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[9];
  v10 = v0[10];
  v11 = v0[8];
  if (v8)
  {
    v43 = v0[10];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v44 = v13;
    *v12 = 136315138;
    v14 = type metadata accessor for AKCDAlarm();
    v15 = MEMORY[0x1B2740030](v1, v14);
    v17 = sub_1B2061574(v15, v16, &v44);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1B1F9F000, v6, v7, "Fetched alarmkit alarms: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B2741310](v13, -1, -1);
    MEMORY[0x1B2741310](v12, -1, -1);

    (*(v9 + 8))(v43, v11);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v28 = v0[17];
  if (v28 >> 62)
  {
    v29 = sub_1B20A9DE4();
    if (v29)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
LABEL_10:
      v44 = MEMORY[0x1E69E7CC0];
      result = sub_1B20A9EE4();
      if (v29 < 0)
      {
        __break(1u);
        return result;
      }

      v31 = 0;
      v32 = v0[17] & 0xC000000000000001;
      v33 = MEMORY[0x1E69E7D40];
      do
      {
        if (v32)
        {
          v34 = MEMORY[0x1B27403C0](v31, v1);
        }

        else
        {
          v34 = *(v1 + 8 * v31 + 32);
        }

        v35 = v34;
        ++v31;
        (*((*v33 & *v34) + 0x60))();

        sub_1B20A9EC4();
        v36 = v44[2];
        sub_1B20A9EF4();
        sub_1B20A9F04();
        sub_1B20A9ED4();
      }

      while (v29 != v31);

      v37 = v44;
      goto LABEL_19;
    }
  }

  v37 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v38 = v0[7];
  (v0[6])(v37);

LABEL_20:
  v40 = v0[11];
  v39 = v0[12];
  v41 = v0[10];

  v42 = v0[1];

  return v42();
}

uint64_t sub_1B208A8E8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1B208A95C, 0, 0);
}

uint64_t sub_1B208A95C()
{
  v1 = v0[18];
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  v5 = sub_1B205E940();
  (*(v4 + 16))(v2, v5, v3);
  v6 = v1;
  v7 = sub_1B20A9894();
  v8 = sub_1B20A9C84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[18];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1B1F9F000, v7, v8, "Failed to fetch alarmkit alarms: %@", v10, 0xCu);
    sub_1B20985B4(v11, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v11, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);
  }

  v14 = v0[18];
  v15 = v0[12];
  v16 = v0[8];
  v17 = v0[9];
  v19 = v0[6];
  v18 = v0[7];

  (*(v17 + 8))(v15, v16);
  v19(0);

  v21 = v0[11];
  v20 = v0[12];
  v22 = v0[10];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1B208AB28(char a1)
{
  v1[2] = sub_1B20A9BA4();
  v1[3] = sub_1B20A9B94();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_1B208ABE8;

  return sub_1B208BBB0(0, a1);
}

uint64_t sub_1B208ABE8(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *v2;
  v5[5] = v1;

  v8 = v5[3];
  v9 = v5[2];
  if (v3)
  {
    v10 = sub_1B20A9B64();
    v12 = v11;
    v13 = sub_1B208ADD0;
  }

  else
  {
    v5[6] = a1;
    v10 = sub_1B20A9B64();
    v12 = v14;
    v13 = sub_1B208AD68;
  }

  return MEMORY[0x1EEE6DFA0](v13, v10, v12);
}

uint64_t sub_1B208AD68()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[6];

  return v2(v3);
}

uint64_t sub_1B208ADD0()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

void sub_1B208AF1C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  if (a1)
  {
    sub_1B20982AC(0, a3, a4);
    v5 = sub_1B20A9AF4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a2 + 16))(a2);
}

uint64_t MTCDDataStore.getAKCAlarms(predicate:includeAttributes:completion:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  v10 = *&v4[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v11 = a1;

  v12 = v4;
  os_unfair_lock_lock(v10 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v10 + 4);
  v13 = *&v12[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v13)
  {
    v14 = *&v12[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v13(v15);
    sub_1B1FA6834(v13);
  }
}

uint64_t sub_1B208B0AC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  *(v5 + 144) = a3;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  v6 = sub_1B20A98B4();
  *(v5 + 72) = v6;
  v7 = *(v6 - 8);
  *(v5 + 80) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B208B18C, 0, 0);
}

uint64_t sub_1B208B18C()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 112) = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *v4 = v0;
    v4[1] = sub_1B208B3E4;
    v5 = *(v0 + 144);
    v6 = *(v0 + 48);

    return sub_1B208BBB0(v6, v5);
  }

  else
  {
    v8 = *(v0 + 96);
    v9 = *(v0 + 72);
    v10 = *(v0 + 80);
    v11 = *(v0 + 48);
    v12 = sub_1B205E940();
    (*(v10 + 16))(v8, v12, v9);
    v13 = v11;
    v14 = sub_1B20A9894();
    v15 = sub_1B20A9C74();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 48);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v13;
      *v18 = v16;
      v19 = v13;
      _os_log_impl(&dword_1B1F9F000, v14, v15, "No alarmkit alarms fetched with predicate: %@", v17, 0xCu);
      sub_1B20985B4(v18, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v18, -1, -1);
      MEMORY[0x1B2741310](v17, -1, -1);
    }

    v20 = *(v0 + 96);
    v21 = *(v0 + 72);
    v22 = *(v0 + 80);
    v24 = *(v0 + 56);
    v23 = *(v0 + 64);

    (*(v22 + 8))(v20, v21);
    v24(0);
    v26 = *(v0 + 96);
    v25 = *(v0 + 104);
    v27 = *(v0 + 88);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_1B208B3E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v8 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v5 = sub_1B208B9A8;
  }

  else
  {
    v6 = v3[14];

    v5 = sub_1B208B500;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B208B500()
{
  v54 = v0;
  v1 = v0[16];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[6];
  if (!v1)
  {
    v21 = v0[12];
    v22 = sub_1B205E940();
    (*(v3 + 16))(v21, v22, v2);
    v23 = v4;
    v24 = sub_1B20A9894();
    v25 = sub_1B20A9C74();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v0[6];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v23;
      *v28 = v26;
      v29 = v23;
      _os_log_impl(&dword_1B1F9F000, v24, v25, "No alarmkit alarms fetched with predicate: %@", v27, 0xCu);
      sub_1B20985B4(v28, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v28, -1, -1);
      MEMORY[0x1B2741310](v27, -1, -1);
    }

    v30 = v0[12];
    v31 = v0[9];
    v32 = v0[10];
    v34 = v0[7];
    v33 = v0[8];

    (*(v32 + 8))(v30, v31);
    v34(0);
    goto LABEL_20;
  }

  v5 = v0[13];
  v6 = sub_1B205E940();
  (*(v3 + 16))(v5, v6, v2);
  v7 = v4;

  v8 = sub_1B20A9894();
  v9 = sub_1B20A9C74();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[13];
  v12 = v0[9];
  v13 = v0[10];
  if (v10)
  {
    v50 = v0[6];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v52;
    *v14 = 136315394;
    v16 = type metadata accessor for AKCDAlarm();
    v17 = MEMORY[0x1B2740030](v1, v16);
    v51 = v12;
    v19 = sub_1B2061574(v17, v18, &v53);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v7;
    *v15 = v50;
    v20 = v7;
    _os_log_impl(&dword_1B1F9F000, v8, v9, "Fetched alarmkit alarms: %s with predicate: %@", v14, 0x16u);
    sub_1B20985B4(v15, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x1B2741310](v52, -1, -1);
    MEMORY[0x1B2741310](v14, -1, -1);

    (*(v13 + 8))(v11, v51);
  }

  else
  {

    (*(v13 + 8))(v11, v12);
  }

  v35 = v0[16];
  if (v35 >> 62)
  {
    v36 = sub_1B20A9DE4();
    if (v36)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
LABEL_10:
      v53 = MEMORY[0x1E69E7CC0];
      result = sub_1B20A9EE4();
      if (v36 < 0)
      {
        __break(1u);
        return result;
      }

      v38 = 0;
      v39 = v0[16] & 0xC000000000000001;
      v40 = MEMORY[0x1E69E7D40];
      do
      {
        if (v39)
        {
          v41 = MEMORY[0x1B27403C0](v38, v1);
        }

        else
        {
          v41 = *(v1 + 8 * v38 + 32);
        }

        v42 = v41;
        ++v38;
        (*((*v40 & *v41) + 0x60))();

        sub_1B20A9EC4();
        v43 = v53[2];
        sub_1B20A9EF4();
        sub_1B20A9F04();
        sub_1B20A9ED4();
      }

      while (v36 != v38);

      v44 = v53;
      goto LABEL_19;
    }
  }

  v44 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v45 = v0[8];
  (v0[7])(v44);

LABEL_20:
  v47 = v0[12];
  v46 = v0[13];
  v48 = v0[11];

  v49 = v0[1];

  return v49();
}

uint64_t sub_1B208B9A8()
{
  v1 = v0[17];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = v0[6];

  v7 = sub_1B205E940();
  (*(v4 + 16))(v3, v7, v5);
  v8 = v6;
  v9 = v1;
  v10 = sub_1B20A9894();
  v11 = sub_1B20A9C84();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[17];
    v13 = v0[6];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412546;
    *(v14 + 4) = v8;
    *v15 = v13;
    *(v14 + 12) = 2112;
    v16 = v8;
    v17 = v12;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    v15[1] = v18;
    _os_log_impl(&dword_1B1F9F000, v10, v11, "Failed to fetch alarmkit alarms with predicate: %@, error: %@", v14, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4B0, &qword_1B20B8ED8);
    swift_arrayDestroy();
    MEMORY[0x1B2741310](v15, -1, -1);
    MEMORY[0x1B2741310](v14, -1, -1);
  }

  v19 = v0[17];
  v21 = v0[10];
  v20 = v0[11];
  v22 = v0[8];
  v23 = v0[9];
  v24 = v0[7];

  (*(v21 + 8))(v20, v23);
  v24(0);

  v26 = v0[12];
  v25 = v0[13];
  v27 = v0[11];

  v28 = v0[1];

  return v28();
}

uint64_t sub_1B208BBB0(uint64_t a1, char a2)
{
  *(v3 + 120) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  v4 = sub_1B20A9D34();
  *(v3 + 40) = v4;
  v5 = *(v4 - 8);
  *(v3 + 48) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  sub_1B20A9BA4();
  *(v3 + 64) = sub_1B20A9B94();
  v8 = sub_1B20A9B64();
  *(v3 + 72) = v8;
  *(v3 + 80) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B208BCA8, v8, v7);
}

uint64_t sub_1B208BCA8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 120);
  v6 = *(v0 + 24);
  *(v0 + 88) = [*(v4 + 112) viewContext];
  v7 = swift_allocObject();
  *(v0 + 96) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v8 = *(MEMORY[0x1E695D2C0] + 4);
  v9 = v6;

  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F518, &qword_1B20B9200);
  *v10 = v0;
  v10[1] = sub_1B208BE18;
  v12 = *(v0 + 56);

  return MEMORY[0x1EEDB6538](v0 + 16, v12, sub_1B2096F9C, v7, v11);
}

uint64_t sub_1B208BE18()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 112) = v0;

  (*(v7 + 8))(v6, v8);

  v10 = *(v2 + 80);
  v11 = *(v2 + 72);
  if (v0)
  {
    v12 = sub_1B208C060;
  }

  else
  {
    v12 = sub_1B208BFEC;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, v10);
}

uint64_t sub_1B208BFEC()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[2];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1B208C060()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_1B208C1D8(uint64_t a1)
{
  sub_1B20982AC(0, &qword_1EB79CE38, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4D0, &qword_1B20B8F70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B20B8E70;
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F510, &qword_1B20B91C8);
  *(v2 + 64) = sub_1B209849C(&qword_1EB79CE50, &qword_1EB79F510, &qword_1B20B91C8);
  *(v2 + 32) = a1;

  return sub_1B20A9C64();
}

uint64_t MTCDDataStore.addAKCAuthorizations(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

  os_unfair_lock_lock(v8 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v8 + 4);
  v10 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v10)
  {
    v11 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v10(v12);
    sub_1B1FA6834(v10);
  }
}

uint64_t sub_1B208C3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_1B20A98B4();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B208C4A8, 0, 0);
}

char *sub_1B208C4A8()
{
  v51 = v0;
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 104) = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_1B208C878;
    v5 = *(v0 + 48);

    return sub_1B208D000(v5);
  }

  else
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = *(v0 + 48);
    v11 = sub_1B205E940();
    (*(v9 + 16))(v7, v11, v8);

    v12 = sub_1B20A9894();
    v13 = sub_1B20A9C74();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 48);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v49 = v16;
      *v15 = 136315138;
      v46 = v13;
      if (v14 >> 62)
      {
        if (*(v0 + 48) < 0)
        {
          v43 = *(v0 + 48);
        }

        v17 = sub_1B20A9DE4();
      }

      else
      {
        v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = MEMORY[0x1E69E7CC0];
      log = v12;
      if (v17)
      {
        v44 = v16;
        v45 = v15;
        v50 = MEMORY[0x1E69E7CC0];
        result = sub_1B2091C38(0, v17 & ~(v17 >> 63), 0);
        if (v17 < 0)
        {
          __break(1u);
          return result;
        }

        v19 = 0;
        v18 = v50;
        v48 = *(v0 + 48) + 32;
        do
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x1B27403C0](v19, *(v0 + 48));
          }

          else
          {
            v20 = *(v48 + 8 * v19);
          }

          v21 = v20;
          v22 = [v20 bundleID];
          v23 = sub_1B20A9A74();
          v25 = v24;

          v50 = v18;
          v27 = *(v18 + 16);
          v26 = *(v18 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_1B2091C38((v26 > 1), v27 + 1, 1);
            v18 = v50;
          }

          ++v19;
          *(v18 + 16) = v27 + 1;
          v28 = v18 + 16 * v27;
          *(v28 + 32) = v23;
          *(v28 + 40) = v25;
        }

        while (v17 != v19);
        v16 = v44;
        v15 = v45;
      }

      v32 = *(v0 + 96);
      v34 = *(v0 + 72);
      v33 = *(v0 + 80);
      v35 = MEMORY[0x1B2740030](v18, MEMORY[0x1E69E6158]);
      v37 = v36;

      v38 = sub_1B2061574(v35, v37, &v49);

      *(v15 + 4) = v38;
      _os_log_impl(&dword_1B1F9F000, log, v46, "Saved alarmkit authorizations into core data: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1B2741310](v16, -1, -1);
      MEMORY[0x1B2741310](v15, -1, -1);

      (*(v33 + 8))(v32, v34);
    }

    else
    {
      v29 = *(v0 + 96);
      v31 = *(v0 + 72);
      v30 = *(v0 + 80);

      (*(v30 + 8))(v29, v31);
    }

    v39 = *(v0 + 64);
    (*(v0 + 56))(0);
    v41 = *(v0 + 88);
    v40 = *(v0 + 96);

    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t sub_1B208C878()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1B208CCB8;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1B208C994;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

char *sub_1B208C994()
{
  v46 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);
  v5 = sub_1B205E940();
  (*(v3 + 16))(v1, v5, v2);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 48);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v44 = v10;
    *v9 = 136315138;
    if (v8 >> 62)
    {
      if (*(v0 + 48) < 0)
      {
        v38 = *(v0 + 48);
      }

      v11 = sub_1B20A9DE4();
    }

    else
    {
      v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = MEMORY[0x1E69E7CC0];
    log = v6;
    v41 = v7;
    v40 = v10;
    if (v11)
    {
      v45 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C38(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        __break(1u);
        return result;
      }

      v39 = v9;
      v14 = 0;
      v12 = v45;
      v43 = *(v0 + 48) + 32;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1B27403C0](v14, *(v0 + 48));
        }

        else
        {
          v15 = *(v43 + 8 * v14);
        }

        v16 = v15;
        v17 = [v15 bundleID];
        v18 = sub_1B20A9A74();
        v20 = v19;

        v45 = v12;
        v22 = *(v12 + 16);
        v21 = *(v12 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1B2091C38((v21 > 1), v22 + 1, 1);
          v12 = v45;
        }

        ++v14;
        *(v12 + 16) = v22 + 1;
        v23 = v12 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
      }

      while (v11 != v14);
      v9 = v39;
    }

    v27 = *(v0 + 96);
    v29 = *(v0 + 72);
    v28 = *(v0 + 80);
    v30 = MEMORY[0x1B2740030](v12, MEMORY[0x1E69E6158]);
    v32 = v31;

    v33 = sub_1B2061574(v30, v32, &v44);

    *(v9 + 4) = v33;
    _os_log_impl(&dword_1B1F9F000, log, v41, "Saved alarmkit authorizations into core data: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x1B2741310](v40, -1, -1);
    MEMORY[0x1B2741310](v9, -1, -1);

    (*(v28 + 8))(v27, v29);
  }

  else
  {
    v24 = *(v0 + 96);
    v26 = *(v0 + 72);
    v25 = *(v0 + 80);

    (*(v25 + 8))(v24, v26);
  }

  v34 = *(v0 + 64);
  (*(v0 + 56))(0);
  v36 = *(v0 + 88);
  v35 = *(v0 + 96);

  v37 = *(v0 + 8);

  return v37();
}

char *sub_1B208CCB8()
{
  v50 = v0;
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[6];

  v6 = sub_1B205E940();
  (*(v3 + 16))(v2, v6, v4);

  v7 = sub_1B20A9894();
  v8 = sub_1B20A9C84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[6];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v48 = v11;
    *v10 = 136315138;
    if (v9 >> 62)
    {
      if (v0[6] < 0)
      {
        v42 = v0[6];
      }

      v12 = sub_1B20A9DE4();
    }

    else
    {
      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = MEMORY[0x1E69E7CC0];
    log = v7;
    v45 = v8;
    v44 = v11;
    if (v12)
    {
      v49 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C38(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        __break(1u);
        return result;
      }

      v43 = v10;
      v15 = 0;
      v13 = v49;
      v47 = v0[6] + 32;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1B27403C0](v15, v0[6]);
        }

        else
        {
          v16 = *(v47 + 8 * v15);
        }

        v17 = v16;
        v18 = [v16 bundleID];
        v19 = sub_1B20A9A74();
        v21 = v20;

        v49 = v13;
        v23 = *(v13 + 16);
        v22 = *(v13 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1B2091C38((v22 > 1), v23 + 1, 1);
          v13 = v49;
        }

        ++v15;
        *(v13 + 16) = v23 + 1;
        v24 = v13 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
      }

      while (v12 != v15);
      v10 = v43;
    }

    v28 = v0[10];
    v29 = v0[11];
    v30 = v0[9];
    v31 = MEMORY[0x1B2740030](v13, MEMORY[0x1E69E6158]);
    v33 = v32;

    v34 = sub_1B2061574(v31, v33, &v48);

    *(v10 + 4) = v34;
    _os_log_impl(&dword_1B1F9F000, log, v45, "Failed to save alarmkit authorizations into core data: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x1B2741310](v44, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);

    (*(v28 + 8))(v29, v30);
  }

  else
  {
    v25 = v0[10];
    v26 = v0[11];
    v27 = v0[9];

    (*(v25 + 8))(v26, v27);
  }

  v35 = v0[15];
  v37 = v0[7];
  v36 = v0[8];
  v38 = v35;
  v37(v35);

  v40 = v0[11];
  v39 = v0[12];

  v41 = v0[1];

  return v41();
}

uint64_t sub_1B208D000(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B208D0C0, v1, 0);
}

uint64_t sub_1B208D0C0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = [*(v0[3] + 112) newBackgroundContext];
  v0[7] = v5;
  v6 = swift_allocObject();
  v0[8] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v7 = *(MEMORY[0x1E695D2C0] + 4);

  v5;
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_1B2069E10;
  v9 = v0[6];
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v8, v9, sub_1B2097168, v6, v10);
}

uint64_t MTCDDataStore.updateAKCAuthorizations(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

  os_unfair_lock_lock(v8 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v8 + 4);
  v10 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v10)
  {
    v11 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v10(v12);
    sub_1B1FA6834(v10);
  }
}

uint64_t sub_1B208D350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_1B20A98B4();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B208D420, 0, 0);
}

char *sub_1B208D420()
{
  v51 = v0;
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 104) = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_1B208D7F0;
    v5 = *(v0 + 48);

    return sub_1B208DF78(v5);
  }

  else
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = *(v0 + 48);
    v11 = sub_1B205E940();
    (*(v9 + 16))(v7, v11, v8);

    v12 = sub_1B20A9894();
    v13 = sub_1B20A9C74();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 48);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v49 = v16;
      *v15 = 136315138;
      v46 = v13;
      if (v14 >> 62)
      {
        if (*(v0 + 48) < 0)
        {
          v43 = *(v0 + 48);
        }

        v17 = sub_1B20A9DE4();
      }

      else
      {
        v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = MEMORY[0x1E69E7CC0];
      log = v12;
      if (v17)
      {
        v44 = v16;
        v45 = v15;
        v50 = MEMORY[0x1E69E7CC0];
        result = sub_1B2091C38(0, v17 & ~(v17 >> 63), 0);
        if (v17 < 0)
        {
          __break(1u);
          return result;
        }

        v19 = 0;
        v18 = v50;
        v48 = *(v0 + 48) + 32;
        do
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x1B27403C0](v19, *(v0 + 48));
          }

          else
          {
            v20 = *(v48 + 8 * v19);
          }

          v21 = v20;
          v22 = [v20 bundleID];
          v23 = sub_1B20A9A74();
          v25 = v24;

          v50 = v18;
          v27 = *(v18 + 16);
          v26 = *(v18 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_1B2091C38((v26 > 1), v27 + 1, 1);
            v18 = v50;
          }

          ++v19;
          *(v18 + 16) = v27 + 1;
          v28 = v18 + 16 * v27;
          *(v28 + 32) = v23;
          *(v28 + 40) = v25;
        }

        while (v17 != v19);
        v16 = v44;
        v15 = v45;
      }

      v32 = *(v0 + 96);
      v34 = *(v0 + 72);
      v33 = *(v0 + 80);
      v35 = MEMORY[0x1B2740030](v18, MEMORY[0x1E69E6158]);
      v37 = v36;

      v38 = sub_1B2061574(v35, v37, &v49);

      *(v15 + 4) = v38;
      _os_log_impl(&dword_1B1F9F000, log, v46, "Updated alarmkit authorizations in core data: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1B2741310](v16, -1, -1);
      MEMORY[0x1B2741310](v15, -1, -1);

      (*(v33 + 8))(v32, v34);
    }

    else
    {
      v29 = *(v0 + 96);
      v31 = *(v0 + 72);
      v30 = *(v0 + 80);

      (*(v30 + 8))(v29, v31);
    }

    v39 = *(v0 + 64);
    (*(v0 + 56))(0);
    v41 = *(v0 + 88);
    v40 = *(v0 + 96);

    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t sub_1B208D7F0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1B208DC30;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1B208D90C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

char *sub_1B208D90C()
{
  v46 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);
  v5 = sub_1B205E940();
  (*(v3 + 16))(v1, v5, v2);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 48);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v44 = v10;
    *v9 = 136315138;
    if (v8 >> 62)
    {
      if (*(v0 + 48) < 0)
      {
        v38 = *(v0 + 48);
      }

      v11 = sub_1B20A9DE4();
    }

    else
    {
      v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = MEMORY[0x1E69E7CC0];
    log = v6;
    v41 = v7;
    v40 = v10;
    if (v11)
    {
      v45 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C38(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        __break(1u);
        return result;
      }

      v39 = v9;
      v14 = 0;
      v12 = v45;
      v43 = *(v0 + 48) + 32;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1B27403C0](v14, *(v0 + 48));
        }

        else
        {
          v15 = *(v43 + 8 * v14);
        }

        v16 = v15;
        v17 = [v15 bundleID];
        v18 = sub_1B20A9A74();
        v20 = v19;

        v45 = v12;
        v22 = *(v12 + 16);
        v21 = *(v12 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1B2091C38((v21 > 1), v22 + 1, 1);
          v12 = v45;
        }

        ++v14;
        *(v12 + 16) = v22 + 1;
        v23 = v12 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
      }

      while (v11 != v14);
      v9 = v39;
    }

    v27 = *(v0 + 96);
    v29 = *(v0 + 72);
    v28 = *(v0 + 80);
    v30 = MEMORY[0x1B2740030](v12, MEMORY[0x1E69E6158]);
    v32 = v31;

    v33 = sub_1B2061574(v30, v32, &v44);

    *(v9 + 4) = v33;
    _os_log_impl(&dword_1B1F9F000, log, v41, "Updated alarmkit authorizations in core data: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x1B2741310](v40, -1, -1);
    MEMORY[0x1B2741310](v9, -1, -1);

    (*(v28 + 8))(v27, v29);
  }

  else
  {
    v24 = *(v0 + 96);
    v26 = *(v0 + 72);
    v25 = *(v0 + 80);

    (*(v25 + 8))(v24, v26);
  }

  v34 = *(v0 + 64);
  (*(v0 + 56))(0);
  v36 = *(v0 + 88);
  v35 = *(v0 + 96);

  v37 = *(v0 + 8);

  return v37();
}

char *sub_1B208DC30()
{
  v50 = v0;
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[6];

  v6 = sub_1B205E940();
  (*(v3 + 16))(v2, v6, v4);

  v7 = sub_1B20A9894();
  v8 = sub_1B20A9C84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[6];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v48 = v11;
    *v10 = 136315138;
    if (v9 >> 62)
    {
      if (v0[6] < 0)
      {
        v42 = v0[6];
      }

      v12 = sub_1B20A9DE4();
    }

    else
    {
      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = MEMORY[0x1E69E7CC0];
    log = v7;
    v45 = v8;
    v44 = v11;
    if (v12)
    {
      v49 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C38(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        __break(1u);
        return result;
      }

      v43 = v10;
      v15 = 0;
      v13 = v49;
      v47 = v0[6] + 32;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1B27403C0](v15, v0[6]);
        }

        else
        {
          v16 = *(v47 + 8 * v15);
        }

        v17 = v16;
        v18 = [v16 bundleID];
        v19 = sub_1B20A9A74();
        v21 = v20;

        v49 = v13;
        v23 = *(v13 + 16);
        v22 = *(v13 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1B2091C38((v22 > 1), v23 + 1, 1);
          v13 = v49;
        }

        ++v15;
        *(v13 + 16) = v23 + 1;
        v24 = v13 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
      }

      while (v12 != v15);
      v10 = v43;
    }

    v28 = v0[10];
    v29 = v0[11];
    v30 = v0[9];
    v31 = MEMORY[0x1B2740030](v13, MEMORY[0x1E69E6158]);
    v33 = v32;

    v34 = sub_1B2061574(v31, v33, &v48);

    *(v10 + 4) = v34;
    _os_log_impl(&dword_1B1F9F000, log, v45, "Failed to update alarmkit authorizations in core data: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x1B2741310](v44, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);

    (*(v28 + 8))(v29, v30);
  }

  else
  {
    v25 = v0[10];
    v26 = v0[11];
    v27 = v0[9];

    (*(v25 + 8))(v26, v27);
  }

  v35 = v0[15];
  v37 = v0[7];
  v36 = v0[8];
  v38 = v35;
  v37(v35);

  v40 = v0[11];
  v39 = v0[12];

  v41 = v0[1];

  return v41();
}

uint64_t sub_1B208DF78(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B208E038, v1, 0);
}

uint64_t sub_1B208E038()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  type metadata accessor for AKCDAuthorization();
  v6 = static AKCDAuthorization.fetchRequest()();
  v0[7] = v6;
  v7 = sub_1B2097398(v5);
  [v6 setPredicate_];

  v8 = [*(v4 + 112) newBackgroundContext];
  v0[8] = v8;
  v9 = swift_allocObject();
  v0[9] = v9;
  v9[2] = v8;
  v9[3] = v6;
  v9[4] = v5;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v10 = *(MEMORY[0x1E695D2C0] + 4);
  v8;
  v11 = v6;

  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1B20753FC;
  v13 = v0[6];
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v12, v13, sub_1B20975E4, v9, v14);
}

void sub_1B208E208(void *a1, int a2, int a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = _Block_copy(aBlock);
  sub_1B20982AC(0, &qword_1EB79CE28, 0x1E698A738);
  v10 = sub_1B20A9B04();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v10;
  v12[4] = a7;
  v12[5] = v11;
  v13 = a1;

  sub_1B2068230();
}

uint64_t MTCDDataStore.deleteAKCAuthorizations(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

  os_unfair_lock_lock(v8 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v8 + 4);
  v10 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v10)
  {
    v11 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v10(v12);
    sub_1B1FA6834(v10);
  }
}

uint64_t sub_1B208E418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_1B20A98B4();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B208E4E8, 0, 0);
}

uint64_t sub_1B208E4E8()
{
  v29 = v0;
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 104) = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_1B208E760;
    v5 = *(v0 + 48);

    return sub_1B208EC28(v5);
  }

  else
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = *(v0 + 48);
    v11 = sub_1B205E940();
    (*(v9 + 16))(v7, v11, v8);

    v12 = sub_1B20A9894();
    v13 = sub_1B20A9C74();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 96);
    v16 = *(v0 + 72);
    v17 = *(v0 + 80);
    if (v14)
    {
      v18 = *(v0 + 48);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      v21 = MEMORY[0x1B2740030](v18, MEMORY[0x1E69E6158]);
      v23 = sub_1B2061574(v21, v22, &v28);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1B1F9F000, v12, v13, "Deleted alarmkit authorizations from core data: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1B2741310](v20, -1, -1);
      MEMORY[0x1B2741310](v19, -1, -1);
    }

    (*(v17 + 8))(v15, v16);
    v24 = *(v0 + 64);
    (*(v0 + 56))(0);
    v26 = *(v0 + 88);
    v25 = *(v0 + 96);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_1B208E760()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1B208EA40;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1B208E87C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B208E87C()
{
  v24 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);
  v5 = sub_1B205E940();
  (*(v3 + 16))(v1, v5, v2);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 96);
  v10 = *(v0 + 72);
  v11 = *(v0 + 80);
  if (v8)
  {
    v12 = *(v0 + 48);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    v15 = MEMORY[0x1B2740030](v12, MEMORY[0x1E69E6158]);
    v17 = sub_1B2061574(v15, v16, &v23);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1B1F9F000, v6, v7, "Deleted alarmkit authorizations from core data: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1B2741310](v14, -1, -1);
    MEMORY[0x1B2741310](v13, -1, -1);
  }

  (*(v11 + 8))(v9, v10);
  v18 = *(v0 + 64);
  (*(v0 + 56))(0);
  v20 = *(v0 + 88);
  v19 = *(v0 + 96);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1B208EA40()
{
  v28 = v0;
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[6];

  v6 = sub_1B205E940();
  (*(v3 + 16))(v2, v6, v4);

  v7 = sub_1B20A9894();
  v8 = sub_1B20A9C84();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[9];
  if (v9)
  {
    v13 = v0[6];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136315138;
    v16 = MEMORY[0x1B2740030](v13, MEMORY[0x1E69E6158]);
    v18 = sub_1B2061574(v16, v17, &v27);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1B1F9F000, v7, v8, "Failed to delete alarmkit authorizations from core data: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1B2741310](v15, -1, -1);
    MEMORY[0x1B2741310](v14, -1, -1);
  }

  (*(v11 + 8))(v10, v12);
  v19 = v0[15];
  v21 = v0[7];
  v20 = v0[8];
  v22 = v19;
  v21(v19);

  v24 = v0[11];
  v23 = v0[12];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1B208EC28(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B208ECE8, v1, 0);
}

uint64_t sub_1B208ECE8()
{
  v1 = v0[5];
  v2 = v0[3];
  v17 = v0[4];
  v18 = v0[6];
  v3 = v0[2];
  v4 = type metadata accessor for AKCDAuthorization();
  v5 = (*(v4 + 88))();
  v0[7] = v5;
  sub_1B20982AC(0, &qword_1EB79CE38, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4D0, &qword_1B20B8F70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B20B8E70;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F510, &qword_1B20B91C8);
  *(v6 + 64) = sub_1B209849C(&qword_1EB79CE50, &qword_1EB79F510, &qword_1B20B91C8);
  *(v6 + 32) = v3;

  v7 = sub_1B20A9C64();
  [v5 setPredicate_];

  v8 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  v0[8] = v8;
  v9 = [*(v2 + 112) newBackgroundContext];
  v0[9] = v9;
  v10 = swift_allocObject();
  v0[10] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  (*(v1 + 104))(v18, *MEMORY[0x1E695D2B8], v17);
  v11 = *(MEMORY[0x1E695D2C0] + 4);
  v9;
  v12 = v8;
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_1B2076DEC;
  v14 = v0[6];
  v15 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v13, v14, sub_1B209893C, v10, v15);
}

void sub_1B208EFA4(void *a1, int a2, int a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = _Block_copy(aBlock);
  v10 = sub_1B20A9B04();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v10;
  v12[4] = a7;
  v12[5] = v11;
  v13 = a1;

  sub_1B2068230();
}

uint64_t MTCDDataStore.getAKCAuthorizations(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v7 = v2;

  os_unfair_lock_lock(v6 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v6 + 4);
  v8 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v8)
  {
    v9 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v8(v10);
    sub_1B1FA6834(v8);
  }
}

uint64_t sub_1B208F194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_1B20A98B4();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B208F270, 0, 0);
}

uint64_t sub_1B208F270()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[13] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_1B208F460;

    return sub_1B20909D8(0);
  }

  else
  {
    v6 = v0[11];
    v7 = v0[8];
    v8 = v0[9];
    v9 = sub_1B205E940();
    (*(v8 + 16))(v6, v9, v7);
    v10 = sub_1B20A9894();
    v11 = sub_1B20A9C74();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B1F9F000, v10, v11, "No alarmkit authorizations fetched", v12, 2u);
      MEMORY[0x1B2741310](v12, -1, -1);
    }

    v13 = v0[11];
    v14 = v0[8];
    v15 = v0[9];
    v17 = v0[6];
    v16 = v0[7];

    (*(v15 + 8))(v13, v14);
    v17(0);
    v19 = v0[11];
    v18 = v0[12];
    v20 = v0[10];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1B208F460(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v5 = *(*v2 + 104);
  v8 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v6 = sub_1B208F96C;
  }

  else
  {
    v6 = sub_1B208F594;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B208F594()
{
  v45 = v0;
  v1 = v0[15];
  v2 = v0[8];
  v3 = v0[9];
  if (!v1)
  {
    v18 = v0[11];
    v19 = sub_1B205E940();
    (*(v3 + 16))(v18, v19, v2);
    v20 = sub_1B20A9894();
    v21 = sub_1B20A9C74();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1B1F9F000, v20, v21, "No alarmkit authorizations fetched", v22, 2u);
      MEMORY[0x1B2741310](v22, -1, -1);
    }

    v23 = v0[11];
    v24 = v0[8];
    v25 = v0[9];
    v27 = v0[6];
    v26 = v0[7];

    (*(v25 + 8))(v23, v24);
    v27(0);
    goto LABEL_20;
  }

  v4 = v0[10];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v4, v5, v2);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[9];
  v10 = v0[10];
  v11 = v0[8];
  if (v8)
  {
    v43 = v0[10];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v44 = v13;
    *v12 = 136315138;
    v14 = type metadata accessor for AKCDAuthorization();
    v15 = MEMORY[0x1B2740030](v1, v14);
    v17 = sub_1B2061574(v15, v16, &v44);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1B1F9F000, v6, v7, "Fetched alarmkit authorizations: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B2741310](v13, -1, -1);
    MEMORY[0x1B2741310](v12, -1, -1);

    (*(v9 + 8))(v43, v11);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v28 = v0[15];
  if (v28 >> 62)
  {
    v29 = sub_1B20A9DE4();
    if (v29)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
LABEL_10:
      v44 = MEMORY[0x1E69E7CC0];
      result = sub_1B20A9EE4();
      if (v29 < 0)
      {
        __break(1u);
        return result;
      }

      v31 = 0;
      v32 = v0[15] & 0xC000000000000001;
      v33 = MEMORY[0x1E69E7D40];
      do
      {
        if (v32)
        {
          v34 = MEMORY[0x1B27403C0](v31, v1);
        }

        else
        {
          v34 = *(v1 + 8 * v31 + 32);
        }

        v35 = v34;
        ++v31;
        (*((*v33 & *v34) + 0x60))();

        sub_1B20A9EC4();
        v36 = v44[2];
        sub_1B20A9EF4();
        sub_1B20A9F04();
        sub_1B20A9ED4();
      }

      while (v29 != v31);

      v37 = v44;
      goto LABEL_19;
    }
  }

  v37 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v38 = v0[7];
  (v0[6])(v37);

LABEL_20:
  v40 = v0[11];
  v39 = v0[12];
  v41 = v0[10];

  v42 = v0[1];

  return v42();
}

uint64_t sub_1B208F96C()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  v5 = sub_1B205E940();
  (*(v4 + 16))(v2, v5, v3);
  v6 = v1;
  v7 = sub_1B20A9894();
  v8 = sub_1B20A9C84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[16];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1B1F9F000, v7, v8, "Failed to fetch alarmkit authorizations: %@", v10, 0xCu);
    sub_1B20985B4(v11, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v11, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);
  }

  v14 = v0[16];
  v15 = v0[12];
  v16 = v0[8];
  v17 = v0[9];
  v19 = v0[6];
  v18 = v0[7];

  (*(v17 + 8))(v15, v16);
  v19(0);

  v21 = v0[11];
  v20 = v0[12];
  v22 = v0[10];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1B208FB38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B208FBC8;

  return sub_1B20909D8(0);
}

uint64_t sub_1B208FBC8(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

void sub_1B208FD04(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a6;
  v10[4] = v9;
  v11 = a1;

  sub_1B2068230();
}

uint64_t MTCDDataStore.getAKCAuthorizations(predicate:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = a1;

  v10 = v3;
  os_unfair_lock_lock(v8 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v8 + 4);
  v11 = *&v10[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v11)
  {
    v12 = *&v10[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v11(v13);
    sub_1B1FA6834(v11);
  }
}

uint64_t sub_1B208FEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_1B20A98B4();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B208FFB8, 0, 0);
}

uint64_t sub_1B208FFB8()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[14] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_1B209020C;
    v5 = v0[6];

    return sub_1B20909D8(v5);
  }

  else
  {
    v7 = v0[12];
    v8 = v0[9];
    v9 = v0[10];
    v10 = v0[6];
    v11 = sub_1B205E940();
    (*(v9 + 16))(v7, v11, v8);
    v12 = v10;
    v13 = sub_1B20A9894();
    v14 = sub_1B20A9C74();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[6];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v12;
      *v17 = v15;
      v18 = v12;
      _os_log_impl(&dword_1B1F9F000, v13, v14, "No alarmkit authorizations fetched with predicate: %@", v16, 0xCu);
      sub_1B20985B4(v17, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v17, -1, -1);
      MEMORY[0x1B2741310](v16, -1, -1);
    }

    v19 = v0[12];
    v20 = v0[9];
    v21 = v0[10];
    v23 = v0[7];
    v22 = v0[8];

    (*(v21 + 8))(v19, v20);
    v23(0);
    v25 = v0[12];
    v24 = v0[13];
    v26 = v0[11];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_1B209020C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v8 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v5 = sub_1B20907D0;
  }

  else
  {
    v6 = v3[14];

    v5 = sub_1B2090328;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B2090328()
{
  v54 = v0;
  v1 = v0[16];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[6];
  if (!v1)
  {
    v21 = v0[12];
    v22 = sub_1B205E940();
    (*(v3 + 16))(v21, v22, v2);
    v23 = v4;
    v24 = sub_1B20A9894();
    v25 = sub_1B20A9C74();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v0[6];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v23;
      *v28 = v26;
      v29 = v23;
      _os_log_impl(&dword_1B1F9F000, v24, v25, "No alarmkit authorizations fetched with predicate: %@", v27, 0xCu);
      sub_1B20985B4(v28, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v28, -1, -1);
      MEMORY[0x1B2741310](v27, -1, -1);
    }

    v30 = v0[12];
    v31 = v0[9];
    v32 = v0[10];
    v34 = v0[7];
    v33 = v0[8];

    (*(v32 + 8))(v30, v31);
    v34(0);
    goto LABEL_20;
  }

  v5 = v0[13];
  v6 = sub_1B205E940();
  (*(v3 + 16))(v5, v6, v2);
  v7 = v4;

  v8 = sub_1B20A9894();
  v9 = sub_1B20A9C74();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[13];
  v12 = v0[9];
  v13 = v0[10];
  if (v10)
  {
    v50 = v0[6];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v52;
    *v14 = 136315394;
    v16 = type metadata accessor for AKCDAuthorization();
    v17 = MEMORY[0x1B2740030](v1, v16);
    v51 = v12;
    v19 = sub_1B2061574(v17, v18, &v53);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v7;
    *v15 = v50;
    v20 = v7;
    _os_log_impl(&dword_1B1F9F000, v8, v9, "Fetched alarmkit authorizations: %s with predicate: %@", v14, 0x16u);
    sub_1B20985B4(v15, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x1B2741310](v52, -1, -1);
    MEMORY[0x1B2741310](v14, -1, -1);

    (*(v13 + 8))(v11, v51);
  }

  else
  {

    (*(v13 + 8))(v11, v12);
  }

  v35 = v0[16];
  if (v35 >> 62)
  {
    v36 = sub_1B20A9DE4();
    if (v36)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
LABEL_10:
      v53 = MEMORY[0x1E69E7CC0];
      result = sub_1B20A9EE4();
      if (v36 < 0)
      {
        __break(1u);
        return result;
      }

      v38 = 0;
      v39 = v0[16] & 0xC000000000000001;
      v40 = MEMORY[0x1E69E7D40];
      do
      {
        if (v39)
        {
          v41 = MEMORY[0x1B27403C0](v38, v1);
        }

        else
        {
          v41 = *(v1 + 8 * v38 + 32);
        }

        v42 = v41;
        ++v38;
        (*((*v40 & *v41) + 0x60))();

        sub_1B20A9EC4();
        v43 = v53[2];
        sub_1B20A9EF4();
        sub_1B20A9F04();
        sub_1B20A9ED4();
      }

      while (v36 != v38);

      v44 = v53;
      goto LABEL_19;
    }
  }

  v44 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v45 = v0[8];
  (v0[7])(v44);

LABEL_20:
  v47 = v0[12];
  v46 = v0[13];
  v48 = v0[11];

  v49 = v0[1];

  return v49();
}

uint64_t sub_1B20907D0()
{
  v1 = v0[17];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = v0[6];

  v7 = sub_1B205E940();
  (*(v4 + 16))(v3, v7, v5);
  v8 = v6;
  v9 = v1;
  v10 = sub_1B20A9894();
  v11 = sub_1B20A9C84();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[17];
    v13 = v0[6];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412546;
    *(v14 + 4) = v8;
    *v15 = v13;
    *(v14 + 12) = 2112;
    v16 = v8;
    v17 = v12;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    v15[1] = v18;
    _os_log_impl(&dword_1B1F9F000, v10, v11, "Failed to fetch alarmkit authorizations with predicate: %@ error: %@ ", v14, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4B0, &qword_1B20B8ED8);
    swift_arrayDestroy();
    MEMORY[0x1B2741310](v15, -1, -1);
    MEMORY[0x1B2741310](v14, -1, -1);
  }

  v19 = v0[17];
  v21 = v0[10];
  v20 = v0[11];
  v22 = v0[8];
  v23 = v0[9];
  v24 = v0[7];

  (*(v21 + 8))(v20, v23);
  v24(0);

  v26 = v0[12];
  v25 = v0[13];
  v27 = v0[11];

  v28 = v0[1];

  return v28();
}

uint64_t sub_1B20909D8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1B20A9D34();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  sub_1B20A9BA4();
  v2[8] = sub_1B20A9B94();
  v7 = sub_1B20A9B64();
  v2[9] = v7;
  v2[10] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B2090ACC, v7, v6);
}

uint64_t sub_1B2090ACC()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v0[11] = [*(v4 + 112) viewContext];
  v6 = swift_allocObject();
  v0[12] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v7 = *(MEMORY[0x1E695D2C0] + 4);
  v8 = v5;

  v9 = swift_task_alloc();
  v0[13] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F520, &qword_1B20B9280);
  *v9 = v0;
  v9[1] = sub_1B2090C30;
  v11 = v0[7];

  return MEMORY[0x1EEDB6538](v0 + 2, v11, sub_1B2097C30, v6, v10);
}

uint64_t sub_1B2090C30()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 112) = v0;

  (*(v7 + 8))(v6, v8);

  v10 = *(v2 + 80);
  v11 = *(v2 + 72);
  if (v0)
  {
    v12 = sub_1B2098890;
  }

  else
  {
    v12 = sub_1B20988A8;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, v10);
}

uint64_t sub_1B2090F00(uint64_t a1)
{
  sub_1B20982AC(0, &qword_1EB79CE38, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4D0, &qword_1B20B8F70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B20B8E70;
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F510, &qword_1B20B91C8);
  *(v2 + 64) = sub_1B209849C(&qword_1EB79CE50, &qword_1EB79F510, &qword_1B20B91C8);
  *(v2 + 32) = a1;

  return sub_1B20A9C64();
}

uint64_t sub_1B2090FF4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B20910EC;

  return v7(a1);
}

uint64_t sub_1B20910EC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_1B20911E4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F588, &qword_1B20B9598);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F590, &unk_1B20B95A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B2091318(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F570, &qword_1B20B9570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B2091424(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F548, &qword_1B20B9540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1B2091528(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4F0, &qword_1B20B9128);
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

unint64_t sub_1B20915B0()
{
  result = qword_1EB79F4B8;
  if (!qword_1EB79F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB79F4B8);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B2091644()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B20684D4;

  return sub_1B2066104(v3, v4, v5, v2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B20916FC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1B209175C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didFinishLoadingStore];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B20917D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B2091830()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B2091880()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B2098894;

  return sub_1B20689A4(v2, v3, v5, v4);
}

uint64_t sub_1B209192C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_1B209193C()
{
  v1 = *(v0 + 16);
  v18 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B20A9DE4())
  {
    v16 = v1 & 0xFFFFFFFFFFFFFF8;
    v17 = v1 & 0xC000000000000001;
    v3 = 4;
    v15 = v1;
    while (1)
    {
      v4 = v3 - 4;
      if (v17)
      {
        v5 = MEMORY[0x1B27403C0](v3 - 4, v1);
      }

      else
      {
        if (v4 >= *(v16 + 16))
        {
          goto LABEL_12;
        }

        v5 = *(v1 + 8 * v3);
      }

      v6 = v5;
      v7 = v3 - 3;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      type metadata accessor for MTCDAlarm();
      v8 = i;
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      v10 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *v9) + 0x50))(v6);
      type metadata accessor for MTCDSound();
      v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      v12 = [v6 sound];
      (*((*v10 & *v11) + 0x50))();

      [v9 setSound_];
      i = v8;
      v1 = v15;

      ++v3;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  v19 = 0;
  if ([v18 save_])
  {
    return v19;
  }

  v14 = v19;
  sub_1B20A9754();

  return swift_willThrow();
}

uint64_t sub_1B2091B6C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B2098894;

  return sub_1B206A43C(v2, v3, v5, v4);
}

size_t sub_1B2091C18(size_t a1, int64_t a2, char a3)
{
  result = sub_1B2091C98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B2091C38(char *a1, int64_t a2, char a3)
{
  result = sub_1B2091E70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B2091C58(char *a1, int64_t a2, char a3)
{
  result = sub_1B2091F7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B2091C78(size_t a1, int64_t a2, char a3)
{
  result = sub_1B2092080(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B2091C98(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F560, &qword_1B20B9558);
  v10 = *(sub_1B20A9874() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1B20A9874() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1B2091E70(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F570, &qword_1B20B9570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B2091F7C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F550, &qword_1B20B9548);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_1B2092080(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F578, &qword_1B20B9578);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB79F640, &qword_1B20B8D08) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB79F640, &qword_1B20B8D08) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1B2092270(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1B20AA004();
  sub_1B20A9AA4();
  v9 = sub_1B20AA024();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1B20A9F84() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1B2092DE0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B20923C0(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1B20924EC(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}