void *sub_1CF91DE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = [result session];

    v11 = [v10 newFileProviderProxyWithTimeout:objc_msgSend(*(a2 + 32) pid:{"pid"), -1.0}];
    swift_unknownObjectRelease();
    v13[4] = a3;
    v13[5] = a4;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1CF91DF90;
    v13[3] = &block_descriptor_641;
    v12 = _Block_copy(v13);

    [v11 fetchTrashIdentifiersWithCompletionHandler_];
    _Block_release(v12);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF91DFA4(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    sub_1CEFD57E0(0, a4, a5);
    v6 = sub_1CF9E6D48();
  }

  v9 = a3;
  v8(v6, a3);
}

void sub_1CF91E1B0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
    v5 = sub_1CF9E6D28();
  }

  if (a2)
  {
    v6 = sub_1CF9E57E8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_1CF91E25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong session];

    v13 = [v12 newFileProviderProxyWithTimeout:objc_msgSend(*(a2 + 32) pid:{"pid"), -1.0}];
    swift_unknownObjectRelease();
    v16[4] = a4;
    v16[5] = a5;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1CF90535C;
    v16[3] = &block_descriptor_626_0;
    v14 = _Block_copy(v16);

    v15 = [v13 fetchPublishingURLForItemID:a3 completionHandler:v14];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF91E510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a2 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = [Strong session];

    v15 = [v14 newFileProviderProxyWithTimeout:objc_msgSend(*(a2 + 32) pid:{"pid"), -1.0}];
    swift_unknownObjectRelease();
    v18[4] = a5;
    v18[5] = a6;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_1CF00A468;
    v18[3] = &block_descriptor_614_0;
    v16 = _Block_copy(v18);

    v17 = [v15 disconnectDomainID:a3 options:a4 completionHandler:v16];
    _Block_release(v16);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF91E7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a2 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong session];

    v13 = [v12 newFileProviderProxyWithTimeout:objc_msgSend(*(a2 + 32) pid:{"pid"), -1.0}];
    swift_unknownObjectRelease();
    v14 = sub_1CF9E6888();
    v16[4] = a5;
    v16[5] = a6;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1CF00A468;
    v16[3] = &block_descriptor_600;
    v15 = _Block_copy(v16);

    [v13 wakeForSessionIdentifier:v14 completionHandler:v15];
    _Block_release(v15);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF91EA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a2 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [Strong session];

    v14 = [v13 newFileProviderProxyWithTimeout:objc_msgSend(*(a2 + 32) pid:{"pid"), -1.0}];
    swift_unknownObjectRelease();
    v15 = sub_1CF9E57E8();
    v17[4] = a5;
    v17[5] = a6;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1CF91EC00;
    v17[3] = &block_descriptor_586;
    v16 = _Block_copy(v17);

    [v14 attemptRecoveryFromError:v15 optionIndex:a4 completionHandler:v16];
    _Block_release(v16);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF91EC00(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1CF91ED84(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1CFA00250;
    *(v15 + 32) = a3;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (a2)
  {
    v16 = a2;
  }

  else
  {
    v16 = v14;
  }

  v29 = v16;

  v24 = a3;
  sub_1CF1E90D4(v15);
  v26 = *(v8 + 16);
  v17 = swift_allocObject();
  v17[2] = v8;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  v17[7] = a5;
  v17[8] = a6;
  v17[9] = a7;
  v17[10] = a8;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1CF9274A8;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  v19[2] = v29;
  v19[3] = sub_1CF9274A8;
  v19[4] = v17;

  swift_retain_n();

  v20 = v24;

  v21 = a1;
  v22 = a4;

  sub_1CEFD4024("attachInheritedUserInfo(_:completionHandler:)", 45, 2, sub_1CF8F6DD8, v18, sub_1CF9274E0, v19);
}

void sub_1CF91EFA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v17 = *(a1 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = [Strong session];

    v21 = [v20 newFileProviderProxyWithTimeout:objc_msgSend(*(a1 + 32) pid:{"pid"), -1.0}];
    swift_unknownObjectRelease();
    if (a3)
    {
      sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
      a3 = sub_1CF9E6D28();
    }

    if (a6)
    {
      a6 = sub_1CF9E6F88();
    }

    if (a7)
    {
      a7 = sub_1CF9E6F88();
    }

    aBlock[4] = a8;
    aBlock[5] = a9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF91F19C;
    aBlock[3] = &block_descriptor_445;
    v22 = _Block_copy(aBlock);

    [v21 userInteractionErrorsForPerformingAction:a2 sourceItems:a3 destinationItem:a4 fpProviderDomainId:a5 sourceItemKeysAllowList:a6 destinationItemKeysAllowList:a7 completionHandler:v22];
    _Block_release(v22);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CF91F19C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v3 = sub_1CF9E6D48();

  v2(v3);
}

void sub_1CF91F39C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v3 = sub_1CF9E6D28();
  (*(a2 + 16))(a2, v3);
}

void sub_1CF91F414(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v91 = a7;
  v101 = a5;
  v102 = a6;
  v13 = sub_1CF9E63A8();
  v96 = *(v13 - 8);
  v97 = v13;
  v14 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v94 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1CF9E6448();
  v93 = *(v95 - 8);
  v16 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v92 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CF9E6118();
  v100 = *(v18 - 8);
  v19 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v99 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = MEMORY[0x1EEE9AC00](v21).n128_u64[0];
  v98 = &v87 - v23;
  v24 = sub_1CEFD4E9C([a2 identifier]);
  v25 = a1[3];
  v26 = a1[4];
  v27 = __swift_project_boxed_opaque_existential_1(a1, v25);
  v103 = v24;
  sub_1CF554B9C(a3, v27, v25, v26, aBlock);
  if (v7)
  {

    v28 = 0;
    v8 = 0;
  }

  else
  {
    v29 = aBlock[0];
    if (aBlock[0])
    {
      v30 = *(*(a4 + 16) + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID);
      v31 = objc_allocWithZone(MEMORY[0x1E69673A0]);
      v32 = v30;
      v28 = [v31 initWithProviderDomainID:v32 itemIdentifier:v29];
    }

    else
    {
      v28 = 0;
    }
  }

  aBlock[10] = a2;
  aBlock[11] = v28;
  v33 = MEMORY[0x1E69E7CC0];
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v34 = v28;
  v35 = a2;
  v36 = 0;
  v37 = v33;
  while (v36 != 2)
  {
    v38 = aBlock[v36++ + 10];
    if (v38)
    {
      v39 = v38;
      MEMORY[0x1D3868FA0]();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v40 = v8;
        v41 = v34;
        v42 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1CF9E6D88();
        v34 = v41;
        v8 = v40;
      }

      sub_1CF9E6DE8();
      v37 = aBlock[0];
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5260, &qword_1CFA18A18);
  swift_arrayDestroy();
  v43 = *(a4 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v45 = Strong;
    v46 = [Strong indexer];

    if (v46)
    {
      type metadata accessor for FPFSIndexer();
      v47 = swift_dynamicCastClass();
      if (v47)
      {
        v48 = v47;
        if (v37 >> 62)
        {
          if (sub_1CF9E7818() >= 1)
          {
            goto LABEL_17;
          }
        }

        else if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
        {
LABEL_17:
          v90 = v18;
          v99 = v34;
          v49 = fpfs_current_or_default_log();
          v50 = v98;
          sub_1CF9E6128();

          v51 = v46;
          v52 = sub_1CF9E6108();
          v53 = sub_1CF9E7298();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            aBlock[0] = v89;
            *v54 = 136315394;
            v55 = sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
            v56 = MEMORY[0x1D3868FE0](v37, v55);
            v58 = sub_1CEFD0DF0(v56, v57, aBlock);

            *(v54 + 4) = v58;
            *(v54 + 12) = 2112;
            *(v54 + 14) = v48;
            v59 = v88;
            *v88 = v48;
            v60 = v51;
            _os_log_impl(&dword_1CEFC7000, v52, v53, "Deleting item ids:%s, with indexer %@", v54, 0x16u);
            sub_1CEFCCC44(v59, &qword_1EC4BE350, &unk_1CF9FC3B0);
            MEMORY[0x1D386CDC0](v59, -1, -1);
            v61 = v89;
            __swift_destroy_boxed_opaque_existential_1(v89);
            MEMORY[0x1D386CDC0](v61, -1, -1);
            MEMORY[0x1D386CDC0](v54, -1, -1);

            (*(v100 + 8))(v98, v90);
          }

          else
          {

            (*(v100 + 8))(v50, v90);
          }

          v62 = swift_allocObject();
          v63 = v101;
          v64 = v102;
          v62[2] = v37;
          v62[3] = v63;
          v62[4] = v64;

          v102 = [v48 queue];
          v65 = swift_allocObject();
          v65[2] = v48;
          v65[3] = sub_1CF927394;
          v65[4] = v62;
          v66 = MEMORY[0x1E69E7CC0];
          v65[5] = MEMORY[0x1E69E7CC0];
          v65[6] = v37;
          v65[7] = v91;
          aBlock[4] = sub_1CF927410;
          aBlock[5] = v65;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1CEFCA444;
          aBlock[3] = &block_descriptor_419_0;
          v67 = _Block_copy(aBlock);
          v101 = v51;

          v68 = v92;
          sub_1CF9E63F8();
          aBlock[14] = v66;
          sub_1CF927324(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
          sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
          v69 = v94;
          v70 = v97;
          sub_1CF9E77B8();
          v71 = v102;
          MEMORY[0x1D3869630](0, v68, v69, v67);
          _Block_release(v67);

          (*(v96 + 8))(v69, v70);
          (*(v93 + 8))(v68, v95);

          return;
        }
      }
    }
  }

  v72 = fpfs_current_or_default_log();
  v73 = v99;
  sub_1CF9E6128();

  v74 = sub_1CF9E6108();
  v75 = sub_1CF9E72A8();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v90 = v18;
    v98 = v8;
    v78 = v34;
    v79 = v77;
    aBlock[0] = v77;
    *v76 = 136315138;
    v80 = sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
    v81 = v73;
    v82 = MEMORY[0x1D3868FE0](v37, v80);
    v84 = v83;

    v85 = sub_1CEFD0DF0(v82, v84, aBlock);

    *(v76 + 4) = v85;
    _os_log_impl(&dword_1CEFC7000, v74, v75, "FPFSIndexer is missing for fpfs backed or no ids to delete: %s.", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v79);
    v86 = v79;
    v34 = v78;
    MEMORY[0x1D386CDC0](v86, -1, -1);
    MEMORY[0x1D386CDC0](v76, -1, -1);

    (*(v100 + 8))(v81, v90);
  }

  else
  {

    (*(v100 + 8))(v73, v18);
  }

  (v101)(0);
}

void sub_1CF91FDEC(void *a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  if (!a1)
  {
    v34 = v9;
    v35 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v36 = sub_1CF9E6108();
    v37 = sub_1CF9E7298();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v53 = v8;
      v40 = v39;
      v55 = v39;
      *v38 = 136315138;
      v41 = sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
      v42 = MEMORY[0x1D3868FE0](a2, v41);
      v44 = sub_1CEFD0DF0(v42, v43, &v55);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_1CEFC7000, v36, v37, "Succeeded deleting %s from spotlight index.", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1D386CDC0](v40, -1, -1);
      MEMORY[0x1D386CDC0](v38, -1, -1);

      (*(v34 + 8))(v12, v53);
    }

    else
    {

      (*(v34 + 8))(v12, v8);
    }

    a3(0);
    return;
  }

  v16 = a1;
  v17 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v18 = a1;

  v19 = sub_1CF9E6108();
  v20 = sub_1CF9E7298();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v52 = a3;
    v22 = v21;
    v23 = swift_slowAlloc();
    v51 = a4;
    v24 = v23;
    v25 = swift_slowAlloc();
    v50 = v9;
    v26 = v25;
    v55 = v25;
    *v22 = 136315394;
    v27 = sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
    v28 = MEMORY[0x1D3868FE0](a2, v27);
    v30 = sub_1CEFD0DF0(v28, v29, &v55);
    v53 = v8;
    v31 = v30;

    *(v22 + 4) = v31;
    *(v22 + 12) = 2112;
    swift_getErrorValue();
    v32 = Error.prettyDescription.getter(v54);
    *(v22 + 14) = v32;
    *v24 = v32;
    _os_log_impl(&dword_1CEFC7000, v19, v20, "Could not delete %s from spotlight index: %@", v22, 0x16u);
    sub_1CEFCCC44(v24, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1D386CDC0](v26, -1, -1);
    v33 = v22;
    a3 = v52;
    MEMORY[0x1D386CDC0](v33, -1, -1);

    (*(v50 + 8))(v15, v53);
  }

  else
  {

    (*(v9 + 8))(v15, v8);
  }

  if (!(a2 >> 62))
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!sub_1CF9E7818())
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_18:
    v45 = MEMORY[0x1D3869C30](0, a2);
    goto LABEL_12;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v45 = *(a2 + 32);
LABEL_12:
    v46 = v45;
    v47 = [v45 identifier];

    v48 = FPItemNotFoundError();
    a3(v48);

    return;
  }

  __break(1u);
}

uint64_t sub_1CF9202B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v88 = sub_1CF9E6118();
  v12 = *(v88 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v78 - v16;
  v87 = (a2 & 1);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v20 = v19;
  v19[4] = v18;

  v21 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v22 = a5;
  v23 = sub_1CF9E6108();
  v24 = sub_1CF9E7298();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412546;
    *(v25 + 4) = v22;
    *v26 = v22;
    *(v25 + 12) = 1024;
    *(v25 + 14) = v87;
    v27 = v22;
    _os_log_impl(&dword_1CEFC7000, v23, v24, "Request to delete item with ID: %@; recursively %{BOOL}d", v25, 0x12u);
    sub_1CEFCCC44(v26, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v26, -1, -1);
    MEMORY[0x1D386CDC0](v25, -1, -1);
  }

  v29 = *(v12 + 8);
  v28 = v12 + 8;
  v82 = v29;
  v29(v17, v88);
  v30 = swift_allocObject();
  *(v30 + 16) = [v22 identifier];
  *(v30 + 24) = [objc_opt_self() requestForSelf];
  v85 = *(a1 + 16);
  v31 = sub_1CEFD4E9C([v22 identifier]);
  v32 = swift_allocObject();
  *(v32 + 16) = v22;
  *(v32 + 24) = a6;
  *(v32 + 32) = a1;
  *(v32 + 40) = sub_1CF5523F4;
  *(v32 + 48) = v20;
  *(v32 + 56) = v87;
  v33 = objc_allocWithZone(MEMORY[0x1E696AE38]);
  v34 = v22;

  v35 = [v33 init];
  v36 = swift_allocObject();
  v36[2] = sub_1CF9264E8;
  v36[3] = v32;
  v83 = v30 | 2;
  v84 = v36;
  v36[4] = v30 | 2;
  swift_retain_n();
  swift_retain_n();
  v37 = fpfs_current_or_default_log();
  v38 = v86;
  sub_1CF9E6128();
  swift_retain_n();

  v39 = sub_1CF9E6108();
  v40 = sub_1CF9E7298();
  v41 = os_log_type_enabled(v39, v40);
  v87 = v35;
  if (v41)
  {
    v80 = v28;
    v81 = v20;
    v42 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v89[0] = v79;
    *v42 = 136315906;
    v43 = swift_beginAccess();
    v45 = *(v31 + 32);
    v46 = *(v31 + 40);
    if (*(v31 + 41))
    {
      v47 = v45;
      v48 = NSFileProviderItemIdentifier.description.getter();
      v50 = v49;
      sub_1CEFD0994(v45, v46, 1);
    }

    else
    {
      v89[1] = *(v31 + 32);
      v90 = v46;
      v48 = VFSItemID.description.getter(v43, v44);
      v50 = v52;
    }

    v53 = sub_1CEFD0DF0(v48, v50, v89);

    *(v42 + 4) = v53;
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_1CEFD0DF0(0x74616761706F7270, 0xED000053466F5465, v89);
    *(v42 + 22) = 2080;
    v51 = v83;
    v54 = sub_1CEFD11AC(v83);
    v56 = v55;

    v57 = sub_1CEFD0DF0(v54, v56, v89);

    *(v42 + 24) = v57;
    *(v42 + 32) = 2048;
    *(v42 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v39, v40, "Lookup itemID %s with behavior %s request %s iteration %ld", v42, 0x2Au);
    v58 = v79;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v58, -1, -1);
    MEMORY[0x1D386CDC0](v42, -1, -1);

    v82(v86, v88);
    v20 = v81;
    v35 = v87;
  }

  else
  {

    v82(v38, v88);
    v51 = v83;
  }

  swift_beginAccess();
  v59 = *(v31 + 32);
  v60 = *(v31 + 40);
  if ((*(v31 + 41) & 1) == 0)
  {
    if (!v59 && v60 == 2)
    {
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  v61 = qword_1EDEA34B0;
  v62 = v59;
  if (v61 != -1)
  {
    swift_once();
  }

  v63 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v65 = v64;
  if (v63 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v65 != v66)
  {
    v67 = sub_1CF9E8048();

    sub_1CEFD0994(v59, v60, 1);
    v35 = v87;
    if (v67)
    {
      goto LABEL_17;
    }

LABEL_19:
    v68 = swift_allocObject();
    *(v68 + 16) = v51;
    v69 = v68 | 0x7000000000000004;
    v70 = swift_allocObject();
    v81 = v20;
    v71 = v84;
    *(v70 + 16) = sub_1CF795FDC;
    *(v70 + 24) = v71;
    v72 = v51;
    v73 = v85;
    *(v70 + 32) = v85;
    *(v70 + 40) = 1;
    *(v70 + 48) = v72;
    *(v70 + 56) = v31;
    *(v70 + 64) = 0;
    *(v70 + 72) = v35;
    *(v70 + 80) = 0;
    v74 = swift_allocObject();
    *(v74 + 16) = v31;
    *(v74 + 24) = v73;
    *(v74 + 32) = 0;
    *(v74 + 40) = sub_1CF795FE8;
    *(v74 + 48) = v70;
    *(v74 + 56) = v69;
    v75 = swift_allocObject();
    *(v75 + 16) = sub_1CF795FE8;
    *(v75 + 24) = v70;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    v76 = v87;

    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF552448, v75, sub_1CF795FEC, v74);

    v35 = v87;

    goto LABEL_20;
  }

  sub_1CEFD0994(v59, v60, 1);
  v35 = v87;
LABEL_17:
  sub_1CF90CAC8(v51, sub_1CF795FDC, v84);

LABEL_20:
}

void sub_1CF920B9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6, int a7)
{
  LODWORD(v124) = a7;
  v144 = a6;
  v142 = a5;
  v140 = a3;
  v143 = a2;
  v141 = a1;
  v139 = sub_1CF9E6388();
  v138 = *(v139 - 8);
  v8 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v137 = (v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v135 = v111 - v11;
  v136 = sub_1CF9E6498();
  v134 = *(v136 - 8);
  v12 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v133 = v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v129 = v111 - v16;
  v127 = sub_1CF9E63D8();
  v126 = *(v127 - 8);
  v17 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v128 = v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1CF9E6448();
  v131 = *(v132 - 8);
  v19 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v130 = v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CF9E73D8();
  v125 = *(v21 - 8);
  v22 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v121 = v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for VFSItem(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1CF9E6118();
  v122 = *(v123 - 8);
  v28 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v30 = v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v111 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = (v111 - v36);
  sub_1CEFCCBDC(v141, v111 - v36, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = v143;
    v39 = v142;
    v40 = v144;
    v41 = *v37;
    _s3__C4CodeOMa_1(0);
    *&v149 = -1005;
    v42 = v41;
    sub_1CF927324(&qword_1EDEA3590, _s3__C4CodeOMa_1);
    v43 = sub_1CF9E5658();

    if (v43)
    {

      v44 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v45 = v38;
      v46 = sub_1CF9E6108();
      v47 = sub_1CF9E7298();

      v48 = v40;
      if (os_log_type_enabled(v46, v47))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        *(v49 + 4) = v45;
        *v50 = v45;
        v51 = v45;
        _os_log_impl(&dword_1CEFC7000, v46, v47, "Item %@ does not exist, deleting from index", v49, 0xCu);
        sub_1CEFCCC44(v50, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v50, -1, -1);
        MEMORY[0x1D386CDC0](v49, -1, -1);
      }

      (*(v122 + 8))(v33, v123);
      v52 = *(a4 + 16);
      v53 = swift_allocObject();
      *(v53 + 16) = v39;
      *(v53 + 24) = v48;
      v54 = swift_allocObject();
      v54[2] = v45;
      v54[3] = v52;
      v54[4] = v140;
      v54[5] = v39;
      v54[6] = v48;
      v54[7] = 0;
      swift_retain_n();
      v55 = v45;

      sub_1CF7AAF88("deleteSearchableItem(itemID:db:indexReason:completionHandler:)", 62, 2, 2, sub_1CF2BA174, v53, sub_1CF92737C, v54);
    }

    else
    {
      v89 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v90 = v41;
      v91 = v38;
      v92 = sub_1CF9E6108();
      v93 = sub_1CF9E72A8();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v94 = 138412546;
        *(v94 + 4) = v91;
        *v95 = v91;
        *(v94 + 12) = 2112;
        v96 = v41;
        v97 = v91;
        v98 = _swift_stdlib_bridgeErrorToNSError();
        *(v94 + 14) = v98;
        v95[1] = v98;
        _os_log_impl(&dword_1CEFC7000, v92, v93, "Can't find %@ error %@", v94, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v95, -1, -1);
        MEMORY[0x1D386CDC0](v94, -1, -1);
      }

      (*(v122 + 8))(v30, v123);
      v99 = v41;
      v39(v41);
    }
  }

  else
  {
    sub_1CEFDA05C(v37, v27, type metadata accessor for VFSItem);
    v56 = *(a4 + 16);
    v57 = a4;
    v111[1] = a4;
    v58 = *(*(v56 + 32) + 16);
    type metadata accessor for VFSFileTree(0);
    v59 = swift_dynamicCastClassUnconditional();
    v60 = *v27;
    v61 = v27[8];
    v62 = &v27[*(v24 + 36)];
    v63 = *v62;
    v64 = *(v62 + 2);
    v65 = *(v62 + 2);
    v66 = v62[24];
    v67 = *(v27 + 2);
    v68 = v27[24];
    v141 = v27;
    v69 = *(v27 + 4);
    v112 = *(v27 + 5);
    v147 = v66;
    v117 = v63;
    *&v149 = v63;
    v116 = v64;
    DWORD2(v149) = v64;
    v115 = v65;
    *&v150 = v65;
    v114 = v66;
    BYTE8(v150) = v66;
    *&v151 = 0;
    *(&v151 + 1) = v67;
    v119 = v67;
    v118 = v68;
    LOBYTE(v152) = v68;
    v122 = v69;
    *(&v152 + 1) = v69;
    v153 = v112;
    v154 = 0uLL;
    v70 = swift_allocObject();
    v113 = v21;
    v71 = v143;
    v72 = v142;
    v70[2] = v143;
    v70[3] = v72;
    v73 = v140;
    v70[4] = v144;
    v70[5] = v73;
    v70[6] = v57;
    v74 = swift_allocObject();
    v123 = v60;
    *(v74 + 16) = v60;
    v120 = v61;
    *(v74 + 24) = v61;
    v75 = v152;
    *(v74 + 88) = v151;
    *(v74 + 104) = v75;
    v76 = v154;
    *(v74 + 120) = v153;
    *(v74 + 136) = v76;
    v77 = v150;
    *(v74 + 56) = v149;
    *(v74 + 32) = v59;
    *(v74 + 40) = sub_1CF92736C;
    *(v74 + 48) = v70;
    *(v74 + 72) = v77;
    *(v74 + 152) = v124 & 1;
    *(v74 + 160) = 0;
    *(v74 + 168) = 0;
    *(v74 + 176) = 0;
    *(v74 + 184) = 0xB000000000000000;
    v124 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
    *(v74 + 192) = 0u;
    *(v74 + 208) = 0u;
    v142 = v59;
    v78 = *(v59 + 216);
    v146 = MEMORY[0x1E69E7CC0];

    sub_1CEFCCBDC(&v149, v145, &unk_1EC4BE330, &unk_1CF9FF010);
    v79 = v71;

    v144 = v58;

    sub_1CEFCCBDC(&v149, v145, &unk_1EC4BE330, &unk_1CF9FF010);
    sub_1CF927324(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
    v80 = v112;

    v143 = v70;

    v81 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
    sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
    v82 = v121;
    v83 = v113;
    sub_1CF9E77B8();
    v84 = sub_1CF9E73E8();

    (*(v125 + 8))(v82, v83);
    qos_class_self();
    v85 = v129;
    sub_1CF9E63B8();
    v86 = v126;
    v87 = *(v126 + 48);
    v88 = v127;
    if (v87(v85, 1, v127) == 1)
    {
      (*(v86 + 104))(v128, *MEMORY[0x1E69E7FA0], v88);
      if (v87(v85, 1, v88) != 1)
      {
        sub_1CEFCCC44(v85, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v86 + 32))(v128, v85, v88);
    }

    ObjectType = swift_getObjectType();
    v101 = v130;
    sub_1CF9E6428();
    v102 = swift_allocObject();
    v103 = v123;
    *(v102 + 16) = v142;
    *(v102 + 24) = v103;
    *(v102 + 32) = v120;
    *(v102 + 40) = v117;
    *(v102 + 48) = v116;
    *(v102 + 56) = v115;
    *(v102 + 64) = v114;
    *(v102 + 65) = v146;
    *(v102 + 68) = *(&v146 + 3);
    v104 = v119;
    *(v102 + 72) = 0;
    *(v102 + 80) = v104;
    *(v102 + 88) = v118;
    *(v102 + 89) = *v148;
    *(v102 + 92) = *&v148[3];
    *(v102 + 96) = v122;
    *(v102 + 104) = v80;
    *(v102 + 112) = 0u;
    *(v102 + 128) = 0u;
    *(v102 + 144) = 0;
    *(v102 + 152) = v84;
    *(v102 + 160) = sub_1CF2B064C;
    *(v102 + 168) = v74;

    sub_1CEFCCBDC(&v149, v145, &unk_1EC4BE330, &unk_1CF9FF010);
    swift_unknownObjectRetain();

    sub_1CEFD5828(0, v101, sub_1CEFD5D08, v102);

    (*(v131 + 8))(v101, v132);
    v105 = v133;
    sub_1CF9E6478();
    v106 = v135;
    sub_1CEFD5B64(v135);
    v107 = v137;
    sub_1CEFD5BD8(v137);
    MEMORY[0x1D3869770](v105, v106, v107, ObjectType);
    v108 = *(v138 + 8);
    v109 = v107;
    v110 = v139;
    v108(v109, v139);
    v108(v106, v110);
    (*(v134 + 8))(v105, v136);
    sub_1CF9E7448();

    swift_unknownObjectRelease();
    sub_1CEFCCC44(&v149, &unk_1EC4BE330, &unk_1CF9FF010);
    sub_1CEFCCC44(&v149, &unk_1EC4BE330, &unk_1CF9FF010);
    sub_1CEFD5398(v141, type metadata accessor for VFSItem);
  }
}

void sub_1CF921B8C(uint64_t a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a6;
  v57 = a3;
  v10 = sub_1CF9E6118();
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC10, &unk_1CFA00660);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v54 - v19);
  sub_1CEFCCBDC(a1, &v54 - v19, &unk_1EC4BEC10, &unk_1CFA00660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    v22 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v23 = a2;
    v24 = v21;
    v25 = sub_1CF9E6108();
    v26 = sub_1CF9E72A8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412546;
      *(v27 + 4) = v23;
      *v28 = v23;
      *(v27 + 12) = 2112;
      swift_getErrorValue();
      LODWORD(v54) = v26;
      v29 = v58;
      v30 = v23;
      v31 = Error.prettyDescription.getter(v29);
      *(v27 + 14) = v31;
      v28[1] = v31;
      _os_log_impl(&dword_1CEFC7000, v25, v54, "Failed to delete item %@ with error %@", v27, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v28, -1, -1);
      MEMORY[0x1D386CDC0](v27, -1, -1);
    }

    (*(v55 + 8))(v16, v56);
    v32 = v21;
    v57(v21);
  }

  else
  {
    v33 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v34 = a2;
    v35 = sub_1CF9E6108();
    v36 = sub_1CF9E7298();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = a4;
      v39 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v34;
      *v39 = v34;
      v40 = v34;
      _os_log_impl(&dword_1CEFC7000, v35, v36, "Succeeded deleting item with itemID %@, not wating on ingestion", v37, 0xCu);
      sub_1CEFCCC44(v39, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v41 = v39;
      a4 = v38;
      MEMORY[0x1D386CDC0](v41, -1, -1);
      MEMORY[0x1D386CDC0](v37, -1, -1);
    }

    (*(v55 + 8))(v13, v56);
    v42 = *(v54 + 16);
    v43 = swift_allocObject();
    v44 = v57;
    *(v43 + 16) = v57;
    *(v43 + 24) = a4;
    v45 = swift_allocObject();
    v46 = a4;
    v47 = v45;
    v45[2] = v34;
    v45[3] = v42;
    v45[4] = a5;
    v45[5] = v44;
    v45[6] = v46;
    v45[7] = 0;
    swift_retain_n();
    v48 = v34;

    sub_1CF7AAF88("deleteSearchableItem(itemID:db:indexReason:completionHandler:)", 62, 2, 2, sub_1CF2BA174, v43, sub_1CF92849C, v47);

    v49 = *(a5 + 16);
    v50 = [objc_opt_self() requestForSelf];
    v51 = swift_allocObject();
    *(v51 + 16) = v48;
    aBlock[4] = sub_1CF9274A0;
    aBlock[5] = v51;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CEFF9A6C;
    aBlock[3] = &block_descriptor_433_0;
    v52 = _Block_copy(aBlock);
    v53 = v48;

    [v49 forceFSIngestionForItemID:v53 request:v50 completionHandler:v52];
    _Block_release(v52);

    sub_1CEFCCC44(v20, &unk_1EC4BEC10, &unk_1CFA00660);
  }
}

