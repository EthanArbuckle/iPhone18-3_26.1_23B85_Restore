uint64_t sub_190A88300(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return MEMORY[0x1EEE6DFA0](sub_190A88320, 0, 0);
}

uint64_t sub_190A88320()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {
    sub_190A88154(v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v2);
    v7 = (*(v3 + 96) + **(v3 + 96));
    v4 = swift_task_alloc();
    *(v0 + 144) = v4;
    *v4 = v0;
    v4[1] = sub_190A884B8;

    return v7(365, v2, v3);
  }

  else
  {
    **(v0 + 120) = 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_190A884B8()
{
  v1 = *v0;

  sub_190A88688(v1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_190A885D0, 0, 0);
}

uint64_t sub_190A885D0()
{
  v1 = *(v0 + 136);
  sub_190A88154(v0 + 56);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v2);
  v4 = (*(v3 + 48))(v2, v3);

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  **(v0 + 120) = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_190A88688(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-v4];
  v6 = sub_190A88980();
  sub_19083B854(a1, v14);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(v6 + 16);
  sub_19029058C(v14, v6 + 16);
  swift_endAccess();

  v7 = sub_190D572E0();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_190D572A0();
  v8 = v1;
  v9 = sub_190D57290();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  sub_190857E08(0, 0, v5, &unk_190DEC8D8, v10);

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_190A88810()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10[-v1];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_190D572E0();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    sub_190D572A0();
    v6 = v4;
    v7 = sub_190D57290();
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E85E0];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v6;
    sub_190857E08(0, 0, v2, &unk_190DEC918, v8);

    sub_190A88154(v10);
    sub_190A8E180(v10);

    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  return result;
}

uint64_t sub_190A88980()
{
  v1 = OBJC_IVAR___CKStoragePluginDataModel____lazy_storage___storageCountsFetcher;
  if (*(v0 + OBJC_IVAR___CKStoragePluginDataModel____lazy_storage___storageCountsFetcher))
  {
    v2 = *(v0 + OBJC_IVAR___CKStoragePluginDataModel____lazy_storage___storageCountsFetcher);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v2 = sub_190A889F4(v0, ObjectType);
    *(v0 + v1) = v2;
    sub_190D50920();
  }

  sub_190D50920();
  return v2;
}

uint64_t sub_190A889F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_190D53040();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CKStoragePluginDataModel(v7);
  sub_190A88C58(v15);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5BAF8);
  v11 = swift_allocObject();
  if (qword_1EAD51BB8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v3, qword_1EAD9DE70);
  (*(v4 + 16))(v6, v12, v3);
  sub_190D521A0();
  sub_19029058C(v15, v11 + 16);
  *(v11 + 56) = 1;
  *(v11 + 80) = &unk_190DEC8A0;
  *(v11 + 88) = v9;
  *(v11 + 96) = sub_190A8DF74;
  *(v11 + 104) = v10;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  return v11;
}

id sub_190A88C58@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() messagesDomain];
  if (v2 && (v3 = v2, v4 = sub_190D56ED0(), v5 = [v3 BOOLForKey_], v3, v4, v5))
  {
    v6 = type metadata accessor for LegacyStoragePluginCounts();
    v7 = swift_allocObject();
    v8 = OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_cachedDate;
    v9 = sub_190D51840();
    (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
    *(v7 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_spaceSavedByAutoDeletingMessages) = 0;
    *(v7 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_didCalculateForCloudKit) = 0;
    *(v7 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_totalSpaceOfAttachments) = 0;
    *(v7 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_nonPurgableFileTypeToSizeMap) = sub_190822234(MEMORY[0x1E69E7CC0]);
    *(v7 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_spaceSavedByDeletingNonSyncedAttachments) = 0;
    *(v7 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_totalSpaceOfNonPurgeableAttachments) = 0;
    v10 = OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_spaceTakenBySyncedConversations;
    *(v7 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_spaceTakenBySyncedConversations) = 0;
    v11 = OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_spaceTakenByUnsyncedConversations;
    *(v7 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_spaceTakenByUnsyncedConversations) = 0;
    result = [objc_allocWithZone(MEMORY[0x1E69A8120]) init];
    *(v7 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_messageDirectoryContents) = result;
    *(v7 + v10) = 0;
    *(v7 + v11) = 0;
    v13 = &off_1F040BD78;
  }

  else
  {
    v6 = type metadata accessor for StoragePluginCounts();
    v7 = swift_allocObject();
    v14 = OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_cachedDate;
    v15 = sub_190D51840();
    (*(*(v15 - 8) + 56))(v7 + v14, 1, 1, v15);
    v16 = (v7 + OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_countData);
    result = sub_190C329BC();
    *v16 = result;
    v16[1] = v17;
    v16[2] = v18;
    v16[3] = v19;
    *(v7 + OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_spaceSavedByAutoDeletingMessages) = 0;
    *(v7 + OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_didCalculateForCloudKit) = 0;
    v13 = &off_1F041FF38;
  }

  a1[3] = v6;
  a1[4] = v13;
  *a1 = v7;
  return result;
}

uint64_t sub_190A88ECC(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x1EEE6DFA0](sub_190A88EEC, 0, 0);
}

uint64_t sub_190A88EEC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = [Strong isCloudKitEnabled];
    sub_190A88154((v0 + 2));
    v3 = v0[5];
    v4 = v0[6];
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v3);
    v9 = (*(v4 + 88) + **(v4 + 88));
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_190A890B0;

    return v9(v2, 20, v3, v4);
  }

  else
  {
    v7 = v0[10];
    type metadata accessor for CKStoragePluginDataModel(0);
    sub_190A88C58(v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_190A890B0()
{
  v1 = *v0;

  sub_190A88688(v1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_190A891C8, 0, 0);
}

uint64_t sub_190A891C8()
{
  v1 = v0[12];
  sub_190A88154(v0[10]);

  v2 = v0[1];

  return v2();
}

void sub_190A89230()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10[-v1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_190D572E0();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    sub_190D572A0();
    v6 = v4;
    v7 = sub_190D57290();
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E85E0];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v6;
    sub_190857E08(0, 0, v2, &unk_190DEC8B8, v8);

    sub_190A88154(v10);
    sub_190A8E180(v10);
    __swift_destroy_boxed_opaque_existential_0(v10);
    sub_190A893A4();
  }
}

uint64_t sub_190A893A4()
{
  v0 = sub_190D56770();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D567A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1902188FC(0, &qword_1EAD46670);
  v8 = sub_190D57870();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_190A8E520;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_30_2;
  v10 = _Block_copy(aBlock);

  sub_190D56790();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_190A8EA7C(&qword_1EAD46770, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190840E08();
  sub_190D58170();
  MEMORY[0x193AF3110](0, v7, v3, v10);
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

id sub_190A8966C()
{
  v1 = v0;
  if (qword_1EAD51BB8 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9DE70);
  v3 = sub_190D53020();
  v4 = sub_190D57680();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, v4, "CKStoragePluginDataModel deallocated", v5, 2u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  v7.receiver = v1;
  v7.super_class = CKStoragePluginDataModel;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id sub_190A89830()
{
  v1 = OBJC_IVAR___CKStoragePluginDataModel_cachedAttachmentsMap;
  v2 = MEMORY[0x1E69E7CC0];
  *&v0[v1] = sub_190822FEC(MEMORY[0x1E69E7CC0]);
  v3 = OBJC_IVAR___CKStoragePluginDataModel_cachedAttachmentItems;
  *&v0[v3] = sub_190823000(v2);
  v4 = OBJC_IVAR___CKStoragePluginDataModel_cachedAttachmentFetchOffsets;
  *&v0[v4] = sub_190822234(v2);
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___CKStoragePluginDataModel____lazy_storage___spaceSavedByAutoDeletingMessagesFetcher] = 0;
  *&v0[OBJC_IVAR___CKStoragePluginDataModel____lazy_storage___storageCountsFetcher] = 0;
  *&v0[OBJC_IVAR___CKStoragePluginDataModel____lazy_storage___cloudKitHooks] = 0;
  v5 = [objc_opt_self() sharedController];
  [v5 connectToDaemon];

  v14.receiver = v0;
  v14.super_class = CKStoragePluginDataModel;
  v6 = objc_msgSendSuper2(&v14, sel_init);
  v7 = qword_1EAD51BB0;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakAssign();
  if (qword_1EAD51BB8 != -1)
  {
    swift_once();
  }

  v9 = sub_190D53040();
  __swift_project_value_buffer(v9, qword_1EAD9DE70);
  v10 = sub_190D53020();
  v11 = sub_190D57680();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_19020E000, v10, v11, "CKStoragePluginDataModel created", v12, 2u);
    MEMORY[0x193AF7A40](v12, -1, -1);
  }

  sub_190A89A48();
  sub_190A88980();
  sub_190A8D12C();

  return v8;
}

void sub_190A89A48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v67 - v1;
  v3 = sub_190D51840();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v67 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v67 - v11;
  if (qword_1EAD51BB8 != -1)
  {
    swift_once();
  }

  v13 = sub_190D53040();
  __swift_project_value_buffer(v13, qword_1EAD9DE70);
  v14 = sub_190D53020();
  v15 = sub_190D57680();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_19020E000, v14, v15, "Setting initial storage counts", v16, 2u);
    MEMORY[0x193AF7A40](v16, -1, -1);
  }

  v17 = [objc_opt_self() messagesDomain];
  [v17 synchronize];

  v18 = sub_190A8E030();
  if (v18)
  {
    type metadata accessor for CKStoragePluginDataModel(v18);
    sub_190A8B9B4(&v70);
    if (v71)
    {
      sub_19029058C(&v70, v73);
      v19 = v74;
      v20 = v75;
      __swift_project_boxed_opaque_existential_1(v73, v74);
      v21 = (*(v20 + 8))(v19, v20);
      v22 = v69;
      if ((v21 ^ [v69 isCloudKitEnabled]))
      {
        sub_19083B854(v73, &v70);
        v23 = v22;
        v24 = sub_190D53020();
        v25 = sub_190D57680();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 67109376;
          v27 = v71;
          v28 = v72;
          __swift_project_boxed_opaque_existential_1(&v70, v71);
          v29 = (*(v28 + 8))(v27, v28) & 1;
          __swift_destroy_boxed_opaque_existential_0(&v70);
          *(v26 + 4) = v29;
          *(v26 + 8) = 1024;
          *(v26 + 10) = [v23 isCloudKitEnabled];

          _os_log_impl(&dword_19020E000, v24, v25, "Ignoring cached counts that were calculated with different cloudkit setting: was calculated for cloud kit: %{BOOL}d vs isCloudKitEnabled: %{BOOL}d", v26, 0xEu);
          MEMORY[0x193AF7A40](v26, -1, -1);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(&v70);
        }
      }

      else
      {
        v33 = v74;
        v34 = v75;
        __swift_project_boxed_opaque_existential_1(v73, v74);
        (*(v34 + 80))(v33, v34);
        v35 = v4;
        if ((*(v4 + 48))(v2, 1, v3) == 1)
        {
          sub_19022EEA4(v2, &unk_1EAD5E5D0);
          v36 = sub_190D53020();
          v37 = sub_190D576A0();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&dword_19020E000, v36, v37, "Cached counts had no cachedDate, not restoring", v38, 2u);
            MEMORY[0x193AF7A40](v38, -1, -1);
          }
        }

        else
        {
          (*(v4 + 32))(v12, v2, v3);
          sub_190D516B0();
          v40 = v39;
          sub_190D516A0();
          v42 = v40 - v41;
          sub_190A8E8F0();
          v43 = *(v4 + 16);
          if (v42 >= v44)
          {
            v43(v6, v12, v3);
            v54 = sub_190D53020();
            v55 = sub_190D57680();
            if (os_log_type_enabled(v54, v55))
            {
              v56 = swift_slowAlloc();
              v69 = swift_slowAlloc();
              *&v70 = v69;
              *v56 = 136315650;
              sub_190A8EA7C(&qword_1EAD462F0, MEMORY[0x1E6969530]);
              v57 = sub_190D58720();
              v58 = v35;
              v60 = v59;
              v61 = *(v58 + 8);
              v61(v6, v3);
              v62 = sub_19021D9F8(v57, v60, &v70);

              *(v56 + 4) = v62;
              *(v56 + 12) = 2048;
              *(v56 + 14) = v42;
              *(v56 + 22) = 2048;
              sub_190A8E8F0();
              *(v56 + 24) = v63;
              _os_log_impl(&dword_19020E000, v54, v55, "Stored counts expired: %s (cached %f secs ago) older than %f secs expire interval", v56, 0x20u);
              v64 = v69;
              __swift_destroy_boxed_opaque_existential_0(v69);
              MEMORY[0x193AF7A40](v64, -1, -1);
              MEMORY[0x193AF7A40](v56, -1, -1);

              v61(v12, v3);
            }

            else
            {

              v66 = *(v35 + 8);
              v66(v6, v3);
              v66(v12, v3);
            }
          }

          else
          {
            v43(v9, v12, v3);
            v45 = sub_190D53020();
            v46 = sub_190D57680();
            if (os_log_type_enabled(v45, v46))
            {
              v47 = swift_slowAlloc();
              v68 = swift_slowAlloc();
              *&v70 = v68;
              *v47 = 136315394;
              sub_190A8EA7C(&qword_1EAD462F0, MEMORY[0x1E6969530]);
              v48 = sub_190D58720();
              v50 = v49;
              v51 = *(v35 + 8);
              v51(v9, v3);
              v52 = sub_19021D9F8(v48, v50, &v70);

              *(v47 + 4) = v52;
              *(v47 + 12) = 2048;
              *(v47 + 14) = v42;
              _os_log_impl(&dword_19020E000, v45, v46, "Loaded cached counts. Last cached time %s (cached %f secs ago)", v47, 0x16u);
              v53 = v68;
              __swift_destroy_boxed_opaque_existential_0(v68);
              MEMORY[0x193AF7A40](v53, -1, -1);
              MEMORY[0x193AF7A40](v47, -1, -1);
            }

            else
            {

              v51 = *(v35 + 8);
              v51(v9, v3);
            }

            v65 = sub_190A88980();
            v51(v12, v3);
            sub_19083B854(v73, &v70);
            swift_beginAccess();
            __swift_destroy_boxed_opaque_existential_0(v65 + 16);
            sub_19029058C(&v70, v65 + 16);
            swift_endAccess();
          }
        }
      }

      __swift_destroy_boxed_opaque_existential_0(v73);
    }

    else
    {
      sub_19022EEA4(&v70, &qword_1EAD5BB20);
    }
  }

  else
  {
    v69 = sub_190D53020();
    v30 = sub_190D57680();
    if (os_log_type_enabled(v69, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_19020E000, v69, v30, "not restoring cached counts, shouldCacheCounts is false", v31, 2u);
      MEMORY[0x193AF7A40](v31, -1, -1);
    }

    v32 = v69;
  }
}

uint64_t sub_190A8A7CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_190A88980();
  *(v3 + 56) = 1;
  if (*(v3 + 57) == 1)
  {
  }

  else
  {
    *(v3 + 57) = 1;
    swift_beginAccess();
    sub_190D521E0();
    swift_endAccess();
    v5 = sub_190D572E0();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v6;
    sub_190857E08(0, 0, v2, &unk_190DEC8E0, v7);
  }
}

uint64_t sub_190A8A9BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_190A88980();
  v4 = *(v3 + 56);
  if (v4 == 1 && (*(v3 + 57) & 1) == 0)
  {
    *(v3 + 57) = 1;
    swift_beginAccess();
    sub_190D521E0();
    swift_endAccess();
    v5 = sub_190D572E0();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v6;
    sub_190857E08(0, 0, v2, &unk_190DEC890, v7);
  }

  return v4;
}

void sub_190A8AC30(char a1)
{
  v2 = v1;
  if (qword_1EAD51BB8 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9DE70);
  v5 = sub_190D53020();
  v6 = sub_190D57680();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_19020E000, v5, v6, "set cloud kit enabled: %{BOOL}d", v7, 8u);
    MEMORY[0x193AF7A40](v7, -1, -1);
  }

  v8 = [v2 cloudKitHooks];
  [v8 setEnabled_];
}

id sub_190A8ADB4()
{
  v1 = OBJC_IVAR___CKStoragePluginDataModel____lazy_storage___cloudKitHooks;
  v2 = *(v0 + OBJC_IVAR___CKStoragePluginDataModel____lazy_storage___cloudKitHooks);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___CKStoragePluginDataModel____lazy_storage___cloudKitHooks);
LABEL_6:
    v8 = v2;
    return v3;
  }

  v4 = objc_opt_self();
  result = [v4 sharedInstance];
  if (result)
  {
    v6 = result;
    [result setupIMCloudKitHooks];

    result = [v4 sharedInstance];
    if (result)
    {
      v7 = *(v0 + v1);
      *(v0 + v1) = result;
      v3 = result;

      v2 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_190A8AEBC(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___CKStoragePluginDataModel_cachedAttachmentsMap;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_19022DCEC(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    sub_190D52690();
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();
  return v9;
}

uint64_t sub_190A8AFF8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (qword_1EAD51BB8 != -1)
  {
    swift_once();
  }

  v8 = sub_190D53040();
  __swift_project_value_buffer(v8, qword_1EAD9DE70);
  sub_190D52690();
  sub_190D52690();
  v9 = sub_190D53020();
  v10 = sub_190D57680();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_19021D9F8(a2, a3, v17);
    *(v11 + 12) = 2048;
    *(v11 + 14) = *(a1 + 16);

    _os_log_impl(&dword_19020E000, v9, v10, "Updated cached attachments for %s with %ld items", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x193AF7A40](v12, -1, -1);
    MEMORY[0x193AF7A40](v11, -1, -1);
  }

  else
  {
  }

  v13 = OBJC_IVAR___CKStoragePluginDataModel_cachedAttachmentsMap;
  swift_beginAccess();
  sub_190D52690();
  sub_190D52690();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v4 + v13);
  *(v4 + v13) = 0x8000000000000000;
  sub_190C1D064(a1, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v13) = v16;
  return swift_endAccess();
}

void *sub_190A8B298(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___CKStoragePluginDataModel_cachedAttachmentItems;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_19022DCEC(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = v9;
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();
  return v9;
}

uint64_t sub_190A8B398(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (qword_1EAD51BB8 != -1)
  {
    swift_once();
  }

  v8 = sub_190D53040();
  __swift_project_value_buffer(v8, qword_1EAD9DE70);
  sub_190D52690();
  v9 = sub_190D53020();
  v10 = sub_190D57680();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_19021D9F8(a2, a3, v18);
    _os_log_impl(&dword_19020E000, v9, v10, "Updated cached attachment item for %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x193AF7A40](v12, -1, -1);
    MEMORY[0x193AF7A40](v11, -1, -1);
  }

  v13 = OBJC_IVAR___CKStoragePluginDataModel_cachedAttachmentItems;
  swift_beginAccess();
  sub_190D52690();
  v14 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v13);
  *(v4 + v13) = 0x8000000000000000;
  sub_190C1D0A4(v14, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v13) = v17;
  return swift_endAccess();
}

void sub_190A8B748(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  (*(v2 + 112))(v1, v2);
  if (qword_1EAD51BB8 != -1)
  {
    swift_once();
  }

  v3 = sub_190D53040();
  __swift_project_value_buffer(v3, qword_1EAD9DE70);
  oslog = sub_190D53020();
  v4 = sub_190D57680();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, oslog, v4, "Saved calculated counts to cache", v5, 2u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }
}

double sub_190A8B9B4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_190D53040();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_190D521F0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [objc_opt_self() messagesDomain];
  if (v10)
  {
    v11 = v10;
    v12 = sub_190D56ED0();
    v13 = [v11 BOOLForKey_];

    if (v13)
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
LABEL_12:
      sub_19022EEA4(&v23, &qword_1EAD5BB20);
      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    }
  }

  if (qword_1EAD51F80 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v2, qword_1EAD9E510);
  (*(v3 + 16))(v5, v14, v2);
  sub_190D521A0();
  if (qword_1EAD51F58 != -1)
  {
    swift_once();
  }

  v15 = sub_190D515F0();
  __swift_project_value_buffer(v15, qword_1EAD609D8);
  v19 = sub_190D51610();
  v21 = v20;
  sub_190D50E90();
  swift_allocObject();
  sub_190D50E80();
  *(&v24 + 1) = type metadata accessor for StoragePluginCounts();
  v25 = &off_1F041FF38;
  sub_190A8EA7C(&qword_1EAD5BB28, type metadata accessor for StoragePluginCounts);
  sub_190D50E70();
  sub_19083B6D4(v19, v21);

  sub_190D521D0();
  (*(v7 + 8))(v9, v6);
  if (!*(&v24 + 1))
  {
    goto LABEL_12;
  }

  sub_19029058C(&v23, v26);
  if (sub_190A8E77C())
  {
    v16 = v27;
    v17 = v28;
    __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    (*(v17 + 120))(v16, v17);
  }

  sub_19083B854(v26, a1);
  __swift_destroy_boxed_opaque_existential_0(v26);
  return result;
}

uint64_t sub_190A8BE28()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_190A88154(v4);

    v2 = v5;
    v3 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    (*(v3 + 128))(v2, v3);
    return __swift_destroy_boxed_opaque_existential_0(v4);
  }

  return result;
}

uint64_t sub_190A8BEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_190D572A0();
  *(v4 + 32) = sub_190D57290();
  v6 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190A8BF58, v6, v5);
}

