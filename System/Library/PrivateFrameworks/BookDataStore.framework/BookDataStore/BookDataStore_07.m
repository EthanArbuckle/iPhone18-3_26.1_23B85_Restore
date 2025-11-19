void sub_1E46C3D48(unint64_t a1, char a2)
{
  sub_1E46BE47C();
  BDSSyncEngine.reestablishSalt()();
  if ((a2 & 1) == 0)
  {
    return;
  }

  if (a1 >> 62)
  {
    if (!sub_1E470B50C())
    {
      return;
    }

    v10 = sub_1E470B50C();
    v9._rawValue = MEMORY[0x1E69E7CC0];
    if (!v10)
    {
      goto LABEL_11;
    }

    v4 = v10;
    recordZonesToSave._rawValue = MEMORY[0x1E69E7CC0];
    sub_1E470B63C();
    if (v4 < 0)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }

    recordZonesToSave._rawValue = MEMORY[0x1E69E7CC0];
    sub_1E470B63C();
  }

  v5 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E6916300](v5, a1);
    }

    else
    {
      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    ++v5;
    [objc_allocWithZone(MEMORY[0x1E695BA80]) initWithZoneID_];

    sub_1E470B61C();
    v8 = *(recordZonesToSave._rawValue + 2);
    sub_1E470B64C();
    sub_1E470B65C();
    sub_1E470B62C();
  }

  while (v4 != v5);
  v9._rawValue = recordZonesToSave._rawValue;
LABEL_11:
  BDSSyncEngine.add(recordZonesToSave:)(v9);
}

void sub_1E46C3EEC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1E46BF104(a2);
  }
}

void sub_1E46C3F48(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1E46C3FA4(a2);
  }
}

uint64_t sub_1E46C3FA4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E470A5DC();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E470A61C();
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E470A53C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v18 = *(v2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_persistFetchCoordinatorGroup);
  v24[0] = *(v2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue);
  v24[1] = v18;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v15 + 16))(v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
  v20 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  (*(v15 + 32))(v21 + v20, v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  aBlock[4] = sub_1E46D0FA4;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E65E48;
  v22 = _Block_copy(aBlock);

  sub_1E470A5FC();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1E46D01D4(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E470B4CC();
  sub_1E470B31C();
  _Block_release(v22);
  (*(v27 + 8))(v8, v4);
  (*(v25 + 8))(v13, v26);
}

uint64_t sub_1E46C437C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for BDSSyncEngineStateMetadata();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E470A0DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    (*(v9 + 16))(v13, Strong + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_logger, v8);

    v16 = sub_1E470A0BC();
    v17 = sub_1E470B29C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1E45E0000, v16, v17, "BDSSyncEngine - q_saveMetadataState: About to save state metadata", v18, 2u);
      MEMORY[0x1E6917530](v18, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
  }

  v19 = *(v3 + 20);
  v20 = sub_1E470A53C();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v7[v19], a2, v20);
  (*(v21 + 56))(&v7[v19], 0, 1, v20);
  *v7 = 0x69676E45636E7953;
  *(v7 + 1) = 0xEF6574617453656ELL;
  sub_1E46BC0EC();
  return sub_1E4673708(v7);
}

uint64_t sub_1E46C4624(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t BDSSyncEngine.nextFetchChangesOptions(_:syncEngine:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = sub_1E470A17C();
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v6 = *(v5 + 64) + 15;
  v3[22] = swift_task_alloc();
  v7 = sub_1E470A25C();
  v3[23] = v7;
  v8 = *(v7 - 8);
  v3[24] = v8;
  v9 = *(v8 + 64) + 15;
  v3[25] = swift_task_alloc();
  v10 = sub_1E470A27C();
  v3[26] = v10;
  v11 = *(v10 - 8);
  v3[27] = v11;
  v12 = *(v11 + 64) + 15;
  v3[28] = swift_task_alloc();
  v13 = sub_1E470A2AC();
  v3[29] = v13;
  v14 = *(v13 - 8);
  v3[30] = v14;
  v15 = *(v14 + 64) + 15;
  v3[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E46C4840, 0, 0);
}

uint64_t sub_1E46C4840()
{
  v63 = v0;
  v1 = v0[31];
  v3 = v0[18];
  v2 = v0[19];
  sub_1E470A24C();
  v4 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = [v5 establishedSalt];
    v7 = swift_allocObject();
    if (v6)
    {
      v8 = v0[19];
      v9 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock;
      [*(v8 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock) lock];
      v10 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_validCKZones;
      swift_beginAccess();
      v11 = *(v8 + v10);
      v12 = *(v8 + v9);

      [v12 unlock];
      v13 = sub_1E46C9554(v11);

      *(v7 + 16) = v13;

      v61 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = swift_allocObject();
  }

  v61 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
LABEL_6:
  v14 = v0[31];
  v15 = v0[27];
  v16 = v0[28];
  v18 = v0[25];
  v17 = v0[26];
  v19 = v0[23];
  v20 = v0[24];
  v21 = v0[18];
  v22 = v0[19];
  *v16 = v13;
  (*(v15 + 104))(v16, *MEMORY[0x1E695B5D0], v17);
  sub_1E470A29C();
  (*(v20 + 16))(v18, v21, v19);
  v23 = sub_1E470A0BC();
  v24 = sub_1E470B2CC();
  if (os_log_type_enabled(v23, v24))
  {
    v60 = v24;
    v25 = v0[31];
    v26 = v0[24];
    v27 = v0[25];
    v28 = v0[22];
    v29 = v0[21];
    v57 = v0[20];
    v58 = v0[23];
    v30 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v62 = v59;
    *v30 = 136446978;
    swift_beginAccess();
    v31 = sub_1E470A26C();
    v33 = sub_1E4654D04(v31, v32, &v62);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2082;
    MEMORY[0x1E6914F50](v34);
    v35 = sub_1E470A16C();
    v37 = v36;
    (*(v29 + 8))(v28, v57);
    (*(v26 + 8))(v27, v58);
    v38 = sub_1E4654D04(v35, v37, &v62);

    *(v30 + 14) = v38;
    *(v30 + 22) = 1024;
    *(v30 + 24) = v61;
    *(v30 + 28) = 2082;
    swift_beginAccess();
    v39 = *(v7 + 16);

    v40 = sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
    v41 = MEMORY[0x1E6915DE0](v39, v40);
    v43 = v42;

    v44 = sub_1E4654D04(v41, v43, &v62);

    *(v30 + 30) = v44;
    _os_log_impl(&dword_1E45E0000, v23, v60, "BDSSyncEngine: Returning %{public}s for nextFetchChangesOptions:syncEngine:%{public}s.\nValid salt: %{BOOL}d. Allowed zones: %{public}s", v30, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v59, -1, -1);
    MEMORY[0x1E6917530](v30, -1, -1);
  }

  else
  {
    v46 = v0[24];
    v45 = v0[25];
    v47 = v0[23];

    (*(v46 + 8))(v45, v47);
  }

  v49 = v0[30];
  v48 = v0[31];
  v51 = v0[28];
  v50 = v0[29];
  v52 = v0[25];
  v53 = v0[22];
  v54 = v0[17];
  swift_beginAccess();
  (*(v49 + 16))(v54, v48, v50);
  (*(v49 + 8))(v48, v50);

  v55 = v0[1];

  return v55();
}

void sub_1E46C4CF0()
{
  v0 = sub_1E4650534(&unk_1ECF752E0, &qword_1E471B9A8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v4 = &v20[-v3];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
    swift_beginAccess();
    v8 = *&v6[v7];
    if (v8 && [v8 establishedSalt])
    {
      v9 = sub_1E470A0BC();
      v10 = sub_1E470B2CC();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1E45E0000, v9, v10, "BDSSyncEngine - salt established. Fetching remote changes and updating pending modifications", v11, 2u);
        MEMORY[0x1E6917530](v11, -1, -1);
      }

      v12 = sub_1E470B14C();
      (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = v6;
      v6;
      sub_1E46C1EA0(0, 0, v4, &unk_1E471EA88, v13);

      sub_1E46BF480(0);
    }

    v14 = [*&v6[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltObservers] allObjects];
    sub_1E4650534(&qword_1ECF75488, &qword_1E471EA80);
    v15 = sub_1E470B0BC();

    if (v15 >> 62)
    {
      v16 = sub_1E470B50C();
      if (v16)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
LABEL_9:
        if (v16 < 1)
        {
          __break(1u);
          return;
        }

        v17 = 0;
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1E6916300](v17, v15);
          }

          else
          {
            v18 = *(v15 + 8 * v17 + 32);
            swift_unknownObjectRetain();
          }

          ++v17;
          v19 = sub_1E470AF0C();
          [v18 saltUpdatedWithSaltVersionIdentifier_];
          swift_unknownObjectRelease();
        }

        while (v16 != v17);
      }
    }
  }
}

uint64_t BDSSyncEngine.clearMetadata()()
{
  v1 = *(v0 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue);
  sub_1E4650534(&qword_1ECF75320, &qword_1E471E968);
  sub_1E470B37C();
  return v3;
}

uint64_t sub_1E46C50E8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BDSSyncEngineMetadataStore();
  result = sub_1E4672EA0();
  *a1 = result;
  return result;
}

uint64_t sub_1E46C514C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1E470A27C();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = sub_1E470A2AC();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E46C5268, 0, 0);
}

uint64_t sub_1E46C5268()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine);
  v0[9] = v1;
  v2 = v0[8];
  v3 = v0[5];
  if (v1)
  {
    (*(v0[4] + 104))(v0[5], *MEMORY[0x1E695B5C8], v0[3]);

    sub_1E470A28C();
    v4 = *(MEMORY[0x1E695B5A0] + 4);
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_1E46C53A8;
    v6 = v0[8];

    return MEMORY[0x1EEDB5468](v6);
  }

  else
  {
    v7 = v0[8];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1E46C53A8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 88) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E46C558C, 0, 0);
  }

  else
  {
    v9 = *(v2 + 64);
    v10 = *(v2 + 40);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_1E46C558C()
{
  v1 = v0[11];
  v2 = v0[2];
  v3 = v1;
  v4 = sub_1E470A0BC();
  v5 = sub_1E470B2AC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1E45E0000, v4, v5, "BDSSyncEngine - Error fetching remote changes - %@", v8, 0xCu);
    sub_1E465E050(v9, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v9, -1, -1);
    MEMORY[0x1E6917530](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[8];
  v13 = v0[5];

  v14 = v0[1];

  return v14();
}

uint64_t BDSSyncEngine.fetchRemoteChanges()()
{
  v1[2] = v0;
  v2 = sub_1E470A27C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_1E470A2AC();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E46C5828, 0, 0);
}

uint64_t sub_1E46C5828()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine);
  v0[9] = v1;
  v2 = v0[8];
  v3 = v0[5];
  if (v1)
  {
    (*(v0[4] + 104))(v0[5], *MEMORY[0x1E695B5C8], v0[3]);

    sub_1E470A28C();
    v4 = *(MEMORY[0x1E695B5A0] + 4);
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_1E46C596C;
    v6 = v0[8];

    return MEMORY[0x1EEDB5468](v6);
  }

  else
  {
    v7 = v0[8];

    v8 = v0[1];

    return v8(0);
  }
}

uint64_t sub_1E46C596C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 88) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E46C5B54, 0, 0);
  }

  else
  {
    v9 = *(v2 + 64);
    v10 = *(v2 + 40);

    v11 = *(v8 + 8);

    return v11(0);
  }
}

uint64_t sub_1E46C5B54()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];

  return v4(v1);
}

Swift::String_optional __swiftcall BDSSyncEngine.recordName(fromRecordType:identifier:)(Swift::String fromRecordType, Swift::String identifier)
{
  v3 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 && (v5 = v4, v6 = sub_1E470AF0C(), v7 = sub_1E470AF0C(), v8 = [v5 recordNameFromRecordType:v6 identifier:v7], v5, v6, v7, v8))
  {
    v9 = sub_1E470AF1C();
    v11 = v10;

    v12 = v11;
    v13 = v9;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  result.value._object = v12;
  result.value._countAndFlagsBits = v13;
  return result;
}

id BDSSyncEngine.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1E470B35C();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1E470B33C();
  v6 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38, v7);
  v8 = sub_1E470A61C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  *&v0[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_registeredDataSourceByRecordType] = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_maxRecordCountPerBatch] = 250;
  v11 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_recordChangePublisher;
  v12 = sub_1E4650534(&qword_1ECF75340, &qword_1E471E978);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *&v0[v11] = sub_1E470A11C();
  v15 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_recordDeletionPublisher;
  v16 = sub_1E4650534(&qword_1ECF75350, &unk_1E47204D0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *&v0[v15] = sub_1E470A11C();
  v19 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_accountChangedPublisher;
  v20 = sub_1E4650534(&qword_1ECF75360, &qword_1E471E980);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *&v0[v19] = sub_1E470A11C();
  v23 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_endFetchingChangesPublisher;
  v24 = sub_1E4650534(&qword_1ECF75370, qword_1E471E988);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *&v0[v23] = sub_1E470A11C();
  v27 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_updateMetadataPublisher;
  v28 = sub_1E4650534(&qword_1ECF75380, qword_1E47204E0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *&v0[v27] = sub_1E470A11C();
  v31 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue;
  sub_1E45E2DE8(0, &qword_1EE2ACCD0, 0x1E69E9610);
  sub_1E470A5FC();
  v44 = MEMORY[0x1E69E7CC0];
  sub_1E46D01D4(&unk_1EE2ACCE0, MEMORY[0x1E69E8030]);
  sub_1E4650534(&unk_1ECF74940, &qword_1E471BAE0);
  sub_1E45E2F14(&unk_1EE2ACCF0, &unk_1ECF74940, &qword_1E471BAE0);
  sub_1E470B4CC();
  (*(v40 + 104))(v39, *MEMORY[0x1E69E8090], v41);
  *&v0[v31] = sub_1E470B39C();
  v32 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_persistFetchCoordinatorGroup;
  *&v1[v32] = dispatch_group_create();
  v33 = &v1[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_BDSAPSDelegatePort];
  *v33 = 0xD00000000000001CLL;
  v33[1] = 0x80000001E47199A0;
  *&v1[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine] = 0;
  sub_1E470A0CC();
  *&v1[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager] = 0;
  v34 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltObservers;
  *&v1[v34] = [objc_opt_self() weakObjectsHashTable];
  v35 = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_validCKZones] = MEMORY[0x1E69E7CD0];
  v36 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock;
  *&v1[v36] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v1[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_waitingPendingModifications] = 0;
  *&v1[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneResetsInProgress] = v35;
  *&v1[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_invalidTokenZoneIDs] = MEMORY[0x1E69E7CC0];
  v43.receiver = v1;
  v43.super_class = ObjectType;
  return objc_msgSendSuper2(&v43, sel_init);
}

id BDSSyncEngine.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E46C6488(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E4665FC8;

  return (sub_1E46CD72C)(a1);
}

uint64_t sub_1E46C6534(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E4665FC8;

  return BDSSyncEngine.nextRecordZoneChangeBatch(_:syncEngine:)(a1, a2);
}

uint64_t sub_1E46C65DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E4665FC8;

  return BDSSyncEngine.nextFetchChangesOptions(_:syncEngine:)(a1, a2);
}

uint64_t sub_1E46C6684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = *(MEMORY[0x1E695B6E0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E46C674C;

  return MEMORY[0x1EEDB56C8](a1, a2, ObjectType, a4);
}

uint64_t sub_1E46C674C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1E46C6848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v11 = *(MEMORY[0x1E695B6E8] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1E46C674C;

  return MEMORY[0x1EEDB56D0](a1, a2, a3, ObjectType, a5);
}

BDSCloudSyncDiagnosticSyncEngineInfo __swiftcall BDSSyncEngine.diagnosticSyncEngineInfo()()
{
  v1 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = [v2 establishedSalt];
  }

  else
  {
    v3 = 0;
  }

  result.super.isa = [objc_allocWithZone(BDSCloudSyncDiagnosticSyncEngineInfo) initWithEstablishedSalt_];
  result._establishedSalt = v4;
  return result;
}

void sub_1E46C6A38(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((sub_1E46BFD3C() & 1) == 0)
    {
      if (a2)
      {
        v10 = sub_1E470A0BC();
        v11 = sub_1E470B2CC();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&dword_1E45E0000, v10, v11, "BDSSyncEngine - setting waitingPendingModifications=true since there are pending modifications", v12, 2u);
          MEMORY[0x1E6917530](v12, -1, -1);
        }

        v4[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_waitingPendingModifications] = 1;
      }

      goto LABEL_13;
    }

    v5 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_waitingPendingModifications;
    if ((v4[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_waitingPendingModifications] & 1) == 0 && (a2 & 1) == 0)
    {
LABEL_13:

      return;
    }

    v6 = *&v4[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine];
    v7 = sub_1E470A0BC();
    if (v6)
    {
      v8 = sub_1E470B2CC();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1E45E0000, v7, v8, "BDSSyncEngine - CKSyncEngine.setHasPendingModifications called since there were pending modifications", v9, 2u);
        MEMORY[0x1E6917530](v9, -1, -1);
      }

      sub_1E46BEAC8();
      v4[v5] = 0;
      goto LABEL_13;
    }

    v13 = sub_1E470B2AC();
    if (os_log_type_enabled(v7, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1E4654D04(0xD00000000000002DLL, 0x80000001E4719F00, &v16);
      _os_log_impl(&dword_1E45E0000, v7, v13, "BDSSyncEngine - %s: syncEngine not initialized", v14, 0xCu);
      sub_1E4658A0C(v15);
      MEMORY[0x1E6917530](v15, -1, -1);
      MEMORY[0x1E6917530](v14, -1, -1);
    }
  }
}

uint64_t sub_1E46C6CA4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E46C6D9C;

  return v7(a1);
}