uint64_t sub_1CF922144(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  if (a2)
  {
    v13 = a2;
    v14 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v15 = a2;
    v16 = a3;
    v17 = sub_1CF9E6108();
    v18 = sub_1CF9E72A8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38 = v5;
      v21 = v20;
      *v19 = 138412546;
      *(v19 + 4) = v16;
      *v20 = v16;
      *(v19 + 12) = 2112;
      swift_getErrorValue();
      v22 = v6;
      v23 = v39;
      v37 = v17;
      v24 = v16;
      v25 = v23;
      v6 = v22;
      v26 = Error.prettyDescription.getter(v25);
      *(v19 + 14) = v26;
      v21[1] = v26;
      v27 = v37;
      _os_log_impl(&dword_1CEFC7000, v37, v18, "Failed to force ingestion of item %@ with error %@", v19, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      v28 = v21;
      v5 = v38;
      MEMORY[0x1D386CDC0](v28, -1, -1);
      MEMORY[0x1D386CDC0](v19, -1, -1);
    }

    else
    {
    }

    v9 = v12;
  }

  else
  {
    v29 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v30 = a3;
    v31 = sub_1CF9E6108();
    v32 = sub_1CF9E7298();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v30;
      *v34 = v30;
      v35 = v30;
      _os_log_impl(&dword_1CEFC7000, v31, v32, "Succeeded ingesting deletion for item with itemID %@", v33, 0xCu);
      sub_1CEFCCC44(v34, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v34, -1, -1);
      MEMORY[0x1D386CDC0](v33, -1, -1);
    }
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_1CF922488(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v65 = a3;
  v66 = a4;
  v75 = a2;
  v5 = sub_1CF9E63A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6448();
  v68 = *(v10 - 8);
  v11 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E6118();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v19 = sub_1CF9E6108();
  v20 = sub_1CF9E7298();

  v21 = os_log_type_enabled(v19, v20);
  v71 = v6;
  v72 = v5;
  v69 = v9;
  v70 = v10;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock = v23;
    *v22 = 136315138;
    v24 = sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
    v25 = MEMORY[0x1D3868FE0](a1, v24);
    v27 = sub_1CEFD0DF0(v25, v26, &aBlock);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_1CEFC7000, v19, v20, "Request to delete items: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1D386CDC0](v23, -1, -1);
    MEMORY[0x1D386CDC0](v22, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  v77 = swift_allocObject();
  *(v77 + 16) = 0;
  v76 = dispatch_group_create();
  v28 = a1;
  if (!(a1 >> 62))
  {
    v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_5;
    }

LABEL_12:
    v42 = v78[2];
    v43 = *(v42 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log);
    v44 = *(v42 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue);
    v45 = v28;
    v46 = swift_allocObject();
    v46[2] = v77;
    v46[3] = v45;
    v47 = v66;
    v46[4] = v65;
    v46[5] = v47;
    v48 = v43;

    v49 = v48;
    v50 = v44;

    v78 = fpfs_adopt_log();
    v51 = swift_allocObject();
    aBlock = sub_1CF9E73C8();
    v81 = v52;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v53 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v53);

    sub_1CF9E6978();

    v54 = __fp_log_fork();

    *(v51 + 16) = v54;
    v55 = swift_allocObject();
    *(v55 + 16) = v43;
    *(v55 + 24) = v51;
    *(v55 + 32) = v50;
    *(v55 + 40) = "deleteItems(with:options:completionHandler:)";
    *(v55 + 48) = 44;
    *(v55 + 56) = 2;
    *(v55 + 64) = sub_1CF9264DC;
    *(v55 + 72) = v46;
    v84 = sub_1CEFD5064;
    v85 = v55;
    aBlock = MEMORY[0x1E69E9820];
    v81 = 1107296256;
    v82 = sub_1CEFCA444;
    v83 = &block_descriptor_66;
    v56 = _Block_copy(&aBlock);
    v75 = v49;
    v57 = v50;

    v58 = v67;
    sub_1CF9E63F8();
    v79 = MEMORY[0x1E69E7CC0];
    sub_1CF927324(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v59 = v69;
    v60 = v72;
    sub_1CF9E77B8();
    v61 = v76;
    sub_1CF9E7308();
    _Block_release(v56);
    (*(v71 + 8))(v59, v60);
    (*(v68 + 8))(v58, v70);

    v62 = v78;
    v63 = fpfs_adopt_log();

    v64 = v75;

    return;
  }

  v41 = sub_1CF9E7818();
  v28 = a1;
  v29 = v41;
  if (!v41)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v29 >= 1)
  {
    v30 = 0;
    v73 = v28 & 0xC000000000000001;
    v74 = v28;
    v31 = v77;
    v32 = v78[2];
    v33 = v76;
    do
    {
      if (v73)
      {
        v34 = MEMORY[0x1D3869C30](v30);
      }

      else
      {
        v34 = *(v28 + 8 * v30 + 32);
      }

      v35 = v34;
      ++v30;
      dispatch_group_enter(v33);
      v36 = swift_allocObject();
      *(v36 + 16) = v31;
      *(v36 + 24) = v33;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_1CF9264BC;
      *(v37 + 24) = v36;
      v38 = swift_allocObject();
      v38[2] = v75;
      v38[3] = sub_1CF9264BC;
      v38[4] = v36;
      v38[5] = v35;
      v38[6] = v78;
      swift_retain_n();

      v39 = v33;
      v40 = v35;

      sub_1CEFD4024("deleteItem(with:options:completionHandler:)", 43, 2, sub_1CF2AF9D0, v37, sub_1CF9264C4, v38);

      v28 = v74;
    }

    while (v29 != v30);
    goto LABEL_12;
  }

  __break(1u);
}

void sub_1CF922C84(void *a1, uint64_t a2, dispatch_group_t group)
{
  if (a1)
  {
    swift_beginAccess();
    v6 = *(a2 + 16);
    *(a2 + 16) = a1;
    v7 = a1;
  }

  dispatch_group_leave(group);
}

void sub_1CF922CF4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_1CF9E6118();
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  swift_beginAccess();
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = v15;
    v17 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v18 = v15;

    v19 = sub_1CF9E6108();
    v20 = sub_1CF9E72A8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v47 = a3;
      v22 = v21;
      v23 = swift_slowAlloc();
      v48 = a4;
      v24 = v23;
      v25 = swift_slowAlloc();
      v46 = v8;
      v26 = v25;
      v51[0] = v25;
      *v22 = 136315394;
      v27 = sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
      v28 = MEMORY[0x1D3868FE0](a2, v27);
      v30 = sub_1CEFD0DF0(v28, v29, v51);

      *(v22 + 4) = v30;
      *(v22 + 12) = 2112;
      swift_getErrorValue();
      v31 = Error.prettyDescription.getter(v50);
      *(v22 + 14) = v31;
      *v24 = v31;
      _os_log_impl(&dword_1CEFC7000, v19, v20, "Failed to delete items %s with error %@", v22, 0x16u);
      sub_1CEFCCC44(v24, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1D386CDC0](v26, -1, -1);
      v32 = v22;
      a3 = v47;
      MEMORY[0x1D386CDC0](v32, -1, -1);

      (*(v49 + 8))(v14, v46);
    }

    else
    {

      (*(v49 + 8))(v14, v8);
    }
  }

  else
  {
    v33 = v8;
    v34 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v35 = sub_1CF9E6108();
    v36 = sub_1CF9E7298();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v48 = a4;
      v38 = v37;
      v39 = swift_slowAlloc();
      v51[0] = v39;
      *v38 = 136315138;
      v40 = sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
      v41 = MEMORY[0x1D3868FE0](a2, v40);
      v43 = sub_1CEFD0DF0(v41, v42, v51);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_1CEFC7000, v35, v36, "Succeeded deleting items: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1D386CDC0](v39, -1, -1);
      MEMORY[0x1D386CDC0](v38, -1, -1);
    }

    (*(v49 + 8))(v11, v33);
  }

  swift_beginAccess();
  v44 = *(a1 + 16);
  v45 = v44;
  a3(v44);
}

id sub_1CF923210(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v11 = a2;
  v12 = a1;
  v13 = *(a3 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1CF9E7A48();
    v16 = *(v6 + 16);
    v17 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID;
    v18 = (a3 + 32);
    do
    {
      v19 = *v18++;
      [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(v16 + v17) itemIdentifier:v19];
      sub_1CF9E7A18();
      v20 = *(v32 + 16);
      sub_1CF9E7A58();
      sub_1CF9E7A68();
      sub_1CF9E7A28();
      --v13;
    }

    while (v13);
    v10 = a4;
    v14 = v32;
    v8 = a6;
    v11 = a2;
    v12 = a1;
    v9 = a5;
  }

  v21 = [objc_opt_self() progressWithTotalUnitCount_];
  v22 = *(v6 + 16);
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = v9;
  v23[4] = v8;
  v23[5] = v7;
  v23[6] = v12;
  v23[7] = v11;
  v23[8] = v10;
  v24 = v21;

  v25 = v10;
  sub_1CF8406A8(v14, sub_1CF9261CC, v23);

  return v24;
}

void sub_1CF9233CC(unint64_t a1, int a2, uint64_t a3, id a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = a4;
  if (!a1)
  {
    [a4 setCompletedUnitCount_];
    a5(a3);
    return;
  }

  v15 = *(a7 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_21;
  }

  v17 = Strong;
  v18 = [Strong session];

  v19 = [v18 newFileProviderProxyWithTimeout:objc_msgSend(*(a7 + 32) pid:{"pid"), -1.0}];
  swift_unknownObjectRelease();
  v20 = sub_1CF9E6888();
  if (a1 >> 62)
  {
    v21 = sub_1CF9E7818();
  }

  else
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = v20;
  if (v21)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1CF680D2C(0, v21 & ~(v21 >> 63), 0);
    if ((v21 & 0x8000000000000000) == 0)
    {
      v33 = v19;
      v34 = a5;
      v35 = v12;
      v22 = 0;
      v23 = aBlock[0];
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1D3869C30](v22, a1);
        }

        else
        {
          v24 = *(a1 + 8 * v22 + 32);
        }

        v25 = v24;
        v26 = [v24 identifier];

        aBlock[0] = v23;
        v28 = *(v23 + 16);
        v27 = *(v23 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1CF680D2C((v27 > 1), v28 + 1, 1);
          v23 = aBlock[0];
        }

        ++v22;
        *(v23 + 16) = v28 + 1;
        *(v23 + 8 * v28 + 32) = v26;
      }

      while (v21 != v22);
      a5 = v34;
      v12 = v35;
      v19 = v33;
      goto LABEL_15;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

LABEL_15:
  type metadata accessor for NSFileProviderItemIdentifier(0);
  v29 = sub_1CF9E6D28();

  aBlock[4] = a5;
  aBlock[5] = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF00A468;
  aBlock[3] = &block_descriptor_49;
  v30 = _Block_copy(aBlock);

  v31 = [v19 performActionWithIdentifier:v36 onItemsWithIdentifiers:v29 domainIdentifier:a10 completionHandler:v30];
  swift_unknownObjectRelease();
  _Block_release(v30);

  if (v31)
  {
    [v12 addChild:v31 withPendingUnitCount:1];
  }
}

void sub_1CF9237E0(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v122 = a6;
  v123 = a4;
  LODWORD(v121) = a5;
  v124 = a2;
  v125 = a3;
  v7 = sub_1CF9E6388();
  v120 = *(v7 - 8);
  v8 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v119 = (&v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v117 = &v94 - v11;
  v118 = sub_1CF9E6498();
  v116 = *(v118 - 8);
  v12 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v115 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v111 = &v94 - v16;
  v17 = sub_1CF9E63D8();
  v108 = *(v17 - 8);
  v109 = v17;
  v18 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v110 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CF9E6448();
  v113 = *(v20 - 8);
  v114 = v20;
  v21 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v112 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1CF9E73D8();
  v106 = *(v23 - 8);
  v107 = v23;
  v24 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v105 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for VFSItem(0);
  v103 = *(v26 - 8);
  v27 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v104 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v94 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = (&v94 - v33);
  sub_1CEFCCBDC(a1, &v94 - v33, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = *v34;
    v36 = *v34;
    v124(v35, 1);
  }

  else
  {
    v101 = v7;
    sub_1CEFDA05C(v34, v30, type metadata accessor for VFSItem);
    v37 = *(v123 + 16);
    v38 = *(*(v37 + 32) + 16);
    v39 = v30;
    v40 = type metadata accessor for VFSFileTree(0);
    swift_dynamicCastClassUnconditional();
    v41 = v39[8];
    v126 = *v39;
    v127 = v41;
    v42 = &v39[*(v26 + 36)];
    v43 = *v42;
    v44 = *(v42 + 2);
    v45 = *(v42 + 2);
    v46 = v42[24];
    v47 = *(v39 + 2);
    v48 = v39[24];
    v49 = *(v39 + 4);
    v50 = *(v39 + 5);
    v102 = v39;
    v136 = v46;
    v98 = v43;
    *&v138 = v43;
    v97 = v44;
    DWORD2(v138) = v44;
    v96 = v45;
    *&v139 = v45;
    v95 = v46;
    BYTE8(v139) = v46;
    *&v140 = 0;
    *(&v140 + 1) = v47;
    LOBYTE(v141) = v48;
    *(&v141 + 1) = v49;
    v142 = v50;
    v143 = 0uLL;

    sub_1CEFDAA48(&v126, &v138, &v128);

    v137[2] = v140;
    v137[3] = v141;
    v137[4] = v142;
    v137[5] = v143;
    v137[0] = v138;
    v137[1] = v139;
    sub_1CEFCCC44(v137, &unk_1EC4BECD0, &unk_1CF9FEF80);
    v51 = v128;
    v53 = v129;
    v52 = v130;
    v99 = v40;
    v100 = v37;
    v54 = *(*(v37 + 32) + 16);
    v55 = swift_dynamicCastClassUnconditional();

    v56 = objc_sync_enter(v55);
    if (v56)
    {
      MEMORY[0x1EEE9AC00](v56);
      *(&v94 - 2) = v55;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v94 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v57 = v55[20];

    v58 = objc_sync_exit(v55);
    if (v58)
    {
      MEMORY[0x1EEE9AC00](v58);
      *(&v94 - 2) = v55;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v94 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    v59 = *(v57 + 16);

    v138 = v51;
    v139 = v53;
    *&v140 = v52;
    v60 = sub_1CEFDADE0(&v138, v59, 0x200000);

    v62 = v102;
    MEMORY[0x1EEE9AC00](v61);
    *(&v94 - 4) = v60;
    *(&v94 - 12) = v121 & 1;
    v63 = v122;
    *(&v94 - 1) = v122;
    sub_1CEFE1894(sub_1CF9275F4);
    v64 = v124;
    if ((v60 & 0x80000000) == 0)
    {
      close(v60);
    }

    v65 = *(*(v100 + 32) + 16);
    v121 = swift_dynamicCastClassUnconditional();
    v100 = *v62;
    LODWORD(v99) = *(v62 + 8);
    v66 = *(v62 + 16);
    v67 = *(v62 + 24);
    v68 = *(v62 + 32);
    v94 = *(v62 + 40);
    v136 = v95;
    *&v128 = v98;
    DWORD2(v128) = v97;
    *&v129 = v96;
    BYTE8(v129) = v95;
    *&v130 = 0;
    *(&v130 + 1) = v66;
    LOBYTE(v131) = v67;
    *(&v131 + 1) = v68;
    v132 = v94;
    v133 = 0;
    v134 = 0;
    v135 = 0;
    v138 = v128;
    v139 = v129;
    v142 = v94;
    v143 = 0u;
    v140 = v130;
    v141 = v131;
    v69 = v104;
    sub_1CEFDA2E4(v62, v104, type metadata accessor for VFSItem);
    v70 = (*(v103 + 80) + 48) & ~*(v103 + 80);
    v71 = swift_allocObject();
    v71[2] = v123;
    v71[3] = v64;
    v71[4] = v125;
    v71[5] = v63;
    sub_1CEFDA05C(v69, v71 + v70, type metadata accessor for VFSItem);
    sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
    v72 = *(v121 + 216);
    v126 = MEMORY[0x1E69E7CC0];
    sub_1CF927324(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
    v124 = v65;

    v73 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
    sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
    v74 = v105;
    v75 = v107;
    sub_1CF9E77B8();
    v76 = sub_1CF9E73E8();

    (*(v106 + 8))(v74, v75);
    qos_class_self();
    v77 = v111;
    sub_1CF9E63B8();
    v79 = v108;
    v78 = v109;
    v80 = *(v108 + 48);
    if (v80(v77, 1, v109) == 1)
    {
      (*(v79 + 104))(v110, *MEMORY[0x1E69E7FA0], v78);
      if (v80(v77, 1, v78) != 1)
      {
        sub_1CEFCCC44(v77, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v79 + 32))(v110, v77, v78);
    }

    ObjectType = swift_getObjectType();
    v82 = v112;
    sub_1CF9E6428();
    v83 = swift_allocObject();
    v84 = v141;
    *(v83 + 72) = v140;
    *(v83 + 88) = v84;
    v85 = v143;
    *(v83 + 104) = v142;
    *(v83 + 120) = v85;
    v86 = v139;
    *(v83 + 40) = v138;
    v87 = v100;
    *(v83 + 16) = v121;
    *(v83 + 24) = v87;
    *(v83 + 32) = v99;
    *(v83 + 56) = v86;
    *(v83 + 136) = xmmword_1CFA188F0;
    *(v83 + 152) = v76;
    *(v83 + 160) = sub_1CF927618;
    *(v83 + 168) = v71;

    sub_1CEFCCBDC(&v128, &v126, &unk_1EC4BE330, &unk_1CF9FF010);
    swift_unknownObjectRetain();

    sub_1CEFD5828(0, v82, sub_1CF72A328, v83);

    (*(v113 + 8))(v82, v114);
    v88 = v115;
    sub_1CF9E6478();
    v89 = v117;
    sub_1CEFD5B64(v117);
    v90 = v119;
    sub_1CEFD5BD8(v119);
    MEMORY[0x1D3869770](v88, v89, v90, ObjectType);
    v91 = *(v120 + 8);
    v92 = v90;
    v93 = v101;
    v91(v92, v101);
    v91(v89, v93);
    (*(v116 + 8))(v88, v118);
    sub_1CF9E7448();

    swift_unknownObjectRelease();
    sub_1CEFCCC44(&v128, &unk_1EC4BE330, &unk_1CF9FF010);
    sub_1CEFD5398(v62, type metadata accessor for VFSItem);
  }
}

uint64_t sub_1CF9244D0@<X0>(char a1@<W1>, uint64_t a2@<X2>, _DWORD *a3@<X8>)
{
  if (a1)
  {
    v4 = *(*(a2 + 16) + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID);
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    sub_1CF9E6978();
  }

  is_ignore_root = fpfs_set_is_ignore_root();
  result = swift_unknownObjectRelease();
  *a3 = is_ignore_root;
  return result;
}

uint64_t sub_1CF924568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v30 = a5;
  v25 = a3;
  v26 = a2;
  v27 = a1;
  v9 = type metadata accessor for VFSItem(0);
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v24 - v14;
  v31 = *(a2 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  sub_1CEFCCBDC(v27, v15, &unk_1EC4BF310, &unk_1CF9FDB30);
  sub_1CEFDA2E4(v29, &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VFSItem);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v28 + 80) + v19 + 8) & ~*(v28 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v25;
  *(v21 + 24) = a4;
  sub_1CEFE55D0(v15, v21 + v17, &unk_1EC4BF310, &unk_1CF9FDB30);
  *(v21 + v18) = v26;
  *(v21 + v19) = v30;
  sub_1CEFDA05C(&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for VFSItem);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1CEFF9D98;
  *(v22 + 24) = v16;
  swift_retain_n();

  sub_1CF7AAF88("updateIgnoreStateOfItem(_:ignoreState:fpfs:completionHandler:)", 62, 2, 2, sub_1CF7968B4, v22, sub_1CF927690, v21);
}

void sub_1CF924868(void *a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v54 = a7;
  v55 = a6;
  v57 = a5;
  v58 = a3;
  v59 = a2;
  v53 = a1;
  v8 = type metadata accessor for VFSItem(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v52 - v21);
  sub_1CEFCCBDC(a4, &v52 - v21, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
LABEL_5:
    v38 = 1;
    goto LABEL_13;
  }

  sub_1CEFE55D0(v22, v18, &unk_1EC4BEC00, &unk_1CF9FCB60);
  sub_1CEFCCBDC(v18, v15, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v9 + 48))(v15, 1, v8) == 1)
  {
    sub_1CEFCCC44(v15, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v24 = v18;
    v25 = *v54;
    v26 = *(v54 + 8);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v23 = swift_allocError();
    v29 = v28;
    sub_1CF1B8150();
    v30 = swift_allocError();
    *v31 = v27;
    *&v60 = v25;
    BYTE8(v60) = v26;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = v30;
    sub_1CF2A8DE0(&v60);
    *v29 = v60;
    v32 = v61;
    v33 = v62;
    v34 = v64;
    *(v29 + 48) = v63;
    *(v29 + 64) = v34;
    *(v29 + 16) = v32;
    *(v29 + 32) = v33;
    v35 = v65;
    v36 = v66;
    v37 = v67;
    *(v29 + 128) = v68;
    *(v29 + 96) = v36;
    *(v29 + 112) = v37;
    *(v29 + 80) = v35;
    sub_1CEFCCC44(v24, &unk_1EC4BEC00, &unk_1CF9FCB60);
    goto LABEL_5;
  }

  v39 = v56;
  sub_1CEFDA05C(v15, v56, type metadata accessor for VFSItem);
  v41 = v53[3];
  v40 = v53[4];
  v42 = __swift_project_boxed_opaque_existential_1(v53, v41);
  v43 = *(v55 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v45 = Strong, v46 = [Strong indexer], v45, v46))
  {
    v47 = [v46 needsAuthentication];

    if (v47)
    {
      v48 = 29;
    }

    else
    {
      v48 = 21;
    }
  }

  else
  {
    v48 = 21;
  }

  v49 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
  v50 = sub_1CF927324(qword_1EDEA8860, type metadata accessor for VFSFileTree);
  v51 = sub_1CF927324(qword_1EDEABC30, type metadata accessor for VFSItem);
  v23 = sub_1CF76BB00(v39, v48, 0, v49, v42, v8, v41, v50, &off_1F4BF8588, v51, v40);

  sub_1CEFD5398(v39, type metadata accessor for VFSItem);
  sub_1CEFCCC44(v18, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v38 = 0;
LABEL_13:
  v59(v23, v38);
  sub_1CF091F00(v23);
}

void sub_1CF924DC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v126 = a6;
  v125 = a5;
  v141 = a3;
  v140 = a1;
  v132 = sub_1CF9E63A8();
  v131 = *(v132 - 8);
  v8 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v130 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1CF9E6448();
  v128 = *(v129 - 8);
  v10 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v127 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1CF9E6118();
  v12 = *(v139 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v15 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E7CC0];
  v18 = sub_1CF4E43E0(MEMORY[0x1E69E7CC0]);
  v153 = v16;
  *(v16 + 16) = v18;
  v19 = swift_allocObject();
  v20 = sub_1CF4E4A24(v17);
  v152 = v19;
  *(v19 + 16) = v20;
  v21 = dispatch_group_create();
  v23 = *(a2 + 16);
  v143 = v21;
  if (v23)
  {
    v24 = v21;
    v25 = (a2 + 32);
    v138 = a4 & 1;
    v137 = *(v140 + 16);
    v136 = (v12 + 8);
    v26 = 0x4000000000000002;
    if (a4)
    {
      v26 = 0x4000000000000000;
    }

    v135 = v26;
    *&v22 = 136315906;
    v133 = v22;
    v144 = v15;
    do
    {
      v150 = v25;
      v151 = v23;
      v27 = *v25;
      dispatch_group_enter(v24);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v28 = v27;
      v29 = sub_1CF4C4044();

      if ((v29 & 1) == 0)
      {
        goto LABEL_11;
      }

      v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v32 = sub_1CF025150(0x80007uLL, v30, v31);
      v34 = v33;
      v36 = v35;
      v38 = v37;

      v39 = MEMORY[0x1D3868C10](v32, v34, v36, v38);
      v41 = v40;

      VFSItemID.init(parsing:)(v39, v41, &aBlock);
      v42 = v156;
      if (v156 == 255)
      {
LABEL_11:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
        v43 = swift_allocObject();
        *(v43 + 42) = 0;
        *(v43 + 32) = v27;
        *(v43 + 40) = 256;
        *(v43 + 16) = v27;
        *(v43 + 24) = 256;
        v45 = v28;
        v42 = 0;
        v44 = 1;
      }

      else
      {

        v27 = aBlock;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
        v43 = swift_allocObject();
        v44 = 0;
        *(v43 + 32) = v27;
        *(v43 + 40) = v42;
        *(v43 + 41) = 0;
        *(v43 + 16) = v27;
        *(v43 + 24) = v42;
        *(v43 + 25) = 0;
      }

      v46 = swift_allocObject();
      v48 = v152;
      v47 = v153;
      v46[2] = v24;
      v46[3] = v48;
      v46[4] = v28;
      v46[5] = v47;
      v49 = swift_allocObject();
      *(v49 + 16) = v27;
      *(v49 + 24) = v42;
      *(v49 + 25) = v44;
      v50 = v141;
      v51 = *(v141 + 32);
      *(v49 + 32) = v51;
      sub_1CEFD0988(v27, v42, v44);
      v52 = v51;
      v142 = v49;
      v53 = v135 | v49;
      v54 = swift_allocObject();
      *(v54 + 16) = sub_1CF92755C;
      *(v54 + 24) = v46;
      v55 = swift_allocObject();
      v56 = v140;
      swift_weakInit();
      v57 = swift_allocObject();
      v57[2] = sub_1CF2B1400;
      v57[3] = v54;
      v57[4] = v55;
      v58 = swift_allocObject();
      *(v58 + 16) = sub_1CF92756C;
      *(v58 + 24) = v57;
      v59 = swift_allocObject();
      *(v59 + 16) = sub_1CEFF9944;
      *(v59 + 24) = v58;
      *(v59 + 32) = v56;
      *(v59 + 40) = v138;
      *(v59 + 48) = v50;
      v60 = objc_allocWithZone(MEMORY[0x1E696AE38]);
      v146 = v28;
      v61 = v24;

      v149 = v46;
      v62 = v53;

      v147 = v58;

      v145 = [v60 init];
      v63 = swift_allocObject();
      v63[2] = sub_1CF9275D4;
      v63[3] = v59;
      v63[4] = v53;
      v148 = v59;

      sub_1CEFD09A0(v53);
      v64 = fpfs_current_or_default_log();
      v65 = v144;
      sub_1CF9E6128();
      sub_1CEFD09A0(v62);
      sub_1CEFD09A0(v62);

      v66 = sub_1CF9E6108();
      v67 = sub_1CF9E7298();
      if (os_log_type_enabled(v66, v67))
      {
        v134 = v63;
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v154 = v69;
        *v68 = v133;
        v70 = swift_beginAccess();
        v72 = *(v43 + 32);
        v73 = *(v43 + 40);
        if (*(v43 + 41))
        {
          v74 = v72;
          v75 = NSFileProviderItemIdentifier.description.getter();
          v77 = v76;
          sub_1CEFD0994(v72, v73, 1);
        }

        else
        {
          aBlock = *(v43 + 32);
          LOBYTE(v156) = v73;
          v75 = VFSItemID.description.getter(v70, v71);
          v77 = v78;
        }

        v79 = sub_1CEFD0DF0(v75, v77, &v154);

        *(v68 + 4) = v79;
        *(v68 + 12) = 2080;
        *(v68 + 14) = sub_1CEFD0DF0(0x74616761706F7270, 0xED000053466F5465, &v154);
        *(v68 + 22) = 2080;
        v80 = sub_1CEFD11AC(v62);
        v82 = v81;
        sub_1CEFD0A98(v62);
        sub_1CEFD0A98(v62);
        v83 = sub_1CEFD0DF0(v80, v82, &v154);

        *(v68 + 24) = v83;
        *(v68 + 32) = 2048;
        *(v68 + 34) = 0;
        _os_log_impl(&dword_1CEFC7000, v66, v67, "Lookup itemID %s with behavior %s request %s iteration %ld", v68, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v69, -1, -1);
        MEMORY[0x1D386CDC0](v68, -1, -1);

        (*v136)(v144, v139);
        v24 = v143;
        v63 = v134;
      }

      else
      {
        sub_1CEFD0A98(v62);
        sub_1CEFD0A98(v62);

        (*v136)(v65, v139);
        v24 = v143;
      }

      swift_beginAccess();
      v84 = *(v43 + 32);
      v85 = *(v43 + 40);
      if (*(v43 + 41))
      {
        v86 = qword_1EDEA34B0;
        v87 = v84;
        if (v86 != -1)
        {
          swift_once();
        }

        v88 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v90 = v89;
        if (v88 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v90 == v91)
        {

          sub_1CEFD0994(v84, v85, 1);
        }

        else
        {
          v92 = sub_1CF9E8048();

          sub_1CEFD0994(v84, v85, 1);
          if ((v92 & 1) == 0)
          {
            goto LABEL_27;
          }
        }
      }

      else if (v84 || v85 != 2)
      {
LABEL_27:
        if (((v62 >> 58) & 0x3C | (v62 >> 1) & 3) == 0x1E)
        {
          v93 = *((v142 & 0xFFFFFFFFFFFFFF9) + 0x10);
          v94 = v93;
        }

        else
        {
          v95 = swift_allocObject();
          *(v95 + 16) = v62;
          v94 = v95 | 0x7000000000000004;
          v93 = v62;
        }

        sub_1CEFD09A0(v93);
        v96 = swift_allocObject();
        *(v96 + 16) = sub_1CF796A0C;
        *(v96 + 24) = v63;
        v97 = v137;
        *(v96 + 32) = v137;
        *(v96 + 40) = 1;
        *(v96 + 48) = v62;
        *(v96 + 56) = v43;
        *(v96 + 64) = 0;
        v98 = v145;
        *(v96 + 72) = v145;
        *(v96 + 80) = 0;
        v99 = swift_allocObject();
        *(v99 + 16) = v43;
        *(v99 + 24) = v97;
        *(v99 + 32) = 0;
        *(v99 + 40) = sub_1CF796A90;
        *(v99 + 48) = v96;
        *(v99 + 56) = v94;
        v100 = swift_allocObject();
        *(v100 + 16) = sub_1CF796A90;
        *(v100 + 24) = v96;

        sub_1CEFD09A0(v62);

        v101 = v98;
        sub_1CEFD09A0(v94);
        sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v100, sub_1CF796A9C, v99);

        sub_1CEFD0A98(v94);
        v24 = v143;
        goto LABEL_7;
      }

      sub_1CF90CAC8(v62, sub_1CF796A0C, v63);

LABEL_7:
      sub_1CEFD0A98(v62);
      v25 = v150 + 1;
      v23 = v151 - 1;
    }

    while (v151 != 1);
  }

  v102 = *(v141 + 16);
  v103 = *(v102 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log);
  v104 = *(v102 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue);
  v105 = swift_allocObject();
  v106 = v126;
  v105[2] = v125;
  v105[3] = v106;
  v107 = v152;
  v105[4] = v153;
  v105[5] = v107;
  v108 = v103;

  v109 = v108;
  v110 = v104;

  v151 = fpfs_adopt_log();
  v111 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v156 = v112;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v113 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v113);

  sub_1CF9E6978();

  v114 = __fp_log_fork();

  *(v111 + 16) = v114;
  v115 = swift_allocObject();
  *(v115 + 16) = v103;
  *(v115 + 24) = v111;
  *(v115 + 32) = v110;
  *(v115 + 40) = "updateIgnoreStateOfItem(withIdentifiers:ignoreState:completionHandler:)";
  *(v115 + 48) = 71;
  *(v115 + 56) = 2;
  *(v115 + 64) = sub_1CF9275E8;
  *(v115 + 72) = v105;
  v159 = sub_1CF2B9F54;
  v160 = v115;
  aBlock = MEMORY[0x1E69E9820];
  v156 = 1107296256;
  v157 = sub_1CEFCA444;
  v158 = &block_descriptor_546;
  v116 = _Block_copy(&aBlock);
  v150 = v109;
  v117 = v110;

  v118 = v127;
  sub_1CF9E63F8();
  v154 = MEMORY[0x1E69E7CC0];
  sub_1CF927324(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v119 = v130;
  v120 = v132;
  sub_1CF9E77B8();
  v121 = v143;
  sub_1CF9E7308();
  _Block_release(v116);
  (*(v131 + 8))(v119, v120);
  (*(v128 + 8))(v118, v129);

  v122 = v151;
  v123 = fpfs_adopt_log();

  v124 = v150;
}

