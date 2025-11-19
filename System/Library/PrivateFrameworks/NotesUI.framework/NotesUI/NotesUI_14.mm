void SystemPaperThumbnailService.invalidate(for:)(void *a1)
{
  SystemPaperThumbnailService.immediatelyClearPaperSystemPaperPreview()();
  if (a1 && (v3 = [a1 identifier]) != 0)
  {
    v4 = v3;
    v5 = sub_1D4419C54();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = objc_opt_self();
  v9 = sub_1D4419C14();
  v10 = swift_allocObject();
  v10[2] = v1;
  v10[3] = v5;
  v10[4] = v7;
  v13[4] = sub_1D43FA1C0;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D43239B0;
  v13[3] = &block_descriptor_28_0;
  v11 = _Block_copy(v13);
  v12 = v1;

  [v8 sharedPerformCriticalBackgroundActivityWithReason:v9 block:v11];
  _Block_release(v11);
}

void sub_1D43F0910(void *a1, void (*a2)(void))
{
  v4 = objc_opt_self();
  v5 = sub_1D4419C14();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v9[4] = sub_1D43FA268;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D43239B0;
  v9[3] = &block_descriptor_245;
  v7 = _Block_copy(v9);
  v8 = a1;

  [v4 sharedPerformCriticalBackgroundActivityWithReason:v5 block:v7];
  _Block_release(v7);

  if (a2)
  {
    a2();
  }
}

Swift::Void __swiftcall SystemPaperThumbnailService.updateRecentSystemPaperNote()()
{
  v1 = objc_opt_self();
  v2 = sub_1D4419C14();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v6[4] = sub_1D43F9A24;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1D43239B0;
  v6[3] = &block_descriptor_34_0;
  v4 = _Block_copy(v6);
  v5 = v0;

  [v1 sharedPerformCriticalBackgroundActivityWithReason:v2 block:v4];
  _Block_release(v4);
}

void sub_1D43F0DB4(char a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [*&a2[OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_thumbnailService] workerContext];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a3;
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;
  *(v11 + 48) = a2;
  v14[4] = sub_1D43FA0FC;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D417BEE4;
  v14[3] = &block_descriptor_219;
  v12 = _Block_copy(v14);
  sub_1D417C7B4(a3);

  v13 = a2;

  [v10 performBlock_];
  _Block_release(v12);
}

void sub_1D43F0EF0(char a1, void (*a2)(uint64_t, uint64_t), NSObject *a3, uint64_t a4, uint64_t a5)
{
  if ((a1 & 1) == 0)
  {
    v14 = [*(a5 + OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_thumbnailService) workerContext];
    sub_1D43F8F60(a4, v14);
    v16 = v15;

    v31 = MEMORY[0x1E69E7CC0];
    if (v16 >> 62)
    {
      v17 = sub_1D441A8C4();
      v28 = a2;
      oslog = a3;
      if (v17)
      {
LABEL_10:
        a2 = 0;
        v18 = MEMORY[0x1E69E7CC0];
        do
        {
          v19 = a2;
          while (1)
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v20 = MEMORY[0x1DA6D6410](v19, v16);
            }

            else
            {
              if (v19 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_25;
              }

              v20 = *(v16 + 8 * v19 + 32);
            }

            v21 = v20;
            a2 = (v19 + 1);
            if (__OFADD__(v19, 1))
            {
              __break(1u);
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

            objc_opt_self();
            v22 = swift_dynamicCastObjCClass();
            if (v22)
            {
              break;
            }

            ++v19;
            if (a2 == v17)
            {
              goto LABEL_29;
            }
          }

          MEMORY[0x1DA6D5820](v22, v23);
          if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D4419E94();
          }

          sub_1D4419EB4();
          v18 = v31;
        }

        while (a2 != v17);
        goto LABEL_29;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v28 = a2;
      oslog = a3;
      if (v17)
      {
        goto LABEL_10;
      }
    }

    v18 = MEMORY[0x1E69E7CC0];
LABEL_29:

    v24 = sub_1D4391B48(v18);

    SystemPaperThumbnailService.updateIfNeeded(for:completion:)(v24, v28, oslog);

    if (qword_1EDE32CB8 != -1)
    {
      swift_once();
    }

    v25 = sub_1D44181B4();
    __swift_project_value_buffer(v25, qword_1EDE32CC0);
    osloga = sub_1D44181A4();
    v26 = sub_1D441A144();
    if (os_log_type_enabled(osloga, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1D4171000, osloga, v26, "System paper thumbnail set updated", v27, 2u);
      MEMORY[0x1DA6D8690](v27, -1, -1);
    }

    return;
  }

  if (qword_1EDE32CB8 != -1)
  {
LABEL_26:
    swift_once();
  }

  v7 = sub_1D44181B4();
  __swift_project_value_buffer(v7, qword_1EDE32CC0);
  v8 = sub_1D44181A4();
  v9 = sub_1D441A164();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D4171000, v8, v9, "Failed to complete thumbnail update before expiry", v10, 2u);
    MEMORY[0x1DA6D8690](v10, -1, -1);
  }

  if (a2)
  {
    a2(v11, v12);
  }
}

void SystemPaperThumbnailService.updateIfNeeded(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_opt_self();
  v6 = sub_1D4419C14();
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = a1;
  v7[4] = a2;
  v10[4] = sub_1D43F9A70;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D43239B0;
  v10[3] = &block_descriptor_46;
  v8 = _Block_copy(v10);
  v9 = v2;
  sub_1D417C7B4(a1);

  [v5 sharedPerformCriticalBackgroundActivityWithReason:v6 block:v8];
  _Block_release(v8);
}

void sub_1D43F14E4(char a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = [*&a2[OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_thumbnailService] workerContext];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  *(v9 + 40) = a2;
  v12[4] = sub_1D43FA0EC;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D417BEE4;
  v12[3] = &block_descriptor_213;
  v10 = _Block_copy(v12);
  sub_1D417C7B4(a3);
  v11 = a2;

  [v8 performBlock_];
  _Block_release(v10);
}

void sub_1D43F160C(char a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (qword_1EDE32CB8 != -1)
    {
      swift_once();
    }

    v6 = sub_1D44181B4();
    __swift_project_value_buffer(v6, qword_1EDE32CC0);
    v7 = sub_1D44181A4();
    v8 = sub_1D441A164();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D4171000, v7, v8, "Failed to complete thumbnail update before expiry", v9, 2u);
      MEMORY[0x1DA6D8690](v9, -1, -1);
    }

    if (a2)
    {
      a2();
    }
  }

  else
  {
    if (qword_1EDE32CB8 != -1)
    {
      swift_once();
    }

    v11 = sub_1D44181B4();
    __swift_project_value_buffer(v11, qword_1EDE32CC0);
    v12 = sub_1D44181A4();
    v13 = sub_1D441A154();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D4171000, v12, v13, "Updating all System Paper note thumbnails…", v14, 2u);
      MEMORY[0x1DA6D8690](v14, -1, -1);
    }

    v15 = objc_opt_self();
    v16 = [v15 predicateForSystemPaperNotesNotInTrash];
    v17 = [*(a4 + OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_thumbnailService) workerContext];
    v18 = [v15 notesMatchingPredicate:v16 context:v17];

    sub_1D41766C0(0, &qword_1EDE32440);
    v19 = sub_1D4419E44();

    v20 = sub_1D4391B48(v19);

    SystemPaperThumbnailService.updateIfNeeded(for:completion:)(v20, a2, a3);

    oslog = sub_1D44181A4();
    v21 = sub_1D441A144();
    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1D4171000, oslog, v21, "All system paper thumbnails updated", v22, 2u);
      MEMORY[0x1DA6D8690](v22, -1, -1);
    }
  }
}

Swift::Void __swiftcall SystemPaperThumbnailService.immediatelyClearPaperSystemPaperPreview()()
{
  v0 = sub_1D4416D34();
  MEMORY[0x1EEE9AC00](v0);
  v16 = sub_1D4417234();
  v1 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE32CB8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D44181B4();
  __swift_project_value_buffer(v4, qword_1EDE32CC0);
  v5 = sub_1D44181A4();
  v6 = sub_1D441A144();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D4171000, v5, v6, "Starting to clear recent System Paper thumbnail", v7, 2u);
    MEMORY[0x1DA6D8690](v7, -1, -1);
  }

  v8 = objc_allocWithZone(type metadata accessor for ThumbnailKey());
  v9 = sub_1D4419C14();
  v10 = sub_1D4419C14();
  v11 = [v8 initWithAccountId:0 objectId:v9 thumbnailId:v10];

  ThumbnailKey.containerUrl.getter(v3);
  swift_getObjectType();
  sub_1D44177E4();
  v12 = sub_1D44181A4();
  v13 = sub_1D441A144();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D4171000, v12, v13, "System paper recent preview thumbnail cleared", v14, 2u);
    MEMORY[0x1DA6D8690](v14, -1, -1);
  }

  (*(v1 + 8))(v3, v16);
}

void sub_1D43F1FC4(char a1, uint64_t a2)
{
  v4 = sub_1D4416D34();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1D4417234();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v48 - v10);
  if (a1)
  {
    if (qword_1EDE32CB8 != -1)
    {
      swift_once();
    }

    v12 = sub_1D44181B4();
    __swift_project_value_buffer(v12, qword_1EDE32CC0);
    v51 = sub_1D44181A4();
    v13 = sub_1D441A164();
    if (os_log_type_enabled(v51, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D4171000, v51, v13, "Failed to complete thumbnail update before expiry", v14, 2u);
      MEMORY[0x1DA6D8690](v14, -1, -1);
    }

    v15 = v51;
  }

  else
  {
    v16 = objc_opt_self();
    v17 = [*(a2 + OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_thumbnailService) workerContext];
    v18 = [v16 mostRecentSystemPaperNoteInManagedObjectContext_];

    if (v18)
    {
      v50 = v5;
      v51 = v11;
      v49 = v6;
      v19 = [v18 account];
      if (v19)
      {
        v20 = v9;
        v21 = v18;
        v22 = v19;
        v23 = [v19 identifier];

        if (v23)
        {
          v24 = sub_1D4419C54();
          v26 = v25;
        }

        else
        {
          v24 = 0;
          v26 = 0;
        }

        v18 = v21;
        v9 = v20;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v27 = [v18 identifier];
      if (v27)
      {
        v28 = v27;
        v29 = sub_1D4419C54();
        v31 = v30;
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

      v32 = type metadata accessor for ThumbnailKey();
      v33 = objc_allocWithZone(v32);
      v34 = ThumbnailKey.init(accountId:objectId:)(v24, v26, v29, v31);
      ThumbnailKey.containerUrl.getter(v51);

      v35 = objc_allocWithZone(v32);
      v36 = sub_1D4419C14();
      v37 = sub_1D4419C14();
      v38 = [v35 initWithAccountId:0 objectId:v36 thumbnailId:v37];

      ThumbnailKey.containerUrl.getter(v9);
      swift_getObjectType();
      sub_1D44177E4();
      sub_1D44177F4();
      v39 = v50;
      if (qword_1EDE32CB8 != -1)
      {
        swift_once();
      }

      v40 = sub_1D44181B4();
      __swift_project_value_buffer(v40, qword_1EDE32CC0);
      v41 = sub_1D44181A4();
      v42 = sub_1D441A144();
      v43 = os_log_type_enabled(v41, v42);
      v44 = v49;
      v45 = v51;
      if (v43)
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_1D4171000, v41, v42, "Successfully updated recent System Paper thumbnail", v46, 2u);
        MEMORY[0x1DA6D8690](v46, -1, -1);
      }

      v47 = *(v44 + 8);
      v47(v9, v39);
      v47(v45, v39);
    }
  }
}

void sub_1D43F29B0(char a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = [*&a2[OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_thumbnailService] workerContext];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  *(v9 + 40) = a2;
  v12[4] = sub_1D43FA118;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D417BEE4;
  v12[3] = &block_descriptor_231;
  v10 = _Block_copy(v12);

  v11 = a2;

  [v8 performBlock_];
  _Block_release(v10);
}

void sub_1D43F2AD4(char a1, uint64_t a2, uint64_t a3, char *a4)
{
  if (a1)
  {
    if (qword_1EDE32CB8 != -1)
    {
      swift_once();
    }

    v4 = sub_1D44181B4();
    __swift_project_value_buffer(v4, qword_1EDE32CC0);
    oslog = sub_1D44181A4();
    v5 = sub_1D441A164();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D4171000, oslog, v5, "Failed to complete thumbnail invalidation before expiry", v6, 2u);
      MEMORY[0x1DA6D8690](v6, -1, -1);
    }

    return;
  }

  if (!a3)
  {
    return;
  }

  sub_1D41766C0(0, &qword_1EDE32440);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = sub_1D4419C14();
  v10 = *&a4[OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_thumbnailService];
  v11 = [v10 workerContext];
  v12 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v9 context:v11];

  if (!v12)
  {
    return;
  }

  v13 = v12;
  v14 = sub_1D43EF0AC(v12);

  if (v14 >> 62)
  {
    v15 = sub_1D441A8C4();
    if (v15)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_13:
      if (v15 < 1)
      {
        __break(1u);
        return;
      }

      v16 = 0;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1DA6D6410](v16, v14);
        }

        else
        {
          v17 = *(v14 + 8 * v16 + 32);
        }

        v18 = v17;
        ++v16;
        [objc_msgSend(v10 cache)];

        swift_unknownObjectRelease();
      }

      while (v15 != v16);
    }
  }

  v19 = objc_opt_self();
  v20 = sub_1D4419C14();
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  aBlock[4] = sub_1D43FA268;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D43239B0;
  aBlock[3] = &block_descriptor_238;
  v22 = _Block_copy(aBlock);
  v23 = a4;

  [v19 sharedPerformCriticalBackgroundActivityWithReason:v20 block:v22];
  _Block_release(v22);

  if (qword_1EDE32CB8 != -1)
  {
    swift_once();
  }

  v24 = sub_1D44181B4();
  __swift_project_value_buffer(v24, qword_1EDE32CC0);
  v25 = sub_1D44181A4();
  v26 = sub_1D441A144();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1D4171000, v25, v26, "System paper thumbnail invalidated for note", v27, 2u);
    MEMORY[0x1DA6D8690](v27, -1, -1);
  }
}

void SystemPaperThumbnailService.invalidate(for:)(uint64_t a1)
{
  sub_1D43F3678(a1, &unk_1F4F92C50, sub_1D43F9A7C, &block_descriptor_52);
}

{
  sub_1D43F3678(a1, &unk_1F4F92CA0, sub_1D43F9ABC, &block_descriptor_58);
}

void sub_1D43F2FA4(char a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    if (qword_1EDE32CB8 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_3;
  }

  v6 = a2;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v7 = a3;

    sub_1D441A874();
    sub_1D41766C0(0, &qword_1EDE32440);
    sub_1D4333044(&qword_1EDE32438, &qword_1EDE32440);
    sub_1D441A0A4();
    v6 = aBlock[6];
    v8 = aBlock[7];
    v9 = aBlock[8];
    v10 = aBlock[9];
    v11 = aBlock[10];
  }

  else
  {
    v12 = -1 << *(a2 + 32);
    v8 = a2 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a2 + 56);
    v15 = a3;

    v10 = 0;
  }

  v16 = (v9 + 64) >> 6;
  v36 = v6;
  while (v6 < 0)
  {
    if (!sub_1D441A8F4() || (sub_1D41766C0(0, &qword_1EDE32440), swift_dynamicCast(), v30 = aBlock[0], v28 = v10, v29 = v11, !aBlock[0]))
    {
LABEL_28:

      sub_1D419FA48();
      if (qword_1EDE32CB8 != -1)
      {
        swift_once();
      }

      v32 = sub_1D44181B4();
      __swift_project_value_buffer(v32, qword_1EDE32CC0);
      v33 = sub_1D44181A4();
      v34 = sub_1D441A144();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1D4171000, v33, v34, "System paper thumbnail invalidated for set of notes", v35, 2u);
        MEMORY[0x1DA6D8690](v35, -1, -1);
      }

      return;
    }

LABEL_26:
    SystemPaperThumbnailService.immediatelyClearPaperSystemPaperPreview()();
    v31 = [v30 identifier];
    if (v31)
    {
      v17 = v31;
      v18 = sub_1D4419C54();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    v21 = objc_opt_self();
    v22 = sub_1D4419C14();
    v23 = swift_allocObject();
    v23[2] = a3;
    v23[3] = v18;
    v23[4] = v20;
    aBlock[4] = sub_1D43FA1C0;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D43239B0;
    aBlock[3] = &block_descriptor_207;
    v24 = _Block_copy(aBlock);
    v25 = a3;

    [v21 sharedPerformCriticalBackgroundActivityWithReason:v22 block:v24];
    _Block_release(v24);

    v10 = v28;
    v11 = v29;
    v6 = v36;
  }

  v26 = v10;
  v27 = v11;
  v28 = v10;
  if (v11)
  {
LABEL_22:
    v29 = (v27 - 1) & v27;
    v30 = *(*(v6 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
    if (!v30)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v16)
    {
      goto LABEL_28;
    }

    v27 = *(v8 + 8 * v28);
    ++v26;
    if (v27)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_34:
  swift_once();
LABEL_3:
  v3 = sub_1D44181B4();
  __swift_project_value_buffer(v3, qword_1EDE32CC0);
  osloga = sub_1D44181A4();
  v4 = sub_1D441A164();
  if (os_log_type_enabled(osloga, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D4171000, osloga, v4, "Failed to complete thumbnail invalidation before expiry", v5, 2u);
    MEMORY[0x1DA6D8690](v5, -1, -1);
  }
}

void sub_1D43F3678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();
  v9 = sub_1D4419C14();
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = a1;
  v13[4] = a3;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D43239B0;
  v13[3] = a4;
  v11 = _Block_copy(v13);
  v12 = v4;

  [v8 sharedPerformCriticalBackgroundActivityWithReason:v9 block:v11];
  _Block_release(v11);
}

void sub_1D43F3790(char a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = [*&a2[OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_thumbnailService] workerContext];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a3;
  *(v12 + 32) = a2;
  v15[4] = a5;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1D417BEE4;
  v15[3] = a6;
  v13 = _Block_copy(v15);

  v14 = a2;

  [v11 performBlock_];
  _Block_release(v13);
}

void sub_1D43F38A4(char a1, uint64_t a2, char *a3)
{
  if ((a1 & 1) == 0)
  {
    v8 = [*&a3[OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_thumbnailService] workerContext];
    sub_1D43F8F60(a2, v8);
    v10 = v9;

    aBlock[0] = MEMORY[0x1E69E7CC0];
    if (v10 >> 62)
    {
      v11 = sub_1D441A8C4();
      if (v11)
      {
LABEL_10:
        v12 = 0;
        v13 = MEMORY[0x1E69E7CC0];
        do
        {
          v14 = v12;
          while (1)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v15 = MEMORY[0x1DA6D6410](v14, v10);
            }

            else
            {
              if (v14 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_25;
              }

              v15 = *(v10 + 8 * v14 + 32);
            }

            v16 = v15;
            v12 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              __break(1u);
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            ++v14;
            if (v12 == v11)
            {
              goto LABEL_29;
            }
          }

          MEMORY[0x1DA6D5820]();
          if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D4419E94();
          }

          sub_1D4419EB4();
          v13 = aBlock[0];
        }

        while (v12 != v11);
        goto LABEL_29;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_10;
      }
    }

    v13 = MEMORY[0x1E69E7CC0];
LABEL_29:

    v17 = sub_1D4391B48(v13);

    v18 = objc_opt_self();
    v19 = sub_1D4419C14();
    v20 = swift_allocObject();
    *(v20 + 16) = a3;
    *(v20 + 24) = v17;
    aBlock[4] = sub_1D43FA260;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D43239B0;
    aBlock[3] = &block_descriptor_194;
    v21 = _Block_copy(aBlock);
    v22 = a3;

    [v18 sharedPerformCriticalBackgroundActivityWithReason:v19 block:v21];
    _Block_release(v21);

    return;
  }

  if (qword_1EDE32CB8 != -1)
  {
LABEL_26:
    swift_once();
  }

  v3 = sub_1D44181B4();
  __swift_project_value_buffer(v3, qword_1EDE32CC0);
  oslog = sub_1D44181A4();
  v4 = sub_1D441A164();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D4171000, oslog, v4, "Failed to complete thumbnail invalidation before expiry", v5, 2u);
    MEMORY[0x1DA6D8690](v5, -1, -1);
  }
}

Swift::Void __swiftcall SystemPaperThumbnailService.invalidate()()
{
  SystemPaperThumbnailService.immediatelyClearPaperSystemPaperPreview()();
  v1 = objc_opt_self();
  v2 = sub_1D4419C14();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v6[4] = sub_1D43F9AFC;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1D43239B0;
  v6[3] = &block_descriptor_64;
  v4 = _Block_copy(v6);
  v5 = v0;

  [v1 sharedPerformCriticalBackgroundActivityWithReason:v2 block:v4];
  _Block_release(v4);
}

void sub_1D43F3EE0(char a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [*&a2[OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_thumbnailService] workerContext];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v13[4] = a4;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D417BEE4;
  v13[3] = a5;
  v11 = _Block_copy(v13);
  v12 = a2;

  [v9 performBlock_];
  _Block_release(v11);
}

void sub_1D43F3FE0(char a1, void *a2)
{
  if (a1)
  {
    if (qword_1EDE32CB8 == -1)
    {
LABEL_3:
      v2 = sub_1D44181B4();
      __swift_project_value_buffer(v2, qword_1EDE32CC0);
      oslog = sub_1D44181A4();
      v3 = sub_1D441A164();
      if (os_log_type_enabled(oslog, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&dword_1D4171000, oslog, v3, "Failed to complete thumbnail invalidation before expiry", v4, 2u);
        MEMORY[0x1DA6D8690](v4, -1, -1);
      }

      return;
    }

LABEL_30:
    swift_once();
    goto LABEL_3;
  }

  if (qword_1EDE32CB8 != -1)
  {
    swift_once();
  }

  v6 = sub_1D44181B4();
  __swift_project_value_buffer(v6, qword_1EDE32CC0);
  v7 = sub_1D44181A4();
  v8 = sub_1D441A154();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D4171000, v7, v8, "Invalidating all System Paper note thumbnails…", v9, 2u);
    MEMORY[0x1DA6D8690](v9, -1, -1);
  }

  SystemPaperThumbnailService.immediatelyClearPaperSystemPaperPreview()();
  v10 = objc_opt_self();
  v11 = sub_1D4419C14();
  v12 = swift_allocObject();
  v12[3] = 0;
  v12[4] = 0;
  v12[2] = a2;
  v44 = sub_1D43FA1C0;
  v45 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1D43239B0;
  v43 = &block_descriptor_174;
  v13 = _Block_copy(&aBlock);
  v14 = a2;

  osloga = v10;
  [v10 sharedPerformCriticalBackgroundActivityWithReason:v11 block:v13];
  _Block_release(v13);

  v15 = objc_opt_self();
  v16 = [v15 predicateForSystemPaperNotesNotInTrash];
  v17 = [*&v14[OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_thumbnailService] workerContext];
  v18 = [v15 notesMatchingPredicate:v16 context:v17];

  sub_1D41766C0(0, &qword_1EDE32440);
  v19 = sub_1D4419E44();

  if (v19 >> 62)
  {
    v20 = sub_1D441A8C4();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = v14;
  if (v20)
  {
    v22 = 0;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1DA6D6410](v22, v19);
      }

      else
      {
        if (v22 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v29 = *(v19 + 8 * v22 + 32);
      }

      v30 = v29;
      v31 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      SystemPaperThumbnailService.immediatelyClearPaperSystemPaperPreview()();
      v32 = [v30 identifier];
      if (v32)
      {
        v33 = v32;
        v23 = sub_1D4419C54();
        v24 = v34;
      }

      else
      {
        v23 = 0;
        v24 = 0;
      }

      v25 = sub_1D4419C14();
      v26 = swift_allocObject();
      v26[2] = v21;
      v26[3] = v23;
      v26[4] = v24;
      v44 = sub_1D43FA1C0;
      v45 = v26;
      aBlock = MEMORY[0x1E69E9820];
      v41 = 1107296256;
      v42 = sub_1D43239B0;
      v43 = &block_descriptor_181;
      v27 = _Block_copy(&aBlock);
      v28 = v21;

      [osloga sharedPerformCriticalBackgroundActivityWithReason:v25 block:v27];
      _Block_release(v27);

      ++v22;
      if (v31 == v20)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_25:

  v35 = sub_1D44181A4();
  v36 = sub_1D441A144();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1D4171000, v35, v36, "System paper thumbnail invalidated for all system paper notes", v37, 2u);
    MEMORY[0x1DA6D8690](v37, -1, -1);
  }
}