uint64_t sub_190A8BF58()
{
  v16 = v0;

  if (qword_1EAD51BB8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9DE70);
  v3 = v1;
  v4 = sub_190D53020();
  v5 = sub_190D57680();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    *(v0 + 16) = [v6 delegate];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BB08);
    v9 = sub_190D56F50();
    v11 = sub_19021D9F8(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_19020E000, v4, v5, "Notifying delegate: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x193AF7A40](v8, -1, -1);
    MEMORY[0x193AF7A40](v7, -1, -1);
  }

  v12 = [*(v0 + 24) delegate];
  if (v12)
  {
    [v12 storagePlugingDataModelDidUpdate_];
    swift_unknownObjectRelease();
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_190A8C158()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DE70);
  __swift_project_value_buffer(v0, qword_1EAD9DE70);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190A8C1C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  if (*(v0 + 24) == 1 && (*(v0 + 25) & 1) == 0)
  {
    *(v0 + 25) = 1;
    swift_beginAccess();
    sub_190D521E0();
    swift_endAccess();
    v4 = sub_190D572E0();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v5;
    sub_190857E08(0, 0, v3, &unk_190DEC8F8, v6);
  }

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_190A8C37C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    v2 = Strong[8];
    v0[29] = v2;
    if (v2)
    {
      v0[30] = Strong[9];
      v3 = Strong;
      v4 = sub_190D50920();
      v2(v4);
      v0[31] = v3[12];
      v0[32] = v3[13];
      sub_190D572A0();
      v0[33] = sub_190D57290();
      v6 = sub_190D57240();

      return MEMORY[0x1EEE6DFA0](sub_190A8C5FC, v6, v5);
    }

    else
    {
      v8 = Strong[10];
      v0[34] = v8;
      if (v8)
      {
        v0[35] = Strong[11];
        sub_190D50920();
        v11 = (v8 + *v8);
        v9 = swift_task_alloc();
        v0[36] = v9;
        *v9 = v0;
        v9[1] = sub_190A8C754;

        return v11(v0 + 2);
      }

      else
      {
        return sub_190D58510();
      }
    }
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_190A8C5FC()
{
  v1 = v0[31];
  v2 = v0[28];

  swift_beginAccess();
  sub_190D521D0();
  swift_endAccess();
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v2 + 16), v0 + 7);
  v3 = swift_endAccess();
  *(v2 + 56) = 0;
  v1(v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 7));

  return MEMORY[0x1EEE6DFA0](sub_190A8C6EC, 0, 0);
}

uint64_t sub_190A8C6EC()
{
  sub_19022123C(*(v0 + 232));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_190A8C754()
{

  return MEMORY[0x1EEE6DFA0](sub_190A8C850, 0, 0);
}

uint64_t sub_190A8C850()
{
  v1 = v0[28];
  v0[37] = *(v1 + 96);
  v0[38] = *(v1 + 104);
  sub_190D572A0();
  v0[39] = sub_190D57290();
  v3 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190A8C8F8, v3, v2);
}

uint64_t sub_190A8C8F8()
{
  v1 = v0[37];
  v2 = v0[28];

  swift_beginAccess();
  sub_190D521D0();
  swift_endAccess();
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v2 + 16), v0 + 2);
  v3 = swift_endAccess();
  *(v2 + 56) = 0;
  v1(v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  return MEMORY[0x1EEE6DFA0](sub_190A8C9E8, 0, 0);
}

uint64_t sub_190A8C9E8()
{
  sub_19022123C(*(v0 + 272));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_190A8CA70()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v2 = Strong[4];
    v0[21] = v2;
    if (v2)
    {
      v0[22] = Strong[5];
      v3 = Strong;
      v4 = sub_190D50920();
      v2(v4);
      v0[23] = v3[8];
      v0[24] = v3[9];
      sub_190D572A0();
      v0[25] = sub_190D57290();
      v6 = sub_190D57240();

      return MEMORY[0x1EEE6DFA0](sub_190A8CCF0, v6, v5);
    }

    else
    {
      v8 = Strong[6];
      v0[26] = v8;
      if (v8)
      {
        v0[27] = Strong[7];
        sub_190D50920();
        v11 = (v8 + *v8);
        v9 = swift_task_alloc();
        v0[28] = v9;
        *v9 = v0;
        v9[1] = sub_190A8CE3C;

        return v11(v0 + 17);
      }

      else
      {
        return sub_190D58510();
      }
    }
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_190A8CCF0()
{
  v1 = v0[23];
  v2 = v0[20];

  v3 = v0[18];
  swift_beginAccess();
  sub_190D521D0();
  swift_endAccess();
  v4 = swift_beginAccess();
  *(v2 + 16) = v3;
  *(v2 + 24) = 0;
  v1(v4);

  return MEMORY[0x1EEE6DFA0](sub_190A8CDD4, 0, 0);
}

uint64_t sub_190A8CDD4()
{
  sub_19022123C(*(v0 + 168));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_190A8CE3C()
{

  return MEMORY[0x1EEE6DFA0](sub_190A8CF38, 0, 0);
}

uint64_t sub_190A8CF38()
{
  v1 = v0[20];
  v0[29] = *(v1 + 64);
  v0[30] = *(v1 + 72);
  sub_190D572A0();
  v0[31] = sub_190D57290();
  v3 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190A8CFE0, v3, v2);
}

uint64_t sub_190A8CFE0()
{
  v1 = v0[29];
  v2 = v0[20];

  v3 = v0[17];
  swift_beginAccess();
  sub_190D521D0();
  swift_endAccess();
  v4 = swift_beginAccess();
  *(v2 + 16) = v3;
  *(v2 + 24) = 0;
  v1(v4);

  return MEMORY[0x1EEE6DFA0](sub_190A8D0C4, 0, 0);
}

uint64_t sub_190A8D0C4()
{
  sub_19022123C(*(v0 + 208));

  v1 = *(v0 + 8);

  return v1();
}

void sub_190A8D12C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  *(v0 + 56) = 1;
  if ((*(v0 + 57) & 1) == 0)
  {
    *(v0 + 57) = 1;
    swift_beginAccess();
    sub_190D521E0();
    swift_endAccess();
    v4 = sub_190D572E0();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v5;
    sub_190857E08(0, 0, v3, &unk_190DEC8E8, v6);
  }
}

uint64_t sub_190A8D2A0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  sub_19022123C(*(v0 + *(*v0 + 112)));
  sub_19022123C(*(v0 + *(*v0 + 120)));

  v1 = *(*v0 + 136);
  v2 = sub_190D521F0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_190A8D3C4()
{
  sub_190A8D2A0();

  return swift_deallocClassInstance();
}

uint64_t CKCachedAttachmentItem.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void *CKCachedAttachmentItem.attachmentItem.getter()
{
  v1 = OBJC_IVAR___CKCachedAttachmentItem_attachmentItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CKCachedAttachmentItem.attachmentItem.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CKCachedAttachmentItem_attachmentItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall CKCachedAttachmentItem.generatePreview()()
{
  v1 = [v0 attachmentItem];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() detailsPreviewCache];
    [v3 resume];
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6[4] = sub_190A8D8BC;
    v6[5] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_190A8D8C4;
    v6[3] = &block_descriptor_67;
    v5 = _Block_copy(v6);

    [v2 generatePreviewWithCompletion_];
    _Block_release(v5);
  }
}

void sub_190A8D800(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      v4 = a1;
      v5 = [v3 delegate];
      if (v5)
      {
        [v5 cachedAttachmentItem:v3 didGeneratePreview:v4];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_190A8D8C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_190D50920();
  v4 = a2;
  v3(a2);
}

id CKCachedAttachmentItem.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___CKCachedAttachmentItem_attachmentItem] = 0;
  v2.receiver = v0;
  v2.super_class = CKCachedAttachmentItem;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_190A8DA28()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_190D521F0();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_190A8DBF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_190221DA0;

  return sub_190A8C35C(a1, v4, v5, v6);
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
        sub_190D50920();

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
          sub_190D50920();
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
          sub_190D50920();
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

uint64_t sub_190A8DEC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_190221DA0;

  return sub_190A88ECC(a1, v4);
}

uint64_t sub_190A8DF7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_190221DA0;

  return sub_190A8BEC0(a1, v4, v5, v6);
}

uint64_t sub_190A8E030()
{
  v0 = [objc_opt_self() messagesDomain];
  if (!v0)
  {
    return 1;
  }

  v1 = v0;
  v2 = sub_190D56ED0();
  v3 = [v1 BOOLForKey_];

  if (!v3)
  {
    return 1;
  }

  if (qword_1EAD51BB8 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9DE70);
  v5 = sub_190D53020();
  v6 = sub_190D57680();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_19020E000, v5, v6, "Counts caching is disabled.", v7, 2u);
    MEMORY[0x193AF7A40](v7, -1, -1);
  }

  return 0;
}

uint64_t sub_190A8E180(uint64_t a1)
{
  v2 = sub_190D56770();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D567A0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_190D56780();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_190A8E030();
  if (result)
  {
    sub_1902188FC(0, &qword_1EAD46670);
    v20 = v6;
    (*(v11 + 104))(v13, *MEMORY[0x1E69E7F98], v10);
    v15 = a1;
    v16 = sub_190D578A0();
    (*(v11 + 8))(v13, v10);
    sub_19083B854(v15, v23);
    v17 = swift_allocObject();
    sub_19029058C(v23, v17 + 16);
    aBlock[4] = sub_190A8E528;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190840E6C;
    aBlock[3] = &block_descriptor_36_4;
    v18 = _Block_copy(aBlock);
    sub_190D56790();
    v21 = MEMORY[0x1E69E7CC0];
    sub_190A8EA7C(&qword_1EAD46770, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
    sub_190840E08();
    sub_190D58170();
    MEMORY[0x193AF3110](0, v9, v5, v18);
    _Block_release(v18);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v20);
  }

  return result;
}

uint64_t sub_190A8E530(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_190221DA4;

  return sub_190A8C35C(a1, v4, v5, v6);
}

uint64_t sub_190A8E5E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_190221DA0;

  return sub_190A8CA50(a1, v4, v5, v6);
}

uint64_t sub_190A8E698(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_190221DA0;

  return sub_190A88300(a1, v1);
}

uint64_t objectdestroy_24Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_190A8E77C()
{
  v0 = objc_opt_self();
  v1 = [v0 messagesDomain];
  if (!v1)
  {
    v11 = 0u;
    v12 = 0u;
LABEL_9:
    sub_19022EEA4(&v11, &unk_1EAD551C0);
    return 0;
  }

  v2 = v1;
  v3 = sub_190D56ED0();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    goto LABEL_9;
  }

  sub_19022EEA4(&v11, &unk_1EAD551C0);
  result = [v0 messagesDomain];
  if (result)
  {
    v6 = result;
    v7 = sub_190D56ED0();
    v8 = [v6 BOOLForKey_];

    return v8;
  }

  return result;
}

void sub_190A8E8F0()
{
  v0 = objc_opt_self();
  v1 = [v0 messagesDomain];
  if (!v1)
  {
    v10 = 0u;
    v11 = 0u;
LABEL_9:
    sub_19022EEA4(&v10, &unk_1EAD551C0);
    return;
  }

  v2 = v1;
  v3 = sub_190D56ED0();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_9;
  }

  sub_19022EEA4(&v10, &unk_1EAD551C0);
  v5 = [v0 messagesDomain];
  if (v5)
  {
    v6 = v5;
    v7 = sub_190D56ED0();
    [v6 doubleForKey_];
  }
}

uint64_t sub_190A8EA7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x193AF7A40);
  }

  return result;
}

uint64_t sub_190A8EB50@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD51DA0 != -1)
  {
    swift_once();
  }

  v2 = sub_190D52990();
  v3 = __swift_project_value_buffer(v2, qword_1EAD9E210);
  (*(*(v2 - 8) + 16))(a1, v3, v2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BB30);
  *(a1 + *(result + 56)) = 256;
  return result;
}

unint64_t sub_190A8EC0C()
{
  result = qword_1EAD5BB38;
  if (!qword_1EAD5BB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5BB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5BB38);
  }

  return result;
}

uint64_t sub_190A8EC70(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5BC90);
    v2 = sub_190D585A0();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;
  sub_190D50920();
  result = sub_190D52690();
  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_19021834C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;
    sub_190D52690();
    swift_dynamicCast();
    sub_190824530(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_190824530(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_190824530(v31, v32);
    result = sub_190D58210();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_190824530(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_190A8EF38(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5BC90);
    v2 = sub_190D585A0();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;
  sub_190D50920();
  result = sub_190D52690();
  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;
    sub_190D52690();
    sub_190D52690();
    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_190824530(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_190824530(v29, v30);
    result = sub_190D58210();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_190824530(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_190A8F200(void *a1, char a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v2 = [a1 ck:a2 & 1 newPosterKitPosterConfigurationForPlayground:v9 withError:?];
  if (v2)
  {
    v3 = v2;
    v4 = v9[0];
    v5 = v3;
    v6 = sub_190AAF644();
    v7 = [objc_allocWithZone(CKPRUISPosterEditingViewController) initWithEditingConfiguration_];

    sub_190A90C40(v7);
  }

  else
  {
    v8 = v9[0];
    sub_190D51420();

    swift_willThrow();
  }
}

uint64_t sub_190A8F318(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_contentOffsetProxy;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_190D50920();
}

uint64_t sub_190A8F3C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_contentOffsetProxy;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id CKBackgroundGalleryViewController.__deallocating_deinit()
{
  v1 = v0;
  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D730);
  v3 = sub_190D53020();
  v4 = sub_190D57680();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, v4, "Background Gallery deinit reached.", v5, 2u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for CKBackgroundGalleryViewController();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_190A8F69C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v63 - v2;
  v4 = type metadata accessor for CKBackgroundGalleryViewController();
  v66.receiver = v0;
  v66.super_class = v4;
  objc_msgSendSuper2(&v66, sel_viewDidLoad);
  v5 = sub_190D56ED0();
  [v0 setTitle_];

  v6 = *&v0[OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_conversation];
  _s9ViewModelCMa_9();
  v7 = swift_allocObject();
  v8 = v6;
  v9 = v0;
  v10 = sub_190A92FB0(v9, v8, v7);

  *&v9[OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_viewModel] = v10;
  sub_190D50920();

  v11 = OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_contentOffsetProxy;
  swift_beginAccess();
  v12 = *&v9[v11];
  LOBYTE(v11) = v9[OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_wantsInspectorStyling];
  v65 = v10;
  sub_190D50920();
  sub_190D50920();
  sub_190D55FC0();
  v13 = v63[4];
  v14 = v63[5];
  v63[6] = v12;
  v64 = v11;
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BB68));
  sub_190D50920();
  sub_190D50920();
  sub_190D50920();
  v16 = sub_190D54B60();
  v17 = [v16 view];
  if (!v17)
  {
    __break(1u);
    goto LABEL_18;
  }

  v18 = v17;
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];

  v19 = [v16 view];
  if (!v19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = v19;
  v21 = [objc_opt_self() clearColor];
  [v20 setBackgroundColor_];

  [v9 addChildViewController_];
  v22 = [v9 view];
  if (!v22)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v23 = v22;
  v24 = [v16 view];
  if (!v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v25 = v24;
  [v23 addSubview_];

  [v16 didMoveToParentViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_190DD86A0;
  v27 = [v16 view];
  if (!v27)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v28 = v27;
  v63[1] = v14;
  v63[2] = v13;
  v63[3] = v12;
  v29 = [v27 topAnchor];

  v30 = [v9 view];
  if (!v30)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v31 = v30;
  v63[0] = v3;
  v32 = [v30 topAnchor];

  v33 = [v29 constraintEqualToAnchor_];
  *(v26 + 32) = v33;
  v34 = [v16 view];
  if (!v34)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v35 = v34;
  v36 = [v34 bottomAnchor];

  v37 = [v9 view];
  if (!v37)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v38 = v37;
  v39 = [v37 bottomAnchor];

  v40 = [v36 constraintEqualToAnchor_];
  *(v26 + 40) = v40;
  v41 = [v16 view];
  if (!v41)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v42 = v41;
  v43 = [v41 leadingAnchor];

  v44 = [v9 view];
  if (!v44)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v45 = v44;
  v46 = [v44 leadingAnchor];

  v47 = [v43 constraintEqualToAnchor_];
  *(v26 + 48) = v47;
  v48 = [v16 view];

  if (!v48)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v49 = [v48 trailingAnchor];

  v50 = [v9 view];
  if (!v50)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v51 = v50;
  v52 = objc_opt_self();
  v53 = [v51 trailingAnchor];

  v54 = [v49 constraintEqualToAnchor_];
  *(v26 + 56) = v54;
  sub_1902188FC(0, &qword_1EAD45040);
  v55 = sub_190D57160();

  [v52 activateConstraints_];

  v56 = [objc_opt_self() defaultCenter];
  [v56 addObserver:v9 selector:sel_handleSceneDidEnterBackgroundFrom_ name:*MEMORY[0x1E69DE348] object:0];

  if (sub_190CA9B5C(1, *(v10 + 88)))
  {
    v57 = sub_190D572E0();
    v58 = v63[0];
    (*(*(v57 - 8) + 56))(v63[0], 1, 1, v57);
    sub_190D572A0();
    v59 = v9;
    v60 = sub_190D57290();
    v61 = swift_allocObject();
    v62 = MEMORY[0x1E69E85E0];
    v61[2] = v60;
    v61[3] = v62;
    v61[4] = v59;
    sub_190857E08(0, 0, v58, &unk_190DEC9D8, v61);
  }

  else
  {
  }
}

void sub_190A8FE50(char a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for CKBackgroundGalleryViewController();
  objc_msgSendSuper2(&v8, sel_viewDidAppear_, a1 & 1);
  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9D730);
  v5 = sub_190D53020();
  v6 = sub_190D57680();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_19020E000, v5, v6, "Background Gallery view controller did appear.", v7, 2u);
    MEMORY[0x193AF7A40](v7, -1, -1);
  }

  if (*&v2[OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_viewModel])
  {
    sub_190D50920();
    sub_190D2CFF4();
  }
}

void sub_190A8FFCC(char a1)
{
  v2 = v1;
  v28.receiver = v2;
  v28.super_class = type metadata accessor for CKBackgroundGalleryViewController();
  objc_msgSendSuper2(&v28, sel_viewDidDisappear_, a1 & 1);
  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9D730);
  v5 = sub_190D53020();
  v6 = sub_190D57680();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_19020E000, v5, v6, "Background Gallery view controller did disappear.", v7, 2u);
    MEMORY[0x193AF7A40](v7, -1, -1);
  }

  v8 = *&v2[OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_viewModel];
  if (v8)
  {
    v9 = *(v8 + 128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BB70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 16) = 2;
    *(v10 + 24) = 2 * (v12 >> 3);
    *(v10 + 32) = xmmword_190DD06F0;
    v13 = OBJC_IVAR____TtCVVV7ChatKit7Gallery9Analytics15ImagePlayground7Context_suggestionContext;
    sub_190D50920();
    swift_beginAccess();
    v14 = *(v9 + v13);
    if (*(v14 + 16))
    {
      v15 = *(v10 + 32);
      v16 = sub_190875CC8(v15);
      if (v17)
      {
        v18 = *(v14 + 56);
        if (!*(*(v18 + 8 * v16) + 16))
        {
          v19 = sub_190875CC8(v15);
          if (v20)
          {
            *(*(v18 + 8 * v19) + 16) = 4;
          }

          sub_190D50920();
          sub_19097472C(v15);
        }
      }
    }

    v21 = *(v9 + v13);
    if (*(v21 + 16))
    {
      v22 = *(v10 + 40);
      v23 = sub_190875CC8(v22);
      if (v24)
      {
        v25 = *(v21 + 56);
        if (!*(*(v25 + 8 * v23) + 16))
        {
          v26 = sub_190875CC8(v22);
          if (v27)
          {
            *(*(v25 + 8 * v26) + 16) = 4;
          }

          sub_190D50920();
          sub_19097472C(v22);
        }
      }
    }
  }
}

void sub_190A90290(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_conversation);

    v5 = [v4 chat];
    if (v5)
    {
      if (a1)
      {
        [v5 updateTranscriptBackgroundCommSafetyState_];
      }
    }
  }
}

void sub_190A90340(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_19088A008(a1);
  v7 = v6;
  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v8 = sub_190D53040();
  __swift_project_value_buffer(v8, qword_1EAD9D730);
  sub_190D52690();
  v9 = sub_190D53020();
  v10 = sub_190D57680();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_19021D9F8(v5, v7, v18);
    _os_log_impl(&dword_19020E000, v9, v10, "Did request editor extension %s.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x193AF7A40](v12, -1, -1);
    MEMORY[0x193AF7A40](v11, -1, -1);
  }

  v13 = objc_opt_self();
  v14 = sub_190D56ED0();
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a2;
  v15[4] = v5;
  v15[5] = v7;
  v18[4] = sub_190A94560;
  v18[5] = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_19087F0F0;
  v18[3] = &block_descriptor_92;
  v16 = _Block_copy(v18);
  sub_190D52690();
  v17 = v3;

  [v13 createPosterConfigurationForExtensionIdentifier:v14 completion:v16];
  _Block_release(v16);
}

uint64_t sub_190A90578(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v11 = sub_190D56770();
  v29 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_190D567A0();
  v27 = *(v14 - 8);
  v28 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1902188FC(0, &qword_1EAD46670);
  v26 = sub_190D57870();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a1;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = v25;
  v17[7] = a6;
  aBlock[4] = sub_190A9456C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_98;
  v18 = _Block_copy(aBlock);
  v19 = a2;
  sub_190D52690();
  sub_190D52690();
  v20 = a1;
  v21 = a3;

  sub_190D56790();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_190A9457C(&qword_1EAD46770, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190840E08();
  sub_190D58170();
  v22 = v26;
  MEMORY[0x193AF3110](0, v16, v13, v18);
  _Block_release(v18);

  (*(v29 + 8))(v13, v11);
  return (*(v27 + 8))(v16, v28);
}

void sub_190A90878(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = a1;
    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v8 = sub_190D53040();
    __swift_project_value_buffer(v8, qword_1EAD9D730);
    v9 = a1;
    v10 = sub_190D53020();
    v11 = sub_190D576A0();

    if (!os_log_type_enabled(v10, v11))
    {

      if (a2)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_19020E000, v10, v11, "Could not create poster configuration. Error: %@", v12, 0xCu);
    sub_19022EEA4(v13, &unk_1EAD54610);
    MEMORY[0x193AF7A40](v13, -1, -1);
    MEMORY[0x193AF7A40](v12, -1, -1);
  }

  if (a2)
  {
LABEL_7:
    v16 = a2;
    sub_190A93C74(a4, v16);
    v17 = v16;
    v18 = sub_190AAF644();
    v36 = [objc_allocWithZone(CKPRUISPosterEditingViewController) initWithEditingConfiguration_];

    v19 = [v36 editor];
    v20 = sub_190D56ED0();
    v21 = sub_190D56ED0();
    [v19 setValue:v20 forKey:v21];

    v22 = [v36 editor];
    gotLoadHelper_x8__PRSPosterRoleBackdrop(v23);
    v25 = **(v24 + 104);
    v26 = sub_190D56ED0();
    [v22 setValue:v25 forKey:v26];

    sub_190A90C40(v36);
    goto LABEL_10;
  }

LABEL_9:
  v27 = [objc_allocWithZone(type metadata accessor for CKPosterEditingContext()) init];
  Helper_x8__PRSPosterRoleBackdrop = gotLoadHelper_x8__PRSPosterRoleBackdrop(v28);
  v31 = **(v30 + 104);
  gotLoadHelper_x8__OBJC_CLASS___PRSMutablePosterConfiguration(Helper_x8__PRSPosterRoleBackdrop);
  v32 = [objc_opt_self() mutableConfigurationWithRole_];
  sub_190A93C74(a4, v32);
  v33 = objc_allocWithZone(CKPRUISPosterEditingViewController);
  sub_190D52690();
  v17 = v32;
  v34 = v27;
  v35 = sub_190D56ED0();

  v36 = [v33 initWithExtensionIdentifier:v35 configuration:v17 context:v34];

  sub_190A90C40(v36);
LABEL_10:
}