void sub_1CF925DB0(void *a1, char a2, NSObject *a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_1CF0BA8A4(a1);
  v12 = a5;
  if (objc_sync_enter(a3))
  {
    swift_unknownObjectRetain();
    sub_1CF091F00(a1);

    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, a3);
  }

  swift_beginAccess();
  sub_1CF0BA8A4(a1);
  if (a2)
  {
    v13 = v12;
    v14 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_1CF1D40B0(a1, v13, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v19;
  }

  else
  {
    v16 = v12;
    v17 = *(a6 + 16);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(a6 + 16);
    *(a6 + 16) = 0x8000000000000000;
    sub_1CF1D2E08(a1, v16, v18);

    *(a6 + 16) = v20;
  }

  swift_endAccess();
  if (objc_sync_exit(a3))
  {
    swift_unknownObjectRetain();
    sub_1CF091F00(a1);

    sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, a3);
  }

  sub_1CF091F00(a1);

  dispatch_group_leave(a3);
}

uint64_t sub_1CF925F84(void (*a1)(uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a3 + 16);
  swift_beginAccess();
  v8 = *(a4 + 16);

  a1(v7, v8, 0);
}

uint64_t sub_1CF926228(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *), uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  a3(v9);
  return sub_1CEFCCC44(v9, a5, a6);
}

uint64_t sub_1CF926288(uint64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  v3[0] = 0;
  v3[1] = 0;
  return a2(v3, a1);
}

uint64_t sub_1CF9262C8(void *a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  *(&v10 - v6) = a1;
  swift_storeEnumTagMultiPayload();
  v8 = a1;
  a2(v7);
  return sub_1CEFCCC44(v7, &qword_1EC4C5020, &qword_1CFA0A278);
}

void sub_1CF926394(void *a1, void (*a2)(void *))
{
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = a1;
  v6 = 1;
  v4 = a1;
  a2(v5);
}

void sub_1CF926400(void *a1, void (*a2)(void **))
{
  v5 = a1;
  v6 = 1;
  v4 = a1;
  a2(&v5);
}

void sub_1CF926514(uint64_t a1, void (*a2)(void *), uint64_t a3, void **a4)
{
  v5 = *a1;
  if (*(a1 + 8))
  {
    v6 = v5;
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v9 = *a4;
    v10 = v5;
    v11 = sub_1CF906288(v5, v9);
    v7 = v12;
    v8 = v13;
    sub_1CF091F00(v5);
    v5 = v11;
  }

  v15[0] = v5;
  v15[1] = v7;
  v14 = v8 & 1;
  v16 = v14;
  a2(v15);

  sub_1CF9272D8(v5, v7, v14);
}

uint64_t objectdestroy_56Tm(void (*a1)(void))
{
  v3 = v1[2];

  a1(v1[3]);
  v4 = v1[5];

  return swift_deallocObject();
}

void sub_1CF92672C(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6[0] = a1;
  v6[1] = 0;
  v7 = 1;
  v5 = a1;
  v4(v6);
}

uint64_t sub_1CF9267E4(uint64_t a1, char a2, unint64_t a3)
{
  v6 = type metadata accessor for VFSItem(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v62 - v15;
  v17 = sub_1CF9E6118();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v62 - v27;
  if (*(a1 + *(v10 + 56)) == 1)
  {
    v63 = v26;
    v64 = v25;
    v29 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFCCBDC(a1, v16, &qword_1EC4C5220, &qword_1CFA0A270);
    sub_1CEFD09A0(a3);
    sub_1CEFD09A0(a3);
    v30 = sub_1CF9E6108();
    v31 = sub_1CF9E7298();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v65 = v33;
      *v32 = 136315394;
      sub_1CEFDA2E4(v16, v9, type metadata accessor for VFSItem);
      sub_1CEFCCC44(v16, &qword_1EC4C5220, &qword_1CFA0A270);
      v34 = sub_1CF255338();
      v36 = v35;
      sub_1CEFD5398(v9, type metadata accessor for VFSItem);
      v37 = sub_1CEFD0DF0(v34, v36, &v65);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2080;
      v38 = sub_1CEFD11AC(a3);
      v40 = v39;
      sub_1CEFD0A98(a3);
      sub_1CEFD0A98(a3);
      v41 = sub_1CEFD0DF0(v38, v40, &v65);

      *(v32 + 14) = v41;
      _os_log_impl(&dword_1CEFC7000, v30, v31, "Found item on disk, but item is not accessible yet %s, request %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v33, -1, -1);
      MEMORY[0x1D386CDC0](v32, -1, -1);
    }

    else
    {
      sub_1CEFD0A98(a3);
      sub_1CEFCCC44(v16, &qword_1EC4C5220, &qword_1CFA0A270);
      sub_1CEFD0A98(a3);
    }

    (*(v63 + 8))(v28, v64);
    return 0;
  }

  if ((a2 & 1) != 0 && !*(a1 + *(v10 + 52)))
  {
    v63 = v26;
    v64 = v25;
    v49 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFCCBDC(a1, v13, &qword_1EC4C5220, &qword_1CFA0A270);
    sub_1CEFD09A0(a3);
    sub_1CEFD09A0(a3);
    v50 = sub_1CF9E6108();
    v51 = sub_1CF9E7298();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v65 = v53;
      *v52 = 136315394;
      sub_1CEFDA2E4(v13, v9, type metadata accessor for VFSItem);
      sub_1CEFCCC44(v13, &qword_1EC4C5220, &qword_1CFA0A270);
      v54 = sub_1CF255338();
      v56 = v55;
      sub_1CEFD5398(v9, type metadata accessor for VFSItem);
      v57 = sub_1CEFD0DF0(v54, v56, &v65);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2080;
      v58 = sub_1CEFD11AC(a3);
      v60 = v59;
      sub_1CEFD0A98(a3);
      sub_1CEFD0A98(a3);
      v61 = sub_1CEFD0DF0(v58, v60, &v65);

      *(v52 + 14) = v61;
      _os_log_impl(&dword_1CEFC7000, v50, v51, "Found item on disk, but item is not reconciled yet %s, request %s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v53, -1, -1);
      MEMORY[0x1D386CDC0](v52, -1, -1);
    }

    else
    {
      sub_1CEFD0A98(a3);
      sub_1CEFCCC44(v13, &qword_1EC4C5220, &qword_1CFA0A270);
      sub_1CEFD0A98(a3);
    }

    (*(v63 + 8))(v23, v64);
    return 0;
  }

  v42 = v25;
  result = 1;
  if (*(a1 + 8) == 2 && *a1 == 1)
  {
    v44 = v26;
    v45 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v46 = sub_1CF9E6108();
    v47 = sub_1CF9E7298();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1CEFC7000, v46, v47, "Found item on the trash, lookup the root to make sure it's materialized", v48, 2u);
      MEMORY[0x1D386CDC0](v48, -1, -1);
    }

    (*(v44 + 8))(v20, v42);
    return 0;
  }

  return result;
}

unint64_t sub_1CF926E84(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1CF91200C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + v4, *v5, *(v5 + 8), *(v5 + 9));
}

uint64_t objectdestroy_183Tm()
{
  v1 = v0[2];

  sub_1CEFD0A98(v0[3]);
  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1CF927098()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v1(v4);
  return sub_1CEFCCC44(v4, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t objectdestroy_284Tm()
{
  v1 = v0[2];

  sub_1CEFD0A98(v0[3]);
  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t objectdestroy_166Tm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_1CEFD0A98(*(v0 + 48));
  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return swift_deallocObject();
}

void sub_1CF9272D8(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {

    a1 = a2;
  }
}

uint64_t sub_1CF927324(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_396Tm(void (*a1)(void))
{
  v3 = *(v1 + 32);

  a1(*(v1 + 40));
  a1(*(v1 + 48));

  return swift_deallocObject();
}

uint64_t objectdestroy_77Tm_1()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF927514(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_1CF927618(uint64_t a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1CF924568(a1, v4, v5, v6, v7, v8);
}

void sub_1CF927690(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for VFSItem(0) - 8);
  sub_1CF924868(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), (v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + 8) & ~*(v6 + 80))));
}

void sub_1CF92779C()
{
  v1 = *(v0 + 16);
  v2 = sub_1CF9E57E8();
  (*(v1 + 16))(v1, v2);
}

uint64_t objectdestroy_489Tm(void (*a1)(void), void (*a2)(void))
{
  a1(v2[2]);
  a2(v2[3]);
  v4 = v2[6];

  return swift_deallocObject();
}

uint64_t objectdestroy_447Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  v2 = *(v1 + 40);

  return swift_deallocObject();
}

uint64_t objectdestroy_412Tm(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return swift_deallocObject();
}

uint64_t objectdestroy_462Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF927A5C(unint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  sub_1CF7D9384(a1);
  v3();
}

uint64_t objectdestroy_762Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1CF927BEC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, a2, 0);
}

uint64_t sub_1CF927C18(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void), double a5, double a6)
{
  v41 = swift_allocObject();
  *(v41 + 16) = a4;
  _Block_copy(a4);
  v10 = sub_1CF4E40EC(MEMORY[0x1E69E7CC0]);
  if (a2 >> 62)
  {
LABEL_26:
    v11 = sub_1CF9E7818();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_3:
      v12 = 0;
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1D3869C30](v12, a2);
        }

        else
        {
          if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v15 = *(a2 + 8 * v12 + 32);
        }

        v16 = v15;
        v17 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = sub_1CF7BF8D8(v16);
        v21 = v10[2];
        v22 = (v19 & 1) == 0;
        v23 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
          goto LABEL_23;
        }

        v24 = v19;
        if (v10[3] >= v23)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v19)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1CF7D338C();
            if (v24)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1CF7CBBA8(v23, isUniquelyReferenced_nonNull_native);
          v25 = sub_1CF7BF8D8(v16);
          if ((v24 & 1) != (v26 & 1))
          {

            sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
            _Block_release(a4);
            result = sub_1CF9E8108();
            __break(1u);
            return result;
          }

          v20 = v25;
          if (v24)
          {
LABEL_4:
            v13 = v10[7];
            v14 = *(v13 + 8 * v20);
            *(v13 + 8 * v20) = MEMORY[0x1E69E7CC0];

            goto LABEL_5;
          }
        }

        v10[(v20 >> 6) + 8] |= 1 << v20;
        *(v10[6] + 8 * v20) = v16;
        *(v10[7] + 8 * v20) = MEMORY[0x1E69E7CC0];
        v27 = v10[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_24;
        }

        v10[2] = v29;
LABEL_5:
        ++v12;
      }

      while (v17 != v11);
    }
  }

  v30 = sub_1CF7BC0F4(v10);

  v31 = sub_1CF919738(v30);

  if (v31)
  {
    v32 = *(a3 + 16);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_1CF067718;
    *(v33 + 24) = v41;
    *(v33 + 32) = a3;
    *(v33 + 40) = a1;
    *(v33 + 48) = a5;
    *(v33 + 56) = a6;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_1CF9283D4;
    *(v34 + 24) = v33;
    v35 = swift_allocObject();
    v35[2] = v31;
    v35[3] = sub_1CF9283D4;
    v35[4] = v33;
    v35[5] = v32;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1CF9283E8;
    *(v36 + 24) = v34;
    swift_retain_n();

    swift_unknownObjectRetain();
    v37 = v32;

    sub_1CEFD4024("withFPItemIdentifier(forDictionary:cb:)", 39, 2, sub_1CF9284C0, v36, sub_1CF9283CC, v35);
  }

  else
  {
    a4[2](a4, 0);
  }
}

uint64_t sub_1CF928030(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void), double a5, double a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  _Block_copy(a4);
  v13 = sub_1CF919738(a2);
  if (v13)
  {
    v14 = v13;
    v15 = *(a3 + 16);
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1CF067718;
    *(v16 + 24) = v12;
    *(v16 + 32) = a3;
    *(v16 + 40) = a1;
    *(v16 + 48) = a5;
    *(v16 + 56) = a6;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1CF92823C;
    *(v17 + 24) = v16;
    v18 = swift_allocObject();
    v18[2] = v14;
    v18[3] = sub_1CF92823C;
    v18[4] = v16;
    v18[5] = v15;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1CF9283E8;
    *(v19 + 24) = v17;
    swift_retain_n();

    swift_unknownObjectRetain();
    v20 = v15;

    sub_1CEFD4024("withFPItemIdentifier(forDictionary:cb:)", 39, 2, sub_1CF927554, v19, sub_1CF8F89E4, v18);
  }

  else
  {
    a4[2](a4, 0);
  }
}

uint64_t objectdestroy_537Tm(void (*a1)(void))
{
  v3 = v1[3];

  v4 = v1[4];

  a1(v1[5]);

  return swift_deallocObject();
}

uint64_t objectdestroy_842Tm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF928300(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v5 = v1[4];
  return v3(&v5, a1);
}

void sub_1CF9284C8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v12 = sub_1CF9E6D48();

  v16 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v11(v12, a3, a4, a5, a6);
}

void sub_1CF9285C4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_1CF92865C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *(*a5)())
{
  v70 = a4;
  v71 = a5;
  LODWORD(v74) = a3;
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v63 - v17;
  v19 = type metadata accessor for Signpost(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v73 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v5;
  v22 = *(v5 + qword_1EDEBBC38);
  v64 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v23 = qword_1EDEBBE40;
  (*(v9 + 56))(v18, 1, 1, v8);
  aBlock = 0x74616220636E7973;
  v76 = 0xEB00000000206863;
  v68 = a1;
  v69 = a2;
  v24 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v24);

  v65 = v76;
  v66 = aBlock;
  sub_1CEFCCBDC(v18, v15, &unk_1EC4BED20, &unk_1CFA00700);
  v25 = *(v9 + 48);
  if (v25(v15, 1, v8) == 1)
  {
    v26 = v23;
    v27 = v67;
    sub_1CF9E6048();
    if (v25(v15, 1, v8) != 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v27 = v67;
    (*(v9 + 32))(v67, v15, v8);
  }

  v28 = v73;
  (*(v9 + 16))(v73, v27, v8);
  *(v28 + *(v19 + 20)) = v23;
  v29 = v28 + *(v19 + 24);
  *v29 = "DB queue wait";
  *(v29 + 8) = 13;
  *(v29 + 16) = 2;
  v30 = v23;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1CF9FA450;
  *(v31 + 56) = MEMORY[0x1E69E6158];
  *(v31 + 64) = sub_1CEFD51C4();
  v32 = v65;
  *(v31 + 32) = v66;
  *(v31 + 40) = v32;
  v61 = v31;
  LOBYTE(v60) = 2;
  v59 = 2;
  sub_1CF9E6028();

  (*(v9 + 8))(v27, v8);
  v33 = sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
  v67 = &v63;
  v34 = v72[8];
  MEMORY[0x1EEE9AC00](v33);
  v36 = v68;
  v35 = v69;
  *(&v63 - 8) = v28;
  *(&v63 - 7) = v36;
  *(&v63 - 6) = v35;
  *(&v63 - 40) = v74;
  v59 = v37;
  v60 = v70;
  v61 = v71;
  v38 = fpfs_current_log();
  v74 = fpfs_adopt_log();
  v82 = 0;
  v83 = 1;
  aBlock = sub_1CF9E73C8();
  v76 = v39;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v40 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v40);

  sub_1CF9E6978();

  v41 = __fp_log_fork();

  v82 = v41;
  v83 = 0;
  MEMORY[0x1EEE9AC00](v42);
  *(&v63 - 8) = v38;
  *(&v63 - 7) = &v82;
  *(&v63 - 6) = v34;
  *(&v63 - 5) = "syncBatch(function:updateBlock:)";
  v59 = 32;
  LOBYTE(v60) = 2;
  v61 = sub_1CF92C308;
  v62 = &v63 - 10;
  v84 = 1;
  v81 = 0;
  v43 = swift_allocObject();
  v43[2] = &v84;
  v43[3] = sub_1CF2B16F4;
  v43[4] = &v63 - 10;
  v43[5] = &v81;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_1CF2B16B0;
  *(v44 + 24) = v43;
  v79 = sub_1CEFFD054;
  v80 = v44;
  aBlock = MEMORY[0x1E69E9820];
  v76 = 1107296256;
  v77 = sub_1CEFFD02C;
  v78 = &block_descriptor_50;
  v45 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v34, v45);
  _Block_release(v45);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v46 = v81;
  if (!v81)
  {
    if ((v84 & 1) == 0)
    {

      v51 = v74;
      v52 = fpfs_adopt_log();

      sub_1CF0593C8(v73);
      v53 = v64;
      v54 = fpfs_adopt_log();

      return;
    }

    goto LABEL_16;
  }

  swift_willThrow();

  v47 = v74;
  v48 = fpfs_adopt_log();

  sub_1CF0593C8(v73);
  aBlock = v46;
  v49 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  if (swift_dynamicCast())
  {

    sub_1CF2CA194();
    swift_allocError();
    swift_willThrow();
    v50 = aBlock;
  }

  else
  {

    v55 = *(*v72 + 496);
    v56 = v46;
    v55(v46, 1, "syncBatch(function:updateBlock:)", 32, 2);

    v50 = v46;
  }

  v57 = v64;
  v58 = fpfs_adopt_log();
}