Swift::Void __swiftcall SystemPaperThumbnailService.observe()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC508);
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC510);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC518);
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC520);
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC528);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - v14;
  if (qword_1EDE32CB8 != -1)
  {
    swift_once();
  }

  v16 = sub_1D44181B4();
  __swift_project_value_buffer(v16, qword_1EDE32CC0);
  v17 = sub_1D44181A4();
  v18 = sub_1D441A154();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1D4171000, v17, v18, "Observing System Paper notes for changes…", v19, 2u);
    MEMORY[0x1DA6D8690](v19, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D44384A0;
  sub_1D43F4E34(v15);
  *(swift_allocObject() + 16) = v1;
  sub_1D417645C(&qword_1EDE33740, &qword_1EC7CC528);
  v21 = v1;
  v22 = sub_1D4418474();

  (*(v13 + 8))(v15, v12);
  *(v20 + 32) = v22;
  sub_1D43F53C0(v11);
  *(swift_allocObject() + 16) = v21;
  sub_1D417645C(&qword_1EDE33768, &qword_1EC7CC520);
  v23 = v21;
  v24 = v40;
  v25 = sub_1D4418474();

  (*(v39 + 8))(v11, v24);
  *(v20 + 40) = v25;
  sub_1D43F6090(v8);
  *(swift_allocObject() + 16) = v23;
  sub_1D417645C(&qword_1EDE33750, &qword_1EC7CC518);
  v26 = v23;
  v27 = v42;
  v28 = sub_1D4418474();

  (*(v41 + 8))(v8, v27);
  *(v20 + 48) = v28;
  v29 = v43;
  sub_1D43F64E8(v43);
  *(swift_allocObject() + 16) = v26;
  sub_1D417645C(&qword_1EDE33778, &qword_1EC7CC510);
  v30 = v26;
  v31 = v45;
  v32 = sub_1D4418474();

  (*(v44 + 8))(v29, v31);
  *(v20 + 56) = v32;
  v33 = v46;
  sub_1D43F71B4(v46);
  v34 = swift_allocObject();
  *(v34 + 16) = v30;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1D43F9B74;
  *(v35 + 24) = v34;
  sub_1D417645C(&qword_1EDE33788, &qword_1EC7CC508);
  v36 = v30;
  v37 = v48;
  v38 = sub_1D4418474();

  (*(v47 + 8))(v33, v37);
  *(v20 + 64) = v38;
  *&v36[OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_observations] = v20;
}

uint64_t sub_1D43F4E34@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC538);
  MEMORY[0x1EEE9AC00](v29);
  v3 = &v26 - v2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC530);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC5F8);
  v7 = *(v6 - 8);
  v27 = v6;
  v28 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC600);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC550);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v31 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v17 = OBJC_IVAR___ICSystemPaperThumbnailServiceInternal____lazy_storage___didUpdateSystemPaperNotesImmediately;
  swift_beginAccess();
  sub_1D417CF94(v1 + v17, v16, &qword_1EC7CC550);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC528);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v16, 1, v18) != 1)
  {
    return (*(v19 + 32))(v33, v16, v18);
  }

  sub_1D41769C4(v16, &qword_1EC7CC550);
  v20 = v1;
  sub_1D43F816C(&OBJC_IVAR___ICSystemPaperThumbnailServiceInternal____lazy_storage___contextDidUpdateObject, sub_1D43F785C, sub_1D43FA254, v5);
  sub_1D43F7868(v3);
  sub_1D417645C(&qword_1EDE33718, &qword_1EC7CC530);
  sub_1D417645C(&qword_1EDE337E0, &qword_1EC7CC538);
  sub_1D4418264();
  sub_1D41766C0(0, &qword_1EDE32440);
  sub_1D417645C(&qword_1EDE33758, &qword_1EC7CC5F8);
  v21 = v27;
  sub_1D44183A4();
  (*(v28 + 8))(v9, v21);
  sub_1D417645C(&qword_1EDE337E8, &qword_1EC7CC600);
  v23 = v32;
  v22 = v33;
  sub_1D4418414();
  (*(v30 + 8))(v11, v23);
  v24 = v31;
  (*(v19 + 16))(v31, v22, v18);
  (*(v19 + 56))(v24, 0, 1, v18);
  swift_beginAccess();
  sub_1D43B3D78(v24, v20 + v17, &qword_1EC7CC550);
  return swift_endAccess();
}

uint64_t sub_1D43F53C0@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC588);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v83 = &v55 - v3;
  v84 = sub_1D441A2A4();
  v82 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v81 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC590);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v80 = &v55 - v6;
  v85 = sub_1D4419454();
  v87 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v67 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC598);
  v73 = *(v8 - 8);
  v74 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v68 = (&v55 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC528);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC5E0);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v15 = &v55 - v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC5E8);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v17 = &v55 - v16;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC5F0);
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v76 = &v55 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC558);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v78 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v55 - v22;
  v24 = v1 + OBJC_IVAR___ICSystemPaperThumbnailServiceInternal____lazy_storage___didUpdateSystemPaperNotesWithCoalescingAndDelay;
  swift_beginAccess();
  v75 = v24;
  sub_1D417CF94(v24, v23, &qword_1EC7CC558);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC520);
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v23, 1, v25) != 1)
  {
    return (*(v26 + 32))(v86, v23, v25);
  }

  sub_1D41769C4(v23, &qword_1EC7CC558);
  sub_1D43F4E34(v13);
  swift_getKeyPath();
  v66 = v25;
  sub_1D417645C(&qword_1EDE33740, &qword_1EC7CC528);
  v56 = v15;
  sub_1D44183B4();

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC5B8);
  v27 = sub_1D41766C0(0, &qword_1EDE33D70);
  v64 = *MEMORY[0x1E69E7F80];
  v28 = v87;
  v29 = *(v87 + 104);
  v62 = v87 + 104;
  v63 = v29;
  v30 = v67;
  v31 = v85;
  v29(v67);
  v55 = v27;
  v32 = sub_1D441A324();
  v61 = *(v28 + 8);
  v87 = v28 + 8;
  v61(v30, v31);
  v33 = v68;
  *v68 = v32;
  sub_1D441A294();
  v35 = v73;
  v34 = v74;
  (*(v73 + 104))(v33, *MEMORY[0x1E695BD50], v74);
  v59 = sub_1D441A274();
  v36 = *(v59 - 8);
  v58 = *(v36 + 56);
  v60 = v36 + 56;
  v65 = v26;
  v37 = v80;
  v58(v80, 1, 1, v59);
  sub_1D417645C(&qword_1EDE337C0, &qword_1EC7CC5E0);
  v57 = sub_1D4333044(&unk_1EDE32750, &qword_1EDE33D70);
  v38 = v70;
  v39 = v56;
  sub_1D4418424();
  sub_1D41769C4(v37, &qword_1EC7CC590);
  (*(v35 + 8))(v33, v34);
  (*(v69 + 8))(v39, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9EB0);
  sub_1D417645C(&qword_1EDE337B0, &qword_1EC7CC5E8);
  v40 = v76;
  v41 = v72;
  sub_1D44183C4();
  (*(v71 + 8))(v17, v41);
  v42 = v81;
  sub_1D441A294();
  v43 = v83;
  sub_1D441A284();
  v44 = v82;
  v45 = v84;
  (*(v82 + 56))(v43, 0, 1, v84);
  v46 = v85;
  v63(v30, v64, v85);
  v47 = sub_1D441A324();
  v61(v30, v46);
  v88 = v47;
  v58(v37, 1, 1, v59);
  sub_1D417645C(&qword_1EDE337A0, &qword_1EC7CC5F0);
  v48 = v86;
  v49 = v79;
  sub_1D44183D4();
  sub_1D41769C4(v37, &qword_1EC7CC590);

  sub_1D41769C4(v43, &qword_1EC7CC588);
  (*(v44 + 8))(v42, v45);
  (*(v77 + 8))(v40, v49);
  v50 = v65;
  v51 = v78;
  v52 = v66;
  (*(v65 + 16))(v78, v48, v66);
  (*(v50 + 56))(v51, 0, 1, v52);
  v53 = v75;
  swift_beginAccess();
  sub_1D43B3D78(v51, v53, &qword_1EC7CC558);
  return swift_endAccess();
}

void sub_1D43F5F68(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = objc_opt_self();
  v5 = sub_1D4419C14();
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = 0;
  v6[4] = 0;
  v6[5] = v3;
  v9[4] = sub_1D43FA1B4;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D43239B0;
  v9[3] = &block_descriptor_155;
  v7 = _Block_copy(v9);
  v8 = a2;

  [v4 sharedPerformCriticalBackgroundActivityWithReason:v5 block:v7];
  _Block_release(v7);
}

uint64_t sub_1D43F6090@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC530);
  v20 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC5C0);
  v21 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC560);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  v14 = OBJC_IVAR___ICSystemPaperThumbnailServiceInternal____lazy_storage___didDeleteSystemPaperNotesImmediately;
  swift_beginAccess();
  sub_1D417CF94(v1 + v14, v13, &qword_1EC7CC560);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC518);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) != 1)
  {
    return (*(v16 + 32))(v22, v13, v15);
  }

  sub_1D41769C4(v13, &qword_1EC7CC560);
  sub_1D43F816C(&OBJC_IVAR___ICSystemPaperThumbnailServiceInternal____lazy_storage___contextDidDeleteObject, sub_1D43F8644, sub_1D43FA254, v4);
  sub_1D41766C0(0, &qword_1EDE32440);
  sub_1D417645C(&qword_1EDE33718, &qword_1EC7CC530);
  sub_1D44183A4();
  (*(v20 + 8))(v4, v2);
  sub_1D417645C(&qword_1EDE337F0, &qword_1EC7CC5C0);
  v17 = v22;
  sub_1D4418414();
  (*(v21 + 8))(v7, v5);
  (*(v16 + 16))(v11, v17, v15);
  (*(v16 + 56))(v11, 0, 1, v15);
  swift_beginAccess();
  sub_1D43B3D78(v11, v1 + v14, &qword_1EC7CC560);
  return swift_endAccess();
}

uint64_t sub_1D43F64E8@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC588);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v83 = &v55 - v3;
  v84 = sub_1D441A2A4();
  v82 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v81 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC590);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v80 = &v55 - v6;
  v85 = sub_1D4419454();
  v87 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v67 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC598);
  v73 = *(v8 - 8);
  v74 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v68 = (&v55 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC518);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC5A0);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v15 = &v55 - v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC5A8);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v17 = &v55 - v16;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC5B0);
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v76 = &v55 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC568);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v78 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v55 - v22;
  v24 = v1 + OBJC_IVAR___ICSystemPaperThumbnailServiceInternal____lazy_storage___didDeleteSystemPaperNotesWithCoalescingAndDelay;
  swift_beginAccess();
  v75 = v24;
  sub_1D417CF94(v24, v23, &qword_1EC7CC568);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC510);
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v23, 1, v25) != 1)
  {
    return (*(v26 + 32))(v86, v23, v25);
  }

  sub_1D41769C4(v23, &qword_1EC7CC568);
  sub_1D43F6090(v13);
  swift_getKeyPath();
  v66 = v25;
  sub_1D417645C(&qword_1EDE33750, &qword_1EC7CC518);
  v56 = v15;
  sub_1D44183B4();

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC5B8);
  v27 = sub_1D41766C0(0, &qword_1EDE33D70);
  v64 = *MEMORY[0x1E69E7F80];
  v28 = v87;
  v29 = *(v87 + 104);
  v62 = v87 + 104;
  v63 = v29;
  v30 = v67;
  v31 = v85;
  v29(v67);
  v55 = v27;
  v32 = sub_1D441A324();
  v61 = *(v28 + 8);
  v87 = v28 + 8;
  v61(v30, v31);
  v33 = v68;
  *v68 = v32;
  sub_1D441A294();
  v35 = v73;
  v34 = v74;
  (*(v73 + 104))(v33, *MEMORY[0x1E695BD50], v74);
  v59 = sub_1D441A274();
  v36 = *(v59 - 8);
  v58 = *(v36 + 56);
  v60 = v36 + 56;
  v65 = v26;
  v37 = v80;
  v58(v80, 1, 1, v59);
  sub_1D417645C(&qword_1EDE337C8, &qword_1EC7CC5A0);
  v57 = sub_1D4333044(&unk_1EDE32750, &qword_1EDE33D70);
  v38 = v70;
  v39 = v56;
  sub_1D4418424();
  sub_1D41769C4(v37, &qword_1EC7CC590);
  (*(v35 + 8))(v33, v34);
  (*(v69 + 8))(v39, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9EB0);
  sub_1D417645C(&qword_1EDE337B8, &qword_1EC7CC5A8);
  v40 = v76;
  v41 = v72;
  sub_1D44183C4();
  (*(v71 + 8))(v17, v41);
  v42 = v81;
  sub_1D441A294();
  v43 = v83;
  sub_1D441A284();
  v44 = v82;
  v45 = v84;
  (*(v82 + 56))(v43, 0, 1, v84);
  v46 = v85;
  v63(v30, v64, v85);
  v47 = sub_1D441A324();
  v61(v30, v46);
  v88 = v47;
  v58(v37, 1, 1, v59);
  sub_1D417645C(&qword_1EDE337A8, &qword_1EC7CC5B0);
  v48 = v86;
  v49 = v79;
  sub_1D44183D4();
  sub_1D41769C4(v37, &qword_1EC7CC590);

  sub_1D41769C4(v43, &qword_1EC7CC588);
  (*(v44 + 8))(v42, v45);
  (*(v77 + 8))(v40, v49);
  v50 = v65;
  v51 = v78;
  v52 = v66;
  (*(v65 + 16))(v78, v48, v66);
  (*(v50 + 56))(v51, 0, 1, v52);
  v53 = v75;
  swift_beginAccess();
  sub_1D43B3D78(v51, v53, &qword_1EC7CC568);
  return swift_endAccess();
}

void sub_1D43F7090(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = objc_opt_self();
  v5 = sub_1D4419C14();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = v3;
  v9[4] = sub_1D43FA25C;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D43239B0;
  v9[3] = &block_descriptor_148;
  v7 = _Block_copy(v9);
  v8 = a2;

  [v4 sharedPerformCriticalBackgroundActivityWithReason:v5 block:v7];
  _Block_release(v7);
}

uint64_t sub_1D43F71B4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC578);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC570);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  v12 = OBJC_IVAR___ICSystemPaperThumbnailServiceInternal____lazy_storage___accessibilityAppearanceDidChange;
  swift_beginAccess();
  sub_1D417CF94(v1 + v12, v11, &qword_1EC7CC570);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC508);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return (*(v14 + 32))(a1, v11, v13);
  }

  sub_1D41769C4(v11, &qword_1EC7CC570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC580);
  v29 = sub_1D441A4A4();
  v31 = a1;
  v33 = v1;
  v15 = swift_allocObject();
  v32 = v9;
  *(v15 + 16) = xmmword_1D4435D20;
  v30 = v4;
  v16 = objc_opt_self();
  v17 = [v16 defaultCenter];
  sub_1D441A4B4();

  v18 = [v16 defaultCenter];
  sub_1D441A4B4();

  v28 = v3;
  v19 = [v16 defaultCenter];
  sub_1D441A4B4();

  v20 = [v16 defaultCenter];
  sub_1D441A4B4();

  sub_1D418D62C(&qword_1EDE326E0, MEMORY[0x1E6969F20]);
  v21 = v34;
  sub_1D44182A4();
  sub_1D417645C(&qword_1EDE336F0, &qword_1EC7CC578);
  v22 = v31;
  v23 = v28;
  sub_1D44183C4();
  (*(v30 + 8))(v21, v23);
  v24 = v32;
  (*(v14 + 16))(v32, v22, v13);
  (*(v14 + 56))(v24, 0, 1, v13);
  v25 = v33;
  swift_beginAccess();
  sub_1D43B3D78(v24, v25 + v12, &qword_1EC7CC570);
  return swift_endAccess();
}

void sub_1D43F76B0(void *a1)
{
  v2 = objc_opt_self();
  v3 = sub_1D4419C14();
  v4 = swift_allocObject();
  v4[3] = 0;
  v4[4] = 0;
  v4[2] = a1;
  v7[4] = sub_1D43FA1C4;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D43239B0;
  v7[3] = &block_descriptor_141;
  v5 = _Block_copy(v7);
  v6 = a1;

  [v2 sharedPerformCriticalBackgroundActivityWithReason:v3 block:v5];
  _Block_release(v5);
}

uint64_t sub_1D43F7868@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBBC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v39 - v5;
  v7 = sub_1D441A4A4();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC608);
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC610);
  v49 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v39 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC548);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v50 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v39 - v18;
  v20 = OBJC_IVAR___ICSystemPaperThumbnailServiceInternal____lazy_storage___cacheDidInvalidateObject;
  swift_beginAccess();
  v48 = v20;
  sub_1D417CF94(v2 + v20, v19, &qword_1EC7CC548);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC538);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v19, 1, v21) != 1)
  {
    return (*(v22 + 32))(a1, v19, v21);
  }

  sub_1D41769C4(v19, &qword_1EC7CC548);
  v23 = [objc_opt_self() defaultCenter];
  v24 = @"ICThumbnailCacheDidInvalidateThumbnailNotification";
  sub_1D441A4B4();

  v25 = [objc_opt_self() mainRunLoop];
  v51 = v25;
  v26 = sub_1D441A734();
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  v40 = v2;
  sub_1D41766C0(0, &qword_1EDE323B0);
  v42 = a1;
  sub_1D418D62C(&qword_1EDE326E0, MEMORY[0x1E6969F20]);
  v41 = v13;
  sub_1D4333044(&qword_1EDE323B8, &qword_1EDE323B0);
  v27 = v44;
  sub_1D4418434();
  sub_1D41769C4(v6, &qword_1EC7CBBC0);

  (*(v43 + 8))(v9, v27);
  sub_1D41766C0(0, &qword_1EDE32768);
  sub_1D417645C(&qword_1EDE336E8, &qword_1EC7CC608);
  v29 = v46;
  v28 = v47;
  sub_1D44183A4();
  (*(v45 + 8))(v12, v29);
  v30 = v40;
  v31 = [*(v40 + OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_thumbnailService) viewContext];
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1D43F9FD8;
  *(v33 + 24) = v32;
  sub_1D41766C0(0, qword_1EDE327B0);
  v35 = v41;
  v34 = v42;
  sub_1D4418244();

  (*(v49 + 8))(v28, v35);
  v36 = v50;
  (*(v22 + 16))(v50, v34, v21);
  (*(v22 + 56))(v36, 0, 1, v21);
  v37 = v48;
  swift_beginAccess();
  sub_1D43B3D78(v36, v30 + v37, &qword_1EC7CC548);
  return swift_endAccess();
}

uint64_t sub_1D43F7F5C@<X0>(void *a1@<X8>)
{
  v2 = sub_1D4416E84();
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  sub_1D4419C54();
  sub_1D441A954();
  if (!*(v3 + 16) || (v4 = sub_1D42D00F4(v7), (v5 & 1) == 0))
  {

    sub_1D42D7374(v7);
LABEL_8:
    v8 = 0u;
    v9 = 0u;
    goto LABEL_9;
  }

  sub_1D42D5D14(*(v3 + 56) + 32 * v4, &v8);
  sub_1D42D7374(v7);

  if (!*(&v9 + 1))
  {
LABEL_9:
    result = sub_1D41769C4(&v8, &qword_1EC7C9720);
    goto LABEL_10;
  }

  sub_1D41766C0(0, &qword_1EDE32768);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_10:
    *a1 = 0;
  }

  return result;
}

id sub_1D43F8074@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    *a2 = v3;

    return v5;
  }

  else
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      result = [result note];
      *a2 = result;
    }

    else
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t sub_1D43F8124@<X0>(uint64_t *a1@<X8>)
{

  v3 = sub_1D4391B78(v2);

  *a1 = v3;
  return result;
}

uint64_t sub_1D43F816C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v33 = a4;
  v28 = a2;
  v6 = sub_1D441A4A4();
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC5C8);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC540);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v30 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v16 = *a1;
  swift_beginAccess();
  sub_1D417CF94(v4 + v16, v15, &qword_1EC7CC540);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC530);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) != 1)
  {
    return (*(v18 + 32))(v33, v15, v17);
  }

  sub_1D41769C4(v15, &qword_1EC7CC540);
  v19 = [objc_opt_self() defaultCenter];
  v20 = [*(v4 + OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_thumbnailService) viewContext];
  v26 = v4;
  sub_1D441A4B4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC5D0);
  sub_1D418D62C(&qword_1EDE326E0, MEMORY[0x1E6969F20]);
  sub_1D44183A4();
  (*(v27 + 8))(v8, v6);
  sub_1D44182B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC5D8);
  sub_1D417645C(&qword_1EDE337D0, &qword_1EC7CC5C8);
  sub_1D417645C(&qword_1EDE33700, &qword_1EC7CC5D8);
  v21 = v33;
  v22 = v31;
  sub_1D4418484();
  (*(v29 + 8))(v10, v22);
  v23 = v30;
  (*(v18 + 16))(v30, v21, v17);
  (*(v18 + 56))(v23, 0, 1, v17);
  v24 = v26;
  swift_beginAccess();
  sub_1D43B3D78(v23, v24 + v16, &qword_1EC7CC540);
  return swift_endAccess();
}

uint64_t sub_1D43F8650@<X0>(void *a1@<X8>)
{
  v2 = sub_1D4416E84();
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  sub_1D4419C54();
  sub_1D441A954();
  if (!*(v3 + 16) || (v4 = sub_1D42D00F4(v7), (v5 & 1) == 0))
  {

    sub_1D42D7374(v7);
LABEL_8:
    v8 = 0u;
    v9 = 0u;
    goto LABEL_9;
  }

  sub_1D42D5D14(*(v3 + 56) + 32 * v4, &v8);
  sub_1D42D7374(v7);

  if (!*(&v9 + 1))
  {
LABEL_9:
    result = sub_1D41769C4(&v8, &qword_1EC7C9720);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC5D0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_10:
    *a1 = 0;
  }

  return result;
}

uint64_t sub_1D43F8768()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC5D0);
  sub_1D417645C(&qword_1EDE32A20, &qword_1EC7CC5D0);
  return sub_1D4418294();
}

id sub_1D43F8810@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  v5 = result;
  if (result)
  {
    result = v3;
  }

  *a2 = v5;
  return result;
}

id SystemPaperThumbnailService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1D43F891C(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  *&a3[OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_traitCollection] = 0;
  *&a3[OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_observations] = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR___ICSystemPaperThumbnailServiceInternal____lazy_storage___contextDidUpdateObject;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC530);
  v9 = *(*(v8 - 8) + 56);
  v9(&a3[v7], 1, 1, v8);
  v10 = OBJC_IVAR___ICSystemPaperThumbnailServiceInternal____lazy_storage___cacheDidInvalidateObject;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC538);
  (*(*(v11 - 8) + 56))(&a3[v10], 1, 1, v11);
  v12 = OBJC_IVAR___ICSystemPaperThumbnailServiceInternal____lazy_storage___didUpdateSystemPaperNotesImmediately;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC528);
  (*(*(v13 - 8) + 56))(&a3[v12], 1, 1, v13);
  v14 = OBJC_IVAR___ICSystemPaperThumbnailServiceInternal____lazy_storage___didUpdateSystemPaperNotesWithCoalescingAndDelay;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC520);
  (*(*(v15 - 8) + 56))(&a3[v14], 1, 1, v15);
  v9(&a3[OBJC_IVAR___ICSystemPaperThumbnailServiceInternal____lazy_storage___contextDidDeleteObject], 1, 1, v8);
  v16 = OBJC_IVAR___ICSystemPaperThumbnailServiceInternal____lazy_storage___didDeleteSystemPaperNotesImmediately;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC518);
  (*(*(v17 - 8) + 56))(&a3[v16], 1, 1, v17);
  v18 = OBJC_IVAR___ICSystemPaperThumbnailServiceInternal____lazy_storage___didDeleteSystemPaperNotesWithCoalescingAndDelay;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC510);
  (*(*(v19 - 8) + 56))(&a3[v18], 1, 1, v19);
  v20 = OBJC_IVAR___ICSystemPaperThumbnailServiceInternal____lazy_storage___accessibilityAppearanceDidChange;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC508);
  (*(*(v21 - 8) + 56))(&a3[v20], 1, 1, v21);
  v22 = &a3[OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_fileManager];
  v23 = MEMORY[0x1E69B7368];
  *v22 = a1;
  *(v22 + 1) = v23;
  *&a3[OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_thumbnailService] = a2;
  v25.receiver = a3;
  v25.super_class = ObjectType;
  return objc_msgSendSuper2(&v25, sel_init);
}