uint64_t sub_1E46C6D9C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E46C6E94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1E4650534(&qword_1ECF742E8, &qword_1E471B1C0);
    v2 = sub_1E470B6FC();
    v20 = v2;
    sub_1E470B67C();
    v3 = sub_1E470B6AC();
    if (v3)
    {
      v4 = v3;
      sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_1E45E2DE8(0, &qword_1ECF75290, 0x1E695BA60);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_1E465682C(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_1E470B41C();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_1E470B6AC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1E46C70E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1E4650534(&qword_1ECF742A0, &qword_1E471B190);
    v2 = sub_1E470B6FC();
    v20 = v2;
    sub_1E470B67C();
    v3 = sub_1E470B6AC();
    if (v3)
    {
      v4 = v3;
      sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_1E45E2DE8(0, &qword_1ECF75460, off_1E8758B88);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_1E4656AF4(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_1E470B41C();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_1E470B6AC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

unint64_t sub_1E46C7384(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  result = sub_1E4655454(a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      result = sub_1E4655454(a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_16:
        result = sub_1E470B86C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      a5();
      result = v23;
    }
  }

  v26 = *v9;
  if ((v21 & 1) == 0)
  {
    v26[(result >> 6) + 8] |= 1 << result;
    *(v26[6] + 8 * result) = a3;
    v29 = (v26[7] + 16 * result);
    *v29 = a1;
    v29[1] = a2;
    v30 = v26[2];
    v19 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (!v19)
    {
      v26[2] = v31;
      return result;
    }

    goto LABEL_15;
  }

  v27 = (v26[7] + 16 * result);
  v28 = v27[1];
  *v27 = a1;
  v27[1] = a2;
}

unint64_t sub_1E46C7500(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1E46553DC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1E465630C(v16, a4 & 1);
      v20 = *v5;
      result = sub_1E46553DC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1E470B86C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1E4657F7C();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

id sub_1E46C7664(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1E46554E8(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1E465682C(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_1E46554E8(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
        sub_1E470B86C();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v16 = v8;
      sub_1E4658268();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

uint64_t sub_1E46C77DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1E4650534(&qword_1ECF754E8, &qword_1E471EAB8);
  result = sub_1E470B58C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1E470B8FC();
      MEMORY[0x1E6916620](v20);
      MEMORY[0x1E6916620](v21);
      result = sub_1E470B91C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1E46C7A44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1E4650534(&unk_1ECF75478, &qword_1E471FCE0);
  result = sub_1E470B58C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1E470B8FC();
      sub_1E470AFCC();
      result = sub_1E470B91C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1E46C7CA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1E4650534(&unk_1ECF75490, &unk_1E471FCF0);
  result = sub_1E470B58C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_1E470B41C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1E46C7ECC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1E470B41C();
  v5 = -1 << *(a2 + 32);
  result = sub_1E470B4EC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t *sub_1E46C7F50(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1E46D021C(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_1E46C7FEC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1E470B8FC();
  MEMORY[0x1E6916620](a2);
  MEMORY[0x1E6916620](a3);
  v9 = sub_1E470B91C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v15 = *v13;
      v14 = v13[1];
      if (v15 == a2 && v14 == a3)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1E46C8680(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_1E46C8108(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1E470B8FC();
  sub_1E470AFCC();
  v9 = sub_1E470B91C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1E470B84C() & 1) != 0)
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

    sub_1E46C87F0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1E46C8258(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1E470B51C();

    if (v9)
    {

      sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1E470B50C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1E46C8490(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1E46C7CA4(v22 + 1);
    }

    v20 = v8;
    sub_1E46C7ECC(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
  v11 = *(v6 + 40);
  v12 = sub_1E470B41C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1E46C8970(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1E470B42C();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1E46C8490(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1E4650534(&unk_1ECF75490, &unk_1E471FCF0);
    v2 = sub_1E470B59C();
    v16 = v2;
    sub_1E470B4FC();
    if (sub_1E470B52C())
    {
      sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1E46C7CA4(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1E470B41C();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1E470B52C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1E46C8680(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_1E46C77DC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_1E46C8AE0();
      a3 = v9;
      goto LABEL_15;
    }

    sub_1E46C8ED0(v7 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1E470B8FC();
  MEMORY[0x1E6916620](v6);
  MEMORY[0x1E6916620](a2);
  result = sub_1E470B91C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v16 = *v14;
      v15 = v14[1];
      if (v16 == v6 && v15 == a2)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v18 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v19 = (*(v18 + 48) + 16 * a3);
  *v19 = v6;
  v19[1] = a2;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_18:
  result = sub_1E470B85C();
  __break(1u);
  return result;
}

uint64_t sub_1E46C87F0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1E46C7A44(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1E46C8C24();
      goto LABEL_16;
    }

    sub_1E46C9108(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1E470B8FC();
  sub_1E470AFCC();
  result = sub_1E470B91C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1E470B84C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1E470B85C();
  __break(1u);
  return result;
}

void sub_1E46C8970(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E46C7CA4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1E46C8D80();
      goto LABEL_12;
    }

    sub_1E46C9340(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_1E470B41C();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_1E470B42C();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1E470B85C();
  __break(1u);
}

void *sub_1E46C8AE0()
{
  v1 = v0;
  sub_1E4650534(&qword_1ECF754E8, &qword_1E471EAB8);
  v2 = *v0;
  v3 = sub_1E470B57C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1E46C8C24()
{
  v1 = v0;
  sub_1E4650534(&unk_1ECF75478, &qword_1E471FCE0);
  v2 = *v0;
  v3 = sub_1E470B57C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_1E46C8D80()
{
  v1 = v0;
  sub_1E4650534(&unk_1ECF75490, &unk_1E471FCF0);
  v2 = *v0;
  v3 = sub_1E470B57C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1E46C8ED0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1E4650534(&qword_1ECF754E8, &qword_1E471EAB8);
  result = sub_1E470B58C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1E470B8FC();
      MEMORY[0x1E6916620](v19);
      MEMORY[0x1E6916620](v20);
      result = sub_1E470B91C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1E46C9108(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1E4650534(&unk_1ECF75478, &qword_1E471FCE0);
  result = sub_1E470B58C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1E470B8FC();

      sub_1E470AFCC();
      result = sub_1E470B91C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1E46C9340(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1E4650534(&unk_1ECF75490, &unk_1E471FCF0);
  result = sub_1E470B58C();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_1E470B41C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void *sub_1E46C9554(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1E470B50C();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1E46B7B44(v2, 0);

    v1 = sub_1E46B8CC4(&v5, v3 + 4, v2, v1);
    sub_1E45E781C();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1E46C9604(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1E470B8FC();
  sub_1E470AFCC();
  v7 = sub_1E470B91C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1E470B84C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1E46C8C24();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1E46C9A40(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_1E46C9740(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_1E470B53C();

    if (v7)
    {
      v8 = sub_1E46C98D8();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
  v11 = *(v3 + 40);
  v12 = sub_1E470B41C();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_1E470B42C();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1E46C8D80();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_1E46C9C04(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_1E46C98D8()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_1E470B50C();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1E46C8490(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_1E470B41C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_1E470B42C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_1E46C9C04(v9);
  result = sub_1E470B42C();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E46C9A40(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1E470B4DC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1E470B8FC();

        sub_1E470AFCC();
        v15 = sub_1E470B91C();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1E46C9C04(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1E470B4DC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_1E470B41C();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1E46C9DA4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
          v8 = MEMORY[0x1E6916300](v5, a3);
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
      v13 = sub_1E470B50C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void (*sub_1E46C9ECC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E6916300](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1E46C9F4C;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E46C9F54(uint64_t a1, void *a2, char a3, void *a4)
{
  v8 = type metadata accessor for BDSSyncEnginePipeline();
  v32 = v8;
  v33 = &off_1F5E66D30;
  *&v31 = a1;
  v9 = *a4;
  v11 = sub_1E4655498(a2);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_7:
    v17 = *a4;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      sub_1E4658A0C(v18);
      return sub_1E46585B4(&v31, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    sub_1E46580E4();
    goto LABEL_7;
  }

  sub_1E46565AC(v14, a3 & 1);
  v20 = *a4;
  v21 = sub_1E4655498(a2);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    sub_1E45E2DE8(0, &qword_1ECF742B0, 0x1E696AEC0);
    result = sub_1E470B86C();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a4;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = sub_1E4679A94(&v31, v8);
  v24 = *(*(v8 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23, v23);
  v27 = (&v30 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27, v25);
  sub_1E46CA148(v11, a2, *v27, v17);
  v29 = a2;
  return sub_1E4658A0C(&v31);
}

uint64_t sub_1E46CA148(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = type metadata accessor for BDSSyncEnginePipeline();
  v14 = &off_1F5E66D30;
  *&v12 = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1E46585B4(&v12, a4[7] + 40 * a1);
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

uint64_t sub_1E46CA1E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E470A5DC();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E470A61C();
  v9 = *(v19 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v19, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  aBlock[4] = sub_1E46D129C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E66000;
  v16 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_1E470A5FC();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1E46D01D4(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v13, v8, v16);
  _Block_release(v16);
  (*(v20 + 8))(v8, v4);
  (*(v9 + 8))(v13, v19);
}

uint64_t sub_1E46CA500(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E4665FC8;

  return sub_1E46C514C(a1, v4, v5, v6);
}

uint64_t sub_1E46CA5B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E4665DD0;

  return sub_1E46C096C(a1, v4, v5, v6, v7, v8);
}

void sub_1E46CA67C(void *a1)
{
  v2 = v1;
  v4 = a1;
  v5 = sub_1E470A0BC();
  v6 = sub_1E470B2CC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_1E4654D04(0xD00000000000003CLL, 0x80000001E4719C60, &v15);
    *(v7 + 12) = 2112;
    *(v7 + 14) = v4;
    *v8 = a1;
    v10 = v4;
    _os_log_impl(&dword_1E45E0000, v5, v6, "BDSSyncEngine - %s. newUserRecordID - %@", v7, 0x16u);
    sub_1E465E050(v8, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v8, -1, -1);
    sub_1E4658A0C(v9);
    MEMORY[0x1E6917530](v9, -1, -1);
    MEMORY[0x1E6917530](v7, -1, -1);
  }

  v11 = *(v2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_accountChangedPublisher);
  v15 = a1;
  sub_1E470A10C();
  if (a1)
  {
    BDSSyncEngine.reestablishSalt()();
  }

  else
  {
    v12 = sub_1E470A0BC();
    v13 = sub_1E470B2CC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1E45E0000, v12, v13, "BDSSyncEngine - Skipping salt establishment since no valid account found", v14, 2u);
      MEMORY[0x1E6917530](v14, -1, -1);
    }
  }
}

uint64_t sub_1E46CA888(uint64_t a1)
{
  v2 = v1;
  v30 = a1;
  v3 = sub_1E470A5DC();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v33 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E470A61C();
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E470A53C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v16 = sub_1E470A0BC();
  v17 = sub_1E470B2CC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1E4654D04(0xD00000000000001DLL, 0x80000001E4719D30, aBlock);
    _os_log_impl(&dword_1E45E0000, v16, v17, "BDSSyncEngine - %s", v18, 0xCu);
    sub_1E4658A0C(v19);
    MEMORY[0x1E6917530](v19, -1, -1);
    MEMORY[0x1E6917530](v18, -1, -1);
  }

  v20 = *(v2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_updateMetadataPublisher);
  sub_1E4650534(&qword_1ECF75380, qword_1E47204E0);
  sub_1E45E2F14(&qword_1ECF754B8, &qword_1ECF75380, qword_1E47204E0);
  sub_1E470A12C();
  v21 = *(v2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v13 + 16))(&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v12);
  v23 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  (*(v13 + 32))(v24 + v23, &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  aBlock[4] = sub_1E46D0EC8;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E65DF8;
  v25 = _Block_copy(aBlock);

  sub_1E470A5FC();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1E46D01D4(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
  v26 = v33;
  v27 = v35;
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v11, v26, v25);
  _Block_release(v25);
  (*(v34 + 8))(v26, v27);
  (*(v31 + 8))(v11, v32);
}

void sub_1E46CAD8C(void *a1, uint64_t a2)
{
  v4 = sub_1E470B1FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v10, a2, v4, v8);
  v11 = (*(v5 + 88))(v10, v4);
  if (v11 == *MEMORY[0x1E695B708])
  {
    v12 = 0xE700000000000000;
    v13 = 0x646574656C6564;
  }

  else if (v11 == *MEMORY[0x1E695B700])
  {
    v12 = 0xE600000000000000;
    v13 = 0x646567727570;
  }

  else if (v11 == *MEMORY[0x1E695B6F8])
  {
    v13 = 0xD000000000000012;
    v12 = 0x80000001E4719D80;
  }

  else
  {
    (*(v5 + 8))(v10, v4);
    v12 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E75;
  }

  v14 = a1;

  v15 = sub_1E470A0BC();
  v16 = sub_1E470B2CC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v17 = 136315650;
    *(v17 + 4) = sub_1E4654D04(0xD00000000000002ALL, 0x80000001E4719D50, &v23);
    *(v17 + 12) = 2114;
    *(v17 + 14) = v14;
    *v18 = v14;
    *(v17 + 22) = 2082;
    v20 = v14;
    v21 = sub_1E4654D04(v13, v12, &v23);

    *(v17 + 24) = v21;
    _os_log_impl(&dword_1E45E0000, v15, v16, "BDSSyncEngine - %s: %{public}@, reason=%{public}s", v17, 0x20u);
    sub_1E465E050(v18, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v18, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v19, -1, -1);
    MEMORY[0x1E6917530](v17, -1, -1);
  }

  else
  {
  }
}

void sub_1E46CB0B4(uint64_t a1)
{
  v3 = sub_1E470B1FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E470B22C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v12, v13);
  v19 = &v67 - v18;
  v20 = *(a1 + 16);
  if (v20)
  {
    v22 = *(v15 + 16);
    v21 = v15 + 16;
    v23 = a1 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v75 = *(v21 + 56);
    v76 = v22;
    v70 = v3;
    v71 = v14;
    v68 = v16;
    v69 = (v4 + 8);
    v73 = v21;
    v74 = (v21 - 8);
    v24 = v23;
    v72 = v1;
    v25 = v20;
    v26 = v8;
    v27 = v14;
    do
    {
      v28 = v76(v19, v24, v27, v17);
      v29 = MEMORY[0x1E6915F30](v28);
      sub_1E470B20C();
      sub_1E46CAD8C(v29, v26);

      (*v69)(v26, v70);
      v30 = *v74;
      (*v74)(v19, v27);
      v24 += v75;
      --v25;
    }

    while (v25);
    v31 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock;
    v32 = v72;
    [*(v72 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock) lock];
    v33 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_validCKZones;
    swift_beginAccess();
    v34 = *(v32 + v33);
    v35 = *(v32 + v31);

    [v35 unlock];
    v77 = MEMORY[0x1E69E7CC0];
    sub_1E470B63C();
    v36 = v71;
    v37 = v68;
    do
    {
      v38 = (v76)(v37, v23, v36);
      MEMORY[0x1E6915F30](v38);
      v30(v37, v36);
      sub_1E470B61C();
      v39 = v77[2];
      sub_1E470B64C();
      sub_1E470B65C();
      sub_1E470B62C();
      v23 += v75;
      --v20;
    }

    while (v20);
    v40 = v77;
    v77 = MEMORY[0x1E69E7CC0];
    if (v40 < 0 || (v40 & 0x4000000000000000) != 0)
    {
      goto LABEL_33;
    }

    for (i = *(v40 + 16); i; i = sub_1E470B50C())
    {
      v42 = 0;
      v73 = i;
      v74 = (v40 + 32);
      v75 = v34 & 0xC000000000000001;
      v76 = (v40 & 0xC000000000000001);
      v43 = v34 & 0xFFFFFFFFFFFFFF8;
      if (v34 < 0)
      {
        v43 = v34;
      }

      v71 = v43;
      v44 = v34 + 56;
      while (1)
      {
        if (v76)
        {
          v46 = MEMORY[0x1E6916300](v42, v40);
        }

        else
        {
          if (v42 >= *(v40 + 16))
          {
            goto LABEL_32;
          }

          v46 = v74[v42];
        }

        v47 = v46;
        if (__OFADD__(v42++, 1))
        {
          break;
        }

        if (v75)
        {
          v49 = v46;
          v50 = sub_1E470B53C();

          if ((v50 & 1) == 0)
          {

            goto LABEL_13;
          }

LABEL_12:
          sub_1E470B61C();
          v45 = v77[2];
          sub_1E470B64C();
          sub_1E470B65C();
          sub_1E470B62C();
LABEL_13:
          i = v73;
          if (v42 == v73)
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (*(v34 + 16))
          {
            sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
            v51 = *(v34 + 40);
            v52 = sub_1E470B41C();
            v53 = -1 << *(v34 + 32);
            v54 = v52 & ~v53;
            if (((*(v44 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
            {
LABEL_26:

              goto LABEL_13;
            }

            v55 = ~v53;
            while (1)
            {
              v56 = *(*(v34 + 48) + 8 * v54);
              v57 = sub_1E470B42C();

              if (v57)
              {
                goto LABEL_12;
              }

              v54 = (v54 + 1) & v55;
              if (((*(v44 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
              {
                goto LABEL_26;
              }
            }
          }

          if (v42 == i)
          {
LABEL_30:
            v58 = v77;
            goto LABEL_35;
          }
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

    v58 = MEMORY[0x1E69E7CC0];
LABEL_35:

    v59 = sub_1E470A0BC();
    v60 = sub_1E470B2CC();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v77 = v62;
      *v61 = 136446210;
      v63 = sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
      v64 = MEMORY[0x1E6915DE0](v58, v63);
      v66 = sub_1E4654D04(v64, v65, &v77);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_1E45E0000, v59, v60, "BDSSyncEngine - handleZoneMissingOrDeleted: %{public}s", v61, 0xCu);
      sub_1E4658A0C(v62);
      MEMORY[0x1E6917530](v62, -1, -1);
      MEMORY[0x1E6917530](v61, -1, -1);
    }

    sub_1E46C3D48(v58, 1);
  }
}

uint64_t sub_1E46CB6CC(void *a1)
{
  v2 = v1;
  v4 = sub_1E470A5DC();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E470A61C();
  v26 = *(v9 - 8);
  v27 = v9;
  v10 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  v15 = sub_1E470A0BC();
  v16 = sub_1E470B2CC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138543362;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_1E45E0000, v15, v16, "BDSSyncEngine - didSave recordZone: %{public}@", v17, 0xCu);
    sub_1E465E050(v18, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v18, -1, -1);
    MEMORY[0x1E6917530](v17, -1, -1);
  }

  v20 = *(v2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v14;
  aBlock[4] = sub_1E46D1034;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E65E98;
  v23 = _Block_copy(aBlock);
  v24 = v14;

  sub_1E470A5FC();
  v29 = MEMORY[0x1E69E7CC0];
  sub_1E46D01D4(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v13, v8, v23);
  _Block_release(v23);
  (*(v28 + 8))(v8, v4);
  (*(v26 + 8))(v13, v27);
}

void sub_1E46CBAA8(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_1E470A0BC();
  v5 = sub_1E470B2CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = [v3 recordID];
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_1E45E0000, v4, v5, "BDSSyncEngine - didSave recordID: %@", v6, 0xCu);
    sub_1E465E050(v7, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v7, -1, -1);
    MEMORY[0x1E6917530](v6, -1, -1);
  }

  v9 = sub_1E470B3DC();
  v11 = v10;
  v12 = sub_1E470AF0C();
  v13 = *(v2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue);
  MEMORY[0x1EEE9AC00](v12, v14);
  sub_1E4650534(&unk_1ECF75468, &qword_1E471EA78);
  sub_1E470B37C();

  if (v22)
  {

    sub_1E46585B4(&v21, v23);
    v15 = *sub_1E465057C(v23, v23[3]);
    sub_1E46FA2FC(v3);
    sub_1E4658A0C(v23);
  }

  else
  {
    sub_1E465E050(&v21, &unk_1ECF75468, &qword_1E471EA78);

    v16 = sub_1E470A0BC();
    v17 = sub_1E470B2AC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23[0] = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_1E4654D04(0xD000000000000016, 0x80000001E4719E80, v23);
      *(v18 + 12) = 2082;
      v20 = sub_1E4654D04(v9, v11, v23);

      *(v18 + 14) = v20;
      _os_log_impl(&dword_1E45E0000, v16, v17, "BDSSyncEngine - %s: missing pipeline for %{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v19, -1, -1);
      MEMORY[0x1E6917530](v18, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1E46CBDD8(void *a1, void *a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_logger;
  v6 = a1;
  v7 = a2;
  v8 = sub_1E470A0BC();
  v9 = sub_1E470B2CC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v6;
    *v11 = v6;
    *(v10 + 12) = 2112;
    v12 = v6;
    v13 = a2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&dword_1E45E0000, v8, v9, "BDSSyncEngine - failedToSaveRecordWith recordID: %@, error: %@", v10, 0x16u);
    sub_1E4650534(&qword_1ECF75100, qword_1E471E820);
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v11, -1, -1);
    MEMORY[0x1E6917530](v10, -1, -1);
  }

  v15 = [v6 recordName];
  v16 = sub_1E470AF1C();
  v18 = v17;

  v45[0] = 46;
  v45[1] = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v19, v20);
  v40 = v45;
  v21 = sub_1E46FF390(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E46D12E0, &v39, v16, v18, &v42);
  if (v21[2])
  {
    v42 = v5;
    v22 = v21[4];
    v23 = v21[5];
    v24 = v21[6];
    v25 = v21[7];

    v26 = MEMORY[0x1E6915CC0](v22, v23, v24, v25);
    v28 = v27;

    v29 = sub_1E470AF0C();
    v30 = *(v3 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue);
    MEMORY[0x1EEE9AC00](v29, v31);
    v40 = v3;
    v41 = v32;
    sub_1E4650534(&unk_1ECF75468, &qword_1E471EA78);
    sub_1E470B37C();

    if (v44)
    {

      sub_1E46585B4(&v43, v45);
      v33 = *sub_1E465057C(v45, v45[3]);
      sub_1E46FA96C(v6, a2);
      sub_1E4658A0C(v45);
    }

    else
    {
      sub_1E465E050(&v43, &unk_1ECF75468, &qword_1E471EA78);

      v34 = sub_1E470A0BC();
      v35 = sub_1E470B2AC();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v45[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_1E4654D04(0xD00000000000002BLL, 0x80000001E4719E50, v45);
        *(v36 + 12) = 2082;
        v38 = sub_1E4654D04(v26, v28, v45);

        *(v36 + 14) = v38;
        _os_log_impl(&dword_1E45E0000, v34, v35, "BDSSyncEngine - %s: missing pipeline for %{public}s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E6917530](v37, -1, -1);
        MEMORY[0x1E6917530](v36, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1E46CC214(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_1E470A0BC();
  v5 = sub_1E470B2CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_1E45E0000, v4, v5, "BDSSyncEngine - didDeleteRecordWith recordID: %@", v6, 0xCu);
    sub_1E465E050(v7, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v7, -1, -1);
    MEMORY[0x1E6917530](v6, -1, -1);
  }

  v9 = [v3 recordName];
  v10 = sub_1E470AF1C();
  v12 = v11;

  v39[0] = 46;
  v39[1] = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v13, v14);
  v34 = v39;
  v15 = sub_1E46FF390(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E46D12E0, &v33, v10, v12, &v36);
  if (v15[2])
  {
    v16 = v15[4];
    v17 = v15[5];
    v18 = v15[6];
    v19 = v15[7];

    v20 = MEMORY[0x1E6915CC0](v16, v17, v18, v19);
    v22 = v21;

    v23 = sub_1E470AF0C();
    v24 = *(v2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue);
    MEMORY[0x1EEE9AC00](v23, v25);
    v34 = v2;
    v35 = v26;
    sub_1E4650534(&unk_1ECF75468, &qword_1E471EA78);
    sub_1E470B37C();

    if (v38)
    {

      sub_1E46585B4(&v37, v39);
      v27 = *sub_1E465057C(v39, v39[3]);
      sub_1E46FAD90(v3);
      sub_1E4658A0C(v39);
    }

    else
    {
      sub_1E465E050(&v37, &unk_1ECF75468, &qword_1E471EA78);

      v28 = sub_1E470A0BC();
      v29 = sub_1E470B2AC();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v39[0] = v31;
        *v30 = 136315394;
        *(v30 + 4) = sub_1E4654D04(0xD000000000000022, 0x80000001E4719E20, v39);
        *(v30 + 12) = 2082;
        v32 = sub_1E4654D04(v20, v22, v39);

        *(v30 + 14) = v32;
        _os_log_impl(&dword_1E45E0000, v28, v29, "BDSSyncEngine - %s: missing pipeline for %{public}s", v30, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E6917530](v31, -1, -1);
        MEMORY[0x1E6917530](v30, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E46CC604(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_logger;

  v34 = v1;
  v4 = sub_1E470A0BC();
  v5 = sub_1E470B2CC();

  v31 = v3;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v38[0] = v7;
    *v6 = 136446210;
    v8 = sub_1E470B16C();
    v10 = sub_1E4654D04(v8, v9, v38);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1E45E0000, v4, v5, "BDSSyncEngine - didCompleteModifyRecordsBatch recordTypes: %{public}s", v6, 0xCu);
    sub_1E4658A0C(v7);
    MEMORY[0x1E6917530](v7, -1, -1);
    MEMORY[0x1E6917530](v6, -1, -1);
  }

  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v32 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue;
  v15 = (v12 + 63) >> 6;

  v17 = 0;
  v33 = a1;
  if (v14)
  {
    while (1)
    {
      v18 = v17;
LABEL_10:
      v19 = (*(a1 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v14)))));
      v20 = *v19;
      v21 = v19[1];

      v22 = sub_1E470AF0C();
      v35 = &v31;
      v23 = *(v34 + v32);
      MEMORY[0x1EEE9AC00](v22, v24);
      sub_1E4650534(&unk_1ECF75468, &qword_1E471EA78);
      sub_1E470B37C();

      if (!v37)
      {
        break;
      }

      v14 &= v14 - 1;

      sub_1E46585B4(&v36, v38);
      v25 = *sub_1E465057C(v38, v38[3]);
      sub_1E46FCC1C();
      result = sub_1E4658A0C(v38);
      v17 = v18;
      a1 = v33;
      if (!v14)
      {
        goto LABEL_7;
      }
    }

    sub_1E465E050(&v36, &unk_1ECF75468, &qword_1E471EA78);

    v26 = sub_1E470A0BC();
    v27 = sub_1E470B2AC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38[0] = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_1E4654D04(0xD00000000000002CLL, 0x80000001E4719DC0, v38);
      *(v28 + 12) = 2082;
      v30 = sub_1E4654D04(v20, v21, v38);

      *(v28 + 14) = v30;
      _os_log_impl(&dword_1E45E0000, v26, v27, "BDSSyncEngine - %s: missing pipeline for %{public}s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v29, -1, -1);
      MEMORY[0x1E6917530](v28, -1, -1);
    }

    else
    {
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1E46CCA0C(void *a1, void *a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_logger;
  v6 = a1;
  v7 = a2;
  v8 = sub_1E470A0BC();
  v9 = sub_1E470B2CC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v6;
    *v11 = v6;
    *(v10 + 12) = 2112;
    v12 = v6;
    v13 = a2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&dword_1E45E0000, v8, v9, "BDSSyncEngine - failedToDeleteRecordWith recordID: %@, error: %@", v10, 0x16u);
    sub_1E4650534(&qword_1ECF75100, qword_1E471E820);
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v11, -1, -1);
    MEMORY[0x1E6917530](v10, -1, -1);
  }

  v15 = [v6 recordName];
  v16 = sub_1E470AF1C();
  v18 = v17;

  v45[0] = 46;
  v45[1] = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v19, v20);
  v40 = v45;
  v21 = sub_1E46FF390(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E46D12E0, &v39, v16, v18, &v42);
  if (v21[2])
  {
    v42 = v5;
    v22 = v21[4];
    v23 = v21[5];
    v24 = v21[6];
    v25 = v21[7];

    v26 = MEMORY[0x1E6915CC0](v22, v23, v24, v25);
    v28 = v27;

    v29 = sub_1E470AF0C();
    v30 = *(v3 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue);
    MEMORY[0x1EEE9AC00](v29, v31);
    v40 = v3;
    v41 = v32;
    sub_1E4650534(&unk_1ECF75468, &qword_1E471EA78);
    sub_1E470B37C();

    if (v44)
    {

      sub_1E46585B4(&v43, v45);
      v33 = *sub_1E465057C(v45, v45[3]);
      sub_1E46FB1F0(v6, a2);
      sub_1E4658A0C(v45);
    }

    else
    {
      sub_1E465E050(&v43, &unk_1ECF75468, &qword_1E471EA78);

      v34 = sub_1E470A0BC();
      v35 = sub_1E470B2AC();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v45[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_1E4654D04(0xD00000000000002DLL, 0x80000001E4719DF0, v45);
        *(v36 + 12) = 2082;
        v38 = sub_1E4654D04(v26, v28, v45);

        *(v36 + 14) = v38;
        _os_log_impl(&dword_1E45E0000, v34, v35, "BDSSyncEngine - %s: missing pipeline for %{public}s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E6917530](v37, -1, -1);
        MEMORY[0x1E6917530](v36, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E46CCE48(void *a1, id a2)
{
  v3 = v2;
  v6 = a2;
  v7 = sub_1E470A0BC();
  v8 = sub_1E470B2AC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34[0] = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_1E4654D04(0xD00000000000002CLL, 0x80000001E4719C30, v34);
    *(v9 + 12) = 2112;
    v12 = a2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_1E45E0000, v7, v8, "BDSSyncEngine - %s. Error - %@", v9, 0x16u);
    sub_1E465E050(v10, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v10, -1, -1);
    sub_1E4658A0C(v11);
    MEMORY[0x1E6917530](v11, -1, -1);
    MEMORY[0x1E6917530](v9, -1, -1);
  }

  v14 = sub_1E4709AFC();
  v15 = [v14 domain];

  v16 = sub_1E470AF1C();
  v18 = v17;

  v19 = *MEMORY[0x1E696A250];
  if (v16 == sub_1E470AF1C() && v18 == v20)
  {
  }

  else
  {
    v22 = sub_1E470B84C();

    if ((v22 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v23 = a2;
  v24 = sub_1E470A0BC();
  v25 = sub_1E470B2BC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = a2;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&dword_1E45E0000, v24, v25, "BDSSyncEngineDataSource. Receieved error with NSCocoaErrorDomain - %@", v26, 0xCu);
    sub_1E465E050(v27, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v27, -1, -1);
    MEMORY[0x1E6917530](v26, -1, -1);
  }

LABEL_13:
  type metadata accessor for Code(0);
  v34[0] = 21;
  sub_1E46D01D4(&qword_1ECF743E8, type metadata accessor for Code);
  if (sub_1E4709A7C() & 1) != 0 || (v34[0] = 26, (sub_1E4709A7C()) || (v34[0] = 28, result = sub_1E4709A7C(), (result))
  {
    v31 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_invalidTokenZoneIDs;
    swift_beginAccess();
    v32 = a1;
    MEMORY[0x1E6915DB0]();
    if (*((*(v3 + v31) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v31) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v33 = *((*(v3 + v31) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1E470B0DC();
    }

    sub_1E470B0FC();
    return swift_endAccess();
  }

  return result;
}

void sub_1E46CD268(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_1E470A0BC();
  v5 = sub_1E470B2CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_1E4654D04(0xD000000000000027, 0x80000001E4719EA0, &v12);
    *(v6 + 12) = 2114;
    *(v6 + 14) = v3;
    *v7 = v3;
    v9 = v3;
    _os_log_impl(&dword_1E45E0000, v4, v5, "BDSSyncEngine - %s: zoneID: %{public}@", v6, 0x16u);
    sub_1E465E050(v7, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v7, -1, -1);
    sub_1E4658A0C(v8);
    MEMORY[0x1E6917530](v8, -1, -1);
    MEMORY[0x1E6917530](v6, -1, -1);
  }

  v10 = *(v2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_endFetchingChangesPublisher);
  v12 = v3;
  v11 = v3;
  sub_1E470A10C();
}

uint64_t sub_1E46CD3F4()
{
  v1 = v0;
  v2 = sub_1E470A0BC();
  v3 = sub_1E470B2CC();

  v4 = qword_1EE2ADFD0 + 48;
  if (os_log_type_enabled(v2, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_1E4654D04(0xD000000000000023, 0x80000001E4719ED0, v31);
    *(v5 + 12) = 2082;
    v7 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_invalidTokenZoneIDs;
    swift_beginAccess();
    v8 = *&v1[v7];
    v9 = sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);

    v11 = MEMORY[0x1E6915DE0](v10, v9);
    v13 = v12;

    v14 = sub_1E4654D04(v11, v13, v31);

    *(v5 + 14) = v14;
    v4 = &qword_1EE2ADFD0[6];
    _os_log_impl(&dword_1E45E0000, v2, v3, "BDSSyncEngine - %s: invalidTokenZoneIDs: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v6, -1, -1);
    MEMORY[0x1E6917530](v5, -1, -1);
  }

  v15 = v4[131];
  swift_beginAccess();
  v16 = *&v1[v15];
  if (!(v16 >> 62))
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  if (v16 < 0)
  {
    v29 = *&v1[v15];
  }

  if (sub_1E470B50C())
  {
LABEL_5:
    v17 = *&v1[v15];

    v18 = sub_1E470A0BC();
    v19 = sub_1E470B2CC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136446210;
      v22 = sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
      v23 = MEMORY[0x1E6915DE0](v17, v22);
      v25 = sub_1E4654D04(v23, v24, &v30);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1E45E0000, v18, v19, "BDSSyncEngine - handleZoneDidReset: %{public}s", v20, 0xCu);
      sub_1E4658A0C(v21);
      MEMORY[0x1E6917530](v21, -1, -1);
      MEMORY[0x1E6917530](v20, -1, -1);
    }

    sub_1E46BE47C();
    BDSSyncEngine.reestablishSalt()();

    v26 = *&v1[v15];
    *&v1[v15] = MEMORY[0x1E69E7CC0];
  }

LABEL_8:
  v27 = *&v1[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_endFetchingChangesPublisher];
  v30 = 0;
  return sub_1E470A10C();
}

uint64_t sub_1E46CD72C(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_1E470A37C();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = sub_1E470A38C();
  v2[16] = v6;
  v7 = *(v6 - 8);
  v2[17] = v7;
  v8 = *(v7 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v9 = sub_1E470A4FC();
  v2[20] = v9;
  v10 = *(v9 - 8);
  v2[21] = v10;
  v11 = *(v10 + 64) + 15;
  v2[22] = swift_task_alloc();
  v12 = sub_1E470A51C();
  v2[23] = v12;
  v13 = *(v12 - 8);
  v2[24] = v13;
  v14 = *(v13 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v15 = sub_1E470A41C();
  v2[27] = v15;
  v16 = *(v15 - 8);
  v2[28] = v16;
  v17 = *(v16 + 64) + 15;
  v2[29] = swift_task_alloc();
  v18 = sub_1E470A46C();
  v2[30] = v18;
  v19 = *(v18 - 8);
  v2[31] = v19;
  v20 = *(v19 + 64) + 15;
  v2[32] = swift_task_alloc();
  v21 = sub_1E470A3EC();
  v2[33] = v21;
  v22 = *(v21 - 8);
  v2[34] = v22;
  v23 = *(v22 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v24 = sub_1E470B27C();
  v2[37] = v24;
  v25 = *(v24 - 8);
  v2[38] = v25;
  v26 = *(v25 + 64) + 15;
  v2[39] = swift_task_alloc();
  v27 = sub_1E470B24C();
  v2[40] = v27;
  v28 = *(v27 - 8);
  v2[41] = v28;
  v29 = *(v28 + 64) + 15;
  v2[42] = swift_task_alloc();
  v30 = sub_1E470A4CC();
  v2[43] = v30;
  v31 = *(v30 - 8);
  v2[44] = v31;
  v32 = *(v31 + 64) + 15;
  v2[45] = swift_task_alloc();
  v33 = sub_1E470B1EC();
  v2[46] = v33;
  v34 = *(v33 - 8);
  v2[47] = v34;
  v35 = *(v34 + 64) + 15;
  v2[48] = swift_task_alloc();
  v36 = sub_1E470A49C();
  v2[49] = v36;
  v37 = *(v36 - 8);
  v2[50] = v37;
  v38 = *(v37 + 64) + 15;
  v2[51] = swift_task_alloc();
  v39 = sub_1E470A53C();
  v2[52] = v39;
  v40 = *(v39 - 8);
  v2[53] = v40;
  v41 = *(v40 + 64) + 15;
  v2[54] = swift_task_alloc();
  v42 = sub_1E470A33C();
  v2[55] = v42;
  v43 = *(v42 - 8);
  v2[56] = v43;
  v44 = *(v43 + 64) + 15;
  v2[57] = swift_task_alloc();
  v45 = sub_1E470A34C();
  v2[58] = v45;
  v46 = *(v45 - 8);
  v2[59] = v46;
  v47 = *(v46 + 64) + 15;
  v2[60] = swift_task_alloc();
  v48 = sub_1E470A36C();
  v2[61] = v48;
  v49 = *(v48 - 8);
  v2[62] = v49;
  v50 = *(v49 + 64) + 15;
  v2[63] = swift_task_alloc();
  v51 = sub_1E470A52C();
  v2[64] = v51;
  v52 = *(v51 - 8);
  v2[65] = v52;
  v53 = *(v52 + 64) + 15;
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E46CDDE8, 0, 0);
}

unint64_t sub_1E46CDDE8()
{
  v455 = v0;
  v2 = v0;
  v3 = v0[67];
  v4 = v0[65];
  v5 = v0[64];
  v6 = *(v4 + 16);
  v6(v3, v2[10], v5);
  v7 = (*(v4 + 88))(v3, v5);
  v451 = v2;
  if (v7 == *MEMORY[0x1E695B608])
  {
    v8 = v2[67];
    v9 = v2[65];
    v10 = v2[64];
    v11 = v2[57];
    v12 = v2[56];
    v13 = v451[55];
    v14 = v451[54];
    v15 = v451[53];
    v16 = v451[52];
    v17 = v451[11];
    (*(v9 + 96))(v8, v10);
    (*(v12 + 32))(v11, v8, v13);
    sub_1E470A32C();
    sub_1E46CA888(v14);
    (*(v15 + 8))(v14, v16);
    goto LABEL_3;
  }

  if (v7 == *MEMORY[0x1E695B630])
  {
    v31 = v2[67];
    v32 = v2[65];
    v34 = v2[63];
    v33 = v2[64];
    v35 = v2[61];
    v36 = v2[62];
    v37 = v2;
    v40 = v2 + 59;
    v39 = v2[59];
    v38 = v40[1];
    v41 = v37[58];
    (*(v32 + 96))(v31, v33);
    (*(v36 + 32))(v34, v31, v35);
    sub_1E470A35C();
    v42 = (*(v39 + 88))(v38, v41);
    if (v42 == *MEMORY[0x1E695B620])
    {
      v44 = v37[62];
      v43 = v37[63];
      v46 = v37[60];
      v45 = v37[61];
      v47 = v37[11];
      (*(v37[59] + 96))(v46, v37[58]);
      v48 = *v46;
      v49 = v48;
      sub_1E46CA67C(v48);

      (*(v44 + 8))(v43, v45);
      v2 = v37;
      goto LABEL_5;
    }

    if (v42 == *MEMORY[0x1E695B628])
    {
      v2 = v451;
      v78 = v451[62];
      v77 = v451[63];
      v80 = v451[60];
      v79 = v451[61];
      v81 = v451[11];
      (*(v451[59] + 96))(v80, v451[58]);
      v82 = *v80;
      sub_1E46CA67C(0);

      (*(v78 + 8))(v77, v79);
      goto LABEL_5;
    }

    if (v42 != *MEMORY[0x1E695B618])
    {
      v135 = v451[11] + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_logger;
      v136 = sub_1E470A0BC();
      v137 = sub_1E470B2AC();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        *v138 = 0;
        _os_log_impl(&dword_1E45E0000, v136, v137, "BDSSyncEngine - handleEvent(.accountChange): unknown changeType", v138, 2u);
        MEMORY[0x1E6917530](v138, -1, -1);
      }

      v140 = v451[62];
      v139 = v451[63];
      v142 = v451[60];
      v141 = v451[61];
      v143 = v451[59];
      v144 = v451[58];

      (*(v140 + 8))(v139, v141);
      (*(v143 + 8))(v142, v144);
      goto LABEL_4;
    }

    v11 = v451[63];
    v12 = v451[62];
    v13 = v451[61];
    v108 = v451[60];
    v109 = v451[11];
    (*(v451[59] + 96))(v108, v451[58]);
    v110 = *v108;
    v111 = *(v108 + 8);
    v112 = v110;
    v113 = v111;
    sub_1E46CA67C(v111);

LABEL_3:
    (*(v12 + 8))(v11, v13);
LABEL_4:
    v2 = v451;
    goto LABEL_5;
  }

  if (v7 == *MEMORY[0x1E695B698])
  {
    v50 = v2[67];
    v51 = v2[50];
    v52 = v2[51];
    v53 = v2[49];
    (*(v2[65] + 96))(v50, v2[64]);
    v54 = (*(v51 + 32))(v52, v50, v53);
    v55 = MEMORY[0x1E6915190](v54);
    v56 = *(v55 + 16);
    if (v56)
    {
      v57 = v2[47];
      v58 = v2[11];
      v60 = *(v57 + 16);
      v57 += 16;
      v59 = v60;
      v61 = v55 + ((*(v57 + 64) + 32) & ~*(v57 + 64));
      v62 = *(v57 + 56);
      v445 = (v57 - 8);
      v427 = v62;
      do
      {
        v63 = v451[48];
        v64 = v451[46];
        v65 = v59(v63, v61, v64);
        v66 = MEMORY[0x1E6915EF0](v65);
        (*v445)(v63, v64);
        v67 = v66;
        v68 = sub_1E470A0BC();
        v69 = sub_1E470B2CC();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = v59;
          v72 = v58;
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v454[0] = v74;
          *v70 = 136315394;
          *(v70 + 4) = sub_1E4654D04(0xD000000000000020, 0x80000001E4719D00, v454);
          *(v70 + 12) = 2114;
          *(v70 + 14) = v67;
          *v73 = v67;
          v67 = v67;
          _os_log_impl(&dword_1E45E0000, v68, v69, "BDSSyncEngine - %s: %{public}@", v70, 0x16u);
          sub_1E465E050(v73, &qword_1ECF75100, qword_1E471E820);
          v75 = v73;
          v58 = v72;
          v59 = v71;
          MEMORY[0x1E6917530](v75, -1, -1);
          sub_1E4658A0C(v74);
          MEMORY[0x1E6917530](v74, -1, -1);
          v76 = v70;
          v62 = v427;
          MEMORY[0x1E6917530](v76, -1, -1);
        }

        v61 += v62;
        --v56;
      }

      while (v56);

      v2 = v451;
    }

    else
    {
    }

    v130 = v2[50];
    v129 = v2[51];
    v131 = v2[49];
    v132 = v2[11];
    v133 = MEMORY[0x1E69151A0](v107);
    sub_1E46CB0B4(v133);

LABEL_41:
    (*(v130 + 8))(v129, v131);
    goto LABEL_5;
  }

  if (v7 == *MEMORY[0x1E695B6A0])
  {
    v83 = v2[67];
    v84 = v2[44];
    v85 = v2[45];
    v86 = v2[43];
    (*(v2[65] + 96))(v83, v2[64]);
    v87 = (*(v84 + 32))(v85, v83, v86);
    v88 = MEMORY[0x1E69151C0](v87);
    v89 = *(v88 + 16);
    v90 = "bookReadParams";
    if (v89)
    {
      v91 = v2[41];
      v93 = *(v91 + 16);
      v92 = v91 + 16;
      v94 = v88 + ((*(v92 + 64) + 32) & ~*(v92 + 64));
      v439 = v93;
      v424 = *(v92 + 56);
      v428 = *(v2[11] + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_recordChangePublisher);
      do
      {
        v95 = v2[42];
        v96 = v2[40];
        v97 = v439(v95, v94, v96);
        v98 = MEMORY[0x1E6915F50](v97);
        (*(v92 - 8))(v95, v96);
        v99 = v98;
        v100 = sub_1E470A0BC();
        v101 = sub_1E470B2CC();

        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v454[0] = v104;
          *v102 = 136315394;
          *(v102 + 4) = sub_1E4654D04(0xD000000000000017, 0x80000001E4719CE0, v454);
          *(v102 + 12) = 2112;
          v105 = [v99 recordID];
          *(v102 + 14) = v105;
          *v103 = v105;
          _os_log_impl(&dword_1E45E0000, v100, v101, "BDSSyncEngine - %s: %@", v102, 0x16u);
          sub_1E465E050(v103, &qword_1ECF75100, qword_1E471E820);
          MEMORY[0x1E6917530](v103, -1, -1);
          sub_1E4658A0C(v104);
          v106 = v104;
          v2 = v451;
          MEMORY[0x1E6917530](v106, -1, -1);
          MEMORY[0x1E6917530](v102, -1, -1);
        }

        v2[8] = v99;
        sub_1E470A10C();

        v94 += v424;
        --v89;
      }

      while (v89);

      v90 = "bookReadParams";
    }

    else
    {
    }

    v158 = v2[45];
    v159 = MEMORY[0x1E69151D0](v134);
    v160 = *(v159 + 16);
    if (v160)
    {
      v161 = v2[38];
      v163 = *(v161 + 16);
      v161 += 16;
      v162 = v163;
      v164 = v159 + ((*(v161 + 64) + 32) & ~*(v161 + 64));
      v433 = *(v161 + 56);
      v440 = *(v2[11] + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_recordDeletionPublisher);
      v429 = (v161 - 8);
      v417 = *(v90 + 484);
      do
      {
        v165 = v2[39];
        v166 = v2[37];
        v167 = v162(v165, v164, v166);
        v168 = MEMORY[0x1E6915F80](v167);
        sub_1E470B25C();
        (*v429)(v165, v166);
        v169 = v168;
        v170 = sub_1E470A0BC();
        v171 = sub_1E470B2CC();

        if (os_log_type_enabled(v170, v171))
        {
          v172 = swift_slowAlloc();
          v173 = swift_slowAlloc();
          v174 = v162;
          v175 = swift_slowAlloc();
          v454[0] = v175;
          *v172 = v417;
          *(v172 + 4) = sub_1E4654D04(0xD000000000000030, 0x80000001E4719CA0, v454);
          *(v172 + 12) = 2112;
          *(v172 + 14) = v169;
          *v173 = v169;
          v176 = v169;
          _os_log_impl(&dword_1E45E0000, v170, v171, "BDSSyncEngine - %s: %@", v172, 0x16u);
          sub_1E465E050(v173, &qword_1ECF75100, qword_1E471E820);
          v177 = v173;
          v2 = v451;
          MEMORY[0x1E6917530](v177, -1, -1);
          sub_1E4658A0C(v175);
          v178 = v175;
          v162 = v174;
          MEMORY[0x1E6917530](v178, -1, -1);
          MEMORY[0x1E6917530](v172, -1, -1);
        }

        v2[9] = v169;
        sub_1E470A10C();

        v164 += v433;
        --v160;
      }

      while (v160);
    }

    (*(v2[44] + 8))(v2[45], v2[43]);
    goto LABEL_5;
  }

  if (v7 == *MEMORY[0x1E695B688])
  {
    v114 = v2[67];
    v115 = v2[36];
    v116 = v2[33];
    v117 = v2[34];
    (*(v2[65] + 96))(v114, v2[64]);
    v118 = (*(v117 + 32))(v115, v114, v116);
    v119 = MEMORY[0x1E69150B0](v118);
    if (v119 >> 62)
    {
      v266 = sub_1E470B50C();

      if (!v266)
      {
LABEL_93:
        v267 = v2[36];
        v268 = *(MEMORY[0x1E69150E0](v121) + 16);

        if (v268)
        {
          v270 = v2[11];
          (*(v2[34] + 16))(v2[35], v2[36], v2[33]);
          v271 = sub_1E470A0BC();
          v272 = sub_1E470B2AC();
          v273 = os_log_type_enabled(v271, v272);
          v275 = v2[34];
          v274 = v2[35];
          v276 = v2[33];
          if (v273)
          {
            v277 = swift_slowAlloc();
            v278 = swift_slowAlloc();
            v454[0] = v278;
            *v277 = 136446210;
            v279 = MEMORY[0x1E69150E0]();
            v280 = sub_1E470A3AC();
            v281 = MEMORY[0x1E6915DE0](v279, v280);
            v283 = v282;

            (*(v275 + 8))(v274, v276);
            v284 = sub_1E4654D04(v281, v283, v454);

            *(v277 + 4) = v284;
            _os_log_impl(&dword_1E45E0000, v271, v272, "BDSSyncEngine - failedZoneSaves: %{public}s", v277, 0xCu);
            sub_1E4658A0C(v278);
            MEMORY[0x1E6917530](v278, -1, -1);
            MEMORY[0x1E6917530](v277, -1, -1);
          }

          else
          {

            v269 = (*(v275 + 8))(v274, v276);
          }

          v2 = v451;
        }

        v285 = v2[36];
        v286 = MEMORY[0x1E69150D0](v269);
        if (v286 >> 62)
        {
          v308 = sub_1E470B50C();

          if (!v308)
          {
            goto LABEL_114;
          }
        }

        else
        {
          v287 = *((v286 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v287)
          {
LABEL_114:
            v309 = v2[36];
            v310 = *(sub_1E470A3DC() + 16);

            v311 = v2[36];
            if (v310)
            {
              v312 = v2[11];
              v313 = sub_1E470A3DC();
              v314 = 0;
              v315 = v313 + 64;
              v448 = v313;
              v316 = -1;
              v317 = -1 << *(v313 + 32);
              if (-v317 < 64)
              {
                v316 = ~(-1 << -v317);
              }

              v150 = v316 & *(v313 + 64);
              v1 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_logger;
              v318 = (63 - v317) >> 6;
              v434 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_logger;
LABEL_119:
              if (v150)
              {
                goto LABEL_124;
              }

              while (1)
              {
                v319 = v314 + 1;
                if (__OFADD__(v314, 1))
                {
                  break;
                }

                if (v319 >= v318)
                {
                  v2 = v451;
                  (*(v451[34] + 8))(v451[36], v451[33]);

                  goto LABEL_5;
                }

                v150 = *(v315 + 8 * v319);
                ++v314;
                if (v150)
                {
                  v314 = v319;
LABEL_124:
                  v320 = (v314 << 9) | (8 * __clz(__rbit64(v150)));
                  v321 = *(*(v448 + 56) + v320);
                  v322 = *(*(v448 + 48) + v320);
                  v323 = v321;
                  v324 = v322;
                  v325 = v323;
                  v326 = sub_1E470A0BC();
                  v327 = sub_1E470B2CC();

                  if (os_log_type_enabled(v326, v327))
                  {
                    v328 = swift_slowAlloc();
                    v329 = swift_slowAlloc();
                    *v328 = 138543618;
                    *(v328 + 4) = v324;
                    *v329 = v324;
                    *(v328 + 12) = 2114;
                    v330 = v324;
                    v331 = v325;
                    v332 = _swift_stdlib_bridgeErrorToNSError();
                    *(v328 + 14) = v332;
                    v329[1] = v332;
                    _os_log_impl(&dword_1E45E0000, v326, v327, "BDSSyncEngine - failedToDeleteRecordZoneWith recordZoneID: %{public}@, error: %{public}@", v328, 0x16u);
                    sub_1E4650534(&qword_1ECF75100, qword_1E471E820);
                    swift_arrayDestroy();
                    MEMORY[0x1E6917530](v329, -1, -1);
                    v333 = v328;
                    v1 = v434;
                    MEMORY[0x1E6917530](v333, -1, -1);
                  }

                  v150 &= v150 - 1;

                  goto LABEL_119;
                }
              }

              __break(1u);
              goto LABEL_129;
            }

            (*(v2[34] + 8))(v2[36], v2[33]);
LABEL_5:
            v18 = v2[67];
            v19 = v2[66];
            v20 = v2[63];
            v21 = v2[60];
            v22 = v2[57];
            v23 = v2[54];
            v24 = v2;
            v25 = v2[51];
            v26 = v24[48];
            v27 = v24[45];
            v28 = v24[42];
            v413 = v24[39];
            v414 = v24[36];
            v415 = v24[35];
            v416 = v24[32];
            v419 = v24[29];
            v421 = v24[26];
            v423 = v24[25];
            v426 = v24[22];
            v432 = v24[19];
            v438 = v24[18];
            v444 = v24[15];
            v452 = v24[14];

            v29 = v24[1];

            return v29();
          }
        }

        v289 = v2[36];
        result = MEMORY[0x1E69150D0](v288);
        v290 = result;
        if (result >> 62)
        {
          result = sub_1E470B50C();
          v291 = result;
          if (result)
          {
LABEL_102:
            if (v291 >= 1)
            {
              v292 = 0;
              v293 = v2[11];
              v294 = v290 & 0xC000000000000001;
              do
              {
                if (v294)
                {
                  v295 = MEMORY[0x1E6916300](v292, v290);
                }

                else
                {
                  v295 = *(v290 + 8 * v292 + 32);
                }

                v296 = v295;
                v297 = sub_1E470A0BC();
                v298 = sub_1E470B2CC();

                if (os_log_type_enabled(v297, v298))
                {
                  v299 = v294;
                  v300 = v293;
                  v301 = v291;
                  v302 = v290;
                  v303 = swift_slowAlloc();
                  v304 = swift_slowAlloc();
                  *v303 = 138543362;
                  *(v303 + 4) = v296;
                  *v304 = v296;
                  v305 = v296;
                  _os_log_impl(&dword_1E45E0000, v297, v298, "BDSSyncEngine - didDeleteRecordZoneWith recordZoneID: %{public}@", v303, 0xCu);
                  sub_1E465E050(v304, &qword_1ECF75100, qword_1E471E820);
                  v306 = v304;
                  v2 = v451;
                  MEMORY[0x1E6917530](v306, -1, -1);
                  v307 = v303;
                  v290 = v302;
                  v291 = v301;
                  v293 = v300;
                  v294 = v299;
                  MEMORY[0x1E6917530](v307, -1, -1);
                }

                ++v292;
              }

              while (v291 != v292);
              goto LABEL_113;
            }

LABEL_165:
            __break(1u);
            goto LABEL_166;
          }
        }

        else
        {
          v291 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v291)
          {
            goto LABEL_102;
          }
        }

LABEL_113:

        goto LABEL_114;
      }
    }

    else
    {
      v120 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v120)
      {
        goto LABEL_93;
      }
    }

    v122 = v2[36];
    result = MEMORY[0x1E69150B0](v121);
    v123 = result;
    if (result >> 62)
    {
      result = sub_1E470B50C();
      v124 = result;
      if (result)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v124 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v124)
      {
LABEL_33:
        if (v124 < 1)
        {
          __break(1u);
          goto LABEL_165;
        }

        for (i = 0; i != v124; ++i)
        {
          if ((v123 & 0xC000000000000001) != 0)
          {
            v126 = MEMORY[0x1E6916300](i, v123);
          }

          else
          {
            v126 = *(v123 + 8 * i + 32);
          }

          v127 = v126;
          v128 = v2[11];
          sub_1E46CB6CC(v126);
        }
      }
    }

    goto LABEL_93;
  }

  if (v7 != *MEMORY[0x1E695B690])
  {
    if (v7 == *MEMORY[0x1E695B680])
    {
      v179 = v2[11] + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_logger;
      v180 = sub_1E470A0BC();
      v181 = sub_1E470B2CC();
      if (os_log_type_enabled(v180, v181))
      {
        v182 = swift_slowAlloc();
        *v182 = 0;
        _os_log_impl(&dword_1E45E0000, v180, v181, "BDSSyncEngine - willFetchChanges", v182, 2u);
        MEMORY[0x1E6917530](v182, -1, -1);
      }

      v183 = v2[67];
      v184 = v2[65];
      v185 = v2[64];

      goto LABEL_66;
    }

    v186 = v2[64];
    if (v7 == *MEMORY[0x1E695B6B0])
    {
      v187 = v2[67];
      v188 = v2[25];
      v189 = v2[26];
      v190 = v2[23];
      v191 = v2[24];
      v192 = v2[11];
      (*(v2[65] + 96))(v187, v186);
      (*(v191 + 32))(v189, v187, v190);
      (*(v191 + 16))(v188, v189, v190);
      v193 = sub_1E470A0BC();
      v194 = sub_1E470B2CC();
      v195 = os_log_type_enabled(v193, v194);
      v196 = v2[25];
      v197 = v2[26];
      v198 = v2[23];
      v199 = v2[24];
      if (v195)
      {
        v200 = swift_slowAlloc();
        v201 = swift_slowAlloc();
        *v200 = 138543362;
        v202 = MEMORY[0x1E6915220]();
        v203 = *(v199 + 8);
        v203(v196, v198);
        *(v200 + 4) = v202;
        *v201 = v202;
        _os_log_impl(&dword_1E45E0000, v193, v194, "BDSSyncEngine - willFetchRecordZoneChanges: %{public}@", v200, 0xCu);
        sub_1E465E050(v201, &qword_1ECF75100, qword_1E471E820);
        v204 = v201;
        v2 = v451;
        MEMORY[0x1E6917530](v204, -1, -1);
        MEMORY[0x1E6917530](v200, -1, -1);

        v203(v197, v198);
      }

      else
      {

        v217 = *(v199 + 8);
        v217(v196, v198);
        v217(v197, v198);
      }

      goto LABEL_5;
    }

    if (v7 == *MEMORY[0x1E695B6A8])
    {
      v205 = v2[67];
      v206 = v2[21];
      v207 = v2[22];
      v208 = v2[20];
      (*(v2[65] + 96))(v205, v186);
      (*(v206 + 32))(v207, v205, v208);
      v209 = sub_1E470A4DC();
      if (v209)
      {
        v210 = v209;
        v211 = v2[22];
        v212 = v2[11];
        v213 = MEMORY[0x1E6915200]();
        v214 = v210;
        sub_1E46CCE48(v213, v214);
      }

      v130 = v2[21];
      v129 = v2[22];
      v131 = v2[20];
      v215 = v2[11];
      v216 = MEMORY[0x1E6915200]();
      sub_1E46CD268(v216);

      goto LABEL_41;
    }

    if (v7 == *MEMORY[0x1E695B670])
    {
      v183 = v2[67];
      v184 = v2[65];
      v218 = v2[11];
      v185 = v2[64];
      sub_1E46CD3F4();
LABEL_66:
      (*(v184 + 8))(v183, v185);
      goto LABEL_5;
    }

    if (v7 == *MEMORY[0x1E695B678])
    {
      v219 = v2[67];
      v220 = v2[18];
      v221 = v2[19];
      v222 = v2[16];
      v223 = v2[17];
      v224 = v2[11];
      (*(v2[65] + 96))(v219, v186);
      (*(v223 + 32))(v221, v219, v222);
      (*(v223 + 16))(v220, v221, v222);
      v225 = sub_1E470A0BC();
      v226 = sub_1E470B2CC();
      v227 = os_log_type_enabled(v225, v226);
      v228 = v2[18];
      v229 = v2[19];
      v230 = v2[16];
      v231 = v2[17];
      if (v227)
      {
        v232 = swift_slowAlloc();
        v233 = swift_slowAlloc();
        v454[0] = v233;
        *v232 = 136446210;
        sub_1E46D01D4(&qword_1ECF754B0, MEMORY[0x1E695B660]);
        v234 = sub_1E470B81C();
        v236 = v235;
        v446 = v229;
        v237 = *(v231 + 8);
        v237(v228, v230);
        v238 = sub_1E4654D04(v234, v236, v454);

        *(v232 + 4) = v238;
        v239 = "BDSSyncEngine - willSendChanges: %{public}s";
LABEL_83:
        _os_log_impl(&dword_1E45E0000, v225, v226, v239, v232, 0xCu);
        sub_1E4658A0C(v233);
        MEMORY[0x1E6917530](v233, -1, -1);
        v251 = v232;
        v2 = v451;
        MEMORY[0x1E6917530](v251, -1, -1);

        v237(v446, v230);
        goto LABEL_5;
      }
    }

    else
    {
      if (v7 != *MEMORY[0x1E695B650])
      {
        v253 = v2[11];
        v6(v2[66], v2[10], v2[64]);
        v254 = sub_1E470A0BC();
        v255 = sub_1E470B2AC();
        v256 = os_log_type_enabled(v254, v255);
        v257 = v2[66];
        v258 = v2[65];
        v259 = v2[64];
        if (v256)
        {
          v260 = swift_slowAlloc();
          v447 = swift_slowAlloc();
          v454[0] = v447;
          *v260 = 136315138;
          sub_1E46D01D4(&qword_1ECF754A0, MEMORY[0x1E695B6B8]);
          v261 = sub_1E470B81C();
          v263 = v262;
          v264 = *(v258 + 8);
          v264(v257, v259);
          v265 = sub_1E4654D04(v261, v263, v454);

          *(v260 + 4) = v265;
          _os_log_impl(&dword_1E45E0000, v254, v255, "BDSSyncEngine - handleEvent - unhandled event: %s", v260, 0xCu);
          sub_1E4658A0C(v447);
          MEMORY[0x1E6917530](v447, -1, -1);
          MEMORY[0x1E6917530](v260, -1, -1);
        }

        else
        {

          v264 = *(v258 + 8);
          v264(v257, v259);
        }

        v2 = v451;
        v264(v451[67], v451[64]);
        goto LABEL_5;
      }

      v240 = v2[67];
      v241 = v2[14];
      v242 = v2[15];
      v243 = v2[12];
      v244 = v2[13];
      v245 = v2[11];
      (*(v2[65] + 96))(v240, v186);
      (*(v244 + 32))(v242, v240, v243);
      (*(v244 + 16))(v241, v242, v243);
      v225 = sub_1E470A0BC();
      v226 = sub_1E470B2CC();
      v246 = os_log_type_enabled(v225, v226);
      v228 = v2[14];
      v229 = v2[15];
      v230 = v2[12];
      v231 = v2[13];
      if (v246)
      {
        v232 = swift_slowAlloc();
        v233 = swift_slowAlloc();
        v454[0] = v233;
        *v232 = 136446210;
        sub_1E46D01D4(&qword_1ECF754A8, MEMORY[0x1E695B640]);
        v247 = sub_1E470B81C();
        v249 = v248;
        v446 = v229;
        v237 = *(v231 + 8);
        v237(v228, v230);
        v250 = sub_1E4654D04(v247, v249, v454);

        *(v232 + 4) = v250;
        v239 = "BDSSyncEngine - didSendChanges: %{public}s";
        goto LABEL_83;
      }
    }

    v252 = *(v231 + 8);
    v252(v228, v230);
    v252(v229, v230);
    goto LABEL_5;
  }

  v145 = v2[67];
  v146 = v2[31];
  v147 = v2[32];
  v148 = v2[30];
  (*(v2[65] + 96))(v145, v2[64]);
  v149 = (*(v146 + 32))(v147, v145, v148);
  v453 = MEMORY[0x1E69E7CD0];
  result = MEMORY[0x1E6915170](v149);
  v150 = result;
  if (!(result >> 62))
  {
    v151 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v151)
    {
      goto LABEL_130;
    }

    goto LABEL_49;
  }

LABEL_129:
  result = sub_1E470B50C();
  v151 = result;
  if (!result)
  {
    goto LABEL_130;
  }

LABEL_49:
  if (v151 >= 1)
  {
    v152 = 0;
    do
    {
      if ((v150 & 0xC000000000000001) != 0)
      {
        v153 = MEMORY[0x1E6916300](v152, v150);
      }

      else
      {
        v153 = *(v150 + 8 * v152 + 32);
      }

      v154 = v153;
      v155 = v451[11];
      ++v152;
      v156 = sub_1E470B3DC();
      sub_1E46C8108(v454, v156, v157);

      sub_1E46CBAA8(v154);
    }

    while (v151 != v152);
LABEL_130:
    v334 = v451;
    v335 = v451[32];

    v337 = MEMORY[0x1E6915140](v336);
    v338 = *(v337 + 16);
    if (v338)
    {
      v339 = 0;
      v340 = v451[28];
      v341 = *(v340 + 16);
      v340 += 16;
      v422 = v341;
      v342 = v337 + ((*(v340 + 64) + 32) & ~*(v340 + 64));
      v420 = *(v340 + 56);
      v430 = (v451 + 2);
      v418 = (v340 - 8);
      do
      {
        v343 = v422(v451[29], v342, v451[27]);
        v344 = MEMORY[0x1E6915120](v343);
        v345 = [v344 recordID];

        v346 = [v345 recordName];
        v347 = sub_1E470AF1C();
        v349 = v348;

        v451[2] = 46;
        v451[3] = 0xE100000000000000;
        v350 = swift_task_alloc();
        *(v350 + 16) = v430;
        v351 = sub_1E46FF390(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E46D0EA8, v350, v347, v349, v430);

        if (!v351[2])
        {
          goto LABEL_159;
        }

        v352 = v451[29];
        v435 = v451[27];
        v441 = v451[11];
        v353 = v342;
        v354 = v351[4];
        v1 = v351[5];
        v449 = v338;
        v355 = v351[6];
        v356 = v351[7];

        v357 = MEMORY[0x1E6915CC0](v354, v1, v355, v356);
        v359 = v358;

        sub_1E46C8108(v454, v357, v359);

        v360 = sub_1E470A3FC();
        (*v418)(v352, v435);
        sub_1E46CBDD8(v345, v360);

        v342 = v353 + v420;
        v338 = v449 - 1;
      }

      while (v449 != 1);
    }

    else
    {

      v339 = 0;
    }

    v362 = v451[32];
    result = MEMORY[0x1E6915160](v361);
    v1 = result;
    if (result >> 62)
    {
      goto LABEL_162;
    }

    v363 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v450 = 0;
    if (v363)
    {
      goto LABEL_138;
    }

    while (1)
    {
LABEL_146:
      v437 = (v334 + 6);
      v383 = v334[32];

      v384 = sub_1E470A3DC();
      v385 = 0;
      v386 = v384 + 64;
      v443 = v384;
      v387 = -1;
      v388 = -1 << *(v384 + 32);
      if (-v388 < 64)
      {
        v387 = ~(-1 << -v388);
      }

      v389 = v387 & *(v384 + 64);
      v390 = (63 - v388) >> 6;
      v425 = v390;
      for (j = v384 + 64; v389; v386 = j)
      {
        v391 = v385;
        v2 = v451;
LABEL_154:
        v392 = (v391 << 9) | (8 * __clz(__rbit64(v389)));
        v393 = *(*(v443 + 56) + v392);
        v1 = *(*(v443 + 48) + v392);
        v334 = v393;
        v394 = [v1 recordName];
        v395 = sub_1E470AF1C();
        v397 = v396;

        v2[6] = 46;
        v2[7] = 0xE100000000000000;
        v398 = swift_task_alloc();
        *(v398 + 16) = v437;
        v399 = v397;
        v339 = v450;
        v400 = sub_1E46FF390(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E46D12E0, v398, v395, v399, v437);

        if (!v400[2])
        {
          goto LABEL_161;
        }

        v401 = v2[11];
        v389 &= v389 - 1;
        v402 = v400[4];
        v403 = v400[5];
        v404 = v400[6];
        v405 = v400[7];

        v406 = MEMORY[0x1E6915CC0](v402, v403, v404, v405);
        v408 = v407;

        sub_1E46C8108(v454, v406, v408);

        v339 = v334;
        sub_1E46CCA0C(v1, v339);

        v385 = v391;
        v390 = v425;
      }

      v2 = v451;
      while (1)
      {
        v391 = v385 + 1;
        if (__OFADD__(v385, 1))
        {
          break;
        }

        if (v391 >= v390)
        {
          v410 = v451[31];
          v409 = v451[32];
          v411 = v451[30];
          v412 = v451[11];

          sub_1E46CC604(v453);

          (*(v410 + 8))(v409, v411);
          goto LABEL_5;
        }

        v389 = *(v386 + 8 * v391);
        ++v385;
        if (v389)
        {
          goto LABEL_154;
        }
      }

      __break(1u);
LABEL_159:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        result = sub_1E470B50C();
        v363 = result;
        v450 = v339;
        if (!result)
        {
          break;
        }

LABEL_138:
        if (v363 < 1)
        {
          goto LABEL_167;
        }

        v364 = 0;
        v436 = v1 & 0xC000000000000001;
        v442 = (v334 + 4);
        while (1)
        {
          v365 = v436 ? MEMORY[0x1E6916300](v364, v1) : *(v1 + 8 * v364 + 32);
          v366 = v365;
          v334 = v450;
          v367 = [v365 recordName];
          v368 = sub_1E470AF1C();
          v370 = v369;

          v451[4] = 46;
          v451[5] = 0xE100000000000000;
          v371 = swift_task_alloc();
          *(v371 + 16) = v442;
          v372 = v370;
          v339 = v450;
          v373 = sub_1E46FF390(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E46D12E0, v371, v368, v372, v442);

          if (!v373[2])
          {
            break;
          }

          v374 = v451[11];
          ++v364;
          v375 = v373[4];
          v376 = v373[5];
          v377 = v363;
          v378 = v1;
          v379 = v373[6];
          v380 = v373[7];

          v339 = MEMORY[0x1E6915CC0](v375, v376, v379, v380);
          v382 = v381;
          v1 = v378;
          v363 = v377;

          sub_1E46C8108(v454, v339, v382);

          sub_1E46CC214(v366);

          if (v377 == v364)
          {
            v334 = v451;
            goto LABEL_146;
          }
        }
      }
    }
  }

LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
  return result;
}

uint64_t sub_1E46D00F8@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_registeredDataSourceByRecordType;
  swift_beginAccess();
  *a1 = *(v3 + v4);
}

uint64_t sub_1E46D0164(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF75A30, &qword_1E471E950);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E46D01D4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E46D021C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v22 = 0;
  v23 = a4;
  v20 = a2;
  v21 = a1;
  v4 = 0;
  v24 = a3;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v25 = *(*(v24 + 48) + 8 * v13);
    MEMORY[0x1EEE9AC00](a1, a2);
    v19[2] = &v25;
    v15 = v14;
    v16 = sub_1E46C9DA4(sub_1E46D1320, v19, v23);

    if (v16)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        v18 = v24;

        sub_1E46E50E8(v21, v20, v22, v18);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1E46D03C4(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v35[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;
  v34 = a2;

  if (v4 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v29 = &v29;
    v30 = v5;
    MEMORY[0x1EEE9AC00](v7, v8);
    v31 = &v29 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v6);
    v32 = 0;
    v33 = v2;
    v5 = 0;
    v12 = *(v2 + 56);
    v2 += 56;
    v11 = v12;
    v13 = 1 << *(v2 - 24);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v11;
    v6 = (v13 + 63) >> 6;
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v19 = v16 | (v5 << 6);
      v35[0] = *(*(v33 + 48) + 8 * v19);
      MEMORY[0x1EEE9AC00](v9, v10);
      *(&v29 - 2) = v35;
      v21 = v20;
      v22 = sub_1E46C9DA4(sub_1E46D1320, (&v29 - 4), v34);

      if (v22)
      {
        *&v31[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_16:
          v24 = sub_1E46E50E8(v31, v30, v32, v33);
          goto LABEL_17;
        }
      }
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v5 >= v6)
      {
        goto LABEL_16;
      }

      v18 = *(v2 + 8 * v5);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  v28 = v34;

  v24 = sub_1E46C7F50(v27, v5, v2, v28);

  MEMORY[0x1E6917530](v27, -1, -1);
LABEL_17:

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

uint64_t sub_1E46D0684(uint64_t a1, unint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1E46D03C4(a1, a2);
  }

  v3 = MEMORY[0x1E69E7CD0];
  v26 = MEMORY[0x1E69E7CD0];

  sub_1E470B4FC();
  v4 = sub_1E470B52C();
  if (v4)
  {
    v5 = v4;
    sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
    v6 = v5;
    do
    {
      v24 = v6;
      v7 = swift_dynamicCast();
      v24 = v25;
      MEMORY[0x1EEE9AC00](v7, v8);
      v23[2] = &v24;
      v9 = sub_1E46C9DA4(sub_1E46D0E24, v23, a2);
      v10 = v25;
      if (v9)
      {
        v11 = *(v3 + 16);
        if (*(v3 + 24) <= v11)
        {
          sub_1E46C7CA4(v11 + 1);
        }

        v3 = v26;
        v12 = *(v26 + 40);
        result = sub_1E470B41C();
        v14 = v3 + 56;
        v15 = -1 << *(v3 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v3 + 56 + 8 * (v16 >> 6))) != 0)
        {
          v18 = __clz(__rbit64((-1 << v16) & ~*(v3 + 56 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v15) >> 6;
          do
          {
            if (++v17 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v17 == v20;
            if (v17 == v20)
            {
              v17 = 0;
            }

            v19 |= v21;
            v22 = *(v14 + 8 * v17);
          }

          while (v22 == -1);
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
        }

        *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v3 + 48) + 8 * v18) = v10;
        ++*(v3 + 16);
      }

      else
      {
      }

      v6 = sub_1E470B52C();
    }

    while (v6);
  }

  return v3;
}

uint64_t sub_1E46D08E8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1E470A5DC();
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E470A61C();
  v25 = *(v11 - 8);
  v26 = v11;
  v12 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  v16 = sub_1E470A0BC();
  v17 = sub_1E470B2CC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_1E4654D04(a1, a2, aBlock);
    _os_log_impl(&dword_1E45E0000, v16, v17, "BDSSyncEngine - updatedSaltWithVersion %{public}s", v18, 0xCu);
    sub_1E4658A0C(v19);
    MEMORY[0x1E6917530](v19, -1, -1);
    MEMORY[0x1E6917530](v18, -1, -1);
  }

  v20 = *(v3 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a1;
  v22[4] = a2;
  aBlock[4] = sub_1E46D0DD8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E65D80;
  v23 = _Block_copy(aBlock);

  sub_1E470A5FC();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1E46D01D4(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v15, v10, v23);
  _Block_release(v23);
  (*(v27 + 8))(v10, v6);
  (*(v25 + 8))(v15, v26);
}

uint64_t sub_1E46D0CD8()
{
  result = sub_1E470A0DC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1E46D0DD8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1E46C4CF0();
}

uint64_t sub_1E46D0DE4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E46D0E40(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
  return sub_1E470B42C() & 1;
}

uint64_t sub_1E46D0EE0()
{
  v1 = sub_1E470A53C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E46D0FBC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_1E470A53C() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1E46D1060(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E4665FC8;

  return sub_1E46C1660(a1, v4, v5, v7, v6);
}

uint64_t sub_1E46D1120(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E4665FC8;

  return sub_1E46C6CA4(a1, v5);
}

uint64_t sub_1E46D11D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E4665DD0;

  return sub_1E46C6CA4(a1, v5);
}

uint64_t PBPropertyValue.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for PBPropertyValue(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PBPropertyValue.createdAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(v1 + *(v8 + 28), v7, &qword_1ECF74A38, &unk_1E471EB00);
  v9 = sub_1E4709E7C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1E4709E6C();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1E465E050(v7, &qword_1ECF74A38, &unk_1E471EB00);
  }

  return result;
}

uint64_t PBPropertyBundle.configuration.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4650534(&qword_1ECF74A28, &unk_1E471E790);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for PBPropertyBundle(0);
  sub_1E465E0B0(v1 + *(v8 + 28), v7, &qword_1ECF74A28, &unk_1E471E790);
  v9 = type metadata accessor for PBPropertyConfiguration(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1E46D48B4(v7, a1, type metadata accessor for PBPropertyConfiguration);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  v11 = a1 + *(v9 + 32);
  _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1E465E050(v7, &qword_1ECF74A28, &unk_1E471E790);
  }

  return result;
}

uint64_t PBPropertyTimeSlice.startOfTimeSlice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for PBPropertyTimeSlice(0);
  sub_1E465E0B0(v1 + *(v8 + 24), v7, &qword_1ECF74A38, &unk_1E471EB00);
  v9 = sub_1E4709E7C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1E4709E6C();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1E465E050(v7, &qword_1ECF74A38, &unk_1E471EB00);
  }

  return result;
}

uint64_t sub_1E46D17E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v160 = *(v4 - 8);
  v5 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v133 - v12;
  v14 = sub_1E4650534(&qword_1ECF75790, &qword_1E471FB28);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v133 - v17;
  v19 = sub_1E4709E7C();
  v155 = *(v19 - 8);
  v20 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v19, v21);
  v167 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v133 - v25;
  v27 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8, v29);
  v156 = &v133 - v30;
  v162 = sub_1E4650534(&qword_1ECF75788, &qword_1E471FB20);
  v31 = *(*(v162 - 8) + 64);
  MEMORY[0x1EEE9AC00](v162, v32);
  v163 = &v133 - v33;
  v168 = type metadata accessor for PBPropertyValue(0);
  v149 = *(v168 - 1);
  v34 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v168, v35);
  v165 = &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v169 = (&v133 - v39);
  v159 = type metadata accessor for PBPropertyConfiguration(0);
  v40 = *(v159 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v159, v42);
  v150 = (&v133 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = sub_1E4650534(&qword_1ECF74A28, &unk_1E471E790);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8, v46);
  v151 = (&v133 - v47);
  v157 = sub_1E4650534(&qword_1ECF75798, &qword_1E471FB30);
  v48 = *(*(v157 - 8) + 64);
  MEMORY[0x1EEE9AC00](v157, v49);
  v158 = &v133 - v50;
  v161 = type metadata accessor for PBPropertyBundle(0);
  v51 = *(*(v161 - 8) + 64);
  MEMORY[0x1EEE9AC00](v161, v52);
  v166 = (&v133 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v54, v55);
  v58 = &v133 - v57;
  v59 = *(a1 + 16);
  if (v59 != *(a2 + 16))
  {
LABEL_63:
    v127 = 0;
    return v127 & 1;
  }

  if (!v59 || a1 == a2)
  {
    v127 = 1;
    return v127 & 1;
  }

  v135 = v8;
  v60 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v61 = a1 + v60;
  v140 = a2 + v60;
  v139 = (v40 + 48);
  v145 = (v155 + 48);
  v137 = (v155 + 32);
  v164 = (v155 + 8);
  v144 = (v160 + 48);
  v160 = v155 + 16;
  v62 = *(v56 + 72);
  v147 = v4;
  v136 = v13;
  v146 = v18;
  v63 = 0;
  v143 = v14;
  v152 = (&v133 - v57);
  v142 = v59;
  v134 = v61;
  v133 = v62;
  while (1)
  {
    v64 = v58;
    result = sub_1E46D52FC(v61 + v62 * v63, v58, type metadata accessor for PBPropertyBundle);
    if (v63 == v142)
    {
      goto LABEL_66;
    }

    v66 = v166;
    sub_1E46D52FC(v140 + v62 * v63, v166, type metadata accessor for PBPropertyBundle);
    v67 = *(v161 + 28);
    v68 = *(v157 + 48);
    v69 = v158;
    sub_1E465E0B0(&v64[v67], v158, &qword_1ECF74A28, &unk_1E471E790);
    sub_1E465E0B0(v66 + v67, v69 + v68, &qword_1ECF74A28, &unk_1E471E790);
    v70 = *v139;
    v71 = v159;
    v72 = (*v139)(v69, 1, v159);
    v138 = v63;
    if (v72 == 1)
    {
      if (v70(v69 + v68, 1, v71) != 1)
      {
        goto LABEL_60;
      }

      sub_1E465E050(v69, &qword_1ECF74A28, &unk_1E471E790);
      v73 = v165;
      goto LABEL_17;
    }

    v74 = v151;
    sub_1E465E0B0(v69, v151, &qword_1ECF74A28, &unk_1E471E790);
    if (v70(v69 + v68, 1, v71) == 1)
    {
      sub_1E46D4D18(v74, type metadata accessor for PBPropertyConfiguration);
LABEL_60:
      v128 = &qword_1ECF75798;
      v129 = &qword_1E471FB30;
      goto LABEL_61;
    }

    v75 = v150;
    sub_1E46D48B4(v69 + v68, v150, type metadata accessor for PBPropertyConfiguration);
    if (*v74 != *v75 || v74[1] != v75[1] || (v74[2] != v75[2] || v74[3] != v75[3]) && (sub_1E470B84C() & 1) == 0 || v74[4] != v75[4])
    {
      sub_1E46D4D18(v75, type metadata accessor for PBPropertyConfiguration);
      sub_1E46D4D18(v74, type metadata accessor for PBPropertyConfiguration);
      v128 = &qword_1ECF74A28;
      v129 = &unk_1E471E790;
LABEL_61:
      sub_1E465E050(v69, v128, v129);
LABEL_62:
      sub_1E46D4D18(v166, type metadata accessor for PBPropertyBundle);
      sub_1E46D4D18(v152, type metadata accessor for PBPropertyBundle);
      goto LABEL_63;
    }

    v76 = *(v71 + 32);
    sub_1E4709EAC();
    sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08]);
    LOBYTE(v76) = sub_1E470AEFC();
    sub_1E46D4D18(v75, type metadata accessor for PBPropertyConfiguration);
    sub_1E46D4D18(v74, type metadata accessor for PBPropertyConfiguration);
    sub_1E465E050(v69, &qword_1ECF74A28, &unk_1E471E790);
    v73 = v165;
    if ((v76 & 1) == 0)
    {
      goto LABEL_62;
    }

LABEL_17:
    v77 = *v152;
    v78 = *v166;
    v79 = *(*v152 + 16);
    if (v79 != *(*v166 + 16))
    {
      goto LABEL_62;
    }

    if (v79 && v77 != v78)
    {
      break;
    }

LABEL_42:
    v113 = v152[1];
    v114 = v166[1];
    v115 = *(v113 + 16);
    if (v115 != *(v114 + 16))
    {
      goto LABEL_62;
    }

    if (v115 && v113 != v114)
    {
      v116 = (*(v155 + 80) + 32) & ~*(v155 + 80);
      v117 = v113 + v116;
      v118 = v114 + v116;
      v119 = *(v155 + 72);
      v120 = *(v155 + 16);
      v153 = v120;
      v154 = v119;
      do
      {
        v120(v26, v117, v19);
        v121 = v167;
        v120(v167, v118, v19);
        sub_1E46E0828(&qword_1ECF75070, MEMORY[0x1E69AA900]);
        v122 = sub_1E470AEFC();
        v123 = *v164;
        (*v164)(v121, v19);
        v123(v26, v19);
        if ((v122 & 1) == 0)
        {
          goto LABEL_62;
        }

        v120 = v153;
        v118 += v154;
        v117 += v154;
      }

      while (--v115);
    }

    v124 = *(v161 + 24);
    sub_1E4709EAC();
    sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08]);
    v125 = v152;
    v126 = v166;
    v127 = sub_1E470AEFC();
    sub_1E46D4D18(v126, type metadata accessor for PBPropertyBundle);
    sub_1E46D4D18(v125, type metadata accessor for PBPropertyBundle);
    if (v127)
    {
      v63 = v138 + 1;
      v58 = v152;
      v61 = v134;
      v62 = v133;
      if (v138 + 1 != v142)
      {
        continue;
      }
    }

    return v127 & 1;
  }

  v80 = (*(v149 + 80) + 32) & ~*(v149 + 80);
  v81 = v77 + v80;
  v82 = v78 + v80;
  v141 = *(v149 + 72);
  while (1)
  {
    v83 = v169;
    result = sub_1E46D52FC(v81, v169, type metadata accessor for PBPropertyValue);
    if (!v79)
    {
      break;
    }

    v153 = v81;
    v154 = v79;
    v84 = v26;
    v148 = v82;
    sub_1E46D52FC(v82, v73, type metadata accessor for PBPropertyValue);
    v85 = v168[7];
    v86 = v163;
    v87 = *(v162 + 48);
    sub_1E465E0B0(v83 + v85, v163, &qword_1ECF74A38, &unk_1E471EB00);
    sub_1E465E0B0(v73 + v85, v86 + v87, &qword_1ECF74A38, &unk_1E471EB00);
    v88 = *v145;
    v89 = (*v145)(v86, 1, v19);
    v90 = v147;
    v91 = v146;
    if (v89 == 1)
    {
      if (v88(v86 + v87, 1, v19) != 1)
      {
        goto LABEL_54;
      }

      sub_1E465E050(v86, &qword_1ECF74A38, &unk_1E471EB00);
      v26 = v84;
      v92 = v144;
    }

    else
    {
      v93 = v156;
      sub_1E465E0B0(v86, v156, &qword_1ECF74A38, &unk_1E471EB00);
      if (v88(v86 + v87, 1, v19) == 1)
      {
        (*v164)(v93, v19);
        v73 = v165;
LABEL_54:
        v130 = &qword_1ECF75788;
        v131 = &qword_1E471FB20;
        v132 = v86;
LABEL_57:
        sub_1E465E050(v132, v130, v131);
LABEL_58:
        sub_1E46D4D18(v73, type metadata accessor for PBPropertyValue);
        sub_1E46D4D18(v169, type metadata accessor for PBPropertyValue);
        goto LABEL_62;
      }

      (*v137)(v84, v86 + v87, v19);
      sub_1E46E0828(&qword_1ECF75070, MEMORY[0x1E69AA900]);
      v94 = sub_1E470AEFC();
      v95 = *v164;
      (*v164)(v84, v19);
      v95(v93, v19);
      v96 = v86;
      v26 = v84;
      sub_1E465E050(v96, &qword_1ECF74A38, &unk_1E471EB00);
      v73 = v165;
      v92 = v144;
      if ((v94 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    v97 = v168[8];
    v98 = (v169 + v97);
    v99 = *(v169 + v97 + 8);
    v100 = (v73 + v97);
    v101 = v100[1];
    if (v99)
    {
      if (!v101 || (*v98 != *v100 || v99 != v101) && (sub_1E470B84C() & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (v101)
    {
      goto LABEL_58;
    }

    if (*v169 != *v73)
    {
      goto LABEL_58;
    }

    v102 = v168[5];
    v103 = *(v143 + 48);
    sub_1E465E0B0(v169 + v102, v91, &qword_1ECF74A30, &unk_1E471EB10);
    sub_1E465E0B0(v73 + v102, v91 + v103, &qword_1ECF74A30, &unk_1E471EB10);
    v104 = *v92;
    if ((*v92)(v91, 1, v90) == 1)
    {
      if (v104(v91 + v103, 1, v90) != 1)
      {
        goto LABEL_56;
      }

      sub_1E465E050(v91, &qword_1ECF74A30, &unk_1E471EB10);
    }

    else
    {
      v105 = v91;
      v106 = v91;
      v107 = v136;
      sub_1E465E0B0(v105, v136, &qword_1ECF74A30, &unk_1E471EB10);
      if (v104(v106 + v103, 1, v90) == 1)
      {
        sub_1E46D4D18(v107, type metadata accessor for PBPropertyValue.OneOf_Params);
        v91 = v106;
        v73 = v165;
LABEL_56:
        v130 = &qword_1ECF75790;
        v131 = &qword_1E471FB28;
        v132 = v91;
        goto LABEL_57;
      }

      v108 = v135;
      sub_1E46D48B4(v106 + v103, v135, type metadata accessor for PBPropertyValue.OneOf_Params);
      v109 = _s13BookDataStore15PBPropertyValueV12OneOf_ParamsO2eeoiySbAE_AEtFZ_0(v107, v108);
      sub_1E46D4D18(v108, type metadata accessor for PBPropertyValue.OneOf_Params);
      sub_1E46D4D18(v107, type metadata accessor for PBPropertyValue.OneOf_Params);
      sub_1E465E050(v106, &qword_1ECF74A30, &unk_1E471EB10);
      v73 = v165;
      if ((v109 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    v110 = v168[6];
    sub_1E4709EAC();
    sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08]);
    v111 = v169;
    v112 = sub_1E470AEFC();
    sub_1E46D4D18(v73, type metadata accessor for PBPropertyValue);
    sub_1E46D4D18(v111, type metadata accessor for PBPropertyValue);
    if ((v112 & 1) == 0)
    {
      goto LABEL_62;
    }

    v82 = v148 + v141;
    v81 = v153 + v141;
    v79 = v154 - 1;
    if (v154 == 1)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_1E46D28B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v13 = (&v21 - v12);
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      do
      {
        sub_1E46D52FC(v16, v13, type metadata accessor for PBPropertyValue);
        sub_1E46D52FC(v17, v8, type metadata accessor for PBPropertyValue);
        v19 = _s13BookDataStore15PBPropertyValueV2eeoiySbAC_ACtFZ_0(v13, v8);
        sub_1E46D4D18(v8, type metadata accessor for PBPropertyValue);
        sub_1E46D4D18(v13, type metadata accessor for PBPropertyValue);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v17 += v18;
        v16 += v18;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_1E46D2A6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4709E7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v5 + 16);
  v19 = v5 + 16;
  v21 = (v19 - 8);
  v28 = *(v19 + 56);
  v29 = v20;
  while (1)
  {
    v22 = v29;
    result = (v29)(v14, v17, v4, v12);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v9, v18, v4);
    sub_1E46E0828(&qword_1ECF75070, MEMORY[0x1E69AA900]);
    v25 = sub_1E470AEFC();
    v26 = *v21;
    (*v21)(v9, v4);
    v26(v14, v4);
    if (v25)
    {
      v18 += v28;
      v17 += v28;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E46D2C80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    v4 = (a1 + 64);
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v7 = *v4;
      v9 = *(v3 - 2);
      v8 = *(v3 - 1);
      v10 = *v3;
      if (*(v4 - 4) == *(v3 - 4) && *(v4 - 3) == *(v3 - 3))
      {
        result = 0;
        if (v6 != v9 || v5 != v8)
        {
          return result;
        }
      }

      else
      {
        v12 = sub_1E470B84C();
        result = 0;
        if ((v12 & 1) == 0 || v6 != v9 || v5 != v8)
        {
          return result;
        }
      }

      if ((v7 ^ v10))
      {
        return result;
      }

      v4 += 40;
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t PBPropertyTimeSlice.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for PBPropertyTimeSlice(0);
  v3 = &a1[*(v2 + 20)];
  _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
  v4 = *(v2 + 24);
  v5 = sub_1E4709E7C();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

BOOL PBPropertyTimeSlice.hasStartOfTimeSlice.getter()
{
  v1 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for PBPropertyTimeSlice(0);
  sub_1E465E0B0(v0 + *(v6 + 24), v5, &qword_1ECF74A38, &unk_1E471EB00);
  v7 = sub_1E4709E7C();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1E465E050(v5, &qword_1ECF74A38, &unk_1E471EB00);
  return v8;
}

uint64_t PBPropertyTimeSlice.startOfTimeSlice.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PBPropertyTimeSlice(0) + 24);
  sub_1E465E050(v1 + v3, &qword_1ECF74A38, &unk_1E471EB00);
  v4 = sub_1E4709E7C();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t PBPropertyBundle.init()@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v2;
  v3 = type metadata accessor for PBPropertyBundle(0);
  v4 = &a1[*(v3 + 24)];
  _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
  v5 = *(v3 + 28);
  v6 = type metadata accessor for PBPropertyConfiguration(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a1[v5], 1, 1, v6);
}

uint64_t PBPropertyBundle.configuration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PBPropertyBundle(0) + 28);
  sub_1E465E050(v1 + v3, &qword_1ECF74A28, &unk_1E471E790);
  sub_1E46D48B4(a1, v1 + v3, type metadata accessor for PBPropertyConfiguration);
  v4 = type metadata accessor for PBPropertyConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

unint64_t MarkedAsFinishedMechanism.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

unint64_t sub_1E46D3184@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_1E46D319C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1E46D31B8()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1E470B8FC();
  sub_1E470AECC();
  return sub_1E470B91C();
}

uint64_t sub_1E46D3224(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46E0870();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1E46D3270()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1E470B8FC();
  sub_1E470AECC();
  return sub_1E470B91C();
}

uint64_t static MarkedAsFinishedMechanism.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1ECF754F0 = a1;
}

uint64_t sub_1E46D33C8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1ECF754F0;
}

uint64_t PBPropertyConfiguration.eventName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PBPropertyConfiguration.eventName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PBPropertyConfiguration.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PBPropertyConfiguration(0) + 32);
  v4 = sub_1E4709EAC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PBPropertyConfiguration.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PBPropertyConfiguration(0) + 32);
  v4 = sub_1E4709EAC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PBPropertyConfiguration.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  v1 = a1 + *(type metadata accessor for PBPropertyConfiguration(0) + 32);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t PBPropertyNoParams.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4709EAC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PBPropertyNoParams.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1E4709EAC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PBPropertySingleFloatParam.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for PBPropertySingleFloatParam(0) + 20);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t PBPropertyBookReadParams.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  v1 = a1 + *(type metadata accessor for PBPropertyBookReadParams(0) + 24);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_1E46D3A74@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1E4709EAC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1E46D3B30(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1E4709EAC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t PBPropertyBookImpressionParam.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v1 = &a1[*(type metadata accessor for PBPropertyBookImpressionParam(0) + 20)];
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

void PBPropertyMarkedAsFinishedParam.value.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t PBPropertyMarkedAsFinishedParam.value.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t PBPropertyMarkedAsFinishedParam.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v1 = a1 + *(type metadata accessor for PBPropertyMarkedAsFinishedParam(0) + 20);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_1E46D3D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(a1 + *(v9 + 28), v8, &qword_1ECF74A38, &unk_1E471EB00);
  v10 = sub_1E4709E7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1E4709E6C();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1E465E050(v8, &qword_1ECF74A38, &unk_1E471EB00);
  }

  return result;
}

uint64_t sub_1E46D3EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4709E7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v10, a1, v4, v8);
  v11 = *(type metadata accessor for PBPropertyValue(0) + 28);
  sub_1E465E050(a2 + v11, &qword_1ECF74A38, &unk_1E471EB00);
  (*(v5 + 32))(a2 + v11, v10, v4);
  return (*(v5 + 56))(a2 + v11, 0, 1, v4);
}

uint64_t PBPropertyValue.createdAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PBPropertyValue(0) + 28);
  sub_1E465E050(v1 + v3, &qword_1ECF74A38, &unk_1E471EB00);
  v4 = sub_1E4709E7C();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*PBPropertyValue.createdAt.modify(void *a1))()
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
  *v4 = v1;
  v6 = *(*(sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1E4709E7C();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for PBPropertyValue(0) + 28);
  *(v5 + 12) = v15;
  sub_1E465E0B0(v1 + v15, v8, &qword_1ECF74A38, &unk_1E471EB00);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1E4709E6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1E465E050(v8, &qword_1ECF74A38, &unk_1E471EB00);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1E46D42D0;
}

uint64_t sub_1E46D434C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for PBPropertyValue(0) + 32));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_1E46D43B0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for PBPropertyValue(0) + 32));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t PBPropertyValue.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PBPropertyValue(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*PBPropertyValue.identifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for PBPropertyValue(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1E46D44FC;
}

void sub_1E46D44FC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);
    v9 = (*a1)[1];

    *v8 = v4;
    v8[1] = v3;
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    v12 = (v7 + v5);
    *v12 = v4;
    v12[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall PBPropertyValue.clearIdentifier()()
{
  v1 = (v0 + *(type metadata accessor for PBPropertyValue(0) + 32));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t PBPropertyValue.params.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PBPropertyValue(0) + 20);

  return sub_1E46D4678(a1, v3);
}

uint64_t sub_1E46D4678(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PBPropertyValue.noParams.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v11 - v6;
  v8 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(v1 + *(v8 + 20), v7, &qword_1ECF74A30, &unk_1E471EB10);
  v9 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1E465E050(v7, &qword_1ECF74A30, &unk_1E471EB10);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1E46D48B4(v7, a1, type metadata accessor for PBPropertyNoParams);
    }

    sub_1E46D4D18(v7, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_1E46D48B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E46D493C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v12 - v7;
  v9 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(a1 + *(v9 + 20), v8, &qword_1ECF74A30, &unk_1E471EB10);
  v10 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    sub_1E465E050(v8, &qword_1ECF74A30, &unk_1E471EB10);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1E46D48B4(v8, a2, type metadata accessor for PBPropertyNoParams);
    }

    sub_1E46D4D18(v8, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

void (*PBPropertyValue.noParams.modify(void *a1))(uint64_t **a1, char a2)
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
  *v4 = v1;
  v6 = *(*(sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for PBPropertyNoParams(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  v12 = *(type metadata accessor for PBPropertyValue(0) + 20);
  *(v5 + 12) = v12;
  sub_1E465E0B0(v1 + v12, v8, &qword_1ECF74A30, &unk_1E471EB10);
  v13 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1E465E050(v8, &qword_1ECF74A30, &unk_1E471EB10);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1E46D48B4(v8, v11, type metadata accessor for PBPropertyNoParams);
      return sub_1E46D4CD4;
    }

    sub_1E46D4D18(v8, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
  return sub_1E46D4CD4;
}

uint64_t sub_1E46D4D18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PBPropertyValue.floatParam.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(v1 + *(v8 + 20), v7, &qword_1ECF74A30, &unk_1E471EB10);
  v9 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1E465E050(v7, &qword_1ECF74A30, &unk_1E471EB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1E46D48B4(v7, a1, type metadata accessor for PBPropertySingleFloatParam);
    }

    sub_1E46D4D18(v7, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  *a1 = 0;
  v11 = a1 + *(type metadata accessor for PBPropertySingleFloatParam(0) + 20);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_1E46D4EF0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v13 - v7;
  v9 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(a1 + *(v9 + 20), v8, &qword_1ECF74A30, &unk_1E471EB10);
  v10 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    sub_1E465E050(v8, &qword_1ECF74A30, &unk_1E471EB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1E46D48B4(v8, a2, type metadata accessor for PBPropertySingleFloatParam);
    }

    sub_1E46D4D18(v8, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  *a2 = 0;
  v12 = a2 + *(type metadata accessor for PBPropertySingleFloatParam(0) + 20);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

void (*PBPropertyValue.floatParam.modify(void *a1))(uint64_t **a1, char a2)
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
  *v4 = v1;
  v6 = *(*(sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for PBPropertySingleFloatParam(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for PBPropertyValue(0) + 20);
  *(v5 + 12) = v13;
  sub_1E465E0B0(v1 + v13, v8, &qword_1ECF74A30, &unk_1E471EB10);
  v14 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_1E465E050(v8, &qword_1ECF74A30, &unk_1E471EB10);
LABEL_15:
    *v12 = 0;
    v16 = v12 + *(v9 + 20);
    _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
    return sub_1E46D52B8;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1E46D4D18(v8, type metadata accessor for PBPropertyValue.OneOf_Params);
    goto LABEL_15;
  }

  sub_1E46D48B4(v8, v12, type metadata accessor for PBPropertySingleFloatParam);
  return sub_1E46D52B8;
}

uint64_t sub_1E46D52FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t PBPropertyValue.bookReadParams.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(v1 + *(v8 + 20), v7, &qword_1ECF74A30, &unk_1E471EB10);
  v9 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1E465E050(v7, &qword_1ECF74A30, &unk_1E471EB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1E46D48B4(v7, a1, type metadata accessor for PBPropertyBookReadParams);
    }

    sub_1E46D4D18(v7, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  *a1 = 0;
  *(a1 + 4) = 0;
  v11 = a1 + *(type metadata accessor for PBPropertyBookReadParams(0) + 24);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_1E46D54E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v13 - v7;
  v9 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(a1 + *(v9 + 20), v8, &qword_1ECF74A30, &unk_1E471EB10);
  v10 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    sub_1E465E050(v8, &qword_1ECF74A30, &unk_1E471EB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1E46D48B4(v8, a2, type metadata accessor for PBPropertyBookReadParams);
    }

    sub_1E46D4D18(v8, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  *a2 = 0;
  *(a2 + 4) = 0;
  v12 = a2 + *(type metadata accessor for PBPropertyBookReadParams(0) + 24);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

void (*PBPropertyValue.bookReadParams.modify(void *a1))(uint64_t **a1, char a2)
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
  *v4 = v1;
  v6 = *(*(sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  Params = type metadata accessor for PBPropertyBookReadParams(0);
  v10 = *(*(Params - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(Params - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for PBPropertyValue(0) + 20);
  *(v5 + 12) = v13;
  sub_1E465E0B0(v1 + v13, v8, &qword_1ECF74A30, &unk_1E471EB10);
  v14 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_1E465E050(v8, &qword_1ECF74A30, &unk_1E471EB10);
LABEL_15:
    *v12 = 0;
    *(v12 + 4) = 0;
    v16 = v12 + *(Params + 24);
    _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
    return sub_1E46D58B0;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1E46D4D18(v8, type metadata accessor for PBPropertyValue.OneOf_Params);
    goto LABEL_15;
  }

  sub_1E46D48B4(v8, v12, type metadata accessor for PBPropertyBookReadParams);
  return sub_1E46D58B0;
}

uint64_t PBPropertyValue.markedAsFinishedParam.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(v1 + *(v8 + 20), v7, &qword_1ECF74A30, &unk_1E471EB10);
  v9 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1E465E050(v7, &qword_1ECF74A30, &unk_1E471EB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1E46D48B4(v7, a1, type metadata accessor for PBPropertyMarkedAsFinishedParam);
    }

    sub_1E46D4D18(v7, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  v11 = a1 + *(type metadata accessor for PBPropertyMarkedAsFinishedParam(0) + 20);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_1E46D5A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v13 - v7;
  v9 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(a1 + *(v9 + 20), v8, &qword_1ECF74A30, &unk_1E471EB10);
  v10 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    sub_1E465E050(v8, &qword_1ECF74A30, &unk_1E471EB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1E46D48B4(v8, a2, type metadata accessor for PBPropertyMarkedAsFinishedParam);
    }

    sub_1E46D4D18(v8, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  v12 = a2 + *(type metadata accessor for PBPropertyMarkedAsFinishedParam(0) + 20);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

void (*PBPropertyValue.markedAsFinishedParam.modify(void *a1))(uint64_t **a1, char a2)
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
  *v4 = v1;
  v6 = *(*(sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for PBPropertyValue(0) + 20);
  *(v5 + 12) = v13;
  sub_1E465E0B0(v1 + v13, v8, &qword_1ECF74A30, &unk_1E471EB10);
  v14 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_1E465E050(v8, &qword_1ECF74A30, &unk_1E471EB10);
LABEL_15:
    *v12 = 0;
    *(v12 + 8) = 1;
    v16 = v12 + *(v9 + 20);
    _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
    return sub_1E46D5E4C;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1E46D4D18(v8, type metadata accessor for PBPropertyValue.OneOf_Params);
    goto LABEL_15;
  }

  sub_1E46D48B4(v8, v12, type metadata accessor for PBPropertyMarkedAsFinishedParam);
  return sub_1E46D5E4C;
}

uint64_t PBPropertyValue.bookImpressionParam.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(v1 + *(v8 + 20), v7, &qword_1ECF74A30, &unk_1E471EB10);
  v9 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1E465E050(v7, &qword_1ECF74A30, &unk_1E471EB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1E46D48B4(v7, a1, type metadata accessor for PBPropertyBookImpressionParam);
    }

    sub_1E46D4D18(v7, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  *a1 = 0;
  v11 = &a1[*(type metadata accessor for PBPropertyBookImpressionParam(0) + 20)];
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_1E46D6008@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v13 - v7;
  v9 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(a1 + *(v9 + 20), v8, &qword_1ECF74A30, &unk_1E471EB10);
  v10 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    sub_1E465E050(v8, &qword_1ECF74A30, &unk_1E471EB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1E46D48B4(v8, a2, type metadata accessor for PBPropertyBookImpressionParam);
    }

    sub_1E46D4D18(v8, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  *a2 = 0;
  v12 = &a2[*(type metadata accessor for PBPropertyBookImpressionParam(0) + 20)];
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_1E46D6184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = a5(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v19 - v14;
  sub_1E46D52FC(a1, &v19 - v14, a6);
  v16 = *(type metadata accessor for PBPropertyValue(0) + 20);
  sub_1E465E050(a2 + v16, &qword_1ECF74A30, &unk_1E471EB10);
  sub_1E46D48B4(v15, a2 + v16, a7);
  v17 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v17 - 8) + 56))(a2 + v16, 0, 1, v17);
}

uint64_t sub_1E46D62C0(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = *(type metadata accessor for PBPropertyValue(0) + 20);
  sub_1E465E050(v2 + v5, &qword_1ECF74A30, &unk_1E471EB10);
  sub_1E46D48B4(a1, v2 + v5, a2);
  v6 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v2 + v5, 0, 1, v6);
}

void (*PBPropertyValue.bookImpressionParam.modify(void *a1))(uint64_t **a1, char a2)
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
  *v4 = v1;
  v6 = *(*(sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for PBPropertyBookImpressionParam(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for PBPropertyValue(0) + 20);
  *(v5 + 12) = v13;
  sub_1E465E0B0(v1 + v13, v8, &qword_1ECF74A30, &unk_1E471EB10);
  v14 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_1E465E050(v8, &qword_1ECF74A30, &unk_1E471EB10);
LABEL_15:
    *v12 = 0;
    v16 = &v12[*(v9 + 20)];
    _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
    return sub_1E46D65BC;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1E46D4D18(v8, type metadata accessor for PBPropertyValue.OneOf_Params);
    goto LABEL_15;
  }

  sub_1E46D48B4(v8, v12, type metadata accessor for PBPropertyBookImpressionParam);
  return sub_1E46D65BC;
}

void sub_1E46D6600(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = *(*a1 + 12);
  v11 = (*a1)[2];
  v12 = (*a1)[3];
  v13 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_1E46D52FC(v12, v11, a5);
    sub_1E465E050(v13 + v10, &qword_1ECF74A30, &unk_1E471EB10);
    sub_1E46D48B4(v11, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
    sub_1E46D4D18(v12, a6);
  }

  else
  {
    sub_1E465E050(v13 + v10, &qword_1ECF74A30, &unk_1E471EB10);
    sub_1E46D48B4(v12, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
  }

  free(v12);
  free(v11);
  free(v15);

  free(v7);
}

uint64_t sub_1E46D6780@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1E4709EAC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1E46D681C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1E4709EAC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t static PBPropertyNoParams.== infix(_:_:)()
{
  sub_1E4709EAC();
  sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08]);
  return sub_1E470AEFC() & 1;
}

uint64_t static PBPropertySingleFloatParam.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for PBPropertySingleFloatParam(0) + 20);
  sub_1E4709EAC();
  sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08]);
  return sub_1E470AEFC() & 1;
}

uint64_t static PBPropertyBookReadParams.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = *(type metadata accessor for PBPropertyBookReadParams(0) + 24);
  sub_1E4709EAC();
  sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08]);
  return sub_1E470AEFC() & 1;
}

uint64_t static PBPropertyBookImpressionParam.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(type metadata accessor for PBPropertyBookImpressionParam(0) + 20);
  sub_1E4709EAC();
  sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08]);
  return sub_1E470AEFC() & 1;
}

uint64_t PBPropertyValue.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for PBPropertyValue(0);
  v3 = v2[5];
  v4 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[6]];
  _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
  v6 = v2[7];
  v7 = sub_1E4709E7C();
  result = (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
  v9 = &a1[v2[8]];
  *v9 = 0;
  *(v9 + 1) = 0;
  return result;
}

uint64_t sub_1E46D6C60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1E4650534(&qword_1ECF74A28, &unk_1E471E790);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for PBPropertyBundle(0);
  sub_1E465E0B0(a1 + *(v9 + 28), v8, &qword_1ECF74A28, &unk_1E471E790);
  v10 = type metadata accessor for PBPropertyConfiguration(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_1E46D48B4(v8, a2, type metadata accessor for PBPropertyConfiguration);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  v12 = a2 + *(v10 + 32);
  _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1E465E050(v8, &qword_1ECF74A28, &unk_1E471E790);
  }

  return result;
}

uint64_t sub_1E46D6DCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBPropertyConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E46D52FC(a1, v9, type metadata accessor for PBPropertyConfiguration);
  v10 = *(type metadata accessor for PBPropertyBundle(0) + 28);
  sub_1E465E050(a2 + v10, &qword_1ECF74A28, &unk_1E471E790);
  sub_1E46D48B4(v9, a2 + v10, type metadata accessor for PBPropertyConfiguration);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

void (*PBPropertyBundle.configuration.modify(void *a1))(uint64_t **a1, char a2)
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
  *v4 = v1;
  v6 = *(*(sub_1E4650534(&qword_1ECF74A28, &unk_1E471E790) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for PBPropertyConfiguration(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for PBPropertyBundle(0) + 28);
  *(v5 + 12) = v15;
  sub_1E465E0B0(v1 + v15, v8, &qword_1ECF74A28, &unk_1E471E790);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0;
    v14[3] = 0xE000000000000000;
    v14[4] = 0;
    v17 = v14 + *(v9 + 32);
    _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1E465E050(v8, &qword_1ECF74A28, &unk_1E471E790);
    }
  }

  else
  {
    sub_1E46D48B4(v8, v14, type metadata accessor for PBPropertyConfiguration);
  }

  return sub_1E46D7120;
}

void sub_1E46D7120(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1E46D52FC((*a1)[5], v4, type metadata accessor for PBPropertyConfiguration);
    sub_1E465E050(v9 + v3, &qword_1ECF74A28, &unk_1E471E790);
    sub_1E46D48B4(v4, v9 + v3, type metadata accessor for PBPropertyConfiguration);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1E46D4D18(v5, type metadata accessor for PBPropertyConfiguration);
  }

  else
  {
    sub_1E465E050(v9 + v3, &qword_1ECF74A28, &unk_1E471E790);
    sub_1E46D48B4(v5, v9 + v3, type metadata accessor for PBPropertyConfiguration);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_1E46D72C4(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = sub_1E4650534(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v14 = &v19 - v13;
  v15 = a3(0, v12);
  sub_1E465E0B0(v4 + *(v15 + 28), v14, a1, a2);
  v16 = a4(0);
  v17 = (*(*(v16 - 8) + 48))(v14, 1, v16) != 1;
  sub_1E465E050(v14, a1, a2);
  return v17;
}

uint64_t sub_1E46D73FC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_1E465E050(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t PBPropertyBundle.propertyValues.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t PBPropertyBundle.deletedPropertyValueTimestamps.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1E46D75C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for PBPropertyTimeSlice(0);
  sub_1E465E0B0(a1 + *(v9 + 24), v8, &qword_1ECF74A38, &unk_1E471EB00);
  v10 = sub_1E4709E7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1E4709E6C();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1E465E050(v8, &qword_1ECF74A38, &unk_1E471EB00);
  }

  return result;
}

uint64_t sub_1E46D7730(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4709E7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v10, a1, v4, v8);
  v11 = *(type metadata accessor for PBPropertyTimeSlice(0) + 24);
  sub_1E465E050(a2 + v11, &qword_1ECF74A38, &unk_1E471EB00);
  (*(v5 + 32))(a2 + v11, v10, v4);
  return (*(v5 + 56))(a2 + v11, 0, 1, v4);
}

uint64_t (*PBPropertyTimeSlice.startOfTimeSlice.modify(void *a1))()
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
  *v4 = v1;
  v6 = *(*(sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1E4709E7C();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for PBPropertyTimeSlice(0) + 24);
  *(v5 + 12) = v15;
  sub_1E465E0B0(v1 + v15, v8, &qword_1ECF74A38, &unk_1E471EB00);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1E4709E6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1E465E050(v8, &qword_1ECF74A38, &unk_1E471EB00);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1E46E1E64;
}

void sub_1E46D7A70(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1E465E050(v9 + v3, &qword_1ECF74A38, &unk_1E471EB00);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1E465E050(v9 + v3, &qword_1ECF74A38, &unk_1E471EB00);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

Swift::Void __swiftcall PBPropertyTimeSlice.clearStartOfTimeSlice()()
{
  v1 = *(type metadata accessor for PBPropertyTimeSlice(0) + 24);
  sub_1E465E050(v0 + v1, &qword_1ECF74A38, &unk_1E471EB00);
  v2 = sub_1E4709E7C();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1E46D7CFC()
{
  v0 = sub_1E470A09C();
  sub_1E4665F64(v0, qword_1ECF754F8);
  sub_1E4665EC4(v0, qword_1ECF754F8);
  sub_1E4650534(&qword_1ECF757A0, &qword_1E471FB38);
  v1 = (sub_1E4650534(&qword_1ECF757A8, &qword_1E471FB40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E471EAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1E470A06C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Manually";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Automatically";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return sub_1E470A07C();
}

uint64_t sub_1E46D7F70()
{
  v0 = sub_1E470A09C();
  sub_1E4665F64(v0, qword_1ECF75510);
  sub_1E4665EC4(v0, qword_1ECF75510);
  sub_1E4650534(&qword_1ECF757A0, &qword_1E471FB38);
  v1 = (sub_1E4650534(&qword_1ECF757A8, &qword_1E471FB40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E471C940;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ageToExpire";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1E470A06C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "countLimit";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "eventName";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "recordType";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_1E470A07C();
}

uint64_t PBPropertyConfiguration.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1E4709F0C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1E4709F7C();
      }

      else if (result == 4)
      {
        goto LABEL_2;
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      sub_1E4709F5C();
    }
  }
}

uint64_t PBPropertyConfiguration.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1E470A02C(), !v1))
  {
    if (!v0[1] || (result = sub_1E470A02C(), !v1))
    {
      v3 = v0[3];
      v4 = HIBYTE(v3) & 0xF;
      if ((v3 & 0x2000000000000000) == 0)
      {
        v4 = v0[2] & 0xFFFFFFFFFFFFLL;
      }

      if (!v4 || (result = sub_1E470A03C(), !v1))
      {
        if (!v0[4] || (result = sub_1E470A02C(), !v1))
        {
          v5 = v0 + *(type metadata accessor for PBPropertyConfiguration(0) + 32);
          return sub_1E4709E8C();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E46D83D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  v2 = a2 + *(a1 + 32);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_1E46D841C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1E4709EAC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1E46D8490(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1E4709EAC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1E46D8504(uint64_t a1, uint64_t a2))()
{
  result = nullsub_60;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_1E46D8558(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46E0828(&qword_1ECF75780, type metadata accessor for PBPropertyConfiguration);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1E46D85F8(uint64_t a1)
{
  v2 = sub_1E46E0828(&qword_1ECF75688, type metadata accessor for PBPropertyConfiguration);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1E46D8664()
{
  sub_1E46E0828(&qword_1ECF75688, type metadata accessor for PBPropertyConfiguration);

  return sub_1E4709FEC();
}

uint64_t sub_1E46D8700()
{
  v0 = sub_1E470A09C();
  sub_1E4665F64(v0, qword_1ECF75528);
  sub_1E4665EC4(v0, qword_1ECF75528);
  return sub_1E470A08C();
}

uint64_t PBPropertyNoParams.decodeMessage<A>(decoder:)()
{
  do
  {
    result = sub_1E4709F0C();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_1E46D8834@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4709EAC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1E46D889C(uint64_t a1)
{
  v3 = sub_1E4709EAC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1E46D8954(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46E0828(&qword_1ECF75778, type metadata accessor for PBPropertyNoParams);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1E46D89F4(uint64_t a1)
{
  v2 = sub_1E46E0828(&qword_1ECF756A0, type metadata accessor for PBPropertyNoParams);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1E46D8A60()
{
  sub_1E46E0828(&qword_1ECF756A0, type metadata accessor for PBPropertyNoParams);

  return sub_1E4709FEC();
}

uint64_t sub_1E46D8ADC()
{
  sub_1E4709EAC();
  sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08]);
  return sub_1E470AEFC() & 1;
}

uint64_t PBPropertySingleFloatParam.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1E4709F0C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1E4709F4C();
    }
  }

  return result;
}

uint64_t PBPropertySingleFloatParam.traverse<A>(visitor:)()
{
  if (*v0 == 0.0 || (result = sub_1E470A01C(), !v1))
  {
    v2 = v0 + *(type metadata accessor for PBPropertySingleFloatParam(0) + 20);
    return sub_1E4709E8C();
  }

  return result;
}

uint64_t sub_1E46D8D0C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1 + 20);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t (*sub_1E46D8D4C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_60;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1E46D8DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46E0828(&qword_1ECF75770, type metadata accessor for PBPropertySingleFloatParam);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1E46D8E40(uint64_t a1)
{
  v2 = sub_1E46E0828(&qword_1ECF756B8, type metadata accessor for PBPropertySingleFloatParam);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1E46D8EAC()
{
  sub_1E46E0828(&qword_1ECF756B8, type metadata accessor for PBPropertySingleFloatParam);

  return sub_1E4709FEC();
}

uint64_t sub_1E46D8F28(float *a1, float *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  sub_1E4709EAC();
  sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08]);
  return sub_1E470AEFC() & 1;
}

uint64_t sub_1E46D8FE8()
{
  v0 = sub_1E470A09C();
  sub_1E4665F64(v0, qword_1ECF75558);
  sub_1E4665EC4(v0, qword_1ECF75558);
  sub_1E4650534(&qword_1ECF757A0, &qword_1E471FB38);
  v1 = (sub_1E4650534(&qword_1ECF757A8, &qword_1E471FB40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E471B800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "isSample";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1E470A06C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "progress";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1E470A07C();
}

uint64_t PBPropertyBookReadParams.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1E4709F0C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1E4709F2C();
    }

    else if (result == 2)
    {
      sub_1E4709F4C();
    }
  }

  return result;
}

uint64_t PBPropertyBookReadParams.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = sub_1E4709FFC(), !v1))
  {
    if (*(v0 + 4) == 0.0 || (result = sub_1E470A01C(), !v1))
    {
      v3 = v0 + *(type metadata accessor for PBPropertyBookReadParams(0) + 24);
      return sub_1E4709E8C();
    }
  }

  return result;
}

uint64_t sub_1E46D935C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 4) = 0;
  v2 = a2 + *(a1 + 24);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_1E46D93D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46E0828(&qword_1ECF75768, type metadata accessor for PBPropertyBookReadParams);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1E46D9470(uint64_t a1)
{
  v2 = sub_1E46E0828(&qword_1ECF756D0, type metadata accessor for PBPropertyBookReadParams);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1E46D94DC()
{
  sub_1E46E0828(&qword_1ECF756D0, type metadata accessor for PBPropertyBookReadParams);

  return sub_1E4709FEC();
}

uint64_t sub_1E46D9558(float *a1, float *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(a3 + 24);
  sub_1E4709EAC();
  sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08]);
  return sub_1E470AEFC() & 1;
}

uint64_t PBPropertyBookImpressionParam.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1E4709F0C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1E4709F2C();
    }
  }

  return result;
}

uint64_t PBPropertyBookImpressionParam.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = sub_1E4709FFC(), !v1))
  {
    v3 = &v0[*(type metadata accessor for PBPropertyBookImpressionParam(0) + 20)];
    return sub_1E4709E8C();
  }

  return result;
}

uint64_t sub_1E46D97B0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  v2 = &a2[*(a1 + 20)];
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_1E46D9820(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46E0828(&qword_1ECF75760, type metadata accessor for PBPropertyBookImpressionParam);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1E46D98C0(uint64_t a1)
{
  v2 = sub_1E46E0828(&qword_1ECF756E8, type metadata accessor for PBPropertyBookImpressionParam);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1E46D992C()
{
  sub_1E46E0828(&qword_1ECF756E8, type metadata accessor for PBPropertyBookImpressionParam);

  return sub_1E4709FEC();
}

uint64_t sub_1E46D99A8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_1E4709EAC();
  sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08]);
  return sub_1E470AEFC() & 1;
}

uint64_t sub_1E46D9A80(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1E470A09C();
  sub_1E4665F64(v7, a2);
  sub_1E4665EC4(v7, a2);
  sub_1E4650534(&qword_1ECF757A0, &qword_1E471FB38);
  v8 = (sub_1E4650534(&qword_1ECF757A8, &qword_1E471FB40) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E471BA00;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v14 = sub_1E470A06C();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return sub_1E470A07C();
}

uint64_t PBPropertyMarkedAsFinishedParam.decodeMessage<A>(decoder:)()
{
  result = sub_1E4709F0C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1E46E0870();
        sub_1E4709F3C();
      }

      result = sub_1E4709F0C();
    }
  }

  return result;
}