void sub_1CF928EDC(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t (*a5)@<X0>(uint64_t a1@<X8>)@<X4>, uint64_t a6@<X8>)
{
  v81 = a4;
  v82 = a5;
  LODWORD(v86) = a3;
  v73[0] = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C45C8, qword_1CFA164E8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v74 = v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v83 = v73 - v13;
  v14 = sub_1CF9E6068();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v78 = (v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v73 - v23;
  v25 = type metadata accessor for Signpost(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v85 = v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v6;
  v28 = *(v6 + qword_1EDEBBC38);
  v75 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v29 = qword_1EDEBBE40;
  (*(v15 + 56))(v24, 1, 1, v14);
  aBlock = 0x74616220636E7973;
  v88 = 0xEB00000000206863;
  v79 = a1;
  v80 = a2;
  v30 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v30);

  v76 = v88;
  v77 = aBlock;
  sub_1CEFCCBDC(v24, v22, &unk_1EC4BED20, &unk_1CFA00700);
  v31 = *(v15 + 48);
  if (v31(v22, 1, v14) == 1)
  {
    v32 = v29;
    v33 = v78;
    sub_1CF9E6048();
    v34 = v33;
    if (v31(v22, 1, v14) != 1)
    {
      sub_1CEFCCC44(v22, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v34 = v78;
    (*(v15 + 32))(v78, v22, v14);
  }

  v35 = v85;
  (*(v15 + 16))(v85, v34, v14);
  *(v35 + *(v25 + 20)) = v29;
  v36 = v35 + *(v25 + 24);
  *v36 = "DB queue wait";
  *(v36 + 8) = 13;
  *(v36 + 16) = 2;
  v37 = v29;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1CF9FA450;
  *(v38 + 56) = MEMORY[0x1E69E6158];
  *(v38 + 64) = sub_1CEFD51C4();
  v39 = v76;
  *(v38 + 32) = v77;
  *(v38 + 40) = v39;
  v71 = v38;
  LOBYTE(v70) = 2;
  v69 = 2;
  sub_1CF9E6028();

  (*(v15 + 8))(v34, v14);
  v40 = sub_1CEFCCC44(v24, &unk_1EC4BED20, &unk_1CFA00700);
  v78 = v73;
  v41 = v84[8];
  MEMORY[0x1EEE9AC00](v40);
  v43 = v79;
  v42 = v80;
  v73[-8] = v35;
  v73[-7] = v43;
  v73[-6] = v42;
  LOBYTE(v73[-5]) = v86;
  v69 = v44;
  v70 = v81;
  v71 = v82;
  v45 = fpfs_current_log();
  v46 = fpfs_adopt_log();
  v93 = 0;
  v94 = 1;
  aBlock = sub_1CF9E73C8();
  v88 = v47;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v48 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v48);

  sub_1CF9E6978();

  v49 = __fp_log_fork();

  v86 = v73;
  v93 = v49;
  v94 = 0;
  MEMORY[0x1EEE9AC00](v50);
  v73[-8] = v45;
  v73[-7] = &v93;
  v73[-6] = v41;
  v73[-5] = "syncBatch(function:updateBlock:)";
  v69 = 32;
  LOBYTE(v70) = 2;
  v71 = sub_1CF92D9EC;
  v72 = &v73[-10];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v52 = *(v51 - 8);
  v53 = v83;
  (*(v52 + 56))(v83, 1, 1, v51);
  v95 = 0;
  v54 = swift_allocObject();
  v54[2] = v53;
  v54[3] = sub_1CF2B16F4;
  v54[4] = &v73[-10];
  v54[5] = &v95;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_1CF92DA18;
  *(v55 + 24) = v54;
  v91 = sub_1CF1C0B54;
  v92 = v55;
  aBlock = MEMORY[0x1E69E9820];
  v88 = 1107296256;
  v89 = sub_1CEFFD02C;
  v90 = &block_descriptor_89_0;
  v56 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v41, v56);
  _Block_release(v56);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v57 = v95;
  if (!v95)
  {
    v61 = v74;
    sub_1CEFCCBDC(v53, v74, &qword_1EC4C45C8, qword_1CFA164E8);
    if ((*(v52 + 48))(v61, 1, v51) != 1)
    {
      sub_1CF92DA24(v61, v73[0]);
      sub_1CEFCCC44(v53, &qword_1EC4C45C8, qword_1CFA164E8);

      v62 = fpfs_adopt_log();

      sub_1CF0593C8(v85);
      v63 = v75;
      v64 = fpfs_adopt_log();

      return;
    }

    goto LABEL_16;
  }

  swift_willThrow();
  sub_1CEFCCC44(v53, &qword_1EC4C45C8, qword_1CFA164E8);

  v58 = fpfs_adopt_log();

  sub_1CF0593C8(v85);
  aBlock = v57;
  v59 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  if (swift_dynamicCast())
  {

    sub_1CF2CA194();
    swift_allocError();
    swift_willThrow();
    v60 = aBlock;
  }

  else
  {

    v65 = *(*v84 + 496);
    v66 = v57;
    v65(v57, 1, "syncBatch(function:updateBlock:)", 32, 2);

    v60 = v57;
  }

  v67 = v75;
  v68 = fpfs_adopt_log();
}

void *sub_1CF9298C8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42[2] = a7;
  v42[1] = a6;
  v49 = a5;
  LODWORD(v46) = a4;
  v44 = a3;
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v45 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v42 - v17;
  v19 = type metadata accessor for Signpost(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E7458();
  v23 = *(v19 + 24);
  v24 = *(a1 + *(v19 + 20));
  v25 = *(a1 + v23);
  v26 = *(a1 + v23 + 8);
  v27 = *(a1 + v23 + 16);
  sub_1CF9E6038();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v28 = qword_1EDEBBE40;
  (*(v9 + 56))(v18, 1, 1, v8);
  v47 = 0x74616220636E7973;
  v48 = 0xEB00000000206863;
  v29 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v29);

  v43 = v48;
  v44 = v47;
  v46 = v18;
  sub_1CEFCCBDC(v18, v15, &unk_1EC4BED20, &unk_1CFA00700);
  v30 = *(v9 + 48);
  if (v30(v15, 1, v8) == 1)
  {
    v31 = v28;
    v32 = v45;
    sub_1CF9E6048();
    if (v30(v15, 1, v8) != 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v32 = v45;
    (*(v9 + 32))(v45, v15, v8);
  }

  (*(v9 + 16))(v22, v32, v8);
  *&v22[*(v19 + 20)] = v28;
  v33 = &v22[*(v19 + 24)];
  *v33 = "DB queue";
  *(v33 + 1) = 8;
  v33[16] = 2;
  v34 = v28;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1CF9FA450;
  *(v35 + 56) = MEMORY[0x1E69E6158];
  *(v35 + 64) = sub_1CEFD51C4();
  v36 = v43;
  *(v35 + 32) = v44;
  *(v35 + 40) = v36;
  sub_1CF9E6028();

  (*(v9 + 8))(v32, v8);
  sub_1CEFCCC44(v46, &unk_1EC4BED20, &unk_1CFA00700);
  v37 = v49;
  is_cancelled = fp_task_tracker_is_cancelled(*(*(v49 + 168) + 16));
  if (is_cancelled)
  {
    sub_1CF2CA194();
    swift_allocError();
    swift_willThrow();
LABEL_11:
    sub_1CF9E7458();
    sub_1CF9E6038();
    return sub_1CF0593C8(v22);
  }

  v39 = MEMORY[0x1EEE9AC00](is_cancelled);
  v40 = v42[3];
  result = (*(*v37 + 2528))(&v47, sub_1CF8F9348, v39);
  if (v40 || (v47 & 1) == 0)
  {
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF929E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v49 = a6;
  v47 = a7;
  v48 = a5;
  v58 = a4;
  LODWORD(v55) = a3;
  v53 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C45C8, qword_1CFA164E8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v51 = &v46 - v10;
  v11 = sub_1CF9E6068();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v46 - v20;
  v22 = type metadata accessor for Signpost(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E7458();
  v26 = *(v22 + 24);
  v27 = *(a1 + *(v22 + 20));
  v28 = *(a1 + v26);
  v29 = *(a1 + v26 + 8);
  v30 = *(a1 + v26 + 16);
  sub_1CF9E6038();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v31 = qword_1EDEBBE40;
  (*(v12 + 56))(v21, 1, 1, v11);
  v56 = 0x74616220636E7973;
  v57 = 0xEB00000000206863;
  v32 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v32);

  v52 = v57;
  v53 = v56;
  v55 = v21;
  sub_1CEFCCBDC(v21, v19, &unk_1EC4BED20, &unk_1CFA00700);
  v33 = *(v12 + 48);
  if (v33(v19, 1, v11) == 1)
  {
    v34 = v31;
    v35 = v54;
    sub_1CF9E6048();
    if (v33(v19, 1, v11) != 1)
    {
      sub_1CEFCCC44(v19, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v35 = v54;
    (*(v12 + 32))(v54, v19, v11);
  }

  (*(v12 + 16))(v25, v35, v11);
  *&v25[*(v22 + 20)] = v31;
  v36 = &v25[*(v22 + 24)];
  *v36 = "DB queue";
  *(v36 + 1) = 8;
  v36[16] = 2;
  v31;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1CF9FA450;
  *(v37 + 56) = MEMORY[0x1E69E6158];
  *(v37 + 64) = sub_1CEFD51C4();
  v38 = v52;
  *(v37 + 32) = v53;
  *(v37 + 40) = v38;
  sub_1CF9E6028();

  (*(v12 + 8))(v35, v11);
  sub_1CEFCCC44(v55, &unk_1EC4BED20, &unk_1CFA00700);
  v39 = v58;
  is_cancelled = fp_task_tracker_is_cancelled(*(*(v58 + 168) + 16));
  if (is_cancelled)
  {
    sub_1CF2CA194();
    swift_allocError();
    swift_willThrow();
LABEL_10:
    sub_1CF9E7458();
LABEL_11:
    sub_1CF9E6038();
    return sub_1CF0593C8(v25);
  }

  MEMORY[0x1EEE9AC00](is_cancelled);
  v41 = *(*v39 + 2528);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v43 = v50;
  v44 = v51;
  v41(sub_1CF92DA94, &v46 - 6, v42);
  if (v43)
  {
    goto LABEL_10;
  }

  result = (*(*(v42 - 8) + 48))(v44, 1, v42);
  if (result != 1)
  {
    sub_1CF92DA24(v44, v47);
    sub_1CF9E7458();
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF92A42C(void *a1, uint64_t (*a2)(void))
{
  result = a2();
  if (!v2)
  {
    v5 = a1[3];
    v6 = a1[4];
    v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
    return sub_1CF5A62B4(v7, v5, v6);
  }

  return result;
}

void sub_1CF92A4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v11 = sub_1CF9E6D28();
  if (a5)
  {
    v12 = sub_1CF9E57E8();
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  (*(a6 + 16))(a6, v11, a2, a3, a4);
}

void sub_1CF92A588(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
    v5 = sub_1CF9E6D28();
  }

  if (a2)
  {
    v6 = sub_1CF9E57E8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_1CF92A634(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v12 = sub_1CF9E6D28();
  sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  v13 = sub_1CF9E6D28();
  if (a6)
  {
    v14 = sub_1CF9E57E8();
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  (*(a7 + 16))(a7, v12, v13, a3 & 1, a4, a5);
}

id sub_1CF92A738()
{
  sub_1CF92A904();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FPFSSearchEnumerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for FPFSSearchEnumerator()
{
  result = qword_1EC4C52F8;
  if (!qword_1EC4C52F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CF92A904()
{
  v1 = v0;
  v2 = objc_sync_enter(v0);
  if (v2)
  {
    MEMORY[0x1EEE9AC00](v2);
    v20 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v19, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v3 = v0[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_invalidated];
  v1[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_invalidated] = 1;
  v4 = objc_sync_exit(v1);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v20 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v19, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if ((v3 & 1) == 0)
  {
    v5 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_keepAlive];
    if (v5)
    {
      v6 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_keepAlive + 8];

      v5(v7);
      sub_1CF045404(v5);
    }

    [*&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_extensionEnumerator] invalidate];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = swift_unknownObjectWeakLoadStrong();

      if (v10)
      {
        v11 = [v10 session];

        [v11 asyncUnregisterLifetimeExtensionForObject_];
        swift_unknownObjectRelease();
      }
    }

    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = *(v12 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue);
      v15 = swift_unknownObjectWeakLoadStrong();
      if (v15)
      {
        v16 = v15;
        v21 = [v15 log];
      }

      else
      {
        v21 = 0;
      }

      v17 = swift_allocObject();
      *(v17 + 16) = v13;
      *(v17 + 24) = v1;
      v18 = v13;
      sub_1CF01001C(v21, "enumeratorHasBeenInvalidated(_:)", 32, 2, sub_1CF7B9C00, v17);
    }
  }
}

uint64_t sub_1CF92AC74(unint64_t a1, void *a2, void *a3, uint64_t a4, id a5, int a6, void *a7, void *a8, uint64_t (*a9)(unint64_t, void *, void *, uint64_t, void), uint64_t a10)
{
  v13 = a4;
  v15 = a9;
  if (a5)
  {
    v16 = a5;
    v17 = a7;
    v18 = a8;
    v19 = sub_1CF9E6108();
    v20 = sub_1CF9E72A8();

    if (os_log_type_enabled(v19, v20))
    {
      v61 = v13;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v66 = v23;
      *v21 = 138412802;
      *(v21 + 4) = v17;
      *v22 = v17;
      *(v21 + 12) = 2080;
      v24 = v17;
      v25 = NSFileProviderPage.description.getter();
      v27 = sub_1CEFD0DF0(v25, v26, &v66);

      *(v21 + 14) = v27;
      *(v21 + 22) = 2112;
      swift_getErrorValue();
      v28 = Error.prettyDescription.getter(v65);
      *(v21 + 24) = v28;
      v22[1] = v28;
      _os_log_impl(&dword_1CEFC7000, v19, v20, "📖  %@: enumerating page %s failed: %@", v21, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1D386CDC0](v23, -1, -1);
      v29 = v21;
      v13 = v61;
      MEMORY[0x1D386CDC0](v29, -1, -1);
    }

    else
    {
    }

    return a9(a1, a2, a3, v13, a5);
  }

  else
  {
    v31 = a3;
    swift_bridgeObjectRetain_n();
    v32 = a7;
    v33 = a8;
    v34 = a2;
    v35 = sub_1CF9E6108();
    v36 = sub_1CF9E7298();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v66 = v60;
      *v37 = 138413314;
      *(v37 + 4) = v32;
      v59 = v38;
      *v38 = v32;
      *(v37 + 12) = 2080;
      v39 = v32;
      v40 = NSFileProviderPage.description.getter();
      v42 = sub_1CEFD0DF0(v40, v41, &v66);

      *(v37 + 14) = v42;
      *(v37 + 22) = 2048;
      if (a1 >> 62)
      {
        v43 = sub_1CF9E7818();
      }

      else
      {
        v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v44 = 0x3E6C696E3CLL;

      *(v37 + 24) = v43;

      *(v37 + 32) = 2080;
      if (a2)
      {
        v45 = NSFileProviderPage.description.getter();
        v47 = v46;
      }

      else
      {
        v47 = 0xE500000000000000;
        v45 = 0x3E6C696E3CLL;
      }

      v51 = sub_1CEFD0DF0(v45, v47, &v66);

      *(v37 + 34) = v51;
      *(v37 + 42) = 2080;
      if (a3)
      {
        v52 = a3;
        v53 = sub_1CF9E5B88();
        v55 = v54;
        v44 = sub_1CF9E5AB8();
        v57 = v56;
        sub_1CEFE4714(v53, v55);
      }

      else
      {
        v52 = 0;
        v57 = 0xE500000000000000;
      }

      v58 = sub_1CEFD0DF0(v44, v57, &v66);

      *(v37 + 44) = v58;
      _os_log_impl(&dword_1CEFC7000, v35, v36, "📖  %@: enumerating page %s done: %ld items next %s anchor:%s", v37, 0x34u);
      sub_1CEFCCC44(v59, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v59, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v60, -1, -1);
      MEMORY[0x1D386CDC0](v37, -1, -1);

      v49 = a4;
      v15 = a9;
      v50 = v52;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v49 = a4;
      v50 = a3;
    }

    return v15(a1, a2, v50, v49, 0);
  }
}

uint64_t sub_1CF92B46C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = objc_sync_enter(Strong);
    if (v4)
    {
      MEMORY[0x1EEE9AC00](v4);
      v15 = v3;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, v14, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v5 = *&v3[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs];

    v6 = objc_sync_exit(v3);
    if (v6)
    {
      MEMORY[0x1EEE9AC00](v6);
      v15 = v3;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5290, v14, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    if (v5)
    {

LABEL_7:
      v9 = *(v5 + 2);
      MEMORY[0x1EEE9AC00](v7);
      v15 = v5;
      v16 = a1;

      sub_1CF92865C("decorateItems(items:)", 21, 2, sub_1CF92C2EC, v14);
    }

    v8 = *&v3[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startupQueue];
    MEMORY[0x1EEE9AC00](v6);
    v15 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4C28, &qword_1CFA17E60);
    sub_1CF9E7398();

    v5 = v18;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  v11 = sub_1CF9E6108();
  v12 = sub_1CF9E72A8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1CEFC7000, v11, v12, "backend or FPFS is invalidated, returning error", v13, 2u);
    MEMORY[0x1D386CDC0](v13, -1, -1);
  }

  type metadata accessor for NSFileProviderError(0);
  v17 = -1002;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF01C4BC(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
  sub_1CF9E57D8();
  return swift_willThrow();
}

void *sub_1CF92B7B4(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);
  v7 = sub_1CF01C4BC(qword_1EDEA8860, type metadata accessor for VFSFileTree);
  return sub_1CF769068(a3, 0, v6, v4, v7, &off_1F4BF8588, *(v5 + 8));
}

uint64_t sub_1CF92B85C(unint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, id a6, int a7, void *a8, uint64_t a9, unint64_t a10, uint64_t (*a11)(unint64_t, uint64_t, void, void *, uint64_t, id), uint64_t a12)
{
  v13 = a5;
  v14 = a4;
  v15 = a2;
  v17 = a11;
  if (a6)
  {
    v18 = a6;
    v19 = a6;
    v20 = a8;
    sub_1CEFE42D4(a9, a10);
    v21 = sub_1CF9E6108();
    v22 = sub_1CF9E72A8();

    sub_1CEFE4714(a9, a10);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v65 = v25;
      *v23 = 138412802;
      *(v23 + 4) = v20;
      *v24 = v20;
      *(v23 + 12) = 2080;
      v26 = v20;
      v27 = sub_1CF9E5AB8();
      v29 = sub_1CEFD0DF0(v27, v28, &v65);

      *(v23 + 14) = v29;
      *(v23 + 22) = 2112;
      swift_getErrorValue();
      v30 = Error.prettyDescription.getter(v64);
      *(v23 + 24) = v30;
      v24[1] = v30;
      _os_log_impl(&dword_1CEFC7000, v21, v22, "📖  %@: enumerating from change %s failed: %@", v23, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1D386CDC0](v25, -1, -1);
      v31 = v23;
      v17 = a11;
      MEMORY[0x1D386CDC0](v31, -1, -1);
    }

    else
    {
    }

    v14 = a4;
    v13 = a5;
    v53 = a1;
    v15 = a2;
  }

  else
  {

    v32 = a8;
    sub_1CEFE42D4(a9, a10);
    v33 = v14;

    v34 = sub_1CF9E6108();
    v35 = sub_1CF9E7298();

    sub_1CEFE4714(a9, a10);
    if (os_log_type_enabled(v34, v35))
    {
      v62 = v15;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v65 = v58;
      *v36 = 138413570;
      *(v36 + 4) = v32;
      v56 = v37;
      *v37 = v32;
      *(v36 + 12) = 2080;
      v38 = v32;
      v39 = sub_1CF9E5AB8();
      v41 = sub_1CEFD0DF0(v39, v40, &v65);

      *(v36 + 14) = v41;
      *(v36 + 22) = 2048;
      if (a1 >> 62)
      {
        v42 = sub_1CF9E7818();
      }

      else
      {
        v42 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v36 + 24) = v42;

      *(v36 + 32) = 2048;
      if (v62 >> 62)
      {
        v43 = sub_1CF9E7818();
      }

      else
      {
        v43 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v36 + 34) = v43;

      *(v36 + 42) = 2080;
      if (a3)
      {
        v44 = 0x6F6D20736168202CLL;
      }

      else
      {
        v44 = 0;
      }

      if (a3)
      {
        v45 = 0xEA00000000006572;
      }

      else
      {
        v45 = 0xE000000000000000;
      }

      v46 = sub_1CEFD0DF0(v44, v45, &v65);

      *(v36 + 44) = v46;
      *(v36 + 52) = 2080;
      if (v14)
      {
        v47 = sub_1CF9E5B88();
        v49 = v48;
        v50 = sub_1CF9E5AB8();
        v52 = v51;
        sub_1CEFE4714(v47, v49);
      }

      else
      {
        v52 = 0xE500000000000000;
        v50 = 0x3E6C696E3CLL;
      }

      v54 = sub_1CEFD0DF0(v50, v52, &v65);

      *(v36 + 54) = v54;
      _os_log_impl(&dword_1CEFC7000, v34, v35, "📖  %@: enumerating from change %s done: %ld updated, %ld deleted%s, next anchor:%s", v36, 0x3Eu);
      sub_1CEFCCC44(v56, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v56, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v58, -1, -1);
      MEMORY[0x1D386CDC0](v36, -1, -1);

      v17 = a11;
      v53 = a1;
      v15 = v62;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v17 = a11;
      v53 = a1;
    }

    v18 = 0;
  }

  return v17(v53, v15, a3 & 1, v14, v13, v18);
}

unint64_t sub_1CF92C078()
{
  sub_1CF9E7948();

  [*(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_lifetimeExtender) requestEffectivePID];
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

uint64_t sub_1CF92C164()
{
  result = sub_1CF9E6118();
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

uint64_t sub_1CF92C244()
{
  v1 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_searchIdentifier);
  v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v4 = v3;
  if (v2 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1CF9E8048();
  }

  return v7 & 1;
}

void sub_1CF92C344(char *a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  v5 = objc_sync_enter(a1);
  if (v5)
  {
    MEMORY[0x1EEE9AC00](v5);
    v15 = a1;

    _Block_release(a2);
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v14, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v6 = a1[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_invalidated];
  v7 = objc_sync_exit(a1);
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v7);
    v15 = a1;

    _Block_release(a2);
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v14, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if ((v6 & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    type metadata accessor for NSFileProviderError(0);
    aBlock[6] = -1002;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF01C4BC(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v13 = sub_1CF9E57E8();
    (a2)[2](a2, 0, v13);
  }

  else
  {
    v9 = Strong;
    v10 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_extensionEnumerator];
    v11 = swift_allocObject();
    v11[2] = sub_1CEFFA830;
    v11[3] = v4;
    aBlock[4] = sub_1CF92D9C4;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF9285C4;
    aBlock[3] = &block_descriptor_79_1;
    v12 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v10 currentSyncAnchorWithCompletion_];
    _Block_release(v12);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1CF92C644(void *a1, uint64_t a2, char *a3, const void *a4)
{
  v76 = a2;
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v73 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v73 - v14;
  v81 = swift_allocObject();
  *(v81 + 16) = a4;
  v79 = v8;
  v78 = *(v8 + 16);
  v78(v15, &a3[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_logger], v7);
  v77 = a4;
  _Block_copy(a4);
  v16 = a3;
  v17 = a1;
  v80 = v15;
  v18 = sub_1CF9E6108();
  v19 = sub_1CF9E7298();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v74 = v21;
    v75 = swift_slowAlloc();
    aBlock[0] = v75;
    *v20 = 138412546;
    *(v20 + 4) = v16;
    *v21 = v16;
    *(v20 + 12) = 2080;
    v22 = v16;
    v23 = NSFileProviderPage.description.getter();
    v73 = v18;
    v25 = v17;
    v26 = v12;
    v27 = sub_1CEFD0DF0(v23, v24, aBlock);

    *(v20 + 14) = v27;
    v12 = v26;
    v28 = v19;
    v29 = v73;
    _os_log_impl(&dword_1CEFC7000, v73, v28, "📖  %@: enumerating page %s", v20, 0x16u);
    v30 = v74;
    sub_1CEFCCC44(v74, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v30, -1, -1);
    v31 = v75;
    __swift_destroy_boxed_opaque_existential_1(v75);
    MEMORY[0x1D386CDC0](v31, -1, -1);
    MEMORY[0x1D386CDC0](v20, -1, -1);
  }

  else
  {

    v25 = v17;
  }

  v32 = v78;
  v78(v12, v80, v7);
  v32(v82, v12, v7);
  v33 = v79;
  v34 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v35 = (v9 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  (*(v33 + 32))(v37 + v34, v12, v7);
  *(v37 + v35) = v16;
  *(v37 + v36) = v25;
  v38 = (v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8));
  v39 = v81;
  *v38 = sub_1CF7BA3F0;
  v38[1] = v39;
  v40 = v16;
  v41 = v25;

  v42 = objc_sync_enter(v40);
  if (v42)
  {
    MEMORY[0x1EEE9AC00](v42);
    *(&v73 - 2) = v40;

    _Block_release(v77);
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &(&v73)[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v43 = *(&v40->isa + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_invalidated);
  v44 = objc_sync_exit(v40);
  if (v44)
  {
    MEMORY[0x1EEE9AC00](v44);
    *(&v73 - 2) = v40;

    _Block_release(v77);
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &(&v73)[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if ((v43 & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    type metadata accessor for NSFileProviderError(0);
    v84 = -1002;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF01C4BC(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v52 = aBlock[0];
    v53 = v40;
    v54 = v41;
    v55 = v52;
    v56 = sub_1CF9E6108();
    v57 = sub_1CF9E72A8();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v78 = v7;
      v60 = v59;
      v61 = swift_slowAlloc();
      v84 = v61;
      *v58 = 138412802;
      *(v58 + 4) = v53;
      *v60 = v53;
      *(v58 + 12) = 2080;
      v62 = v53;
      v63 = NSFileProviderPage.description.getter();
      v65 = sub_1CEFD0DF0(v63, v64, &v84);

      *(v58 + 14) = v65;
      *(v58 + 22) = 2112;
      swift_getErrorValue();
      v66 = Error.prettyDescription.getter(aBlock[7]);
      *(v58 + 24) = v66;
      v60[1] = v66;
      _os_log_impl(&dword_1CEFC7000, v56, v57, "📖  %@: enumerating page %s failed: %@", v58, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      v67 = v60;
      v7 = v78;
      MEMORY[0x1D386CDC0](v67, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x1D386CDC0](v61, -1, -1);
      v68 = v58;
      v33 = v79;
      MEMORY[0x1D386CDC0](v68, -1, -1);
    }

    else
    {
    }

    sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
    v69 = sub_1CF9E6D28();
    v70 = sub_1CF9E57E8();
    (*(v77 + 2))(v77, v69, 0, 0, 0, v70);

    v71 = *(v33 + 8);
    v71(v82, v7);
    v71(v80, v7);
  }

  else
  {
    v46 = Strong;
    v47 = *(v33 + 8);
    v47(v82, v7);
    v48 = *(&v40->isa + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_extensionEnumerator);
    v49 = swift_allocObject();
    v49[2] = v40;
    v49[3] = sub_1CF92D8D0;
    v49[4] = v37;
    aBlock[4] = sub_1CF92D9B8;
    aBlock[5] = v49;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF9284C8;
    aBlock[3] = &block_descriptor_68_1;
    v50 = _Block_copy(aBlock);
    v51 = v40;
    swift_unknownObjectRetain();

    [v48 enumerateItemsFromPage:v41 suggestedPageSize:v76 reply:v50];
    _Block_release(v50);

    swift_unknownObjectRelease();
    v47(v80, v7);
  }
}

uint64_t sub_1CF92CEB4(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, const void *a5)
{
  v80 = a3;
  v9 = sub_1CF9E6118();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v77 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v77 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  v85 = v10;
  v86 = v9;
  v83 = *(v10 + 16);
  v83(v16, &a4[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_logger], v9);
  v81 = a5;
  _Block_copy(a5);
  v18 = a4;
  sub_1CEFE42D4(a1, a2);
  v87 = v16;
  v19 = sub_1CF9E6108();
  v20 = sub_1CF9E7298();

  sub_1CEFE4714(a1, a2);
  v21 = os_log_type_enabled(v19, v20);
  v82 = a1;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v78 = v19;
    v23 = v22;
    v24 = swift_slowAlloc();
    v77 = v24;
    v79 = swift_slowAlloc();
    aBlock[0] = v79;
    *v23 = 138412546;
    *(v23 + 4) = v18;
    *v24 = v18;
    *(v23 + 12) = 2080;
    v25 = v18;
    v26 = sub_1CF9E5AB8();
    v28 = sub_1CEFD0DF0(v26, v27, aBlock);

    *(v23 + 14) = v28;
    v29 = v78;
    _os_log_impl(&dword_1CEFC7000, v78, v20, "📖  %@: enumerating from change %s", v23, 0x16u);
    v30 = v77;
    sub_1CEFCCC44(v77, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v30, -1, -1);
    v31 = v79;
    __swift_destroy_boxed_opaque_existential_1(v79);
    MEMORY[0x1D386CDC0](v31, -1, -1);
    MEMORY[0x1D386CDC0](v23, -1, -1);
  }

  else
  {
  }

  v32 = v83;
  v33 = v84;
  v34 = v86;
  v83(v84, v87, v86);
  v32(v88, v33, v34);
  v35 = v85;
  v36 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v37 = (v11 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v40 = v33;
  v41 = v39;
  (*(v35 + 32))(v39 + v36, v40, v34);
  *(v41 + v37) = v18;
  v42 = (v41 + v38);
  v43 = v82;
  *v42 = v82;
  v42[1] = a2;
  v44 = (v41 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v44 = sub_1CF7BA270;
  v44[1] = v17;
  v45 = v18;
  sub_1CEFE42D4(v43, a2);

  v46 = objc_sync_enter(v45);
  if (v46)
  {
    MEMORY[0x1EEE9AC00](v46);
    *(&v77 - 2) = v45;

    _Block_release(v81);
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v77 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v47 = v45[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_invalidated];
  v48 = objc_sync_exit(v45);
  if (v48)
  {
    MEMORY[0x1EEE9AC00](v48);
    *(&v77 - 2) = v45;

    _Block_release(v81);
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v77 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v84 = v17;
  if ((v47 & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    type metadata accessor for NSFileProviderError(0);
    v90 = -1002;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF01C4BC(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v58 = aBlock[0];
    v59 = v45;
    sub_1CEFE42D4(v43, a2);
    v60 = v58;
    v61 = sub_1CF9E6108();
    v62 = sub_1CF9E72A8();

    sub_1CEFE4714(v43, a2);
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v90 = v65;
      *v63 = 138412802;
      *(v63 + 4) = v59;
      *v64 = v59;
      *(v63 + 12) = 2080;
      v66 = v59;
      v67 = sub_1CF9E5AB8();
      v69 = sub_1CEFD0DF0(v67, v68, &v90);

      *(v63 + 14) = v69;
      *(v63 + 22) = 2112;
      swift_getErrorValue();
      v70 = Error.prettyDescription.getter(aBlock[7]);
      *(v63 + 24) = v70;
      v64[1] = v70;
      _os_log_impl(&dword_1CEFC7000, v61, v62, "📖  %@: enumerating from change %s failed: %@", v63, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v64, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v65);
      MEMORY[0x1D386CDC0](v65, -1, -1);
      MEMORY[0x1D386CDC0](v63, -1, -1);
    }

    else
    {
    }

    sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
    v71 = sub_1CF9E6D28();
    sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
    v72 = sub_1CF9E6D28();
    v73 = sub_1CF9E57E8();
    (*(v81 + 2))(v81, v71, v72, 0, 0, 0, v73);

    v74 = v86;
    v75 = *(v85 + 8);
    v75(v88, v86);
    v75(v87, v74);
  }

  else
  {
    v50 = Strong;
    v51 = v86;
    v52 = *(v85 + 8);
    v52(v88, v86);
    v53 = *&v45[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_extensionEnumerator];
    swift_unknownObjectRetain();
    v54 = sub_1CF9E5B48();
    v55 = swift_allocObject();
    v55[2] = v45;
    v55[3] = sub_1CF92D7A4;
    v55[4] = v41;
    aBlock[4] = sub_1CF92D8A4;
    aBlock[5] = v55;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF0407BC;
    aBlock[3] = &block_descriptor_54_0;
    v56 = _Block_copy(aBlock);
    v57 = v45;

    [v53 enumerateChangesFromToken:v54 suggestedBatchSize:v80 reply:v56];
    _Block_release(v56);

    swift_unknownObjectRelease();
    v52(v87, v51);
  }
}

uint64_t sub_1CF92D7A4(unint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, void *a6)
{
  v13 = *(sub_1CF9E6118() - 8);
  v14 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF92B85C(a1, a2, a3, a4, a5, a6, v6 + v14, *(v6 + v15), *(v6 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v6 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v6 + ((((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v6 + ((((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF92D8D0(unint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v11 = *(sub_1CF9E6118() - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF92AC74(a1, a2, a3, a4, a5, v5 + v12, *(v5 + v13), *(v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v5 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v5 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF92D9C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1CF92DA18()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_1CF742280(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_1CF92DA24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF92DA94(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1CF92A42C(a1, *(v1 + 16));
}

uint64_t sub_1CF92DB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = *v9;
  v17 = swift_allocObject();
  v17[2] = v16[10];
  v17[3] = v16[11];
  v17[4] = a9;
  v17[5] = v16[12];
  v17[6] = v16[13];
  v17[7] = a5;
  v17[8] = a6;
  v18 = v16[59];

  v18(a1, a2, a3, a4, sub_1CF932164, v17, a7, a8);
}

void sub_1CF92DCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*v4 + 496))(a1, 1, a2, a3, a4);
  sub_1CF9E7948();

  v5 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
  swift_getErrorValue();
  v6 = Error.prettyDescription.getter(v11);
  v7 = [v6 description];
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;

  MEMORY[0x1D3868CC0](v8, v10);

  sub_1CF9E7B68();
  __break(1u);
}

uint64_t sub_1CF92DEA4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  *(v20 + 24) = a7;
  v21 = *(*v13 + 416);

  v21(a1, a2, a3, 0, a12, v19, a13, v20, a8, a9);
}

uint64_t sub_1CF92DFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  v17 = *(*v8 + 472);

  v17(a1, a2, a3, a4, sub_1CEFFD05C, v16, a7, a8);
}

uint64_t sub_1CF92E0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  *&v25 = a1;
  v8 = v7[10];
  v9 = v7[11];
  v10 = v7[12];
  v11 = v7[13];
  *&v28 = v8;
  *(&v28 + 1) = v9;
  v29 = v10;
  v30 = v11;
  type metadata accessor for Mutation();
  sub_1CF9E6E58();
  swift_getWitnessTable();
  result = sub_1CF9E6BE8();
  if (!v24)
  {
    v20 = v5[2];
    *&v28 = v8;
    *(&v28 + 1) = v9;
    v29 = v10;
    v30 = v11;
    type metadata accessor for ReconciliationMutation();
    v13 = sub_1CF9E6E58();
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x1D3868E50](&v31, v13, WitnessTable);
    v27 = v31;
    v15 = swift_allocObject();
    v15[2] = a4;
    v15[3] = a5;
    v15[4] = v5;
    sub_1CF9E7978();

    swift_getWitnessTable();
    sub_1CF9E7C38();

    v25 = v28;
    v26 = v29;
    v16 = *(*v20 + 544);
    v17 = sub_1CF9E7AC8();
    v18 = swift_getWitnessTable();
    v16(&v25, a3, v17, a4, v18, a5);

    *&v28 = a1;
    MEMORY[0x1EEE9AC00](v19);
    return sub_1CF9E6BE8();
  }

  return result;
}

uint64_t sub_1CF92E514(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = *v14;
  v20 = *v14;
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  v22 = swift_allocObject();
  v22[2] = v19[10];
  v22[3] = v19[11];
  v22[4] = a10;
  v22[5] = v19[12];
  v22[6] = v19[13];
  v22[7] = a6;
  v22[8] = a7;
  v23 = v20[52];

  v23(a1, a2, a3, 0, a13, v21, a14, v22, a8, a9);
}

uint64_t sub_1CF92E6B4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = *v11;
  v17 = *v11;
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  v19 = swift_allocObject();
  v19[2] = v16[10];
  v19[3] = v16[11];
  v19[4] = a10;
  v19[5] = a11;
  v19[6] = v16[12];
  v19[7] = v16[13];
  v19[8] = a6;
  v19[9] = a7;
  v20 = v17[52];

  v20(a1, a2, a3, 0, sub_1CF68C1F4, v18, sub_1CF931F8C, v19, a8, a9);
}

void *sub_1CF92E870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  swift_weakAssign();
  v7 = v6[4];
  swift_weakAssign();
  v8 = v6[5];
  v9 = *(*v6 + 176);

  swift_unknownObjectRetain();

  v9(v10);

  swift_unknownObjectRelease();
  swift_weakAssign();

  return v6;
}

void *sub_1CF92E98C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];
  swift_unknownObjectRelease();
  return v0;
}

unint64_t sub_1CF92ED6C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  v3 = *MEMORY[0x1E696A578];
  *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 40) = v4;
  v5 = sub_1CF9E6948();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  sub_1CF1B8600(inited + 32);
  return v7;
}

uint64_t sub_1CF92EE28(uint64_t a1)
{
  v2 = sub_1CF932238();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CF92EE64(uint64_t a1)
{
  v2 = sub_1CF932238();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1CF92EEA0()
{
  v1 = sub_1CF9E5CF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_1CF9E7948();

  v44 = 91;
  v45 = 0xE100000000000000;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v7 = v6;
  result = (*(v2 + 8))(v5, v1);
  v9 = v7 * 1000000000.0;
  if (COERCE__INT64(fabs(v7 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v43 = v9 / 1000000;
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0x662D74696177205DLL, 0xEF3A6E75722D726FLL);
  v43 = *(v0 + 16);
  v11 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v11);

  v13 = v44;
  v12 = v45;
  v44 = 0x676E696E6E757220;
  v45 = 0xE90000000000003ALL;
  v43 = *(v0 + 24);
  v14 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v14);

  v15 = v44;
  v16 = v45;
  v44 = v13;
  v45 = v12;

  MEMORY[0x1D3868CC0](v15, v16);

  v18 = v44;
  v17 = v45;
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_1CF9E7948();

  v44 = 0xD000000000000013;
  v45 = 0x80000001CFA5FA70;
  v19 = *(v0 + 32);
  v20 = *(v0 + 40);
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v23 = 1702195828;
  v43 = v22;
  v24 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v24);

  v25 = v44;
  v26 = v45;
  v44 = v18;
  v45 = v17;

  MEMORY[0x1D3868CC0](v25, v26);

  v28 = v44;
  v27 = v45;
  v44 = 0x6E69767261747320;
  v45 = 0xEA00000000003A67;
  if (*(v0 + 50))
  {
    v29 = 1702195828;
  }

  else
  {
    v29 = 0x65736C6166;
  }

  if (*(v0 + 50))
  {
    v30 = 0xE400000000000000;
  }

  else
  {
    v30 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v29, v30);

  v31 = v44;
  v32 = v45;
  v44 = v28;
  v45 = v27;

  MEMORY[0x1D3868CC0](v31, v32);

  v34 = v44;
  v33 = v45;
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_1CF9E7948();

  v44 = 0xD000000000000010;
  v45 = 0x80000001CFA5FA90;
  v35 = *(v0 + 24);
  if (v35 < 1)
  {
    if (*(v0 + 16) < 1 || (*(v0 + 50) & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v36 = *(v0 + 32);
  v37 = *(v0 + 40);
  v21 = __OFADD__(v36, v37);
  v38 = v36 + v37;
  if (!v21)
  {
    if (v38 < v35)
    {
LABEL_18:
      v39 = 0xE500000000000000;
      v23 = 0x65736C6166;
      goto LABEL_19;
    }

LABEL_17:
    v39 = 0xE400000000000000;
LABEL_19:
    MEMORY[0x1D3868CC0](v23, v39);

    v40 = v44;
    v41 = v45;
    v44 = v34;
    v45 = v33;

    MEMORY[0x1D3868CC0](v40, v41);

    return v44;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1CF930308()
{
  sub_1CF92E98C();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF930354(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = (*(*v5[3] + 264))(a2, a3, a4, a5);
  if (v6)
  {
    return v7 & 1;
  }

  if (!v10)
  {
    v16 = 0;
    v7 = 0;
LABEL_13:
    *a1 = v16;
    return v7 & 1;
  }

  v11 = v9[10];
  v12 = v9[11];
  v14 = v9[12];
  v13 = v9[13];
  type metadata accessor for Propagation.UpdateItem();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v7 = 0;
    v16 = *(v15 + *(*v15 + 648));
LABEL_12:

    goto LABEL_13;
  }

  type metadata accessor for Propagation.CreateItem();
  if (swift_dynamicCastClass())
  {
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v7 = 0;
    v16 = qword_1EDEABDE8;
    goto LABEL_12;
  }

  type metadata accessor for Propagation.DeleteItem();
  if (swift_dynamicCastClass())
  {
    v16 = 0;
    v7 = 1;
    goto LABEL_12;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF930554(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v62 = a6;
  v68 = a4;
  v69 = a5;
  v67 = a3;
  v73 = a1;
  v7 = *a2;
  v8 = *(*a2 + 88);
  v9 = *(*a2 + 104);
  v10 = type metadata accessor for SnapshotMutation();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v63 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v62 - v14;
  v16 = *(v7 + 80);
  v66 = a2;
  v17 = *(v7 + 96);
  v18 = type metadata accessor for SnapshotMutation();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v62 - v24;
  v70 = v16;
  v71 = v9;
  *&v26 = v16;
  v72 = v8;
  *(&v26 + 1) = v8;
  *&v27 = v17;
  *(&v27 + 1) = v9;
  v74 = v26;
  v75 = v27;
  v28 = type metadata accessor for Mutation();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v62 - v30;
  (*(v32 + 16))(&v62 - v30, v73, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v64;
    v33 = v65;
    (*(v64 + 32))(v15, v31, v65);
    v23 = v63;
    (*(v34 + 16))(v63, v15, v33);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
          strcpy(&v62 - 32, "from to  reason ");
          *&v74 = type metadata accessor for SnapshotItem();
          *(&v74 + 1) = v74;
          *&v75 = &type metadata for Fields;
          *(&v75 + 1) = MEMORY[0x1E69E6158];
          TupleTypeMetadata = swift_getTupleTypeMetadata();
          v37 = *(TupleTypeMetadata + 48);
          v38 = *&v23[*(TupleTypeMetadata + 80) + 8];

          v39 = type metadata accessor for SnapshotItem();
          v40 = *(*(v39 - 8) + 8);
          v40(&v23[v37], v39);
          v40(v23, v39);
LABEL_29:
          v55 = v66[5];
          v56 = v76;
          sub_1CF689CB8(v15, v67, v68, v69);
          v57 = v56;
          if (!v56)
          {
            return (*(v34 + 8))(v15, v33);
          }

          result = (*(v34 + 8))(v15, v33);
          goto LABEL_36;
        }

        (*(v34 + 8))(v15, v33);
        goto LABEL_24;
      }

      AssociatedTypeWitness = type metadata accessor for SnapshotItem();
LABEL_28:
      v53 = AssociatedTypeWitness;
      v54 = *&v23[*(swift_getTupleTypeMetadata2() + 48) + 8];

      (*(*(v53 - 8) + 8))(v23, v53);
      goto LABEL_29;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        goto LABEL_28;
      }

      (*(v34 + 8))(v15, v33);
LABEL_16:
      v47 = swift_getAssociatedTypeWitness();
LABEL_25:
      v50 = *(swift_getTupleTypeMetadata3() + 64);
      goto LABEL_26;
    }

    (*(v34 + 8))(v15, v33);
LABEL_21:
    v47 = swift_getAssociatedTypeWitness();
    v50 = *(swift_getTupleTypeMetadata2() + 48);
LABEL_26:
    v51 = *&v23[v50 + 8];

    return (*(*(v47 - 8) + 8))(v23, v47);
  }

  (*(v19 + 32))(v25, v31, v18);
  (*(v19 + 16))(v23, v25, v18);
  v41 = swift_getEnumCaseMultiPayload();
  if (v41 > 2)
  {
    if (v41 == 3)
    {
      (*(v19 + 8))(v25, v18);
      goto LABEL_21;
    }

    if (v41 == 4)
    {
      (*(v19 + 8))(v25, v18);
      goto LABEL_16;
    }

    v49 = swift_getAssociatedTypeWitness();
    goto LABEL_33;
  }

  if (!v41)
  {
    v49 = type metadata accessor for SnapshotItem();
LABEL_33:
    v58 = v49;
    v59 = *&v23[*(swift_getTupleTypeMetadata2() + 48) + 8];

    (*(*(v58 - 8) + 8))(v23, v58);
    goto LABEL_34;
  }

  if (v41 != 1)
  {
    (*(v19 + 8))(v25, v18);
LABEL_24:
    v47 = swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC4C5730, &qword_1CF9FCCE0);
    goto LABEL_25;
  }

  MEMORY[0x1EEE9AC00](v41);
  strcpy(&v62 - 32, "from to  reason ");
  *&v74 = type metadata accessor for SnapshotItem();
  *(&v74 + 1) = v74;
  *&v75 = &type metadata for Fields;
  *(&v75 + 1) = MEMORY[0x1E69E6158];
  v42 = swift_getTupleTypeMetadata();
  v43 = *(v42 + 48);
  v44 = *&v23[*(v42 + 80) + 8];

  v45 = type metadata accessor for SnapshotItem();
  v46 = *(*(v45 - 8) + 8);
  v46(&v23[v43], v45);
  v46(v23, v45);
LABEL_34:
  v60 = v66[4];
  v61 = v76;
  sub_1CF689CB8(v25, v67, v68, v69);
  v57 = v61;
  if (v61)
  {
    result = (*(v19 + 8))(v25, v18);
LABEL_36:
    *v62 = v57;
    return result;
  }

  return (*(v19 + 8))(v25, v18);
}

uint64_t sub_1CF930F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(*a2 + 96);
  v8[0] = *(*a2 + 80);
  v8[1] = v5;
  v6 = type metadata accessor for ReconciliationMutation();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  *&v8[0] = 0x16180000D034200;
  return sub_1CF0763AC(a3, v8);
}

void sub_1CF930FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t *))
{
  v12 = objc_autoreleasePoolPush();
  a6(a1, a2, a3, a4, a5, &v13);
  objc_autoreleasePoolPop(v12);
}

uint64_t sub_1CF931088(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v71 = a6;
  v77 = a4;
  v78 = a5;
  v76 = a3;
  v83 = a1;
  v7 = *a2;
  v8 = *(*a2 + 88);
  v9 = *(*a2 + 104);
  v10 = type metadata accessor for SnapshotMutation();
  v74 = *(v10 - 8);
  v11 = *(v74 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v73 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v70 - v14;
  v16 = *(v7 + 80);
  v75 = a2;
  v17 = *(v7 + 96);
  v18 = type metadata accessor for SnapshotMutation();
  v72 = *(v18 - 8);
  v19 = *(v72 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v70 - v23;
  v79 = v17;
  v80 = v16;
  *&v25 = v16;
  v81 = v9;
  v82 = v8;
  *(&v25 + 1) = v8;
  *&v26 = v17;
  *(&v26 + 1) = v9;
  v84 = v25;
  v85 = v26;
  v27 = type metadata accessor for Mutation();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v70 - v29;
  (*(v31 + 16))(&v70 - v29, v83, v27);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v42 = v72;
    (*(v72 + 32))(v24, v30, v18);
    (*(v42 + 16))(v22, v24, v18);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v44 = v18;
    v45 = v42;
    if (EnumCaseMultiPayload > 2)
    {
      v46 = v86;
      if (EnumCaseMultiPayload == 3)
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v60 = 48;
LABEL_27:
        v64 = *&v22[*(TupleTypeMetadata2 + v60) + 8];

        (*(*(AssociatedTypeWitness - 8) + 8))(v22, AssociatedTypeWitness);
        v65 = v75[4];
        sub_1CF689CB8(v24, v76, v77, v78);
        if (v46)
        {
          result = (*(v45 + 8))(v24, v44);
LABEL_29:
          *v71 = v46;
          return result;
        }

        return (*(v45 + 8))(v24, v44);
      }

      if (EnumCaseMultiPayload == 4)
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
LABEL_26:
        TupleTypeMetadata2 = swift_getTupleTypeMetadata3();
        v60 = 64;
        goto LABEL_27;
      }

      (*(v42 + 8))(v24, v44);
      v56 = swift_getAssociatedTypeWitness();
    }

    else
    {
      v46 = v86;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v47 = (*(v42 + 8))(v24, v44);
          MEMORY[0x1EEE9AC00](v47);
          strcpy(&v70 - 32, "from to  reason ");
          *&v84 = type metadata accessor for SnapshotItem();
          *(&v84 + 1) = v84;
          *&v85 = &type metadata for Fields;
          *(&v85 + 1) = MEMORY[0x1E69E6158];
          TupleTypeMetadata = swift_getTupleTypeMetadata();
          v49 = *(TupleTypeMetadata + 48);
          v50 = *&v22[*(TupleTypeMetadata + 80) + 8];

          v51 = type metadata accessor for SnapshotItem();
          v52 = *(*(v51 - 8) + 8);
          v52(&v22[v49], v51);
          return (v52)(v22, v51);
        }

        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC4C5730, &qword_1CF9FCCE0);
        goto LABEL_26;
      }

      (*(v42 + 8))(v24, v44);
      v56 = type metadata accessor for SnapshotItem();
    }

    v68 = v56;
    v69 = *&v22[*(swift_getTupleTypeMetadata2() + 48) + 8];

    return (*(*(v68 - 8) + 8))(v22, v68);
  }

  v32 = v74;
  (*(v74 + 32))(v15, v30, v10);
  v33 = v73;
  (*(v32 + 16))(v73, v15, v10);
  v34 = swift_getEnumCaseMultiPayload();
  if (v34 > 2)
  {
    if (v34 == 3)
    {
      v53 = swift_getAssociatedTypeWitness();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata2();
      v58 = 48;
LABEL_22:
      v61 = *&v33[*(TupleTypeMetadata3 + v58) + 8];

      (*(*(v53 - 8) + 8))(v33, v53);
      v62 = v75[5];
      v63 = v86;
      sub_1CF689CB8(v15, v76, v77, v78);
      v46 = v63;
      if (!v63)
      {
        return (*(v32 + 8))(v15, v10);
      }

      result = (*(v32 + 8))(v15, v10);
      goto LABEL_29;
    }

    if (v34 == 4)
    {
      v53 = swift_getAssociatedTypeWitness();
LABEL_21:
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v58 = 64;
      goto LABEL_22;
    }

    (*(v32 + 8))(v15, v10);
    v55 = swift_getAssociatedTypeWitness();
  }

  else
  {
    if (v34)
    {
      if (v34 == 1)
      {
        v35 = (*(v32 + 8))(v15, v10);
        MEMORY[0x1EEE9AC00](v35);
        strcpy(&v70 - 32, "from to  reason ");
        *&v84 = type metadata accessor for SnapshotItem();
        *(&v84 + 1) = v84;
        *&v85 = &type metadata for Fields;
        *(&v85 + 1) = MEMORY[0x1E69E6158];
        v36 = swift_getTupleTypeMetadata();
        v37 = *(v36 + 48);
        v38 = *&v33[*(v36 + 80) + 8];

        v39 = type metadata accessor for SnapshotItem();
        v40 = *(*(v39 - 8) + 8);
        v40(&v33[v37], v39);
        return (v40)(v33, v39);
      }

      v53 = swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC4C5730, &qword_1CF9FCCE0);
      goto LABEL_21;
    }

    (*(v32 + 8))(v15, v10);
    v55 = type metadata accessor for SnapshotItem();
  }

  v66 = v55;
  v67 = *&v33[*(swift_getTupleTypeMetadata2() + 48) + 8];

  return (*(*(v66 - 8) + 8))(v33, v66);
}

uint64_t sub_1CF931B50(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_1CF9E75D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v17 - v14;
  (*(*(a7 - 8) + 56))(&v17 - v14, 1, 1, a7, v13);
  a3(v15, a2);
  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_1CF931C70(uint64_t a1, void *a2, void (*a3)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v5 = sub_1CF9E8238();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  *(&v12 - v8) = a2;
  swift_storeEnumTagMultiPayload();
  v10 = a2;
  a3(v9);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1CF931D88(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *, char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a4;
  v25 = a3;
  v12 = sub_1CF9E75D8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - v15;
  v17 = sub_1CF9E75D8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v24 - v21;
  (*(*(a7 - 8) + 56))(&v24 - v21, 1, 1, a7, v20);
  (*(*(a8 - 8) + 56))(v16, 1, 1, a8);
  v25(a1, v22, v16, a2);
  (*(v13 + 8))(v16, v12);
  return (*(v18 + 8))(v22, v17);
}

uint64_t sub_1CF931F8C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  return sub_1CF931D88(a1, a2, *(v2 + 64), *(v2 + 72), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

uint64_t sub_1CF931FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_1CF930F24(a1, v2[4], a2);
}

uint64_t sub_1CF932034(void *a1, void (*a2)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v4 = sub_1CF9E8238();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  *(&v11 - v7) = a1;
  swift_storeEnumTagMultiPayload();
  v9 = a1;
  a2(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1CF932164(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 64);
  return sub_1CF932034(a1, *(v1 + 56));
}

unint64_t sub_1CF9321E4()
{
  result = qword_1EC4C5308;
  if (!qword_1EC4C5308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C5308);
  }

  return result;
}

unint64_t sub_1CF932238()
{
  result = qword_1EDEA5B78;
  if (!qword_1EDEA5B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5B78);
  }

  return result;
}

uint64_t sub_1CF932290(uint64_t result)
{
  if ((*(result + 49) & 1) == 0)
  {
    v1 = result;
    *(result + 49) = 1;
    v2 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW_APPROX);
    if (v2)
    {
      if ((v2 & 0x8000000000000000) == 0)
      {
        *(v1 + 40) = v2;
        *(v1 + 48) = 0;
        return sub_1CF9323FC(*(v1 + 32));
      }

      __break(1u);
    }

    sub_1CF514D8C("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/PausableTimer.swift", 102, 2, 32);
  }

  return result;
}

uint64_t sub_1CF932300(uint64_t result)
{
  if (*(result + 49) != 1)
  {
    return result;
  }

  v1 = result;
  if (*(result + 48))
  {
    return result;
  }

  v2 = *(result + 40);
  *(result + 49) = 0;
  v3 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW_APPROX);
  if (!v3)
  {
LABEL_18:
    sub_1CF514D8C("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/PausableTimer.swift", 102, 2, 32);
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (__OFSUB__(v3, v2))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = v2 - v3;
  if (__OFSUB__(0, v3 - v2))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = *(v1 + 32);
  v6 = __OFADD__(v5, v4);
  v7 = v5 + v4;
  if (v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v1 + 32) = v7;
  if (*(v1 + 16))
  {
    v8 = *(v1 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
    v9 = *(v1 + 16);
  }

  *(v1 + 16) = 0;

  return swift_unknownObjectRelease();
}

uint64_t sub_1CF9323FC(uint64_t a1)
{
  v61 = a1;
  v2 = sub_1CF9E63A8();
  v53 = *(v2 - 8);
  v54 = v2;
  v3 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v51 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1CF9E6448();
  v50 = *(v52 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1CF9E6388();
  v7 = *(v62 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v60 = (&v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v57 = (&v48 - v11);
  v12 = sub_1CF9E6498();
  v58 = *(v12 - 8);
  v59 = v12;
  v13 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v56 = &v48 - v17;
  v18 = sub_1CF9E73D8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1CF9E64A8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = (&v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(v1 + 56);
  *v28 = v29;
  (*(v24 + 104))(v28, *MEMORY[0x1E69E8020], v23, v26);
  v55 = v29;
  LOBYTE(v29) = sub_1CF9E64D8();
  result = (*(v24 + 8))(v28, v23);
  if (v29)
  {
    v31 = v1;
    if (*(v1 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1CF9E7418();
      swift_unknownObjectRelease();
    }

    sub_1CF1A9160();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1CF3387FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
    sub_1CF932C00();
    sub_1CF9E77B8();
    v32 = sub_1CF9E73E8();
    (*(v19 + 8))(v22, v18);
    v33 = *(v31 + 16);
    *(v31 + 16) = v32;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    sub_1CF9E6478();
    v35 = v62;
    v36 = v57;
    *v57 = v61;
    (*(v7 + 104))(v36, *MEMORY[0x1E69E7F28], v35);
    v37 = v56;
    MEMORY[0x1D3868740](v15, v36);
    v38 = *(v7 + 8);
    v38(v36, v35);
    v61 = v31;
    v39 = v59;
    v58 = *(v58 + 8);
    (v58)(v15, v59);
    sub_1CEFD5B64(v36);
    v40 = v60;
    sub_1CEFD5BD8(v60);
    MEMORY[0x1D3869770](v37, v36, v40, ObjectType);
    swift_unknownObjectRelease();
    v38(v40, v35);
    v38(v36, v35);
    result = (v58)(v37, v39);
    v41 = v61;
    if (*(v61 + 16))
    {
      v42 = *(v61 + 16);
      swift_getObjectType();
      v43 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1CF932C64;
      aBlock[5] = v43;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CEFCA444;
      aBlock[3] = &block_descriptor_51;
      v44 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      v45 = v49;
      sub_1CF01C504();
      v46 = v51;
      sub_1CEFD5A30();
      sub_1CF9E7408();
      _Block_release(v44);
      swift_unknownObjectRelease();
      (*(v53 + 8))(v46, v54);
      (*(v50 + 8))(v45, v52);

      if (*(v41 + 16))
      {
        v47 = *(v41 + 16);
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1CF9E7428();
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF932B0C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 49) = 0;
    v1 = *(result + 64);
    if (v1)
    {
      v2 = *(result + 72);

      v1(v3);
      sub_1CF045404(v1);
    }
  }

  return result;
}

uint64_t sub_1CF932B94()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 72);
  sub_1CF045404(*(v0 + 64));

  return swift_deallocClassInstance();
}

unint64_t sub_1CF932C00()
{
  result = qword_1EDEAB650;
  if (!qword_1EDEAB650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB650);
  }

  return result;
}

uint64_t static FPConflictLoser.== infix(_:_:)(void *a1, void *a2)
{
  v3 = [a1 etag];
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;

  v7 = [a2 etag];
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1CF9E8048();
  }

  return v12 & 1;
}

uint64_t FPConflictLoser.isEqual(_:)(uint64_t a1)
{
  sub_1CEFF95C8(a1, v13);
  if (!v14)
  {
    sub_1CF0248E0(v13);
    goto LABEL_7;
  }

  sub_1CF932E54();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v10 = 0;
    return v10 & 1;
  }

  v2 = [v1 etag];
  v3 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v5 = v4;

  v6 = [v12 etag];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;

  if (v3 == v7 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1CF9E8048();
  }

  return v10 & 1;
}

unint64_t sub_1CF932E54()
{
  result = qword_1EC4C5310;
  if (!qword_1EC4C5310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4C5310);
  }

  return result;
}

uint64_t sub_1CF932EA0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1CF9E7728();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = FPConflictLoser.isEqual(_:)(v8);

  sub_1CF0248E0(v8);
  return v6 & 1;
}

uint64_t sub_1CF932F18(void *a1)
{
  v1 = a1;
  v2 = [v1 etag];
  v3 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v5 = v4;

  v6 = MEMORY[0x1D3868D90](v3, v5);

  return v6;
}

uint64_t FPConflictLoser.hash.getter()
{
  v1 = [v0 etag];
  v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v4 = v3;

  v5 = MEMORY[0x1D3868D90](v2, v4);

  return v5;
}

uint64_t sub_1CF9330EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  if (v5)
  {
    v9 = result;
    v10 = *(*v5 + 152);

    v10(v9, a2, a3, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF933190(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  if (v5)
  {
    v9 = result;
    v10 = *(*v5 + 160);

    v10(v9, a2, a3, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CF933234(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v53 = a4;
  v58 = a5;
  v51 = a3;
  v50 = a2;
  v49 = a1;
  v44 = a6;
  v7 = *v6;
  v8 = *(*v6 + 616);
  v9 = *(*v6 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(v7 + 624);
  v12 = *(v7 + 608);
  v13 = swift_getAssociatedTypeWitness();
  v45 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v54 = AssociatedTypeWitness;
  v55 = v13;
  v14 = swift_getAssociatedConformanceWitness();
  v56 = AssociatedConformanceWitness;
  v57 = v14;
  v15 = type metadata accessor for ReconciliationID();
  v47 = *(v15 - 8);
  v48 = v15;
  v16 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - v17;
  v42 = v9;
  v43 = v8;
  v54 = v9;
  v55 = v12;
  v40 = v12;
  v41 = v11;
  v56 = v8;
  v57 = v11;
  type metadata accessor for ItemReconciliation();
  swift_getTupleTypeMetadata2();
  v19 = sub_1CF9E75D8();
  v38 = *(v19 - 8);
  v39 = v19;
  v20 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v37 - v21;
  v23 = v6[3];
  if (v23)
  {
    v54 = v13;
    v55 = v45;
    v56 = v14;
    v57 = AssociatedConformanceWitness;
    v24 = type metadata accessor for ReconciliationID();
    sub_1CF050768(v24, v18);
    v25 = *(*v23 + 168);

    v26 = v52;
    v27 = v53;
    v28 = v58;
    v25(v18, v50 & 1, v51, v53, v58);
    if (v26)
    {
      (*(v47 + 8))(v18, v48);
    }

    else
    {
      (*(v47 + 8))(v18, v48);

      MEMORY[0x1EEE9AC00](v29);
      v31 = v42;
      v30 = v43;
      v33 = v40;
      v32 = v41;
      *(&v37 - 6) = v42;
      *(&v37 - 5) = v33;
      *(&v37 - 4) = v27;
      *(&v37 - 3) = v30;
      *(&v37 - 2) = v32;
      *(&v37 - 1) = v28;
      v54 = v33;
      v55 = v31;
      v56 = v32;
      v57 = v30;
      type metadata accessor for ItemReconciliation();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v35 = v39;
      sub_1CF06E1CC(sub_1CF935CA0, (&v37 - 8), MEMORY[0x1E69E73E0], TupleTypeMetadata2, v36, v44);
      (*(v38 + 8))(v22, v35);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CF933644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v28 = a1;
  v29 = a6;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v10 = type metadata accessor for ItemReconciliation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  v30 = a3;
  v31 = a2;
  v32 = a5;
  v33 = a4;
  type metadata accessor for ItemReconciliation();
  v19 = *(swift_getTupleTypeMetadata2() + 48);
  v20 = *(v12 + 16);
  v26 = v12 + 16;
  v27 = v19;
  v21 = v28;
  v20(v18, v28, TupleTypeMetadata2);
  v22 = v29;
  sub_1CF07EE34(v10, v29);
  v23 = v10;
  v24 = *(*(v10 - 8) + 8);
  v24(v18, v23);
  v20(v15, v21, TupleTypeMetadata2);
  *(v22 + v27) = *&v15[*(TupleTypeMetadata2 + 48)];
  return (v24)(v15, v23);
}

void sub_1CF93384C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v20 = a4;
  v17 = a1;
  v18 = a2;
  v5 = *(*v4 + 600);
  v6 = *(*v4 + 608);
  v7 = *(*v4 + 616);
  v8 = *(*v4 + 624);
  v21 = v5;
  v22 = v6;
  v23 = v7;
  v24 = v8;
  v9 = type metadata accessor for ItemReconciliation();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  v14 = v4[3];
  if (v14)
  {
    v15 = v4[3];

    v21 = v6;
    v22 = v5;
    v23 = v8;
    v24 = v7;
    v16 = type metadata accessor for ItemReconciliation();
    sub_1CF07EE34(v16, v13);
    (*(*v14 + 176))(v13, v18, v19, v20);
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF933A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a6;
  v25 = a4;
  v26 = a5;
  v23[2] = a2;
  v24 = a3;
  v23[1] = a1;
  v7 = *(*v6 + 600);
  v8 = *(*v6 + 608);
  v9 = *(*v6 + 616);
  v10 = *(*v6 + 624);
  v28 = v7;
  v29 = v8;
  v30 = v9;
  v31 = v10;
  v32 = type metadata accessor for ItemReconciliation();
  v11 = *(v32 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v23 - v16;
  v18 = v6[3];
  if (v18)
  {
    v19 = v6[3];

    v28 = v8;
    v29 = v7;
    v30 = v10;
    v31 = v9;
    v20 = type metadata accessor for ItemReconciliation();
    sub_1CF07EE34(v20, v17);
    sub_1CF07EE34(v20, v14);
    (*(*v18 + 192))(v17, v14, v24, v25, v26, v27);

    v21 = *(v11 + 8);
    v22 = v32;
    v21(v14, v32);
    v21(v17, v22);
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF933C1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v21 = a2;
  v22 = a4;
  v20 = a3;
  v19 = a1;
  v7 = *(*v6 + 600);
  v8 = *(*v6 + 608);
  v9 = *(*v6 + 616);
  v10 = *(*v6 + 624);
  v25 = v7;
  v26 = v8;
  v27 = v9;
  v28 = v10;
  v11 = type metadata accessor for ItemReconciliation();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = v6[3];
  if (v16)
  {
    v17 = v6[3];

    v25 = v8;
    v26 = v7;
    v27 = v10;
    v28 = v9;
    v18 = type metadata accessor for ItemReconciliation();
    sub_1CF07EE34(v18, v15);
    (*(*v16 + 200))(v15, v21, v20 & 1, v22, v23, v24);
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF933DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v24 = a2;
  v25 = a3;
  v23[1] = a1;
  v6 = *v5;
  v7 = *(*v5 + 616);
  v8 = *(*v5 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(v6 + 624);
  v11 = *(v6 + 608);
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v28 = AssociatedTypeWitness;
  v29 = v12;
  v30 = AssociatedConformanceWitness;
  v31 = v14;
  v15 = type metadata accessor for ReconciliationID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v23 - v18;
  v20 = v5[3];
  if (v20)
  {
    v28 = v12;
    v29 = AssociatedTypeWitness;
    v30 = v14;
    v31 = AssociatedConformanceWitness;
    v21 = type metadata accessor for ReconciliationID();
    sub_1CF050768(v21, v19);
    v22 = *(*v20 + 216);

    v22(v19, v24, v25, v26, v27);
    (*(v16 + 8))(v19, v15);
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF934028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v24 = a2;
  v25 = a3;
  v23[1] = a1;
  v6 = *v5;
  v7 = *(*v5 + 616);
  v8 = *(*v5 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(v6 + 624);
  v11 = *(v6 + 608);
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v28 = AssociatedTypeWitness;
  v29 = v12;
  v30 = AssociatedConformanceWitness;
  v31 = v14;
  v15 = type metadata accessor for ReconciliationID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v23 - v18;
  v20 = v5[3];
  if (v20)
  {
    v28 = v12;
    v29 = AssociatedTypeWitness;
    v30 = v14;
    v31 = AssociatedConformanceWitness;
    v21 = type metadata accessor for ReconciliationID();
    sub_1CF050768(v21, v19);
    v22 = *(*v20 + 208);

    v22(v19, v24, v25, v26, v27);
    (*(v16 + 8))(v19, v15);
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF93426C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a2;
  v47 = a3;
  v44 = a4;
  v45 = a1;
  v5 = *v4;
  v6 = *(*v4 + 616);
  v7 = *(*v4 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(v5 + 624);
  v10 = *(v5 + 608);
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42 = v11;
  v43 = AssociatedTypeWitness;
  v48 = AssociatedTypeWitness;
  v49 = v11;
  v40 = swift_getAssociatedConformanceWitness();
  v41 = AssociatedConformanceWitness;
  v50 = AssociatedConformanceWitness;
  v51 = v40;
  v13 = type metadata accessor for ReconciliationID();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = sub_1CF9E75D8();
  v37 = *(v15 - 8);
  v38 = v15;
  v16 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - v17;
  v19 = swift_getTupleTypeMetadata2();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v36 - v21;
  v39 = v13[-1].i64[1];
  v23 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v36 - v25;
  v27 = v4[3];
  if (v27)
  {
    v28 = *(*v27 + 224);

    v29 = v52;
    v28(v45, v46, v47);

    if (!v29)
    {
      if ((*(*(TupleTypeMetadata2 - 8) + 48))(v18, 1, TupleTypeMetadata2) == 1)
      {
        (*(v37 + 8))(v18, v38);
        v48 = v42;
        v49 = v43;
        v50 = v40;
        v51 = v41;
        type metadata accessor for ReconciliationID();
        v30 = swift_getTupleTypeMetadata2();
        (*(*(v30 - 8) + 56))(v44, 1, 1, v30);
      }

      else
      {
        LODWORD(v52) = v18[*(TupleTypeMetadata2 + 48)];
        v47 = *(v19 + 48);
        v31 = v39;
        v32 = *(v39 + 32);
        v32(v22, v18, v13);
        v22[v47] = v52;
        LODWORD(v52) = v22[*(v19 + 48)];
        v32(v26, v22, v13);
        v48 = v42;
        v49 = v43;
        v50 = v40;
        v51 = v41;
        type metadata accessor for ReconciliationID();
        v33 = swift_getTupleTypeMetadata2();
        v34 = *(v33 + 48);
        v35 = v44;
        sub_1CF050768(v13, v44);
        (*(v31 + 8))(v26, v13);
        *(v35 + v34) = v52;
        (*(*(v33 - 8) + 56))(v35, 0, 1, v33);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CF934744(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  if (v4)
  {
    v7 = result;
    v8 = *(*v4 + 232);

    LOBYTE(a3) = v8(v7, a2, a3);

    return a3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF9347D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  if (v4)
  {
    v7 = result;
    v8 = *(*v4 + 240);

    LOBYTE(a3) = v8(v7, a2, a3);

    return a3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CF93486C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a2;
  v43 = a6;
  v38 = a1;
  v10 = *v6;
  v11 = sub_1CF9E7978();
  v40 = *(v11 - 8);
  v41 = v11;
  v12 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  v15 = v10[75];
  v16 = v10[76];
  v17 = v10[78];
  v35 = v10[77];
  v36 = v15;
  v44 = v15;
  v45 = v16;
  v33 = v17;
  v34 = v16;
  v46 = v35;
  v47 = v17;
  v37 = type metadata accessor for ReconciliationMutation();
  v18 = sub_1CF9E7AC8();
  v39 = *(v18 - 8);
  v19 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v32 - v20;
  v22 = v6[3];
  if (v22)
  {
    v23 = v6[3];

    MEMORY[0x1D3868E50](a3, a5);
    v24 = swift_allocObject();
    v25 = v34;
    v26 = v35;
    v24[2] = v36;
    v24[3] = v25;
    v24[4] = a3;
    v24[5] = a4;
    v27 = v33;
    v24[6] = v26;
    v24[7] = v27;
    v38 = a4;
    v28 = v43;
    v24[8] = a5;
    v24[9] = v28;
    v29 = v41;
    swift_getWitnessTable();
    sub_1CF9E7C38();

    (*(v40 + 8))(v14, v29);
    v30 = *(*v22 + 544);
    WitnessTable = swift_getWitnessTable();
    v30(v21, v42, v18, v38, WitnessTable, v28);
    (*(v39 + 8))(v21, v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CF934BAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = v5[3];
  if (v8)
  {
    v13 = result;
    v14 = v7;
    v15 = *(*v8 + 344);

    v16 = v15((v13 & 1) == 0, a2, a3, a4, a5);
    v18 = v17;

    if (!v6)
    {
      v28 = v27;
      v29 = v16;
      MEMORY[0x1EEE9AC00](v19);
      v20 = v14[76];
      v26[2] = v14[75];
      v26[3] = v20;
      v21 = v14[77];
      v26[4] = a4;
      v26[5] = v21;
      v26[6] = v14[78];
      v26[7] = a5;
      swift_getAssociatedTypeWitness();
      sub_1CF9E75D8();
      v27[1] = v18;
      swift_getAssociatedTypeWitness();
      sub_1CF9E75D8();
      swift_getTupleTypeMetadata3();
      v22 = sub_1CF9E6E58();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      WitnessTable = swift_getWitnessTable();
      v8 = sub_1CF054A5C(sub_1CF935BE4, v26, v22, TupleTypeMetadata3, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v25);
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF934E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  swift_getAssociatedTypeWitness();
  v3 = sub_1CF9E75D8();
  swift_getAssociatedTypeWitness();
  v4 = sub_1CF9E75D8();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v6 = *(TupleTypeMetadata3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v15 = swift_getTupleTypeMetadata3();
  v34 = *(v15 + 48);
  v16 = *(v15 + 64);
  v36 = v14;
  v37 = v16;
  v17 = *(v6 + 16);
  v18 = a1;
  v31 = a1;
  v17(v14, a1, TupleTypeMetadata3);
  v19 = *(TupleTypeMetadata3 + 48);
  v20 = v4;
  v32 = v4;
  v21 = *(v4 - 8);
  v22 = v38;
  (*(v21 + 32))(v38, &v14[v19], v20);
  v23 = v35;
  v17(v35, v18, TupleTypeMetadata3);
  v33 = *(TupleTypeMetadata3 + 48);
  v24 = v3;
  v25 = *(v3 - 8);
  (*(v25 + 32))(v22 + v34, v23, v24);
  v17(v9, v31, TupleTypeMetadata3);
  v26 = *(TupleTypeMetadata3 + 48);
  *(v22 + v37) = v9[*(TupleTypeMetadata3 + 64)];
  v27 = *(v21 + 8);
  v28 = v32;
  v27(&v9[v26], v32);
  v29 = *(v25 + 8);
  v29(v9, v24);
  v27(&v23[v33], v28);
  return (v29)(v36, v24);
}

uint64_t sub_1CF93515C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v8 = *v6;
  v9 = v6[3];
  if (v9)
  {
    v14 = result;
    v15 = v8;
    v16 = *(*v9 + 400);

    v17 = v16((v14 & 1) == 0, a2, a3 & 1, a4, a5, v29);
    v19 = v18;

    if (!v7)
    {
      v28 = &v28;
      v30 = v17;
      MEMORY[0x1EEE9AC00](v20);
      v21 = v15[76];
      v27[2] = v15[75];
      v27[3] = v21;
      v22 = v15[77];
      v27[4] = a5;
      v27[5] = v22;
      v27[6] = v15[78];
      v27[7] = v29;
      swift_getAssociatedTypeWitness();
      sub_1CF9E75D8();
      LODWORD(v29) = v19;
      swift_getAssociatedTypeWitness();
      sub_1CF9E75D8();
      swift_getTupleTypeMetadata2();
      v23 = sub_1CF9E6E58();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      WitnessTable = swift_getWitnessTable();
      v9 = sub_1CF054A5C(sub_1CF935CCC, v27, v23, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v26);
    }

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF9353D0(uint64_t result, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v32 = a7;
  v10 = *v8;
  v11 = v8[3];
  if (v11)
  {
    v16 = result;
    v17 = v10;
    v18 = *(a3 + 8);
    v33 = *a3;
    v34 = v18;
    v19 = *(*v11 + 408);

    v20 = v19(v16, (a2 & 1) == 0, &v33, a4, a5 & 1, a6, v32, v35);
    v22 = v21;

    if (!v9)
    {
      v31 = &v31;
      v33 = v20;
      MEMORY[0x1EEE9AC00](v23);
      v24 = v17[76];
      v30[2] = v17[75];
      v30[3] = v24;
      v25 = v17[77];
      v30[4] = v32;
      v30[5] = v25;
      v30[6] = v17[78];
      v30[7] = v35;
      swift_getAssociatedTypeWitness();
      sub_1CF9E75D8();
      LODWORD(v35) = v22;
      swift_getAssociatedTypeWitness();
      sub_1CF9E75D8();
      swift_getTupleTypeMetadata2();
      v26 = sub_1CF9E6E58();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      WitnessTable = swift_getWitnessTable();
      v11 = sub_1CF054A5C(sub_1CF935BA4, v30, v26, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v29);
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF935664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  swift_getAssociatedTypeWitness();
  v3 = sub_1CF9E75D8();
  swift_getAssociatedTypeWitness();
  v4 = sub_1CF9E75D8();
  v22 = v3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v23 = *(swift_getTupleTypeMetadata2() + 48);
  v13 = *(v6 + 16);
  v13(v12, a1, TupleTypeMetadata2);
  v14 = *(v4 - 8);
  v15 = v24;
  (*(v14 + 32))(v24, &v12[*(TupleTypeMetadata2 + 48)], v4);
  v13(v9, a1, TupleTypeMetadata2);
  v16 = *(TupleTypeMetadata2 + 48);
  v17 = *(v22 - 8);
  v18 = v15 + v23;
  v19 = v22;
  (*(v17 + 32))(v18, v9);
  (*(v14 + 8))(&v9[v16], v4);
  return (*(v17 + 8))(v12, v19);
}

uint64_t sub_1CF9358F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  if (v4)
  {
    v7 = result;
    v8 = *(*v4 + 304);

    LOBYTE(a3) = v8(v7, a2, a3);

    return a3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF93598C(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 + 24);
  if (v7)
  {
    v12 = result;
    v13 = *(*v7 + 384);

    v14 = v13(v12, a2 & 1, a3, a4, a5);

    if (v6)
    {
      return v15;
    }

    else
    {
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF935A4C(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 + 24);
  if (v7)
  {
    v12 = result;
    v13 = *(*v7 + 456);

    v14 = v13(v12, a2 & 1, a3, a4, a5);

    if (v6)
    {
      return v15;
    }

    else
    {
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF935B14()
{
  v0 = sub_1CF341938();
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_1CF935B44()
{
  v0 = *(sub_1CF341938() + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF935BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  return sub_1CF935664(a1, a2);
}

uint64_t sub_1CF935C40@<X0>(uint64_t a1@<X8>)
{
  v5 = vextq_s8(v1[1], v1[1], 8uLL);
  v6 = vextq_s8(v1[3], v1[3], 8uLL);
  v3 = type metadata accessor for ReconciliationMutation();
  return sub_1CF0769FC(v3, a1);
}

uint64_t sub_1CF935D1C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1F0, &qword_1CF9FCCD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1D6D18();
  sub_1CF9E82A8();
  return (*(v3 + 8))(v6, v2);
}

id sub_1CF935E40()
{
  result = FPVersion();
  if (result)
  {
    v1 = result;
    v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF935EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v28 = a3;
  v29 = a4;
  v32 = a2;
  v27 = a1;
  v8 = *(*v6 + 88);
  v9 = *(*v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v27 - v14;
  (*(v11 + 16))(&v27 - v14, a1, AssociatedTypeWitness, v13);
  v16 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 2) = v9;
  *(v19 + 3) = v8;
  *(v19 + 4) = v6;
  (*(v11 + 32))(&v19[v16], v15, AssociatedTypeWitness);
  v20 = &v19[v17];
  v22 = v28;
  v21 = v29;
  *v20 = v28;
  *(v20 + 1) = v21;
  v23 = &v19[v18];
  v24 = v31;
  *v23 = v30;
  *(v23 + 1) = v24;
  v25 = *(*v6 + 144);

  v25(v27, v32, 0, 0, v22, v21, sub_1CF9379FC, v19);
}

uint64_t sub_1CF936114(uint64_t a1)
{
  v2 = *v1;
  v3 = swift_allocObject();
  v4 = *(v2 + 88);
  v5 = *(v2 + 80);
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 40);
  *(v3 + 16) = sub_1CF9E65D8();
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v3;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;

  v10 = v7;
  sub_1CF935EF8(a1, 0, sub_1CF9379F0, v8, sub_1CF2B1874, v9);

  sub_1CF9E72F8();
  swift_beginAccess();
  nullsub_1(*(v3 + 16));
  sub_1CF9E66B8();

  swift_getWitnessTable();
  v11 = sub_1CF9E6E88();

  return v11;
}

uint64_t sub_1CF936340(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3 < 201)
  {
    v8 = v3;
    v11 = *v3;
    v12 = a2[3];
    v20 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v12);
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    v13 = *(v11 + 80);
    v14 = *(v11 + 88);
    v15 = *(v14 + 8);
    sub_1CF9E7FE8();
    sub_1CF4FB2BC(0, 0xE000000000000000, v12, v20);

    result = sub_1CF06D940(v13, v14, v21);
    if (LOBYTE(v21[0]) == 1)
    {
      v16 = a2[3];
      v17 = a2[4];
      v18 = __swift_project_boxed_opaque_existential_1(a2, v16);
      MEMORY[0x1EEE9AC00](v18);
      v19[2] = v8;
      v19[3] = a1;
      v19[4] = a3;
      return sub_1CF4FB38C(32, 0xE100000000000000, sub_1CF9379D0, v19, v16, MEMORY[0x1E69E7CA8] + 8, v17);
    }
  }

  else
  {
    v5 = a2[3];
    v6 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v5);
    return sub_1CF4FB2BC(0xD000000000000018, 0x80000001CFA46490, v5, v6);
  }

  return result;
}

uint64_t sub_1CF9364FC(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = (&v15 - v10);
  (*(v3 + 96))(v9);
  sub_1CF936688(a1, v11);
  v12 = *(v7 + 8);
  v13 = v12(v11, AssociatedTypeWitness);
  (*(*v1 + 104))(v13);
  sub_1CF936688(a1, v11);
  return v12(v11, AssociatedTypeWitness);
}

uint64_t sub_1CF936688(void *a1, uint64_t *a2)
{
  v3 = v2;
  v53 = a2;
  v45 = a1;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v7 = sub_1CF9E8238();
  v55 = *(v7 - 8);
  v8 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v43 - v9;
  v47 = v6;
  v46 = *(v6 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v43 - v12;
  v50 = *(v5 - 8);
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v43 - v15;
  v16 = *(v4 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v56[1] = AssociatedTypeWitness;
  v56[2] = v18;
  v56[3] = AssociatedConformanceWitness;
  v56[4] = v20;
  v21 = type metadata accessor for FileItemVersion();
  v49 = sub_1CF9E75D8();
  v22 = *(v49 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v25 = &v43 - v24;
  v26 = dispatch_group_create();
  v48 = v7;
  sub_1CF9E75D8();
  v27 = swift_allocBox();
  v29 = v28;
  (*(v55 + 56))(v28, 1, 1, v7);
  dispatch_group_enter(v26);
  (*(*(v21 - 8) + 56))(v25, 1, 1, v21);
  v30 = swift_allocObject();
  v51 = v5;
  v30[2] = v5;
  v30[3] = v16;
  v30[4] = v27;
  v30[5] = v26;
  v31 = *(*v3 + 136);
  v52 = v27;

  v32 = v26;
  v33 = v3;
  v31(v53, v25, 0, 1, sub_1CF9379C4, v30);

  (*(v22 + 8))(v25, v49);
  v34 = v55;
  sub_1CF9E72F8();
  v35 = v48;
  swift_beginAccess();
  if ((*(v34 + 48))(v29, 1, v35))
  {

    v36 = v54;
    (*(v50 + 56))(v54, 1, 1, v51);
  }

  else
  {
    v37 = v50;
    v38 = v51;
    v39 = v43;
    v40 = v45;
    v53 = v33;
    (*(v34 + 16))(v44, v29, v35);
    v41 = v54;
    sub_1CF9AD180(v35, v56, v54);
    v36 = v41;
    if ((*(v37 + 48))(v41, 1, v38) != 1)
    {
      (*(v37 + 32))(v39, v41, v38);
      sub_1CF936340(v39, v40, 1);

      (*(v37 + 8))(v39, v38);
    }
  }

  (*(v46 + 8))(v36, v47);
}

BOOL sub_1CF936C68(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = *a2;
  v5 = a2[1];
  v7 = (*(*v2 + 112))();
  if (v7 != 2 && (v7 & 1) != 0)
  {
    v8 = sub_1CEFE7394(v4, v3);
    if (v9)
    {
      if (v8 == 12565487 && v9 == 0xA300000000000000)
      {
      }

      else
      {
        v11 = sub_1CF9E8048();

        if ((v11 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v13 = sub_1CF9E69E8();
      v14 = sub_1CF025150(v13, v4, v3);
      v4 = MEMORY[0x1D3868C10](v14);
      v3 = v15;

LABEL_14:
      v16 = sub_1CEFE7394(v6, v5);
      if (v17)
      {
        if (v16 == 12565487 && v17 == 0xA300000000000000)
        {

          goto LABEL_19;
        }

        v18 = sub_1CF9E8048();

        if (v18)
        {
LABEL_19:
          v19 = sub_1CF9E69E8();
          v20 = sub_1CF025150(v19, v6, v5);
          v21 = MEMORY[0x1D3868C10](v20);
          v5 = v22;

          if (v4 != v21)
          {
            goto LABEL_24;
          }

          goto LABEL_22;
        }
      }

      if (v4 != v6)
      {
LABEL_24:
        v23 = sub_1CF9E8048();

        return v23 & 1;
      }

LABEL_22:
      if (v3 == v5)
      {

        return 1;
      }

      goto LABEL_24;
    }

LABEL_9:

    goto LABEL_14;
  }

  sub_1CEFE4E68();
  return sub_1CF9E7678() == 0;
}

uint64_t sub_1CF936FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v7 = sub_1CF9E75D8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v30 = &v24 - v9;
  v34 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v31 = &v24 - v11;
  v35 = *(a3 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v25 = v14;
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_1CF9E6DF8())
  {
    return 0;
  }

  v16 = 0;
  v28 = *(v34 + 64);
  v29 = v34 + 64;
  v17 = v34;
  v36 = (v35 + 16);
  v26 = (v35 + 8);
  v27 = (v35 + 56);
  v18 = v30;
  while (1)
  {
    v19 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v19)
    {
      v20 = *(v35 + 16);
      v20(v15, (a1 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v16), a3);
      v21 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_1CF9E7998();
    if (v25 != 8)
    {
      break;
    }

    v37[0] = result;
    v20 = *v36;
    (*v36)(v15, v37, a3);
    swift_unknownObjectRelease();
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
LABEL_10:
      __break(1u);
      return 0;
    }

LABEL_5:
    v28(a3, v17);
    v20(v18, v15, a3);
    (*v27)(v18, 0, 1, a3);
    swift_beginAccess();
    v22 = *(swift_getAssociatedConformanceWitness() + 40);
    sub_1CF9E6708();
    sub_1CF9E6738();
    swift_endAccess();
    (*v26)(v15, a3);
    ++v16;
    if (v21 == sub_1CF9E6DF8())
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

void sub_1CF937344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v35 = a1;
  v5 = *(*a2 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v38 = &v29 - v11;
  v13 = *(v12 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 1);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v29 - v18;
  (*(v13 + 64))(v5, v13, v17);
  v36 = a2;
  v20 = sub_1CF936114(v19);
  (*(v15 + 8))(v19, AssociatedTypeWitness);
  if (sub_1CF9E6DF8())
  {
    v21 = 0;
    v22 = (v6 + 32);
    v31 = v33 + 1;
    v23 = __OFADD__(v33, 1);
    v32 = v23;
    v33 = v6;
    v34 = (v6 + 16);
    v24 = (v6 + 8);
    while (1)
    {
      v25 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v25)
      {
        (*(v33 + 16))(v38, v20 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v21, v5);
        v26 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        v28 = sub_1CF9E7998();
        if (v30 != 8)
        {
          goto LABEL_18;
        }

        v39 = v28;
        (*v34)(v38, &v39, v5);
        swift_unknownObjectRelease();
        v26 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }
      }

      (*v22)(v9, v38, v5);
      v27 = objc_autoreleasePoolPush();
      if (v32)
      {
        break;
      }

      AssociatedTypeWitness = v27;
      sub_1CF936340(v9, v35, v31);
      if (v37)
      {
        goto LABEL_19;
      }

      objc_autoreleasePoolPop(AssociatedTypeWitness);
      (*v24)(v9, v5);
      ++v21;
      if (v26 == sub_1CF9E6DF8())
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    objc_autoreleasePoolPop(AssociatedTypeWitness);
    __break(1u);
  }

  else
  {
LABEL_16:
  }
}

void sub_1CF9376CC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v5 = sub_1CF9E8238();
  v6 = sub_1CF9E75D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = swift_projectBox();
  v12 = *(v5 - 8);
  (*(v12 + 16))(v10, a1, v5);
  (*(v12 + 56))(v10, 0, 1, v5);
  swift_beginAccess();
  (*(v7 + 40))(v11, v10, v6);
  dispatch_group_leave(a3);
}

uint64_t sub_1CF937890(uint64_t a1)
{
  v2 = sub_1CF1D6D18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF9378CC(uint64_t a1)
{
  v2 = sub_1CF1D6D18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF937908@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 104))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_1CF9379C4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1CF9376CC(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1CF9379FC(uint64_t a1, char a2)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v2 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 1);
  if (a2)
  {
    v13 = a1;
  }

  else
  {
    if (a1)
    {
      v14 = v2[4];
      return sub_1CF935EF8(v2 + v8, a1, *(v2 + v9), *(v2 + v9 + 8), v11, v12);
    }

    v13 = 0;
  }

  v16 = *(v10 + 1);
  return v11(v13);
}

unint64_t sub_1CF937B00()
{
  result = qword_1EDEA8848;
  if (!qword_1EDEA8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8848);
  }

  return result;
}

unint64_t sub_1CF937B58()
{
  result = qword_1EDEA8850;
  if (!qword_1EDEA8850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8850);
  }

  return result;
}

uint64_t sub_1CF937BAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1CF937BF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1CF937C38(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1CF937C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemMetadata();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 104))(a1, a2);
  v9 = v8[*(v5 + 88)];
  sub_1CF06DA00(v8);
  return v9;
}

uint64_t sub_1CF937D30(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1CF06C14C(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      sub_1CEFE42D4(v5, *v4);
      v8 = *(v11 + 16);
      v7 = *(v11 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1CF06C14C((v7 > 1), v8 + 1, 1);
      }

      v4 += 8;
      *(v11 + 16) = v8 + 1;
      v9 = v11 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1CF937E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ItemMetadata();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v15 - v12;
  (*(a2 + 72))(a1, a2);
  (*(a2 + 80))(v16, a1, a2);
  v15[0] = v16[0];
  v15[1] = v16[1];
  (*(a2 + 104))(a1, a2);
  swift_getAssociatedConformanceWitness();
  return sub_1CF67E0DC(v13, v15, v9, AssociatedTypeWitness, a3);
}

uint64_t sub_1CF937F9C(uint64_t a1)
{
  v175 = v1;
  v176 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v171 = v6;
  v8 = v7;
  v164 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v162 = *(AssociatedTypeWitness - 8);
  v11 = *(v162 + 64);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v161 = v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v170 = v152 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v156 = v15;
  v165 = *(v15 - 8);
  v16 = *(v165 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v159 = v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v157 = v152 - v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v158 = AssociatedConformanceWitness;
  v21 = swift_getAssociatedConformanceWitness();
  *&v1171 = v15;
  v163 = AssociatedTypeWitness;
  *(&v1171 + 1) = AssociatedTypeWitness;
  *&v1172 = AssociatedConformanceWitness;
  v160 = v21;
  *(&v1172 + 1) = v21;
  v167 = type metadata accessor for FileItemVersion();
  v172 = *(v167 - 8);
  v22 = *(v172 + 64);
  v23 = MEMORY[0x1EEE9AC00](v167);
  v168 = v152 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v166 = v152 - v25;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v26 = type metadata accessor for ItemState();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = v152 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = v152 - v32;
  sub_1CF937E0C(v8, v5, v152 - v32);
  v34 = v171;
  sub_1CF937E0C(v171, v3, v31);
  v169 = v3;
  (*(v3 + 136))(&v1171, v34, v3);
  BYTE8(v1171) = 0;
  sub_1CF67E2C0(v31, &v1171, v26, v1187);
  v35 = *(v27 + 8);
  v35(v31, v26);
  v35(v33, v26);
  v36 = *(v5 + 112);
  v37 = v166;
  v173 = v8;
  v174 = v5;
  v38 = v8;
  v39 = v167;
  v153 = v36;
  v154 = v5 + 112;
  v36(v38, v5);
  v40 = *(v165 + 16);
  v41 = v156;
  v42 = v157;
  v40(v157, v37, v156);
  v43 = v172 + 8;
  v44 = *(v172 + 8);
  v44(v37, v39);
  v45 = v43;
  v46 = v168;
  v152[0] = *(v169 + 112);
  v152[1] = v169 + 112;
  (v152[0])(v171);
  v47 = v159;
  v40(v159, v46, v41);
  v172 = v45;
  v155 = v44;
  v44(v46, v39);
  v48 = *(v158 + 32);
  v49 = v47;
  LOBYTE(v47) = sub_1CF9E6868();
  v50 = *(v165 + 8);
  v50(v49, v41);
  v50(v42, v41);
  if ((v47 & 1) == 0)
  {
    v1187[0] |= 8uLL;
  }

  v51 = v166;
  v153(v173, v174);
  v52 = v167;
  v53 = *(v167 + 56);
  v55 = v162;
  v54 = v163;
  v165 = *(v162 + 16);
  (v165)(v170, &v51[v53], v163);
  v56 = v155;
  v155(v51, v52);
  v57 = v168;
  (v152[0])(v171, v169);
  v58 = v161;
  (v165)(v161, &v57[*(v52 + 56)], v54);
  v56(v57, v52);
  v59 = *(v160 + 32);
  v60 = v170;
  v61 = sub_1CF9E6868();
  v62 = *(v55 + 8);
  v62(v58, v54);
  v62(v60, v54);
  if ((v61 & 1) == 0)
  {
    v1187[0] |= 0x20000000000uLL;
  }

  v170 = *(v174 + 120);
  (v170)(&v1153, v173);
  v1170 = v1168;
  v1169[12] = v1165;
  v1169[13] = v1166;
  v1169[14] = v1167;
  v1169[8] = v1161;
  v1169[9] = v1162;
  v1169[10] = v1163;
  v1169[11] = v1164;
  v1169[4] = v1157;
  v1169[5] = v1158;
  v1169[6] = v1159;
  v1169[7] = v1160;
  v1169[0] = v1153;
  v1169[1] = v1154;
  v1169[2] = v1155;
  v1169[3] = v1156;
  v1183 = v1165;
  v1184 = v1166;
  v1185 = v1167;
  v1186 = v1168;
  v1179 = v1161;
  v1180 = v1162;
  v1181 = v1163;
  v1182 = v1164;
  v1175 = v1157;
  v1176 = v1158;
  v1177 = v1159;
  v1178 = v1160;
  v1171 = v1153;
  v1172 = v1154;
  v1173 = v1155;
  v1174 = v1156;
  enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1171);
  if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1)
  {
    v64 = 0;
  }

  else
  {
    sub_1CF06CF28(v1169);
    v64 = v1171;
  }

  v65 = v169;
  v66 = v171;
  v172 = *(v169 + 120);
  (v172)(&v1133, v171, v169);
  v1149[12] = v1145;
  v1149[13] = v1146;
  v1149[14] = v1147;
  v1149[8] = v1141;
  v1149[9] = v1142;
  v1149[10] = v1143;
  v1149[11] = v1144;
  v1149[4] = v1137;
  v1149[5] = v1138;
  v1149[6] = v1139;
  v1149[7] = v1140;
  v1149[0] = v1133;
  v1149[1] = v1134;
  v1149[2] = v1135;
  v1149[3] = v1136;
  v1151[12] = v1145;
  v1151[13] = v1146;
  v1151[14] = v1147;
  v1151[8] = v1141;
  v1151[9] = v1142;
  v1151[10] = v1143;
  v1151[11] = v1144;
  v1151[4] = v1137;
  v1151[5] = v1138;
  v1151[6] = v1139;
  v1151[7] = v1140;
  v1151[0] = v1133;
  v1151[1] = v1134;
  v1150 = v1148;
  v1152 = v1148;
  v1151[2] = v1135;
  v1151[3] = v1136;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1151) != 1)
  {
    sub_1CF06CF28(v1149);
    if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 != 1 && v64 == *&v1151[0])
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 != 1)
  {
LABEL_13:
    v1187[0] |= 0x40000uLL;
  }

LABEL_14:
  v67 = v170;
  (v170)(&v1115, v173, v174);
  v1131[12] = v1127;
  v1131[13] = v1128;
  v1131[14] = v1129;
  v1131[8] = v1123;
  v1131[9] = v1124;
  v1131[10] = v1125;
  v1131[11] = v1126;
  v1131[4] = v1119;
  v1131[5] = v1120;
  v1131[6] = v1121;
  v1131[7] = v1122;
  v1131[0] = v1115;
  v1131[1] = v1116;
  v1131[2] = v1117;
  v1131[3] = v1118;
  v1145 = v1127;
  v1146 = v1128;
  v1147 = v1129;
  v1141 = v1123;
  v1142 = v1124;
  v1143 = v1125;
  v1144 = v1126;
  v1137 = v1119;
  v1138 = v1120;
  v1139 = v1121;
  v1140 = v1122;
  v1133 = v1115;
  v1134 = v1116;
  v1132 = v1130;
  v1148 = v1130;
  v1135 = v1117;
  v1136 = v1118;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1133) == 1)
  {
    v68 = 2;
  }

  else
  {
    sub_1CF06CF28(v1131);
    v68 = BYTE8(v1133);
  }

  (v172)(&v1095, v66, v65);
  v1111[12] = v1107;
  v1111[13] = v1108;
  v1111[14] = v1109;
  v1111[8] = v1103;
  v1111[9] = v1104;
  v1111[10] = v1105;
  v1111[11] = v1106;
  v1111[4] = v1099;
  v1111[5] = v1100;
  v1111[6] = v1101;
  v1111[7] = v1102;
  v1111[0] = v1095;
  v1111[1] = v1096;
  v1111[2] = v1097;
  v1111[3] = v1098;
  v1113[12] = v1107;
  v1113[13] = v1108;
  v1113[14] = v1109;
  v1113[8] = v1103;
  v1113[9] = v1104;
  v1113[10] = v1105;
  v1113[11] = v1106;
  v1113[4] = v1099;
  v1113[5] = v1100;
  v1113[6] = v1101;
  v1113[7] = v1102;
  v1113[0] = v1095;
  v1113[1] = v1096;
  v1112 = v1110;
  v1114 = v1110;
  v1113[2] = v1097;
  v1113[3] = v1098;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1113) != 1)
  {
    sub_1CF06CF28(v1111);
    if (v68 != 2 && ((BYTE8(v1113[0]) ^ v68) & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v68 != 2)
  {
LABEL_22:
    v1187[0] |= 0x80000uLL;
  }

LABEL_23:
  v67(&v1077, v173, v174);
  v1094 = v1092;
  v1093[12] = v1089;
  v1093[13] = v1090;
  v1093[14] = v1091;
  v1093[8] = v1085;
  v1093[9] = v1086;
  v1093[10] = v1087;
  v1093[11] = v1088;
  v1093[4] = v1081;
  v1093[5] = v1082;
  v1093[6] = v1083;
  v1093[7] = v1084;
  v1093[0] = v1077;
  v1093[1] = v1078;
  v1093[2] = v1079;
  v1093[3] = v1080;
  v1107 = v1089;
  v1108 = v1090;
  v1109 = v1091;
  v1110 = v1092;
  v1103 = v1085;
  v1104 = v1086;
  v1105 = v1087;
  v1106 = v1088;
  v1099 = v1081;
  v1100 = v1082;
  v1101 = v1083;
  v1102 = v1084;
  v1095 = v1077;
  v1096 = v1078;
  v1097 = v1079;
  v1098 = v1080;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1095) == 1)
  {
    v69 = 2;
  }

  else
  {
    sub_1CF06CF28(v1093);
    v69 = BYTE9(v1095);
  }

  (v172)(&v1057, v66, v65);
  v1073[12] = v1069;
  v1073[13] = v1070;
  v1073[14] = v1071;
  v1073[8] = v1065;
  v1073[9] = v1066;
  v1073[10] = v1067;
  v1073[11] = v1068;
  v1073[4] = v1061;
  v1073[5] = v1062;
  v1073[6] = v1063;
  v1073[7] = v1064;
  v1073[0] = v1057;
  v1073[1] = v1058;
  v1073[2] = v1059;
  v1073[3] = v1060;
  v1075[12] = v1069;
  v1075[13] = v1070;
  v1075[14] = v1071;
  v1075[8] = v1065;
  v1075[9] = v1066;
  v1075[10] = v1067;
  v1075[11] = v1068;
  v1075[4] = v1061;
  v1075[5] = v1062;
  v1075[6] = v1063;
  v1075[7] = v1064;
  v1075[0] = v1057;
  v1075[1] = v1058;
  v1074 = v1072;
  v1076 = v1072;
  v1075[2] = v1059;
  v1075[3] = v1060;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1075) != 1)
  {
    sub_1CF06CF28(v1073);
    if (v69 != 2 && ((BYTE9(v1075[0]) ^ v69) & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v69 != 2)
  {
LABEL_31:
    v1187[0] |= 0x100000uLL;
  }

LABEL_32:
  v67(&v1039, v173, v174);
  v1056 = v1054;
  v1055[12] = v1051;
  v1055[13] = v1052;
  v1055[14] = v1053;
  v1055[8] = v1047;
  v1055[9] = v1048;
  v1055[10] = v1049;
  v1055[11] = v1050;
  v1055[4] = v1043;
  v1055[5] = v1044;
  v1055[6] = v1045;
  v1055[7] = v1046;
  v1055[0] = v1039;
  v1055[1] = v1040;
  v1055[2] = v1041;
  v1055[3] = v1042;
  v1069 = v1051;
  v1070 = v1052;
  v1071 = v1053;
  v1072 = v1054;
  v1065 = v1047;
  v1066 = v1048;
  v1067 = v1049;
  v1068 = v1050;
  v1061 = v1043;
  v1062 = v1044;
  v1063 = v1045;
  v1064 = v1046;
  v1057 = v1039;
  v1058 = v1040;
  v1059 = v1041;
  v1060 = v1042;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1057) == 1)
  {
    v70 = 0;
  }

  else
  {
    v70 = v1058;
    v71 = v1058;
    sub_1CF06CF28(v1055);
  }

  (v172)(&v1005, v66, v65);
  v1021[12] = v1017;
  v1021[13] = v1018;
  v1021[14] = v1019;
  v1021[8] = v1013;
  v1021[9] = v1014;
  v1021[10] = v1015;
  v1021[11] = v1016;
  v1021[4] = v1009;
  v1021[5] = v1010;
  v1021[6] = v1011;
  v1021[7] = v1012;
  v1021[0] = v1005;
  v1021[1] = v1006;
  v1021[2] = v1007;
  v1021[3] = v1008;
  v1035 = v1017;
  v1036 = v1018;
  v1037 = v1019;
  v1031 = v1013;
  v1032 = v1014;
  v1033 = v1015;
  v1034 = v1016;
  v1027 = v1009;
  v1028 = v1010;
  v1029 = v1011;
  v1030 = v1012;
  v1023 = v1005;
  v1024 = v1006;
  v1022 = v1020;
  v1038 = v1020;
  v1025 = v1007;
  v1026 = v1008;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1023) == 1)
  {
    if (v70)
    {
      v72 = sub_1CF9E57E8();
LABEL_42:

LABEL_45:
      v1187[0] |= 0x200000uLL;
      goto LABEL_46;
    }
  }

  else
  {
    v73 = v1024;
    v74 = v1024;
    sub_1CF06CF28(v1021);
    if (v70)
    {
      v72 = sub_1CF9E57E8();
      if (v73)
      {
        v75 = v72;
        v76 = sub_1CF9E57E8();
        sub_1CF1B7E64();
        v77 = sub_1CF9E7568();

        v67 = v170;
        v66 = v171;

        if (v77)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      goto LABEL_42;
    }

    if (v73)
    {
      goto LABEL_45;
    }
  }

LABEL_46:
  v67(&v987, v173, v174);
  v1003[12] = v999;
  v1003[13] = v1000;
  v1003[14] = v1001;
  v1003[8] = v995;
  v1003[9] = v996;
  v1003[10] = v997;
  v1003[11] = v998;
  v1003[4] = v991;
  v1003[5] = v992;
  v1003[6] = v993;
  v1003[7] = v994;
  v1003[0] = v987;
  v1003[1] = v988;
  v1003[2] = v989;
  v1003[3] = v990;
  v1017 = v999;
  v1018 = v1000;
  v1019 = v1001;
  v1013 = v995;
  v1014 = v996;
  v1015 = v997;
  v1016 = v998;
  v1009 = v991;
  v1010 = v992;
  v1011 = v993;
  v1012 = v994;
  v1005 = v987;
  v1006 = v988;
  v1004 = v1002;
  v1020 = v1002;
  v1007 = v989;
  v1008 = v990;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1005) == 1 || (v78 = *(&v1006 + 1), v79 = *(&v1006 + 1), sub_1CF06CF28(v1003), !v78))
  {
    v80 = 0;
  }

  else
  {

    v80 = 1;
  }

  (v172)(&v969, v66, v65);
  v985[12] = v981;
  v985[13] = v982;
  v985[14] = v983;
  v985[8] = v977;
  v985[9] = v978;
  v985[10] = v979;
  v985[11] = v980;
  v985[4] = v973;
  v985[5] = v974;
  v985[6] = v975;
  v985[7] = v976;
  v985[0] = v969;
  v985[1] = v970;
  v985[2] = v971;
  v985[3] = v972;
  v999 = v981;
  v1000 = v982;
  v1001 = v983;
  v995 = v977;
  v996 = v978;
  v997 = v979;
  v998 = v980;
  v991 = v973;
  v992 = v974;
  v993 = v975;
  v994 = v976;
  v987 = v969;
  v988 = v970;
  v986 = v984;
  v1002 = v984;
  v989 = v971;
  v990 = v972;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v987) == 1 || (v81 = *(&v988 + 1), v82 = *(&v988 + 1), sub_1CF06CF28(v985), !v81))
  {
    if ((v80 & 1) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if ((v80 & 1) == 0)
  {
LABEL_55:
    v1187[0] |= 0x400000uLL;
  }

LABEL_56:
  v67(&v951, v173, v174);
  v968 = v966;
  v967[12] = v963;
  v967[13] = v964;
  v967[14] = v965;
  v967[8] = v959;
  v967[9] = v960;
  v967[10] = v961;
  v967[11] = v962;
  v967[4] = v955;
  v967[5] = v956;
  v967[6] = v957;
  v967[7] = v958;
  v967[0] = v951;
  v967[1] = v952;
  v967[2] = v953;
  v967[3] = v954;
  v981 = v963;
  v982 = v964;
  v983 = v965;
  v984 = v966;
  v977 = v959;
  v978 = v960;
  v979 = v961;
  v980 = v962;
  v973 = v955;
  v974 = v956;
  v975 = v957;
  v976 = v958;
  v969 = v951;
  v970 = v952;
  v971 = v953;
  v972 = v954;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v969) == 1)
  {
    v83 = 2;
  }

  else
  {
    sub_1CF06CF28(v967);
    v83 = v971;
  }

  (v172)(&v918, v66, v65);
  v934[12] = v930;
  v934[13] = v931;
  v934[14] = v932;
  v934[8] = v926;
  v934[9] = v927;
  v934[10] = v928;
  v934[11] = v929;
  v934[4] = v922;
  v934[5] = v923;
  v934[6] = v924;
  v934[7] = v925;
  v934[0] = v918;
  v934[1] = v919;
  v934[2] = v920;
  v934[3] = v921;
  v947 = v930;
  v948 = v931;
  v949 = v932;
  v943 = v926;
  v944 = v927;
  v945 = v928;
  v946 = v929;
  v939 = v922;
  v940 = v923;
  v941 = v924;
  v942 = v925;
  v936[0] = v918;
  v936[1] = v919;
  v935 = v933;
  v950 = v933;
  v937 = v920;
  v938 = v921;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v936) != 1)
  {
    sub_1CF06CF28(v934);
    if (v83 != 2 && ((v937 ^ v83) & 1) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if (v83 != 2)
  {
LABEL_64:
    v1187[0] |= 0x1000000uLL;
  }

LABEL_65:
  v67(&v900, v173, v174);
  v916[12] = v912;
  v916[13] = v913;
  v916[14] = v914;
  v916[8] = v908;
  v916[9] = v909;
  v916[10] = v910;
  v916[11] = v911;
  v916[4] = v904;
  v916[5] = v905;
  v916[6] = v906;
  v916[7] = v907;
  v916[0] = v900;
  v916[1] = v901;
  v916[2] = v902;
  v916[3] = v903;
  v930 = v912;
  v931 = v913;
  v932 = v914;
  v926 = v908;
  v927 = v909;
  v928 = v910;
  v929 = v911;
  v922 = v904;
  v923 = v905;
  v924 = v906;
  v925 = v907;
  v918 = v900;
  v919 = v901;
  v917 = v915;
  v933 = v915;
  v920 = v902;
  v921 = v903;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v918) == 1)
  {
    v84 = 2;
  }

  else
  {
    sub_1CF06CF28(v916);
    v84 = BYTE1(v920);
  }

  (v172)(&v867, v171, v65);
  v883[12] = v879;
  v883[13] = v880;
  v883[14] = v881;
  v883[8] = v875;
  v883[9] = v876;
  v883[10] = v877;
  v883[11] = v878;
  v883[4] = v871;
  v883[5] = v872;
  v883[6] = v873;
  v883[7] = v874;
  v883[0] = v867;
  v883[1] = v868;
  v883[2] = v869;
  v883[3] = v870;
  v896 = v879;
  v897 = v880;
  v898 = v881;
  v892 = v875;
  v893 = v876;
  v894 = v877;
  v895 = v878;
  v888 = v871;
  v889 = v872;
  v890 = v873;
  v891 = v874;
  v885[0] = v867;
  v885[1] = v868;
  v884 = v882;
  v899 = v882;
  v886 = v869;
  v887 = v870;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v885) != 1)
  {
    sub_1CF06CF28(v883);
    if (v84 != 2 && ((BYTE1(v886) ^ v84) & 1) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  if (v84 != 2)
  {
LABEL_73:
    v1187[0] |= 0x2000000uLL;
  }

LABEL_74:
  v67(&v849, v173, v174);
  v866 = v864;
  v865[12] = v861;
  v865[13] = v862;
  v865[14] = v863;
  v865[8] = v857;
  v865[9] = v858;
  v865[10] = v859;
  v865[11] = v860;
  v865[4] = v853;
  v865[5] = v854;
  v865[6] = v855;
  v865[7] = v856;
  v865[0] = v849;
  v865[1] = v850;
  v865[2] = v851;
  v865[3] = v852;
  v879 = v861;
  v880 = v862;
  v881 = v863;
  v882 = v864;
  v875 = v857;
  v876 = v858;
  v877 = v859;
  v878 = v860;
  v871 = v853;
  v872 = v854;
  v873 = v855;
  v874 = v856;
  v867 = v849;
  v868 = v850;
  v869 = v851;
  v870 = v852;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v867) == 1)
  {
    v85 = 2;
  }

  else
  {
    sub_1CF06CF28(v865);
    v85 = BYTE2(v869);
  }

  (v172)(&v816, v171, v65);
  v832[12] = v828;
  v832[13] = v829;
  v832[14] = v830;
  v832[8] = v824;
  v832[9] = v825;
  v832[10] = v826;
  v832[11] = v827;
  v832[4] = v820;
  v832[5] = v821;
  v832[6] = v822;
  v832[7] = v823;
  v832[0] = v816;
  v832[1] = v817;
  v832[2] = v818;
  v832[3] = v819;
  v845 = v828;
  v846 = v829;
  v847 = v830;
  v841 = v824;
  v842 = v825;
  v843 = v826;
  v844 = v827;
  v837 = v820;
  v838 = v821;
  v839 = v822;
  v840 = v823;
  v834[0] = v816;
  v834[1] = v817;
  v833 = v831;
  v848 = v831;
  v835 = v818;
  v836 = v819;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v834) != 1)
  {
    sub_1CF06CF28(v832);
    if (v85 != 2 && ((BYTE2(v835) ^ v85) & 1) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

  if (v85 != 2)
  {
LABEL_82:
    v1187[0] |= 0x4000000uLL;
  }

LABEL_83:
  v67(&v798, v173, v174);
  v815 = v813;
  v814[12] = v810;
  v814[13] = v811;
  v814[14] = v812;
  v814[8] = v806;
  v814[9] = v807;
  v814[10] = v808;
  v814[11] = v809;
  v814[4] = v802;
  v814[5] = v803;
  v814[6] = v804;
  v814[7] = v805;
  v814[0] = v798;
  v814[1] = v799;
  v814[2] = v800;
  v814[3] = v801;
  v828 = v810;
  v829 = v811;
  v830 = v812;
  v831 = v813;
  v824 = v806;
  v825 = v807;
  v826 = v808;
  v827 = v809;
  v820 = v802;
  v821 = v803;
  v822 = v804;
  v823 = v805;
  v816 = v798;
  v817 = v799;
  v818 = v800;
  v819 = v801;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v816) == 1)
  {
    v86 = 0;
    v87 = 0;
  }

  else
  {
    v86 = *(&v818 + 1);
    v87 = v819;

    sub_1CF06CF28(v814);
  }

  (v172)(&v765, v171, v65);
  v781[12] = v777;
  v781[13] = v778;
  v781[14] = v779;
  v781[8] = v773;
  v781[9] = v774;
  v781[10] = v775;
  v781[11] = v776;
  v781[4] = v769;
  v781[5] = v770;
  v781[6] = v771;
  v781[7] = v772;
  v781[0] = v765;
  v781[1] = v766;
  v781[2] = v767;
  v781[3] = v768;
  v794 = v777;
  v795 = v778;
  v796 = v779;
  v790 = v773;
  v791 = v774;
  v792 = v775;
  v793 = v776;
  v786 = v769;
  v787 = v770;
  v788 = v771;
  v789 = v772;
  v783[0] = v765;
  v783[1] = v766;
  v782 = v780;
  v797 = v780;
  v784 = v767;
  v785 = v768;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v783) == 1)
  {
    if (!v87)
    {
      goto LABEL_98;
    }

    goto LABEL_96;
  }

  v88 = *(&v784 + 1);
  v89 = v785;

  sub_1CF06CF28(v781);
  if (!v87)
  {
    if (!v89)
    {
      goto LABEL_98;
    }

    goto LABEL_96;
  }

  if (!v89)
  {
LABEL_96:

LABEL_97:
    v1187[0] |= 0x8000000uLL;
    goto LABEL_98;
  }

  if (v86 == v88 && v87 == v89)
  {

    goto LABEL_98;
  }

  v130 = sub_1CF9E8048();

  if ((v130 & 1) == 0)
  {
    goto LABEL_97;
  }

LABEL_98:
  (v170)(&v747, v173, v174);
  v764 = v762;
  v763[12] = v759;
  v763[13] = v760;
  v763[14] = v761;
  v763[8] = v755;
  v763[9] = v756;
  v763[10] = v757;
  v763[11] = v758;
  v763[4] = v751;
  v763[5] = v752;
  v763[6] = v753;
  v763[7] = v754;
  v763[0] = v747;
  v763[1] = v748;
  v763[2] = v749;
  v763[3] = v750;
  v777 = v759;
  v778 = v760;
  v779 = v761;
  v780 = v762;
  v773 = v755;
  v774 = v756;
  v775 = v757;
  v776 = v758;
  v769 = v751;
  v770 = v752;
  v771 = v753;
  v772 = v754;
  v765 = v747;
  v766 = v748;
  v767 = v749;
  v768 = v750;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v765) == 1)
  {
    v90 = 0;
    v91 = 0;
  }

  else
  {
    v90 = *(&v768 + 1);
    v91 = v769;

    sub_1CF06CF28(v763);
  }

  (v172)(&v715, v171, v65);
  v731[12] = v727;
  v731[13] = v728;
  v731[14] = v729;
  v731[8] = v723;
  v731[9] = v724;
  v731[10] = v725;
  v731[11] = v726;
  v731[4] = v719;
  v731[5] = v720;
  v731[6] = v721;
  v731[7] = v722;
  v731[0] = v715;
  v731[1] = v716;
  v731[2] = v717;
  v731[3] = v718;
  v743 = v727;
  v744 = v728;
  v745 = v729;
  v739 = v723;
  v740 = v724;
  v741 = v725;
  v742 = v726;
  v735 = v719;
  v736 = v720;
  v737 = v721;
  v738 = v722;
  v733[0] = v715;
  v733[1] = v716;
  v732 = v730;
  v746 = v730;
  v733[2] = v717;
  v734 = v718;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v733) == 1)
  {
    if (!v91)
    {
      goto LABEL_113;
    }

    goto LABEL_111;
  }

  v92 = *(&v734 + 1);
  v93 = v735;

  sub_1CF06CF28(v731);
  if (!v91)
  {
    if (!v93)
    {
      goto LABEL_113;
    }

    goto LABEL_111;
  }

  if (!v93)
  {
LABEL_111:

LABEL_112:
    v1187[0] |= 0x10000000uLL;
    goto LABEL_113;
  }

  if (v90 == v92 && v91 == v93)
  {

    goto LABEL_113;
  }

  v131 = sub_1CF9E8048();

  if ((v131 & 1) == 0)
  {
    goto LABEL_112;
  }

LABEL_113:
  v94 = v170;
  (v170)(&v697, v173, v174);
  v714 = v712;
  v713[12] = v709;
  v713[13] = v710;
  v713[14] = v711;
  v713[8] = v705;
  v713[9] = v706;
  v713[10] = v707;
  v713[11] = v708;
  v713[4] = v701;
  v713[5] = v702;
  v713[6] = v703;
  v713[7] = v704;
  v713[0] = v697;
  v713[1] = v698;
  v713[2] = v699;
  v713[3] = v700;
  v727 = v709;
  v728 = v710;
  v729 = v711;
  v730 = v712;
  v723 = v705;
  v724 = v706;
  v725 = v707;
  v726 = v708;
  v719 = v701;
  v720 = v702;
  v721 = v703;
  v722 = v704;
  v715 = v697;
  v716 = v698;
  v717 = v699;
  v718 = v700;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v715) == 1)
  {
    v95 = 2;
  }

  else
  {
    sub_1CF06CF28(v713);
    v95 = BYTE8(v719);
  }

  (v172)(&v666, v171, v65);
  v682[12] = v678;
  v682[13] = v679;
  v682[14] = v680;
  v682[8] = v674;
  v682[9] = v675;
  v682[10] = v676;
  v682[11] = v677;
  v682[4] = v670;
  v682[5] = v671;
  v682[6] = v672;
  v682[7] = v673;
  v682[0] = v666;
  v682[1] = v667;
  v682[2] = v668;
  v682[3] = v669;
  v693 = v678;
  v694 = v679;
  v695 = v680;
  v689 = v674;
  v690 = v675;
  v691 = v676;
  v692 = v677;
  v685 = v670;
  v686 = v671;
  v687 = v672;
  v688 = v673;
  v684[0] = v666;
  v684[1] = v667;
  v683 = v681;
  v696 = v681;
  v684[2] = v668;
  v684[3] = v669;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v684) != 1)
  {
    sub_1CF06CF28(v682);
    if (v95 != 2 && ((BYTE8(v685) ^ v95) & 1) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_121;
  }

  if (v95 != 2)
  {
LABEL_121:
    v1187[0] |= 0x20000000uLL;
  }

LABEL_122:
  v94(&v648, v173, v174);
  v665 = v663;
  v664[12] = v660;
  v664[13] = v661;
  v664[14] = v662;
  v664[8] = v656;
  v664[9] = v657;
  v664[10] = v658;
  v664[11] = v659;
  v664[4] = v652;
  v664[5] = v653;
  v664[6] = v654;
  v664[7] = v655;
  v664[0] = v648;
  v664[1] = v649;
  v664[2] = v650;
  v664[3] = v651;
  v678 = v660;
  v679 = v661;
  v680 = v662;
  v681 = v663;
  v674 = v656;
  v675 = v657;
  v676 = v658;
  v677 = v659;
  v670 = v652;
  v671 = v653;
  v672 = v654;
  v673 = v655;
  v666 = v648;
  v667 = v649;
  v668 = v650;
  v669 = v651;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v666) == 1)
  {
    v96 = 0;
    v97 = 0;
  }

  else
  {
    v97 = *(&v671 + 1);
    v96 = v671;

    sub_1CF06CF28(v664);
  }

  (v172)(&v618, v171, v65);
  v634[12] = v630;
  v634[13] = v631;
  v634[14] = v632;
  v634[8] = v626;
  v634[9] = v627;
  v634[10] = v628;
  v634[11] = v629;
  v634[4] = v622;
  v634[5] = v623;
  v634[6] = v624;
  v634[7] = v625;
  v634[0] = v618;
  v634[1] = v619;
  v634[2] = v620;
  v634[3] = v621;
  v644 = v630;
  v645 = v631;
  v646 = v632;
  v640 = v626;
  v641 = v627;
  v642 = v628;
  v643 = v629;
  v636[4] = v622;
  v637 = v623;
  v638 = v624;
  v639 = v625;
  v636[0] = v618;
  v636[1] = v619;
  v635 = v633;
  v647 = v633;
  v636[2] = v620;
  v636[3] = v621;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v636) == 1)
  {
    if (!v97)
    {
      goto LABEL_136;
    }

    goto LABEL_134;
  }

  v98 = v637;

  sub_1CF06CF28(v634);
  if (!v97)
  {
    if (!*(&v98 + 1))
    {
      goto LABEL_136;
    }

    goto LABEL_134;
  }

  if (!*(&v98 + 1))
  {
LABEL_134:

LABEL_135:
    v1187[0] |= 0x40000000uLL;
    goto LABEL_136;
  }

  if (__PAIR128__(v97, v96) == v98)
  {

    goto LABEL_136;
  }

  v132 = sub_1CF9E8048();

  if ((v132 & 1) == 0)
  {
    goto LABEL_135;
  }

LABEL_136:
  v99 = v170;
  (v170)(&v600, v173, v174);
  v616[12] = v612;
  v616[13] = v613;
  v616[14] = v614;
  v616[8] = v608;
  v616[9] = v609;
  v616[10] = v610;
  v616[11] = v611;
  v616[4] = v604;
  v616[5] = v605;
  v616[6] = v606;
  v616[7] = v607;
  v616[0] = v600;
  v616[1] = v601;
  v616[2] = v602;
  v616[3] = v603;
  v630 = v612;
  v631 = v613;
  v632 = v614;
  v626 = v608;
  v627 = v609;
  v628 = v610;
  v629 = v611;
  v622 = v604;
  v623 = v605;
  v624 = v606;
  v625 = v607;
  v618 = v600;
  v619 = v601;
  v617 = v615;
  v633 = v615;
  v620 = v602;
  v621 = v603;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v618) == 1)
  {
    v100 = 2;
  }

  else
  {
    sub_1CF06CF28(v616);
    v100 = BYTE8(v624);
  }

  v101 = v171;
  (v172)(&v571, v171, v65);
  v587[12] = v583;
  v587[13] = v584;
  v587[14] = v585;
  v587[8] = v579;
  v587[9] = v580;
  v587[10] = v581;
  v587[11] = v582;
  v587[4] = v575;
  v587[5] = v576;
  v587[6] = v577;
  v587[7] = v578;
  v587[0] = v571;
  v587[1] = v572;
  v587[2] = v573;
  v587[3] = v574;
  v596 = v583;
  v597 = v584;
  v598 = v585;
  v592 = v579;
  v593 = v580;
  v594 = v581;
  v595 = v582;
  v589[4] = v575;
  v589[5] = v576;
  v590 = v577;
  v591 = v578;
  v589[0] = v571;
  v589[1] = v572;
  v588 = v586;
  v599 = v586;
  v589[2] = v573;
  v589[3] = v574;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v589) != 1)
  {
    sub_1CF06CF28(v587);
    if (v100 != 2 && ((BYTE8(v590) ^ v100) & 1) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_144;
  }

  if (v100 != 2)
  {
LABEL_144:
    v1187[0] |= 0x80000000uLL;
  }

LABEL_145:
  v99(&v553, v173, v174);
  v570 = v568;
  v569[12] = v565;
  v569[13] = v566;
  v569[14] = v567;
  v569[8] = v561;
  v569[9] = v562;
  v569[10] = v563;
  v569[11] = v564;
  v569[4] = v557;
  v569[5] = v558;
  v569[6] = v559;
  v569[7] = v560;
  v569[0] = v553;
  v569[1] = v554;
  v569[2] = v555;
  v569[3] = v556;
  v583 = v565;
  v584 = v566;
  v585 = v567;
  v586 = v568;
  v579 = v561;
  v580 = v562;
  v581 = v563;
  v582 = v564;
  v575 = v557;
  v576 = v558;
  v577 = v559;
  v578 = v560;
  v571 = v553;
  v572 = v554;
  v573 = v555;
  v574 = v556;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v571) == 1)
  {
    v102 = 2;
  }

  else
  {
    sub_1CF06CF28(v569);
    v102 = BYTE9(v577);
  }

  (v172)(&v524, v101, v65);
  v540[12] = v536;
  v540[13] = v537;
  v540[14] = v538;
  v540[8] = v532;
  v540[9] = v533;
  v540[10] = v534;
  v540[11] = v535;
  v540[4] = v528;
  v540[5] = v529;
  v540[6] = v530;
  v540[7] = v531;
  v540[0] = v524;
  v540[1] = v525;
  v540[2] = v526;
  v540[3] = v527;
  v549 = v536;
  v550 = v537;
  v551 = v538;
  v545 = v532;
  v546 = v533;
  v547 = v534;
  v548 = v535;
  v542[4] = v528;
  v542[5] = v529;
  v543 = v530;
  v544 = v531;
  v542[0] = v524;
  v542[1] = v525;
  v541 = v539;
  v552 = v539;
  v542[2] = v526;
  v542[3] = v527;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v542) != 1)
  {
    sub_1CF06CF28(v540);
    if (v102 != 2 && ((BYTE9(v543) ^ v102) & 1) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_153;
  }

  if (v102 != 2)
  {
LABEL_153:
    v1187[0] |= 0x100000000uLL;
  }

LABEL_154:
  v99(&v506, v173, v174);
  v523 = v521;
  v522[12] = v518;
  v522[13] = v519;
  v522[14] = v520;
  v522[8] = v514;
  v522[9] = v515;
  v522[10] = v516;
  v522[11] = v517;
  v522[4] = v510;
  v522[5] = v511;
  v522[6] = v512;
  v522[7] = v513;
  v522[0] = v506;
  v522[1] = v507;
  v522[2] = v508;
  v522[3] = v509;
  v536 = v518;
  v537 = v519;
  v538 = v520;
  v539 = v521;
  v532 = v514;
  v533 = v515;
  v534 = v516;
  v535 = v517;
  v528 = v510;
  v529 = v511;
  v530 = v512;
  v531 = v513;
  v524 = v506;
  v525 = v507;
  v526 = v508;
  v527 = v509;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v524) == 1)
  {
    v103 = 0;
    v104 = 0;
  }

  else
  {
    v104 = *(&v531 + 1);
    v103 = v531;

    sub_1CF06CF28(v522);
  }

  (v172)(&v478, v101, v65);
  v494[12] = v490;
  v494[13] = v491;
  v494[14] = v492;
  v494[8] = v486;
  v494[9] = v487;
  v494[10] = v488;
  v494[11] = v489;
  v494[4] = v482;
  v494[5] = v483;
  v494[6] = v484;
  v494[7] = v485;
  v494[0] = v478;
  v494[1] = v479;
  v494[2] = v480;
  v494[3] = v481;
  v502 = v490;
  v503 = v491;
  v504 = v492;
  v498 = v486;
  v499 = v487;
  v500 = v488;
  v501 = v489;
  v496[4] = v482;
  v496[5] = v483;
  v496[6] = v484;
  v497 = v485;
  v496[0] = v478;
  v496[1] = v479;
  v495 = v493;
  v505 = v493;
  v496[2] = v480;
  v496[3] = v481;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v496) == 1)
  {
    if (!v104)
    {
      goto LABEL_168;
    }

    goto LABEL_166;
  }

  v105 = v497;

  sub_1CF06CF28(v494);
  if (!v104)
  {
    if (!*(&v105 + 1))
    {
      goto LABEL_168;
    }

    goto LABEL_166;
  }

  if (!*(&v105 + 1))
  {
LABEL_166:

LABEL_167:
    v1187[0] |= 0x200000000uLL;
    goto LABEL_168;
  }

  if (__PAIR128__(v104, v103) == v105)
  {

    goto LABEL_168;
  }

  v133 = sub_1CF9E8048();

  if ((v133 & 1) == 0)
  {
    goto LABEL_167;
  }

LABEL_168:
  (v170)(&v460, v173, v174);
  v477 = v475;
  v476[12] = v472;
  v476[13] = v473;
  v476[14] = v474;
  v476[8] = v468;
  v476[9] = v469;
  v476[10] = v470;
  v476[11] = v471;
  v476[4] = v464;
  v476[5] = v465;
  v476[6] = v466;
  v476[7] = v467;
  v476[0] = v460;
  v476[1] = v461;
  v476[2] = v462;
  v476[3] = v463;
  v490 = v472;
  v491 = v473;
  v492 = v474;
  v493 = v475;
  v486 = v468;
  v487 = v469;
  v488 = v470;
  v489 = v471;
  v482 = v464;
  v483 = v465;
  v484 = v466;
  v485 = v467;
  v478 = v460;
  v479 = v461;
  v480 = v462;
  v481 = v463;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v478) == 1)
  {
    v106 = 0;
    v107 = 0;
  }

  else
  {
    v107 = *(&v486 + 1);
    v106 = v486;

    sub_1CF06CF28(v476);
  }

  (v172)(&v433, v101, v65);
  v449[12] = v445;
  v449[13] = v446;
  v449[14] = v447;
  v449[8] = v441;
  v449[9] = v442;
  v449[10] = v443;
  v449[11] = v444;
  v449[4] = v437;
  v449[5] = v438;
  v449[6] = v439;
  v449[7] = v440;
  v449[0] = v433;
  v449[1] = v434;
  v449[2] = v435;
  v449[3] = v436;
  v456 = v445;
  v457 = v446;
  v458 = v447;
  v452 = v441;
  v453 = v442;
  v454 = v443;
  v455 = v444;
  v451[4] = v437;
  v451[5] = v438;
  v451[6] = v439;
  v451[7] = v440;
  v451[0] = v433;
  v451[1] = v434;
  v450 = v448;
  v459 = v448;
  v451[2] = v435;
  v451[3] = v436;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v451) == 1)
  {
    if (!v107)
    {
      goto LABEL_182;
    }

    goto LABEL_180;
  }

  v108 = v452;

  sub_1CF06CF28(v449);
  if (!v107)
  {
    if (!*(&v108 + 1))
    {
      goto LABEL_182;
    }

    goto LABEL_180;
  }

  if (!*(&v108 + 1))
  {
LABEL_180:

LABEL_181:
    v1187[0] |= 0x400000000uLL;
    goto LABEL_182;
  }

  if (__PAIR128__(v107, v106) == v108)
  {

    goto LABEL_182;
  }

  v134 = sub_1CF9E8048();

  if ((v134 & 1) == 0)
  {
    goto LABEL_181;
  }