id sub_1D43F8C3C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  *&a3[OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_traitCollection] = 0;
  *&a3[OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_observations] = MEMORY[0x1E69E7CC0];
  v10 = OBJC_IVAR___ICSystemPaperThumbnailServiceInternal____lazy_storage___contextDidUpdateObject;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC530);
  v12 = *(*(v11 - 8) + 56);
  v12(&a3[v10], 1, 1, v11);
  v13 = OBJC_IVAR___ICSystemPaperThumbnailServiceInternal____lazy_storage___cacheDidInvalidateObject;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC538);
  (*(*(v14 - 8) + 56))(&a3[v13], 1, 1, v14);
  v15 = OBJC_IVAR___ICSystemPaperThumbnailServiceInternal____lazy_storage___didUpdateSystemPaperNotesImmediately;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC528);
  (*(*(v16 - 8) + 56))(&a3[v15], 1, 1, v16);
  v17 = OBJC_IVAR___ICSystemPaperThumbnailServiceInternal____lazy_storage___didUpdateSystemPaperNotesWithCoalescingAndDelay;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC520);
  (*(*(v18 - 8) + 56))(&a3[v17], 1, 1, v18);
  v12(&a3[OBJC_IVAR___ICSystemPaperThumbnailServiceInternal____lazy_storage___contextDidDeleteObject], 1, 1, v11);
  v19 = OBJC_IVAR___ICSystemPaperThumbnailServiceInternal____lazy_storage___didDeleteSystemPaperNotesImmediately;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC518);
  (*(*(v20 - 8) + 56))(&a3[v19], 1, 1, v20);
  v21 = OBJC_IVAR___ICSystemPaperThumbnailServiceInternal____lazy_storage___didDeleteSystemPaperNotesWithCoalescingAndDelay;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC510);
  (*(*(v22 - 8) + 56))(&a3[v21], 1, 1, v22);
  v23 = OBJC_IVAR___ICSystemPaperThumbnailServiceInternal____lazy_storage___accessibilityAppearanceDidChange;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC508);
  (*(*(v24 - 8) + 56))(&a3[v23], 1, 1, v24);
  v25 = &a3[OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_fileManager];
  *v25 = a1;
  *(v25 + 1) = a5;
  *&a3[OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_thumbnailService] = a2;
  v27.receiver = a3;
  v27.super_class = ObjectType;
  return objc_msgSendSuper2(&v27, sel_init);
}

void sub_1D43F8F60(uint64_t a1, void *a2)
{
  v25 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1D441A8C4();
    if (!v3)
    {
      return;
    }

    v31 = MEMORY[0x1E69E7CC0];
    sub_1D441AAB4();
    v28 = sub_1D441A864();
    v29 = v4;
    v30 = 1;
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v31 = MEMORY[0x1E69E7CC0];
  sub_1D441AAB4();
  v5 = sub_1D441A824();
  v6 = *(a1 + 36);
  v28 = v5;
  v29 = v6;
  v30 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v3)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v10 = v28;
    v11 = v29;
    v12 = v30;
    sub_1D439162C(v28, v29, v30, a1);
    v14 = v13;
    v15 = [a2 objectWithID_];

    sub_1D441AA94();
    sub_1D441AAC4();
    sub_1D441AAD4();
    sub_1D441AAA4();
    if (v25)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (sub_1D441A884())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC618);
      v8 = sub_1D441A094();
      sub_1D441A924();
      v8(v27, 0);
      if (v7 == v3)
      {
LABEL_28:
        sub_1D42D74FC(v28, v29, v30);
        return;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v16 = 1 << *(a1 + 32);
      if (v10 >= v16)
      {
        goto LABEL_32;
      }

      v17 = v10 >> 6;
      v18 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v18 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v11)
      {
        goto LABEL_34;
      }

      v19 = v18 & (-2 << (v10 & 0x3F));
      if (v19)
      {
        v16 = __clz(__rbit64(v19)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v17 << 6;
        v21 = v17 + 1;
        v22 = (a1 + 64 + 8 * v17);
        while (v21 < (v16 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_1D42D74FC(v10, v11, 0);
            v16 = __clz(__rbit64(v23)) + v20;
            goto LABEL_27;
          }
        }

        sub_1D42D74FC(v10, v11, 0);
      }

LABEL_27:
      v28 = v16;
      v29 = v11;
      v30 = 0;
      if (v7 == v3)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:

  __break(1u);
LABEL_36:

  __break(1u);
}

uint64_t sub_1D43F9290(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v66 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  v9 = MEMORY[0x1EEE9AC00](v70);
  v64 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v67 = &v59 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v59 - v13;
  v15 = sub_1D4417434();
  v69 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v62 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v59 - v21;
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  v24 = *(a3 + OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_thumbnailService);
  v65 = a4;

  v25 = a5;
  v26 = a2;
  v27 = [objc_msgSend(v24 cache)];
  swift_unknownObjectRelease();
  if (!v27)
  {
    v75 = sub_1D43FA128;
    v76 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v72 = 1107296256;
    v73 = sub_1D4315880;
    v74 = &block_descriptor_251;
    v41 = _Block_copy(&aBlock);

    [v24 thumbnailWithConfiguration:v26 completion:v41];
    _Block_release(v41);
  }

  v63 = v24;
  v61 = v26;
  sub_1D44173F4();

  v28 = v69;
  v29 = *(v69 + 32);
  v68 = v22;
  v59 = v29;
  v29(v22, v20, v15);
  v30 = v15;
  if (qword_1EDE331D0 != -1)
  {
    swift_once();
  }

  v60 = v25;
  v31 = __swift_project_value_buffer(v70, qword_1EDE331D8);
  sub_1D417CF94(v31, v14, &qword_1EC7C98F0);
  v32 = *(v28 + 48);
  if (v32(v14, 1, v15) != 1)
  {
    v33 = v68;
    v34 = sub_1D44173C4();
    v35 = *(v28 + 8);
    v35(v14, v30);
    if (v34)
    {
      v36 = v63;
      v37 = [v63 cache];
      v38 = v35;
      v39 = v61;
      [v37 setObject:0 forKeyedSubscript:v61];
      swift_unknownObjectRelease();
      v75 = sub_1D43FA128;
      v76 = v23;
      aBlock = MEMORY[0x1E69E9820];
      v72 = 1107296256;
      v73 = sub_1D4315880;
      v74 = &block_descriptor_257;
      v40 = _Block_copy(&aBlock);

      [v36 thumbnailWithConfiguration:v39 completion:v40];
      _Block_release(v40);
      v38(v33, v30);
    }

    if (v66)
    {
      v42 = [v66 modificationDate];
      if (v42)
      {
        v43 = v64;
        v44 = v42;
        sub_1D44173F4();

        v45 = v43;
        v46 = 0;
        v47 = v63;
      }

      else
      {
        v46 = 1;
        v47 = v63;
        v45 = v64;
      }

      (*(v28 + 56))(v45, v46, 1, v30);
      v49 = v45;
      v48 = v67;
      sub_1D43E1F90(v49, v67);
      if (v32(v48, 1, v30) != 1)
      {
        v54 = v62;
        v59(v62, v48, v30);
        v50 = v68;
        if (sub_1D44173C4())
        {
          v55 = [v47 cache];
          v56 = v35;
          v57 = v61;
          [v55 setObject:0 forKeyedSubscript:v61];
          swift_unknownObjectRelease();
          v75 = sub_1D43FA128;
          v76 = v23;
          aBlock = MEMORY[0x1E69E9820];
          v72 = 1107296256;
          v73 = sub_1D4315880;
          v74 = &block_descriptor_254;
          v58 = _Block_copy(&aBlock);

          [v47 thumbnailWithConfiguration:v57 completion:v58];
          _Block_release(v58);
          v56(v54, v30);
          v56(v50, v30);
        }

        v35(v54, v30);
        goto LABEL_15;
      }
    }

    else
    {
      v48 = v67;
      (*(v28 + 56))(v67, 1, 1, v30);
    }

    sub_1D41769C4(v48, &qword_1EC7C98F0);
    v50 = v68;
LABEL_15:
    v51 = v65;
    swift_beginAccess();
    v52 = *(v51 + 16);
    swift_beginAccess();
    *(v51 + 16) = v52;
    dispatch_group_leave(v60);
    v35(v50, v30);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SystemPaperThumbnailService()
{
  result = qword_1EDE32DC0;
  if (!qword_1EDE32DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D43F9BD8()
{
  sub_1D43F9ED0(319, &qword_1EDE33710, &qword_1EC7CC530);
  if (v0 <= 0x3F)
  {
    sub_1D43F9ED0(319, &qword_1EDE337D8, &qword_1EC7CC538);
    if (v1 <= 0x3F)
    {
      sub_1D43F9ED0(319, &qword_1EDE33738, &qword_1EC7CC528);
      if (v2 <= 0x3F)
      {
        sub_1D43F9ED0(319, &qword_1EDE33760, &qword_1EC7CC520);
        if (v3 <= 0x3F)
        {
          sub_1D43F9ED0(319, &qword_1EDE33748, &qword_1EC7CC518);
          if (v4 <= 0x3F)
          {
            sub_1D43F9ED0(319, &qword_1EDE33770, &qword_1EC7CC510);
            if (v5 <= 0x3F)
            {
              sub_1D43F9ED0(319, &qword_1EDE33780, &qword_1EC7CC508);
              if (v6 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D43F9ED0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1D441A784();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t objectdestroy_8Tm()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_36Tm()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1D43F9FD8(uint64_t a1)
{
  v2 = [*(v1 + 16) objectWithID_];

  return v2;
}

uint64_t sub_1D43FA014@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t objectdestroy_183Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_17Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t LinkSuggestionsView.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

double LinkSuggestionsView.init(viewModel:)@<D0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for LinkSuggestionsView(0) + 24);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC620);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LinkEditorViewModel();
  sub_1D43FD800(&qword_1EC7CC628, type metadata accessor for LinkEditorViewModel);

  *(a1 + 48) = sub_1D44185C4();
  *(a1 + 56) = v3;
  v4 = objc_opt_self();
  v5 = sub_1D4419C14();
  v6 = [v4 localizedFrameworkStringForKey:v5 value:0 table:0 allowSiri:1];

  v7 = sub_1D4419C54();
  v9 = v8;

  v10 = sub_1D4419C14();
  v11 = [v4 localizedFrameworkStringForKey:v10 value:0 table:0 allowSiri:1];

  v12 = sub_1D4419C54();
  v14 = v13;

  *&result = 1;
  *a1 = xmmword_1D443D030;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = v12;
  *(a1 + 40) = v14;
  return result;
}

uint64_t sub_1D43FA4AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC670);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D417CF94(a1, &v5 - v3, &qword_1EC7CC670);
  return sub_1D44187B4();
}

uint64_t LinkSuggestionsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1D4418A44();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC630);
  sub_1D43FA628(v1, a1 + *(v3 + 44));
  v4 = sub_1D4418D04();
  sub_1D4418494();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC638) + 36);
  *v13 = v4;
  *(v13 + 8) = v6;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  v14 = sub_1D4418D04();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC640);
  *(a1 + *(result + 36)) = v14;
  return result;
}

uint64_t sub_1D43FA628@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC718);
  v83 = *(v4 - 8);
  v84 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v74 = &v67 - v5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC720);
  v85 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v67 - v6;
  v7 = type metadata accessor for LinkSuggestionsView(0);
  v75 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v76 = v8;
  v77 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC728);
  v79 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v67 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC730);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v73 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v67 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v72 = &v67 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v81 = &v67 - v22;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  v23 = v86;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  v24 = v86;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  if (v86 == 1)
  {
    v70 = v19;
    v71 = a2;
    v25 = v23[2];
    v69 = a1;
    if (v25)
    {
      v26 = a1[3];
      v86 = a1[2];
      v87 = v26;

      sub_1D4418514();
      sub_1D43FD8E0();
      v27 = a1;
      v28 = v78;
      sub_1D4419074();

      v29 = *v27;
      v30 = v27;
      v31 = v77;
      sub_1D43FD934(v30, v77);
      v32 = (*(v75 + 80) + 16) & ~*(v75 + 80);
      v33 = swift_allocObject();
      sub_1D43FD998(v31, v33 + v32);
      v68 = v24;
      v34 = v79;
      v35 = *(v79 + 16);
      v35(v12, v28, v9);
      v36 = v80;
      v35(v80, v12, v9);
      v37 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC740) + 48)];
      *v37 = v23;
      *(v37 + 1) = v29;
      *(v37 + 8) = 256;
      *(v37 + 3) = sub_1D43FD9FC;
      *(v37 + 4) = v33;

      sub_1D417C7B4(sub_1D43FD9FC);
      v38 = v34;
      v24 = v68;
      v39 = *(v38 + 8);
      v39(v28, v9);

      sub_1D417BCA0(sub_1D43FD9FC);
      v39(v12, v9);
      v40 = v36;
      v41 = v81;
      sub_1D42D742C(v40, v81, &qword_1EC7CC720);
      v42 = 0;
    }

    else
    {

      v42 = 1;
      v41 = v81;
    }

    v45 = v85 + 56;
    v44 = *(v85 + 56);
    v44(v41, v42, 1, v82);
    if (*(v24 + 2))
    {
      v68 = v44;
      v46 = v69;
      v47 = *(v69 + 40);
      v86 = *(v69 + 32);
      v87 = v47;

      sub_1D4418514();
      sub_1D43FD8E0();
      v85 = v45;
      v48 = v24;
      v49 = v78;
      sub_1D4419074();

      v50 = *(v46 + 8);
      v51 = v77;
      sub_1D43FD934(v46, v77);
      v52 = (*(v75 + 80) + 16) & ~*(v75 + 80);
      v53 = swift_allocObject();
      sub_1D43FD998(v51, v53 + v52);
      v54 = v79;
      v55 = *(v79 + 16);
      v55(v12, v49, v9);
      v56 = v80;
      v55(v80, v12, v9);
      v57 = &v56[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC740) + 48)];
      *v57 = v48;
      *(v57 + 1) = v50;
      *(v57 + 8) = 256;
      *(v57 + 3) = sub_1D43FDB98;
      *(v57 + 4) = v53;

      sub_1D417C7B4(sub_1D43FDB98);
      v58 = *(v54 + 8);
      v58(v49, v9);

      v44 = v68;
      sub_1D417BCA0(sub_1D43FDB98);
      v58(v12, v9);
      v59 = v56;
      v41 = v81;
      v60 = v72;
      sub_1D42D742C(v59, v72, &qword_1EC7CC720);
      v61 = 0;
    }

    else
    {

      v61 = 1;
      v60 = v72;
    }

    v44(v60, v61, 1, v82);
    v62 = v70;
    sub_1D417CF94(v41, v70, &qword_1EC7CC730);
    v63 = v73;
    sub_1D417CF94(v60, v73, &qword_1EC7CC730);
    v64 = v74;
    sub_1D417CF94(v62, v74, &qword_1EC7CC730);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC748);
    sub_1D417CF94(v63, v64 + *(v65 + 48), &qword_1EC7CC730);
    sub_1D41769C4(v60, &qword_1EC7CC730);
    sub_1D41769C4(v41, &qword_1EC7CC730);
    sub_1D41769C4(v63, &qword_1EC7CC730);
    sub_1D41769C4(v62, &qword_1EC7CC730);
    a2 = v71;
    sub_1D42D742C(v64, v71, &qword_1EC7CC718);
    v43 = 0;
  }

  else
  {

    v43 = 1;
  }

  return (*(v83 + 56))(a2, v43, 1, v84);
}

uint64_t sub_1D43FAF28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9908);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v11 - v1;
  v3 = sub_1D4417234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4417864();
  sub_1D4417224();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_1D41769C4(v2, &qword_1EC7C9908);
  }

  (*(v4 + 32))(v6, v2, v3);

  v8 = sub_1D4417184();
  v10 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  v11[0] = v8;
  v11[1] = v10;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v11[0]) = 0;
  sub_1D4418374();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D43FB154()
{
  result = sub_1D4417804();
  if (v1)
  {
    v2 = result;
    v3 = v1;
    v4 = sub_1D4417824();
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      v8 = type metadata accessor for NoteSelection();
      v9 = objc_allocWithZone(v8);
      v10 = &v9[OBJC_IVAR____TtC7NotesUI13NoteSelection_noteID];
      *v10 = v2;
      *(v10 + 1) = v3;
      v11 = &v9[OBJC_IVAR____TtC7NotesUI13NoteSelection_noteTitle];
      *v11 = v6;
      *(v11 + 1) = v7;
      v12.receiver = v9;
      v12.super_class = v8;

      objc_msgSendSuper2(&v12, sel_init);
      swift_getKeyPath();
      swift_getKeyPath();
      return sub_1D4418374();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D43FB270@<X0>(uint64_t a1@<X8>)
{
  sub_1D42CC920();

  v2 = sub_1D4418F84();
  v4 = v3;
  v6 = v5;
  sub_1D4419184();
  v7 = sub_1D4418EF4();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_1D430E564(v2, v4, v6 & 1);

  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC700) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC160) + 28);
  v16 = *MEMORY[0x1E6980FD8];
  v17 = sub_1D4418F24();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v14 + v15, v16, v17);
  (*(v18 + 56))(v14 + v15, 0, 1, v17);
  *v14 = swift_getKeyPath();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  v19 = sub_1D4418E34();
  KeyPath = swift_getKeyPath();
  v21 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC708) + 36));
  *v21 = KeyPath;
  v21[1] = v19;
  LOBYTE(v19) = sub_1D4418D24();
  sub_1D4418494();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC710);
  v31 = a1 + *(result + 36);
  *v31 = v19;
  *(v31 + 8) = v23;
  *(v31 + 16) = v25;
  *(v31 + 24) = v27;
  *(v31 + 32) = v29;
  *(v31 + 40) = 0;
  return result;
}

uint64_t sub_1D43FB4B0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1D4418A44();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC630);
  sub_1D43FA628(v1, a1 + *(v3 + 44));
  v4 = sub_1D4418D04();
  sub_1D4418494();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC638) + 36);
  *v13 = v4;
  *(v13 + 8) = v6;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  v14 = sub_1D4418D04();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC640);
  *(a1 + *(result + 36)) = v14;
  return result;
}

void sub_1D43FB5AC()
{
  sub_1D43FB640();
  if (v0 <= 0x3F)
  {
    sub_1D43FB6D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D43FB640()
{
  if (!qword_1EC7CC660)
  {
    type metadata accessor for LinkEditorViewModel();
    sub_1D43FD800(&qword_1EC7CC628, type metadata accessor for LinkEditorViewModel);
    v0 = sub_1D44185E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7CC660);
    }
  }
}

void sub_1D43FB6D4()
{
  if (!qword_1EC7CC668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CC670);
    v0 = sub_1D44184F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7CC668);
    }
  }
}

uint64_t sub_1D43FB738(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D43FB780(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D43FB7DC()
{
  result = qword_1EC7CC678;
  if (!qword_1EC7CC678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CC640);
    sub_1D43FB868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC678);
  }

  return result;
}

unint64_t sub_1D43FB868()
{
  result = qword_1EC7CC680;
  if (!qword_1EC7CC680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CC638);
    sub_1D417645C(&qword_1EC7CC688, &qword_1EC7CC690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC680);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11NotesShared14LinkSuggestionVIegn_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D43FB990()
{
  if (*(v0 + 16))
  {
    v1 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v1 = *(v0 + 8);
  }

  v2 = sub_1D42E86E4(v1, *v0);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if ((v7 & 1) == 0)
  {

LABEL_6:
    sub_1D43FD0CC(v2, v4, v6, v8, &qword_1EC7CB8E8, &unk_1D443A2A0, MEMORY[0x1E69B7158]);
    v10 = v9;
LABEL_13:
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  sub_1D441AD94();
  swift_unknownObjectRetain_n();

  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);

  if (__OFSUB__(v8 >> 1, v6))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v12 != (v8 >> 1) - v6)
  {
LABEL_16:
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v10 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v10)
  {
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

LABEL_14:
  sub_1D43FD448(v10);

  swift_getKeyPath();
  v13 = *(v0 + 24);
  v14 = swift_allocObject();
  v15 = *(v0 + 16);
  *(v14 + 16) = *v0;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(v0 + 32);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1D43FD790;
  *(v16 + 24) = v14;

  sub_1D417C7B4(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC698);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC6A0);
  sub_1D417645C(&qword_1EC7CC6A8, &qword_1EC7CC698);
  sub_1D43FD800(&qword_1EC7CC6B0, MEMORY[0x1E69B7158]);
  sub_1D417645C(&qword_1EC7CC6B8, &qword_1EC7CC6A0);
  return sub_1D4419314();
}

uint64_t sub_1D43FBC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v75 = a1;
  v80 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA278);
  v77 = *(v6 - 8);
  v78 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC6C8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v79 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v89 = &v74 - v11;
  v12 = sub_1D4418BC4();
  v13 = *(v12 - 8);
  v87 = v12;
  v88 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D4417884();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC6D0);
  v86 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v74 - v18;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC6D8) - 8;
  v19 = MEMORY[0x1EEE9AC00](v83);
  v76 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v74 - v21;
  v23 = *a3;
  v24 = *(a3 + 24);
  v81 = *(a3 + 32);
  v25 = a2;
  (*(v16 + 16))(&v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v15);
  v26 = (*(v16 + 80) + 56) & ~*(v16 + 80);
  v27 = swift_allocObject();
  v28 = *(a3 + 16);
  *(v27 + 16) = *a3;
  *(v27 + 32) = v28;
  *(v27 + 48) = *(a3 + 32);
  (*(v16 + 32))(v27 + v26, &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  v90 = v25;

  sub_1D417C7B4(v24);
  type metadata accessor for LinkSuggestionRow(0);
  sub_1D43FD800(&qword_1EC7CC6E0, type metadata accessor for LinkSuggestionRow);
  v29 = v82;
  sub_1D44192C4();
  v30 = v85;
  sub_1D4418BB4();
  sub_1D417645C(&qword_1EC7CC6E8, &qword_1EC7CC6D0);
  sub_1D43FD800(&qword_1EDE32B70, MEMORY[0x1E697C720]);
  v31 = v84;
  v32 = v87;
  sub_1D4418FC4();
  (*(v88 + 8))(v30, v32);
  (*(v86 + 8))(v29, v31);
  v33 = sub_1D4418A24();
  v34 = &v22[*(v83 + 44)];
  *v34 = v33;
  v34[1] = sub_1D43FC5AC;
  v34[2] = 0;
  if ((*(a3 + 17) & 1) == 0)
  {
    v50 = 1;
    v44 = v79;
    v43 = v80;
    v45 = v89;
    v49 = v77;
    v48 = v78;
    goto LABEL_19;
  }

  if (*(a3 + 16))
  {
    v35 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v35 = *(a3 + 8);
  }

  v36 = sub_1D42E86E4(v35, v23);
  v38 = v37;
  v40 = v39;
  v42 = v41;
  if ((v41 & 1) == 0)
  {

    v44 = v79;
    v43 = v80;
    v45 = v89;
LABEL_7:
    sub_1D43FD0CC(v36, v38, v40, v42, &qword_1EC7CB8E8, &unk_1D443A2A0, MEMORY[0x1E69B7158]);
    v47 = v46;
    v49 = v77;
    v48 = v78;
    goto LABEL_15;
  }

  sub_1D441AD94();
  swift_unknownObjectRetain_n();

  v51 = swift_dynamicCastClass();
  v45 = v89;
  if (!v51)
  {
    swift_unknownObjectRelease();
    v51 = MEMORY[0x1E69E7CC0];
  }

  v52 = *(v51 + 16);

  if (__OFSUB__(v42 >> 1, v40))
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v52 != (v42 >> 1) - v40)
  {
LABEL_21:
    swift_unknownObjectRelease();
    v44 = v79;
    v43 = v80;
    goto LABEL_7;
  }

  v47 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v44 = v79;
  v43 = v80;
  v49 = v77;
  v48 = v78;
  if (v47)
  {
    goto LABEL_16;
  }

  v47 = MEMORY[0x1E69E7CC0];