uint64_t PBPropertyMarkedAsFinishedParam.traverse<A>(visitor:)()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), sub_1E46E0870(), result = sub_1E470A00C(), !v1))
  {
    v3 = v0 + *(type metadata accessor for PBPropertyMarkedAsFinishedParam(0) + 20);
    return sub_1E4709E8C();
  }

  return result;
}

uint64_t sub_1E46D9DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v2 = a2 + *(a1 + 20);
  return _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_1E46D9E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46E0828(&qword_1ECF75758, type metadata accessor for PBPropertyMarkedAsFinishedParam);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1E46D9EC4(uint64_t a1)
{
  v2 = sub_1E46E0828(&qword_1ECF75700, type metadata accessor for PBPropertyMarkedAsFinishedParam);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1E46D9F30()
{
  sub_1E46E0828(&qword_1ECF75700, type metadata accessor for PBPropertyMarkedAsFinishedParam);

  return sub_1E4709FEC();
}

uint64_t sub_1E46D9FD4()
{
  v0 = sub_1E470A09C();
  sub_1E4665F64(v0, qword_1ECF755A0);
  sub_1E4665EC4(v0, qword_1ECF755A0);
  sub_1E4650534(&qword_1ECF757A0, &qword_1E471FB38);
  v1 = (sub_1E4650534(&qword_1ECF757A8, &qword_1E471FB40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E471EAF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "createdAt";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1E470A06C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identifier";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "assetID";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "noParams";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "floatParam";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "bookReadParams";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "markedAsFinishedParam";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "bookImpressionParam";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v9();
  return sub_1E470A07C();
}

uint64_t PBPropertyValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1E4709F0C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 4)
    {
      if (result > 6)
      {
        if (result == 7)
        {
          sub_1E46DB6EC(v5, a1, a2, a3);
        }

        else if (result == 8)
        {
          sub_1E46DBCB4(v5, a1, a2, a3);
        }
      }

      else if (result == 5)
      {
        sub_1E46DAB5C(v5, a1, a2, a3);
      }

      else
      {
        sub_1E46DB124(v5, a1, a2, a3);
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        sub_1E4709F5C();
      }

      else
      {
        sub_1E46DA594(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_1E46DA4E0();
    }

    else if (result == 2)
    {
      v11 = *(type metadata accessor for PBPropertyValue(0) + 32);
      sub_1E4709F6C();
    }
  }

  return result;
}

uint64_t sub_1E46DA4E0()
{
  v0 = *(type metadata accessor for PBPropertyValue(0) + 28);
  sub_1E4709E7C();
  sub_1E46E0828(&qword_1ECF75638, MEMORY[0x1E69AA900]);
  return sub_1E4709F9C();
}

uint64_t sub_1E46DA594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = a4;
  v62 = a2;
  v63 = a3;
  v5 = type metadata accessor for PBPropertyNoParams(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v57 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v56 = &v52 - v12;
  v13 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = &v52 - v16;
  v18 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v52 - v26;
  v28 = sub_1E4650534(&qword_1ECF757B0, &qword_1E471FB48);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8, v30);
  v59 = &v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v36 = &v52 - v35;
  v58 = v6;
  v37 = *(v6 + 56);
  v61 = v5;
  v38 = v5;
  v39 = v37;
  (v37)(&v52 - v35, 1, 1, v38, v34);
  v40 = *(type metadata accessor for PBPropertyValue(0) + 20);
  v55 = a1;
  v53 = v40;
  sub_1E465E0B0(a1 + v40, v17, &qword_1ECF74A30, &unk_1E471EB10);
  v54 = v19;
  v41 = (*(v19 + 48))(v17, 1, v18);
  if (v41 == 1)
  {
    sub_1E465E050(v17, &qword_1ECF74A30, &unk_1E471EB10);
    v42 = v18;
    v43 = v61;
  }

  else
  {
    sub_1E46D48B4(v17, v27, type metadata accessor for PBPropertyValue.OneOf_Params);
    sub_1E46D48B4(v27, v23, type metadata accessor for PBPropertyValue.OneOf_Params);
    v42 = v18;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1E46D4D18(v23, type metadata accessor for PBPropertyValue.OneOf_Params);
      v43 = v61;
    }

    else
    {
      sub_1E465E050(v36, &qword_1ECF757B0, &qword_1E471FB48);
      v44 = v23;
      v45 = v56;
      sub_1E46D48B4(v44, v56, type metadata accessor for PBPropertyNoParams);
      sub_1E46D48B4(v45, v36, type metadata accessor for PBPropertyNoParams);
      v43 = v61;
      v39(v36, 0, 1, v61);
    }
  }

  v46 = v59;
  sub_1E46E0828(&qword_1ECF756A0, type metadata accessor for PBPropertyNoParams);
  v47 = v60;
  sub_1E4709F9C();
  if (v47)
  {
    return sub_1E465E050(v36, &qword_1ECF757B0, &qword_1E471FB48);
  }

  sub_1E465E0B0(v36, v46, &qword_1ECF757B0, &qword_1E471FB48);
  if ((*(v58 + 48))(v46, 1, v43) == 1)
  {
    sub_1E465E050(v36, &qword_1ECF757B0, &qword_1E471FB48);
    return sub_1E465E050(v46, &qword_1ECF757B0, &qword_1E471FB48);
  }

  else
  {
    v49 = v57;
    sub_1E46D48B4(v46, v57, type metadata accessor for PBPropertyNoParams);
    if (v41 != 1)
    {
      sub_1E4709F1C();
    }

    sub_1E465E050(v36, &qword_1ECF757B0, &qword_1E471FB48);
    v50 = v55;
    v51 = v53;
    sub_1E465E050(v55 + v53, &qword_1ECF74A30, &unk_1E471EB10);
    sub_1E46D48B4(v49, v50 + v51, type metadata accessor for PBPropertyNoParams);
    swift_storeEnumTagMultiPayload();
    return (*(v54 + 56))(v50 + v51, 0, 1, v42);
  }
}