LABEL_182:
  (v170)(&v415, v173, v174);
  v432 = v430;
  v431[12] = v427;
  v431[13] = v428;
  v431[14] = v429;
  v431[8] = v423;
  v431[9] = v424;
  v431[10] = v425;
  v431[11] = v426;
  v431[4] = v419;
  v431[5] = v420;
  v431[6] = v421;
  v431[7] = v422;
  v431[0] = v415;
  v431[1] = v416;
  v431[2] = v417;
  v431[3] = v418;
  v445 = v427;
  v446 = v428;
  v447 = v429;
  v448 = v430;
  v441 = v423;
  v442 = v424;
  v443 = v425;
  v444 = v426;
  v437 = v419;
  v438 = v420;
  v439 = v421;
  v440 = v422;
  v433 = v415;
  v434 = v416;
  v435 = v417;
  v436 = v418;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v433) == 1)
  {
    v109 = 0;
    v110 = 0;
  }

  else
  {
    v110 = *(&v442 + 1);
    v109 = v442;

    sub_1CF06CF28(v431);
  }

  (v172)(&v389, v101, v65);
  v405[12] = v401;
  v405[13] = v402;
  v405[14] = v403;
  v405[8] = v397;
  v405[9] = v398;
  v405[10] = v399;
  v405[11] = v400;
  v405[4] = v393;
  v405[5] = v394;
  v405[6] = v395;
  v405[7] = v396;
  v405[0] = v389;
  v405[1] = v390;
  v405[2] = v391;
  v405[3] = v392;
  v411 = v401;
  v412 = v402;
  v413 = v403;
  v407[8] = v397;
  v408 = v398;
  v409 = v399;
  v410 = v400;
  v407[4] = v393;
  v407[5] = v394;
  v407[6] = v395;
  v407[7] = v396;
  v407[0] = v389;
  v407[1] = v390;
  v406 = v404;
  v414 = v404;
  v407[2] = v391;
  v407[3] = v392;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v407) == 1)
  {
    if (!v110)
    {
      goto LABEL_196;
    }

    goto LABEL_194;
  }

  v111 = v408;

  sub_1CF06CF28(v405);
  if (!v110)
  {
    if (!*(&v111 + 1))
    {
      goto LABEL_196;
    }

    goto LABEL_194;
  }

  if (!*(&v111 + 1))
  {
LABEL_194:

LABEL_195:
    v1187[0] |= 0x800000000uLL;
    goto LABEL_196;
  }

  if (__PAIR128__(v110, v109) == v111)
  {

    goto LABEL_196;
  }

  v135 = sub_1CF9E8048();

  if ((v135 & 1) == 0)
  {
    goto LABEL_195;
  }