LABEL_15:
  swift_unknownObjectRelease();
LABEL_16:
  v53 = *(v47 + 16);

  if (v53 - 1 <= v75)
  {
    v50 = 1;
  }

  else
  {
    v54 = v74;
    sub_1D44192F4();
    v55 = sub_1D4418D34();
    sub_1D4418494();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v64 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA270) + 36);
    *v64 = v55;
    *(v64 + 8) = v57;
    *(v64 + 16) = v59;
    *(v64 + 24) = v61;
    *(v64 + 32) = v63;
    *(v64 + 40) = 0;
    v65 = sub_1D4418D54();
    sub_1D4418494();
    v66 = v54 + *(v48 + 36);
    *v66 = v65;
    *(v66 + 8) = v67;
    *(v66 + 16) = v68;
    *(v66 + 24) = v69;
    *(v66 + 32) = v70;
    *(v66 + 40) = 0;
    sub_1D42D742C(v54, v45, &qword_1EC7CA278);
    v50 = 0;
  }

LABEL_19:
  (*(v49 + 56))(v45, v50, 1, v48);
  v71 = v76;
  sub_1D417CF94(v22, v76, &qword_1EC7CC6D8);
  sub_1D417CF94(v45, v44, &qword_1EC7CC6C8);
  sub_1D417CF94(v71, v43, &qword_1EC7CC6D8);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC6F0);
  sub_1D417CF94(v44, v43 + *(v72 + 48), &qword_1EC7CC6C8);
  sub_1D41769C4(v45, &qword_1EC7CC6C8);
  sub_1D41769C4(v22, &qword_1EC7CC6D8);
  sub_1D41769C4(v44, &qword_1EC7CC6C8);
  return sub_1D41769C4(v71, &qword_1EC7CC6D8);
}

uint64_t sub_1D43FC4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D4417884();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = type metadata accessor for LinkSuggestionRow(0);
  v6 = v5[5];
  [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  result = _s7SwiftUI5ImageV05NotesB0EyACSo7UIImageCcfC_0();
  *(a2 + v6) = result;
  *(a2 + v5[6]) = 0;
  *(a2 + v5[7]) = 1;
  *(a2 + v5[8]) = 0x402A000000000000;
  *(a2 + v5[9]) = 0x4018000000000000;
  *(a2 + v5[10]) = 0x4010000000000000;
  return result;
}

uint64_t sub_1D43FC5B8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC788);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v40 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC790);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC798);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v40 - v12;
  v14 = sub_1D4418924();
  v15 = *(v1 + *(type metadata accessor for LinkSuggestionRow(0) + 36));
  *v5 = v14;
  *(v5 + 1) = v15;
  v5[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC7A0);
  sub_1D43FC898(v1, &v5[*(v16 + 44)]);
  sub_1D4419364();
  sub_1D4418694();
  sub_1D42D742C(v5, v9, &qword_1EC7CC788);
  v17 = &v9[*(v7 + 44)];
  v18 = v40[5];
  *(v17 + 4) = v40[4];
  *(v17 + 5) = v18;
  *(v17 + 6) = v40[6];
  v19 = v40[1];
  *v17 = v40[0];
  *(v17 + 1) = v19;
  v20 = v40[3];
  *(v17 + 2) = v40[2];
  *(v17 + 3) = v20;
  LOBYTE(v5) = sub_1D4418D64();
  sub_1D4418494();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_1D42D742C(v9, v13, &qword_1EC7CC790);
  v29 = &v13[*(v11 + 44)];
  *v29 = v5;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  LOBYTE(v11) = sub_1D4418CF4();
  sub_1D4418494();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_1D42D742C(v13, a1, &qword_1EC7CC798);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC7A8);
  v39 = a1 + *(result + 36);
  *v39 = v11;
  *(v39 + 8) = v31;
  *(v39 + 16) = v33;
  *(v39 + 24) = v35;
  *(v39 + 32) = v37;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_1D43FC898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC7B0);
  v3 = MEMORY[0x1EEE9AC00](v64);
  v66 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v60 - v5;
  v7 = sub_1D4419234();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4417814();
  if (v11)
  {
    sub_1D4419224();
  }

  else
  {
    type metadata accessor for LinkSuggestionRow(0);
  }

  (*(v8 + 104))(v10, *MEMORY[0x1E6981630], v7);
  v69 = sub_1D4419274();

  (*(v8 + 8))(v10, v7);
  v68 = sub_1D44191B4();
  KeyPath = swift_getKeyPath();
  v12 = type metadata accessor for LinkSuggestionRow(0);
  sub_1D4419364();
  sub_1D4418554();
  v89 = 1;
  v73 = sub_1D4417864();
  v74 = v13;
  v60[1] = sub_1D42CC920();
  v14 = sub_1D4418F84();
  v16 = v15;
  v18 = v17;
  sub_1D44191B4();
  v19 = sub_1D4418EF4();
  v62 = v20;
  v63 = v19;
  v22 = v21;
  v61 = v23;

  sub_1D430E564(v14, v16, v18 & 1);

  v24 = swift_getKeyPath();
  v25 = *(a1 + *(v12 + 28));
  v26 = swift_getKeyPath();
  v27 = v22 & 1;
  LOBYTE(v73) = v22 & 1;
  LOBYTE(v70) = 0;
  v28 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC7B8) + 36)];
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC7C0) + 28);
  v30 = *MEMORY[0x1E6980FA8];
  v31 = sub_1D4418EE4();
  (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
  *v28 = swift_getKeyPath();
  v32 = v62;
  *v6 = v63;
  *(v6 + 1) = v32;
  v6[16] = v27;
  *(v6 + 3) = v61;
  *(v6 + 4) = v24;
  v6[40] = 0;
  *(v6 + 6) = v26;
  *(v6 + 7) = v25;
  v6[64] = 0;
  *&v6[*(v64 + 36)] = 0x3FF0000000000000;
  v33 = sub_1D4417874();
  if (v34)
  {
    v73 = v33;
    v74 = v34;
    v35 = sub_1D4418F84();
    v37 = v36;
    v39 = v38;
    sub_1D44191C4();
    v40 = sub_1D4418EF4();
    v63 = v41;
    v64 = v40;
    v43 = v42;
    v62 = v44;

    sub_1D430E564(v35, v37, v39 & 1);

    v61 = swift_getKeyPath();
    LOBYTE(v73) = v43 & 1;
    LOBYTE(v70) = 0;
    v45 = v43 & 1;
    v46 = 65792;
    v47 = 1;
  }

  else
  {
    v63 = 0;
    v64 = 0;
    v45 = 0;
    v61 = 0;
    v62 = 0;
    v47 = 0;
    v46 = 0;
  }

  v48 = v66;
  sub_1D417CF94(v6, v66, &qword_1EC7CC7B0);
  v70 = v69;
  LOWORD(v71) = 1;
  *(&v71 + 2) = v87;
  WORD3(v71) = v88;
  *(&v71 + 1) = KeyPath;
  *v72 = v68;
  *&v72[24] = v85;
  *&v72[8] = v84;
  *&v72[40] = v86;
  v49 = *&v72[16];
  v50 = v65;
  *(v65 + 32) = *v72;
  *(v50 + 48) = v49;
  *(v50 + 64) = *&v72[32];
  *(v50 + 80) = *&v72[48];
  v51 = v71;
  *v50 = v70;
  *(v50 + 16) = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC7C8);
  sub_1D417CF94(v48, v50 + v52[12], &qword_1EC7CC7B0);
  v53 = v50 + v52[16];
  *v53 = 0;
  *(v53 + 8) = 1;
  v54 = v50 + v52[20];
  v55 = v63;
  v56 = v64;
  *v54 = v64;
  *(v54 + 8) = v55;
  v58 = v61;
  v57 = v62;
  *(v54 + 16) = v45;
  *(v54 + 24) = v57;
  *(v54 + 32) = v58;
  *(v54 + 40) = v47;
  *(v54 + 50) = BYTE2(v46);
  *(v54 + 48) = v46;
  sub_1D417CF94(&v70, &v73, &qword_1EC7CC7D0);
  sub_1D43FDF30(v56, v55, v45, v57);
  sub_1D41769C4(v6, &qword_1EC7CC7B0);
  sub_1D43FDF80(v56, v55, v45, v57);
  sub_1D41769C4(v48, &qword_1EC7CC7B0);
  v81 = v84;
  v73 = v69;
  v74 = 0;
  v75 = 1;
  v76 = 0;
  v77 = v87;
  v78 = v88;
  v79 = KeyPath;
  v80 = v68;
  v82 = v85;
  v83 = v86;
  return sub_1D41769C4(&v73, &qword_1EC7CC7D0);
}

uint64_t sub_1D43FCF0C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1D441A8C4();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1D4392874(v2, 0);

    v1 = sub_1D43C1624(&v5, (v3 + 32), v2, v1);
    sub_1D43300C8();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void sub_1D43FCFBC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB830);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B48);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1D43FD0CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1D43FD284(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        sub_1D41766C0(0, a5);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1D43FD380(uint64_t a1)
{
  v2 = sub_1D4418EE4();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1D4418724();
}

uint64_t sub_1D43FD448(uint64_t a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC6C0);
  v2 = MEMORY[0x1EEE9AC00](v47);
  v46 = (v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v2);
  v7 = v39 - v6;
  v8 = MEMORY[0x1E69E7CC0];
  v45 = *(a1 + 16);
  if (v45)
  {
    v9 = v5;
    v10 = *(v5 + 80);
    v39[1] = v10;
    v40 = (v10 + 32) & ~v10;
    v11 = MEMORY[0x1E69E7CC0] + v40;
    v12 = 0;
    v13 = 0;
    v44 = sub_1D4417884();
    v14 = *(v44 - 8);
    v15 = *(v14 + 16);
    v42 = v14 + 16;
    v43 = v15;
    v16 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v41 = *(v14 + 72);
    v17 = v8;
    v39[0] = v9;
    while (1)
    {
      v20 = v46;
      v21 = *(v47 + 48);
      *v46 = v12;
      v43(v20 + v21, v16, v44);
      result = sub_1D42D742C(v20, v7, &qword_1EC7CC6C0);
      if (v13)
      {
        v8 = v17;
        v18 = v9;
        v19 = __OFSUB__(v13--, 1);
        if (v19)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v22 = v17[3];
        if (((v22 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }

        v23 = v7;
        v24 = v22 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC6F8);
        v26 = *(v9 + 72);
        v27 = v40;
        v8 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v8);
        if (!v26)
        {
          goto LABEL_34;
        }

        v28 = result - v27;
        if (result - v27 == 0x8000000000000000 && v26 == -1)
        {
          goto LABEL_35;
        }

        v30 = v28 / v26;
        v8[2] = v25;
        v8[3] = 2 * (v28 / v26);
        v31 = v8 + v27;
        v32 = v17[3] >> 1;
        v33 = v32 * v26;
        if (v17[2])
        {
          if (v8 < v17 || v31 >= v17 + v40 + v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v8 != v17)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v17[2] = 0;
        }

        v11 = &v31[v33];
        v35 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

        v18 = v39[0];
        v7 = v23;
        v19 = __OFSUB__(v35, 1);
        v13 = v35 - 1;
        if (v19)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v12;
      result = sub_1D42D742C(v7, v11, &qword_1EC7CC6C0);
      v9 = v18;
      v11 += *(v18 + 72);
      v16 += v41;
      v17 = v8;
      if (v45 == v12)
      {
        goto LABEL_29;
      }
    }
  }

  v13 = 0;
LABEL_29:
  v36 = v8[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v19 = __OFSUB__(v37, v13);
    v38 = v37 - v13;
    if (v19)
    {
      goto LABEL_36;
    }

    v8[2] = v38;
  }

  return v8;
}

uint64_t sub_1D43FD798(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC6C0);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_1D43FD800(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D43FD848()
{
  v1 = sub_1D4417884();
  v4 = *(v1 - 8);
  result = v1 - 8;
  v3 = v4;
  v5 = *(v0 + 40);
  if (v5)
  {
    return v5(v0 + ((*(v3 + 80) + 56) & ~*(v3 + 80)));
  }

  return result;
}

unint64_t sub_1D43FD8E0()
{
  result = qword_1EC7CC738;
  if (!qword_1EC7CC738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC738);
  }

  return result;
}

uint64_t sub_1D43FD934(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkSuggestionsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D43FD998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkSuggestionsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_53Tm()
{
  v1 = (type metadata accessor for LinkSuggestionsView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  v6 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1D4418C44();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D43FDBB0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for LinkSuggestionsView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1D43FDC5C()
{
  result = sub_1D4417884();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D43FDCF4()
{
  result = qword_1EC7CC760;
  if (!qword_1EC7CC760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CC768);
    sub_1D417645C(&qword_1EC7CC6B8, &qword_1EC7CC6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC760);
  }

  return result;
}

unint64_t sub_1D43FDDA4()
{
  result = qword_1EC7CC778;
  if (!qword_1EC7CC778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CC708);
    sub_1D43FDE5C();
    sub_1D417645C(&qword_1EDE32B20, &qword_1EC7CA380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC778);
  }

  return result;
}

unint64_t sub_1D43FDE5C()
{
  result = qword_1EC7CC780;
  if (!qword_1EC7CC780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CC700);
    sub_1D417645C(&qword_1EC7CC1F0, &qword_1EC7CC160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC780);
  }

  return result;
}

uint64_t sub_1D43FDF30(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1D430E574(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1D43FDF80(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1D430E564(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1D43FDFD0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D43FE084()
{
  result = qword_1EC7CC7E8;
  if (!qword_1EC7CC7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CC790);
    sub_1D417645C(&qword_1EC7CC7F0, &qword_1EC7CC788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC7E8);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D43FE160(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D43FE1A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1D43FE224@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D4418A34();
  v28 = 1;
  sub_1D43FE38C(v2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v30, __src, sizeof(v30));
  sub_1D417CF94(__dst, v25, &qword_1EC7CC7F8);
  sub_1D41769C4(v30, &qword_1EC7CC7F8);
  memcpy(&v27[7], __dst, 0x110uLL);
  v5 = v28;
  v6 = sub_1D4418CF4();
  sub_1D4418494();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  __src[0] = 0;
  v15 = sub_1D4418D24();
  sub_1D4418494();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  result = memcpy((a1 + 17), v27, 0x117uLL);
  *(a1 + 296) = v6;
  *(a1 + 304) = v8;
  *(a1 + 312) = v10;
  *(a1 + 320) = v12;
  *(a1 + 328) = v14;
  *(a1 + 336) = 0;
  *(a1 + 344) = v15;
  *(a1 + 352) = v17;
  *(a1 + 360) = v19;
  *(a1 + 368) = v21;
  *(a1 + 376) = v23;
  *(a1 + 384) = 0;
  return result;
}

uint64_t sub_1D43FE38C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_1D4418994();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1D4417494();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1D44197F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a1;
  v141 = *a1;
  if (*(&v141 + 1))
  {
    v68 = *(&v141 + 1);
    v69 = v141;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4A0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D4435D40;
    v10 = *MEMORY[0x1E6992250];
    *(v9 + 32) = *MEMORY[0x1E6992250];
    v11 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    sub_1D417CF94(&v141, &v119, &qword_1EC7C9B60);
    v12 = v10;
    v13 = [v11 initWithUnsignedInteger_];
    *(v9 + 64) = sub_1D4308AEC();
    *(v9 + 40) = v13;
    sub_1D4189C80(v9);
    swift_setDeallocating();
    sub_1D41769C4(v9 + 32, &qword_1EC7C99C0);
    swift_deallocClassInstance();
    (*(v6 + 104))(v8, *MEMORY[0x1E6992100], v5);
    sub_1D4417484();
    sub_1D44198E4();
    swift_allocObject();
    sub_1D44198F4();
    v14 = MEMORY[0x1DA6D3100](18.0);

    v69 = v14;
  }

  else
  {
    v69 = 0;
  }

  sub_1D4418984();
  sub_1D4418974();
  sub_1D4419224();
  sub_1D4418954();

  sub_1D4418974();
  sub_1D4418964();
  sub_1D4418974();
  sub_1D44189B4();
  v34 = sub_1D4418F64();
  v16 = v15;
  v18 = v17;
  sub_1D44191C4();
  v19 = sub_1D4418EF4();
  v68 = v20;
  v22 = v21;

  sub_1D430E564(v34, v16, v18 & 1);

  sub_1D4418E34();
  v23 = v22;
  v24 = v68;
  v25 = sub_1D4418F44();
  v27 = v26;
  v29 = v28;
  v67 = v30;

  sub_1D430E564(v19, v24, v23 & 1);

  v31 = sub_1D4418F34();
  v68 = v32;
  LODWORD(v34) = v33;
  v36 = v35;
  sub_1D430E564(v25, v27, v29 & 1);
  v37 = v71;

  v38 = *(v37 + 5);
  if (v38)
  {
    HIDWORD(v65) = v34;
    v66 = v31;
    v67 = v36;
    v39 = *(v37 + 4);

    sub_1D4419364();
    sub_1D4418694();
    *&v79[55] = v137;
    *&v79[71] = v138;
    *&v79[87] = v139;
    *&v79[103] = v140;
    *&v79[7] = v134;
    *&v79[23] = v135;
    v80 = 1;
    *&v79[39] = v136;
    *&v119 = v39;
    *(&v119 + 1) = v38;
    sub_1D42CC920();
    v40 = sub_1D4418F84();
    v42 = v41;
    v44 = v43;
    v71 = v45;
    KeyPath = swift_getKeyPath();
    v34 = swift_getKeyPath();
    v47 = v44 & 1;
    LOBYTE(v119) = v44 & 1;
    LOBYTE(v111[0]) = 0;
    v48 = sub_1D44191C4();
    v49 = swift_getKeyPath();
    v50 = sub_1D4418E34();
    v51 = swift_getKeyPath();
    *&v72 = v40;
    *(&v72 + 1) = v42;
    LOBYTE(v73) = v47;
    *(&v73 + 1) = v71;
    *&v74 = KeyPath;
    *(&v74 + 1) = 10;
    LOBYTE(v75) = 0;
    *(&v75 + 1) = v34;
    LOBYTE(v76) = 1;
    *(&v76 + 1) = v49;
    *&v77 = v48;
    *(&v77 + 1) = v51;
    v78 = v50;
    *&v87 = v50;
    v85 = v76;
    v86 = v77;
    v81 = v72;
    v82 = v73;
    v83 = v74;
    v84 = v75;
    *&v96 = v40;
    *(&v96 + 1) = v42;
    LOBYTE(v97) = v47;
    *(&v97 + 1) = v71;
    *&v98 = KeyPath;
    *(&v98 + 1) = 10;
    LOBYTE(v99) = 0;
    *(&v99 + 1) = v34;
    LOBYTE(v100) = 1;
    *(&v100 + 1) = v49;
    *&v101 = v48;
    *(&v101 + 1) = v51;
    *&v102 = v50;
    sub_1D417CF94(&v72, &v119, &qword_1EC7CC808);
    sub_1D41769C4(&v96, &qword_1EC7CC808);
    *&v111[0] = 0;
    BYTE8(v111[0]) = 1;
    *(&v111[4] + 9) = *&v79[64];
    *(&v111[5] + 9) = *&v79[80];
    *(&v111[6] + 9) = *&v79[96];
    *(v111 + 9) = *v79;
    *(&v111[1] + 9) = *&v79[16];
    *(&v111[2] + 9) = *&v79[32];
    *(&v111[3] + 9) = *&v79[48];
    v116 = v85;
    v117 = v86;
    *(&v111[7] + 1) = *&v79[111];
    v118 = v87;
    v112 = v81;
    v113 = v82;
    v114 = v83;
    v115 = v84;
    nullsub_3(v111);
    v131 = v116;
    v132 = v117;
    v133 = v118;
    v127 = v112;
    v128 = v113;
    v129 = v114;
    v130 = v115;
    v123 = v111[4];
    v124 = v111[5];
    v125 = v111[6];
    v126 = v111[7];
    v119 = v111[0];
    v120 = v111[1];
    v121 = v111[2];
    v122 = v111[3];
    v31 = v66;
    v36 = v67;
    LOBYTE(v34) = BYTE4(v65);
  }

  else
  {
    sub_1D43FED20(&v119);
  }

  v93 = v131;
  v94 = v132;
  v89 = v127;
  v90 = v128;
  v91 = v129;
  v92 = v130;
  v85 = v123;
  v86 = v124;
  v87 = v125;
  v88 = v126;
  v81 = v119;
  v82 = v120;
  v83 = v121;
  v84 = v122;
  v108 = v131;
  v109 = v132;
  v104 = v127;
  v105 = v128;
  v106 = v129;
  v107 = v130;
  v100 = v123;
  v101 = v124;
  v102 = v125;
  v103 = v126;
  v96 = v119;
  v97 = v120;
  v95 = v133;
  v52 = v34 & 1;
  LOBYTE(v72) = v34 & 1;
  v110 = v133;
  v98 = v121;
  v99 = v122;
  v53 = v69;

  v54 = v68;
  sub_1D430E574(v31, v68, v52);

  sub_1D417CF94(&v96, v111, &qword_1EC7CC800);

  v55 = v106;
  v56 = v70;
  *(v70 + 216) = v107;
  v57 = v109;
  *(v56 + 232) = v108;
  *(v56 + 248) = v57;
  v58 = v102;
  *(v56 + 152) = v103;
  v59 = v105;
  *(v56 + 168) = v104;
  *(v56 + 184) = v59;
  *(v56 + 200) = v55;
  v60 = v98;
  *(v56 + 88) = v99;
  v61 = v101;
  *(v56 + 104) = v100;
  *(v56 + 120) = v61;
  *(v56 + 136) = v58;
  v62 = v97;
  *(v56 + 40) = v96;
  v63 = v72;
  *v56 = v53;
  *(v56 + 8) = v31;
  *(v56 + 16) = v54;
  *(v56 + 24) = v63;
  *(v56 + 32) = v36;
  *(v56 + 264) = v110;
  *(v56 + 56) = v62;
  *(v56 + 72) = v60;
  v116 = v93;
  v117 = v94;
  v118 = v95;
  v112 = v89;
  v113 = v90;
  v114 = v91;
  v115 = v92;
  v111[4] = v85;
  v111[5] = v86;
  v111[6] = v87;
  v111[7] = v88;
  v111[0] = v81;
  v111[1] = v82;
  v111[2] = v83;
  v111[3] = v84;
  sub_1D41769C4(v111, &qword_1EC7CC800);
  sub_1D430E564(v31, v54, v52);
}

double sub_1D43FED20(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1D43FED48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D44187E4();
  *a1 = result;
  return result;
}

uint64_t sub_1D43FED9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4418734();
  *a1 = result;
  return result;
}

uint64_t sub_1D43FEDF4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D4418884();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D43FEE88(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D43FEF0C()
{
  result = qword_1EC7CC830;
  if (!qword_1EC7CC830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CC838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC830);
  }

  return result;
}

uint64_t sub_1D43FEF94()
{
  sub_1D41766C0(0, &qword_1EDE323D0);
  sub_1D43D9AA4();
  v14[4] = sub_1D441A614();
  v0 = sub_1D4419874();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 formattedResult];

    v3 = sub_1D4419C54();
    v5 = v4;

    v6 = sub_1D4419C14();
    v7 = [objc_opt_self() systemImageNamed_];

    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;

    v0 = sub_1D441A614();
  }

  v9 = 0;
  v14[5] = v0;
  v13 = MEMORY[0x1E69E7CC0];
  while (v9 != 2)
  {
    v10 = v14[v9++ + 4];
    if (v10)
    {
      v11 = v10;
      MEMORY[0x1DA6D5820]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D4419E94();
      }

      sub_1D4419EB4();
    }
  }

  sub_1D41766C0(0, &qword_1EDE32430);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC840);
  swift_arrayDestroy();
  return sub_1D441A5A4();
}

void sub_1D43FF23C()
{
  v0 = [objc_opt_self() generalPasteboard];
  v1 = sub_1D4419C14();
  [v0 setString_];
}

uint64_t sub_1D43FF2D0()
{

  return swift_deallocClassInstance();
}

void sub_1D43FF364()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 76.0;
  if (v1 == 1)
  {
    v2 = 64.0;
  }

  qword_1EC7CC848 = *&v2;
}