void sub_190A90C40(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_editingViewController];
  *&v1[OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_editingViewController] = a1;
  v3 = a1;

  v4 = [v3 editor];
  [v4 setShowsContentWhenReady_];

  v5 = [v1 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if ((v6 - 1) > 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_190DECB08[(v6 - 1)];
  }

  [v3 setModalPresentationStyle_];
  [v3 setDelegate_];
  v8 = [v1 navigationController];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v3;
    v15[4] = sub_190A94558;
    v15[5] = v11;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_190840E6C;
    v15[3] = &block_descriptor_86_1;
    v12 = _Block_copy(v15);
    v13 = v3;

    [v9 presentViewController:v13 animated:1 completion:v12];
    _Block_release(v12);
  }

  if (*&v1[OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_detailsViewCoordinator])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong didPresentEditorTranscriptBackground_];
      swift_unknownObjectRelease();
    }
  }
}

void sub_190A90E74(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a2 editor];
    objc_allocWithZone(type metadata accessor for CKBackgroundMotionEventsManager());
    v6 = CKBackgroundMotionEventsManager.init(managedMotionEventsGenerator:viewController:delegate:)(v5, a2);
    v7 = *&v4[OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_motionEventsManager];
    *&v4[OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_motionEventsManager] = v6;
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_motionEventsManager);
    v10 = v8;
    v11 = v9;

    if (v9)
    {
      v12 = sub_19083FD50();
      if ((v12 & 1) != v11[OBJC_IVAR____TtC7ChatKit31CKBackgroundMotionEventsManager_isSendingMotionEvents])
      {
        if (v12)
        {
          sub_190840858();
        }

        else
        {
          sub_190840878();
        }
      }
    }
  }
}

void sub_190A90F9C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_motionEventsManager);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      sub_190840878();
    }
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = *&v4[OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_motionEventsManager];
    *&v4[OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_motionEventsManager] = 0;
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = *&v6[OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_editingViewController];
    *&v6[OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_editingViewController] = 0;
  }
}

void sub_190A91088()
{
  v1 = v0;
  sub_190D50F90();
  if (v22)
  {
    sub_1902188FC(0, &qword_1EAD5BC80);
    if (swift_dynamicCast())
    {
      v2 = [v0 view];
      if (v2)
      {
        v3 = v2;
        v4 = [v2 window];

        if (v4 && (v5 = [v4 windowScene], v4, v5))
        {
          v6 = v25;
          v7 = sub_190D57D90();

          if (v7)
          {
            v8 = *&v1[OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_editingViewController];
            if (v8)
            {
              v9 = qword_1EAD46218;
              v10 = v8;
              if (v9 != -1)
              {
                swift_once();
              }

              v11 = sub_190D53040();
              __swift_project_value_buffer(v11, qword_1EAD9D730);
              v12 = sub_190D53020();
              v13 = sub_190D57680();
              if (os_log_type_enabled(v12, v13))
              {
                v14 = swift_slowAlloc();
                *v14 = 0;
                _os_log_impl(&dword_19020E000, v12, v13, "Dismissing poster editor on suspend", v14, 2u);
                MEMORY[0x193AF7A40](v14, -1, -1);
              }

              v15 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v23 = sub_190A946BC;
              v24 = v15;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_190840E6C;
              v22 = &block_descriptor_79_0;
              v16 = _Block_copy(aBlock);

              [v10 dismissViewControllerAnimated:1 completion:v16];
              _Block_release(v16);
              if (*&v1[OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_detailsViewCoordinator])
              {
                Strong = swift_unknownObjectWeakLoadStrong();
                if (Strong)
                {
                  [Strong didPresentEditorTranscriptBackground_];

                  swift_unknownObjectRelease();
                  return;
                }
              }
            }

            else
            {
              v18 = [v1 navigationController];
              if (v18)
              {
                v19 = v18;
                v20 = [v18 presentedViewController];

                if (v20)
                {
                  [v20 dismissViewControllerAnimated:1 completion:0];
                }
              }
            }
          }
        }

        else
        {
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_19022EEA4(aBlock, &unk_1EAD551C0);
  }
}

id CKBackgroundGalleryViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_190D56ED0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void CKBackgroundGalleryViewController.editingViewController(_:didFinishWith:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = _s21BackgroundGalleryItemVMa(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s17BackgroundContentOMa(0);
  v73 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v75 = (&v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = sub_190D518A0();
  v11 = *(v72 - 1);
  MEMORY[0x1EEE9AC00](v72);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v84 = sub_190A93810;
  v85 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v81 = 1107296256;
  v82 = sub_190840E6C;
  v83 = &block_descriptor_68;
  v15 = _Block_copy(&aBlock);

  [a1 dismissViewControllerAnimated:1 completion:v15];
  _Block_release(v15);
  v74 = v3;
  if (*(v3 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_detailsViewCoordinator))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong didPresentEditorTranscriptBackground_];
      swift_unknownObjectRelease();
    }
  }

  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v17 = sub_190D53040();
  __swift_project_value_buffer(v17, qword_1EAD9D730);
  v18 = sub_190D53020();
  v19 = sub_190D57680();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_19020E000, v18, v19, "Poster editing view controller did finish.", v20, 2u);
    MEMORY[0x193AF7A40](v20, -1, -1);
  }

  if (a2)
  {
    v21 = a2;
    sub_190D50450();
    v22 = sub_190D51850();
    v24 = v23;
    (*(v11 + 8))(v13, v72);
    v25 = v75;
    *v75 = v21;
    v25[1] = v22;
    v25[2] = v24;
    swift_storeEnumTagMultiPayload();
    (*(v73 + 56))(&v8[v6[7]], 1, 1, v9);
    sub_1909788B0(v25, &v8[v6[8]]);
    *v8 = 0;
    *(v8 + 1) = 0;
    *(v8 + 2) = v22;
    *(v8 + 3) = v24;
    v8[32] = 0;
    v26 = &v8[v6[9]];
    *v26 = 0u;
    *(v26 + 1) = 0u;
    *&v8[v6[10]] = xmmword_190DEC9A0;
    *&v8[v6[11]] = 0;
    v27 = &v8[v6[12]];
    *v27 = 0xD000000000000015;
    *(v27 + 1) = 0x8000000190E708E0;
    v28 = v21;
    v73 = v24;
    swift_bridgeObjectRetain_n();
    v72 = v28;
    v29 = sub_190D53020();
    v30 = sub_190D57680();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_19020E000, v29, v30, "> Valid configuration found – updating view model and selecting new item.", v31, 2u);
      MEMORY[0x193AF7A40](v31, -1, -1);
    }

    v32 = sub_190978278(v75);
    v33 = sub_1909786D8(v8);
    v34 = *(v74 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_viewModel);
    v71 = OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_viewModel;
    v70 = v8;
    if (v34)
    {
      sub_190D50920();
      v35 = sub_190AA6430();
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v42 = HIWORD(v35);
      v43 = (v35 >> 8) & 1;
    }

    else
    {
      v63 = *(v74 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_conversation);
      LOBYTE(v35) = sub_190977CF0(v63);
      v43 = [objc_opt_self() generativePlaygroundModelsAvailable];
      v64 = [v63 chat];
      v37 = v64;
      if (v64)
      {
        if ([v64 isGroupChat])
        {

          v37 = 0;
          v39 = 0;
          v41 = 0;
          v42 = 2;
        }

        else
        {
          v66 = [v37 isChatBot];

          v37 = 0;
          v39 = 0;
          v41 = 0;
          if (v66)
          {
            v42 = 3;
          }

          else
          {
            v42 = 1;
          }
        }
      }

      else
      {
        v42 = 0;
        v39 = 0;
        v41 = 0;
      }
    }

    v68 = v43;
    v69 = v42;
    LOBYTE(v89) = 1;
    v44 = v35 & 1;
    BYTE1(v89) = v33 & 1;
    BYTE2(v89) = v35 & 1;
    BYTE3(v89) = v43;
    BYTE4(v89) = v32;
    *(&v89 + 5) = 769;
    BYTE7(v89) = v42;
    *(&v89 + 1) = 1;
    *&v90 = v37;
    *(&v90 + 1) = v41;
    v91 = v39;
    sub_190977A30();

    *(&v87 + 1) = &_s24GalleryEngagementPayloadVN;
    v88 = &off_1F040EAA0;
    v45 = swift_allocObject();
    *&v86 = v45;
    v46 = v90;
    *(v45 + 16) = v89;
    *(v45 + 32) = v46;
    *(v45 + 48) = v91;
    v47 = sub_190D56ED0();
    sub_19083B854(&v86, &v77);
    v48 = swift_allocObject();
    sub_19029058C(&v77, v48 + 16);
    v84 = sub_190897A2C;
    v85 = v48;
    aBlock = MEMORY[0x1E69E9820];
    v81 = 1107296256;
    v82 = sub_190A928AC;
    v83 = &block_descriptor_13_1;
    v49 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v49);

    __swift_destroy_boxed_opaque_existential_0(&v86);
    LOBYTE(v86) = 1;
    BYTE1(v86) = v33 & 1;
    v50 = v32;
    BYTE2(v86) = v44;
    BYTE3(v86) = v68;
    BYTE4(v86) = v32;
    *(&v86 + 5) = 1025;
    BYTE7(v86) = v69;
    *(&v86 + 1) = 1;
    *&v87 = v37;
    *(&v87 + 1) = v41;
    v88 = v39;
    sub_190977A30();

    v78 = &_s24GalleryEngagementPayloadVN;
    v79 = &off_1F040EAA0;
    v51 = swift_allocObject();
    *&v77 = v51;
    v52 = v87;
    *(v51 + 16) = v86;
    *(v51 + 32) = v52;
    *(v51 + 48) = v88;
    v53 = sub_190D56ED0();
    sub_19083B854(&v77, v76);
    v54 = swift_allocObject();
    sub_19029058C(v76, v54 + 16);
    v84 = sub_190897A84;
    v85 = v54;
    aBlock = MEMORY[0x1E69E9820];
    v81 = 1107296256;
    v82 = sub_190A928AC;
    v83 = &block_descriptor_21_1;
    v55 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v55);

    __swift_destroy_boxed_opaque_existential_0(&v77);
    v56 = v74;
    v57 = v71;
    v58 = *(v74 + v71);
    v59 = v70;
    if (v58)
    {
      if (qword_190DECB38[*(v58 + 200)] == qword_190DECB38[v50])
      {
        *(v58 + 200) = v50;
        if (*(v56 + v57))
        {
LABEL_16:
          sub_190D50920();
          sub_190AA901C(v59);

          v60 = v72;

LABEL_24:

          sub_190A9385C(v59, _s21BackgroundGalleryItemVMa);
          sub_190A9385C(v75, _s17BackgroundContentOMa);
          return;
        }
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v67 - 2) = v58;
        *(&v67 - 8) = v50;
        aBlock = v58;
        sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
        sub_190D50920();
        sub_190D51C10();

        if (*(v56 + v57))
        {
          goto LABEL_16;
        }
      }
    }

    v60 = v72;

    goto LABEL_24;
  }

  v61 = *(v74 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_viewModel);
  if (v61)
  {
    v62 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v62);
    *(&v67 - 3) = 0;
    *(&v67 - 2) = 0;
    *(&v67 - 4) = v61;
    *(&v67 - 8) = -1;
    aBlock = v61;
    sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
    sub_190D50920();
    sub_190D51C10();
  }
}

Swift::Void __swiftcall CKBackgroundGalleryViewController.picker(_:didFinishPicking:)(PHPickerViewController *_, Swift::OpaquePointer didFinishPicking)
{
  v3 = sub_190A94004(didFinishPicking._rawValue, _);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v8[4] = sub_190A94494;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_190840E6C;
  v8[3] = &block_descriptor_32_0;
  v6 = _Block_copy(v8);
  v7 = v3;

  [(PHPickerViewController *)_ dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);
}

void sub_190A92334(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      v5 = a2;
      sub_190A8F200(v5, 0);
    }

    else
    {
      if (qword_1EAD46218 != -1)
      {
        swift_once();
      }

      v6 = sub_190D53040();
      __swift_project_value_buffer(v6, qword_1EAD9D730);
      v7 = sub_190D53020();
      v8 = sub_190D576C0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_19020E000, v7, v8, "Cancelling with no photo picker selection.", v9, 2u);
        MEMORY[0x193AF7A40](v9, -1, -1);
      }
    }
  }
}

uint64_t sub_190A92648@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  *a2 = v4;
  *(a2 + 8) = v5;
  v6 = *(v3 + 72);
  *(a2 + 16) = v6;
  return sub_190A945C4(v4, v5, v6);
}

uint64_t sub_190A926FC()
{
  swift_getKeyPath();
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C10();
}

uint64_t sub_190A927DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  *a2 = *(v3 + 200);
  return result;
}

id sub_190A928AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_190D50920();
  v3 = v1(v2);

  if (v3)
  {
    sub_1902188FC(0, &qword_1EAD46500);
    v4 = sub_190D56D60();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void *sub_190A92948(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80);
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

void *sub_190A929CC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53CB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_190A92A64(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5BCB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_190A92AF4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BCA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

void *sub_190A92B98(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 25;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 3);
  return result;
}

void *sub_190A92C14(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
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

uint64_t *sub_190A92C9C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_190A92D38(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  if (!a2)
  {
    v16 = *(a4 + 16);
    v5 = 0;
LABEL_13:
    *result = a4;
    result[1] = v16;
    return v5;
  }

  if (!a3)
  {
    v16 = *(a4 + 16);
    v5 = 0;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v5)
    {
      v7 = a2;
      v19 = result;
      v8 = 0;
      v9 = a3 - 1;
      v10 = a4 + 48 * v5;
      while (v5 + v8 <= *(a4 + 16))
      {
        v11 = *(v10 - 8);
        v12 = *v10;
        v13 = *(v10 + 24);
        v14 = *(v10 + 8);
        *v7 = *(v10 - 16);
        *(v7 + 8) = v11;
        *(v7 + 16) = v12;
        *(v7 + 24) = v14;
        *(v7 + 40) = v13;
        if (!(v9 + v8))
        {
          v17 = v14;
          sub_190D52690();
          sub_190D52690();
          v18 = v12;
          v16 = v5 + v8 - 1;
          v5 = a3;
          result = v19;
          goto LABEL_13;
        }

        v15 = v14;
        sub_190D52690();
        sub_190D52690();
        result = v12;
        --v8;
        v10 -= 48;
        v7 += 48;
        v16 = v5 + v8;
        if (!(v5 + v8))
        {
          result = v19;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    v16 = 0;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id sub_190A92E7C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CKPosterEditingHelpers();
  v5 = sub_190A01CA0(a1, *(a2 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_conversation), v4);
  v6 = [objc_allocWithZone(CKPRUISPosterEditingViewController) initWithEditingConfiguration_];

  return v6;
}

void sub_190A92EFC()
{
  *(v0 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_editingViewController) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_viewModel) = 0;
  v1 = OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_playgroundDelegate;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for GalleryImagePlaygroundManager()) init];
  *(v0 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_suggestionGenerator) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_motionEventsManager) = 0;
  sub_190D58510();
  __break(1u);
}

unint64_t sub_190A92FB0(void *a1, void *a2, unint64_t a3)
{
  v6 = _s21BackgroundGalleryItemVMa(0);
  v49 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BCA8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  *(a3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 56) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 72) = -1;
  *(a3 + 88) = sub_190B0B5C0();
  *(a3 + 96) = 0;
  *(a3 + 112) = 0;
  _s7ManagerCMa();
  v12 = swift_allocObject();
  v13 = sub_190D51D30();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = objc_allocWithZone(sub_190D56890());
  v15 = sub_190D56880();
  v16 = MEMORY[0x1E69E7CD0];
  *(v12 + 16) = v15;
  *(v12 + 24) = v16;
  *(a3 + 120) = v12;
  _s7ContextCMa();
  v17 = swift_allocObject();
  sub_190D50450();
  v18 = OBJC_IVAR____TtCVVV7ChatKit7Gallery9Analytics15ImagePlayground7Context_suggestionContext;
  *(v17 + v18) = sub_190822464(MEMORY[0x1E69E7CC0]);
  *(a3 + 128) = v17;
  *(a3 + 136) = xmmword_190DEC9B0;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;
  *(a3 + 176) = 1;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = 1;
  sub_190D51C50();
  swift_unknownObjectRetain();
  sub_19024C978(a3 + 16);
  *(a3 + 24) = &off_1F0415C28;
  swift_unknownObjectWeakInit();

  *(a3 + 32) = a2;
  _s17SuggestionsLoaderCMa();
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(a3 + 80) = v19;
  v20 = objc_opt_self();
  v21 = a2;
  [v20 forceDelayLoadForPosterKit];
  *(a3 + 104) = sub_190AAEA98();
  v22 = sub_190AA66C4();
  sub_190AA7A50(v22, 0);

  v45 = [v21 transcriptBackground];
  v23 = sub_1908968B0(v45);
  v24 = v23;
  if (qword_190DECB38[*(a3 + 200)] == qword_190DECB38[v23])
  {
    *(a3 + 200) = v23;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v45 - 2) = a3;
    *(&v45 - 8) = v24;
    v51 = a3;
    sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
    sub_190D51C10();
  }

  v26 = sub_190867070() & 1;
  if (v26 == *(a3 + 96))
  {
    *(a3 + 96) = v26;
  }

  else
  {
    v27 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v27);
    *(&v45 - 2) = a3;
    *(&v45 - 8) = v26;
    v51 = a3;
    sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
    sub_190D51C10();
  }

  v28 = [objc_opt_self() defaultCenter];
  v46 = a3;
  [v28 addObserver:a3 selector:sel_handleBackgroundChannelChangeNotification_ name:@"CKTranscriptBackgroundChannelControllerChannelUpdatedNotification" object:0];

  v53 = MEMORY[0x1E69E7CC0];
  sub_19082E174(0, 6, 0);
  v29 = 0;
  v30 = v53;
  v48 = 0x8000000190E70A80;
  v47 = xmmword_190DDBBE0;
  do
  {
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_190D582B0();

    v51 = 0xD000000000000015;
    v52 = v48;
    v50 = v29;
    v31 = sub_190D58720();
    MEMORY[0x193AF28B0](v31);

    v32 = v51;
    v33 = v52;
    v34 = v6[7];
    v35 = _s17BackgroundContentOMa(0);
    (*(*(v35 - 8) + 56))(&v8[v34], 1, 1, v35);
    swift_storeEnumTagMultiPayload();
    *v8 = 0;
    *(v8 + 1) = 0;
    *(v8 + 2) = v32;
    *(v8 + 3) = v33;
    v8[32] = 0;
    v36 = &v8[v6[9]];
    *v36 = 0u;
    *(v36 + 1) = 0u;
    *&v8[v6[10]] = v47;
    *&v8[v6[11]] = 0;
    v37 = &v8[v6[12]];
    *v37 = 0xD000000000000015;
    *(v37 + 1) = 0x8000000190E708E0;
    v53 = v30;
    v39 = *(v30 + 16);
    v38 = *(v30 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_19082E174(v38 > 1, v39 + 1, 1);
      v30 = v53;
    }

    ++v29;
    *(v30 + 16) = v39 + 1;
    sub_190A94600(v8, v30 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v39);
  }

  while (v29 != 6);
  v40 = v46;
  sub_190AA7A50(v30, 1);

  v41 = swift_allocObject();
  swift_weakInit();
  v42 = sub_190D50920();
  sub_190A78F9C(v42, v41);

  v43 = swift_allocObject();
  swift_weakInit();
  sub_190D50920();

  sub_190D50920();
  sub_190B07E40(sub_190A94664, v43);

  return v40;
}

uint64_t sub_190A9375C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_190221DA4;

  return sub_1908D2AFC(a1, v4, v5, v6);
}

uint64_t sub_190A9385C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_190A938BC()
{
  v4 = [objc_opt_self() photoPickerWithBackgroundWallpaperSuggestionGroup_];
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    aBlock[4] = nullsub_10;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190840E6C;
    aBlock[3] = &block_descriptor_101;
    v3 = _Block_copy(aBlock);
    [v2 presentViewController:v4 animated:1 completion:v3];

    _Block_release(v3);
  }

  else
  {
  }
}

void sub_190A939E0(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_190A8F200(v1, 1);
  }
}