LABEL_196:
  (v170)(&v371, v173, v174);
  v388 = v386;
  v387[12] = v383;
  v387[13] = v384;
  v387[14] = v385;
  v387[8] = v379;
  v387[9] = v380;
  v387[10] = v381;
  v387[11] = v382;
  v387[4] = v375;
  v387[5] = v376;
  v387[6] = v377;
  v387[7] = v378;
  v387[0] = v371;
  v387[1] = v372;
  v387[2] = v373;
  v387[3] = v374;
  v401 = v383;
  v402 = v384;
  v403 = v385;
  v404 = v386;
  v397 = v379;
  v398 = v380;
  v399 = v381;
  v400 = v382;
  v393 = v375;
  v394 = v376;
  v395 = v377;
  v396 = v378;
  v389 = v371;
  v390 = v372;
  v391 = v373;
  v392 = v374;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v389) == 1)
  {
    v112 = 0;
    v113 = 0;
  }

  else
  {
    v113 = *(&v399 + 1);
    v112 = v399;

    sub_1CF06CF28(v387);
  }

  (v172)(&v346, v101, v65);
  v362[12] = v358;
  v362[13] = v359;
  v362[14] = v360;
  v362[8] = v354;
  v362[9] = v355;
  v362[10] = v356;
  v362[11] = v357;
  v362[4] = v350;
  v362[5] = v351;
  v362[6] = v352;
  v362[7] = v353;
  v362[0] = v346;
  v362[1] = v347;
  v362[2] = v348;
  v362[3] = v349;
  v367 = v358;
  v368 = v359;
  v369 = v360;
  v364[8] = v354;
  v364[9] = v355;
  v365 = v356;
  v366 = v357;
  v364[4] = v350;
  v364[5] = v351;
  v364[6] = v352;
  v364[7] = v353;
  v364[0] = v346;
  v364[1] = v347;
  v363 = v361;
  v370 = v361;
  v364[2] = v348;
  v364[3] = v349;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v364) == 1)
  {
    if (v113)
    {
      goto LABEL_210;
    }

LABEL_208:

    (v170)(&v328, v173, v174);
    goto LABEL_213;
  }

  v114 = v365;

  sub_1CF06CF28(v362);
  if (v113)
  {
    if (*(&v114 + 1))
    {
      *&v346 = v112;
      *(&v346 + 1) = v113;

      v115 = sub_1CF662E90();
      v117 = v116;
      v344[0] = v114;
      if (v115 == sub_1CF662E90() && v117 == v118)
      {

        swift_bridgeObjectRelease_n();

        v65 = v169;
        (v170)(&v328, v173, v174);
        goto LABEL_213;
      }

      v136 = sub_1CF9E8048();

      swift_bridgeObjectRelease_n();

      v65 = v169;
      v119 = v170;
      if (v136)
      {
        goto LABEL_212;
      }

      goto LABEL_211;
    }

    v65 = v169;
  }

  else
  {
    v65 = v169;
    if (!*(&v114 + 1))
    {
      goto LABEL_208;
    }
  }