double static ActivityStream.Layout.dockedHeaderHeight.getter()
{
  if (qword_1EC7C9298 != -1)
  {
    swift_once();
  }

  return *&qword_1EC7CC848;
}

uint64_t sub_1D43FF4F4(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v5 = sub_1D4418D94();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E18);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = sub_1D4418E54();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, *a2, v12);
  v16 = sub_1D4418DC4();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  sub_1D4418E04();
  sub_1D4319978(v11);
  (*(v6 + 104))(v8, *MEMORY[0x1E6980DE0], v5);
  v17 = sub_1D4418DA4();

  (*(v6 + 8))(v8, v5);
  result = (*(v13 + 8))(v15, v12);
  *a3 = v17;
  return result;
}

uint64_t sub_1D43FF790(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t CloudRecordSnapshot<>.init(record:from:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1D4416E64();
  v5 = sub_1D4419C54();
  v7 = v6;
  if (v5 == sub_1D4419C54() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1D441AD84();

    if ((v10 & 1) == 0)
    {
LABEL_6:
      v11 = sub_1D4416E94();
      (*(*(v11 - 8) + 8))(a1, v11);
LABEL_24:
      v22 = 1;
      goto LABEL_25;
    }
  }

  v12 = sub_1D4416E84();
  if (!v12)
  {
    v24 = sub_1D4416E94();
    (*(*(v24 - 8) + 8))(a1, v24);
LABEL_22:
    v31 = 0u;
    v32 = 0u;
    goto LABEL_23;
  }

  v13 = v12;
  sub_1D4419C54();
  sub_1D441A954();
  if (!*(v13 + 16) || (v14 = sub_1D42D00F4(&v30), (v15 & 1) == 0))
  {

    sub_1D42D7374(&v30);
    v31 = 0u;
    v32 = 0u;
    goto LABEL_20;
  }

  sub_1D42D5D14(*(v13 + 56) + 32 * v14, &v31);
  sub_1D42D7374(&v30);

  if (!*(&v32 + 1))
  {
LABEL_20:
    v23 = sub_1D4416E94();
    (*(*(v23 - 8) + 8))(a1, v23);
LABEL_23:
    sub_1D418D074(&v31);
    goto LABEL_24;
  }

  sub_1D41766C0(0, &qword_1EC7CC870);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v16 = v30;
  v17 = sub_1D4416E84();
  if (!v17)
  {
    v28 = sub_1D4416E94();
    (*(*(v28 - 8) + 8))(a1, v28);

    goto LABEL_22;
  }

  v18 = v17;
  sub_1D4419C54();
  sub_1D441A954();
  if (!*(v18 + 16) || (v19 = sub_1D42D00F4(&v30), (v20 & 1) == 0))
  {

    sub_1D42D7374(&v30);
    v31 = 0u;
    v32 = 0u;
    goto LABEL_27;
  }

  sub_1D42D5D14(*(v18 + 56) + 32 * v19, &v31);
  sub_1D42D7374(&v30);

  if (!*(&v32 + 1))
  {
LABEL_27:
    v27 = sub_1D4416E94();
    (*(*(v27 - 8) + 8))(a1, v27);

    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v29 = sub_1D4416E94();
    (*(*(v29 - 8) + 8))(a1, v29);

    goto LABEL_24;
  }

  sub_1D41766C0(0, &qword_1EC7CC878);
  sub_1D4417984();
  v21 = sub_1D4416E94();
  (*(*(v21 - 8) + 8))(a1, v21);
  v22 = 0;
LABEL_25:
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC868);
  return (*(*(v25 - 8) + 56))(a2, v22, 1, v25);
}

id CloudRecordSnapshot<>.isOwnedByCurrentUser.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC868);
  v0 = sub_1D4417974();
  v1 = [v0 ic_isOwnedByCurrentUser];

  return v1;
}

id ICUnifiedNoteContext.modernManagedObjectContext.getter()
{
  v1 = [v0 resolvedPrefersViewContext];
  v2 = [v0 modernNoteContext];
  v3 = v2;
  v4 = &selRef_managedObjectContext;
  if (!v1)
  {
    v4 = &selRef_workerManagedObjectContext;
  }

  v5 = [v2 *v4];

  return v5;
}

id ICUnifiedNoteContext.modernCrossProcessChangeCoordinator.getter()
{
  v1 = [v0 modernNoteContext];
  v2 = [v1 crossProcessChangeCoordinator];

  return v2;
}

id sub_1D43FFE90(void *a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v6 = a1;
  v7 = [v6 *a3];
  v8 = [v7 *a4];

  return v8;
}

id ICUnifiedNoteContext.htmlManagedObjectContext.getter()
{
  v1 = [v0 htmlNoteContext];
  v2 = [v1 managedObjectContext];

  return v2;
}

NSManagedObjectContext_optional __swiftcall ICUnifiedNoteContext.managedObjectContext(for:)(NSManagedObjectID a1)
{
  v3 = sub_1D44181B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([(objc_class *)a1.super.isa ic_isModernType])
  {
    v7 = [v1 modernManagedObjectContext];
  }

  else if ([(objc_class *)a1.super.isa ic_isLegacyType])
  {
    v7 = [v1 htmlManagedObjectContext];
  }

  else
  {
    sub_1D4418174();
    v9 = sub_1D441A174();
    v10 = sub_1D44181A4();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315650;
      v13 = sub_1D441A9E4();
      v15 = sub_1D42E9410(v13, v14, &v17);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2048;
      *(v11 + 14) = 36;
      *(v11 + 22) = 2080;
      *(v11 + 24) = sub_1D42E9410(0x1000000000000042, 0x80000001D4453FE0, &v17);
      _os_log_impl(&dword_1D4171000, v10, v9, "Failed assertion at %s:%lu: %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA6D8690](v12, -1, -1);
      MEMORY[0x1DA6D8690](v11, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    v7 = 0;
  }

  result.value.super.isa = v7;
  result.is_nil = v8;
  return result;
}

NSManagedObjectContext __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ICUnifiedNoteContext.managedObjectContext(for:)(NSManagedObject a1)
{
  result.super.isa = [(objc_class *)a1.super.isa managedObjectContext];
  if (!result.super.isa)
  {
    v3 = sub_1D4419C14();
    v4 = [(objc_class *)a1.super.isa objectID];
    ICNotesErrorForNoManagedObjectContext();

    swift_willThrow();
    return 0;
  }

  return result;
}

uint64_t sub_1D44003DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC880);
  swift_allocObject();
  result = sub_1D441AFC4();
  qword_1EDE326E8 = result;
  return result;
}

uint64_t static ICUnifiedNoteContext.$prefersViewContext.getter()
{
  if (qword_1EDE326F8 != -1)
  {
    swift_once();
  }
}

uint64_t static ICUnifiedNoteContext.prefersViewContext.getter()
{
  if (qword_1EDE326F8 != -1)
  {
    swift_once();
  }

  sub_1D441AFD4();
  return v1;
}

uint64_t ICUnifiedNoteContext.resolvedPrefersViewContext.getter()
{
  v1 = [v0 options] & 3;
  if (v1 == 1)
  {
    return 1;
  }

  if (v1 == 2)
  {
    return 0;
  }

  if (qword_1EDE326F8 != -1)
  {
    swift_once();
  }

  sub_1D441AFD4();
  return v3;
}

id ICUnifiedNoteContext.defaultAccountObjectID.getter()
{
  v1 = objc_opt_self();
  v2 = [v0 htmlNoteContext];
  v3 = [v1 defaultAccountWithHTMLNoteContext_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 objectID];

  return v4;
}

id ICUnifiedNoteContext.legacyAccountForLocalAccount.getter()
{
  v1 = objc_opt_self();
  v2 = [v0 htmlNoteContext];
  v3 = [v1 legacyAccountForLocalAccountWithContext_];

  return v3;
}

id ICUnifiedNoteContext.legacyAccount(forEmailAddress:)()
{
  v1 = objc_opt_self();
  v2 = sub_1D4419C14();
  v3 = [v0 htmlNoteContext];
  v4 = [v1 accountForEmailAddress:v2 context:v3];

  return v4;
}

id sub_1D4400A24(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = [v3 htmlNoteContext];
  v6 = sub_1D4419C14();
  v7 = [v5 *a3];

  return v7;
}

id sub_1D4400AB4(void *a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = a3;
  v7 = a1;
  v8 = [v7 htmlNoteContext];
  v9 = [v8 *a4];

  return v9;
}

uint64_t ICUnifiedNoteContext.managedObjectContext(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D4417C94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 modernManagedObjectContext];
  v9 = [v2 htmlManagedObjectContext];
  if (!v9)
  {
    v12 = sub_1D4419C14();
    ICNotesErrorForNoManagedObjectContext();

    swift_willThrow();
    return v2;
  }

  v2 = v9;
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 88))(v7, v4);
  if (v10 == *MEMORY[0x1E69B72F8])
  {
    v11 = v2;
    v2 = v8;
LABEL_6:

    return v2;
  }

  v11 = v8;
  if (v10 == *MEMORY[0x1E69B72F0])
  {
    goto LABEL_6;
  }

  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t ICUnifiedNoteContext.perform<A, B>(with:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D4400DA8, 0, 0);
}

uint64_t sub_1D4400DA8()
{
  *(v0 + 16) = 0;
  v1 = [*(v0 + 72) managedObjectContextForObject:*(v0 + 32) error:v0 + 16];
  *(v0 + 80) = v1;
  v2 = *(v0 + 16);
  if (v1)
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    v6 = swift_allocObject();
    *(v0 + 88) = v6;
    *(v6 + 16) = *(v0 + 56);
    *(v6 + 32) = v4;
    *(v6 + 40) = v3;
    *(v6 + 48) = v5;
    v7 = v2;

    v8 = v5;
    v9 = swift_task_alloc();
    *(v0 + 96) = v9;
    *v9 = v0;
    v9[1] = sub_1D4400F94;
    v10 = *(v0 + 64);
    v11 = *(v0 + 24);

    return MEMORY[0x1EEE233F8](v11, sub_1D44011BC, v6, v10);
  }

  else
  {
    v12 = v2;
    sub_1D4417104();

    swift_willThrow();
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1D4400F94()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D4401128, 0, 0);
  }

  else
  {
    v3 = v2[10];

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1D4401128()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D440122C(SEL *a1)
{
  v1 = [objc_opt_self() *a1];

  return _s7SwiftUI5ColorV05NotesB0EyACSo7UIColorCcfC_0();
}

uint64_t sub_1D440128C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v57 = a1;
  v58 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC898);
  v5 = v4 - 8;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC8A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC8A8);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v56 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC8B0);
  v19 = v18 - 8;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v56 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v56 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC8B8);
  (*(*(v28 - 8) + 16))(v13, v57, v28);
  sub_1D4419364();
  sub_1D4418694();
  sub_1D42D742C(v13, v17, &qword_1EC7CC8A0);
  v29 = &v17[*(v15 + 44)];
  v30 = v64;
  *(v29 + 4) = v63;
  *(v29 + 5) = v30;
  *(v29 + 6) = v65;
  v31 = v60;
  *v29 = v59;
  *(v29 + 1) = v31;
  v32 = v62;
  *(v29 + 2) = v61;
  *(v29 + 3) = v32;
  sub_1D42D742C(v17, v25, &qword_1EC7CC8A8);
  *&v25[*(v19 + 44)] = 0x3FF0000000000000;
  sub_1D42D742C(v25, v27, &qword_1EC7CC8B0);
  v33 = *(sub_1D4418684() + 20);
  v34 = *MEMORY[0x1E697F468];
  v35 = sub_1D44189C4();
  (*(*(v35 - 8) + 104))(&v10[v33], v34, v35);
  __asm { FMOV            V0.2D, #2.0 }

  *v10 = _Q0;
  LOBYTE(v34) = sub_1D4418D64();
  sub_1D4418494();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC8C0) + 36)];
  *v49 = v34;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC8C8) + 36)] = 0x3FB47AE147AE147BLL;
  sub_1D44193B4();
  v50 = &v10[*(v5 + 44)];
  *v50 = a3;
  *(v50 + 1) = 0x3FF0000000000000;
  *(v50 + 2) = v51;
  *(v50 + 3) = v52;
  sub_1D417CF94(v27, v22, &qword_1EC7CC8B0);
  sub_1D417CF94(v10, v8, &qword_1EC7CC898);
  v53 = v58;
  sub_1D417CF94(v22, v58, &qword_1EC7CC8B0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC8D0);
  sub_1D417CF94(v8, v53 + *(v54 + 48), &qword_1EC7CC898);
  sub_1D41769C4(v10, &qword_1EC7CC898);
  sub_1D41769C4(v27, &qword_1EC7CC8B0);
  sub_1D41769C4(v8, &qword_1EC7CC898);
  return sub_1D41769C4(v22, &qword_1EC7CC8B0);
}

uint64_t sub_1D4401778@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  *a2 = sub_1D4419364();
  a2[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC890);
  return sub_1D440128C(a1, a2 + *(v7 + 44), v5);
}

uint64_t Text.placeholder(_:scale:)(char a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a1)
  {
    sub_1D430E574(a2, a3, a4 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC888);
    sub_1D44018A0();
  }

  else
  {
    sub_1D430E574(a2, a3, a4 & 1);
  }

  return sub_1D44192E4();
}

unint64_t sub_1D44018A0()
{
  result = qword_1EDE32C28;
  if (!qword_1EDE32C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CC888);
    sub_1D440192C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32C28);
  }

  return result;
}

unint64_t sub_1D440192C()
{
  result = qword_1EDE32DB8;
  if (!qword_1EDE32DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32DB8);
  }

  return result;
}

uint64_t PlaceholderText.body.getter@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC888);
  sub_1D44018A0();
  result = sub_1D44192E4();
  *a1 = result;
  return result;
}

uint64_t sub_1D4401A50@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC888);
  sub_1D44018A0();
  result = sub_1D44192E4();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PlaceholderText(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PlaceholderText(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

unint64_t sub_1D4401B50()
{
  result = qword_1EDE32AF0;
  if (!qword_1EDE32AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CC8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32AF0);
  }

  return result;
}

id sub_1D4401BB4()
{
  result = [objc_opt_self() ic_isVision];
  v1 = 44.0;
  if (!result)
  {
    v1 = 24.0;
  }

  qword_1EC7CC8E0 = *&v1;
  return result;
}

double static ICCollaboratorAvatarsView.avatarDimension.getter()
{
  if (qword_1EC7C92C0 != -1)
  {
    swift_once();
  }

  return *&qword_1EC7CC8E0;
}

void AvatarStackView.updateUIView(_:context:)(void *a1)
{
  sub_1D436A11C();
  v2 = sub_1D4419E24();
  [a1 setParticipants_];
}

double AvatarStackView.sizeThatFits(_:uiView:context:)(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v6 = 0.0;
  if (a2)
  {
    *&a1 = 0.0;
  }

  if ((a4 & 1) == 0)
  {
    v6 = *&a3;
  }

  [a5 systemLayoutSizeFittingSize_];
  return result;
}

void sub_1D4401D28(void *a1)
{
  sub_1D436A11C();
  v2 = sub_1D4419E24();
  [a1 setParticipants_];
}

double sub_1D4401D94(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v6 = 0.0;
  if (a2)
  {
    *&a1 = 0.0;
  }

  if ((a4 & 1) == 0)
  {
    v6 = *&a3;
  }

  [a5 systemLayoutSizeFittingSize_];
  return result;
}

uint64_t sub_1D4401DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D44022D8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1D4401E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D44022D8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1D4401EA8()
{
  sub_1D44022D8();
  sub_1D4418B44();
  __break(1u);
}

double sub_1D4401ED0()
{
  if (qword_1EC7C92C0 != -1)
  {
    swift_once();
  }

  result = *&qword_1EC7CC8E0;
  qword_1EC7CC8E8 = qword_1EC7CC8E0;
  return result;
}

double static AvatarStackView.avatarDimension.getter()
{
  if (qword_1EC7C92C8 != -1)
  {
    swift_once();
  }

  return *&qword_1EC7CC8E8;
}

uint64_t _sSo25ICCollaboratorAvatarsViewC7NotesUIE015makeAvatarStackC03forABSaySo18CKShareParticipantCG_tFZ_0(uint64_t a1)
{
  v3 = [objc_allocWithZone(ICCollaboratorAvatarsView) init];
  if (qword_1EC7C92C0 != -1)
  {
    swift_once();
  }

  [v3 setDimension_];
  v4 = [objc_opt_self() deviceIsVision];
  v5 = -12.0;
  if (v4)
  {
    v5 = -28.0;
  }

  [v3 setSpacing_];
  [v3 setReverseZIndexing_];
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    if (a1 < 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = sub_1D441A8C4();
    if (sub_1D441A8C4() < 0)
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v11 >= 3)
    {
      v18 = 3;
    }

    else
    {
      v18 = v11;
    }

    if ((v11 & 0x8000000000000000) == 0)
    {
      v8 = v18;
    }

    else
    {
      v8 = 3;
    }

    result = sub_1D441A8C4();
    if (result >= v8)
    {
LABEL_10:
      if ((a1 & 0xC000000000000001) != 0 && v8)
      {
        sub_1D436A11C();

        sub_1D441A9F4();
        if (v8 != 1)
        {
          sub_1D441A9F4();
          if (v8 != 2)
          {
            sub_1D441A9F4();
          }
        }

        if (!v6)
        {
LABEL_16:
          v9 = 0;
          a1 &= 0xFFFFFFFFFFFFFF8uLL;
          v10 = a1 + 32;
          v11 = (2 * v8) | 1;
          if (v11)
          {
LABEL_21:
            v1 = v10;
            sub_1D441AD94();
            swift_unknownObjectRetain_n();
            v14 = swift_dynamicCastClass();
            if (!v14)
            {
              swift_unknownObjectRelease();
              v14 = MEMORY[0x1E69E7CC0];
            }

            v15 = *(v14 + 16);

            if (!__OFSUB__(v11 >> 1, v9))
            {
              if (v15 == (v11 >> 1) - v9)
              {
                v16 = swift_dynamicCastClass();
                swift_unknownObjectRelease();
                if (v16)
                {
LABEL_27:
                  sub_1D436A11C();
                  v17 = sub_1D4419E24();

                  [v3 setParticipants_];

                  return v3;
                }

LABEL_26:
                swift_unknownObjectRelease();
                goto LABEL_27;
              }

              goto LABEL_34;
            }

LABEL_33:
            __break(1u);
LABEL_34:
            swift_unknownObjectRelease();
            v10 = v1;
          }

LABEL_20:
          sub_1D43FD270(a1, v10, v9, v11);
          goto LABEL_26;
        }
      }

      else
      {

        if (!v6)
        {
          goto LABEL_16;
        }
      }

      a1 = sub_1D441ABE4();
      v9 = v12;
      v11 = v13;
      if (v13)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 3)
    {
      v8 = 3;
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result >= v8)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D4402274()
{
  result = qword_1EC7CC8F0;
  if (!qword_1EC7CC8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC8F0);
  }

  return result;
}

unint64_t sub_1D44022D8()
{
  result = qword_1EC7CC8F8;
  if (!qword_1EC7CC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC8F8);
  }

  return result;
}

void sub_1D4402354(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_1D44023A0()
{
  v0 = sub_1D44181B4();
  __swift_allocate_value_buffer(v0, qword_1EC7CC900);
  __swift_project_value_buffer(v0, qword_1EC7CC900);
  return sub_1D4418104();
}

id ThumbnailGeneratorSystemPaper.__allocating_init(managedObjectContext:cache:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___ICThumbnailGeneratorSystemPaper_cache] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_initWithManagedObjectContext_, a1);

  return v6;
}

id ThumbnailGeneratorSystemPaper.init(managedObjectContext:cache:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___ICThumbnailGeneratorSystemPaper_cache] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithManagedObjectContext_, a1);

  return v6;
}

void static ThumbnailGeneratorSystemPaper.chromeBackdropImageUrl(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [objc_allocWithZone(ICThumbnailConfiguration) initForSystemPaperChromeLayerWithThumbnailType:5 traitCollection:a1];
  v4 = [v3 uniqueKey];

  sub_1D43A672C(a2);
}

double static ThumbnailGeneratorSystemPaper.chromeSize.getter()
{
  if (qword_1EDE32D68 != -1)
  {
    swift_once();
  }

  return *&xmmword_1EDE32D70;
}

void sub_1D44027E0()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    v2 = xmmword_1D443DB50;
    v3 = xmmword_1D443DB60;
    v4 = 0uLL;
    v5 = 17.0;
  }

  else
  {
    v3 = vdupq_n_s64(0x405C000000000000uLL);
    v2 = *MEMORY[0x1E69DDCE0];
    v4 = *(MEMORY[0x1E69DDCE0] + 16);
    v5 = 35.0;
  }

  xmmword_1EDE32D70 = xmmword_1D443DB70;
  *&qword_1EDE32D80 = v3;
  xmmword_1EDE32D90 = v2;
  *&qword_1EDE32DA0 = v4;
  qword_1EDE32DB0 = *&v5;
}

void ThumbnailGeneratorSystemPaper.generateThumbnail(with:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v4 managedObjectContext];
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v13[4] = sub_1D44029B0;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D417BEE4;
  v13[3] = &block_descriptor_28;
  v10 = _Block_copy(v13);
  v11 = v4;
  v12 = a1;

  [v8 performBlock_];
  _Block_release(v10);
}

void __swiftcall ThumbnailGeneratorSystemPaper.thumbnail(with:)(ICThumbnailDescription *__return_ptr retstr, ICThumbnailConfiguration *with)
{
  v3 = [(ICThumbnailConfiguration *)with thumbnailType];
  if (v3 > 7)
  {
    if ((v3 - 10) < 2)
    {
      v4 = [objc_allocWithZone(ICThumbnailDescription) initWithConfiguration_];
      v5 = sub_1D440368C(with);
      goto LABEL_8;
    }
  }

  else
  {
    if (v3 > 6)
    {
      v4 = [objc_allocWithZone(ICThumbnailDescription) initWithConfiguration_];
      v5 = sub_1D4402D0C(with);
      goto LABEL_8;
    }

    if (v3 == 4)
    {
      v4 = [objc_allocWithZone(ICThumbnailDescription) initWithConfiguration_];
      v5 = sub_1D44031B4(with);
LABEL_8:
      v6 = v5;
      [v4 setImage_];

      return;
    }
  }

  sub_1D441ABC4();
  __break(1u);
}

uint64_t sub_1D4402D0C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [a1 associatedObjectIdentifier];
  if (v4 && (v5 = v4, sub_1D4419C54(), v5, v6 = objc_opt_self(), , v7 = sub_1D4419C14(), v8 = [v1 managedObjectContext], v9 = objc_msgSend(v6, sel_visibleNoteWithIdentifier_context_, v7, v8), swift_bridgeObjectRelease_n(), v7, v8, v9))
  {
    v10 = v9;
    v11 = sub_1D4403850(v10, a1);
  }

  else
  {
    v11 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D44397A0;
  *(v12 + 32) = [a1 traitCollection];
  v13 = objc_opt_self();
  *(v12 + 40) = [v13 traitCollectionWithUserInterfaceLevel_];
  sub_1D41766C0(0, &qword_1EDE32748);
  v14 = sub_1D4419E24();

  v15 = [v13 traitCollectionWithTraitsFromCollections_];

  v16 = [a1 backgroundColor];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 resolvedColorWithTraitCollection_];
  }

  else
  {
    v18 = 0;
  }

  if (qword_1EDE32D68 != -1)
  {
    swift_once();
  }

  v20 = *&qword_1EDE32D80;
  v19 = unk_1EDE32D88;
  if (*&qword_1EDE32D80 / *&xmmword_1EDE32D70 >= unk_1EDE32D88 / *(&xmmword_1EDE32D70 + 1))
  {
    v21 = unk_1EDE32D88 / *(&xmmword_1EDE32D70 + 1);
  }

  else
  {
    v21 = *&qword_1EDE32D80 / *&xmmword_1EDE32D70;
  }

  v22 = *(&xmmword_1EDE32D90 + 1) * v21;
  v23 = *&xmmword_1EDE32D90 * v21;
  if (v11)
  {
    [v11 size];
    v25 = v21 * v24;
    [v11 size];
    v27 = v21 * v26;
  }

  else
  {
    v25 = 0.0;
    v27 = 0.0;
  }

  v28 = [a1 traitCollection];
  v29 = [objc_opt_self() formatForTraitCollection_];

  v30 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize:v29 format:{v20, v19}];
  v31 = swift_allocObject();
  *(v31 + 16) = v18;
  *(v31 + 24) = v11;
  *(v31 + 32) = v22;
  *(v31 + 40) = v23;
  *(v31 + 48) = v25;
  *(v31 + 56) = v27;
  *(v31 + 64) = ObjectType;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1D4403F44;
  *(v32 + 24) = v31;
  v38[4] = sub_1D43A2024;
  v38[5] = v32;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 1107296256;
  v38[2] = sub_1D4402354;
  v38[3] = &block_descriptor_20;
  v33 = _Block_copy(v38);
  v34 = v18;
  v35 = v11;

  v36 = [v30 imageWithActions_];

  _Block_release(v33);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if ((v29 & 1) == 0)
  {
    return v36;
  }

  __break(1u);
  return result;
}