void sub_190A93B14(char a1)
{
  v3 = [objc_allocWithZone(type metadata accessor for CKCommunicationSafetyFlowPresenter()) init];
  if (a1)
  {
    v4 = [objc_opt_self() sharedInstance];
    if (v4)
    {
      v5 = v4;

      [v5 logPrivatizedUIInteractionEvent_];
      v7 = [objc_allocWithZone(MEMORY[0x1E69CA908]) init];
      [v1 presentViewController:v7 animated:1 completion:0];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_190D50920();
    sub_190D2D258(0, v1, 1, 0, sub_190A94550, v6);
  }
}

void sub_190A93C74(uint64_t a1, void *a2)
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v4 = sub_190D53040();
    __swift_project_value_buffer(v4, qword_1EAD9D730);
    sub_190D52690();
    v5 = sub_190D53020();
    v6 = sub_190D57680();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v27[0] = v8;
      *v7 = 136315138;
      v9 = sub_190D56DA0();
      v11 = sub_19021D9F8(v9, v10, v27);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_19020E000, v5, v6, "> userInfo provided {%s}", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x193AF7A40](v8, -1, -1);
      MEMORY[0x193AF7A40](v7, -1, -1);
    }

    sub_190A8EF38(a1);
    v12 = sub_190D56D60();

    v27[0] = 0;
    v13 = [a2 storeUserInfo:v12 error:v27];

    if (v13)
    {
      v14 = v27[0];
      v15 = sub_190D53020();
      v16 = sub_190D57680();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_19020E000, v15, v16, "> Stored successfully on new poster configuration.", v17, 2u);
        MEMORY[0x193AF7A40](v17, -1, -1);
      }
    }

    else
    {
      v18 = v27[0];
      v19 = sub_190D51420();

      swift_willThrow();
      v20 = v19;
      v21 = sub_190D53020();
      v22 = sub_190D57680();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        v25 = v19;
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 4) = v26;
        *v24 = v26;
        _os_log_impl(&dword_19020E000, v21, v22, "> Failed to store user info on new poster configuration. %@", v23, 0xCu);
        sub_19022EEA4(v24, &unk_1EAD54610);
        MEMORY[0x193AF7A40](v24, -1, -1);
        MEMORY[0x193AF7A40](v23, -1, -1);
      }

      else
      {
      }
    }
  }
}

id sub_190A94004(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    v2 = a1;
    v33 = sub_190D581C0();
    a1 = v2;
    if (!v33)
    {
      return 0;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x193AF3B90](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_23;
    }

    v4 = *(a1 + 32);
  }

  v2 = v4;
  v5 = [v4 assetIdentifier];
  if (!v5)
  {
    if (qword_1EAD46218 == -1)
    {
LABEL_10:
      v25 = sub_190D53040();
      __swift_project_value_buffer(v25, qword_1EAD9D730);
      v26 = sub_190D53020();
      v27 = sub_190D576C0();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_19020E000, v26, v27, "Failed to fetch asset identifier", v28, 2u);
        MEMORY[0x193AF7A40](v28, -1, -1);
      }

      return 0;
    }

LABEL_23:
    swift_once();
    goto LABEL_10;
  }

  v6 = v5;
  v7 = sub_190D56F10();
  v9 = v8;

  v10 = [objc_opt_self() fetchOptionsForPicker_];
  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_190DD1D90;
  *(v12 + 32) = v7;
  *(v12 + 40) = v9;
  sub_190D52690();
  v13 = sub_190D57160();

  v14 = [v11 fetchAssetsWithLocalIdentifiers:v13 options:v10];

  v15 = [v14 firstObject];
  if (v15)
  {
    v16 = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_190DD1D90;
    *(v17 + 32) = v7;
    *(v17 + 40) = v9;
    v18 = sub_190D57160();

    [a2 _startActivityIndicatorsForAssetsWithIdentifiers_];

    v19 = [objc_allocWithZone(MEMORY[0x1E69C07E8]) initWithConfigurationType_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_190DD55F0;
    v21 = [v16 uuid];
    v22 = [objc_allocWithZone(MEMORY[0x1E69C0808]) initWithAssetUUID_];

    *(v20 + 32) = v22;
    sub_1902188FC(0, &qword_1EAD574D0);
    v23 = sub_190D57160();

    [v19 setMedia_];

    return v19;
  }

  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v29 = sub_190D53040();
  __swift_project_value_buffer(v29, qword_1EAD9D730);
  v30 = sub_190D53020();
  v31 = sub_190D576C0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_19020E000, v30, v31, "Failed to fetch asset", v32, 2u);
    MEMORY[0x193AF7A40](v32, -1, -1);
  }

  return 0;
}

uint64_t sub_190A9457C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190A945C4(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_190A945DC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_190A94600(uint64_t a1, uint64_t a2)
{
  v4 = _s21BackgroundGalleryItemVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190A9472C()
{
  result = _s21BackgroundGalleryItemVMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_190A947C4()
{
  v1 = _s37BackgroundRoundedRectanglePreviewCellVMa(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BCE0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - v5;
  v7 = _s27BackgroundCirclePreviewCellVMa(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s21BackgroundPreviewCellVMa(0);
  v11 = *(v0 + *(v10 + 24));
  if (*(v0 + *(v10 + 20)) == 1)
  {
    sub_190A94BC0(v0, v9, _s21BackgroundGalleryItemVMa);
    v9[*(v7 + 20)] = v11;
    v12 = *(v7 + 24);
    *&v9[v12] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
    swift_storeEnumTagMultiPayload();
    sub_190A94BC0(v9, v6, _s27BackgroundCirclePreviewCellVMa);
    swift_storeEnumTagMultiPayload();
    sub_190A94C28(&qword_1EAD5BCE8, _s27BackgroundCirclePreviewCellVMa);
    sub_190A94C28(&qword_1EAD5BCF0, _s37BackgroundRoundedRectanglePreviewCellVMa);
    sub_190D54C50();
    v13 = _s27BackgroundCirclePreviewCellVMa;
    v14 = v9;
  }

  else
  {
    sub_190A94BC0(v0, v3, _s21BackgroundGalleryItemVMa);
    v3[*(v1 + 20)] = v11;
    v15 = *(v1 + 24);
    *&v3[v15] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
    swift_storeEnumTagMultiPayload();
    sub_190A94BC0(v3, v6, _s37BackgroundRoundedRectanglePreviewCellVMa);
    swift_storeEnumTagMultiPayload();
    sub_190A94C28(&qword_1EAD5BCE8, _s27BackgroundCirclePreviewCellVMa);
    sub_190A94C28(&qword_1EAD5BCF0, _s37BackgroundRoundedRectanglePreviewCellVMa);
    sub_190D54C50();
    v13 = _s37BackgroundRoundedRectanglePreviewCellVMa;
    v14 = v3;
  }

  return sub_190A94C70(v14, v13);
}

uint64_t sub_190A94BC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_190A94C28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190A94C70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s21BackgroundGalleryItemVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55970);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_index_9Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s21BackgroundGalleryItemVMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55970);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_190A94F88()
{
  _s21BackgroundGalleryItemVMa(319);
  if (v0 <= 0x3F)
  {
    sub_1908B90C4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_190A95014()
{
  result = qword_1EAD5BD18;
  if (!qword_1EAD5BD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5BD20);
    sub_190A94C28(&qword_1EAD5BCE8, _s27BackgroundCirclePreviewCellVMa);
    sub_190A94C28(&qword_1EAD5BCF0, _s37BackgroundRoundedRectanglePreviewCellVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5BD18);
  }

  return result;
}

__n128 sub_190A9511C@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v92 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54060);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v80 - v4;
  v6 = _s17BackgroundContentOMa(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = _s14BackgroundViewVMa();
  MEMORY[0x1EEE9AC00](v80);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BDB8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v80 - v13;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BDC0);
  MEMORY[0x1EEE9AC00](v91);
  v16 = &v80 - v15;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BDC8);
  MEMORY[0x1EEE9AC00](v81);
  v87 = &v80 - v17;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BDD0);
  MEMORY[0x1EEE9AC00](v82);
  v89 = &v80 - v18;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BDD8);
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v80 - v19;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BDE0);
  MEMORY[0x1EEE9AC00](v85);
  v90 = &v80 - v20;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BDE8);
  MEMORY[0x1EEE9AC00](v83);
  v88 = &v80 - v21;
  v22 = _s21BackgroundGalleryItemVMa(0);
  sub_19022FD14(v2 + *(v22 + 28), v5, &unk_1EAD54060);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_19022EEA4(v5, &unk_1EAD54060);
    sub_190A94BC0(v2 + *(v22 + 32), v9, _s17BackgroundContentOMa);
  }

  else
  {
    sub_190A97494(v5, v9, _s17BackgroundContentOMa);
  }

  v23 = v2;
  sub_190A97494(v9, v11, _s17BackgroundContentOMa);
  sub_190A94C28(&qword_1EAD5BD88, _s14BackgroundViewVMa);
  sub_190D55AA0();
  sub_190A94C70(v11, _s14BackgroundViewVMa);
  v24 = sub_190D56500();
  v26 = v25;
  v27 = *(v2 + 32);
  if (v27 == 1)
  {
    KeyPath = swift_getKeyPath();
    v29 = 0;
  }

  else
  {
    KeyPath = 0;
    v29 = 2;
  }

  sub_19081E40C(v14, v16, &qword_1EAD5BDB8);
  v30 = &v16[*(v91 + 36)];
  *v30 = v29;
  *(v30 + 1) = KeyPath;
  *(v30 + 2) = 0;
  v30[24] = 0;
  *(v30 + 4) = v24;
  *(v30 + 5) = v26;
  v31 = sub_190D564C0();
  v33 = v32;
  v34 = *(_s37BackgroundRoundedRectanglePreviewCellVMa(0) + 20);
  v91 = v23;
  v35 = *(v23 + v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1DA0;
  v37 = sub_190D552C0();
  *(inited + 32) = v37;
  v38 = sub_190D55300();
  *(inited + 33) = v38;
  v39 = sub_190D552F0();
  sub_190D552F0();
  if (sub_190D552F0() != v37)
  {
    v39 = sub_190D552F0();
  }

  sub_190D552F0();
  if (sub_190D552F0() != v38)
  {
    v39 = sub_190D552F0();
  }

  if (v27 | v35 ^ 1)
  {
    v40 = 0.0;
  }

  else
  {
    v40 = 1.0;
  }

  sub_190D539C0();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v112 = 0;
  LOBYTE(v94) = 0;
  *(&v94 + 1) = v40;
  LOBYTE(v95) = v39;
  *(&v95 + 1) = v41;
  *&v96 = v43;
  *(&v96 + 1) = v45;
  *&v97 = v47;
  BYTE8(v97) = 0;
  *&v98 = sub_190A95AA4;
  *(&v98 + 1) = 0;
  *&v99 = v31;
  *(&v99 + 1) = v33;
  v49 = v87;
  sub_19081E40C(v16, v87, &qword_1EAD5BDC0);
  v50 = (v49 + *(v81 + 36));
  v51 = v97;
  v50[2] = v96;
  v50[3] = v51;
  v52 = v99;
  v50[4] = v98;
  v50[5] = v52;
  v53 = v95;
  *v50 = v94;
  v50[1] = v53;
  v100[0] = 0;
  v101 = v40;
  v102 = v39;
  v103 = v42;
  v104 = v44;
  v105 = v46;
  v106 = v48;
  v107 = 0;
  v108 = sub_190A95AA4;
  v109 = 0;
  v110 = v31;
  v111 = v33;
  sub_19022FD14(&v94, &v93, &qword_1EAD5BDF0);
  sub_19022EEA4(v100, &qword_1EAD5BDF0);
  v54 = v89;
  v55 = &v89[*(v82 + 36)];
  v82 = sub_190D543E0();
  v56 = *(v82 + 20);
  v57 = *MEMORY[0x1E697F468];
  v58 = sub_190D54A20();
  v59 = *(*(v58 - 8) + 104);
  v59(&v55[v56], v57, v58);
  __asm { FMOV            V0.2D, #26.0 }

  *v55 = _Q0;
  *&v55[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A00) + 36)] = 256;
  sub_19081E40C(v49, v54, &qword_1EAD5BDC8);
  v65 = sub_190D56500();
  v67 = v66;
  v68 = v86;
  v69 = &v86[*(v84 + 36)];
  sub_190A95ACC(v91, v69);
  v70 = (v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BDF8) + 36));
  *v70 = v65;
  v70[1] = v67;
  sub_19081E40C(v54, v68, &qword_1EAD5BDD0);
  v71 = v90;
  sub_19081E40C(v68, v90, &qword_1EAD5BDD8);
  v72 = v71 + *(v85 + 36);
  *v72 = 0x3FE8000000000000;
  *(v72 + 8) = 256;
  v73 = v88;
  v74 = &v88[*(v83 + 36)];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B1F8);
  sub_190D544A0();
  v59(&v74[*(v82 + 20)], v57, v58);
  __asm { FMOV            V0.2D, #30.0 }

  *v74 = _Q0;
  v74[*(v75 + 36)] = 0;
  sub_19081E40C(v71, v73, &qword_1EAD5BDE0);
  LOBYTE(v68) = sub_190D552B0();
  v77 = v92;
  sub_19081E40C(v73, v92, &qword_1EAD5BDE8);
  v78 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BE00) + 36);
  *v78 = v68;
  __asm { FMOV            V0.2D, #5.0 }

  *(v78 + 8) = result;
  *(v78 + 24) = result;
  *(v78 + 40) = 0;
  return result;
}

uint64_t sub_190A95ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_190D54950();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v52[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v52[-v8];
  v54 = sub_190D543E0();
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v52[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BE08);
  v59 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v52[-v12];
  v13 = sub_190D53A60();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v52[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52[-v18];
  if (*(a1 + 24) && (_s37BackgroundRoundedRectanglePreviewCellVMa(0), v58 = a1, sub_1909CD064(v19), (*(v14 + 104))(v16, *MEMORY[0x1E697DBB8], v13), v53 = sub_190D53A50(), v20 = *(v14 + 8), v20(v16, v13), v20(v19, v13), a1 = v58, (v53 & 1) == 0))
  {
    v21 = v58;
    sub_190D55DC0();
  }

  else
  {
    v21 = a1;
    sub_190D55D50();
  }

  if (*(v21 + *(_s37BackgroundRoundedRectanglePreviewCellVMa(0) + 20)) == 1)
  {
    v22 = *(v54 + 20);
    v23 = *MEMORY[0x1E697F468];
    v24 = sub_190D54A20();
    v25 = v55;
    (*(*(v24 - 8) + 104))(&v55[v22], v23, v24);
    __asm { FMOV            V0.2D, #30.0 }

    *v25 = _Q0;
    v31 = sub_190D55DF0();
    sub_190D53AD0();
    v32 = v56;
    sub_190A94BC0(v25, v56, MEMORY[0x1E697EAF0]);
    v33 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BE10) + 36)];
    v34 = v61;
    *v33 = v60;
    *(v33 + 1) = v34;
    *(v33 + 4) = v62;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BE18);
    *&v32[*(v35 + 52)] = v31;
    *&v32[*(v35 + 56)] = 256;
    v36 = sub_190D56500();
    v38 = v37;
    sub_190A94C70(v25, MEMORY[0x1E697EAF0]);
    v39 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BE20) + 36)];
    *v39 = v36;
    v39[1] = v38;
    LOBYTE(v36) = sub_190D552B0();
    sub_190D539C0();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v48 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BE28) + 36)];
    *v48 = v36;
    *(v48 + 1) = v41;
    *(v48 + 2) = v43;
    *(v48 + 3) = v45;
    *(v48 + 4) = v47;
    v48[40] = 0;
    sub_190D54940();
    (*(v5 + 16))(v57, v9, v4);
    sub_190A94C28(&qword_1EAD5BDB0, MEMORY[0x1E697F400]);
    v49 = sub_190D53CF0();

    (*(v5 + 8))(v9, v4);
    *&v32[*(v11 + 36)] = v49;
    sub_19081E40C(v32, a2, &qword_1EAD5BE08);
    v50 = 0;
  }

  else
  {

    v50 = 1;
  }

  return (*(v59 + 56))(a2, v50, 1, v11);
}

uint64_t sub_190A96104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v3 = sub_190D55430();
  v104 = *(v3 - 8);
  v105 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v103 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BD38);
  v118 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v106 = &v103 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BD40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v121 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v119 = &v103 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54060);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v103 - v11;
  v107 = _s17BackgroundContentOMa(0);
  v13 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v15 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s14BackgroundViewVMa();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BD48);
  MEMORY[0x1EEE9AC00](v108);
  v20 = &v103 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BD50);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v111 = &v103 - v22;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BD58);
  MEMORY[0x1EEE9AC00](v110);
  v24 = &v103 - v23;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BD60);
  MEMORY[0x1EEE9AC00](v109);
  v26 = &v103 - v25;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BD68);
  MEMORY[0x1EEE9AC00](v112);
  v116 = &v103 - v27;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BD70);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v103 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BD78);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v117 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v113 = &v103 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v123 = &v103 - v34;
  v35 = _s21BackgroundGalleryItemVMa(0);
  sub_19022FD14(a1 + *(v35 + 28), v12, &unk_1EAD54060);
  if ((*(v13 + 48))(v12, 1, v107) == 1)
  {
    sub_19022EEA4(v12, &unk_1EAD54060);
    sub_190A94BC0(a1 + *(v35 + 32), v15, _s17BackgroundContentOMa);
  }

  else
  {
    sub_190A97494(v12, v15, _s17BackgroundContentOMa);
  }

  sub_190A97494(v15, v18, _s17BackgroundContentOMa);
  sub_190A97494(v18, v20, _s14BackgroundViewVMa);
  v36 = &v20[*(v108 + 36)];
  *v36 = 0x3FF0000000000000;
  *(v36 + 4) = 0;
  sub_190A974FC();
  v37 = v111;
  sub_190D55AA0();
  sub_19022EEA4(v20, &qword_1EAD5BD48);
  v38 = sub_190D56500();
  v40 = v39;
  if (*(a1 + 32) == 1)
  {
    KeyPath = swift_getKeyPath();
    v42 = 1;
  }

  else
  {
    KeyPath = 0;
    v42 = 2;
  }

  sub_19081E40C(v37, v24, &qword_1EAD5BD50);
  v43 = &v24[*(v110 + 36)];
  *v43 = v42;
  *(v43 + 1) = KeyPath;
  *(v43 + 2) = 0;
  v43[24] = 0;
  *(v43 + 4) = v38;
  *(v43 + 5) = v40;
  sub_19081E40C(v24, v26, &qword_1EAD5BD58);
  *&v26[*(v109 + 36)] = 256;
  v44 = sub_190D56500();
  v46 = v45;
  sub_190A96D00(a1, &v130);
  v142 = v134;
  v143 = v135;
  v144 = v136;
  v145 = v137;
  v138 = v130;
  v139 = v131;
  v140 = v132;
  v141 = v133;
  *&v146 = v44;
  *(&v146 + 1) = v46;
  v47 = v116;
  sub_19081E40C(v26, v116, &qword_1EAD5BD60);
  v48 = (v47 + *(v112 + 36));
  v49 = v145;
  v48[6] = v144;
  v48[7] = v49;
  v48[8] = v146;
  v50 = v141;
  v48[2] = v140;
  v48[3] = v50;
  v51 = v143;
  v48[4] = v142;
  v48[5] = v51;
  v52 = v139;
  *v48 = v138;
  v48[1] = v52;
  v147[4] = v134;
  v147[5] = v135;
  v147[6] = v136;
  v147[7] = v137;
  v147[0] = v130;
  v147[1] = v131;
  v147[2] = v132;
  v147[3] = v133;
  v148 = v44;
  v149 = v46;
  sub_19022FD14(&v138, &v124, &qword_1EAD5BD90);
  sub_19022EEA4(v147, &qword_1EAD5BD90);
  v53 = sub_190D564D0();
  v55 = v54;
  if (*(a1 + *(_s27BackgroundCirclePreviewCellVMa(0) + 20)))
  {
    v56 = sub_190A97124;
  }

  else
  {
    v56 = 0;
  }

  v57 = v47;
  v58 = v114;
  sub_19081E40C(v57, v114, &qword_1EAD5BD68);
  v59 = (v58 + *(v115 + 36));
  *v59 = v56;
  v59[1] = 0;
  v59[2] = v53;
  v59[3] = v55;
  v60 = v113;
  sub_19081E40C(v58, v113, &qword_1EAD5BD70);
  sub_19081E40C(v60, v123, &qword_1EAD5BD78);
  v61 = *(a1 + 8);
  v62 = 1;
  if (v61)
  {
    v124 = *a1;
    v125 = v61;
    sub_19081E484();
    sub_190D52690();
    v63 = sub_190D555F0();
    v65 = v64;
    v67 = v66;
    sub_190D55480();
    v69 = v103;
    v68 = v104;
    v70 = v105;
    (*(v104 + 104))(v103, *MEMORY[0x1E6980EA8], v105);
    sub_190D55460();

    (*(v68 + 8))(v69, v70);
    v71 = v63;
    v72 = sub_190D555B0();
    v74 = v73;
    v76 = v75;
    v78 = v77;

    sub_19081E474(v71, v65, v67 & 1);

    v79 = swift_getKeyPath();
    v124 = v72;
    v125 = v74;
    v76 &= 1u;
    v126 = v76;
    v127 = v78;
    v128 = v79;
    v129 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD564F8);
    sub_1908E6180();
    v80 = v106;
    sub_190D55C80();
    sub_19081E474(v72, v74, v76);

    LODWORD(v74) = sub_190D54E80();
    *(v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BDA0) + 36)) = v74;
    LOBYTE(v74) = sub_190D552E0();
    sub_190D539C0();
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v89 = v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BDA8) + 36);
    *v89 = v74;
    *(v89 + 8) = v82;
    *(v89 + 16) = v84;
    *(v89 + 24) = v86;
    *(v89 + 32) = v88;
    *(v89 + 40) = 0;
    LOBYTE(v74) = sub_190D55300();
    sub_190D539C0();
    v91 = v119;
    v90 = v120;
    v92 = v80 + *(v120 + 36);
    *v92 = v74;
    *(v92 + 8) = v93;
    *(v92 + 16) = v94;
    *(v92 + 24) = v95;
    *(v92 + 32) = v96;
    *(v92 + 40) = 0;
    sub_19027AA44(v80, v91);
    v62 = 0;
  }

  else
  {
    v91 = v119;
    v90 = v120;
  }

  (*(v118 + 56))(v91, v62, 1, v90);
  v97 = v123;
  v98 = v117;
  sub_19022FD14(v123, v117, &qword_1EAD5BD78);
  v99 = v121;
  sub_19027A964(v91, v121);
  v100 = v122;
  sub_19022FD14(v98, v122, &qword_1EAD5BD78);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BD98);
  sub_19027A964(v99, v100 + *(v101 + 48));
  sub_19027A9D4(v91);
  sub_19022EEA4(v97, &qword_1EAD5BD78);
  sub_19027A9D4(v99);
  return sub_19022EEA4(v98, &qword_1EAD5BD78);
}