uint64_t sub_1E46DAB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = a4;
  v62 = a2;
  v63 = a3;
  v5 = type metadata accessor for PBPropertySingleFloatParam(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v57 = &v52 - v12;
  v13 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = &v52 - v16;
  v18 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v52 - v26;
  v28 = sub_1E4650534(&qword_1ECF757B8, &qword_1E471FB50);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8, v30);
  v59 = &v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v36 = &v52 - v35;
  v58 = v6;
  v37 = *(v6 + 56);
  v61 = v5;
  v38 = v5;
  v39 = v37;
  (v37)(&v52 - v35, 1, 1, v38, v34);
  v40 = *(type metadata accessor for PBPropertyValue(0) + 20);
  v55 = a1;
  v53 = v40;
  sub_1E465E0B0(a1 + v40, v17, &qword_1ECF74A30, &unk_1E471EB10);
  v54 = v19;
  v41 = (*(v19 + 48))(v17, 1, v18);
  if (v41 == 1)
  {
    sub_1E465E050(v17, &qword_1ECF74A30, &unk_1E471EB10);
    v42 = v18;
  }

  else
  {
    sub_1E46D48B4(v17, v27, type metadata accessor for PBPropertyValue.OneOf_Params);
    sub_1E46D48B4(v27, v23, type metadata accessor for PBPropertyValue.OneOf_Params);
    v42 = v18;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1E465E050(v36, &qword_1ECF757B8, &qword_1E471FB50);
      v43 = v23;
      v44 = v57;
      sub_1E46D48B4(v43, v57, type metadata accessor for PBPropertySingleFloatParam);
      sub_1E46D48B4(v44, v36, type metadata accessor for PBPropertySingleFloatParam);
      v45 = v61;
      v39(v36, 0, 1, v61);
      goto LABEL_7;
    }

    sub_1E46D4D18(v23, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  v45 = v61;
LABEL_7:
  v46 = v59;
  sub_1E46E0828(&qword_1ECF756B8, type metadata accessor for PBPropertySingleFloatParam);
  v47 = v60;
  sub_1E4709F9C();
  if (v47)
  {
    return sub_1E465E050(v36, &qword_1ECF757B8, &qword_1E471FB50);
  }

  sub_1E465E0B0(v36, v46, &qword_1ECF757B8, &qword_1E471FB50);
  if ((*(v58 + 48))(v46, 1, v45) == 1)
  {
    sub_1E465E050(v36, &qword_1ECF757B8, &qword_1E471FB50);
    return sub_1E465E050(v46, &qword_1ECF757B8, &qword_1E471FB50);
  }

  else
  {
    v49 = v56;
    sub_1E46D48B4(v46, v56, type metadata accessor for PBPropertySingleFloatParam);
    if (v41 != 1)
    {
      sub_1E4709F1C();
    }

    sub_1E465E050(v36, &qword_1ECF757B8, &qword_1E471FB50);
    v50 = v55;
    v51 = v53;
    sub_1E465E050(v55 + v53, &qword_1ECF74A30, &unk_1E471EB10);
    sub_1E46D48B4(v49, v50 + v51, type metadata accessor for PBPropertySingleFloatParam);
    swift_storeEnumTagMultiPayload();
    return (*(v54 + 56))(v50 + v51, 0, 1, v42);
  }
}