id sub_1D44031B4(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = &selRef_stringValue;
  v5 = [a1 traitCollection];
  isEscapingClosureAtFileLocation = [objc_allocWithZone(ICThumbnailConfiguration) initForSystemPaperChromeLayerWithThumbnailType:5 traitCollection:v5];

  v7 = [*(v2 + OBJC_IVAR___ICThumbnailGeneratorSystemPaper_cache) objectForKeyedSubscript_];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 image];

    if (v9)
    {
      goto LABEL_7;
    }
  }

  if (qword_1EC7C92D0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v10 = sub_1D44181B4();
    __swift_project_value_buffer(v10, qword_1EC7CC900);
    v11 = v3;
    v12 = sub_1D44181A4();
    v13 = sub_1D441A174();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = [v11 v4[250]];
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&dword_1D4171000, v12, v13, "System Paper chrome backdrop thumbnail is unavailable {traitCollection: %@}", v14, 0xCu);
      sub_1D4344AFC(v15);
      MEMORY[0x1DA6D8690](v15, -1, -1);
      MEMORY[0x1DA6D8690](v14, -1, -1);
    }

    v9 = 0;
LABEL_7:
    v17 = [v3 associatedObjectIdentifier];
    if (v17)
    {
      v18 = v17;
      sub_1D4419C54();

      v19 = objc_opt_self();

      v20 = sub_1D4419C14();
      v21 = [v2 managedObjectContext];
      v22 = [v19 visibleNoteWithIdentifier:v20 context:v21];
      swift_bridgeObjectRelease_n();

      if (v22)
      {
        v23 = v22;
        v22 = sub_1D4403850(v23, v3);
      }
    }

    else
    {
      v22 = 0;
    }

    if (qword_1EDE32D68 != -1)
    {
      swift_once();
    }

    v24 = xmmword_1EDE32D70;
    v25 = xmmword_1EDE32D90;
    v26 = [v3 v4[250]];
    v3 = [objc_opt_self() formatForTraitCollection_];

    v27 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize:v3 format:v24];
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 16) = v9;
    *(v2 + 40) = v24;
    *(v2 + 56) = v22;
    *(v2 + 64) = *(&v25 + 1);
    *(v2 + 72) = v25;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1D4403F58;
    *(v28 + 24) = v2;
    v34[4] = sub_1D43A44B0;
    v35 = v28;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 1107296256;
    v34[2] = sub_1D4402354;
    v34[3] = &block_descriptor_30_1;
    v29 = _Block_copy(v34);
    v4 = v35;
    v30 = v22;

    v31 = v9;

    v32 = [v27 imageWithActions_];

    _Block_release(v29);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  return v32;
}

id sub_1D440368C(void *a1)
{
  result = [a1 associatedObjectIdentifier];
  if (result)
  {
    v4 = result;
    sub_1D4419C54();

    v5 = objc_opt_self();

    v6 = sub_1D4419C14();
    v7 = [v1 managedObjectContext];
    v8 = [v5 visibleNoteWithIdentifier:v6 context:v7];
    swift_bridgeObjectRelease_n();

    if (v8)
    {
      v9 = v8;
      v10 = [v1 managedObjectContext];
      v11 = [objc_allocWithZone(ICThumbnailGeneratorNote) initWithManagedObjectContext_];

      v12 = [v11 generateThumbnailImageWithNote:v9 configuration:a1];
      return v12;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_1D4403850(void *a1, id a2)
{
  v3 = v2;
  v50 = [a2 thumbnailType];
  v6 = sub_1D41766C0(0, &qword_1EDE32440);
  v51[3] = v6;
  v51[0] = a1;
  v7 = a1;
  v8 = [v7 identifier];
  if (v8)
  {
    v9 = v8;
    v47 = sub_1D4419C54();
    v49 = v10;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  v11 = [v7 title];
  if (v11)
  {
    v12 = v11;
    v46 = sub_1D4419C54();
    v14 = v13;
  }

  else
  {
    v46 = 0;
    v14 = 0;
  }

  v15 = [v7 account];
  if (v15 && (v16 = v15, v17 = [v15 identifier], v16, v17))
  {
    v45 = sub_1D4419C54();
    v19 = v18;
  }

  else
  {
    v45 = 0;
    v19 = 0;
  }

  if (qword_1EDE32D68 != -1)
  {
    swift_once();
  }

  v20 = xmmword_1EDE32D70;
  v21 = xmmword_1EDE32D90;
  v22 = *&qword_1EDE32DA0;
  v23 = unk_1EDE32DA8;
  [a2 scale];
  v25 = v24;
  v26 = [a2 appearanceInfo];
  v48 = [a2 hasBorder];
  if (v6)
  {
    v27 = __swift_project_boxed_opaque_existential_1(v51, v6);
    v28 = *(v6 - 8);
    MEMORY[0x1EEE9AC00](v27);
    v30 = v3;
    v31 = &v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v31);
    v32 = sub_1D441AD64();
    v33 = v31;
    v3 = v30;
    (*(v28 + 8))(v33, v6);
    __swift_destroy_boxed_opaque_existential_0(v51);
    if (v49)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v32 = 0;
    if (v49)
    {
LABEL_15:
      v34 = sub_1D4419C14();

      v35 = v7;
      if (v14)
      {
        goto LABEL_16;
      }

LABEL_20:
      v36 = 0;
      if (v19)
      {
        goto LABEL_17;
      }

LABEL_21:
      v37 = 0;
      goto LABEL_22;
    }
  }

  v34 = 0;
  v35 = v7;
  if (!v14)
  {
    goto LABEL_20;
  }

LABEL_16:
  v36 = sub_1D4419C14();

  if (!v19)
  {
    goto LABEL_21;
  }

LABEL_17:
  v37 = sub_1D4419C14();

LABEL_22:
  v38 = objc_allocWithZone(ICThumbnailConfiguration);
  LOBYTE(v44) = v48;
  v39 = [v38 initWithThumbnailType:v50 associatedObject:v32 associatedObjectIdentifier:v34 associatedObjectTitle:v36 accountIdentifier:v37 cacheLevel:0 preferredSize:*&v20 - *(&v21 + 1) - v23 scale:*(&v20 + 1) - *&v21 - v22 appearanceInfo:v25 backgroundColor:v26 hasBorder:{0, v44}];
  swift_unknownObjectRelease();

  v40 = [v3 managedObjectContext];
  v41 = [objc_allocWithZone(ICThumbnailGeneratorNote) initWithManagedObjectContext_];

  [v41 setMaximumWidth_];
  [v41 setMargin_];
  v42 = [v41 generateThumbnailImageWithNote:v35 configuration:v39];

  return v42;
}

id sub_1D4403CD0(void *a1, id a2, void *a3, double a4, double a5, double a6, double a7)
{
  [a2 set];
  if (qword_1EDE32D68 != -1)
  {
    swift_once();
  }

  [a1 fillRect_];

  return [a3 drawInRect_];
}

id ThumbnailGeneratorSystemPaper.__allocating_init(managedObjectContext:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithManagedObjectContext_];

  return v3;
}

id ThumbnailGeneratorSystemPaper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D4403EE4()
{
  v1 = *(v0 + 32);
  ThumbnailGeneratorSystemPaper.thumbnail(with:)(*(v0 + 16), *(v0 + 24));
  v3 = v2;
  v1();
}

id sub_1D4403F58()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  [*(v0 + 16) drawInRect_];

  return [v1 drawAtPoint_];
}

void *ICCalculateScrubberController.note.getter()
{
  v1 = OBJC_IVAR___ICCalculateScrubberController_note;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ICCalculateScrubberController.note.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___ICCalculateScrubberController_note;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ICCalculateScrubberController.isScrubbing.getter()
{
  if (!*(v0 + OBJC_IVAR___ICCalculateScrubberController_scrubber))
  {
    return 0;
  }

  v1 = sub_1D4417714();

  return v1 & 1;
}

id sub_1D44041A0()
{
  v1 = OBJC_IVAR___ICCalculateScrubberController____lazy_storage___hoverController;
  v2 = *(v0 + OBJC_IVAR___ICCalculateScrubberController____lazy_storage___hoverController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICCalculateScrubberController____lazy_storage___hoverController);
  }

  else
  {
    v4 = _s15HoverControllerCMa();
    v5 = objc_allocWithZone(v4);
    swift_unknownObjectWeakInit();
    *&v5[OBJC_IVAR____TtCE7NotesUICSo29ICCalculateScrubberController15HoverController_numberLiteral] = 0;
    v6 = &v5[OBJC_IVAR____TtCE7NotesUICSo29ICCalculateScrubberController15HoverController_hoveredCharacterIndex];
    *v6 = 0;
    v6[8] = 1;
    *&v5[OBJC_IVAR____TtCE7NotesUICSo29ICCalculateScrubberController15HoverController____lazy_storage___showScrubberDelayer] = 0;
    swift_unknownObjectWeakAssign();
    v11.receiver = v5;
    v11.super_class = v4;
    v7 = objc_msgSendSuper2(&v11, sel_init);
    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t ICCalculateScrubberController.isShowing.getter()
{
  result = *(v0 + OBJC_IVAR___ICCalculateScrubberController_viewController);
  if (result)
  {
    result = [result view];
    if (result)
    {
      v2 = result;
      v3 = [result window];

      if (v3)
      {

        return 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1D44042FC(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = OBJC_IVAR___ICCalculateScrubberController_numberLiteral;
    v4 = *&v1[OBJC_IVAR___ICCalculateScrubberController_numberLiteral];
    if (v4)
    {
      type metadata accessor for ICNumberLiteral();
      v15 = a1;
      v5 = v4;
      v6 = sub_1D441A5E4();

      if (v6 & 1) != 0 && ([v2 isShowing])
      {

        v7 = v15;
LABEL_15:

        return;
      }
    }

    else
    {
      v8 = a1;
    }

    [v2 hideScrubber];
    v9 = *&v2[v3];
    *&v2[v3] = a1;

    [v2 deselectText];
    v10 = [a1 string];
    sub_1D4419C54();

    sub_1D4417754();
    swift_allocObject();
    v11 = sub_1D4417734();
    *&v2[OBJC_IVAR___ICCalculateScrubberController_scrubber] = v11;

    if (!v11)
    {
      v7 = a1;
      goto LABEL_15;
    }

    *(swift_allocObject() + 16) = v2;
    v12 = v2;
    sub_1D4417724();
    *(swift_allocObject() + 16) = v12;
    v13 = v12;
    sub_1D4417744();
    *(swift_allocObject() + 16) = v13;
    v14 = v13;
    sub_1D4417704();
    [v14 startBlockingMerge];
    sub_1D44045C4(v11);
  }

  else
  {

    [v1 hideScrubber];
  }
}

void sub_1D44045C4(uint64_t a1)
{
  objc_allocWithZone(type metadata accessor for CalculateScrubberViewController());

  v3 = v1;
  v4 = sub_1D43C4558(a1, v3);

  v5 = OBJC_IVAR___ICCalculateScrubberController_viewController;
  v6 = *&v3[OBJC_IVAR___ICCalculateScrubberController_viewController];
  *&v3[OBJC_IVAR___ICCalculateScrubberController_viewController] = v4;

  v7 = [v3 textView];
  v8 = [v7 nextResponder];

  if (v8)
  {
    while (1)
    {
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        break;
      }

      v10 = v8;
      v8 = [v10 nextResponder];

      if (!v8)
      {
        return;
      }
    }

    if (*&v3[OBJC_IVAR___ICCalculateScrubberController_numberLiteral] && (v11 = v9, v12 = [*&v3[OBJC_IVAR___ICCalculateScrubberController_numberLiteral] range], v14 = v13, v15 = objc_msgSend(v3, sel_textView), objc_msgSend(v15, sel_ic_rectForRange_, v12, v14), v17 = v16, v19 = v18, v21 = v20, v23 = v22, v15, v24 = objc_msgSend(v3, sel_textView), objc_msgSend(v24, sel_textContainerInset), v26 = v25, v24, v27 = objc_msgSend(v3, sel_textView), objc_msgSend(v27, sel_textContainerInset), v29 = v28, v27, v53.origin.x = v17, v53.origin.y = v19, v53.size.width = v21, v53.size.height = v23, v54 = CGRectOffset(v53, v26, v29), (v30 = *&v3[v5]) != 0))
    {
      x = v54.origin.x;
      y = v54.origin.y;
      width = v54.size.width;
      height = v54.size.height;
      v51 = v30;
      v35 = [v51 popoverPresentationController];
      if (v35)
      {
        v36 = v35;
        v37 = [v3 textView];
        [v36 setSourceView_];
      }

      v38 = [v51 popoverPresentationController];
      if (v38)
      {
        v39 = v38;
        [v38 setPermittedArrowDirections_];
      }

      v40 = [v51 popoverPresentationController];
      [v40 setSourceRect_];

      v41 = [v51 popoverPresentationController];
      if (v41)
      {
        v42 = v41;
        [v41 setCanOverlapSourceViewRect_];
      }

      v43 = [v51 popoverPresentationController];
      if (v43)
      {
        v44 = v43;
        [v43 _setShouldDimPresentingViewTint_];
      }

      v45 = [v51 popoverPresentationController];
      if (v45)
      {
        v46 = v45;
        [v45 _setCornerRadius_];
      }

      v47 = [v51 popoverPresentationController];

      if (v47)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_1D4438490;
        *(v48 + 32) = [v3 textView];
        sub_1D41766C0(0, &qword_1EDE32428);
        v49 = sub_1D4419E24();

        [v47 setPassthroughViews_];
      }

      [v11 presentViewController:v51 animated:1 completion:0];

      v50 = v51;
    }

    else
    {
      v50 = v8;
    }
  }
}

Swift::Void __swiftcall ICCalculateScrubberController.hideScrubber()()
{
  if ([v0 isShowing])
  {
    v1 = *&v0[OBJC_IVAR___ICCalculateScrubberController_viewController];
    if (v1)
    {
      [v1 dismissViewControllerAnimated:1 completion:0];
    }

    [v0 endBlockingMerge];

    [v0 endPausingUndoActions];
  }
}

Swift::Void __swiftcall ICCalculateScrubberController.updateText(string:)(Swift::String string)
{
  v2 = OBJC_IVAR___ICCalculateScrubberController_numberLiteral;
  v3 = *&v1[OBJC_IVAR___ICCalculateScrubberController_numberLiteral];
  if (v3)
  {
    v4 = [v3 range];
    v6 = v5;
    v7 = [v1 note];
    v8 = [v7 textStorage];

    [v8 beginEditing];
    v9 = [v1 note];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 textStorage];

      if (v11)
      {
        v12 = sub_1D4419C14();
        [v11 replaceCharactersInRange:v4 withString:{v6, v12}];
      }
    }

    v13 = [v1 note];
    v14 = [v13 textStorage];

    [v14 endEditing];
    v15 = sub_1D4419CE4();
    v16 = *&v1[v2];
    if (v16)
    {
      [v16 setRange_];
    }

    v17 = [v1 note];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 calculateDocumentController];

      if (v19)
      {
        [v19 scheduleUpdateAffectingChangeCounts:1 isHighPriority:1];
      }
    }
  }
}

Swift::Void __swiftcall ICCalculateScrubberController.didEndScrub()()
{
  [v0 endBlockingMerge];
  v1 = [v0 note];
  [v1 updateModificationDateAndChangeCountAndSaveImmediately];

  [v0 startBlockingMerge];
}

Swift::Void __swiftcall ICCalculateScrubberController.hideIfNotScrubbing()()
{
  v1 = *&v0[OBJC_IVAR___ICCalculateScrubberController_viewController];
  if (v1)
  {
    v3 = v1;

    v2 = sub_1D4417714();

    if ((v2 & 1) == 0)
    {
      [v0 hideScrubber];
    }
  }
}

void sub_1D440509C()
{
  v1 = [v0 textView];
  [v1 selectedRange];
  v3 = v2;

  if (v3 >= 1)
  {
    v6 = [v0 textView];
    v4 = [v0 textView];
    v5 = [v4 selectedRange];

    [v6 setSelectedRange_];
  }
}

void sub_1D44051D4()
{
  v1 = [v0 note];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 documentMergeController];

    if (v3)
    {
      v4 = OBJC_IVAR___ICCalculateScrubberController_isBlockingMerge;
      if (*(v0 + OBJC_IVAR___ICCalculateScrubberController_isBlockingMerge))
      {

        swift_unknownObjectRelease();
      }

      else
      {
        v5 = [v0 textView];
        [v3 beginBlockingMergeForReason:6 textView:v5];

        swift_unknownObjectRelease();
        *(v0 + v4) = 1;
      }
    }
  }
}

void sub_1D44052FC()
{
  v1 = OBJC_IVAR___ICCalculateScrubberController_isBlockingMerge;
  if (*(v0 + OBJC_IVAR___ICCalculateScrubberController_isBlockingMerge) == 1)
  {
    v2 = [v0 note];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 documentMergeController];

      if (v4)
      {
        v5 = [v0 textView];
        [v4 endBlockingMergeForReason:6 textView:v5];

        swift_unknownObjectRelease();
        *(v0 + v1) = 0;
      }
    }
  }
}

void sub_1D4405550(void *a1)
{
  if ([a1 object])
  {
    sub_1D441A804();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    sub_1D41769C4(v13, &qword_1EC7C9720);
    return;
  }

  type metadata accessor for OutlineController();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong document];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v1 note];
  if (v5 && (v6 = v5, v7 = [v5 textStorageWithoutCreating], v6, v7))
  {
    v8 = [v7 document];

    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = 0;
    if (!v4)
    {
LABEL_13:
      if (v8)
      {

        return;
      }

      goto LABEL_18;
    }
  }

  if (v8)
  {
    sub_1D41766C0(0, &unk_1EC7CC990);
    v9 = sub_1D441A5E4();

    if (v9)
    {
LABEL_18:
      [v1 hideScrubber];

      return;
    }
  }

  else
  {
  }
}

void __swiftcall ICCalculateScrubberController.init()(ICCalculateScrubberController *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

double sub_1D4405964()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4435D40;
  v3 = *MEMORY[0x1E69B7B20];
  *(inited + 32) = sub_1D4419C54();
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 40) = v4;
  *(inited + 48) = 1;
  sub_1D42EA814(inited);
  swift_setDeallocating();
  sub_1D41769C4(inited + 32, &unk_1EC7CB710);
  v5 = sub_1D4419B54();

  [v1 registerDefaults_];

  v6 = [v0 standardUserDefaults];
  [v6 doubleForKey_];
  v8 = v7;

  return v8;
}

void sub_1D4405AD8(uint64_t a1, char a2)
{
  v5 = sub_1D44176E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD98);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = *(v2 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateScrubberController15HoverController_hoveredCharacterIndex);
  if ((*(v2 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateScrubberController15HoverController_hoveredCharacterIndex + 8) & 1) == 0)
  {
    if (a2 & 1 | (v12 != a1))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        v15 = swift_unknownObjectWeakLoadStrong();
        if (v15)
        {
          v16 = v15;
          v17 = [v15 note];

          v18 = [v17 calculateDocumentController];
        }

        else
        {
          v18 = 0;
        }

        v19 = [v18 numberLiteralAtLocation_];

        if ([v14 isShowing])
        {
          v20 = OBJC_IVAR___ICCalculateScrubberController_viewController;
          v21 = *&v14[OBJC_IVAR___ICCalculateScrubberController_viewController];
          if (v21)
          {
            v38 = v2;
            v22 = v21;
            sub_1D4418AA4();
            v23 = &v11[*(v9 + 36)];
            v24 = *v23;
            v25 = *(v23 + 1);
            v40 = v24;
            v41 = v25;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9D20);
            sub_1D4419294();

            v26 = v39;
            sub_1D41769C4(v11, &qword_1EC7CBD98);
            if (v26)
            {
              goto LABEL_20;
            }

            v27 = *&v14[v20];
            v2 = v38;
            if (v27)
            {
              v28 = v27;
              sub_1D4418AA4();
              (*(v6 + 16))(v8, v11, v5);
              sub_1D41769C4(v11, &qword_1EC7CBD98);
              v29 = sub_1D44176D4();
              v2 = v38;
              v30 = v29;

              (*(v6 + 8))(v8, v5);
              if ((v30 & 1) == 0)
              {
                goto LABEL_20;
              }
            }
          }
        }

        v31 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateScrubberController15HoverController_numberLiteral;
        v32 = *(v2 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateScrubberController15HoverController_numberLiteral);
        if (v19)
        {
          if (v32)
          {
            v33 = v2;
            type metadata accessor for ICNumberLiteral();
            v34 = v32;
            v35 = v19;
            v36 = sub_1D441A5E4();

            if (v36)
            {
              v19 = v14;
              v14 = v35;
LABEL_20:

LABEL_21:
              return;
            }

            v2 = v33;
            v32 = *(v33 + v31);
          }
        }

        else if (!v32)
        {
          goto LABEL_21;
        }

        *(v2 + v31) = v19;
        v19 = v19;

        v37 = sub_1D4405E64();
        [v37 requestFire];

        v14 = v37;
        goto LABEL_20;
      }
    }
  }
}