LABEL_210:

  v119 = v170;
LABEL_211:
  v1187[0] |= 0x1000000000uLL;
LABEL_212:
  v119(&v328, v173, v174);
LABEL_213:
  v345 = v343;
  v344[12] = v340;
  v344[13] = v341;
  v344[14] = v342;
  v344[8] = v336;
  v344[9] = v337;
  v344[10] = v338;
  v344[11] = v339;
  v344[4] = v332;
  v344[5] = v333;
  v344[6] = v334;
  v344[7] = v335;
  v344[0] = v328;
  v344[1] = v329;
  v344[2] = v330;
  v344[3] = v331;
  v358 = v340;
  v359 = v341;
  v360 = v342;
  v361 = v343;
  v354 = v336;
  v355 = v337;
  v356 = v338;
  v357 = v339;
  v350 = v332;
  v351 = v333;
  v352 = v334;
  v353 = v335;
  v346 = v328;
  v347 = v329;
  v348 = v330;
  v349 = v331;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v346) == 1)
  {
    v120 = 2;
  }

  else
  {
    sub_1CF06CF28(v344);
    v120 = v357;
  }

  v121 = v171;
  (v172)(&v304, v171, v65);
  v320[12] = v316;
  v320[13] = v317;
  v320[14] = v318;
  v320[8] = v312;
  v320[9] = v313;
  v320[10] = v314;
  v320[11] = v315;
  v320[4] = v308;
  v320[5] = v309;
  v320[6] = v310;
  v320[7] = v311;
  v320[0] = v304;
  v320[1] = v305;
  v320[2] = v306;
  v320[3] = v307;
  v324 = v316;
  v325 = v317;
  v326 = v318;
  v322[8] = v312;
  v322[9] = v313;
  v322[10] = v314;
  v323 = v315;
  v322[4] = v308;
  v322[5] = v309;
  v322[6] = v310;
  v322[7] = v311;
  v322[0] = v304;
  v322[1] = v305;
  v321 = v319;
  v327 = v319;
  v322[2] = v306;
  v322[3] = v307;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v322) != 1)
  {
    sub_1CF06CF28(v320);
    if (v120 != 2 && ((v323 ^ v120) & 1) == 0)
    {
      goto LABEL_222;
    }

    goto LABEL_221;
  }

  if (v120 != 2)
  {
LABEL_221:
    v1187[0] |= 0x2000000000uLL;
  }