uint64_t sub_1E46DB124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = a4;
  v62 = a2;
  v63 = a3;
  Params = type metadata accessor for PBPropertyBookReadParams(0);
  v6 = *(Params - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](Params, v8);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v57 = &v52 - v12;
  v13 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = &v52 - v16;
  v18 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v52 - v26;
  v28 = sub_1E4650534(&qword_1ECF757C0, &qword_1E471FB58);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8, v30);
  v59 = &v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v36 = &v52 - v35;
  v58 = v6;
  v37 = *(v6 + 56);
  v61 = Params;
  v38 = Params;
  v39 = v37;
  (v37)(&v52 - v35, 1, 1, v38, v34);
  v40 = *(type metadata accessor for PBPropertyValue(0) + 20);
  v55 = a1;
  v53 = v40;
  sub_1E465E0B0(a1 + v40, v17, &qword_1ECF74A30, &unk_1E471EB10);
  v54 = v19;
  v41 = (*(v19 + 48))(v17, 1, v18);
  if (v41 == 1)
  {
    sub_1E465E050(v17, &qword_1ECF74A30, &unk_1E471EB10);
    v42 = v18;
  }

  else
  {
    sub_1E46D48B4(v17, v27, type metadata accessor for PBPropertyValue.OneOf_Params);
    sub_1E46D48B4(v27, v23, type metadata accessor for PBPropertyValue.OneOf_Params);
    v42 = v18;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1E465E050(v36, &qword_1ECF757C0, &qword_1E471FB58);
      v43 = v23;
      v44 = v57;
      sub_1E46D48B4(v43, v57, type metadata accessor for PBPropertyBookReadParams);
      sub_1E46D48B4(v44, v36, type metadata accessor for PBPropertyBookReadParams);
      v45 = v61;
      v39(v36, 0, 1, v61);
      goto LABEL_7;
    }

    sub_1E46D4D18(v23, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  v45 = v61;
LABEL_7:
  v46 = v59;
  sub_1E46E0828(&qword_1ECF756D0, type metadata accessor for PBPropertyBookReadParams);
  v47 = v60;
  sub_1E4709F9C();
  if (v47)
  {
    return sub_1E465E050(v36, &qword_1ECF757C0, &qword_1E471FB58);
  }

  sub_1E465E0B0(v36, v46, &qword_1ECF757C0, &qword_1E471FB58);
  if ((*(v58 + 48))(v46, 1, v45) == 1)
  {
    sub_1E465E050(v36, &qword_1ECF757C0, &qword_1E471FB58);
    return sub_1E465E050(v46, &qword_1ECF757C0, &qword_1E471FB58);
  }

  else
  {
    v49 = v56;
    sub_1E46D48B4(v46, v56, type metadata accessor for PBPropertyBookReadParams);
    if (v41 != 1)
    {
      sub_1E4709F1C();
    }

    sub_1E465E050(v36, &qword_1ECF757C0, &qword_1E471FB58);
    v50 = v55;
    v51 = v53;
    sub_1E465E050(v55 + v53, &qword_1ECF74A30, &unk_1E471EB10);
    sub_1E46D48B4(v49, v50 + v51, type metadata accessor for PBPropertyBookReadParams);
    swift_storeEnumTagMultiPayload();
    return (*(v54 + 56))(v50 + v51, 0, 1, v42);
  }
}