double sub_190A96D00@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_190D54950();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v40 - v8;
  v9 = sub_190D53A60();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  if (*(a1 + 24) && (_s27BackgroundCirclePreviewCellVMa(0), sub_1909CD064(v15), (*(v10 + 104))(v12, *MEMORY[0x1E697DBB8], v9), LODWORD(v41) = sub_190D53A50(), v16 = *(v10 + 8), v16(v12, v9), v16(v15, v9), (v41 & 1) == 0))
  {
    sub_190D55DC0();
  }

  else
  {
    sub_190D55D50();
  }

  if (*(a1 + *(_s27BackgroundCirclePreviewCellVMa(0) + 20)) == 1)
  {
    v41 = sub_190D55DF0();
    sub_190D53AD0();
    v17 = v60;
    v18 = v62;
    v40 = v63;
    v19 = v64;
    v20 = sub_190D56500();
    v22 = v21;
    v23 = sub_190D552B0();
    sub_190D539C0();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    LOBYTE(v52) = 0;
    v32 = v43;
    sub_190D54940();
    v33 = v61;
    (*(v5 + 16))(v42, v32, v4);
    sub_190A94C28(&qword_1EAD5BDB0, MEMORY[0x1E697F400]);
    v34 = sub_190D53CF0();

    (*(v5 + 8))(v32, v4);
    *&v44 = v17;
    *(&v44 + 1) = v33;
    *&v45 = v18;
    *(&v45 + 1) = v40;
    *&v46 = v19;
    *(&v46 + 1) = v41;
    LOWORD(v47) = 256;
    *(&v47 + 1) = v20;
    *&v48 = v22;
    BYTE8(v48) = v23;
    *&v49 = v25;
    *(&v49 + 1) = v27;
    *&v50 = v29;
    *(&v50 + 1) = v31;
    LOBYTE(v51) = 0;
    *(&v51 + 1) = v34;
    nullsub_10(&v44);
    v56 = v48;
    v57 = v49;
    v58 = v50;
    v59 = v51;
    v52 = v44;
    v53 = v45;
    v54 = v46;
    v55 = v47;
  }

  else
  {

    sub_190A3683C(&v52);
  }

  v35 = v57;
  a2[4] = v56;
  a2[5] = v35;
  v36 = v59;
  a2[6] = v58;
  a2[7] = v36;
  v37 = v53;
  *a2 = v52;
  a2[1] = v37;
  result = *&v54;
  v39 = v55;
  a2[2] = v54;
  a2[3] = v39;
  return result;
}

double sub_190A97124@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_190D54950();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21[-v7 - 8];
  sub_190D53D30();
  v10 = v9;
  sub_190D56500();
  sub_190D54430();
  *&v21[55] = v25;
  *&v21[71] = v26;
  *&v21[87] = v27;
  *&v21[103] = v28;
  *&v21[7] = v22;
  *&v21[23] = v23;
  *&v21[39] = v24;
  if (qword_1EAD51BC0 != -1)
  {
    swift_once();
  }

  v11 = *&qword_1EAD5BCC0;
  if (qword_1EAD51BC8 != -1)
  {
    swift_once();
  }

  v12 = v10 * 0.5;
  v13 = v10 * 0.5 * v11;
  v14 = v12 * *&qword_1EAD5BCC8;
  sub_190D54940();
  (*(v3 + 16))(v5, v8, v2);
  sub_190A94C28(&qword_1EAD5BDB0, MEMORY[0x1E697F400]);
  v15 = sub_190D53CF0();
  (*(v3 + 8))(v8, v2);
  v16 = *&v21[80];
  *(a1 + 65) = *&v21[64];
  *(a1 + 81) = v16;
  *(a1 + 97) = *&v21[96];
  v17 = *&v21[16];
  *(a1 + 1) = *v21;
  *(a1 + 17) = v17;
  result = *&v21[32];
  v19 = *&v21[48];
  *(a1 + 33) = *&v21[32];
  *a1 = 1;
  *(a1 + 112) = *&v21[111];
  *(a1 + 49) = v19;
  *(a1 + 120) = v13;
  *(a1 + 128) = v14;
  *(a1 + 136) = v15;
  return result;
}

__n128 sub_190A97408@<Q0>(uint64_t a1@<X8>)
{
  *a1 = sub_190D54AC0();
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BD28);
  sub_190A96104(v1, a1 + *(v3 + 44));
  v4 = sub_190D552B0();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BD30) + 36);
  *v5 = v4;
  __asm { FMOV            V0.2D, #5.0 }

  *(v5 + 8) = result;
  *(v5 + 24) = result;
  *(v5 + 40) = 0;
  return result;
}

uint64_t sub_190A97494(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_190A974FC()
{
  result = qword_1EAD5BD80;
  if (!qword_1EAD5BD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5BD48);
    sub_190A94C28(&qword_1EAD5BD88, _s14BackgroundViewVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5BD80);
  }

  return result;
}

uint64_t sub_190A975B8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BEA8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BEB0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v45 - v14);
  if (a1)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = 1;
    *(v16 + 24) = a2;
    *(v16 + 32) = a3;
    v17 = a4 & 1;
    *(v16 + 40) = v17;
    v18 = swift_allocObject();
    *(v18 + 16) = 1;
    *(v18 + 24) = a2;
    *(v18 + 32) = a3;
    *(v18 + 40) = v17;
    *v12 = 1;
    *(v12 + 1) = sub_190A98758;
    *(v12 + 2) = v16;
    *(v12 + 3) = sub_190A98760;
    *(v12 + 4) = v18;
    *(v12 + 5) = 0;
    *(v12 + 6) = 0;
    swift_storeEnumTagMultiPayload();
    sub_190A98798(a2, a3, v17);
    sub_190A98798(a2, a3, v17);
    sub_190A987A4();
    sub_190A98888();
    return sub_190D54C50();
  }

  else
  {
    *v15 = sub_190D56500();
    v15[1] = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BEE0);
    sub_190A979E0((v15 + *(v21 + 44)));
    v46 = sub_190D564C0();
    v47 = a5;
    v23 = v22;
    sub_190A97CE8(0, a2, a3, a4 & 1, &v49);
    v24 = v59;
    v25 = v60;
    v72 = v59;
    v73 = v60;
    v26 = v55;
    v27 = v56;
    v68 = v55;
    v69 = v56;
    v28 = v58;
    v29 = v57;
    v70 = v57;
    v71 = v58;
    v30 = v51;
    v31 = v52;
    v64 = v51;
    v65 = v52;
    v32 = v54;
    v33 = v53;
    v66 = v53;
    v67 = v54;
    v34 = v50;
    v35 = v49;
    v62 = v49;
    v63 = v50;
    v36 = v61;
    *&v74 = v61;
    v37 = v46;
    *(&v74 + 1) = v46;
    v75 = v23;
    v38 = v15 + *(v13 + 36);
    v39 = v60;
    *(v38 + 10) = v59;
    *(v38 + 11) = v39;
    *(v38 + 12) = v74;
    v40 = v69;
    *(v38 + 6) = v68;
    *(v38 + 7) = v40;
    v41 = v71;
    *(v38 + 8) = v70;
    *(v38 + 9) = v41;
    v42 = v65;
    *(v38 + 2) = v64;
    *(v38 + 3) = v42;
    v43 = v67;
    *(v38 + 4) = v66;
    *(v38 + 5) = v43;
    v44 = v63;
    *v38 = v62;
    *(v38 + 1) = v44;
    v76[10] = v24;
    v76[11] = v25;
    v76[6] = v26;
    v76[7] = v27;
    v76[8] = v29;
    v76[9] = v28;
    v76[2] = v30;
    v76[3] = v31;
    v76[4] = v33;
    v76[5] = v32;
    *(v38 + 26) = v23;
    v76[0] = v35;
    v76[1] = v34;
    v77 = v36;
    v78 = v37;
    v79 = v23;
    sub_19022FD14(&v62, &v48, &qword_1EAD5BED8);
    sub_19022EEA4(v76, &qword_1EAD5BED8);
    sub_19022FD14(v15, v12, &qword_1EAD5BEB0);
    swift_storeEnumTagMultiPayload();
    sub_190A987A4();
    sub_190A98888();
    sub_190D54C50();
    return sub_19022EEA4(v15, &qword_1EAD5BEB0);
  }
}

void sub_190A979E0(void *a1@<X8>)
{
  v37 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BEE8) - 8;
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v34 - v3;
  v34 = [objc_opt_self() effectWithStyle_];
  v38 = sub_190D52110();
  v39 = v5;
  sub_19081E484();
  v6 = sub_190D555F0();
  v8 = v7;
  v10 = v9;
  LODWORD(v38) = sub_190D54E80();
  v11 = sub_190D55580();
  v13 = v12;
  v15 = v14;
  sub_19081E474(v6, v8, v10 & 1);

  sub_190D55440();
  v16 = sub_190D555B0();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_19081E474(v11, v13, v15 & 1);

  KeyPath = swift_getKeyPath();
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BEF0) + 36);
  v25 = *MEMORY[0x1E6981E08];
  v26 = sub_190D565E0();
  (*(*(v26 - 8) + 104))(&v4[v24], v25, v26);
  *v4 = v16;
  *(v4 + 1) = v18;
  v4[16] = v20 & 1;
  *(v4 + 3) = v22;
  *(v4 + 4) = KeyPath;
  v4[40] = 1;
  v27 = sub_190D552B0();
  v28 = v36;
  v29 = &v4[*(v35 + 44)];
  *v29 = v27;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v29[40] = 1;
  sub_19022FD14(v4, v28, &qword_1EAD5BEE8);
  v30 = v37;
  v31 = v34;
  *v37 = v34;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BEF8);
  sub_19022FD14(v28, v30 + *(v32 + 48), &qword_1EAD5BEE8);
  v33 = v31;
  sub_19022EEA4(v4, &qword_1EAD5BEE8);
  sub_19022EEA4(v28, &qword_1EAD5BEE8);
}

uint64_t sub_190A97CE8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  v11 = a1 & 1;
  *(v10 + 16) = a1 & 1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  v12 = a4 & 1;
  *(v10 + 40) = a4 & 1;
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = v12;
  sub_190A98798(a2, a3, v12);
  sub_190A98798(a2, a3, v12);
  sub_190D56500();
  sub_190D53C60();
  LOBYTE(a3) = sub_190D55300();
  sub_190D539C0();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  LOBYTE(a2) = sub_190D552C0();
  result = sub_190D539C0();
  *a5 = v11;
  *(a5 + 8) = sub_190A98A0C;
  *(a5 + 16) = v10;
  *(a5 + 56) = v27;
  *(a5 + 24) = sub_190A98A10;
  *(a5 + 32) = v13;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 72) = v28;
  *(a5 + 88) = v29;
  *(a5 + 104) = a3;
  *(a5 + 112) = v15;
  *(a5 + 120) = v17;
  *(a5 + 128) = v19;
  *(a5 + 136) = v21;
  *(a5 + 144) = 0;
  *(a5 + 152) = a2;
  *(a5 + 160) = v23;
  *(a5 + 168) = v24;
  *(a5 + 176) = v25;
  *(a5 + 184) = v26;
  *(a5 + 192) = 0;
  return result;
}

uint64_t sub_190A97E78(uint64_t a1, void (*a2)(void), uint64_t a3, char a4, char a5)
{
  v9 = sub_190D54800();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 1) == 0)
  {
    sub_190D50920();
    sub_190D576B0();
    v14 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();
    sub_1909D85B0(a2, a3, 0);
    result = (*(v10 + 8))(v12, v9);
    a2 = v15;
    if (!v15)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = sub_19029063C(a2);
  if (a2)
  {
LABEL_5:
    LOBYTE(v15) = a5;
    a2(&v15);
    return sub_19022123C(a2);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_xq_Ri_zRi0_zRi__Ri0__r0_ly7ChatKit29SensitiveContentGalleryActionOytIsegnr_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_190A9804C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[25])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_190A98090(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_190A980E8()
{
  result = qword_1EAD5BE30;
  if (!qword_1EAD5BE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5BD30);
    sub_190233640(&qword_1EAD5BE38, &qword_1EAD5BE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5BE30);
  }

  return result;
}

unint64_t sub_190A981A0()
{
  result = qword_1EAD5BE48;
  if (!qword_1EAD5BE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5BE00);
    sub_190A9822C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5BE48);
  }

  return result;
}

unint64_t sub_190A9822C()
{
  result = qword_1EAD5BE50;
  if (!qword_1EAD5BE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5BDE8);
    sub_190A982E4();
    sub_190233640(&qword_1EAD5B1F0, &qword_1EAD5B1F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5BE50);
  }

  return result;
}

unint64_t sub_190A982E4()
{
  result = qword_1EAD5BE58;
  if (!qword_1EAD5BE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5BDE0);
    sub_190A98370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5BE58);
  }

  return result;
}

unint64_t sub_190A98370()
{
  result = qword_1EAD5BE60;
  if (!qword_1EAD5BE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5BDD8);
    sub_190A98428();
    sub_190233640(&qword_1EAD5BEA0, &qword_1EAD5BDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5BE60);
  }

  return result;
}

unint64_t sub_190A98428()
{
  result = qword_1EAD5BE68;
  if (!qword_1EAD5BE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5BDD0);
    sub_190A984E0();
    sub_190233640(&qword_1EAD467C8, &qword_1EAD55A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5BE68);
  }

  return result;
}

unint64_t sub_190A984E0()
{
  result = qword_1EAD5BE70;
  if (!qword_1EAD5BE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5BDC8);
    sub_190A98598();
    sub_190233640(&qword_1EAD5BE98, &qword_1EAD5BDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5BE70);
  }

  return result;
}

unint64_t sub_190A98598()
{
  result = qword_1EAD5BE78;
  if (!qword_1EAD5BE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5BDC0);
    sub_190A98650();
    sub_190233640(&qword_1EAD5BE88, &qword_1EAD5BE90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5BE78);
  }

  return result;
}

unint64_t sub_190A98650()
{
  result = qword_1EAD5BE80;
  if (!qword_1EAD5BE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5BDB8);
    sub_190A94C28(&qword_1EAD5BD88, _s14BackgroundViewVMa);
    sub_190A94C28(&qword_1EAD56800, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5BE80);
  }

  return result;
}

uint64_t sub_190A98798(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_19029063C(result);
  }

  else
  {
    return sub_190D50920();
  }
}

unint64_t sub_190A987A4()
{
  result = qword_1EAD5BEB8;
  if (!qword_1EAD5BEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5BEB0);
    sub_190233640(&qword_1EAD5BEC0, &qword_1EAD5BEC8);
    sub_190233640(&qword_1EAD5BED0, &qword_1EAD5BED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5BEB8);
  }

  return result;
}

unint64_t sub_190A98888()
{
  result = qword_1EAD5DEF0;
  if (!qword_1EAD5DEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DEF0);
  }

  return result;
}

uint64_t objectdestroyTm_26()
{
  sub_1909D85B0(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

unint64_t sub_190A98928()
{
  result = qword_1EAD5BF00;
  if (!qword_1EAD5BF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5BF08);
    sub_190A987A4();
    sub_190A98888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5BF00);
  }

  return result;
}

unint64_t sub_190A989B8()
{
  result = qword_1EAD5BF10;
  if (!qword_1EAD5BF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5BF10);
  }

  return result;
}

uint64_t sub_190A98A18()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DE88);
  __swift_project_value_buffer(v0, qword_1EAD9DE88);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190A98A84()
{
  v1 = OBJC_IVAR____TtCE7ChatKitCSo23CKCompositionTranslatorP33_CE0F4D1CB669A8C65D0FE20233B38B8013StreamStorage_stream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCE7ChatKitCSo23CKCompositionTranslatorP33_CE0F4D1CB669A8C65D0FE20233B38B8013StreamStorage_continuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BF88);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_190A98BA0()
{
  sub_190A98CE8(319, &qword_1EAD5BF38, _s20DebouncedTranslationVMa, MEMORY[0x1E69E8698]);
  if (v0 <= 0x3F)
  {
    sub_190A98CE8(319, &qword_1EAD5BF40, _s20DebouncedTranslationVMa, MEMORY[0x1E69E8660]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_190A98CE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *sub_190A98EBC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v50 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BF98);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BF88);
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BFA0);
  v13 = *(v41 - 8);
  v46 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR___CKCompositionTranslator__isTranslating] = 0;
  *&v0[OBJC_IVAR___CKCompositionTranslator_task] = 0;
  v19 = OBJC_IVAR___CKCompositionTranslator_translator;
  sub_190D52030();
  *&v0[v19] = sub_190D52010();
  _s20DebouncedTranslationVMa(0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8650], v4);
  v49 = v18;
  v45 = v12;
  sub_190D572F0();
  (*(v5 + 8))(v7, v4);
  v20 = v13;
  v40 = v13;
  v44 = *(v13 + 16);
  v21 = v41;
  v44(v15, v18, v41);
  v22 = v47;
  v23 = v43;
  v24 = v48;
  (*(v47 + 16))(v43, v12, v48);
  _s13StreamStorageCMa(0);
  v25 = swift_allocObject();
  v42 = *(v20 + 32);
  v42(v25 + OBJC_IVAR____TtCE7ChatKitCSo23CKCompositionTranslatorP33_CE0F4D1CB669A8C65D0FE20233B38B8013StreamStorage_stream, v15, v21);
  (*(v22 + 32))(v25 + OBJC_IVAR____TtCE7ChatKitCSo23CKCompositionTranslatorP33_CE0F4D1CB669A8C65D0FE20233B38B8013StreamStorage_continuation, v23, v24);
  *&v1[OBJC_IVAR___CKCompositionTranslator_streamStorage] = v25;
  v51.receiver = v1;
  v51.super_class = CKCompositionTranslator;
  v26 = objc_msgSendSuper2(&v51, sel_init);
  v27 = v50;
  sub_190D572C0();
  v28 = sub_190D572E0();
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = v15;
  v31 = v21;
  v44(v15, v49, v21);
  v32 = v40;
  v33 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v34 = (v46 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  v42(v35 + v33, v30, v31);
  *(v35 + v34) = v29;
  v36 = v50;
  v37 = sub_190C777AC(0, 0, v50, &unk_190DED0B8, v35);
  sub_19022EEA4(v36, &qword_1EAD5BAF0);
  (*(v47 + 8))(v45, v48);
  (*(v32 + 8))(v49, v31);
  *&v26[OBJC_IVAR___CKCompositionTranslator_task] = v37;

  return v26;
}

uint64_t sub_190A99460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = sub_190D519C0();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = _s20DebouncedTranslationVMa(0);
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BFA8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190A995B4, 0, 0);
}

uint64_t sub_190A995B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BFB0);
  v1 = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BFA0);
  sub_190A9A9D4();
  sub_190D57390();
  v2 = sub_190D52EB0();
  v0[16] = v2;
  sub_19022EEA4(v1, &qword_1EAD5BFB0);

  v0[5] = v2;
  swift_beginAccess();
  v3 = swift_task_alloc();
  v0[17] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BFC0);
  *v3 = v0;
  v3[1] = sub_190A99758;
  v5 = v0[15];

  return MEMORY[0x1EEDEE840](v5, v4);
}

uint64_t sub_190A99758()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_190A99A44;
  }

  else
  {
    v2 = sub_190A9986C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_190A99888()
{
  v1 = v0[15];
  if ((*(v0[13] + 48))(v1, 1, v0[12]) == 1)
  {

LABEL_8:

    v12 = v0[1];

    return v12();
  }

  sub_190A9AA38(v1, v0[14]);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[19] = Strong;
  if (!Strong)
  {
    v11 = v0[14];

    sub_190A9A84C(v11);
    goto LABEL_8;
  }

  v3 = v0[14];
  v4 = v0[12];
  v0[20] = *(Strong + OBJC_IVAR___CKCompositionTranslator_translator);
  v5 = *(v4 + 20);
  v6 = *(v3 + *(v4 + 24));
  v13 = (*MEMORY[0x1E69A66D0] + MEMORY[0x1E69A66D0]);
  sub_190D50920();
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_190A99AD0;
  v8 = v0[14];
  v9 = v0[11];

  return v13(v9, v6, v8, v3 + v5, 1000000000000000000, 0);
}

uint64_t sub_190A99A44()
{
  *(v0 + 48) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54020);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_190A99AD0(uint64_t a1)
{
  v3 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {
    v4 = sub_190A99E60;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = v3[14];
    v8 = v3[12];

    v3[24] = *(v7 + *(v8 + 28));
    sub_190D572A0();
    v3[25] = sub_190D57290();
    v9 = sub_190D57240();
    v11 = v10;
    v4 = sub_190A99C48;
    v5 = v9;
    v6 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_190A99C48()
{
  v1 = v0[19];

  [v1 set:0 isTranslating:?];
  v2 = [v1 delegate];
  if (v2)
  {
    v3 = v2;
    v4 = v0[24];
    v5 = v0[22];
    v6 = v0[19];
    v7 = sub_190D51940();
    v8 = sub_190D51940();
    [v3 compositionTranslator:v6 didUpdateTranslation:v5 sourceLanguage:v7 destinationLanguage:v8 version:v4];
    swift_unknownObjectRelease();

    v9 = sub_190A99D6C;
  }

  else
  {
    v9 = sub_190A9AA9C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_190A99D6C()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);

  (*(v3 + 8))(v2, v4);
  sub_190A9A84C(*(v0 + 112));
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BFC0);
  *v5 = v0;
  v5[1] = sub_190A99758;
  v7 = *(v0 + 120);

  return MEMORY[0x1EEDEE840](v7, v6);
}

uint64_t sub_190A99E60()
{
  v1 = v0[14];
  v2 = v0[12];

  v0[26] = *(v1 + *(v2 + 28));
  sub_190D572A0();
  v0[27] = sub_190D57290();
  v4 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190A99F10, v4, v3);
}

uint64_t sub_190A99F10()
{
  v1 = *(v0 + 152);

  [v1 set:0 isTranslating:?];
  v2 = [v1 delegate];
  if (v2)
  {
    [v2 compositionTranslator:*(v0 + 152) didFailTranslationForVersion:*(v0 + 208)];
    swift_unknownObjectRelease();
  }

  return MEMORY[0x1EEE6DFA0](sub_190A99FCC, 0, 0);
}

uint64_t sub_190A99FCC()
{
  if (qword_1EAD51BD0 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9DE88);
  v3 = v1;
  v4 = sub_190D53020();
  v5 = sub_190D576A0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[23];
  v8 = v0[19];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_19020E000, v4, v5, "Translation failed: %@", v9, 0xCu);
    sub_19022EEA4(v10, &unk_1EAD54610);
    MEMORY[0x193AF7A40](v10, -1, -1);
    MEMORY[0x193AF7A40](v9, -1, -1);
  }

  else
  {
  }

  sub_190A9A84C(v0[14]);
  v13 = swift_task_alloc();
  v0[17] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BFC0);
  *v13 = v0;
  v13[1] = sub_190A99758;
  v15 = v0[15];

  return MEMORY[0x1EEDEE840](v15, v14);
}