id sub_1D4405E64()
{
  v1 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateScrubberController15HoverController____lazy_storage___showScrubberDelayer;
  v2 = *(v0 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateScrubberController15HoverController____lazy_storage___showScrubberDelayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateScrubberController15HoverController____lazy_storage___showScrubberDelayer);
  }

  else
  {
    if (qword_1EC7C92E0 != -1)
    {
      swift_once();
    }

    v4 = [objc_allocWithZone(MEMORY[0x1E69B7AB0]) initWithTarget:v0 selector:sel_showScrubber delay:1 waitToFireUntilRequestsStop:1 callOnMainThread:*&qword_1EC7D13D8];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

Swift::Void __swiftcall ICCalculateScrubberController.resetHoverTimer()()
{
  v0 = sub_1D44041A0();
  v1 = sub_1D4405E64();
  [v1 cancelPreviousFireRequests];
}

void sub_1D44061BC()
{
  v1 = *(v0 + 16);
  v2 = sub_1D4419C14();
  [v1 updateText_];
}

void sub_1D4406224(uint64_t a1)
{
  v2 = v1;
  v4 = [*a1 tooltip];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = sub_1D4419C54();
  v8 = v7;

  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v45[0] = *(a1 + 56);
  v45[1] = v9;
  v45[2] = v6;
  v45[3] = v8;
  v45[4] = v10;
  v45[5] = v11;
  v46 = xmmword_1D443DC00;
  v47 = 0x4034000000000000;
  objc_allocWithZone(type metadata accessor for CalculateErrorViewController());

  v44 = sub_1D43193AC(v45);
  [v44 setModalPresentationStyle_];
  v12 = [v44 popoverPresentationController];
  if (v12)
  {
    v13 = v12;
    [v12 setPermittedArrowDirections_];
  }

  v14 = [v44 popoverPresentationController];
  if (v14)
  {
    v15 = v14;
    [v14 _setShouldHideArrow_];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = [Strong textView];

    if (v18)
    {
      v19 = swift_unknownObjectWeakLoadStrong();
      if (v19)
      {
        v20 = v19;
        v21 = [v19 textView];

        if (v21)
        {
          v22 = [v21 window];

          if (v22)
          {
            v23 = [v22 rootViewController];

            if (v23)
            {
              [v18 ic:*(a1 + 8) rectForRange:*(a1 + 16)];
              v25 = v24;
              v27 = v26;
              v29 = v28;
              v31 = v30;
              [v18 textContainerInset];
              v33 = v32;
              [v18 textContainerInset];
              v35 = v34;
              v49.origin.x = v25;
              v49.origin.y = v27;
              v49.size.width = v29;
              v49.size.height = v31;
              v50 = CGRectOffset(v49, v33, v35);
              x = v50.origin.x;
              y = v50.origin.y;
              width = v50.size.width;
              height = v50.size.height;
              v40 = [v44 popoverPresentationController];
              [v40 setSourceRect_];

              v41 = [v44 popoverPresentationController];
              if (v41)
              {
                v42 = v41;
                [v41 setSourceView_];
              }

              [v23 presentViewController:v44 animated:1 completion:0];

              v43 = *(v2 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_viewController);
              *(v2 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_viewController) = v44;
              goto LABEL_18;
            }
          }
        }
      }
    }
  }

  v43 = v44;
LABEL_18:
}

void sub_1D4406594(_OWORD *a1)
{
  v3 = v1 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_state;
  v4 = *(v1 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_state + 48);
  v24[2] = *(v1 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_state + 32);
  v24[3] = v4;
  v25[0] = *(v1 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_state + 64);
  *(v25 + 9) = *(v1 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_state + 73);
  v5 = *(v1 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_state + 16);
  v24[0] = *(v1 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_state);
  v24[1] = v5;
  v6 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v6;
  v7 = a1[3];
  *(v3 + 32) = a1[2];
  *(v3 + 48) = v7;
  *(v3 + 64) = a1[4];
  *(v3 + 73) = *(a1 + 73);
  sub_1D4407DB4(a1, v26);
  sub_1D4407DEC(v24);
  *&v27[9] = *(v3 + 73);
  v8 = *(v3 + 48);
  v26[2] = *(v3 + 32);
  v26[3] = v8;
  *v27 = *(v3 + 64);
  v9 = *(v3 + 16);
  v26[0] = *v3;
  v26[1] = v9;
  if (v27[24])
  {
    if (v27[24] != 1)
    {
      v10 = *(v1 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_viewController);
      if (v10)
      {
        v11 = v10;
        [v11 dismissViewControllerAnimated:1 completion:0];
        sub_1D4407DEC(a1);

        return;
      }
    }

    v12 = a1;
  }

  else
  {
    v13 = *(v3 + 48);
    v20 = *(v3 + 32);
    v21 = v13;
    v22 = *(v3 + 64);
    v23 = *(v3 + 80);
    v14 = *(v3 + 16);
    v19[0] = *v3;
    v19[1] = v14;
    v15 = *(v3 + 73);
    v17[3] = v13;
    v18[0] = v22;
    *(v18 + 9) = v15;
    v17[1] = v14;
    v17[2] = v20;
    v17[0] = v19[0];
    sub_1D4407E1C(v17, v16);
    sub_1D4406224(v19);
    sub_1D4407DEC(a1);
    v12 = v26;
  }

  sub_1D4407DEC(v12);
}

void sub_1D44066FC(uint64_t a1@<X8>, double a2@<D0>, CGFloat a3@<D1>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = 0uLL;
  if (!Strong)
  {
    v16 = 0;
    v73 = 0uLL;
    v74 = 0uLL;
    v71 = 0uLL;
    v72 = 0uLL;
    goto LABEL_33;
  }

  v8 = Strong;
  isEscapingClosureAtFileLocation = [Strong textView];

  if (!isEscapingClosureAtFileLocation)
  {
    goto LABEL_30;
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10 || (v11 = v10, v12 = [v10 note], v11, !v12) || (v13 = objc_msgSend(v12, sel_calculateDocumentController), v12, !v13))
  {

LABEL_30:
    v16 = 0;
LABEL_31:
    v73 = 0uLL;
    v74 = 0uLL;
    v71 = 0uLL;
    v72 = 0uLL;
    goto LABEL_32;
  }

  v14 = [v13 note];
  if (!v14)
  {

    goto LABEL_30;
  }

  v15 = v14;
  v16 = [v14 textStorage];

  v87 = v16;
  if (!v16)
  {

    goto LABEL_31;
  }

  v82 = a1;
  v17 = a2 + -12.0;
  v18 = 10.0;
  v19 = MEMORY[0x1E69E7CC0];
  *&aBlock = MEMORY[0x1E69E7CC0];
  sub_1D43CF404(0, 3, 0);
  v20 = aBlock;
  v16 = &selRef_initWithAttributedString_range_;
  v21 = [isEscapingClosureAtFileLocation ic:a2 + -12.0 rangeFromRect:{a3 + -10.0, 24.0, 0.0}];
  p_aBlock = *(aBlock + 16);
  v23 = *(aBlock + 24);
  v25 = p_aBlock + 1;
  if (p_aBlock >= v23 >> 1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    *(v20 + 16) = v25;
    v26 = v20 + 16 * p_aBlock;
    *(v26 + 32) = v21;
    *(v26 + 40) = v22;
    v27 = [isEscapingClosureAtFileLocation v16[476]];
    v30 = *(v20 + 16);
    v29 = *(v20 + 24);
    if (v30 >= v29 >> 1)
    {
      v77 = v27;
      v78 = v28;
      sub_1D43CF404((v29 > 1), v30 + 1, 1);
      v28 = v78;
      v27 = v77;
      v20 = aBlock;
    }

    *(v20 + 16) = v30 + 1;
    v31 = v20 + 16 * v30;
    *(v31 + 32) = v27;
    *(v31 + 40) = v28;
    v32 = [isEscapingClosureAtFileLocation v16[476]];
    v35 = *(v20 + 16);
    v34 = *(v20 + 24);
    if (v35 >= v34 >> 1)
    {
      v79 = v32;
      v80 = v33;
      sub_1D43CF404((v34 > 1), v35 + 1, 1);
      v33 = v80;
      v32 = v79;
    }

    v36 = aBlock;
    *(aBlock + 16) = v35 + 1;
    v37 = (v36 + 32 + 16 * v35);
    *v37 = v32;
    v37[1] = v33;
    v117[0] = v19;
    v38 = *MEMORY[0x1E69B7930];
    p_aBlock = &aBlock;
    v16 = &v112;
    v19 = *(v36 + 40);
    v96 = *(v36 + 32);
    v89 = v36;
    v39 = [v87 highlightsAttributedString];
    v40 = swift_allocObject();
    v40[2] = isEscapingClosureAtFileLocation;
    v40[3] = v13;
    v40[4] = v117;
    v41 = v38;
    v86 = isEscapingClosureAtFileLocation;
    v85 = v13;
    sub_1D417BCA0(0);
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1D4407E54;
    *(v25 + 24) = v40;
    *&v113 = sub_1D417CF74;
    *(&v113 + 1) = v25;
    v94 = MEMORY[0x1E69E9820];
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v112 = sub_1D417C9A0;
    *(&v112 + 1) = &block_descriptor_29;
    v42 = _Block_copy(&aBlock);
    v13 = *(&v113 + 1);

    [v39 enumerateAttribute:v41 inRange:v96 options:v19 usingBlock:{0, v42}];

    _Block_release(v42);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v75 = v21;
    v76 = v22;
    sub_1D43CF404((v23 > 1), v25, 1);
    v22 = v76;
    v21 = v75;
    v20 = aBlock;
  }

  if (v35)
  {
    v16 = (v89 + 56);
    do
    {
      v43 = *(v16 - 1);
      v19 = *v16;
      v44 = [v87 highlightsAttributedString];
      v45 = swift_allocObject();
      v45[2] = v86;
      v45[3] = v85;
      v45[4] = v117;
      isEscapingClosureAtFileLocation = v41;
      v46 = v86;
      v47 = v85;
      sub_1D417BCA0(sub_1D4407E54);
      v13 = swift_allocObject();
      v13[2] = sub_1D4407E54;
      v13[3] = v45;
      *&v113 = sub_1D417CF74;
      *(&v113 + 1) = v13;
      *&aBlock = v94;
      *(&aBlock + 1) = 1107296256;
      *&v112 = sub_1D417C9A0;
      *(&v112 + 1) = &block_descriptor_29;
      p_aBlock = _Block_copy(&aBlock);

      [v44 enumerateAttribute:isEscapingClosureAtFileLocation inRange:v43 options:v19 usingBlock:{0, p_aBlock}];

      _Block_release(p_aBlock);
      v25 = swift_isEscapingClosureAtFileLocation();

      if (v25)
      {
        goto LABEL_37;
      }

      v16 += 2;
    }

    while (--v35);
  }

  v19 = v117[0];
  v16 = *(v117[0] + 16);
  if (v16)
  {
    v48 = *(v117[0] + 96);
    v49 = *(v117[0] + 64);
    v114 = *(v117[0] + 80);
    v115 = v48;
    v113 = v49;
    v50 = *(v117[0] + 48);
    aBlock = *(v117[0] + 32);
    v112 = v50;
    v116 = *(v117[0] + 112);
    v51 = v116;
    v91 = *(&v115 + 1);
    v52 = v115;
    v53 = *(&v114 + 1);
    v18 = *(&v50 + 1);
    a3 = *(&v49 + 1);
    *&v55 = v49;
    *&v54 = v114;
    v57 = *(&aBlock + 1);
    v56 = v50;
    v58 = aBlock;
    sub_1D4407E1C(&aBlock, &v105);
    sub_1D4407E1C(&aBlock, &v105);

    p_aBlock = 0;
    v84 = __PAIR128__(v57, v58);
    v105 = __PAIR128__(v57, v58);
    isEscapingClosureAtFileLocation = v56;
    v106 = __PAIR128__(*&v18, v56);
    v107 = __PAIR128__(*&a3, *&v55);
    v108 = __PAIR128__(v53, *&v54);
    v59 = v53;
    v109 = __PAIR128__(v91, v52);
    v25 = v52;
    v83 = v16;
    v81 = v16 - 1;
    v60 = v91;
    v110 = v51;
    v61 = v51;
LABEL_20:
    v13 = (88 * p_aBlock + 32);
    while (1)
    {
      v23 = *(v19 + 2);
      if (p_aBlock >= v23)
      {
        goto LABEL_38;
      }

      v62 = *(v13 + v19 + 16);
      v99 = *(v13 + v19);
      v100 = v62;
      v63 = *(v13 + v19 + 32);
      v64 = *(v13 + v19 + 48);
      v65 = *(v13 + v19 + 64);
      v104 = *(v13 + v19 + 80);
      v102 = v64;
      v103 = v65;
      v101 = v63;
      v16 = (p_aBlock + 1);
      sub_1D4407E1C(&v99, v98);
      v118.origin.x = v18;
      v118.origin.y = v55;
      v118.size.width = a3;
      v118.size.height = v54;
      CGRectGetMidX(v118);
      v119.origin.x = v18;
      v119.origin.y = v55;
      v119.size.width = a3;
      v119.size.height = v54;
      CGRectGetMidY(v119);
      TSDDistance();
      v92 = fabs(v66);
      v17 = *(&v100 + 1);
      v68 = v101;
      v67 = *&v102;
      v120.origin.x = *(&v100 + 1);
      *&v120.origin.y = v101;
      *&v120.size.height = v102;
      CGRectGetMidX(v120);
      v121.origin.x = v17;
      *&v121.origin.y = v68;
      v121.size.height = v67;
      CGRectGetMidY(v121);
      TSDDistance();
      if (fabs(v69) < v92)
      {
        v21 = sub_1D4407E60(&v105);
        v84 = v99;
        v105 = v99;
        isEscapingClosureAtFileLocation = v100;
        *&v106 = v100;
        v18 = v17;
        *(&v106 + 1) = v17;
        v107 = v68;
        *&v108 = v67;
        v54 = v67;
        v59 = *(&v102 + 1);
        *(&v108 + 1) = *(&v102 + 1);
        v109 = v103;
        v25 = v103;
        a3 = *(&v68 + 1);
        *&v55 = v68;
        v60 = *(&v103 + 1);
        v110 = v104;
        v61 = v104;
        if (v81 != p_aBlock++)
        {
          goto LABEL_20;
        }

LABEL_27:

        sub_1D4407E60(&aBlock);
        v95 = v106;
        v97 = v105;
        v90 = v108;
        v93 = v107;
        *v88 = v109;
        v16 = v110;

        sub_1D417BCA0(sub_1D4407E54);
        v72 = *v88;
        v71 = v90;
        v74 = v93;
        v73 = v95;
        v7 = v97;
        a1 = v82;
        goto LABEL_33;
      }

      v21 = sub_1D4407E60(&v99);
      v105 = v84;
      *&v106 = isEscapingClosureAtFileLocation;
      *(&v106 + 1) = v18;
      *&v107 = v55;
      *(&v107 + 1) = a3;
      *&v108 = v54;
      *(&v108 + 1) = v59;
      *&v109 = v25;
      v13 += 11;
      ++p_aBlock;
      *(&v109 + 1) = v60;
      v110 = v61;
      if (v83 == v16)
      {
        goto LABEL_27;
      }
    }
  }

  sub_1D417BCA0(sub_1D4407E54);
  v73 = 0uLL;
  v74 = 0uLL;
  v71 = 0uLL;
  v72 = 0uLL;
  a1 = v82;
LABEL_32:
  v7 = 0uLL;
LABEL_33:
  *a1 = v7;
  *(a1 + 16) = v73;
  *(a1 + 32) = v74;
  *(a1 + 48) = v71;
  *(a1 + 64) = v72;
  *(a1 + 80) = v16;
}

void sub_1D440705C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char **a7)
{
  sub_1D417CF94(a1, v49, &qword_1EC7C9720);
  if (!v50)
  {
    sub_1D41769C4(v49, &qword_1EC7C9720);
    return;
  }

  sub_1D41766C0(0, &unk_1EC7CCA40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v11 = v51[0];
  v12 = [v51[0] errors];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FD0);
  v13 = sub_1D4419E44();

  v14 = *(v13 + 16);

  if (!v14)
  {

    return;
  }

  [a5 textContainerInset];
  v16 = v15;
  v18 = v17;
  [a5 ic:a2 rectForRange:a3];
  v53 = CGRectOffset(v52, v18, v16);
  x = v53.origin.x;
  y = v53.origin.y;
  width = v53.size.width;
  height = v53.size.height;
  v23 = [v11 errors];
  v24 = sub_1D4419E44();

  if (!*(v24 + 16))
  {

    goto LABEL_13;
  }

  v25 = *(v24 + 32);
  v26 = v25;

  v49[0] = v25;
  sub_1D41766C0(0, &qword_1EC7CCA50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v47 = 0;
    v48 = 0;
    goto LABEL_14;
  }

  v27 = v51[0];
  v28 = [v51[0] localizedFailureReason];
  if (!v28 || (v28, (v29 = [v27 localizedFailureReason]) == 0))
  {

    goto LABEL_13;
  }

  v30 = v29;
  v31 = sub_1D4419C54();
  v47 = v32;
  v48 = v31;

LABEL_14:
  sub_1D43231A4();
  sub_1D43084A0(a2, 1, v49);

  v33 = v49[0];
  if (v49[0])
  {
    v35 = v49[1];
    v34 = v49[2];
    sub_1D4189834();
    v36 = v33;
    sub_1D430A3F4(v36, v35, v34);

    v37 = sub_1D4419904();

    *v51 = v50;
    sub_1D42D5CC0(v51);

    if (v37)
    {

      sub_1D4419864();

      v38 = sub_1D4419714();
      v40 = v39;
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  v41 = *a7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a7 = v41;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v41 = sub_1D438D918(0, *(v41 + 2) + 1, 1, v41);
    *a7 = v41;
  }

  v44 = *(v41 + 2);
  v43 = *(v41 + 3);
  if (v44 >= v43 >> 1)
  {
    *a7 = sub_1D438D918((v43 > 1), v44 + 1, 1, v41);
  }

  v45 = *a7;
  *(v45 + 2) = v44 + 1;
  v46 = &v45[88 * v44];
  *(v46 + 4) = v11;
  *(v46 + 5) = a2;
  *(v46 + 6) = a3;
  v46[7] = x;
  v46[8] = y;
  v46[9] = width;
  v46[10] = height;
  *(v46 + 11) = v38;
  *(v46 + 12) = v40;
  *(v46 + 13) = v48;
  *(v46 + 14) = v47;
}

void sub_1D440744C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v9 = [Strong textView];

    if (v9)
    {
      [a1 locationInView_];
      sub_1D44066FC(v17, v5, v6);
      if (*v17)
      {
        *&v16[9] = *(v1 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_state + 73);
        v7 = *(v1 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_state + 48);
        v14 = *(v1 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_state + 32);
        v15 = v7;
        *v16 = *(v1 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_state + 64);
        v8 = *(v1 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_state + 16);
        *v13 = *(v1 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_state);
        *&v13[16] = v8;
        if (v16[24] || *&v13[8] != *&v17[8])
        {
          v20 = *&v17[24];
          v21 = *&v17[40];
          v22 = *&v17[56];
          v23 = *&v17[72];
          v18 = *v17;
          v19 = *&v17[8];
          v24 = 0;
          v10[2] = *&v17[32];
          v10[3] = *&v17[48];
          v10[4] = *&v17[64];
          v11 = *&v17[80];
          v10[0] = *v17;
          v10[1] = *&v17[16];
          sub_1D4407E1C(v10, v12);
          sub_1D4406594(&v18);

          sub_1D41769C4(v17, &unk_1EC7CCA30);
        }

        else
        {
          v20 = *&v17[24];
          v21 = *&v17[40];
          v22 = *&v17[56];
          v23 = *&v17[72];
          v18 = *v17;
          v19 = *&v17[8];
          v24 = 1;
          sub_1D4407DB4(v13, v10);
          sub_1D417CF94(v17, v10, &unk_1EC7CCA30);
          sub_1D4406594(&v18);

          sub_1D41769C4(v17, &unk_1EC7CCA30);
          sub_1D4407DEC(v13);
        }
      }

      else
      {
      }
    }
  }
}

id sub_1D44076D8()
{
  v1 = v0 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_state;
  v2 = *(v0 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_state + 48);
  v18[2] = *(v0 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_state + 32);
  v18[3] = v2;
  v19[0] = *(v0 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_state + 64);
  *(v19 + 9) = *(v0 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_state + 73);
  v3 = *(v0 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_state + 16);
  v18[0] = *(v0 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_state);
  v18[1] = v3;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  *(v1 + 88) = 2;
  result = sub_1D4407DEC(v18);
  *&v21[9] = *(v1 + 73);
  v5 = *(v1 + 48);
  v20[2] = *(v1 + 32);
  v20[3] = v5;
  *v21 = *(v1 + 64);
  v6 = *(v1 + 16);
  v20[0] = *v1;
  v20[1] = v6;
  if (v21[24])
  {
    if (v21[24] != 1)
    {
      result = *(v0 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_viewController);
      if (result)
      {
        return [result dismissViewControllerAnimated:1 completion:0];
      }
    }
  }

  else
  {
    v7 = *(v1 + 48);
    v14 = *(v1 + 32);
    v15 = v7;
    v16 = *(v1 + 64);
    v17 = *(v1 + 80);
    v8 = *(v1 + 16);
    v13[0] = *v1;
    v13[1] = v8;
    v9 = *(v1 + 73);
    v11[3] = v7;
    v12[0] = v16;
    *(v12 + 9) = v9;
    v11[1] = v8;
    v11[2] = v14;
    v11[0] = v13[0];
    sub_1D4407E1C(v11, v10);
    sub_1D4406224(v13);
    return sub_1D4407DEC(v20);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So32ICCalculateRecognitionControllerC7NotesUIE016ErrorInteractionC0C6StatesO(uint64_t a1)
{
  if ((*(a1 + 88) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 88) & 3;
  }
}

uint64_t sub_1D4407A34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 89))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 88);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D4407A7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D4407AD8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 88) = a2;
  return result;
}

uint64_t sub_1D4407B18(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = [result textView];

    if (v5)
    {
      v6 = [a1 allTouches];
      if (!v6 || (v7 = v6, sub_1D41766C0(0, &qword_1EDE32410), sub_1D4407D4C(), v8 = sub_1D441A064(), v7, v9 = sub_1D438930C(v8), , !v9))
      {
LABEL_17:

        return 0;
      }

      v10 = [a1 allTouches];
      if (v10)
      {
        v11 = v10;
        v12 = sub_1D441A064();

        v13 = (v12 & 0xC000000000000001) != 0 ? sub_1D441A8C4() : *(v12 + 16);

        if (v13 == 1)
        {
          [v9 locationInView_];
          sub_1D44066FC(v21, v14, v15);
          if (v21[0])
          {
            v17 = v21[1];
            v16 = v21[2];

            v18 = v1 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_state;
            if (*(v1 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_state + 88) != 1)
            {
              sub_1D41769C4(v21, &unk_1EC7CCA30);
              return 1;
            }

            v20 = *(v18 + 8);
            v19 = *(v18 + 16);
            sub_1D41769C4(v21, &unk_1EC7CCA30);
            return v20 != v17 || v19 != v16;
          }

          v23 = 0;
          memset(v22, 0, sizeof(v22));
          v24 = 2;
          sub_1D4406594(v22);

          goto LABEL_17;
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1D4407D4C()
{
  result = qword_1EDE32408;
  if (!qword_1EDE32408)
  {
    sub_1D41766C0(255, &qword_1EDE32410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32408);
  }

  return result;
}

void *sub_1D4407E90(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  if (a12 <= 1u)
  {
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D4407F10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1D4407F58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id UIImage.image(for:)()
{
  v0 = sub_1D44184D4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E697DBA8], v0);
  v4 = sub_1D44184C4();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v7 = [v13 imageAsset];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 imageWithTraitCollection_];

    if (v9)
    {
      return v9;
    }
  }

  else
  {
  }

  v11 = v13;

  return v11;
}

uint64_t sub_1D4408164()
{
  v0 = sub_1D44181B4();
  __swift_allocate_value_buffer(v0, qword_1EDE32C40);
  __swift_project_value_buffer(v0, qword_1EDE32C40);
  return sub_1D4418164();
}

uint64_t sub_1D44081B0()
{
  v0 = sub_1D44181B4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D44180A4();
  __swift_allocate_value_buffer(v4, qword_1EDE335A8);
  __swift_project_value_buffer(v4, qword_1EDE335A8);
  if (qword_1EDE32C38 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EDE32C40);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1D4418084();
}

id sub_1D44082EC()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69B7AB0]) initWithTarget:v0 selector:sel_performHighlightsUpdate delay:0 maximumDelay:0.05 callOnMainThread:0.2];
    v4 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1D440837C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong note];

    if (v3)
    {
      v4 = [v3 managedObjectContext];

      if (v4)
      {
        v6[4] = sub_1D4409994;
        v6[5] = v0;
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 1107296256;
        v6[2] = sub_1D417BEE4;
        v6[3] = &block_descriptor_30;
        v5 = _Block_copy(v6);

        [v4 performBlock_];
        _Block_release(v5);
      }
    }
  }
}