LABEL_222:
  (v170)(&v286, v173, v174);
  v303 = v301;
  v302[12] = v298;
  v302[13] = v299;
  v302[14] = v300;
  v302[8] = v294;
  v302[9] = v295;
  v302[10] = v296;
  v302[11] = v297;
  v302[4] = v290;
  v302[5] = v291;
  v302[6] = v292;
  v302[7] = v293;
  v302[0] = v286;
  v302[1] = v287;
  v302[2] = v288;
  v302[3] = v289;
  v316 = v298;
  v317 = v299;
  v318 = v300;
  v319 = v301;
  v312 = v294;
  v313 = v295;
  v314 = v296;
  v315 = v297;
  v308 = v290;
  v309 = v291;
  v310 = v292;
  v311 = v293;
  v304 = v286;
  v305 = v287;
  v306 = v288;
  v307 = v289;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v304) == 1)
  {
    v122 = 0;
  }

  else
  {
    v122 = *(&v315 + 1);

    sub_1CF06CF28(v302);
  }

  (v172)(&v262, v121, v65);
  v278[12] = v274;
  v278[13] = v275;
  v278[14] = v276;
  v278[8] = v270;
  v278[9] = v271;
  v278[10] = v272;
  v278[11] = v273;
  v278[4] = v266;
  v278[5] = v267;
  v278[6] = v268;
  v278[7] = v269;
  v278[0] = v262;
  v278[1] = v263;
  v278[2] = v264;
  v278[3] = v265;
  v282 = v274;
  v283 = v275;
  v284 = v276;
  v280[8] = v270;
  v280[9] = v271;
  v280[10] = v272;
  v281 = v273;
  v280[4] = v266;
  v280[5] = v267;
  v280[6] = v268;
  v280[7] = v269;
  v280[0] = v262;
  v280[1] = v263;
  v279 = v277;
  v285 = v277;
  v280[2] = v264;
  v280[3] = v265;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v280) == 1)
  {
    if (!v122)
    {
      goto LABEL_236;
    }

    goto LABEL_234;
  }

  v123 = *(&v281 + 1);

  sub_1CF06CF28(v278);
  if (!v122)
  {
    if (!v123)
    {
      goto LABEL_236;
    }

    goto LABEL_234;
  }

  if (!v123)
  {
LABEL_234:

    goto LABEL_235;
  }

  v124 = sub_1CF6BEA0C(v122, v123);

  if ((v124 & 1) == 0)
  {
LABEL_235:
    v1187[0] |= 0x4000000000uLL;
  }

LABEL_236:
  (v170)(&v244, v173, v174);
  v261 = v259;
  v260[12] = v256;
  v260[13] = v257;
  v260[14] = v258;
  v260[8] = v252;
  v260[9] = v253;
  v260[10] = v254;
  v260[11] = v255;
  v260[4] = v248;
  v260[5] = v249;
  v260[6] = v250;
  v260[7] = v251;
  v260[0] = v244;
  v260[1] = v245;
  v260[2] = v246;
  v260[3] = v247;
  v274 = v256;
  v275 = v257;
  v276 = v258;
  v277 = v259;
  v270 = v252;
  v271 = v253;
  v272 = v254;
  v273 = v255;
  v266 = v248;
  v267 = v249;
  v268 = v250;
  v269 = v251;
  v262 = v244;
  v263 = v245;
  v264 = v246;
  v265 = v247;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v262) == 1)
  {
    v125 = 0;
    v126 = 0;
  }

  else
  {
    v126 = *(&v274 + 1);
    v125 = v274;
    sub_1CF075D00(v274);
    sub_1CF06CF28(v260);
  }

  (v172)(&v221, v121, v65);
  v237[12] = v233;
  v237[13] = v234;
  v237[14] = v235;
  v237[8] = v229;
  v237[9] = v230;
  v237[10] = v231;
  v237[11] = v232;
  v237[4] = v225;
  v237[5] = v226;
  v237[6] = v227;
  v237[7] = v228;
  v237[0] = v221;
  v237[1] = v222;
  v237[2] = v223;
  v237[3] = v224;
  v240 = v233;
  v241 = v234;
  v242 = v235;
  v239[8] = v229;
  v239[9] = v230;
  v239[10] = v231;
  v239[11] = v232;
  v239[4] = v225;
  v239[5] = v226;
  v239[6] = v227;
  v239[7] = v228;
  v239[0] = v221;
  v239[1] = v222;
  v238 = v236;
  v243 = v236;
  v239[2] = v223;
  v239[3] = v224;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v239) == 1)
  {
    if (!v125)
    {
      goto LABEL_267;
    }

    goto LABEL_264;
  }

  v127 = v240;
  sub_1CF075D00(v240);
  sub_1CF06CF28(v237);
  if (!v125)
  {
    if (!v127)
    {
      goto LABEL_267;
    }

    v129 = v127;
    goto LABEL_265;
  }

  if (!v127)
  {
LABEL_264:
    v129 = v125;
LABEL_265:
    sub_1CF24CCFC(v129);
    goto LABEL_266;
  }

  if ((sub_1CF6BEA0C(v125, v127) & 1) == 0)
  {

    goto LABEL_264;
  }

  v128 = sub_1CF6BEA0C(v126, *(&v127 + 1));

  sub_1CF24CCFC(v125);
  if ((v128 & 1) == 0)
  {
LABEL_266:
    v1187[0] |= 0x8000000000uLL;
  }

LABEL_267:
  v137 = v170;
  (v170)(&v203, v173, v174);
  v220 = v218;
  v219[12] = v215;
  v219[13] = v216;
  v219[14] = v217;
  v219[8] = v211;
  v219[9] = v212;
  v219[10] = v213;
  v219[11] = v214;
  v219[4] = v207;
  v219[5] = v208;
  v219[6] = v209;
  v219[7] = v210;
  v219[0] = v203;
  v219[1] = v204;
  v219[2] = v205;
  v219[3] = v206;
  v233 = v215;
  v234 = v216;
  v235 = v217;
  v236 = v218;
  v229 = v211;
  v230 = v212;
  v231 = v213;
  v232 = v214;
  v225 = v207;
  v226 = v208;
  v227 = v209;
  v228 = v210;
  v221 = v203;
  v222 = v204;
  v223 = v205;
  v224 = v206;
  v138 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v221);
  if (v138 == 1)
  {
    v139 = 0;
  }

  else
  {
    sub_1CF06CF28(v219);
    v139 = v234;
  }

  v140 = v171;
  (v172)(v197, v171, v65);
  v199[12] = v197[12];
  v200 = v197[13];
  v201 = v197[14];
  v202 = v198;
  v199[8] = v197[8];
  v199[9] = v197[9];
  v199[10] = v197[10];
  v199[11] = v197[11];
  v199[4] = v197[4];
  v199[5] = v197[5];
  v199[6] = v197[6];
  v199[7] = v197[7];
  v199[0] = v197[0];
  v199[1] = v197[1];
  v199[2] = v197[2];
  v199[3] = v197[3];
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v199) == 1)
  {
    if (v138 == 1)
    {
      goto LABEL_276;
    }

    goto LABEL_275;
  }

  sub_1CF06CF28(v197);
  if (v138 == 1 || v139 != v200)
  {
LABEL_275:
    v1187[0] |= 0x2000000000000uLL;
  }

LABEL_276:
  v137(v192, v173, v174);
  v194[12] = v192[12];
  v194[13] = v192[13];
  v195 = v192[14];
  v196 = v193;
  v194[8] = v192[8];
  v194[9] = v192[9];
  v194[10] = v192[10];
  v194[11] = v192[11];
  v194[4] = v192[4];
  v194[5] = v192[5];
  v194[6] = v192[6];
  v194[7] = v192[7];
  v194[0] = v192[0];
  v194[1] = v192[1];
  v194[2] = v192[2];
  v194[3] = v192[3];
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v194) == 1 || (v141 = v195, , sub_1CF06CF28(v192), !v141))
  {
    v142 = 0;
  }

  else
  {
    v142 = sub_1CF937D30(v141);
  }

  (v172)(v187, v140, v65);
  v189[12] = v187[12];
  v189[13] = v187[13];
  v190 = v187[14];
  v191 = v188;
  v189[8] = v187[8];
  v189[9] = v187[9];
  v189[10] = v187[10];
  v189[11] = v187[11];
  v189[4] = v187[4];
  v189[5] = v187[5];
  v189[6] = v187[6];
  v189[7] = v187[7];
  v189[0] = v187[0];
  v189[1] = v187[1];
  v189[2] = v187[2];
  v189[3] = v187[3];
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v189) == 1)
  {
    v143 = 0;
    if (v142)
    {
      goto LABEL_282;
    }

LABEL_290:
    if (!v143)
    {
      goto LABEL_293;
    }

    goto LABEL_291;
  }

  v145 = v190;

  sub_1CF06CF28(v187);
  if (v145)
  {
    v143 = sub_1CF937D30(v145);

    v137 = v170;
    if (!v142)
    {
      goto LABEL_290;
    }
  }

  else
  {
    v143 = 0;
    v137 = v170;
    if (!v142)
    {
      goto LABEL_290;
    }
  }

LABEL_282:
  if (!v143)
  {
LABEL_291:

    goto LABEL_292;
  }

  v144 = sub_1CF6BF228(v142, v143);

  if ((v144 & 1) == 0)
  {
LABEL_292:
    v1187[0] |= 0x4000000000000uLL;
  }

LABEL_293:
  v137(v182, v173, v174);
  v184[12] = v182[12];
  v184[13] = v182[13];
  v185 = v182[14];
  v186 = v183;
  v184[8] = v182[8];
  v184[9] = v182[9];
  v184[10] = v182[10];
  v184[11] = v182[11];
  v184[5] = v182[5];
  v184[6] = v182[6];
  v184[7] = v182[7];
  v184[0] = v182[0];
  v184[1] = v182[1];
  v184[2] = v182[2];
  v184[3] = v182[3];
  v184[4] = v182[4];
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v184) == 1)
  {
    v146 = 0;
    v147 = 0;
  }

  else
  {
    v146 = *(&v185 + 1);
    v147 = v186;

    sub_1CF06CF28(v182);
  }

  (v172)(v177, v140, v65);
  v179[12] = v177[12];
  v179[13] = v177[13];
  v180 = v177[14];
  v181 = v178;
  v179[8] = v177[8];
  v179[9] = v177[9];
  v179[10] = v177[10];
  v179[11] = v177[11];
  v179[4] = v177[4];
  v179[5] = v177[5];
  v179[6] = v177[6];
  v179[7] = v177[7];
  v179[0] = v177[0];
  v179[1] = v177[1];
  v179[2] = v177[2];
  v179[3] = v177[3];
  result = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v179);
  if (result == 1)
  {
    if (!v147)
    {
      goto LABEL_308;
    }

    goto LABEL_306;
  }

  v149 = *(&v180 + 1);
  v150 = v181;

  result = sub_1CF06CF28(v177);
  if (!v147)
  {
    if (!v150)
    {
      goto LABEL_308;
    }

LABEL_306:

LABEL_307:
    v1187[0] |= 0x8000000000000uLL;
    goto LABEL_308;
  }

  if (!v150)
  {
    goto LABEL_306;
  }

  if (v146 != v149 || v147 != v150)
  {
    v151 = sub_1CF9E8048();

    if (v151)
    {
      goto LABEL_308;
    }

    goto LABEL_307;
  }

LABEL_308:
  *v164 = v1187[0];
  return result;
}