uint64_t sub_190A9A204(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = a3;
  v27 = a4;
  v25 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BF88);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BF90);
  v11 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v25 - v12;
  v14 = _s20DebouncedTranslationVMa(0);
  v15 = (v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = MEMORY[0x1EEE9AC00](v18).n128_u64[0];
  v21 = &v25 - v20;
  [v5 set:1 isTranslating:v19];
  v22 = sub_190D519C0();
  (*(*(v22 - 8) + 16))(v21, v25, v22);
  sub_190870234(v26, &v21[v15[7]]);
  *&v21[v15[8]] = a1;
  *&v21[v15[9]] = v27;
  (*(v8 + 16))(v10, *&v5[OBJC_IVAR___CKCompositionTranslator_streamStorage] + OBJC_IVAR____TtCE7ChatKitCSo23CKCompositionTranslatorP33_CE0F4D1CB669A8C65D0FE20233B38B8013StreamStorage_continuation, v7);
  sub_190A9A7E8(v21, v17);
  v23 = a1;
  sub_190D57300();
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v28);
  return sub_190A9A84C(v21);
}

void sub_190A9A704()
{
  sub_190D519C0();
  if (v0 <= 0x3F)
  {
    sub_190A98CE8(319, &qword_1EAD46BC0, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1902188FC(319, &qword_1EAD58A00);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_190A9A7E8(uint64_t a1, uint64_t a2)
{
  v4 = _s20DebouncedTranslationVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190A9A84C(uint64_t a1)
{
  v2 = _s20DebouncedTranslationVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190A9A8A8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BFA0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_190221DA4;

  return sub_190A99460(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_190A9A9D4()
{
  result = qword_1EAD5BFB8;
  if (!qword_1EAD5BFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5BFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5BFB8);
  }

  return result;
}

uint64_t sub_190A9AA38(uint64_t a1, uint64_t a2)
{
  v4 = _s20DebouncedTranslationVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s14BackgroundViewVMa()
{
  result = qword_1EAD5BFC8;
  if (!qword_1EAD5BFC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190A9AB14()
{
  result = _s17BackgroundContentOMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_190A9AB9C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = _s21GeneratingTileContentVMa(0);
  MEMORY[0x1EEE9AC00](v3);
  v81 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BFE8);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v81 - v5;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BFF0);
  MEMORY[0x1EEE9AC00](v89);
  v85 = &v81 - v6;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BFF8);
  MEMORY[0x1EEE9AC00](v83);
  v8 = &v81 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C000);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v81 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C008);
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v81 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C010);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v81 - v14);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C018);
  MEMORY[0x1EEE9AC00](v87);
  v17 = &v81 - v16;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C020);
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v81 - v18;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C028);
  MEMORY[0x1EEE9AC00](v95);
  v97 = (&v81 - v19);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C030);
  MEMORY[0x1EEE9AC00](v91);
  v92 = (&v81 - v20);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C038);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v81 - v21;
  v22 = _s17BackgroundContentOMa(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1909788B0(a1, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v46 = *(v24 + 1);
        v47 = *(v24 + 2);
        *v8 = *v24;
        *(v8 + 1) = v46;
        *(v8 + 2) = v47;
        *(v8 + 3) = swift_getKeyPath();
        v8[32] = 0;
        v48 = *(_s52PosterKitRenderingViewControllerContentRepresentableVMa(0) + 24);
        *&v8[v48] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD590C8);
        swift_storeEnumTagMultiPayload();
        v49 = &v8[*(v83 + 52)];
        *v49 = v46;
        *(v49 + 1) = v47;
        v50 = &qword_1EAD5BFF8;
        sub_19022FD14(v8, v84, &qword_1EAD5BFF8);
        swift_storeEnumTagMultiPayload();
        sub_190D52690();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C108);
        sub_190233640(&qword_1EAD5C0F8, &qword_1EAD5BFF8);
        sub_190A9C8FC();
        v51 = v85;
        sub_190D54C50();
        sub_19022FD14(v51, v88, &qword_1EAD5BFF0);
        swift_storeEnumTagMultiPayload();
        sub_190A9C78C();
        sub_190A9C844();
        v52 = v90;
        sub_190D54C50();
        sub_19022EEA4(v51, &qword_1EAD5BFF0);
        sub_19022FD14(v52, v92, &qword_1EAD5C020);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C068);
        sub_190A9C37C();
        sub_190A9C700();
        v53 = v94;
        sub_190D54C50();
        sub_19022EEA4(v52, &qword_1EAD5C020);
        sub_19022FD14(v53, v97, &qword_1EAD5C038);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C050);
        sub_190A9C2F0();
        sub_190A9C9DC();
        sub_190D54C50();
        sub_19022EEA4(v53, &qword_1EAD5C038);
        v54 = v8;
LABEL_28:
        v69 = v50;
        goto LABEL_29;
      }

      LOBYTE(v99) = (*v24 & 1) != 0;
      sub_190A9C988();
      sub_190979428();
      sub_190D54C50();
      *v84 = v103;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C108);
      sub_190233640(&qword_1EAD5C0F8, &qword_1EAD5BFF8);
      sub_190A9C8FC();
      v79 = v85;
      sub_190D54C50();
      sub_19022FD14(v79, v88, &qword_1EAD5BFF0);
      swift_storeEnumTagMultiPayload();
      sub_190A9C78C();
      sub_190A9C844();
      v80 = v90;
      sub_190D54C50();
      sub_19022EEA4(v79, &qword_1EAD5BFF0);
      sub_19022FD14(v80, v92, &qword_1EAD5C020);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C068);
      sub_190A9C37C();
      sub_190A9C700();
      v27 = v94;
      sub_190D54C50();
      v28 = v80;
      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v56 = v81;
      sub_190A9CA68(v24, v81);
      v57 = (v56 + *(v3 + 20));
      v59 = *v57;
      v58 = v57[1];
      LOBYTE(v99) = 0;
      sub_190D50920();
      sub_190D55FC0();
      *&v99 = v59;
      *(&v99 + 1) = v58;
      v100 = v103;
      v101 = *(&v103 + 1);
      v102 = 0;
      sub_190A9C248();
      sub_190A9C29C();
      sub_190D50920();
      sub_190D50920();
      sub_190D54C50();
      v60 = v105;
      v61 = v104;
      v62 = v97;
      *v97 = v103;
      v62[1] = v61;
      *(v62 + 32) = v60;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C050);
      sub_190A9C2F0();
      sub_190A9C9DC();
      sub_190D54C50();

      sub_190A9CACC(v56);
      return;
    }

    if (EnumCaseMultiPayload == 8)
    {
      v29 = *(v24 + 2);
      v30 = *(v24 + 3);
      v31 = *(v24 + 4);
      v99 = v29;
      v100 = 0;
      v101 = 0;
      v102 = 1;
      sub_190A9C248();
      sub_190A9C29C();
      v32 = v29;
      sub_190D54C50();
      v33 = v105;
      v34 = v104;
      v35 = v97;
      *v97 = v103;
      v35[1] = v34;
      *(v35 + 32) = v33;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C050);
      sub_190A9C2F0();
      sub_190A9C9DC();
      sub_190D54C50();

      sub_19083B6D4(v30, v31);

      return;
    }

    v99 = 0uLL;
    LOBYTE(v101) = 0;
    v100 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C090);
    sub_190A9C494();
    sub_190A9C4E8();
    sub_190D54C50();
    v99 = v103;
    v100 = v104;
    LOWORD(v101) = BYTE8(v104);
LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C078);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C0B8);
    sub_190A9C408();
    sub_190A9C5F4();
    sub_190D54C50();
    v70 = v104;
    v71 = BYTE8(v104);
    v72 = BYTE9(v104);
    v73 = v92;
    *v92 = v103;
    *(v73 + 2) = v70;
    *(v73 + 24) = v71;
    *(v73 + 25) = v72;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C068);
    sub_190A9C37C();
    sub_190A9C700();
    v27 = v94;
    sub_190D54C50();
LABEL_27:
    v50 = &qword_1EAD5C038;
    sub_19022FD14(v27, v97, &qword_1EAD5C038);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C050);
    sub_190A9C2F0();
    sub_190A9C9DC();
    sub_190D54C50();
    v54 = v27;
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      *&v99 = *v24;
      WORD4(v99) = 256;
      BYTE10(v99) = 0;
      sub_190D50920();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C0C8);
      sub_190233640(&qword_1EAD5C0C0, &qword_1EAD5C0C8);
      sub_190A9C6AC();
      sub_190D54C50();
      v74 = 0x10000;
      if (!BYTE10(v103))
      {
        v74 = 0;
      }

      *&v99 = v103;
      *(&v99 + 1) = v74 | WORD4(v103);
      v100 = 0;
      LOWORD(v101) = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C078);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C0B8);
      sub_190A9C408();
      sub_190A9C5F4();
      sub_190D54C50();
      v75 = v104;
      v76 = BYTE8(v104);
      v77 = BYTE9(v104);
      v78 = v92;
      *v92 = v103;
      *(v78 + 2) = v75;
      *(v78 + 24) = v76;
      *(v78 + 25) = v77;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C068);
      sub_190A9C37C();
      sub_190A9C700();
      v45 = v94;
      sub_190D54C50();
      sub_19022FD14(v45, v97, &qword_1EAD5C038);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C050);
      sub_190A9C2F0();
      sub_190A9C9DC();
      sub_190D54C50();
    }

    else
    {
      v36 = *v24;
      v37 = *v24;
      v38 = sub_190D56500();
      *&v99 = v36;
      *(&v99 + 1) = v38;
      v100 = v39;
      LOBYTE(v101) = 1;
      v40 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C090);
      sub_190A9C494();
      sub_190A9C4E8();
      sub_190D54C50();
      v99 = v103;
      v100 = v104;
      LOWORD(v101) = BYTE8(v104);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C078);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C0B8);
      sub_190A9C408();
      sub_190A9C5F4();
      sub_190D54C50();
      v41 = v104;
      v42 = BYTE8(v104);
      v43 = BYTE9(v104);
      v44 = v92;
      *v92 = v103;
      *(v44 + 2) = v41;
      *(v44 + 24) = v42;
      *(v44 + 25) = v43;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C068);
      sub_190A9C37C();
      sub_190A9C700();
      v45 = v94;
      sub_190D54C50();
      sub_19022FD14(v45, v97, &qword_1EAD5C038);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C050);
      sub_190A9C2F0();
      sub_190A9C9DC();
      sub_190D54C50();
    }

    v54 = v45;
    v69 = &qword_1EAD5C038;
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 2)
  {
    *&v99 = *v24;
    WORD4(v99) = 0;
    BYTE10(v99) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C0C8);
    sub_190233640(&qword_1EAD5C0C0, &qword_1EAD5C0C8);
    sub_190A9C6AC();
    sub_190D54C50();
    v55 = 0x10000;
    if (!BYTE10(v103))
    {
      v55 = 0;
    }

    *&v99 = v103;
    *(&v99 + 1) = v55 | WORD4(v103);
    v100 = 0;
    LOWORD(v101) = 256;
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 3)
  {
    *v15 = *v24;
    swift_storeEnumTagMultiPayload();
    sub_19097B4C0();
    sub_190233640(&qword_1EAD5C0E8, &qword_1EAD5C000);
    sub_190D54C50();
    sub_19022FD14(v17, v88, &qword_1EAD5C018);
    swift_storeEnumTagMultiPayload();
    sub_190A9C78C();
    sub_190A9C844();
    v26 = v90;
    sub_190D54C50();
    sub_19022EEA4(v17, &qword_1EAD5C018);
    sub_19022FD14(v26, v92, &qword_1EAD5C020);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C068);
    sub_190A9C37C();
    sub_190A9C700();
    v27 = v94;
    sub_190D54C50();
    v28 = v26;
LABEL_26:
    sub_19022EEA4(v28, &qword_1EAD5C020);
    goto LABEL_27;
  }

  v63 = *(v24 + 1);
  v64 = *(v24 + 2);
  *v11 = *v24;
  *(v11 + 1) = v63;
  *(v11 + 2) = v64;
  *(v11 + 3) = swift_getKeyPath();
  v11[32] = 0;
  v65 = *(_s45PosterKitRenderingViewControllerRepresentableVMa(0) + 24);
  *&v11[v65] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD590C8);
  swift_storeEnumTagMultiPayload();
  v66 = &v11[*(v9 + 52)];
  *v66 = v63;
  *(v66 + 1) = v64;
  sub_19022FD14(v11, v15, &qword_1EAD5C000);
  swift_storeEnumTagMultiPayload();
  sub_19097B4C0();
  sub_190233640(&qword_1EAD5C0E8, &qword_1EAD5C000);
  sub_190D52690();
  sub_190D54C50();
  sub_19022FD14(v17, v88, &qword_1EAD5C018);
  swift_storeEnumTagMultiPayload();
  sub_190A9C78C();
  sub_190A9C844();
  v67 = v90;
  sub_190D54C50();
  sub_19022EEA4(v17, &qword_1EAD5C018);
  sub_19022FD14(v67, v92, &qword_1EAD5C020);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C068);
  sub_190A9C37C();
  sub_190A9C700();
  v68 = v94;
  sub_190D54C50();
  sub_19022EEA4(v67, &qword_1EAD5C020);
  sub_19022FD14(v68, v97, &qword_1EAD5C038);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C050);
  sub_190A9C2F0();
  sub_190A9C9DC();
  sub_190D54C50();
  sub_19022EEA4(v68, &qword_1EAD5C038);
  v54 = v11;
  v69 = &qword_1EAD5C000;
LABEL_29:
  sub_19022EEA4(v54, v69);
}

uint64_t sub_190A9C1B8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_190D54AC0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BFD8);
  sub_190A9AB9C(v1, a1 + *(v3 + 44));
  v4 = sub_190D54240();
  v5 = sub_190D552B0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BFE0);
  v7 = a1 + *(result + 36);
  *v7 = v4;
  *(v7 + 8) = v5;
  return result;
}

unint64_t sub_190A9C248()
{
  result = qword_1EAD5C040;
  if (!qword_1EAD5C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C040);
  }

  return result;
}

unint64_t sub_190A9C29C()
{
  result = qword_1EAD5C048;
  if (!qword_1EAD5C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C048);
  }

  return result;
}

unint64_t sub_190A9C2F0()
{
  result = qword_1EAD5C058;
  if (!qword_1EAD5C058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C038);
    sub_190A9C37C();
    sub_190A9C700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C058);
  }

  return result;
}

unint64_t sub_190A9C37C()
{
  result = qword_1EAD5C060;
  if (!qword_1EAD5C060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C068);
    sub_190A9C408();
    sub_190A9C5F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C060);
  }

  return result;
}

unint64_t sub_190A9C408()
{
  result = qword_1EAD5C070;
  if (!qword_1EAD5C070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C078);
    sub_190A9C494();
    sub_190A9C4E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C070);
  }

  return result;
}

unint64_t sub_190A9C494()
{
  result = qword_1EAD5C080;
  if (!qword_1EAD5C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C080);
  }

  return result;
}

unint64_t sub_190A9C4E8()
{
  result = qword_1EAD5C088;
  if (!qword_1EAD5C088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C090);
    sub_190A9C5A0();
    sub_190233640(&qword_1EAD5C0A0, &qword_1EAD5C0A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C088);
  }

  return result;
}

unint64_t sub_190A9C5A0()
{
  result = qword_1EAD5C098;
  if (!qword_1EAD5C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C098);
  }

  return result;
}

unint64_t sub_190A9C5F4()
{
  result = qword_1EAD5C0B0;
  if (!qword_1EAD5C0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C0B8);
    sub_190233640(&qword_1EAD5C0C0, &qword_1EAD5C0C8);
    sub_190A9C6AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C0B0);
  }

  return result;
}

unint64_t sub_190A9C6AC()
{
  result = qword_1EAD5C0D0;
  if (!qword_1EAD5C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C0D0);
  }

  return result;
}

unint64_t sub_190A9C700()
{
  result = qword_1EAD5C0D8;
  if (!qword_1EAD5C0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C020);
    sub_190A9C78C();
    sub_190A9C844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C0D8);
  }

  return result;
}

unint64_t sub_190A9C78C()
{
  result = qword_1EAD5C0E0;
  if (!qword_1EAD5C0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C018);
    sub_19097B4C0();
    sub_190233640(&qword_1EAD5C0E8, &qword_1EAD5C000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C0E0);
  }

  return result;
}

unint64_t sub_190A9C844()
{
  result = qword_1EAD5C0F0;
  if (!qword_1EAD5C0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5BFF0);
    sub_190233640(&qword_1EAD5C0F8, &qword_1EAD5BFF8);
    sub_190A9C8FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C0F0);
  }

  return result;
}

unint64_t sub_190A9C8FC()
{
  result = qword_1EAD5C100;
  if (!qword_1EAD5C100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C108);
    sub_190A9C988();
    sub_190979428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C100);
  }

  return result;
}

unint64_t sub_190A9C988()
{
  result = qword_1EAD5C110;
  if (!qword_1EAD5C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C110);
  }

  return result;
}

unint64_t sub_190A9C9DC()
{
  result = qword_1EAD5C118;
  if (!qword_1EAD5C118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C050);
    sub_190A9C248();
    sub_190A9C29C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C118);
  }

  return result;
}

uint64_t sub_190A9CA68(uint64_t a1, uint64_t a2)
{
  v4 = _s21GeneratingTileContentVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190A9CACC(uint64_t a1)
{
  v2 = _s21GeneratingTileContentVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190A9CB28@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C140);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v18 - v6);
  v8 = sub_190D55EA0();
  v9 = sub_190D55400();
  KeyPath = swift_getKeyPath();
  v11 = [objc_opt_self() tertiaryLabelColor];
  v12 = sub_190D55CE0();
  v13 = (v7 + *(v2 + 44));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F78) + 28);
  v15 = *MEMORY[0x1E69816C0];
  v16 = sub_190D55F00();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = swift_getKeyPath();
  *v7 = v8;
  v7[1] = KeyPath;
  v7[2] = v9;
  v7[3] = v12;
  sub_19022FD14(v7, v4, &qword_1EAD5C140);
  sub_19022FD14(v4, v19, &qword_1EAD5C140);
  sub_19022EEA4(v7, &qword_1EAD5C140);
  return sub_19022EEA4(v4, &qword_1EAD5C140);
}

uint64_t sub_190A9CD18@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_190D56500();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C138);
  return sub_190A9CB28(a1 + *(v3 + 44));
}

unint64_t sub_190A9CD70()
{
  result = qword_1EAD5C120;
  if (!qword_1EAD5C120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5BFE0);
    sub_190233640(&qword_1EAD5C128, &qword_1EAD5C130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C120);
  }

  return result;
}

uint64_t sub_190A9CE44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_190D51440();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_190D51460();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_190D50CF0();
  __swift_allocate_value_buffer(v10, qword_1EAD9DEA0);
  __swift_project_value_buffer(v10, qword_1EAD9DEA0);
  sub_190D56E50();
  sub_190D51980();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_190D51470();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_190D50CE0();
}

uint64_t sub_190A9D128()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55080);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_190D51460();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C1C0);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53960) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_190DD1D90;
  sub_190D51430();
  (*(v5 + 56))(v3, 1, 1, v4);
  sub_190D50B30();
  sub_190D50B70();
  v9 = sub_190823110(v8);
  swift_setDeallocating();
  sub_190A9DAFC(v8 + v7);
  result = swift_deallocClassInstance();
  qword_1EAD9DEB8 = v9;
  return result;
}

unint64_t sub_190A9D3B0()
{
  result = qword_1EAD5C158;
  if (!qword_1EAD5C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C158);
  }

  return result;
}

uint64_t sub_190A9D404()
{
  sub_190D58870();
  sub_190D56FC0();
  return sub_190D588C0();
}

uint64_t sub_190A9D468()
{
  sub_190D58870();
  sub_190D56FC0();
  return sub_190D588C0();
}

uint64_t sub_190A9D4B4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_190D585F0();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_190A9D524()
{
  result = qword_1EAD5C160;
  if (!qword_1EAD5C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C160);
  }

  return result;
}

unint64_t sub_190A9D57C()
{
  result = qword_1EAD5C168;
  if (!qword_1EAD5C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C168);
  }

  return result;
}

unint64_t sub_190A9D5D4()
{
  result = qword_1EAD5C170;
  if (!qword_1EAD5C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C170);
  }

  return result;
}

unint64_t sub_190A9D62C()
{
  result = qword_1EAD5C178;
  if (!qword_1EAD5C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C178);
  }

  return result;
}

unint64_t sub_190A9D680()
{
  result = qword_1EAD5C180;
  if (!qword_1EAD5C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C180);
  }

  return result;
}