uint64_t sub_1D44084D0()
{
  v0 = sub_1D44180B4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D4418074();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE335A0 != -1)
  {
    swift_once();
  }

  v8 = sub_1D44180A4();
  __swift_project_value_buffer(v8, qword_1EDE335A8);
  v9 = sub_1D4418094();
  sub_1D44180C4();
  v10 = sub_1D441A3C4();
  if (sub_1D441A764())
  {

    sub_1D44180F4();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1D4418054();
    _os_signpost_emit_with_name_impl(&dword_1D4171000, v9, v10, v13, "updateHighlights()", v11, v12, 2u);
    MEMORY[0x1DA6D8690](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_1D440875C(unint64_t a1, uint64_t a2)
{
  v5 = sub_1D44198D4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v80 - v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = [Strong note];

    if (v14)
    {
      v99 = [v14 managedObjectContext];

      if (v99)
      {
        v15 = swift_unknownObjectWeakLoadStrong();
        if (v15)
        {
          v93 = v2;
          v16 = v15;
          sub_1D4189834();

          aBlock[0] = a2;
          v17 = sub_1D4419904();

          if (!v17)
          {
LABEL_62:

            return;
          }

          if (sub_1D43D8EC0() & 1) == 0 || (v18 = sub_1D43096D4(), (v19) || (v20 = v18, v18 >= [a1 length]) || (v21 = objc_msgSend(a1, sel_string), sub_1D4419C54(), v21, v98 = v20, v82 = sub_1D4419C84(), v81 = v22, LOBYTE(v21) = v23, , (v21))
          {

            return;
          }

          sub_1D4419864();
          v25 = sub_1D4419724();

          v26 = v25;
          if (v25 >> 62)
          {
            goto LABEL_68;
          }

          v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:
          v28 = v98;
          v94 = a1;
          v80 = v17;
          if (v27)
          {
            a1 = 0;
            v91 = v26 & 0xC000000000000001;
            v83 = v26 & 0xFFFFFFFFFFFFFF8;
            v90 = v101;
            v89 = *MEMORY[0x1E69921A8];
            v88 = (v6 + 104);
            v87 = (v6 + 8);
            v85 = v82 + v81;
            v86 = v26;
            v84 = v27;
            while (1)
            {
              if (v91)
              {
                v29 = MEMORY[0x1DA6D6410](a1);
              }

              else
              {
                if (a1 >= *(v83 + 16))
                {
                  goto LABEL_67;
                }

                v29 = *(v26 + 8 * a1 + 32);
              }

              v95 = (a1 + 1);
              if (__OFADD__(a1, 1))
              {
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                v79 = v26;
                v27 = sub_1D441A8C4();
                v26 = v79;
                goto LABEL_16;
              }

              sub_1D4419814();
              if ((v30 & 0x1000000000000000) != 0)
              {
                v31 = sub_1D4419D54();
              }

              else
              {
                v31 = sub_1D4419D64();
              }

              v32 = v31;

              v33 = swift_allocObject();
              *(v33 + 16) = v32;
              v97 = (v33 + 16);
              v34 = swift_allocObject();
              *(v34 + 16) = v29;
              *(v34 + 24) = v33;
              v101[2] = sub_1D4409A20;
              v101[3] = v34;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              v101[0] = sub_1D43300C0;
              v101[1] = &block_descriptor_16;
              v35 = _Block_copy(aBlock);

              v96 = v33;

              v92 = v32;
              [v94 ic:v99 enumerateInlineAttachmentsInContext:v28 range:v32 options:0 usingBlock:{v35, v80}];
              _Block_release(v35);
              sub_1D4419824();
              (*v88)(v9, v89, v5);
              LOBYTE(v35) = sub_1D44198C4();
              v36 = *v87;
              (*v87)(v9, v5);
              v36(v11, v5);
              v98 = v28;
              if (v35)
              {
                v6 = [objc_allocWithZone(ICCalculateHighlightAttribute) init];
                [v6 setType_];
              }

              else
              {
                v6 = *(sub_1D4419834() + 16);

                if (!v6)
                {
                  IsMathDebugHighlightingEnabled = ICInternalSettingsIsMathDebugHighlightingEnabled();
                  v17 = v97;
                  if ((IsMathDebugHighlightingEnabled & 1) == 0)
                  {
                    goto LABEL_34;
                  }

                  v6 = [objc_allocWithZone(ICCalculateHighlightAttribute) init];
                  if (!v6)
                  {
                    goto LABEL_34;
                  }

                  goto LABEL_30;
                }

                v6 = [objc_allocWithZone(ICCalculateHighlightAttribute) init];
              }

              v17 = v97;
              sub_1D4419834();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FD0);
              v37 = sub_1D4419E24();

              [v6 setErrors_];

LABEL_30:
              v38 = [v94 highlightsAttributedString];
              objc_opt_self();
              v39 = swift_dynamicCastObjCClass();
              if (v39)
              {
                v40 = v39;
                v105.location = [v39 ic_range];
                v105.length = v41;
                v103.location = v98;
                v103.length = v92;
                v42 = NSIntersectionRange(v103, v105);
                [v40 addAttribute:*(v93 + 24) value:v6 range:{v42.location, v42.length}];
                v43 = v38;
              }

              else
              {
                v43 = v6;
                v6 = v38;
              }

LABEL_34:
              swift_beginAccess();
              v28 = v98 + *v17;
              if (__OFADD__(v98, *v17))
              {
                goto LABEL_66;
              }

              if (v28 < v85)
              {
                ++a1;
                v26 = v86;
                if (v95 != v84)
                {
                  continue;
                }
              }

              break;
            }
          }

          v45 = objc_opt_self();
          v46 = [v45 ic_attachmentCharacterString];
          v47 = sub_1D4419C54();
          v49 = v48;

          v50 = MEMORY[0x1DA6D5780](v47, v49);

          v51 = __OFSUB__(v28, v50);
          v52 = v28 - v50;
          if (v51)
          {
            __break(1u);
          }

          else
          {
            v53 = v94;
            if (v52 < 0 || v52 >= v82 + v81)
            {
              goto LABEL_61;
            }

            v54 = [v94 string];
            if (v54)
            {
              v55 = v54;
              v56 = [v54 characterAtIndex_];

              v57 = [v45 ic_attachmentCharacterString];
              v58 = sub_1D4419C54();
              v60 = v59;

              v61 = MEMORY[0x1DA6D5780](v58, v60);

              if ((v56 & 0xF800) == 0xD800)
              {
                v62 = 0;
                v63 = 0;
              }

              else
              {
                v64 = (v56 & 0x3F) << 8;
                v65 = (v56 >> 6) + v64 + 33217;
                v66 = ((v56 >> 12) | ((v64 | (v56 >> 6) & 0x3F) << 8)) + 8487393;
                if (v56 >= 0x800)
                {
                  v65 = v66;
                }

                if (v56 <= 0x7F)
                {
                  v65 = v56 + 1;
                }

                aBlock[0] = (v65 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v65) >> 3))));
                v62 = sub_1D4419CC4();
                v63 = v67;
              }

              v68 = [v45 ic_attachmentCharacterString];
              v69 = sub_1D4419C54();
              v71 = v70;

              if (v63)
              {
                if (v62 == v69 && v63 == v71)
                {

LABEL_59:
                  v73 = sub_1D4409A28();
                  v74 = [v53 highlightsAttributedString];
                  objc_opt_self();
                  v75 = swift_dynamicCastObjCClass();
                  if (!v75)
                  {

                    return;
                  }

                  v76 = v75;
                  v106.location = [v75 ic_range];
                  v106.length = v77;
                  v104.location = v52;
                  v104.length = v61;
                  v78 = NSIntersectionRange(v104, v106);
                  [v76 addAttribute:*(v93 + 24) value:v73 range:{v78.location, v78.length}];

                  goto LABEL_61;
                }

                v72 = sub_1D441AD84();

                if (v72)
                {
                  goto LABEL_59;
                }
              }

              else
              {
              }

LABEL_61:

              goto LABEL_62;
            }
          }

          __break(1u);
          return;
        }

        v24 = v99;
      }
    }
  }
}

id sub_1D4409180(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = [a1 isCalculateGraphExpressionAttachment];
  if (result)
  {
    v9 = sub_1D4419814();
    v11 = v10;
    v12 = [objc_opt_self() ic_equalsSignCharacterString];
    v13 = sub_1D4419C54();
    v15 = v14;

    if (v9 != v13 || v11 != v15)
    {
      v17 = sub_1D441AD84();

      if (v17)
      {
        return result;
      }

      v18 = [a1 displayText];
      sub_1D4419C54();

      v19 = sub_1D4419CE4();

      v20 = __OFSUB__(v19, 2);
      v21 = v19 - 2;
      if (v20)
      {
        __break(1u);
      }

      else
      {
        result = swift_beginAccess();
        v22 = *(a6 + 16);
        v20 = __OFSUB__(v22, v21);
        v23 = v22 - v21;
        if (!v20)
        {
          *(a6 + 16) = v23;
          return result;
        }
      }

      __break(1u);
      return result;
    }
  }

  return result;
}

void sub_1D4409304(uint64_t a1, uint64_t a2, int a3, id a4)
{
  v7 = [a4 textStorage];
  [a4 processEditingForTextStorage:v7 edited:2 range:a1 changeInLength:a2 invalidatedRange:{0, a1, a2}];
}

void sub_1D44093C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[4] = a5;
  v8[5] = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D417BEE4;
  v8[3] = a6;
  v7 = _Block_copy(v8);

  [a3 performBlock_];
  _Block_release(v7);
}

uint64_t sub_1D4409478()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D41890D0();
  }

  return result;
}

void sub_1D44094D0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = Strong;
  v3 = [Strong note];

  if (!v3)
  {
    return;
  }

  v11 = [v3 textStorage];

  if (!v11)
  {
    return;
  }

  v4 = [v11 highlightsAttributedString];
  v5 = *(v0 + 32);
  if (v4)
  {
    v6 = v4;
    if (v5)
    {
      sub_1D41766C0(0, &qword_1EDE33A28);
      v7 = v5;
      v8 = sub_1D441A5E4();

      if (v8)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  else if (!v5)
  {
    goto LABEL_13;
  }

  v9 = [objc_opt_self() defaultCenter];
  v10 = swift_unknownObjectWeakLoadStrong();
  [v9 postNotificationName:@"ICCalculateDocumentControllerDidUpdateHighlights" object:v10];

LABEL_13:
}

uint64_t sub_1D4409934()
{
  MEMORY[0x1DA6D8750](v0 + 2);

  return swift_deallocClassInstance();
}

unint64_t sub_1D44099C8()
{
  result = qword_1EDE325C0;
  if (!qword_1EDE325C0)
  {
    _s5IndexCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE325C0);
  }

  return result;
}

id sub_1D4409A28()
{
  v0 = [objc_allocWithZone(ICCalculateHighlightAttribute) init];
  [v0 setType_];
  v1 = sub_1D4419854();
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CCA60);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D4435D40;
    *(v3 + 32) = v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FD0);
  v4 = sub_1D4419E24();

  [v0 setErrors_];

  return v0;
}

uint64_t objectdestroy_21Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void static LockedNotesSwitchViewController.present(for:skipsAlerts:window:completion:)(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  __LockedNotesViewConfigurationAccount.init(account:)(v8, &v34);
  v9 = v34;
  v31 = v35;
  v10 = v36;
  v11 = v37;
  v12 = v38;
  v13 = v39;
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = v5;
  *(v14 + 48) = a4;
  *(v14 + 56) = a5;
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = a3;
  v34 = v9;
  v35 = v31;
  v36 = v10;
  v37 = v11;
  v38 = v12;
  v39 = v13;
  v40 = sub_1D440A1A0;
  v41 = v14;
  v42 = sub_1D43A5230;
  v43 = v15;
  v16 = v8;
  v17 = a3;
  v18 = v16;
  v19 = v17;

  v20 = sub_1D43A476C(&v34, v19);
  sub_1D440A48C(&v34);
  v21 = v20;
  v22 = [v21 navigationController];
  if (v22)
  {
    v23 = v22;
    [v22 setNavigationBarHidden_];
  }

  v24 = [v21 view];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 ic_hasCompactWidth];

    if (v26)
    {
      v27 = *MEMORY[0x1E69DDCE0];
      v28 = *(MEMORY[0x1E69DDCE0] + 8);
      v29 = *(MEMORY[0x1E69DDCE0] + 16);
      v30 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    else
    {
      v27 = 0.0;
      v28 = 64.0;
      v29 = 0.0;
      v30 = 64.0;
    }

    [v21 setAdditionalSafeAreaInsets_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1D4409DF8(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v14 = a1;
  v15 = [objc_opt_self() switchToDevicePasswordInSettingsInfoAlertWithAccount_];
  v27 = v15;
  if (v14 == 2)
  {
    v16 = [objc_opt_self() sharedMigrator];
    v17 = swift_allocObject();
    *(v17 + 16) = a5;
    *(v17 + 24) = a4;
    *(v17 + 32) = a6;
    *(v17 + 40) = a7;
    *(v17 + 48) = 2;
    v32 = sub_1D440A9F8;
    v33 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = sub_1D4315880;
    v31 = &block_descriptor_29_0;
    v18 = _Block_copy(&aBlock);
    v19 = a4;

    [v16 presentBackwardsCompatibilityAlertIfNeededForAccount:a2 mode:2 window:v19 confirmHandler:v18 cancelHandler:0];

    _Block_release(v18);
  }

  else if (![v15 shouldPresent] || (a3 & 1) != 0)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a6;
    *(v23 + 24) = a7;
    *(v23 + 32) = a1;

    v24 = [a4 rootViewController];
    if (v24)
    {
      v25 = v24;
      v32 = sub_1D43A59CC;
      v33 = v23;
      aBlock = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v30 = sub_1D417BEE4;
      v31 = &block_descriptor_31;
      v26 = _Block_copy(&aBlock);

      [v25 dismissViewControllerAnimated:1 completion:v26];

      _Block_release(v26);
    }

    else
    {
      a6(a1);
    }
  }

  else
  {
    v20 = swift_allocObject();
    *(v20 + 16) = a5;
    *(v20 + 24) = a4;
    *(v20 + 32) = a6;
    *(v20 + 40) = a7;
    *(v20 + 48) = a1;
    v32 = sub_1D440A9E8;
    v33 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = sub_1D417BEE4;
    v31 = &block_descriptor_23_1;
    v21 = _Block_copy(&aBlock);
    v22 = a4;

    [v27 presentInWindow:v22 completionHandler:v21];

    _Block_release(v21);
  }
}

void sub_1D440A1B4(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = a5;

  v10 = [a2 rootViewController];
  if (v10)
  {
    v11 = v10;
    v13[4] = sub_1D43A59CC;
    v13[5] = v9;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1D417BEE4;
    v13[3] = &block_descriptor_41_0;
    v12 = _Block_copy(v13);

    [v11 dismissViewControllerAnimated:1 completion:v12];

    _Block_release(v12);
  }

  else
  {
    a3(a5);
  }
}

void sub_1D440A320(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  *(v10 + 32) = a6;

  v11 = [a3 rootViewController];
  if (v11)
  {
    v12 = v11;
    v14[4] = sub_1D43A5980;
    v14[5] = v10;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1D417BEE4;
    v14[3] = &block_descriptor_35_2;
    v13 = _Block_copy(v14);

    [v12 dismissViewControllerAnimated:1 completion:v13];

    _Block_release(v13);
  }

  else
  {
    a4(a6);
  }
}

uint64_t sub_1D440A4E0(int a1, int a2, void *a3, char a4, void *a5, void *aBlock)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  swift_getObjCClassMetadata();
  v11 = a3;
  v12 = a5;
  static LockedNotesSwitchViewController.present(for:skipsAlerts:window:completion:)(v11, a4, v12, sub_1D440A9D0, v10);
}

Swift::Void __swiftcall LockedNotesSwitchViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  [v0 setModalPresentationStyle_];
  [v0 setPreferredContentSize_];
}

void sub_1D440A61C(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  [v1 setModalPresentationStyle_];
  [v1 setPreferredContentSize_];
}

uint64_t LockedNotesSwitchViewController.cancelAction(_:)()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v2 = *(v1 + 6);
  if (v2)
  {
    return v2(*(v1 + 20));
  }

  return result;
}

void sub_1D440A704(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_1D441A804();
  swift_unknownObjectRelease();
  v3 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  v4 = *(v3 + 6);
  if (v4)
  {
    v4(*(v3 + 20));
  }

  __swift_destroy_boxed_opaque_existential_0(&v5);
}

id LockedNotesSwitchViewController.__allocating_init(configuration:)(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = MEMORY[0x1E69E7D40];
  *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x68)) = 0;
  *(v3 + *((*v4 & *v3) + 0x70)) = 0;
  *(v3 + *((*v4 & *v3) + 0x78)) = 0;
  v5 = (v3 + *((*v4 & *v3) + 0x60));
  v6 = a1[3];
  v5[2] = a1[2];
  v5[3] = v6;
  v5[4] = a1[4];
  v7 = a1[1];
  *v5 = *a1;
  v5[1] = v7;
  v9.receiver = v3;
  v9.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CCA68);
  return objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
}

id LockedNotesSwitchViewController.init(configuration:)(_OWORD *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68)) = 0;
  *(v1 + *((*v2 & *v1) + 0x70)) = 0;
  *(v1 + *((*v2 & *v1) + 0x78)) = 0;
  v3 = (v1 + *((*v2 & *v1) + 0x60));
  v4 = a1[4];
  v3[3] = a1[3];
  v3[4] = v4;
  v5 = a1[2];
  v3[1] = a1[1];
  v3[2] = v5;
  *v3 = *a1;
  v7.receiver = v1;
  v7.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CCA68);
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

id LockedNotesSwitchViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ICSystemPaperTextAttachment.encrypt(_:)()
{
  v1 = [v0 attachment];
  v2 = sub_1D4417CC4();

  return v2;
}

uint64_t ICSystemPaperTextAttachment.decrypt(_:)()
{
  v1 = [v0 attachment];
  v2 = sub_1D4417CA4();

  return v2;
}

void ICSystemPaperTextAttachment.encrypt(_:)()
{
  v1 = [v0 attachment];
  sub_1D4417CB4();
}

uint64_t sub_1D440AB74()
{
  v1 = [*v0 attachment];
  v2 = sub_1D4417CC4();

  return v2;
}

uint64_t sub_1D440ABDC()
{
  v1 = [*v0 attachment];
  v2 = sub_1D4417CA4();

  return v2;
}

void sub_1D440AC54()
{
  v1 = [*v0 attachment];
  sub_1D4417CB4();
}

id sub_1D440ACC4()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x78);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v0 action:sel_doneAction_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t static LockedNotesLearnMoreViewController.present(for:window:)(void *a1, void *a2)
{
  __LockedNotesViewConfigurationAccount.init(account:)(a1, &v10);
  v4 = v10;
  v5 = v11;
  v6 = v12;
  v7 = v13;
  v8 = v14;
  v9 = v15;
  LockedNotesLearnMoreView.Configuration.init(account:)(&v4, v16);

  return sub_1D43A5860(v16);
}

Swift::Void __swiftcall LockedNotesLearnMoreViewController.viewDidLoad()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v1 = [v0 navigationItem];
  [v1 setTitle_];

  v2 = [v0 navigationItem];
  v3 = sub_1D440ACC4();
  [v2 setRightBarButtonItem_];
}

void sub_1D440AE9C(void *a1)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v2 = [v1 navigationItem];
  [v2 setTitle_];

  v3 = [v1 navigationItem];
  v4 = sub_1D440ACC4();
  [v3 setRightBarButtonItem_];
}

uint64_t sub_1D440AF60(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_getObjCClassMetadata();
  v6 = a3;
  v7 = a4;
  __LockedNotesViewConfigurationAccount.init(account:)(v6, &v15);
  v9 = v15;
  v10 = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  LockedNotesLearnMoreView.Configuration.init(account:)(&v9, v21);

  return sub_1D43A5860(v21);
}

uint64_t sub_1D440B034(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_1D441A804();
  swift_unknownObjectRelease();
  [v2 dismissViewControllerAnimated:1 completion:0];

  return __swift_destroy_boxed_opaque_existential_0(&v4);
}

id LockedNotesLearnMoreViewController.__allocating_init(configuration:)(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = MEMORY[0x1E69E7D40];
  *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x68)) = 0;
  *(v3 + *((*v4 & *v3) + 0x70)) = 0;
  *(v3 + *((*v4 & *v3) + 0x78)) = 0;
  v5 = (v3 + *((*v4 & *v3) + 0x60));
  v6 = a1[3];
  v5[2] = a1[2];
  v5[3] = v6;
  v7 = a1[5];
  v5[4] = a1[4];
  v5[5] = v7;
  v5[6] = a1[6];
  v8 = a1[1];
  *v5 = *a1;
  v5[1] = v8;
  v10.receiver = v3;
  v10.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CCA70);
  return objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
}

id LockedNotesLearnMoreViewController.init(configuration:)(_OWORD *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68)) = 0;
  *(v1 + *((*v2 & *v1) + 0x70)) = 0;
  *(v1 + *((*v2 & *v1) + 0x78)) = 0;
  v3 = (v1 + *((*v2 & *v1) + 0x60));
  v4 = a1[6];
  v3[5] = a1[5];
  v3[6] = v4;
  v5 = a1[4];
  v3[3] = a1[3];
  v3[4] = v5;
  v6 = a1[2];
  v3[1] = a1[1];
  v3[2] = v6;
  *v3 = *a1;
  v8.receiver = v1;
  v8.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CCA70);
  return objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
}

id LockedNotesLearnMoreViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

CGRect CGContextGetClipBoundingBox(CGContextRef c)
{
  MEMORY[0x1EEDB9528](c);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x1EEDBA770](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

CGRect CTLineGetImageBounds(CTLineRef line, CGContextRef context)
{
  MEMORY[0x1EEDBF300](line, context);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

uint64_t MKBGetDeviceLockState_delayInitStub(double a1)
{
  if (!atomic_load(dlopenHelperFlag_MobileKeyBag))
  {
    dlopenHelper_MobileKeyBag(a1);
  }

  return MEMORY[0x1EEE1E330]();
}

double gotLoadHelper_x8__OBJC_CLASS___ACUILocalization(double result)
{
  if (!atomic_load(&dlopenHelperFlag_AccountsUI))
  {
    return dlopenHelper_AccountsUI(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___LPAudio(double result)
{
  if (!atomic_load(dlopenHelperFlag_LinkPresentation))
  {
    return dlopenHelper_LinkPresentation(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___LPAudioProperties(double result)
{
  if (!atomic_load(dlopenHelperFlag_LinkPresentation))
  {
    return dlopenHelper_LinkPresentation(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___LPFileMetadata(double result)
{
  if (!atomic_load(dlopenHelperFlag_LinkPresentation))
  {
    return dlopenHelper_LinkPresentation(result);
  }

  return result;
}

void gotLoadHelper_x23__OBJC_CLASS___LPImage(double a1)
{
  if (!atomic_load(dlopenHelperFlag_LinkPresentation))
  {
    dlopenHelper_LinkPresentation(a1);
  }
}

double gotLoadHelper_x8__OBJC_CLASS___LPImage(double result)
{
  if (!atomic_load(dlopenHelperFlag_LinkPresentation))
  {
    return dlopenHelper_LinkPresentation(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___LPLinkMetadata(double result)
{
  if (!atomic_load(dlopenHelperFlag_LinkPresentation))
  {
    return dlopenHelper_LinkPresentation(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___LPLinkSnapshotConfiguration(double result)
{
  if (!atomic_load(dlopenHelperFlag_LinkPresentation))
  {
    return dlopenHelper_LinkPresentation(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___LPLinkSnapshotGenerator(double result)
{
  if (!atomic_load(dlopenHelperFlag_LinkPresentation))
  {
    return dlopenHelper_LinkPresentation(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___LPLinkView(double result)
{
  if (!atomic_load(dlopenHelperFlag_LinkPresentation))
  {
    return dlopenHelper_LinkPresentation(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___LPMapMetadata(double result)
{
  if (!atomic_load(dlopenHelperFlag_LinkPresentation))
  {
    return dlopenHelper_LinkPresentation(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___LPMetadataProvider(double result)
{
  if (!atomic_load(dlopenHelperFlag_LinkPresentation))
  {
    return dlopenHelper_LinkPresentation(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___QLThumbnailGenerationRequest(double result)
{
  if (!atomic_load(&dlopenHelperFlag_QuickLookThumbnailing))
  {
    return dlopenHelper_QuickLookThumbnailing(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___QLThumbnailGenerator(double result)
{
  if (!atomic_load(&dlopenHelperFlag_QuickLookThumbnailing))
  {
    return dlopenHelper_QuickLookThumbnailing(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___VNImageRequestHandler(double result)
{
  if (!atomic_load(&dlopenHelperFlag_Vision))
  {
    return dlopenHelper_Vision(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___VNSceneClassificationRequest(double result)
{
  if (!atomic_load(&dlopenHelperFlag_Vision))
  {
    return dlopenHelper_Vision(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___VNSession(double result)
{
  if (!atomic_load(&dlopenHelperFlag_Vision))
  {
    return dlopenHelper_Vision(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_LinkPresentation(double a1)
{
  dlopen("/System/Library/Frameworks/LinkPresentation.framework/LinkPresentation", 0);
  atomic_store(1u, dlopenHelperFlag_LinkPresentation);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_QuickLookThumbnailing(double a1)
{
  dlopen("/System/Library/Frameworks/QuickLookThumbnailing.framework/QuickLookThumbnailing", 0);
  atomic_store(1u, &dlopenHelperFlag_QuickLookThumbnailing);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_Vision(double a1)
{
  dlopen("/System/Library/Frameworks/Vision.framework/Vision", 0);
  atomic_store(1u, &dlopenHelperFlag_Vision);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_AccountsUI(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/AccountsUI.framework/AccountsUI", 0);
  atomic_store(1u, &dlopenHelperFlag_AccountsUI);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_MobileKeyBag(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/MobileKeyBag.framework/MobileKeyBag", 0);
  atomic_store(1u, dlopenHelperFlag_MobileKeyBag);
  return a1;
}