unint64_t sub_190A9D6D4()
{
  result = qword_1EAD5C188;
  if (!qword_1EAD5C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C188);
  }

  return result;
}

unint64_t sub_190A9D72C()
{
  result = qword_1EAD5C190;
  if (!qword_1EAD5C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C190);
  }

  return result;
}

uint64_t sub_190A9D780@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD51BD8 != -1)
  {
    swift_once();
  }

  v2 = sub_190D50CF0();
  v3 = __swift_project_value_buffer(v2, qword_1EAD9DEA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_190A9D878(uint64_t a1)
{
  v2 = sub_190889AE0();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_190A9D8C8()
{
  result = qword_1EAD5C198;
  if (!qword_1EAD5C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C198);
  }

  return result;
}

unint64_t sub_190A9D920()
{
  result = qword_1EAD5C1A0;
  if (!qword_1EAD5C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C1A0);
  }

  return result;
}

unint64_t sub_190A9D978()
{
  result = qword_1EAD5C1A8;
  if (!qword_1EAD5C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C1A8);
  }

  return result;
}

uint64_t sub_190A9D9CC()
{
  if (qword_1EAD51BE0 != -1)
  {
    swift_once();
  }

  return sub_190D52690();
}

uint64_t sub_190A9DA28(uint64_t a1)
{
  v2 = sub_190A9D72C();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_190A9DA78()
{
  result = qword_1EAD5C1B0;
  if (!qword_1EAD5C1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C1B0);
  }

  return result;
}

uint64_t sub_190A9DAFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190A9DB7C(uint64_t a1)
{
  sub_190D58870();
  v2 = *(a1 + 16);
  MEMORY[0x193AF4110](v2);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      v3 += 8;
      sub_190D50920();
      sub_190D55D70();

      --v2;
    }

    while (v2);
  }

  return sub_190D588C0();
}

uint64_t sub_190A9DC14()
{
  v1 = *v0;
  result = MEMORY[0x193AF4110](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 32;
    do
    {
      v4 += 8;
      sub_190D50920();
      sub_190D55D70();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_190A9DC80()
{
  v1 = *v0;
  sub_190D58870();
  MEMORY[0x193AF4110](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      v3 += 8;
      sub_190D50920();
      sub_190D55D70();

      --v2;
    }

    while (v2);
  }

  return sub_190D588C0();
}

unint64_t sub_190A9DD10()
{
  result = qword_1EAD5C1C8;
  if (!qword_1EAD5C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C1C8);
  }

  return result;
}

unint64_t sub_190A9DD68()
{
  result = qword_1EAD5C1D0;
  if (!qword_1EAD5C1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C1D8);
    sub_1909252E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C1D0);
  }

  return result;
}

uint64_t sub_190A9DE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v30 = sub_190D53B40();
  v3 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_190D53B50();
  v6 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_190D56380();
  v9 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C1E0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_190DD86E0;
  sub_190A9E1A0(&unk_1F0402D88);
  *(v15 + 32) = v16;
  sub_190A9E1A0(&unk_1F0402DB0);
  *(v15 + 40) = v17;
  sub_190A9E1A0(&unk_1F0402DD8);
  *(v15 + 48) = v18;
  sub_190A9E1A0(&unk_1F0402E00);
  *(v15 + 56) = v19;
  sub_190A9E1A0(&unk_1F0402E28);
  *(v15 + 64) = v20;
  sub_190A9E1A0(&unk_1F0402E50);
  *(v15 + 72) = v21;
  sub_190A9E1A0(&unk_1F0402E78);
  *(v15 + 80) = v22;
  sub_190A9E1A0(&unk_1F0402EA0);
  *(v15 + 88) = v23;
  sub_190A9E1A0(&unk_1F0402EC8);
  *(v15 + 96) = v24;
  sub_190D52690();
  sub_190D55DA0();
  sub_190D56370();
  *v8 = v15;
  (*(v6 + 104))(v8, *MEMORY[0x1E697DE80], v29);
  *v5 = a1;
  (*(v3 + 104))(v5, *MEMORY[0x1E697DE78], v30);
  v25 = v28;
  (*(v9 + 16))(v11, v14, v28);
  v26 = v31;
  sub_190D53B30();
  (*(v9 + 8))(v14, v25);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C1E8);
  *(v26 + *(result + 36)) = 0x3FE0000000000000;
  return result;
}

uint64_t sub_190A9E1A0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 == 1)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

unint64_t sub_190A9E1D8()
{
  result = qword_1EAD5C1F0;
  if (!qword_1EAD5C1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C1E8);
    sub_190A9E264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C1F0);
  }

  return result;
}

unint64_t sub_190A9E264()
{
  result = qword_1EAD5C1F8;
  if (!qword_1EAD5C1F8)
  {
    sub_190D53B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C1F8);
  }

  return result;
}

void sub_190A9E304()
{
  sub_190A9E840(319, &qword_1EAD46740);
  if (v0 <= 0x3F)
  {
    sub_190A9E7DC(319, &qword_1EAD5C220, _s21BackgroundGalleryItemVMa, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_190D518A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_190A9E414(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_190A9E45C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_190A9E4DC()
{
  sub_190A9E5D4(319, &qword_1EAD44EA8, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_190A9E5D4(319, &unk_1EAD5C238, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      _s21GeneratingTileContentVMa(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_190A9E5D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1902188FC(255, &qword_1EAD44EB0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_190A9E69C()
{
  sub_190A9E840(319, &qword_1EAD46740);
  if (v0 <= 0x3F)
  {
    sub_190A9E7DC(319, &qword_1EAD5C258, _s17BackgroundContentOMa, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      _s17BackgroundContentOMa(319);
      if (v2 <= 0x3F)
      {
        sub_190A9E840(319, &qword_1EAD5C260);
        if (v3 <= 0x3F)
        {
          sub_190A9E88C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_190A9E7DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_190A9E840(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_190D58050();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_190A9E88C()
{
  if (!qword_1EAD5C268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD5C270);
    v0 = sub_190D58050();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5C268);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7ChatKit7GalleryV0C9TapActionO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return *a1 + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_190A9E908(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*a1 >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*a1 >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_190A9E95C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 2) & 3) - 4 * a2) << 60;
      *(result + 8) = 0;
    }
  }

  return result;
}

void *sub_190A9E9B8(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFFFLL | (a2 << 62);
  }

  else
  {
    *result = (a2 - 3) | 0xC000000000000000;
    result[1] = 0;
  }

  return result;
}

uint64_t sub_190A9EA00(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 == 2)
    {
      MEMORY[0x193AF4110](5);
      return sub_190C4B620();
    }

    if (a2 ^ 0xC000000000000000 | a3)
    {
      if (a2 ^ 0xC000000000000001 | a3)
      {
        v8 = 4;
      }

      else
      {
        v8 = 3;
      }
    }

    else
    {
      v8 = 0;
    }

    return MEMORY[0x193AF4110](v8);
  }

  if (v6)
  {
    MEMORY[0x193AF4110](2);
    v8 = v4;
    return MEMORY[0x193AF4110](v8);
  }

  MEMORY[0x193AF4110](1);
  MEMORY[0x193AF4110](v4);
  if (!a3)
  {
    return sub_190D58890();
  }

  sub_190D58890();

  return sub_190AA16D0(a1, a3);
}

void sub_190A9EB08(uint64_t a1)
{
  v2 = v1;
  v4 = _s21GeneratingTileContentVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s17BackgroundContentOMa(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_190AA183C(v2, v9, _s17BackgroundContentOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        MEMORY[0x193AF4110](6);
        sub_190D56FC0();

        swift_unknownObjectRelease();
      }

      else
      {
        v22 = *v9;
        MEMORY[0x193AF4110](7);
        MEMORY[0x193AF4110](v22);
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      sub_190AA18A4(v9, v6, _s21GeneratingTileContentVMa);
      MEMORY[0x193AF4110](8);
      sub_190D518A0();
      sub_190A9FEF4(&qword_1EAD462D8, MEMORY[0x1E69695A8]);
      sub_190D56DD0();
      sub_190AA141C(v6, _s21GeneratingTileContentVMa);
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v12 = v9[2];
      v13 = v9[3];
      v14 = v9[4];
      v15 = v9[5];
      MEMORY[0x193AF4110](9);
      sub_190D56FC0();
      sub_190D57DA0();
      sub_190D51680();
      MEMORY[0x193AF4110](v15);

      sub_19083B6D4(v13, v14);
    }

    else
    {
      MEMORY[0x193AF4110](0);
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      MEMORY[0x193AF4110](2);
      sub_190D55D70();
    }

    else
    {
      v16 = *v9;
      MEMORY[0x193AF4110](1);
      sub_190D58890();
      if (v16)
      {
        v17 = v16;
        sub_190D57DA0();
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v18 = *v9;
      MEMORY[0x193AF4110](3);
      MEMORY[0x193AF4110](v18[2]);
      v19 = v18[2];
      if (v19)
      {
        v20 = 32;
        do
        {
          sub_190D50920();
          sub_190D55D70();

          v20 += 8;
          --v19;
        }

        while (v19);
      }

      goto LABEL_18;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v11 = *v9;
      MEMORY[0x193AF4110](4);
      sub_190AA147C(a1, v11);
LABEL_18:

      return;
    }

    v21 = *v9;
    MEMORY[0x193AF4110](5);
    sub_190D57DA0();
    sub_190D56FC0();
  }
}

uint64_t sub_190A9EEF8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_190D58870();
  sub_190A9EA00(v4, v1, v2);
  return sub_190D588C0();
}

uint64_t sub_190A9EF4C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_190D58870();
  sub_190A9EA00(v4, v1, v2);
  return sub_190D588C0();
}

unint64_t sub_190A9EFD0()
{
  result = qword_1EAD5C280;
  if (!qword_1EAD5C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C280);
  }

  return result;
}

unint64_t sub_190A9F028()
{
  result = qword_1EAD5C288;
  if (!qword_1EAD5C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C288);
  }

  return result;
}

id sub_190A9F07C(void *a1, uint64_t a2, uint64_t a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = sub_190D515F0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v50 - v12;
  gotLoadHelper_x8__OBJC_CLASS___PRSPosterArchiver(v11);
  v14 = objc_opt_self();
  v57[0] = 0;
  v15 = a1;
  v16 = [v14 archiveConfiguration:v15 format:1 error:v57];
  v17 = v57[0];
  if (!v16)
  {
    v21 = v57[0];

    v22 = sub_190D51420();
    swift_willThrow();

    return 0;
  }

  v18 = v16;
  sub_190D515B0();
  v19 = v17;

  (*(v7 + 32))(v13, v9, v6);
  v20 = sub_190D51610();
  v51 = a2;
  v52 = v20;
  v53 = v24;
  v57[0] = 0;
  v25 = [v15 loadUserInfoWithError_];
  v26 = v57[0];
  if (!v25)
  {
    v34 = v57[0];
    v35 = sub_190D51420();

    swift_willThrow();
    goto LABEL_15;
  }

  v27 = v25;
  v28 = sub_190D56D90();
  v29 = v26;

  if (!v28)
  {
LABEL_15:
    v58 = 0u;
    v59 = 0u;
    goto LABEL_16;
  }

  v54 = sub_190D56F10();
  v55 = v30;
  sub_190D58230();
  if (!*(v28 + 16) || (v31 = sub_190875C84(v57), (v32 & 1) == 0))
  {

    sub_19084CFD0(v57);
    goto LABEL_15;
  }

  sub_19021834C(*(v28 + 56) + 32 * v31, &v58);
  sub_19084CFD0(v57);

  if (!*(&v59 + 1))
  {
LABEL_16:
    sub_19022EEA4(&v58, &unk_1EAD551C0);
    goto LABEL_17;
  }

  if (!swift_dynamicCast())
  {
LABEL_17:
    v33 = 0;
    goto LABEL_18;
  }

  v33 = v57[0];
LABEL_18:
  v36 = [v15 providerBundleIdentifier];
  if (v36)
  {
    v37 = v36;
    v38 = sub_190D56F10();
    v40 = v39;

    v41 = type metadata accessor for CKTranscriptBackground();
    v42 = objc_allocWithZone(v41);
    (*(v7 + 56))(&v42[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_filePathURL], 1, 1, v6);
    *&v42[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_editorConfiguration] = v15;
    v43 = &v42[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_posterData];
    v44 = v53;
    *v43 = v52;
    v43[1] = v44;
    *&v42[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_watchData] = xmmword_190DD9310;
    v45 = &v42[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_fileName];
    v46 = v51;
    *v45 = v51;
    v45[1] = a3;
    v47 = &v42[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_backgroundIdentifier];
    *v47 = v46;
    v47[1] = a3;
    v48 = &v42[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIdentifier];
    *v48 = v38;
    v48[1] = v40;
    v42[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIsPlayground] = v33;
    v56.receiver = v42;
    v56.super_class = v41;
    swift_bridgeObjectRetain_n();
    v49 = objc_msgSendSuper2(&v56, sel_init);
    (*(v7 + 8))(v13, v6);
    return v49;
  }

  sub_19083B6D4(v52, v53);

  (*(v7 + 8))(v13, v6);
  return 0;
}

uint64_t sub_190A9F528()
{
  sub_190D58870();
  sub_190D57DA0();
  sub_190D56FC0();
  return sub_190D588C0();
}

uint64_t sub_190A9F58C()
{
  sub_190D57DA0();

  return sub_190D56FC0();
}

uint64_t sub_190A9F5E0()
{
  sub_190D58870();
  sub_190D57DA0();
  sub_190D56FC0();
  return sub_190D588C0();
}

uint64_t sub_190A9F640(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1902188FC(0, &qword_1EAD46500);
  if ((sub_190D57D90() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_190D58760();
}

uint64_t sub_190A9F6FC()
{
  sub_190D58870();
  sub_190D56FC0();
  return sub_190D588C0();
}

uint64_t sub_190A9F750()
{
  sub_190D58870();
  sub_190D56FC0();
  return sub_190D588C0();
}

uint64_t sub_190A9F798(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_190D58760();
  }
}

uint64_t sub_190A9F7C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 > 3)
  {
    if (v2 > 5)
    {
      if (v2 == 6)
      {
        v3 = 0x61726F727541;
        goto LABEL_18;
      }

      if (v2 != 7)
      {
LABEL_19:
        v4 = *(v0 + 16);
        goto LABEL_20;
      }

      v4 = 0x5472657474696C47;
    }

    else if (v2 == 4)
    {
      v4 = 0x656C6954796B53;
    }

    else
    {
      v4 = 0x6C69547265746157;
    }
  }

  else if (v2 > 1)
  {
    if (v2 == 2)
    {
      v4 = 0x746E656964617247;
    }

    else
    {
      v4 = 0xD000000000000013;
    }
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        v3 = 0x736F746F6850;
LABEL_18:
        v4 = v3 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v4 = 0x7463656C65536F4ELL;
  }

LABEL_20:
  sub_19091B348(v1, v2);
  return v4;
}

uint64_t sub_190A9F930(uint64_t a1)
{
  v3 = _s17BackgroundContentOMa(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54060);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  if (*(v1 + 8))
  {
    sub_190D58890();
    sub_190D56FC0();
  }

  else
  {
    sub_190D58890();
  }

  v10 = *(v1 + 24);
  if (v10 > 3)
  {
    if (v10 <= 5)
    {
      if (v10 == 4)
      {
        v11 = 4;
      }

      else
      {
        v11 = 5;
      }

      goto LABEL_21;
    }

    if (v10 == 6)
    {
      v11 = 6;
      goto LABEL_21;
    }

    if (v10 == 7)
    {
      v11 = 7;
      goto LABEL_21;
    }
  }

  else
  {
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v11 = 2;
      }

      else
      {
        v11 = 3;
      }

      goto LABEL_21;
    }

    if (!v10)
    {
      v11 = 0;
      goto LABEL_21;
    }

    if (v10 == 1)
    {
      v11 = 1;
LABEL_21:
      MEMORY[0x193AF4110](v11);
      goto LABEL_22;
    }
  }

  MEMORY[0x193AF4110](8);
  sub_190D56FC0();
LABEL_22:
  sub_190D58890();
  v12 = _s21BackgroundGalleryItemVMa(0);
  sub_19083B610(v1 + v12[7], v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_190D58890();
  }

  else
  {
    sub_190AA18A4(v9, v6, _s17BackgroundContentOMa);
    sub_190D58890();
    sub_190A9EB08(a1);
    sub_190AA141C(v6, _s17BackgroundContentOMa);
  }

  sub_190A9EB08(a1);
  if (*(v1 + v12[9] + 8))
  {
    sub_190D58890();
    sub_190D56FC0();
    sub_190D56FC0();
  }

  else
  {
    sub_190D58890();
  }

  sub_190A9EA00(a1, *(v1 + v12[10]), *(v1 + v12[10] + 8));
  return sub_190D56FC0();
}

uint64_t sub_190A9FC8C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_190D58870();
  a3(v5);
  return sub_190D588C0();
}

uint64_t sub_190A9FCF0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_190D58870();
  a4(v6);
  return sub_190D588C0();
}

uint64_t sub_190A9FD34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190A9F7C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_190A9FDA8()
{
  result = qword_1EAD5C298;
  if (!qword_1EAD5C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C298);
  }

  return result;
}

unint64_t sub_190A9FE00()
{
  result = qword_1EAD5C2A0;
  if (!qword_1EAD5C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C2A0);
  }

  return result;
}

unint64_t sub_190A9FE58()
{
  result = qword_1EAD5C2A8;
  if (!qword_1EAD5C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C2A8);
  }

  return result;
}

uint64_t sub_190A9FEF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190A9FF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v6 = _s21BackgroundGalleryItemVMa(0);
  v25 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 24);
  v11 = v10[2];
  v22 = v3;
  v23 = v11;
  if (!v11)
  {
    return result;
  }

  v12 = 0;
  v19 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v24 = v10 + v19;
  v20 = 0x8000000190E66560;
  while (1)
  {
    if (v12 >= v10[2])
    {
      __break(1u);
      goto LABEL_40;
    }

    v3 = *(v25 + 72) * v12;
    sub_190AA183C(&v24[v3], v9, _s21BackgroundGalleryItemVMa);
    v13 = *(v9 + 2);
    v14 = *(v9 + 3);
    if (v14 > 3)
    {
      break;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v16 = 0xEC000000656C6954;
        if (a1 == 0x746E656964617247)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v16 = v20;
        if (a1 == 0xD000000000000013)
        {
          goto LABEL_30;
        }
      }

      goto LABEL_31;
    }

    if (!v14)
    {
      v16 = 0xEF656C69546E6F69;
      if (a1 == 0x7463656C65536F4ELL)
      {
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    if (v14 != 1)
    {
      goto LABEL_29;
    }

    v15 = 0x736F746F6850;
LABEL_27:
    v16 = 0xEA0000000000656CLL;
    if ((v15 & 0xFFFFFFFFFFFFLL | 0x6954000000000000) == a1)
    {
      goto LABEL_30;
    }

LABEL_31:
    v17 = sub_190D58760();
    sub_19091B348(v13, v14);

    result = sub_190AA141C(v9, _s21BackgroundGalleryItemVMa);
    if (v17)
    {
      goto LABEL_35;
    }

    if (v23 == ++v12)
    {
      return result;
    }
  }

  if (v14 <= 5)
  {
    if (v14 == 4)
    {
      v16 = 0xE700000000000000;
      if (a1 == 0x656C6954796B53)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v16 = 0xE900000000000065;
      if (a1 == 0x6C69547265746157)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_31;
  }

  if (v14 == 6)
  {
    v15 = 0x61726F727541;
    goto LABEL_27;
  }

  if (v14 == 7)
  {
    v16 = 0xEB00000000656C69;
    if (a1 == 0x5472657474696C47)
    {
      goto LABEL_30;
    }

    goto LABEL_31;
  }

LABEL_29:
  v16 = *(v9 + 3);
  if (v13 != a1)
  {
    goto LABEL_31;
  }

LABEL_30:
  if (v16 != a2)
  {
    goto LABEL_31;
  }

  sub_19091B348(*(v9 + 2), *(v9 + 3));

  sub_190AA141C(v9, _s21BackgroundGalleryItemVMa);
LABEL_35:
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_36;
  }

LABEL_40:
  result = sub_190A5BC74(v10);
  v10 = result;
LABEL_36:
  if (v12 >= v10[2])
  {
    __break(1u);
  }

  else
  {
    result = sub_190AA2B98(v21, v10 + v19 + v3);
    *(v22 + 24) = v10;
  }

  return result;
}

uint64_t sub_190AA02D4()
{
  sub_190D58870();
  if (*(v0 + 8))
  {
    sub_190D58890();
    sub_190D56FC0();
  }

  else
  {
    sub_190D58890();
  }

  sub_190D58890();
  sub_190AA0F0C(v2, *(v0 + 24));
  _s17BackgroundSectionVMa(0);
  sub_190D518A0();
  sub_190A9FEF4(&qword_1EAD462D8, MEMORY[0x1E69695A8]);
  sub_190D56DD0();
  return sub_190D588C0();
}

uint64_t sub_190AA03CC(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_190D58890();
    sub_190D56FC0();
  }

  else
  {
    sub_190D58890();
  }

  sub_190D58890();
  sub_190AA0F0C(a1, *(v1 + 24));
  sub_190D518A0();
  sub_190A9FEF4(&qword_1EAD462D8, MEMORY[0x1E69695A8]);
  return sub_190D56DD0();
}

uint64_t sub_190AA04AC()
{
  sub_190D58870();
  if (*(v0 + 8))
  {
    sub_190D58890();
    sub_190D56FC0();
  }

  else
  {
    sub_190D58890();
  }

  sub_190D58890();
  sub_190AA0F0C(v2, *(v0 + 24));
  sub_190D518A0();
  sub_190A9FEF4(&qword_1EAD462D8, MEMORY[0x1E69695A8]);
  sub_190D56DD0();
  return sub_190D588C0();
}

id sub_190AA0634@<X0>(uint64_t a1@<X8>)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v7 = sub_190D56F10();
    v9 = v8;

    v10 = _s21BackgroundGalleryItemVMa(0);
    v11 = v10[7];
    v12 = _s17BackgroundContentOMa(0);
    (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
    result = swift_storeEnumTagMultiPayload();
    *a1 = v7;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    v13 = (a1 + v10[9]);
    *v13 = 0u;
    v13[1] = 0u;
    *(a1 + v10[10]) = xmmword_190DEC9A0;
    *(a1 + v10[11]) = 0;
    v14 = (a1 + v10[12]);
    *v14 = 0xD000000000000010;
    v14[1] = 0x8000000190E70CA0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190AA07C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54060);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = _s17BackgroundContentOMa(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 32) & 1) == 0)
  {
    v9 = _s21BackgroundGalleryItemVMa(0);
    sub_19083B610(v0 + *(v9 + 28), v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_19022EEA4(v3, &unk_1EAD54060);
      sub_190AA183C(v0 + *(v9 + 32), v7, _s17BackgroundContentOMa);
    }

    else
    {
      sub_190AA18A4(v3, v7, _s17BackgroundContentOMa);
    }

    v8 = 0;
    v10 = 1 << swift_getEnumCaseMultiPayload();
    if ((v10 & 0x18F) == 0)
    {
      if ((v10 & 0x30) == 0)
      {
        return v8;
      }

      v8 = 1;
    }

    sub_190AA141C(v7, _s17BackgroundContentOMa);
    return v8;
  }

  return 0;
}

uint64_t sub_190AA09B8()
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54060);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v34 - v2;
  v4 = _s17BackgroundContentOMa(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v0 + 32))
  {
    goto LABEL_20;
  }

  v8 = _s21BackgroundGalleryItemVMa(0);
  sub_19083B610(v0 + *(v8 + 28), v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_19022EEA4(v3, &unk_1EAD54060);
    sub_190AA183C(v0 + *(v8 + 32), v7, _s17BackgroundContentOMa);
  }

  else
  {
    sub_190AA18A4(v3, v7, _s17BackgroundContentOMa);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    v20 = 0;
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        return v20 & 1;
      }
    }

    else if (EnumCaseMultiPayload != 7 && EnumCaseMultiPayload != 8)
    {
      return v20 & 1;
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload < 4)
  {
LABEL_19:
    sub_190AA141C(v7, _s17BackgroundContentOMa);
LABEL_20:
    v20 = 0;
    return v20 & 1;
  }

  v10 = *v7;
  v36[0] = 0;
  v11 = [v10 loadUserInfoWithError_];
  v12 = v36[0];
  if (!v11)
  {
    v22 = v36[0];
    v23 = sub_190D51420();

    swift_willThrow();
    goto LABEL_23;
  }

  v13 = v11;
  v14 = sub_190D56D90();
  v15 = v12;

  if (!v14)
  {
LABEL_23:
    v37 = 0u;
    v38 = 0u;
    sub_19022EEA4(&v37, &unk_1EAD551C0);
    v19 = 0;
LABEL_33:
    v37 = 0u;
    v38 = 0u;
    goto LABEL_34;
  }

  v34 = sub_190D56F10();
  v35 = v16;
  sub_190D52690();
  sub_190D58230();
  if (!*(v14 + 16) || (v17 = sub_190875C84(v36), (v18 & 1) == 0))
  {

    sub_19084CFD0(v36);
    v37 = 0u;
    v38 = 0u;
    goto LABEL_25;
  }

  sub_19021834C(*(v14 + 56) + 32 * v17, &v37);
  sub_19084CFD0(v36);

  if (!*(&v38 + 1))
  {
LABEL_25:
    sub_19022EEA4(&v37, &unk_1EAD551C0);
    goto LABEL_26;
  }

  if (!swift_dynamicCast())
  {
LABEL_26:
    v19 = 0;
    goto LABEL_27;
  }

  v19 = v36[0];
LABEL_27:
  v34 = sub_190D56F10();
  v35 = v24;
  sub_190D58230();
  if (!*(v14 + 16) || (v25 = sub_190875C84(v36), (v26 & 1) == 0))
  {

    sub_19084CFD0(v36);
    goto LABEL_33;
  }

  sub_19021834C(*(v14 + 56) + 32 * v25, &v37);
  sub_19084CFD0(v36);

  if (!*(&v38 + 1))
  {
LABEL_34:
    sub_19022EEA4(&v37, &unk_1EAD551C0);
    goto LABEL_35;
  }

  if (!swift_dynamicCast())
  {
LABEL_35:
    v20 = 0;
    goto LABEL_36;
  }

  v20 = v36[0];
LABEL_36:
  v27 = [v10 providerBundleIdentifier];
  if (v27)
  {
    v28 = v27;
    v29 = sub_190D56F10();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0xE000000000000000;
  }

  if (v29 == sub_19088A008(0) && v31 == v32)
  {
  }

  else
  {
    v33 = sub_190D58760();

    v20 &= v33 | v19;
  }

  return v20 & 1;
}

uint64_t sub_190AA0F0C(uint64_t a1, uint64_t a2)
{
  v37 = _s17BackgroundContentOMa(0);
  v4 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54060);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - v7;
  v9 = _s21BackgroundGalleryItemVMa(0);
  v10 = *(v9 - 1);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  result = MEMORY[0x193AF4110](v14, v11);
  if (v14)
  {
    v16 = v9[7];
    v34 = v9[8];
    v35 = v16;
    v17 = &v13[v9[9]];
    v33 = &v13[v9[10]];
    v32 = &v13[v9[12]];
    v18 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v19 = *(v10 + 72);
    v30 = (v4 + 48);
    v31 = v19;
    v36 = v8;
    do
    {
      sub_190AA183C(v18, v13, _s21BackgroundGalleryItemVMa);
      if (*(v13 + 1))
      {
        sub_190D58890();
        sub_190D56FC0();
      }

      else
      {
        sub_190D58890();
      }

      v20 = *(v13 + 3);
      if (v20 > 3)
      {
        if (v20 <= 5)
        {
          if (v20 == 4)
          {
            v21 = 4;
          }

          else
          {
            v21 = 5;
          }

          goto LABEL_25;
        }

        if (v20 == 6)
        {
          v21 = 6;
          goto LABEL_25;
        }

        if (v20 == 7)
        {
          v21 = 7;
          goto LABEL_25;
        }
      }

      else
      {
        if (v20 > 1)
        {
          if (v20 == 2)
          {
            v21 = 2;
          }

          else
          {
            v21 = 3;
          }

          goto LABEL_25;
        }

        if (!v20)
        {
          v21 = 0;
          goto LABEL_25;
        }

        if (v20 == 1)
        {
          v21 = 1;
LABEL_25:
          MEMORY[0x193AF4110](v21);
          goto LABEL_26;
        }
      }

      MEMORY[0x193AF4110](8);
      sub_190D56FC0();
LABEL_26:
      sub_190D58890();
      sub_19083B610(&v13[v35], v8);
      if ((*v30)(v8, 1, v37) == 1)
      {
        sub_190D58890();
      }

      else
      {
        v22 = v8;
        v23 = v29;
        sub_190AA18A4(v22, v29, _s17BackgroundContentOMa);
        sub_190D58890();
        sub_190A9EB08(a1);
        sub_190AA141C(v23, _s17BackgroundContentOMa);
      }

      sub_190A9EB08(a1);
      if (*(v17 + 1))
      {
        sub_190D58890();
        sub_190D56FC0();
        sub_190D56FC0();
      }

      else
      {
        sub_190D58890();
      }

      v24 = *v33;
      v25 = *(v33 + 1);
      v26 = *v33 >> 62;
      if (v26 <= 1)
      {
        if (!v26)
        {
          MEMORY[0x193AF4110](1);
          MEMORY[0x193AF4110](v24);
          sub_190D58890();
          if (v25)
          {
            sub_190AA16D0(a1, v25);
          }

          goto LABEL_4;
        }

        MEMORY[0x193AF4110](2);
        v27 = v24;
        goto LABEL_45;
      }

      if (v26 != 2)
      {
        if (v24 ^ 0xC000000000000000 | v25)
        {
          if (v24 ^ 0xC000000000000001 | v25)
          {
            v27 = 4;
          }

          else
          {
            v27 = 3;
          }
        }

        else
        {
          v27 = 0;
        }

LABEL_45:
        MEMORY[0x193AF4110](v27);
        goto LABEL_4;
      }

      MEMORY[0x193AF4110](5);
      sub_190C4B620();
LABEL_4:
      v8 = v36;
      sub_190D56FC0();
      result = sub_190AA141C(v13, _s21BackgroundGalleryItemVMa);
      v18 += v31;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_190AA141C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_190AA147C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_190D581C0();
    MEMORY[0x193AF4110](v8);
    v3 = sub_190D581C0();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x193AF4110](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x193AF3B90](i, a2);
      sub_190D57DA0();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_190D57DA0();

      --v3;
    }

    while (v3);
  }
}

void sub_190AA156C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x193AF4110](v3);
  if (v3)
  {
    v4 = a2 + 72;
    do
    {
      v6 = *(v4 - 24);
      v5 = *(v4 - 16);
      v7 = v5;
      sub_190D52690();
      sub_190D52690();
      v12 = v6;
      sub_190D56FC0();
      v8 = v7;
      sub_190D56FC0();
      if (v5)
      {
        v9 = v7;
        sub_190D57DA0();
      }

      if (v6)
      {
        v10 = v12;
        v11 = [v10 identifier];
        sub_190D56F10();

        sub_190D56FC0();
      }

      else
      {
      }

      v4 += 48;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_190AA16D0(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;
  result = sub_190D52690();
  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x193AF4110](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_190D52690();
        sub_190D52690();
        sub_190D56FC0();

        sub_190D56FC0();

        result = sub_190D588C0();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_190AA183C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_190AA18A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_190AA190C(uint64_t a1, uint64_t a2)
{
  v4 = _s21GeneratingTileContentVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v78 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s17BackgroundContentOMa(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v81 = (&v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v7);
  v82 = &v77 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v80 = &v77 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v79 = &v77 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v77 - v16);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v77 - v19);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v77 - v22);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v77 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = (&v77 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C2D0);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = (&v77 + *(v30 + 56) - v31);
  v33 = a1;
  v34 = &v77 - v31;
  sub_190AA183C(v33, &v77 - v31, _s17BackgroundContentOMa);
  v35 = a2;
  v36 = v32;
  sub_190AA183C(v35, v32, _s17BackgroundContentOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v72 = v80;
        sub_190AA183C(v34, v80, _s17BackgroundContentOMa);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v73 = *v72 ^ *v32;
          sub_190AA141C(v34, _s17BackgroundContentOMa);
          v39 = v73 ^ 1;
          return v39 & 1;
        }

        goto LABEL_57;
      }

      v56 = v79;
      sub_190AA183C(v34, v79, _s17BackgroundContentOMa);
      v57 = *(v56 + 8);
      v58 = *(v56 + 16);
      if (swift_getEnumCaseMultiPayload() != 5)
      {

        swift_unknownObjectRelease();
        goto LABEL_57;
      }

      if (v57 == v32[1] && v58 == v32[2])
      {

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      else
      {
        v60 = sub_190D58760();

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        if ((v60 & 1) == 0)
        {
          goto LABEL_75;
        }
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        v62 = v82;
        sub_190AA183C(v34, v82, _s17BackgroundContentOMa);
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          v63 = v78;
          sub_190AA18A4(v32, v78, _s21GeneratingTileContentVMa);
          v39 = sub_190D51870();
          sub_190AA141C(v63, _s21GeneratingTileContentVMa);
          sub_190AA141C(v62, _s21GeneratingTileContentVMa);
          goto LABEL_49;
        }

        sub_190AA141C(v62, _s21GeneratingTileContentVMa);
        goto LABEL_57;
      }

      if (EnumCaseMultiPayload == 8)
      {
        v40 = v81;
        sub_190AA183C(v34, v81, _s17BackgroundContentOMa);
        v41 = *v40;
        v42 = v40[1];
        v43 = v40[2];
        v44 = v40[3];
        v45 = v40[4];
        v46 = v40[5];
        if (swift_getEnumCaseMultiPayload() != 8)
        {

          sub_19083B6D4(v44, v45);
          goto LABEL_57;
        }

        v82 = v34;
        v47 = *v32;
        v48 = v32[1];
        v49 = v32;
        v50 = v32[2];
        v51 = v32[3];
        v52 = v49[4];
        v81 = v49[5];
        v53 = v41 == v47 && v42 == v48;
        if (v53 || (sub_190D58760()) && (sub_1902188FC(0, &qword_1EAD46500), (sub_190D57D90()) && (sub_190C4CFE8(v44, v45, v51, v52))
        {

          sub_19083B6D4(v44, v45);

          sub_19083B6D4(v51, v52);
          if (v46 == v81)
          {
            v54 = v82;
LABEL_72:
            sub_190AA141C(v54, _s17BackgroundContentOMa);
            v39 = 1;
            return v39 & 1;
          }
        }

        else
        {

          sub_19083B6D4(v51, v52);

          sub_19083B6D4(v44, v45);
        }

        sub_190AA141C(v82, _s17BackgroundContentOMa);
        goto LABEL_58;
      }

      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_57;
      }
    }

    goto LABEL_71;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_190AA183C(v34, v26, _s17BackgroundContentOMa);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v39 = sub_190D55D30();

        goto LABEL_49;
      }

      goto LABEL_57;
    }

    sub_190AA183C(v34, v28, _s17BackgroundContentOMa);
    v55 = *v28;
    if (swift_getEnumCaseMultiPayload())
    {

LABEL_57:
      sub_19022EEA4(v34, &qword_1EAD5C2D0);
LABEL_58:
      v39 = 0;
      return v39 & 1;
    }

    v67 = *v32;
    if (v55)
    {
      if (v67)
      {
        sub_1902188FC(0, &qword_1EAD44EB0);
        v75 = v55;
        v76 = sub_190D57D90();

        if ((v76 & 1) == 0)
        {
          goto LABEL_75;
        }

        goto LABEL_71;
      }

      v67 = v55;
LABEL_74:

LABEL_75:
      sub_190AA141C(v34, _s17BackgroundContentOMa);
      goto LABEL_58;
    }

    if (v67)
    {
      goto LABEL_74;
    }

LABEL_71:
    v54 = v34;
    goto LABEL_72;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_190AA183C(v34, v23, _s17BackgroundContentOMa);
    v61 = *v23;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v39 = sub_1909A6D10(v61, *v32);

      goto LABEL_33;
    }

    goto LABEL_36;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_190AA183C(v34, v17, _s17BackgroundContentOMa);
    v64 = *v17;
    v65 = v17[1];
    v66 = v17[2];
    if (swift_getEnumCaseMultiPayload() != 4)
    {

      goto LABEL_57;
    }

    v67 = *v36;
    v68 = v36[1];
    v69 = v36[2];
    sub_1902188FC(0, &qword_1EAD46500);
    if (sub_190D57D90())
    {
      if (v65 == v68 && v66 == v69)
      {
      }

      else
      {
        v71 = sub_190D58760();

        if ((v71 & 1) == 0)
        {
          goto LABEL_75;
        }
      }

      goto LABEL_71;
    }

    goto LABEL_74;
  }

  sub_190AA183C(v34, v20, _s17BackgroundContentOMa);
  v38 = *v20;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_36:

    goto LABEL_57;
  }

  v39 = sub_1909A6F80(v38, *v32);

LABEL_33:

LABEL_49:
  sub_190AA141C(v34, _s17BackgroundContentOMa);
  return v39 & 1;
}

uint64_t sub_190AA22C0(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a1 >> 62;
  if ((a1 >> 62) <= 1)
  {
    if (v4)
    {
      if (a3 >> 62 == 1)
      {
        return a3 == a1;
      }
    }

    else if (!(a3 >> 62) && a3 == a1)
    {
      if (a2)
      {
        if (a4)
        {
          v7 = a2;
          sub_190D52690();
          LOBYTE(v7) = sub_190BA8C60(v7, a4);
          sub_190AA2B74(a3);
          if (v7)
          {
            return 1;
          }
        }

        return 0;
      }

LABEL_26:
      if (!a4)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v4 != 2)
  {
    if (a1 ^ 0xC000000000000000 | a2)
    {
      if (a1 ^ 0xC000000000000001 | a2)
      {
        if (a3 >> 62 == 3 && a3 == 0xC000000000000002)
        {
          goto LABEL_26;
        }
      }

      else if (a3 >> 62 == 3 && a3 == 0xC000000000000001)
      {
        goto LABEL_26;
      }
    }

    else if (a3 >> 62 == 3 && a3 == 0xC000000000000000)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (a3 >> 62 != 2)
  {
    return 0;
  }

  v8 = a1 & 0x3FFFFFFFFFFFFFFFLL;

  return sub_190C4D150(v8, a3 & 0x3FFFFFFFFFFFFFFFLL);
}

uint64_t sub_190AA241C(uint64_t a1, uint64_t a2)
{
  v4 = _s17BackgroundContentOMa(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v48[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54060);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v48[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C2C8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v48[-v13];
  v15 = *(a1 + 8);
  v16 = *(a2 + 8);
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_62;
    }

    if (*a1 != *a2 || v15 != v16)
    {
      v17 = v12;
      v18 = sub_190D58760();
      v12 = v17;
      if ((v18 & 1) == 0)
      {
        goto LABEL_62;
      }
    }
  }

  else if (v16)
  {
    goto LABEL_62;
  }

  v19 = *(a1 + 24);
  v20 = *(a2 + 24);
  if (v19 > 3)
  {
    if (v19 <= 5)
    {
      if (v19 == 4)
      {
        if (v20 != 4)
        {
          goto LABEL_62;
        }
      }

      else if (v20 != 5)
      {
        goto LABEL_62;
      }

      goto LABEL_37;
    }

    if (v19 == 6)
    {
      if (v20 != 6)
      {
        goto LABEL_62;
      }

      goto LABEL_37;
    }

    if (v19 == 7)
    {
      if (v20 != 7)
      {
        goto LABEL_62;
      }

      goto LABEL_37;
    }

    goto LABEL_33;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      if (v20 != 2)
      {
        goto LABEL_62;
      }
    }

    else if (v20 != 3)
    {
      goto LABEL_62;
    }

    goto LABEL_37;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      if (v20 != 1)
      {
        goto LABEL_62;
      }

      goto LABEL_37;
    }

LABEL_33:
    if (v20 < 8)
    {
      goto LABEL_62;
    }

    if (*(a1 + 16) != *(a2 + 16) || v19 != v20)
    {
      v21 = v12;
      v22 = sub_190D58760();
      v12 = v21;
      if ((v22 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    goto LABEL_37;
  }

  if (v20)
  {
    goto LABEL_62;
  }

LABEL_37:
  if (*(a1 + 32) != *(a2 + 32))
  {
    goto LABEL_62;
  }

  v23 = v12;
  v24 = _s21BackgroundGalleryItemVMa(0);
  v25 = v24[7];
  v26 = *(v23 + 48);
  sub_19083B610(a1 + v25, v14);
  sub_19083B610(a2 + v25, &v14[v26]);
  v27 = *(v5 + 48);
  if (v27(v14, 1, v4) == 1)
  {
    if (v27(&v14[v26], 1, v4) == 1)
    {
      sub_19022EEA4(v14, &unk_1EAD54060);
      goto LABEL_45;
    }

LABEL_43:
    sub_19022EEA4(v14, &qword_1EAD5C2C8);
    goto LABEL_62;
  }

  sub_19083B610(v14, v10);
  if (v27(&v14[v26], 1, v4) == 1)
  {
    sub_190AA141C(v10, _s17BackgroundContentOMa);
    goto LABEL_43;
  }

  sub_190AA18A4(&v14[v26], v7, _s17BackgroundContentOMa);
  v28 = sub_190AA190C(v10, v7);
  sub_190AA141C(v7, _s17BackgroundContentOMa);
  sub_190AA141C(v10, _s17BackgroundContentOMa);
  sub_19022EEA4(v14, &unk_1EAD54060);
  if ((v28 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_45:
  if ((sub_190AA190C(a1 + v24[8], a2 + v24[8]) & 1) == 0)
  {
    goto LABEL_62;
  }

  v29 = v24[9];
  v31 = *(a1 + v29);
  v30 = *(a1 + v29 + 8);
  v33 = *(a1 + v29 + 16);
  v32 = *(a1 + v29 + 24);
  v34 = (a2 + v29);
  v36 = *v34;
  v35 = v34[1];
  v37 = v34[2];
  v38 = v34[3];
  if (!v30)
  {
    if (!v35)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  if (!v35)
  {
LABEL_55:
    sub_190AA2B30(*v34, v34[1]);
    sub_190AA2B30(v31, v30);
    sub_1908B1EFC(v31, v30);
    v40 = v36;
    v41 = v35;
LABEL_56:
    sub_1908B1EFC(v40, v41);
    goto LABEL_62;
  }

  if (v31 != v36 || v30 != v35)
  {
    v50 = v32;
    v39 = sub_190D58760();
    v32 = v50;
    if ((v39 & 1) == 0)
    {
      sub_190AA2B30(v36, v35);
      sub_190AA2B30(v31, v30);

      v40 = v31;
      v41 = v30;
      goto LABEL_56;
    }
  }

  if (v33 == v37 && v32 == v38)
  {
    sub_190AA2B30(v36, v35);
    sub_190AA2B30(v31, v30);

    sub_1908B1EFC(v31, v30);
    goto LABEL_58;
  }

  v50 = v32;
  v49 = sub_190D58760();
  sub_190AA2B30(v36, v35);
  sub_190AA2B30(v31, v30);

  sub_1908B1EFC(v31, v30);
  if ((v49 & 1) == 0)
  {
LABEL_62:
    v46 = 0;
    return v46 & 1;
  }

LABEL_58:
  if ((sub_190AA22C0(*(a1 + v24[10]), *(a1 + v24[10] + 8), *(a2 + v24[10]), *(a2 + v24[10] + 8)) & 1) == 0)
  {
    goto LABEL_62;
  }

  v42 = v24[12];
  v43 = *(a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  if (v43 == *v45 && v44 == v45[1])
  {
    v46 = 1;
  }

  else
  {
    v46 = sub_190D58760();
  }

  return v46 & 1;
}