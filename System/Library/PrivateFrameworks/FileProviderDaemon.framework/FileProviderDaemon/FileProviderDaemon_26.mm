void sub_1CF2E7A60(uint64_t a1, void *a2, __int128 *a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v38 = fpfs_current_log();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v12 = Strong;
  if (![Strong userEnabled])
  {

LABEL_10:
    v17 = sub_1CF2F1F6C();
    goto LABEL_11;
  }

  v13 = [v12 session];
  v14 = [objc_opt_self() defaultStore];
  if ([v14 hasUpcallExecutionTimeLimits])
  {
    goto LABEL_7;
  }

  if (qword_1EC4BCCF0 != -1)
  {
    swift_once();
  }

  v15 = -1.0;
  if (byte_1EC4BF020 == 1)
  {
LABEL_7:
    [v14 upcallExecutionTimeLimitBase];
    v15 = v16;
  }

  v17 = [v13 newFileProviderProxyWithTimeout:0 pid:v15];
  swift_unknownObjectRelease();
LABEL_11:
  v36 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(a1 + 280) itemIdentifier:a2];
  v18 = *a3;
  v42 = *(a3 + 24);
  v43 = v18;
  v19 = *(a3 + 6);
  v20 = *(a3 + 7);
  sub_1CF2F47F0(&v43, aBlock);
  sub_1CF2F47F0(&v42, aBlock);
  v21 = sub_1CF9E5B48();
  v22 = sub_1CF9E5B48();
  if (v20)
  {
    v23 = sub_1CF9E6888();
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v21 metadataVersion:v22 lastEditorDeviceName:v23];

  sub_1CF2F484C(&v42);
  sub_1CF2F484C(&v43);
  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25 && (v26 = v25, v27 = [v25 session], v26, v27))
  {
    v28 = [objc_opt_self() requestForSelf];
    v29 = [v28 nsfpRequestForSession:v27 isSpeculative:0];

    [v29 setDomainVersion_];
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
  }

  v30 = swift_allocObject();
  v30[2] = a1;
  v30[3] = v38;
  v30[4] = a5;
  v30[5] = a6;
  v30[6] = a7;
  v30[7] = a2;
  v30[8] = v17;
  aBlock[4] = sub_1CF2F48A0;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFF99E0;
  aBlock[3] = &block_descriptor_258_0;
  v31 = _Block_copy(aBlock);

  v32 = v38;
  v33 = a5;

  v34 = a2;
  swift_unknownObjectRetain();

  v35 = [v17 deleteItemWithID:v36 baseVersion:v24 options:a4 & 1 request:v29 completionHandler:v31];
  swift_unknownObjectRelease();

  _Block_release(v31);
}

uint64_t sub_1CF2E7E8C(void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v23 = *(a3 + 160);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a1;
  v17[4] = a5;
  v17[5] = a2;
  v17[6] = a6;
  v17[7] = a7;
  v17[8] = a8;
  v17[9] = a9;

  v18 = a1;
  v19 = a5;
  v20 = a2;

  v21 = a8;
  swift_unknownObjectRetain();
  sub_1CF01001C(a4, "delete(_:recursively:baseVersion:domainVersion:oldVersionCapturedContent:completion:)", 85, 2, sub_1CF2F48B8, v17);
}

void sub_1CF2E7F98(uint64_t a1, void *a2, void *a3, void *a4, void (*a5)(id, id, uint64_t), uint64_t a6, void *a7, void *a8)
{
  sub_1CF041B2C(a2, a3);
  if (a4)
  {
    _s3__C4CodeOMa_1(0);
    v13 = a4;
    sub_1CF2F1F24(&qword_1EDEA3590, _s3__C4CodeOMa_1);
    if ((sub_1CF9E5658() & 1) != 0 && (v14 = sub_1CF9E57E8(), v15 = [v14 fp_userInfoFPItem], v14, v15))
    {
      v16 = v15;
      sub_1CF2D1564(v15);
      v17 = [a2 domainVersion];
      a5(v15, v17, 0);
    }

    else
    {
      v18 = sub_1CF2E3014(a4, a7, 0, [a8 timeoutState]);
      a5(v18, 0, 1);
    }
  }

  else
  {
    v19 = [a2 domainVersion];
    a5(0, v19, 0);
  }
}

uint64_t sub_1CF2E81B0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = sub_1CF9E63D8();
  v38 = *(v39 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v17 = a1[1];
  v48 = *a1;
  v49 = v17;
  v18 = a1[3];
  v50 = a1[2];
  v51 = v18;
  v19 = *(v4 + 168);
  v40 = *(v4 + 160);
  v20 = sub_1CF9E6448();
  v21 = *(v20 - 8);
  (*(v21 + 56))(v16, 1, 1, v20);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  v23 = swift_allocObject();
  *(v23 + 16) = v4;
  v24 = v49;
  *(v23 + 24) = v48;
  *(v23 + 40) = v24;
  v25 = v51;
  *(v23 + 56) = v50;
  *(v23 + 72) = v25;
  *(v23 + 88) = a2;
  *(v23 + 96) = a3;
  v26 = swift_allocObject();
  v26[2] = sub_1CF2BA174;
  v26[3] = v22;
  v26[4] = v19;
  swift_retain_n();

  sub_1CF1AE1DC(&v48, &aBlock);

  v27 = fpfs_current_log();
  v28 = *(v19 + 16);
  v41 = v16;
  sub_1CEFCCBDC(v16, v13, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v21 + 48))(v13, 1, v20) == 1)
  {
    sub_1CEFCCC44(v13, &unk_1EC4BE370, qword_1CFA01B30);
    v29 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v30 = v37;
    sub_1CF9E6438();
    (*(v21 + 8))(v13, v20);
    v29 = sub_1CF9E63C8();
    (*(v38 + 8))(v30, v39);
  }

  v31 = swift_allocObject();
  v31[2] = v27;
  v31[3] = sub_1CF2F46FC;
  v31[4] = v23;
  v46 = sub_1CF2BA17C;
  v47 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = sub_1CEFCA444;
  v45 = &block_descriptor_227;
  v32 = _Block_copy(&aBlock);
  v33 = v27;

  v46 = sub_1CF2BA180;
  v47 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = sub_1CEFCA444;
  v45 = &block_descriptor_230;
  v34 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v28, v40, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v29, v32, v34);
  _Block_release(v34);
  _Block_release(v32);

  return sub_1CEFCCC44(v41, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2E8670(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  if (*a2)
  {
    v4 = *(a1 + 136);
    MEMORY[0x1EEE9AC00](a1);
    sub_1CEFE1894(sub_1CF2AF9F4);
    *(v4 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
    if (*(v4 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);
      swift_unknownObjectRelease();
    }
  }

  return a3(0);
}

uint64_t sub_1CF2E8794(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1CF9E63D8();
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = *(v3 + 168);
  v35 = *(v3 + 160);
  v17 = sub_1CF9E6448();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v15, 1, 1, v17);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = swift_allocObject();
  v20[2] = v3;
  v20[3] = a1;
  v20[4] = a2;
  v21 = swift_allocObject();
  v21[2] = sub_1CF2AF9D0;
  v21[3] = v19;
  v21[4] = v16;
  swift_retain_n();

  v22 = fpfs_current_log();
  v23 = *(v16 + 16);
  v36 = v15;
  sub_1CEFCCBDC(v15, v12, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v18 + 48))(v12, 1, v17) == 1)
  {
    sub_1CEFCCC44(v12, &unk_1EC4BE370, qword_1CFA01B30);
    v24 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v25 = v32;
    sub_1CF9E6438();
    (*(v18 + 8))(v12, v17);
    v24 = sub_1CF9E63C8();
    (*(v33 + 8))(v25, v34);
  }

  v26 = swift_allocObject();
  v26[2] = v22;
  v26[3] = sub_1CF2F46E4;
  v26[4] = v20;
  v41 = sub_1CF2BA17C;
  v42 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_1CEFCA444;
  v40 = &block_descriptor_200_0;
  v27 = _Block_copy(&aBlock);
  v28 = v22;

  v41 = sub_1CF2AF9E8;
  v42 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_1CEFCA444;
  v40 = &block_descriptor_203;
  v29 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v23, v35, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v24, v27, v29);
  _Block_release(v29);
  _Block_release(v27);

  return sub_1CEFCCC44(v36, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2E8BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong diskImportFinished];

  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  if (![v7 userEnabled])
  {

LABEL_10:
    v13 = sub_1CF2F1F6C();
    goto LABEL_11;
  }

  v9 = [v8 session];
  v10 = [objc_opt_self() defaultStore];
  if ([v10 hasUpcallExecutionTimeLimits])
  {
    goto LABEL_7;
  }

  if (qword_1EC4BCCF0 != -1)
  {
    swift_once();
  }

  v11 = -1.0;
  if (byte_1EC4BF020 == 1)
  {
LABEL_7:
    [v10 upcallExecutionTimeLimitBase];
    v11 = v12;
  }

  v13 = [v9 newFileProviderProxyWithTimeout:0 pid:v11];
  swift_unknownObjectRelease();
LABEL_11:
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a1;
  v14[5] = v13;
  v17[4] = sub_1CF2F46F0;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1CF00A468;
  v17[3] = &block_descriptor_209;
  v15 = _Block_copy(v17);

  swift_unknownObjectRetain();

  [v13 importDidFinishWithCompletionHandler_];
  _Block_release(v15);
  return swift_unknownObjectRelease();
}

void sub_1CF2E8E2C(void *a1, void (*a2)(void), int a3, int a4, id a5)
{
  v7 = [a5 timeoutState];
  if (a1)
  {
    if (v7)
    {
      if (v7 == 2)
      {
        v8 = -3;
      }

      else
      {
        if (v7 != 1)
        {
          type metadata accessor for FPXPCAutomaticErrorProxyTimeout(0);
          v11 = a1;
          sub_1CF9E80C8();
          __break(1u);
          return;
        }

        v8 = -2;
      }

      sub_1CF2F462C();
      v7 = swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = v8;
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = v7;
  a2();
}

void sub_1CF2E8F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v8 = v5;
  v13 = sub_1CF9E6118();
  v65 = *(v13 - 8);
  v66 = v13;
  v14 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v18 = sub_1CF95F71C(a3, ObjectType, a4, a2, a5);
  if (v6)
  {
    goto LABEL_3;
  }

  v64 = 0;
  v20 = *(v5 + 328);
  v21 = *(v5 + 336);
  *(v5 + 328) = v18;
  *(v5 + 336) = v19;

  v22 = v64;
  v23 = sub_1CF95F840(a3, ObjectType, a4, a2, a5);
  v7 = v22;
  if (v22)
  {
LABEL_3:
    v24 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v25 = v7;
    v26 = sub_1CF9E6108();
    v27 = sub_1CF9E72A8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      swift_getErrorValue();
      v30 = Error.prettyDescription.getter(v67);
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&dword_1CEFC7000, v26, v27, "could not decode the previous sync anchor, starting working set enumerator from scratch: %@", v28, 0xCu);
      sub_1CEFCCC44(v29, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v29, -1, -1);
      MEMORY[0x1D386CDC0](v28, -1, -1);
    }

    (*(v65 + 8))(v16, v66);
    v31 = *(v5 + 16);
    if (v31)
    {
      v32 = *(v5 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE00, &qword_1CF9FE720);
      v33 = *(type metadata accessor for SyncState() - 8);
      v34 = *(v33 + 72);
      v35 = v7;
      v36 = v8;
      v37 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1CF9FA450;
      v39 = (v38 + v37);
      v40 = *(v36 + 328);
      v41 = *(v36 + 336);
      *v39 = v40;
      v39[1] = v41;
      swift_storeEnumTagMultiPayload();
      sub_1CF03C63C(v31);
      v42 = v41;
      v43 = v40;
      v31(&unk_1F4BED558, v38, 0, 0);

      sub_1CEFF7124(v31);
    }

    else
    {
    }
  }

  else
  {
    *(v5 + 192) = v23 & 1;
    v44 = *(v5 + 328);
    v45 = *(v5 + 336);
    v46 = v5;
    v47 = qword_1EDEA5AD8;
    v48 = v44;
    v49 = v45;
    if (v47 != -1)
    {
      swift_once();
    }

    v50 = sub_1CF040418(v44, v45, qword_1EDEBB820, *algn_1EDEBB828);

    v51 = v46;
    if (v50)
    {
      v52 = v46[2];
      if (v52)
      {
        v53 = v46[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE00, &qword_1CF9FE720);
        v54 = *(type metadata accessor for SyncState() - 8);
        v55 = *(v54 + 72);
        v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_1CF9FA450;
        v58 = (v57 + v56);
        v59 = v46[41];
        v60 = v46[42];
        *v58 = v59;
        v58[1] = v60;
        swift_storeEnumTagMultiPayload();
        sub_1CF03C63C(v52);
        v61 = v60;
        v62 = v59;
        v51 = v46;
        v52(&unk_1F4BED518, v57, 0, 0);
        sub_1CEFF7124(v52);
      }
    }

    if (v51[18])
    {
      v63 = v51[18];

      sub_1CF2CF910(sub_1CF2CFA4C, sub_1CF1C5288, sub_1CF1C5290, sub_1CF1C5468);
    }
  }
}

uint64_t sub_1CF2E9478()
{
  v1 = v0;
  fp_task_tracker_cancel(*(*(v0 + 168) + 16));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = swift_allocObject();
    v5 = [v3 session];
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v6 = *(v0 + 160);
    v7 = [v3 log];

    sub_1CF01001C(v7, "cancel()", 8, 2, sub_1CF2F46DC, v4);
  }

  if (*(v1 + 200))
  {
    v8 = *(v1 + 200);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1CF2E95C4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result cancelAsync];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CF2E9630(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 160);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;

  sub_1CF01001C(0, "eventBarrier(_:)", 16, 2, sub_1CF2F46C4, v7);
}

uint64_t sub_1CF2E96E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v7 = Strong;
  if (![Strong userEnabled])
  {

LABEL_10:
    v12 = sub_1CF2F1F6C();
    goto LABEL_11;
  }

  v8 = [v7 session];
  v9 = [objc_opt_self() defaultStore];
  if ([v9 hasUpcallExecutionTimeLimits])
  {
    goto LABEL_7;
  }

  if (qword_1EC4BCCF0 != -1)
  {
    swift_once();
  }

  v10 = -1.0;
  if (byte_1EC4BF020 == 1)
  {
LABEL_7:
    [v9 upcallExecutionTimeLimitBase];
    v10 = v11;
  }

  v12 = [v8 newFileProviderProxyWithTimeout:0 pid:v10];
  swift_unknownObjectRelease();
LABEL_11:
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v16[4] = sub_1CF2F46D0;
  v16[5] = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1CF00A468;
  v16[3] = &block_descriptor_172;
  v14 = _Block_copy(v16);

  [v12 waitForStabilizationWithCompletionHandler_];
  _Block_release(v14);
  return swift_unknownObjectRelease();
}

void sub_1CF2E98EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v7 = *(a2 + 24);
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    sub_1CF03C63C(v4);

    v4(&unk_1F4BED5B8, MEMORY[0x1E69E7CC0], sub_1CEFFD05C, v8);
    sub_1CEFF7124(v4);
  }
}

uint64_t sub_1CF2E99C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v92 = a8;
  v98 = a7;
  v79 = a6;
  v95 = a3;
  v96 = a4;
  v94 = a2;
  v87 = a1;
  v93 = a10;
  v91 = a9;
  v75 = sub_1CF9E63D8();
  v74 = *(v75 - 8);
  v12 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ItemMetadata();
  v89 = *(v14 - 8);
  v15 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v78 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1CF9E5A58();
  v83 = *(v99 - 8);
  v16 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v80 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v72 - v18;
  v77 = &v72 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v82 = *(v20 - 8);
  v21 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v72 - v22;
  v76 = &v72 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v88 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v72 - v28;
  v81 = &v72 - v28;
  v84 = a5;
  v30 = *(a5 + 160);
  v86 = *(a5 + 168);
  v97 = v30;
  v85 = sub_1CF9E6448();
  v90 = *(v85 - 8);
  (*(v90 + 56))(v29, 1, 1, v85);
  v31 = swift_allocObject();
  v100 = v31;
  v32 = v98;
  *(v31 + 16) = a6;
  *(v31 + 24) = v32;
  sub_1CEFCCBDC(v87, v23, &unk_1EC4BE310, qword_1CF9FCBE0);
  v33 = v83;
  v34 = *(v83 + 16);
  v35 = v99;
  v34(v19, v92, v99);
  sub_1CEFF4408(v91, &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34(&v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v93, v35);
  v36 = (*(v82 + 80) + 16) & ~*(v82 + 80);
  v37 = (v21 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = *(v33 + 80);
  v41 = (v40 + v39 + 8) & ~v40;
  v42 = (v16 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (*(v89 + 80) + v42 + 8) & ~*(v89 + 80);
  v93 = (v15 + v40 + v43) & ~v40;
  v44 = swift_allocObject();
  sub_1CEFE55D0(v76, v44 + v36, &unk_1EC4BE310, qword_1CF9FCBE0);
  v45 = (v44 + v37);
  v46 = v95;
  *v45 = v94;
  v45[1] = v46;
  v47 = (v44 + v38);
  v48 = v98;
  *v47 = v79;
  v47[1] = v48;
  v49 = v96;
  *(v44 + v39) = v96;
  v50 = *(v33 + 32);
  v51 = v44 + v41;
  v52 = v99;
  v50(v51, v77, v99);
  *(v44 + v42) = v84;
  sub_1CF2F63E4(v78, v44 + v43, type metadata accessor for ItemMetadata);
  v53 = v44;
  v50(v44 + v93, v80, v52);
  v54 = swift_allocObject();
  v55 = v100;
  v54[2] = sub_1CF2F4DDC;
  v54[3] = v55;
  v56 = v86;
  v54[4] = v86;
  swift_retain_n();

  v57 = v49;
  v58 = v85;
  v59 = v88;
  v60 = v57;

  v61 = fpfs_current_log();
  v62 = *(v56 + 16);
  v63 = v81;
  v64 = v90;
  sub_1CEFCCBDC(v81, v59, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v64 + 48))(v59, 1, v58) == 1)
  {
    sub_1CEFCCC44(v59, &unk_1EC4BE370, qword_1CFA01B30);
    v65 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v66 = v73;
    sub_1CF9E6438();
    (*(v64 + 8))(v59, v58);
    v65 = sub_1CF9E63C8();
    (*(v74 + 8))(v66, v75);
  }

  v67 = swift_allocObject();
  v67[2] = v61;
  v67[3] = sub_1CF2F4E28;
  v67[4] = v53;
  v105 = sub_1CF2BA17C;
  v106 = v67;
  aBlock = MEMORY[0x1E69E9820];
  v102 = 1107296256;
  v103 = sub_1CEFCA444;
  v104 = &block_descriptor_354;
  v68 = _Block_copy(&aBlock);
  v69 = v61;

  v105 = sub_1CF2F4FD8;
  v106 = v54;
  aBlock = MEMORY[0x1E69E9820];
  v102 = 1107296256;
  v103 = sub_1CEFCA444;
  v104 = &block_descriptor_357;
  v70 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v62, v97, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v65, v68, v70);
  _Block_release(v70);
  _Block_release(v68);

  return sub_1CEFCCC44(v63, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF2EA218(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v54 = a7;
  v55 = a8;
  v57 = a3;
  v58 = a5;
  v53 = a2;
  v13 = sub_1CF9E53C8();
  v52 = *(v13 - 8);
  v14 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v51 - v19;
  v21 = sub_1CF9E5A58();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v56 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v51 - v25;
  v27 = a1;
  v29 = v28;
  v31 = v30;
  sub_1CEFCCBDC(v27, v20, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v29 + 48))(v20, 1, v31) == 1)
  {
    sub_1CEFCCC44(v20, &unk_1EC4BE310, qword_1CF9FCBE0);
    if (a6)
    {
LABEL_3:
      v32 = a6;
LABEL_8:
      v37 = a6;
      (a4)(v32, 1, nullsub_1, 0);

      return;
    }

LABEL_7:
    LODWORD(v73[0]) = 22;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    sub_1CF9E57D8();
    v32 = sub_1CF9E53A8();
    (*(v52 + 8))(v16, v13);
    goto LABEL_8;
  }

  (*(v29 + 32))(v26, v20, v31);
  if (!v57)
  {
    (*(v29 + 8))(v26, v31);
    if (a6)
    {
      goto LABEL_3;
    }

    goto LABEL_7;
  }

  v52 = v29;
  v33 = v53;
  sub_1CF9E5968();
  v51 = v26;
  v34 = sub_1CF9E59E8();
  v35 = *(v55 + 136);
  v36 = sub_1CF9E5A18();
  (*(*v35 + 408))(&v75, v36);

  v72[0] = v75;
  v72[1] = v76;
  v72[2] = v77;
  v72[3] = v78;
  v68 = v75;
  v69 = v76;
  v70 = v77;
  v71 = v78;
  sub_1CEFE528C(v73);
  v66[12] = v73[12];
  v66[13] = v73[13];
  v66[14] = v73[14];
  v67 = v74;
  v66[8] = v73[8];
  v66[9] = v73[9];
  v66[10] = v73[10];
  v66[11] = v73[11];
  v66[4] = v73[4];
  v66[5] = v73[5];
  v66[6] = v73[6];
  v66[7] = v73[7];
  v66[0] = v73[0];
  v66[1] = v73[1];
  v66[2] = v73[2];
  v66[3] = v73[3];
  v64 = v33;
  v65 = v57;
  v62 = 58;
  v63 = 0xE100000000000000;
  v60 = 47;
  v61 = 0xE100000000000000;
  sub_1CF1AE1DC(v72, v59);
  v49 = sub_1CEFE4E68();
  v50 = v49;
  v47 = MEMORY[0x1E69E6158];
  v48 = v49;
  v64 = sub_1CF9E7668();
  v65 = v38;
  v39 = (*(*v35 + 448))(&v68, a9, v66, &v64, 0, 0);
  LODWORD(v57) = v34;

  v59[0] = v68;
  v59[1] = v69;
  v59[2] = v70;
  v59[3] = v71;
  v40 = sub_1CEFCCC44(v59, &unk_1EC4BF260, &unk_1CFA01B60);
  if (*&v72[0])
  {
    MEMORY[0x1EEE9AC00](v40);
    v47 = v35;
    LODWORD(v48) = 0;
    v49 = v41;
    v40 = sub_1CEFE1894(sub_1CF2B9F78);
    *(v35 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
    if (*(v35 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
    {
      v42 = *(v35 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);
      v40 = swift_unknownObjectRelease();
    }
  }

  MEMORY[0x1EEE9AC00](v40);
  *(&v51 - 6) = v55;
  *(&v51 - 5) = a4;
  v47 = v58;
  v48 = a10;
  v49 = v39;
  sub_1CF2EF290(v39, 0x200000, sub_1CF2F500C, (&v51 - 8), &v51);
  sub_1CF1AE25C(v72);

  v46 = v56;
  v44 = v51;
  sub_1CF2EAA04(v54, v51, v57 & 1);
  v45 = *(v52 + 8);
  v45(v46, v31);
  v45(v44, v31);
}

void sub_1CF2EAA04(uint64_t a1, uint64_t a2, char a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v5 = sub_1CF9E5928();
  v17[0] = 0;
  v6 = [v4 removeItemAtURL:v5 error:v17];

  if (v6)
  {
    v7 = v17[0];
  }

  else
  {
    v8 = v17[0];
    v9 = sub_1CF9E57F8();

    swift_willThrow();
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v11 = sub_1CF9E5928();
  v17[0] = 0;
  v12 = [v10 removeItemAtURL:v11 error:v17];

  if (v12)
  {
    v13 = v17[0];
    if ((a3 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = v17[0];
  v15 = sub_1CF9E57F8();

  swift_willThrow();
  if (a3)
  {
LABEL_8:
    sub_1CF9E59C8();
  }

LABEL_9:
  v16 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF2EAB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, void, uint64_t (*)(), uint64_t), uint64_t a7, char *a8, uint64_t a9)
{
  v45 = a8;
  v42 = a7;
  v43 = a6;
  v44 = a3;
  v12 = sub_1CF9E53C8();
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E5A58();
  v47 = *(v16 - 8);
  v17 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  MEMORY[0x1EEE9AC00](v23);
  if (a4 && (v26 = &v40 - v25, v27 = *(a5 + 136), v41 = a5, v28 = v24, v29 = *(a2 + 8), v30 = v27 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle, swift_beginAccess(), v29 == *(v30 + 32)))
  {
    v31 = v26;
    sub_1CF9E58B8();
    v32 = v47;
    v33 = *(v47 + 16);
    v33(v22, v31, v28);
    v33(v19, v45, v28);
    v34 = objc_allocWithZone(MEMORY[0x1E6967348]);
    v35 = v46;
    v36 = sub_1CF2F1080(v22, v19);
    if (!v35)
    {
      v37 = v36;
      v38 = swift_allocObject();
      *(v38 + 16) = v41;
      *(v38 + 24) = a9;

      v43(v37, 0, sub_1CF2F503C, v38);
    }

    return (*(v32 + 8))(v31, v28);
  }

  else
  {
    v49 = 2;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v48 + 8))(v15, v12);
    return swift_willThrow();
  }
}

uint64_t sub_1CF2EAF04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  v5 = *(a2 + 16);

  sub_1CEFE1894(sub_1CF2B9F78);
  *(v2 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
  if (*(v2 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
  {
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    MEMORY[0x1D3869790](1, ObjectType);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1CF2EAFD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - v10;
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (a2)
  {
    sub_1CF9E59D8();
    v14 = sub_1CF9E5A58();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  }

  else
  {
    v15 = sub_1CF9E5A58();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  }

  if (a3)
  {
    v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    a3 = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = a4;
  v13(v11, v16, a3, a4);

  return sub_1CEFCCC44(v11, &unk_1EC4BE310, qword_1CF9FCBE0);
}

void sub_1CF2EB164(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v59 = a6;
  v60 = a5;
  v61 = a4;
  v62 = a3;
  v56 = a2;
  v63[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1CF9E53C8();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5270, &unk_1CFA01BC0);
  v10 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v52 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v52 - v17;
  v19 = sub_1CF9E5A58();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v52 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v52 - v28;
  sub_1CEFCCBDC(a1, v18, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    v33 = *(v20 + 32);
    v33(v29, v18, v19);
    LODWORD(v56) = sub_1CF9E59E8();
    v34 = sub_1CF9E5928();
    v63[0] = 0;
    v35 = [v62 contentsOfDirectoryAtURL:v34 includingPropertiesForKeys:0 options:5 error:v63];

    v36 = v63[0];
    if (v35)
    {
      v37 = sub_1CF9E6D48();
      v38 = v36;

      if (*(v37 + 16))
      {
        v39 = *(v20 + 16);
        v39(v23, v37 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v19);

        v33(v26, v23, v19);
        v40 = v57;
        v39(v57, v26, v19);
        swift_storeEnumTagMultiPayload();
        v60(v40);
        sub_1CEFCCC44(v40, &unk_1EC4C5270, &unk_1CFA01BC0);
        (*(v20 + 8))(v26, v19);
        if ((v56 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      LODWORD(v63[0]) = 22;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v47 = v53;
      v48 = v55;
      sub_1CF9E57D8();
      v46 = sub_1CF9E53A8();
      (*(v54 + 8))(v47, v48);
    }

    else
    {
      v45 = v63[0];
      v46 = sub_1CF9E57F8();
    }

    swift_willThrow();
    v49 = v57;
    *v57 = v46;
    swift_storeEnumTagMultiPayload();
    v50 = v46;
    v60(v49);

    sub_1CEFCCC44(v49, &unk_1EC4C5270, &unk_1CFA01BC0);
    if ((v56 & 1) == 0)
    {
LABEL_14:
      (*(v20 + 8))(v29, v19);
      v44 = v62;
      goto LABEL_15;
    }

LABEL_13:
    sub_1CF9E59C8();
    goto LABEL_14;
  }

  v30 = v62;
  sub_1CEFCCC44(v18, &unk_1EC4BE310, qword_1CF9FCBE0);
  v31 = v56;
  if (v56)
  {
    v32 = v56;
  }

  else
  {
    LODWORD(v63[0]) = 22;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    v41 = v53;
    v42 = v55;
    sub_1CF9E57D8();
    v32 = sub_1CF9E53A8();
    (*(v54 + 8))(v41, v42);
  }

  *v14 = v32;
  swift_storeEnumTagMultiPayload();
  v43 = v31;
  v60(v14);
  sub_1CEFCCC44(v14, &unk_1EC4C5270, &unk_1CFA01BC0);
  v44 = v30;
LABEL_15:
  sub_1CF2EB7CC(v44);
  v51 = *MEMORY[0x1E69E9840];
}

void sub_1CF2EB7CC(void *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E5928();
  v9[0] = 0;
  LODWORD(a1) = [a1 removeItemAtURL:v2 error:v9];

  v3 = v9[0];
  if (a1)
  {
    v4 = *MEMORY[0x1E69E9840];

    v5 = v3;
  }

  else
  {
    v6 = v9[0];
    v7 = sub_1CF9E57F8();

    swift_willThrow();
    v8 = *MEMORY[0x1E69E9840];
  }
}

void sub_1CF2EB8C8(void *a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, void (*a6)(void **, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a6;
  v13 = sub_1CF9E5CF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5CC8();
  sub_1CF9E5C28();
  v19 = v18;
  v20 = (*(v14 + 8))(v17, v13);
  a4(v20);
  if (a2)
  {
    v21 = *(a9 + OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_timeoutState);
    if (!v21)
    {
      v29 = a2;
      v23 = a2;
LABEL_11:
      v44 = v23;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 1;
      v30 = a2;
      v43(&v44, MEMORY[0x1E69E7CC0]);

      return;
    }

    if (v21 == 1)
    {
      sub_1CF2F462C();
      v23 = swift_allocError();
      *v22 = 0;
      *(v22 + 8) = 0;
      v24 = -2;
LABEL_10:
      *(v22 + 16) = v24;
      goto LABEL_11;
    }

    if (v21 == 2)
    {
      sub_1CF2F462C();
      v23 = swift_allocError();
      *v22 = 0;
      *(v22 + 8) = 0;
      v24 = -3;
      goto LABEL_10;
    }

    type metadata accessor for FPXPCAutomaticErrorProxyTimeout(0);
    v44 = v21;
    v42 = a2;
    sub_1CF9E80C8();
    __break(1u);
  }

  else
  {
    v25 = *(a8 + 328);
    v26 = v25;
    if (a1)
    {
      v27 = v26;
      v28 = a1;
    }

    else
    {
      v28 = sub_1CF9E5B48();
      v27 = *(a8 + 328);
    }

    v31 = *(a8 + 336);
    *(a8 + 328) = v25;
    *(a8 + 336) = v28;
    v32 = a1;

    v44 = MEMORY[0x1E69E7CC0];
    v45 = MEMORY[0x1E69E7CC0];
    v46 = 1;
    v47 = v19;
    v48 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE00, &qword_1CF9FE720);
    v33 = *(type metadata accessor for SyncState() - 8);
    v34 = *(v33 + 72);
    v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1CF9FA450;
    v37 = (v36 + v35);
    v38 = *(a8 + 328);
    v39 = *(a8 + 336);
    *v37 = v38;
    v37[1] = v39;
    swift_storeEnumTagMultiPayload();
    v40 = v39;
    v41 = v38;
    v43(&v44, v36);
  }
}

uint64_t sub_1CF2EBC20(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v45 = a2;
  v46 = a1;
  v43 = a13;
  v44 = a14;
  v40 = a10;
  v41 = a12;
  v18 = sub_1CF9E5CF8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5CC8();
  sub_1CF9E5C28();
  v24 = v23;
  (*(v19 + 8))(v22, v18);
  v42 = *(a7 + 160);
  v25 = [a8 log];
  v26 = swift_allocObject();
  v26[2] = a7;
  v26[3] = a4;
  v28 = v40;
  v27 = v41;
  v26[4] = a9;
  v26[5] = v28;
  v26[6] = a11;
  v26[7] = a5;
  v30 = v43;
  v29 = v44;
  v26[8] = v27;
  v26[9] = v30;
  v31 = v45;
  v32 = v46;
  v26[10] = v29;
  v26[11] = v31;
  v26[12] = v32;
  v26[13] = v24;

  v33 = a4;
  v34 = a9;

  v35 = a5;
  v36 = v31;

  v37 = v29;
  sub_1CF01001C(v25, "fetchEventStream(domainVersion:completion:)", 43, 2, sub_1CF2F4680, v26);
}

void sub_1CF2EBE1C(uint64_t a1, void *a2, void *a3, void (*a4)(void), double a5, uint64_t a6, void *a7, void (*a8)(uint64_t *, uint64_t), uint64_t a9, uint64_t a10, void *a11, unint64_t a12)
{
  v77 = a8;
  v19 = sub_1CF9E5FF8();
  v20 = *(v19 - 8);
  v21 = v20[8];
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF041B2C(a2, a3);
  a4();
  v80 = a1;
  if (!a7)
  {
    v79 = v19;
    v43 = a12;
    v44 = *(a1 + 328);
    *(a1 + 328) = a11;
    v45 = a11;

    v75 = a2;
    v76 = a9;
    if (a12 >> 62)
    {
LABEL_35:
      v46 = sub_1CF9E7818();
    }

    else
    {
      v46 = *((a12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v47 = v43;
    swift_retain_n();
    v84 = v46;
    if (!v46)
    {
LABEL_24:
      v60 = v80;

      v85 = v47;
      v86 = MEMORY[0x1E69E7CC0];
      v87 = 1;
      v88 = a5;
      v89 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE00, &qword_1CF9FE720);
      v61 = *(type metadata accessor for SyncState() - 8);
      v62 = *(v61 + 72);
      v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1CF9FA440;
      v65 = (v64 + v63);
      v67 = *(v60 + 328);
      v66 = *(v60 + 336);
      *v65 = v67;
      v65[1] = v66;
      swift_storeEnumTagMultiPayload();
      v68 = v66;

      v69 = v67;
      *(v65 + v62) = [v75 domainVersion];
      swift_storeEnumTagMultiPayload();
      v77(&v85, v64);

      return;
    }

    v48 = 0;
    v82 = v43 & 0xFFFFFFFFFFFFFF8;
    v83 = v43 & 0xC000000000000001;
    v78 = v20 + 1;
    v81 = v43;
    while (1)
    {
      if (v83)
      {
        v50 = MEMORY[0x1D3869C30](v48, v47);
        v47 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      else
      {
        if (v48 >= *(v82 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        v50 = *(v47 + 8 * v48 + 32);
        v47 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_23;
        }
      }

      v20 = v50;
      v51 = [v20 extendedAttributes];
      if (v51)
      {
        v52 = v51;
        v53 = sub_1CF9E6638();

        v54 = v23;
        v55 = v80;

        v43 = sub_1CF045428(v53, v55);

        v23 = v54;

        v56 = sub_1CF9E6618();

        [v20 setExtendedAttributes_];
      }

      if ([v20 isFlattenedPackage])
      {
        v57 = [v20 filename];
        if (!v57)
        {
          __break(1u);
LABEL_37:
          type metadata accessor for FPXPCAutomaticErrorProxyTimeout(0);
          v85 = v48;
          sub_1CF9E80C8();
          __break(1u);
          return;
        }

        v58 = v57;
        v59 = [v57 stringByDeletingPathExtension];

        if (!v59)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v59 = sub_1CF9E6888();
        }

        [v20 setFilename_];

        sub_1CF9E5FA8();
        v43 = sub_1CF9E5F38();
        (*v78)(v23, v79);
        [v20 setContentType_];
      }

      ++v48;
      v49 = v47 == v84;
      v47 = v81;
      if (v49)
      {
        goto LABEL_24;
      }
    }
  }

  _s3__C4CodeOMa_1(0);
  v85 = -1002;
  v24 = a7;
  sub_1CF2F1F24(&qword_1EDEA3590, _s3__C4CodeOMa_1);
  if (sub_1CF9E5658())
  {
    if (qword_1EDEA5AD8 != -1)
    {
      swift_once();
    }

    v25 = qword_1EDEBB820;
    v26 = *algn_1EDEBB828;
    v27 = v80;
    v28 = *(v80 + 328);
    v29 = *(v80 + 336);
    *(v80 + 328) = qword_1EDEBB820;
    *(v27 + 336) = v26;
    v30 = v25;
    v31 = v26;

    v85 = a7;
    v86 = 0;
    v87 = 0;
    v88 = 0.0;
    v89 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE00, &qword_1CF9FE720);
    v32 = *(type metadata accessor for SyncState() - 8);
    v33 = *(v32 + 72);
    v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1CF9FA450;
    v36 = (v35 + v34);
    v37 = *(v27 + 328);
    v38 = *(v27 + 336);
    *v36 = v37;
    v36[1] = v38;
    swift_storeEnumTagMultiPayload();
    v39 = a7;
    v40 = v38;
    v41 = v37;
    v77(&v85, v35);

    v42 = a7;
  }

  else
  {
    v48 = *(a10 + OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_timeoutState);
    if (v48)
    {
      if (v48 == 1)
      {
        sub_1CF2F462C();
        v71 = swift_allocError();
        *v70 = 0;
        *(v70 + 8) = 0;
        v72 = -2;
      }

      else
      {
        if (v48 != 2)
        {
          goto LABEL_37;
        }

        sub_1CF2F462C();
        v71 = swift_allocError();
        *v70 = 0;
        *(v70 + 8) = 0;
        v72 = -3;
      }

      *(v70 + 16) = v72;
    }

    else
    {
      v73 = a7;
      v71 = a7;
    }

    v85 = v71;
    v86 = 0;
    v87 = 0;
    v88 = 0.0;
    v89 = 1;
    v77(&v85, MEMORY[0x1E69E7CC0]);

    v42 = v71;
  }
}

uint64_t sub_1CF2EC58C(char a1)
{
  v2 = v1;
  v27 = sub_1CF9E63D8();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v15 = *(v2 + 168);
  v28 = *(v2 + 160);
  v16 = sub_1CF9E6448();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v14, 1, 1, v16);
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  *(v18 + 24) = a1 & 1;

  v19 = fpfs_current_log();
  v20 = *(v15 + 16);
  sub_1CEFCCBDC(v14, v11, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    sub_1CEFCCC44(v11, &unk_1EC4BE370, qword_1CFA01B30);
    v21 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    sub_1CF9E6438();
    (*(v17 + 8))(v11, v16);
    v21 = sub_1CF9E63C8();
    (*(v4 + 8))(v7, v27);
  }

  v22 = swift_allocObject();
  v22[2] = v19;
  v22[3] = sub_1CF2F42CC;
  v22[4] = v18;
  v33 = sub_1CEFCA438;
  v34 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1CEFCA444;
  v32 = &block_descriptor_10;
  v23 = _Block_copy(&aBlock);
  v24 = v19;

  v33 = nullsub_1;
  v34 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1CEFCA444;
  v32 = &block_descriptor_110;
  v25 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v20, v28, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v21, v23, v25);
  _Block_release(v25);
  _Block_release(v23);

  return sub_1CEFCCC44(v14, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF2EC968(uint64_t a1, char a2)
{
  v4 = sub_1CF9E6388();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v66 = (&v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v60 - v9);
  v71 = sub_1CF9E6498();
  v65 = *(v71 - 8);
  v11 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v63 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v60 - v14;
  v15 = sub_1CF9E6448();
  v69 = *(v15 - 8);
  v70 = v15;
  v16 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v68 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CF9E73D8();
  v67 = *(v18 - 8);
  v19 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1CF9E6118();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 192) = a2 & 1;
  *(a1 + 208) = 0;
  if ((a2 & 1) == 0)
  {
    if (*(a1 + 200))
    {
      v27 = *(a1 + 200);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1CF9E7418();
      swift_unknownObjectRelease();
      v28 = *(a1 + 200);
    }

    *(a1 + 200) = 0;

    swift_unknownObjectRelease();
    return;
  }

  swift_beginAccess();
  if (!*(*(a1 + 184) + 16))
  {
    return;
  }

  v60 = v5;
  v29 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v30 = sub_1CF9E6108();
  v31 = sub_1CF9E7288();
  v32 = os_log_type_enabled(v30, v31);
  v61 = v4;
  if (v32)
  {
    v33 = swift_slowAlloc();
    *v33 = 134349056;
    *(v33 + 4) = *(*(a1 + 184) + 16);

    _os_log_impl(&dword_1CEFC7000, v30, v31, "interrupting %{public}ld uploads", v33, 0xCu);
    MEMORY[0x1D386CDC0](v33, -1, -1);
  }

  else
  {
  }

  (*(v23 + 8))(v26, v22);
  v62 = a1;
  v34 = *(a1 + 184);
  v35 = 1 << *(v34 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v34 + 64);
  v38 = (v35 + 63) >> 6;
  v39 = *(a1 + 184);

  v40 = 0;
  if (v37)
  {
    while (1)
    {
      v41 = v40;
LABEL_19:
      v42 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      [*(*(v34 + 56) + ((v41 << 9) | (8 * v42))) cancel];
      if (!v37)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
LABEL_15:
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v41 >= v38)
    {
      break;
    }

    v37 = *(v34 + 64 + 8 * v41);
    ++v40;
    if (v37)
    {
      v40 = v41;
      goto LABEL_19;
    }
  }

  sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v43 = *(v62 + 160);
  v72 = MEMORY[0x1E69E7CC0];
  sub_1CF2F1F24(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CF9E77B8();
  v44 = sub_1CF9E73E8();
  (*(v67 + 8))(v21, v18);
  ObjectType = swift_getObjectType();
  v46 = swift_allocObject();
  swift_weakInit();

  v47 = v68;
  sub_1CF042F9C();
  sub_1CEFD5828(0, v47, sub_1CF2F42D8, v46);

  (*(v69 + 8))(v47, v70);

  v48 = [objc_opt_self() defaultStore];
  [v48 upcallExcutionTimeLimitProgressCancellationGracePeriod];
  v50 = v49;
  v51 = v49;

  if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v50 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v50 < 9.22337204e18)
  {
    v52 = v63;
    sub_1CF9E6478();
    *v10 = v50;
    v54 = v60;
    v53 = v61;
    (*(v60 + 104))(v10, *MEMORY[0x1E69E7F48], v61);
    v55 = v64;
    MEMORY[0x1D3868740](v52, v10);
    v56 = *(v54 + 8);
    v56(v10, v53);
    v57 = *(v65 + 8);
    v57(v52, v71);
    sub_1CEFD5B64(v10);
    v58 = v66;
    sub_1CEFD5BD8(v66);
    MEMORY[0x1D3869770](v55, v10, v58, ObjectType);
    v56(v58, v53);
    v56(v10, v53);
    v57(v55, v71);
    sub_1CF9E7428();
    v59 = *(v62 + 200);
    *(v62 + 200) = v44;
    swift_unknownObjectRelease();
    return;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_1CF2ED1AC()
{
  v0 = sub_1CF9E6118();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v25[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    if (*(*(v6 + 184) + 16))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        v9 = [Strong session];

        v25[0] = 0;
        v25[1] = 0xE000000000000000;
        sub_1CF9E7948();

        v25[5] = 0x207364616F6C7075;
        v25[6] = 0xEB0000000020666FLL;
        v10 = *(v6 + 184);
        v11 = *(v10 + 16);
        if (v11)
        {
          v24 = v9;
          v12 = sub_1CF1F8AC0(v11, 0);
          v13 = sub_1CF1F9918(v25, v12 + 4, v11, v10);

          result = sub_1CEFCB59C();
          if (v13 != v11)
          {
            __break(1u);
            return result;
          }

          v9 = v24;
        }

        else
        {
          v12 = MEMORY[0x1E69E7CC0];
        }

        type metadata accessor for NSFileProviderItemIdentifier(0);
        v19 = MEMORY[0x1D3868FE0](v12, v18);
        v21 = v20;

        MEMORY[0x1D3868CC0](v19, v21);

        MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA3E420);
        v22 = sub_1CF9E6888();

        [v9 terminateWithReason_];

        swift_unknownObjectRelease();
      }

      *(v6 + 208) = 1;
      if (!*(v6 + 200))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v14 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v15 = sub_1CF9E6108();
      v16 = sub_1CF9E7288();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1CEFC7000, v15, v16, "all the uploads completed in time", v17, 2u);
        MEMORY[0x1D386CDC0](v17, -1, -1);
      }

      (*(v1 + 8))(v4, v0);
      if (!*(v6 + 200))
      {
        goto LABEL_15;
      }
    }

    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
    v23 = *(v6 + 200);
LABEL_15:
    *(v6 + 200) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1CF2ED518()
{
  MEMORY[0x1D386CEF0](v0 + 152);

  v1 = *(v0 + 168);

  v2 = *(v0 + 176);

  v3 = *(v0 + 184);

  v4 = *(v0 + 200);
  swift_unknownObjectRelease();
  v5 = *(v0 + 224);
  sub_1CEFF7124(*(v0 + 216));
  sub_1CF2F4268(*(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264));

  sub_1CF00D644(*(v0 + 288));
  sub_1CF24D114(*(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320));
  v6 = *(v0 + 336);
}

void *sub_1CF2ED5B8()
{
  v0 = sub_1CF2D0000(sub_1CF045404, sub_1CF045404, sub_1CF045404, sub_1CF045404);
  MEMORY[0x1D386CEF0](v0 + 19);

  v1 = v0[21];

  v2 = v0[22];

  v3 = v0[23];

  v4 = v0[25];
  swift_unknownObjectRelease();
  v5 = v0[28];
  sub_1CEFF7124(v0[27]);
  sub_1CF2F4268(v0[29], v0[30], v0[31], v0[32], v0[33]);

  sub_1CF00D644(v0[36]);
  sub_1CF24D114(v0[37], v0[38], v0[39], v0[40]);
  v6 = v0[42];

  return v0;
}

uint64_t sub_1CF2ED6A0()
{
  sub_1CF2ED5B8();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF2ED78C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = swift_allocObject();
  *(v11 + 16) = a5;
  *(v11 + 24) = a6;

  sub_1CF2F1774(v10, a2, a3, sub_1CEFF9944, v11);
}

void sub_1CF2ED860(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = FPNotSupportedError();
  a3();
}

uint64_t sub_1CF2ED934(void **a1, int a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  v13 = swift_allocObject();
  *(v13 + 16) = a6;
  *(v13 + 24) = a7;

  sub_1CF2E752C(v12, a2, a3, a4, v14, sub_1CF2F470C, v13);
}

void sub_1CF2ED9E4(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v4 = sub_1CF9E5248();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1CF9E5268();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5108();
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF2F1F24(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
  sub_1CF9E57D8();
  v11 = sub_1CF9E50D8();
  (*(v7 + 8))(v10, v6);
  a3(v11);
}

id sub_1CF2EDD40(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1CF2EDE18(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1CF2CA194();
  v9 = swift_allocError();
  v10 = 1;
  a1(&v9);
  v5 = v9;
  v6 = v10;

  return a4(v5, v6);
}

uint64_t sub_1CF2EDEAC(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v13 - v10);
  sub_1CF2CA194();
  *v11 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  a1(v11);
  return sub_1CEFCCC44(v11, a4, a5);
}

void sub_1CF2EDF84(void (*a1)(id *), uint64_t a2, uint64_t a3, void (*a4)(id))
{
  sub_1CF2CA194();
  v6 = swift_allocError();
  v7 = 1;
  a1(&v6);
  sub_1CF2F6458(v6, v7, a4);
}

void sub_1CF2EE050(void (*a1)(void *))
{
  sub_1CF2CA194();
  v6[0] = swift_allocError();
  v8 = 1;
  a1(v6);
  v2 = v6[0];
  v3 = v6[1];
  v4 = v8;
  v5 = v7;

  sub_1CF2F63CC(v2, v3, v5, v4);
}

uint64_t sub_1CF2EE0CC(void (*a1)(_OWORD *))
{
  sub_1CF2CA194();
  *&v3[0] = swift_allocError();
  v4[24] = 1;
  a1(v3);
  v5[2] = v3[2];
  v6[0] = *v4;
  *(v6 + 9) = *&v4[9];
  v5[0] = v3[0];
  v5[1] = v3[1];
  return sub_1CEFCCC44(v5, &qword_1EC4BF2B8, &qword_1CFA01BB0);
}

uint64_t sub_1CF2EE15C(void (*a1)(_OWORD *))
{
  sub_1CF2CA194();
  *&v3[0] = swift_allocError();
  v4 = 1;
  a1(v3);
  v5[4] = v3[4];
  v5[5] = v3[5];
  v6 = v4;
  v5[0] = v3[0];
  v5[1] = v3[1];
  v5[2] = v3[2];
  v5[3] = v3[3];
  return sub_1CEFCCC44(v5, &unk_1EC4BF2A0, &unk_1CFA01B90);
}

void sub_1CF2EE20C(void (*a1)(void *))
{
  sub_1CF2CA194();
  v5[0] = swift_allocError();
  v6 = 1;
  a1(v5);
  v2 = v5[0];
  v3 = v5[1];
  v4 = v6;

  sub_1CF2F47A4(v2, v3, v4);
}

void sub_1CF2EE284(void (*a1)(void *))
{
  sub_1CF2CA194();
  v7[0] = swift_allocError();
  v8 = 1;
  a1(v7);
  v2 = v7[0];
  v3 = v7[1];
  v4 = v7[2];
  v5 = v7[3];
  v6 = v8;

  sub_1CF060D50(v2, v3, v4, v5, v6);
}

uint64_t sub_1CF2EE300@<X0>(uint64_t a1@<X0>, int a2@<W1>, void (*a3)(uint64_t, void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v6;
  v116 = a4;
  v117 = a3;
  v113 = a5;
  v145 = *MEMORY[0x1E69E9840];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v114 = (&v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v112 = (&v111 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v119 = (&v111 - v16);
  v125 = sub_1CF9E53C8();
  v17 = *(v125 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v5;
  v126 = (v5 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle);
  swift_beginAccess();
  v20 = a2;
  v122 = *MEMORY[0x1E696AA08];
  v123 = (v17 + 8);
  v21 = 1000;
  v121 = xmmword_1CF9FA450;
  LODWORD(v127) = v20;
  v118 = v10;
  while (1)
  {
    v134 = -1;
    v22 = *(a1 + 16);
    v23 = *(a1 + 24);
    v24 = *(a1 + 32);
    v25 = *(a1 + 36);
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    v28 = *(v126 + 2);
    MEMORY[0x1EEE9AC00](&v141);
    *(&v111 - 4) = v28;
    *(&v111 - 3) = v35;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0;
    *&v141 = v31;
    *(&v141 + 1) = v32;
    v142 = __PAIR64__(v34, v33);
    if (!v27)
    {
      *&v137 = v31;
      *(&v137 + 1) = v32;
      v138 = __PAIR64__(v34, v33);
      v139 = 0;
      v140 = 0;
      LODWORD(v130[0]) = v30;
      v46 = fpfs_openfdbyhandle();
      if ((v46 & 0x80000000) == 0)
      {
        v81 = v46;

        v80 = v116;
        v79 = v115;
        goto LABEL_49;
      }

      v47 = v130[0];
      v48 = MEMORY[0x1D38683F0]();
      if (v47 < 0)
      {
        LODWORD(v135) = 0;
        BYTE4(v135) = 1;
        BYTE8(v136[1]) = 0;
        if (v48)
        {
          v49 = sub_1CF9E6138();
          if ((v49 & 0x100000000) == 0)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        LODWORD(v135) = v130[0];
        BYTE4(v135) = 0;
        BYTE8(v136[1]) = 0;
        if (v48)
        {
          v49 = sub_1CF9E6138();
          if ((v49 & 0x100000000) == 0)
          {
LABEL_23:
            v131 = v49;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
            inited = swift_initStackObject();
            *(inited + 16) = v121;
            *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            *(inited + 40) = v54;
            *(inited + 72) = &type metadata for VFSFileError;
            v55 = swift_allocObject();
            *(inited + 48) = v55;
            sub_1CF19A730(&v135, v55 + 16);
            sub_1CF4E04E8(inited);
            swift_setDeallocating();
            sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
            sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
            v56 = v124;
            v57 = v125;
            sub_1CF9E57D8();
            v58 = sub_1CF9E53A8();
            (*v123)(v56, v57);
            sub_1CF1969CC(&v135);
LABEL_25:
            swift_willThrow();

            goto LABEL_36;
          }
        }
      }

      sub_1CEFDB034();
      v58 = swift_allocError();
      v59 = *(v136 + 9);
      v60 = v136[0];
      *v61 = v135;
      v61[1] = v60;
      *(v61 + 25) = v59;
      goto LABEL_25;
    }

    MEMORY[0x1EEE9AC00](v29);
    *(&v111 - 4) = v37;
    *(&v111 - 3) = sub_1CF2F6700;
    *(&v111 - 2) = v38;
    if ((v27 & 0x1000000000000000) != 0)
    {
      goto LABEL_42;
    }

    if ((v27 & 0x2000000000000000) != 0)
    {
      break;
    }

    if ((v26 & 0x1000000000000000) == 0)
    {
LABEL_42:

      sub_1CF9E7938();
      v58 = v7;
      if (!v7)
      {

        goto LABEL_47;
      }

      goto LABEL_35;
    }

    v143 = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v137 = v141;
    v138 = v142;
    v139 = v143;
    v140 = v144;
    LODWORD(v130[0]) = v36;

    v39 = fpfs_openfdbyhandle();
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    v40 = v130[0];
    v41 = MEMORY[0x1D38683F0]();
    if ((v40 & 0x80000000) == 0)
    {
      LODWORD(v135) = v130[0];
      BYTE4(v135) = 0;
      BYTE8(v136[1]) = 0;
      if (!v41)
      {
        goto LABEL_33;
      }

      v42 = sub_1CF9E6138();
      if ((v42 & 0x100000000) != 0)
      {
        goto LABEL_33;
      }

      v129 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
      v43 = swift_initStackObject();
      *(v43 + 16) = v121;
      *(v43 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(v43 + 40) = v44;
      *(v43 + 72) = &type metadata for VFSFileError;
      v45 = swift_allocObject();
      *(v43 + 48) = v45;
      sub_1CF19A730(&v135, v45 + 16);
      sub_1CF4E04E8(v43);
      swift_setDeallocating();
      sub_1CEFCCC44(v43 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
      sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
LABEL_29:
      LODWORD(v120) = v21;
      v65 = v124;
      v66 = v125;
      sub_1CF9E57D8();
      v58 = sub_1CF9E53A8();
      v21 = v120;
      (*v123)(v65, v66);
      goto LABEL_34;
    }

    LODWORD(v135) = 0;
    BYTE4(v135) = 1;
    BYTE8(v136[1]) = 0;
    if (!v41)
    {
      goto LABEL_33;
    }

    v67 = sub_1CF9E6138();
    if ((v67 & 0x100000000) != 0)
    {
      goto LABEL_33;
    }

    v129 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v68 = swift_allocObject();
    *(v68 + 16) = v121;
    *(v68 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v68 + 40) = v69;
    *(v68 + 72) = &type metadata for VFSFileError;
    v70 = swift_allocObject();
    *(v68 + 48) = v70;
    sub_1CF19A730(&v135, v70 + 16);
    sub_1CF4E04E8(v68);
    swift_setDeallocating();
    sub_1CEFCCC44(v68 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    v120 = &v111;
    v71 = v124;
    v72 = v125;
    sub_1CF9E57D8();
    v58 = sub_1CF9E53A8();
    (*v123)(v71, v72);
LABEL_34:
    sub_1CF1969CC(&v135);
    swift_willThrow();
LABEL_35:

LABEL_36:
    v7 = 0;
    v74 = v58;
    LODWORD(v135) = sub_1CF9E5298();
    sub_1CF196978();
    v75 = sub_1CF9E5658();

    if ((v75 & 1) == 0)
    {
      v77 = v58;
      LODWORD(v135) = sub_1CF9E5328();
      v78 = sub_1CF9E5658();

      if (v78)
      {

        v117(0xFFFFFFFFLL, 0, 0, 0);
        goto LABEL_57;
      }

LABEL_54:
      result = v134;
      if ((v134 & 0x80000000) != 0)
      {
        goto LABEL_59;
      }

      goto LABEL_58;
    }

    usleep(v21);
    if (2 * v21 >= 0xF4240)
    {
      v21 = 1000000;
    }

    else
    {
      v21 *= 2;
    }

    if ((v134 & 0x80000000) == 0)
    {
      close(v134);
    }
  }

  v130[0] = v26;
  v130[1] = v27 & 0xFFFFFFFFFFFFFFLL;
  v143 = v130;
  v137 = v141;
  v138 = v142;
  v139 = v130;
  v140 = v144;
  v129 = v36;

  v39 = fpfs_openfdbyhandle();
  if ((v39 & 0x80000000) != 0)
  {
    v50 = v129;
    v51 = MEMORY[0x1D38683F0]();
    if (v50 < 0)
    {
      LODWORD(v135) = 0;
      BYTE4(v135) = 1;
      BYTE8(v136[1]) = 0;
      if (!v51 || (v52 = sub_1CF9E6138(), (v52 & 0x100000000) != 0))
      {
LABEL_33:
        sub_1CEFDB034();
        v58 = swift_allocError();
        sub_1CF19A730(&v135, v73);
        goto LABEL_34;
      }
    }

    else
    {
      LODWORD(v135) = v129;
      BYTE4(v135) = 0;
      BYTE8(v136[1]) = 0;
      if (!v51)
      {
        goto LABEL_33;
      }

      v52 = sub_1CF9E6138();
      if ((v52 & 0x100000000) != 0)
      {
        goto LABEL_33;
      }
    }

    v128 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v62 = swift_initStackObject();
    *(v62 + 16) = v121;
    *(v62 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v62 + 40) = v63;
    *(v62 + 72) = &type metadata for VFSFileError;
    v64 = swift_allocObject();
    *(v62 + 48) = v64;
    sub_1CF19A730(&v135, v64 + 16);
    sub_1CF4E04E8(v62);
    swift_setDeallocating();
    sub_1CEFCCC44(v62 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    goto LABEL_29;
  }

LABEL_46:
  v131 = v39;

LABEL_47:
  v79 = v115;
  v80 = v116;
  v81 = v131;
LABEL_49:
  LODWORD(v127) = v81;
  v126 = &v111;
  v82 = (v79 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext);
  v83 = *(v82 + 26);
  v84 = *(v82 + 25);
  v85 = *(v82 + 24);
  v86 = *v82;
  v87 = v82[1];
  v134 = v81;
  v88 = v82[2];
  MEMORY[0x1EEE9AC00](v76);
  *(&v111 - 4) = &v134;
  *(&v111 - 3) = v89;
  *(&v111 - 2) = v80;
  *&v136[1] = v90;
  *(&v136[1] + 1) = v87;
  *&v135 = v91;
  *(&v135 + 1) = 1107296256;
  *&v136[0] = v92;
  *(&v136[0] + 1) = &block_descriptor_870;
  v93 = _Block_copy(&v135);
  v125 = v87;
  swift_retain_n();

  v124 = v93;
  *&v141 = v93;
  *(&v141 + 1) = v88;
  LOBYTE(v142) = v85;
  BYTE1(v142) = v84;
  BYTE2(v142) = v83;
  sub_1CEFDB034();
  v94 = swift_allocError();
  *v95 = 6;
  *(v95 + 8) = 0u;
  *(v95 + 24) = 0u;
  *(v95 + 40) = 19;
  v96 = v119;
  *v119 = v94;
  swift_storeEnumTagMultiPayload();
  v97 = swift_allocObject();
  *(v97 + 16) = v96;
  *(v97 + 24) = sub_1CF2F4C14;
  *(v97 + 32) = &v111 - 6;
  v98 = swift_allocObject();
  *(v98 + 16) = sub_1CF2F644C;
  *(v98 + 24) = v97;
  v123 = v97;
  *&v136[1] = sub_1CF1DBD5C;
  *(&v136[1] + 1) = v98;
  *&v135 = MEMORY[0x1E69E9820];
  *(&v135 + 1) = 1107296256;
  *&v136[0] = sub_1CEFDB270;
  *(&v136[0] + 1) = &block_descriptor_880;
  v99 = _Block_copy(&v135);

  v100 = fpfs_fgetfileattrs_detailed();
  _Block_release(v99);
  LOBYTE(v97) = swift_isEscapingClosureAtFileLocation();

  if (v97)
  {
    __break(1u);
  }

  v101 = v119;
  if (v100)
  {
    swift_getErrorValue();
    v102 = v133;
    v127 = v132;
    v103 = swift_allocError();
    *v104 = 6;
    *(v104 + 8) = 0u;
    *(v104 + 24) = 0u;
    *(v104 + 40) = 19;
    v105 = v100;
    v106 = sub_1CF199074(v103, v102);

    v107 = v112;
    *v112 = v106;
    swift_storeEnumTagMultiPayload();
    sub_1CEFDA9E0(v107, v101, &unk_1EC4BF310, &unk_1CF9FDB30);
  }

  v108 = v114;
  sub_1CEFCCBDC(v101, v114, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v135 = *v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();

    sub_1CEFCCC44(v101, &unk_1EC4BF310, &unk_1CF9FDB30);

    _Block_release(v124);

    goto LABEL_54;
  }

  sub_1CEFE55D0(v108, v113, &unk_1EC4BEC00, &unk_1CF9FCB60);
  sub_1CEFCCC44(v101, &unk_1EC4BF310, &unk_1CF9FDB30);

  _Block_release(v124);

LABEL_57:
  result = v134;
  if ((v134 & 0x80000000) != 0)
  {
    goto LABEL_59;
  }

LABEL_58:
  result = close(result);
LABEL_59:
  v110 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF2EF290@<X0>(uint64_t a1@<X0>, int a2@<W1>, void (*a3)(uint64_t, void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v6;
  v103 = a4;
  v104 = a3;
  v101 = a5;
  v129 = *MEMORY[0x1E69E9840];
  v110 = sub_1CF9E53C8();
  v10 = *(v110 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v5;
  v111 = (v5 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle);
  swift_beginAccess();
  v106 = *MEMORY[0x1E696AA08];
  v107 = (v10 + 8);
  v13 = 1000;
  v105 = xmmword_1CF9FA450;
  v108 = a2;
  while (1)
  {
    v118 = -1;
    v14 = *(a1 + 16);
    v15 = *(a1 + 24);
    v16 = *(a1 + 32);
    v17 = *(a1 + 36);
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v20 = *(v111 + 2);
    MEMORY[0x1EEE9AC00](&v125);
    *(&v101 - 4) = v20;
    *(&v101 - 3) = a2;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *&v125 = v23;
    *(&v125 + 1) = v24;
    v126 = __PAIR64__(v26, v25);
    if (!v19)
    {
      *&v121 = v23;
      *(&v121 + 1) = v24;
      v122 = __PAIR64__(v26, v25);
      v123 = 0;
      v124 = 0;
      LODWORD(v115[0]) = v22;
      v37 = fpfs_openfdbyhandle();
      if ((v37 & 0x80000000) == 0)
      {
        v72 = v37;

        v71 = v103;
        v70 = v102;
        goto LABEL_50;
      }

      v38 = v115[0];
      v39 = MEMORY[0x1D38683F0]();
      if (v38 < 0)
      {
        LODWORD(v119) = 0;
        BYTE4(v119) = 1;
        BYTE8(v120[1]) = 0;
        if (v39)
        {
          v40 = sub_1CF9E6138();
          if ((v40 & 0x100000000) == 0)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        LODWORD(v119) = v115[0];
        BYTE4(v119) = 0;
        BYTE8(v120[1]) = 0;
        if (v39)
        {
          v40 = sub_1CF9E6138();
          if ((v40 & 0x100000000) == 0)
          {
LABEL_23:
            v116 = v40;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
            inited = swift_initStackObject();
            *(inited + 16) = v105;
            *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            *(inited + 40) = v45;
            *(inited + 72) = &type metadata for VFSFileError;
            v46 = swift_allocObject();
            *(inited + 48) = v46;
            sub_1CF19A730(&v119, v46 + 16);
            sub_1CF4E04E8(inited);
            swift_setDeallocating();
            sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
            sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
            v48 = v109;
            v47 = v110;
            sub_1CF9E57D8();
            v49 = sub_1CF9E53A8();
            v50 = v48;
            a2 = v108;
            (*v107)(v50, v47);
            sub_1CF1969CC(&v119);
LABEL_25:
            swift_willThrow();

            v7 = 0;
            goto LABEL_37;
          }
        }
      }

      sub_1CEFDB034();
      v49 = swift_allocError();
      v51 = *(v120 + 9);
      v52 = v120[0];
      *v53 = v119;
      v53[1] = v52;
      *(v53 + 25) = v51;
      goto LABEL_25;
    }

    v112 = &v101;
    MEMORY[0x1EEE9AC00](v21);
    *(&v101 - 4) = v28;
    *(&v101 - 3) = sub_1CF19BDC4;
    *(&v101 - 2) = v29;
    if ((v19 & 0x1000000000000000) != 0)
    {
      goto LABEL_43;
    }

    if ((v19 & 0x2000000000000000) == 0)
    {
      if ((v18 & 0x1000000000000000) == 0)
      {
LABEL_43:

        sub_1CF9E7938();
        v49 = v7;
        if (!v7)
        {

          goto LABEL_48;
        }

        goto LABEL_36;
      }

      v127 = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v121 = v125;
      v122 = v126;
      v123 = v127;
      v124 = v128;
      LODWORD(v115[0]) = v27;

      v30 = fpfs_openfdbyhandle();
      if ((v30 & 0x80000000) == 0)
      {
        break;
      }

      v31 = v115[0];
      v32 = MEMORY[0x1D38683F0]();
      if (v31 < 0)
      {
        LODWORD(v119) = 0;
        BYTE4(v119) = 1;
        BYTE8(v120[1]) = 0;
        if (!v32)
        {
          goto LABEL_34;
        }

        v57 = sub_1CF9E6138();
        if ((v57 & 0x100000000) != 0)
        {
          goto LABEL_34;
        }

        v114 = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
        v58 = swift_allocObject();
        *(v58 + 16) = v105;
        *(v58 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        *(v58 + 40) = v59;
        *(v58 + 72) = &type metadata for VFSFileError;
        v60 = swift_allocObject();
        *(v58 + 48) = v60;
        sub_1CF19A730(&v119, v60 + 16);
        sub_1CF4E04E8(v58);
        swift_setDeallocating();
        sub_1CEFCCC44(v58 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
        swift_deallocClassInstance();
      }

      else
      {
        LODWORD(v119) = v115[0];
        BYTE4(v119) = 0;
        BYTE8(v120[1]) = 0;
        if (!v32)
        {
          goto LABEL_34;
        }

        v33 = sub_1CF9E6138();
        if ((v33 & 0x100000000) != 0)
        {
          goto LABEL_34;
        }

        v114 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
        v34 = swift_initStackObject();
        *(v34 + 16) = v105;
        *(v34 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        *(v34 + 40) = v35;
        *(v34 + 72) = &type metadata for VFSFileError;
        v36 = swift_allocObject();
        *(v34 + 48) = v36;
        sub_1CF19A730(&v119, v36 + 16);
        sub_1CF4E04E8(v34);
        swift_setDeallocating();
        sub_1CEFCCC44(v34 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
      }

      sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      goto LABEL_33;
    }

    v115[0] = v18;
    v115[1] = v19 & 0xFFFFFFFFFFFFFFLL;
    v127 = v115;
    v121 = v125;
    v122 = v126;
    v123 = v115;
    v124 = v128;
    v114 = v27;

    v30 = fpfs_openfdbyhandle();
    if ((v30 & 0x80000000) == 0)
    {
      break;
    }

    v41 = v114;
    v42 = MEMORY[0x1D38683F0]();
    if (v41 < 0)
    {
      LODWORD(v119) = 0;
      BYTE4(v119) = 1;
      BYTE8(v120[1]) = 0;
      if (!v42 || (v43 = sub_1CF9E6138(), (v43 & 0x100000000) != 0))
      {
LABEL_34:
        sub_1CEFDB034();
        v49 = swift_allocError();
        sub_1CF19A730(&v119, v64);
        goto LABEL_35;
      }
    }

    else
    {
      LODWORD(v119) = v114;
      BYTE4(v119) = 0;
      BYTE8(v120[1]) = 0;
      if (!v42)
      {
        goto LABEL_34;
      }

      v43 = sub_1CF9E6138();
      if ((v43 & 0x100000000) != 0)
      {
        goto LABEL_34;
      }
    }

    v113 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v54 = swift_initStackObject();
    *(v54 + 16) = v105;
    *(v54 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v54 + 40) = v55;
    *(v54 + 72) = &type metadata for VFSFileError;
    v56 = swift_allocObject();
    *(v54 + 48) = v56;
    sub_1CF19A730(&v119, v56 + 16);
    sub_1CF4E04E8(v54);
    swift_setDeallocating();
    sub_1CEFCCC44(v54 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
LABEL_33:
    v62 = v109;
    v61 = v110;
    sub_1CF9E57D8();
    v49 = sub_1CF9E53A8();
    v63 = v62;
    a2 = v108;
    (*v107)(v63, v61);
LABEL_35:
    sub_1CF1969CC(&v119);
    swift_willThrow();
LABEL_36:

    v7 = 0;
LABEL_37:
    v65 = v49;
    LODWORD(v119) = sub_1CF9E5298();
    sub_1CF196978();
    v66 = sub_1CF9E5658();

    if ((v66 & 1) == 0)
    {
      v68 = v49;
      LODWORD(v119) = sub_1CF9E5328();
      v69 = sub_1CF9E5658();

      if (v69)
      {

        v104(0xFFFFFFFFLL, 0, 0, 0);
        goto LABEL_58;
      }

LABEL_55:
      result = v118;
      if ((v118 & 0x80000000) != 0)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }

    usleep(v13);
    if (2 * v13 >= 0xF4240)
    {
      v13 = 1000000;
    }

    else
    {
      v13 *= 2;
    }

    if ((v118 & 0x80000000) == 0)
    {
      close(v118);
    }
  }

  v116 = v30;

LABEL_48:
  v70 = v102;
  v71 = v103;
  v72 = v116;
LABEL_50:
  LODWORD(v112) = v72;
  v111 = &v101;
  v73 = (v70 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext);
  v74 = *(v73 + 26);
  v75 = *(v73 + 25);
  v76 = *(v73 + 24);
  v77 = *v73;
  v78 = v73[1];
  v118 = v72;
  v79 = v73[2];
  MEMORY[0x1EEE9AC00](v67);
  *(&v101 - 4) = &v118;
  *(&v101 - 3) = v80;
  *(&v101 - 2) = v71;
  *&v120[1] = v81;
  *(&v120[1] + 1) = v78;
  *&v119 = v82;
  *(&v119 + 1) = 1107296256;
  *&v120[0] = v83;
  *(&v120[0] + 1) = &block_descriptor_312;
  v84 = _Block_copy(&v119);
  v110 = v78;
  swift_retain_n();

  v109 = v84;
  *&v125 = v84;
  *(&v125 + 1) = v79;
  LOBYTE(v126) = v76;
  BYTE1(v126) = v75;
  BYTE2(v126) = v74;
  sub_1CEFDB034();
  v85 = swift_allocError();
  *v86 = 6;
  *(v86 + 8) = 0u;
  *(v86 + 24) = 0u;
  *(v86 + 40) = 19;
  *&v121 = v85;
  BYTE8(v121) = 1;
  v87 = swift_allocObject();
  v87[2] = &v121;
  v87[3] = sub_1CF2F4C14;
  v87[4] = &v101 - 6;
  v88 = swift_allocObject();
  *(v88 + 16) = sub_1CF2B1B94;
  *(v88 + 24) = v87;
  *&v120[1] = sub_1CEFDB240;
  *(&v120[1] + 1) = v88;
  *&v119 = MEMORY[0x1E69E9820];
  *(&v119 + 1) = 1107296256;
  *&v120[0] = sub_1CEFDB270;
  *(&v120[0] + 1) = &block_descriptor_321_0;
  v89 = _Block_copy(&v119);

  v90 = fpfs_fgetfileattrs_detailed();
  _Block_release(v89);
  LOBYTE(v89) = swift_isEscapingClosureAtFileLocation();

  if (v89)
  {
    __break(1u);
  }

  if (v90)
  {
    swift_getErrorValue();
    v91 = v117;
    v92 = swift_allocError();
    *v93 = 6;
    *(v93 + 8) = 0u;
    *(v93 + 24) = 0u;
    *(v93 + 40) = 19;
    v94 = v90;
    v95 = sub_1CF199074(v92, v91);

    v96 = v121;
    v97 = BYTE8(v121);
    *&v121 = v95;
    BYTE8(v121) = 1;
    sub_1CF0BA6EC(v96, v97);
  }

  if (BYTE8(v121))
  {
    *&v119 = v121;
    v98 = v121;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();

    sub_1CF0BA6EC(v121, SBYTE8(v121));

    _Block_release(v109);

    goto LABEL_55;
  }

  sub_1CF0BA6EC(v121, SBYTE8(v121));

  _Block_release(v109);

LABEL_58:
  result = v118;
  if ((v118 & 0x80000000) != 0)
  {
    goto LABEL_60;
  }

LABEL_59:
  result = close(result);
LABEL_60:
  v100 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF2F005C@<X0>(uint64_t a1@<X0>, int a2@<W1>, void (*a3)(uint64_t, void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v6;
  v116 = a4;
  v117 = a3;
  v113 = a5;
  v145 = *MEMORY[0x1E69E9840];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v114 = (&v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v112 = (&v111 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v119 = (&v111 - v16);
  v125 = sub_1CF9E53C8();
  v17 = *(v125 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v5;
  v126 = (v5 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle);
  swift_beginAccess();
  v20 = a2;
  v122 = *MEMORY[0x1E696AA08];
  v123 = (v17 + 8);
  v21 = 1000;
  v121 = xmmword_1CF9FA450;
  LODWORD(v127) = v20;
  v118 = v10;
  while (1)
  {
    v134 = -1;
    v22 = *(a1 + 16);
    v23 = *(a1 + 24);
    v24 = *(a1 + 32);
    v25 = *(a1 + 36);
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    v28 = *(v126 + 2);
    MEMORY[0x1EEE9AC00](&v141);
    *(&v111 - 4) = v28;
    *(&v111 - 3) = v35;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0;
    *&v141 = v31;
    *(&v141 + 1) = v32;
    v142 = __PAIR64__(v34, v33);
    if (!v27)
    {
      *&v137 = v31;
      *(&v137 + 1) = v32;
      v138 = __PAIR64__(v34, v33);
      v139 = 0;
      v140 = 0;
      LODWORD(v130[0]) = v30;
      v46 = fpfs_openfdbyhandle();
      if ((v46 & 0x80000000) == 0)
      {
        v81 = v46;

        v80 = v116;
        v79 = v115;
        goto LABEL_49;
      }

      v47 = v130[0];
      v48 = MEMORY[0x1D38683F0]();
      if (v47 < 0)
      {
        LODWORD(v135) = 0;
        BYTE4(v135) = 1;
        BYTE8(v136[1]) = 0;
        if (v48)
        {
          v49 = sub_1CF9E6138();
          if ((v49 & 0x100000000) == 0)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        LODWORD(v135) = v130[0];
        BYTE4(v135) = 0;
        BYTE8(v136[1]) = 0;
        if (v48)
        {
          v49 = sub_1CF9E6138();
          if ((v49 & 0x100000000) == 0)
          {
LABEL_23:
            v131 = v49;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
            inited = swift_initStackObject();
            *(inited + 16) = v121;
            *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            *(inited + 40) = v54;
            *(inited + 72) = &type metadata for VFSFileError;
            v55 = swift_allocObject();
            *(inited + 48) = v55;
            sub_1CF19A730(&v135, v55 + 16);
            sub_1CF4E04E8(inited);
            swift_setDeallocating();
            sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
            sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
            v56 = v124;
            v57 = v125;
            sub_1CF9E57D8();
            v58 = sub_1CF9E53A8();
            (*v123)(v56, v57);
            sub_1CF1969CC(&v135);
LABEL_25:
            swift_willThrow();

            goto LABEL_36;
          }
        }
      }

      sub_1CEFDB034();
      v58 = swift_allocError();
      v59 = *(v136 + 9);
      v60 = v136[0];
      *v61 = v135;
      v61[1] = v60;
      *(v61 + 25) = v59;
      goto LABEL_25;
    }

    MEMORY[0x1EEE9AC00](v29);
    *(&v111 - 4) = v37;
    *(&v111 - 3) = sub_1CF2F6700;
    *(&v111 - 2) = v38;
    if ((v27 & 0x1000000000000000) != 0)
    {
      goto LABEL_42;
    }

    if ((v27 & 0x2000000000000000) != 0)
    {
      break;
    }

    if ((v26 & 0x1000000000000000) == 0)
    {
LABEL_42:

      sub_1CF9E7938();
      v58 = v7;
      if (!v7)
      {

        goto LABEL_47;
      }

      goto LABEL_35;
    }

    v143 = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v137 = v141;
    v138 = v142;
    v139 = v143;
    v140 = v144;
    LODWORD(v130[0]) = v36;

    v39 = fpfs_openfdbyhandle();
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    v40 = v130[0];
    v41 = MEMORY[0x1D38683F0]();
    if ((v40 & 0x80000000) == 0)
    {
      LODWORD(v135) = v130[0];
      BYTE4(v135) = 0;
      BYTE8(v136[1]) = 0;
      if (!v41)
      {
        goto LABEL_33;
      }

      v42 = sub_1CF9E6138();
      if ((v42 & 0x100000000) != 0)
      {
        goto LABEL_33;
      }

      v129 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
      v43 = swift_initStackObject();
      *(v43 + 16) = v121;
      *(v43 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(v43 + 40) = v44;
      *(v43 + 72) = &type metadata for VFSFileError;
      v45 = swift_allocObject();
      *(v43 + 48) = v45;
      sub_1CF19A730(&v135, v45 + 16);
      sub_1CF4E04E8(v43);
      swift_setDeallocating();
      sub_1CEFCCC44(v43 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
      sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
LABEL_29:
      LODWORD(v120) = v21;
      v65 = v124;
      v66 = v125;
      sub_1CF9E57D8();
      v58 = sub_1CF9E53A8();
      v21 = v120;
      (*v123)(v65, v66);
      goto LABEL_34;
    }

    LODWORD(v135) = 0;
    BYTE4(v135) = 1;
    BYTE8(v136[1]) = 0;
    if (!v41)
    {
      goto LABEL_33;
    }

    v67 = sub_1CF9E6138();
    if ((v67 & 0x100000000) != 0)
    {
      goto LABEL_33;
    }

    v129 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v68 = swift_allocObject();
    *(v68 + 16) = v121;
    *(v68 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v68 + 40) = v69;
    *(v68 + 72) = &type metadata for VFSFileError;
    v70 = swift_allocObject();
    *(v68 + 48) = v70;
    sub_1CF19A730(&v135, v70 + 16);
    sub_1CF4E04E8(v68);
    swift_setDeallocating();
    sub_1CEFCCC44(v68 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    v120 = &v111;
    v71 = v124;
    v72 = v125;
    sub_1CF9E57D8();
    v58 = sub_1CF9E53A8();
    (*v123)(v71, v72);
LABEL_34:
    sub_1CF1969CC(&v135);
    swift_willThrow();
LABEL_35:

LABEL_36:
    v7 = 0;
    v74 = v58;
    LODWORD(v135) = sub_1CF9E5298();
    sub_1CF196978();
    v75 = sub_1CF9E5658();

    if ((v75 & 1) == 0)
    {
      v77 = v58;
      LODWORD(v135) = sub_1CF9E5328();
      v78 = sub_1CF9E5658();

      if (v78)
      {

        v117(0xFFFFFFFFLL, 0, 0, 0);
        goto LABEL_57;
      }

LABEL_54:
      result = v134;
      if ((v134 & 0x80000000) != 0)
      {
        goto LABEL_59;
      }

      goto LABEL_58;
    }

    usleep(v21);
    if (2 * v21 >= 0xF4240)
    {
      v21 = 1000000;
    }

    else
    {
      v21 *= 2;
    }

    if ((v134 & 0x80000000) == 0)
    {
      close(v134);
    }
  }

  v130[0] = v26;
  v130[1] = v27 & 0xFFFFFFFFFFFFFFLL;
  v143 = v130;
  v137 = v141;
  v138 = v142;
  v139 = v130;
  v140 = v144;
  v129 = v36;

  v39 = fpfs_openfdbyhandle();
  if ((v39 & 0x80000000) != 0)
  {
    v50 = v129;
    v51 = MEMORY[0x1D38683F0]();
    if (v50 < 0)
    {
      LODWORD(v135) = 0;
      BYTE4(v135) = 1;
      BYTE8(v136[1]) = 0;
      if (!v51 || (v52 = sub_1CF9E6138(), (v52 & 0x100000000) != 0))
      {
LABEL_33:
        sub_1CEFDB034();
        v58 = swift_allocError();
        sub_1CF19A730(&v135, v73);
        goto LABEL_34;
      }
    }

    else
    {
      LODWORD(v135) = v129;
      BYTE4(v135) = 0;
      BYTE8(v136[1]) = 0;
      if (!v51)
      {
        goto LABEL_33;
      }

      v52 = sub_1CF9E6138();
      if ((v52 & 0x100000000) != 0)
      {
        goto LABEL_33;
      }
    }

    v128 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v62 = swift_initStackObject();
    *(v62 + 16) = v121;
    *(v62 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v62 + 40) = v63;
    *(v62 + 72) = &type metadata for VFSFileError;
    v64 = swift_allocObject();
    *(v62 + 48) = v64;
    sub_1CF19A730(&v135, v64 + 16);
    sub_1CF4E04E8(v62);
    swift_setDeallocating();
    sub_1CEFCCC44(v62 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    goto LABEL_29;
  }

LABEL_46:
  v131 = v39;

LABEL_47:
  v79 = v115;
  v80 = v116;
  v81 = v131;
LABEL_49:
  LODWORD(v127) = v81;
  v126 = &v111;
  v82 = (v79 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext);
  v83 = *(v82 + 26);
  v84 = *(v82 + 25);
  v85 = *(v82 + 24);
  v86 = *v82;
  v87 = v82[1];
  v134 = v81;
  v88 = v82[2];
  MEMORY[0x1EEE9AC00](v76);
  *(&v111 - 4) = &v134;
  *(&v111 - 3) = v89;
  *(&v111 - 2) = v80;
  *&v136[1] = v90;
  *(&v136[1] + 1) = v87;
  *&v135 = v91;
  *(&v135 + 1) = 1107296256;
  *&v136[0] = v92;
  *(&v136[0] + 1) = &block_descriptor_849;
  v93 = _Block_copy(&v135);
  v125 = v87;
  swift_retain_n();

  v124 = v93;
  *&v141 = v93;
  *(&v141 + 1) = v88;
  LOBYTE(v142) = v85;
  BYTE1(v142) = v84;
  BYTE2(v142) = v83;
  sub_1CEFDB034();
  v94 = swift_allocError();
  *v95 = 6;
  *(v95 + 8) = 0u;
  *(v95 + 24) = 0u;
  *(v95 + 40) = 19;
  v96 = v119;
  *v119 = v94;
  swift_storeEnumTagMultiPayload();
  v97 = swift_allocObject();
  *(v97 + 16) = v96;
  *(v97 + 24) = sub_1CF2F6598;
  *(v97 + 32) = &v111 - 6;
  v98 = swift_allocObject();
  *(v98 + 16) = sub_1CF2F63D8;
  *(v98 + 24) = v97;
  v123 = v97;
  *&v136[1] = sub_1CF1DBD5C;
  *(&v136[1] + 1) = v98;
  *&v135 = MEMORY[0x1E69E9820];
  *(&v135 + 1) = 1107296256;
  *&v136[0] = sub_1CEFDB270;
  *(&v136[0] + 1) = &block_descriptor_859;
  v99 = _Block_copy(&v135);

  v100 = fpfs_fgetfileattrs_detailed();
  _Block_release(v99);
  LOBYTE(v97) = swift_isEscapingClosureAtFileLocation();

  if (v97)
  {
    __break(1u);
  }

  v101 = v119;
  if (v100)
  {
    swift_getErrorValue();
    v102 = v133;
    v127 = v132;
    v103 = swift_allocError();
    *v104 = 6;
    *(v104 + 8) = 0u;
    *(v104 + 24) = 0u;
    *(v104 + 40) = 19;
    v105 = v100;
    v106 = sub_1CF199074(v103, v102);

    v107 = v112;
    *v112 = v106;
    swift_storeEnumTagMultiPayload();
    sub_1CEFDA9E0(v107, v101, &unk_1EC4BF300, &unk_1CFA006B0);
  }

  v108 = v114;
  sub_1CEFCCBDC(v101, v114, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v135 = *v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();

    sub_1CEFCCC44(v101, &unk_1EC4BF300, &unk_1CFA006B0);

    _Block_release(v124);

    goto LABEL_54;
  }

  sub_1CF2F63E4(v108, v113, type metadata accessor for VFSItem);
  sub_1CEFCCC44(v101, &unk_1EC4BF300, &unk_1CFA006B0);

  _Block_release(v124);

LABEL_57:
  result = v134;
  if ((v134 & 0x80000000) != 0)
  {
    goto LABEL_59;
  }

LABEL_58:
  result = close(result);
LABEL_59:
  v110 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF2F0FF0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = *a4;
  v12 = sub_1CF19B994();
  if (v5)
  {
  }

  else
  {
    *(a1 + 56) = v12;
    *(a1 + 20) = v13;
  }

  return a5(*a4, a1, a2, a3);
}

id sub_1CF2F1080(uint64_t a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1CF9E5928();
  v6 = sub_1CF9E5928();
  v17[0] = 0;
  v7 = [v2 initWithURL:v5 packageURL:v6 error:v17];

  v8 = v17[0];
  if (v7)
  {
    v9 = sub_1CF9E5A58();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a2, v9);
    v10(a1, v9);
  }

  else
  {
    v12 = v17[0];
    sub_1CF9E57F8();

    swift_willThrow();
    v13 = sub_1CF9E5A58();
    v14 = *(*(v13 - 8) + 8);
    v14(a2, v13);
    v14(a1, v13);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

void *sub_1CF2F1214(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_1CF0455E8(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1CF2F12B0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v57 = a5;
  v54 = a3;
  v55 = a4;
  v49 = a2;
  v13 = sub_1CF9E63D8();
  v47 = *(v13 - 8);
  v48 = v13;
  v14 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v52 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  v22 = *(v7 + 160);
  v23 = *(v7 + 168);
  v50 = v7;
  v56 = v22;
  v24 = sub_1CF9E6448();
  v51 = *(v24 - 8);
  (*(v51 + 56))(v21, 1, 1, v24);
  v25 = swift_allocObject();
  *(v25 + 16) = a6;
  *(v25 + 24) = a7;
  v26 = a7;
  v27 = swift_allocObject();
  v27[2] = a2;
  v27[3] = a1;
  v28 = a1;
  v30 = v54;
  v29 = v55;
  v27[4] = v8;
  v27[5] = v30;
  v27[6] = a6;
  v27[7] = v26;
  v31 = v57;
  v27[8] = v29;
  v27[9] = v31;
  v32 = swift_allocObject();
  v32[2] = sub_1CF2B1400;
  v32[3] = v25;
  v53 = v32;
  v32[4] = v23;
  v33 = v30;
  v34 = v52;

  v54 = v25;

  swift_retain_n();

  v35 = v28;
  v36 = v51;

  v37 = fpfs_current_log();
  v55 = *(v23 + 16);
  v57 = v21;
  sub_1CEFCCBDC(v21, v34, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v36 + 48))(v34, 1, v24) == 1)
  {
    sub_1CEFCCC44(v34, &unk_1EC4BE370, qword_1CFA01B30);
    v38 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v39 = v46;
    sub_1CF9E6438();
    (*(v36 + 8))(v34, v24);
    v38 = sub_1CF9E63C8();
    (*(v47 + 8))(v39, v48);
  }

  v40 = swift_allocObject();
  v40[2] = v37;
  v40[3] = sub_1CF2F6140;
  v40[4] = v27;
  v62 = sub_1CF2BA17C;
  v63 = v40;
  aBlock = MEMORY[0x1E69E9820];
  v59 = 1107296256;
  v60 = sub_1CEFCA444;
  v61 = &block_descriptor_759;
  v41 = _Block_copy(&aBlock);
  v42 = v37;

  v62 = sub_1CF2F6174;
  v63 = v53;
  aBlock = MEMORY[0x1E69E9820];
  v59 = 1107296256;
  v60 = sub_1CEFCA444;
  v61 = &block_descriptor_762;
  v43 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v55, v56, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v38, v41, v43);
  _Block_release(v43);
  _Block_release(v41);

  return sub_1CEFCCC44(v57, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2F1774(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a3;
  v9 = sub_1CF9E63D8();
  v40 = *(v9 - 8);
  v41 = v9;
  v10 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v43 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v18 = *(v5 + 160);
  v45 = *(v5 + 168);
  v46 = v18;
  v19 = sub_1CF9E6448();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v17, 1, 1, v19);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  v22 = swift_allocObject();
  v22[2] = v5;
  v22[3] = a1;
  v23 = v47;
  v22[4] = v47;
  v22[5] = a4;
  v22[6] = a5;
  v24 = swift_allocObject();
  v24[2] = sub_1CEFF9D98;
  v24[3] = v21;
  v25 = v45;
  v42 = v24;
  v24[4] = v45;
  v26 = v23;
  v44 = v21;
  v27 = v19;

  swift_retain_n();

  v28 = a1;
  v29 = v43;
  v30 = fpfs_current_log();
  v45 = v25[2];
  v47 = v17;
  sub_1CEFCCBDC(v17, v29, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v20 + 48))(v29, 1, v27) == 1)
  {
    sub_1CEFCCC44(v29, &unk_1EC4BE370, qword_1CFA01B30);
    v31 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v32 = v39;
    sub_1CF9E6438();
    (*(v20 + 8))(v29, v27);
    v31 = sub_1CF9E63C8();
    (*(v40 + 8))(v32, v41);
  }

  v33 = swift_allocObject();
  v33[2] = v30;
  v33[3] = sub_1CF2F629C;
  v33[4] = v22;
  v52 = sub_1CF2BA17C;
  v53 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1CEFCA444;
  v51 = &block_descriptor_809;
  v34 = _Block_copy(&aBlock);
  v35 = v30;

  v52 = sub_1CF2F4FD8;
  v53 = v42;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1CEFCA444;
  v51 = &block_descriptor_812;
  v36 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v45, v46, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v31, v34, v36);
  _Block_release(v36);
  _Block_release(v34);

  return sub_1CEFCCC44(v47, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2F1C10(uint64_t a1)
{
  v1 = 0;
  if (!a1)
  {
    return v1;
  }

  while (1)
  {
    v4 = a1 & -a1;
    if (v4 > 3)
    {
      break;
    }

    if (v4 == 1)
    {
      v1 |= 0x10000uLL;
    }

    else
    {
      if (v4 != 2)
      {
        goto LABEL_12;
      }

      v1 |= 1uLL;
    }

LABEL_4:
    v3 = a1 == v4;
    a1 ^= v4;
    if (v3)
    {
      return v1;
    }
  }

  if (v4 == 4)
  {
    goto LABEL_4;
  }

  if (v4 == 32)
  {
    v1 |= 2uLL;
    goto LABEL_4;
  }

LABEL_12:
  MEMORY[0x1D3868CC0](0x726F707075736E75, 0xEC00000020646574);
  sub_1CF9E7B58();
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

void *sub_1CF2F1D18(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if ((a4 & 1) == 0)
  {
    v14 = 128;
    if (a3 < 128)
    {
      v14 = a3;
    }

    if (v14 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    v16 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v17 = sub_1CF9E6108();
    v18 = sub_1CF9E7288();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v22 = a1;
      v20 = v19;
      v21 = swift_slowAlloc();
      v23 = v21;
      *v20 = 136446722;
      *(v20 + 4) = sub_1CEFD0DF0(v22, a2, &v23);
      *(v20 + 12) = 2048;
      *(v20 + 14) = a3;
      *(v20 + 22) = 2048;
      *(v20 + 24) = v15;
      _os_log_impl(&dword_1CEFC7000, v17, v18, "🔩  provider supports a %{public}s pipeline of %ld, setting limits to %ld", v20, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1D386CDC0](v21, -1, -1);
      MEMORY[0x1D386CDC0](v20, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    type metadata accessor for JobLimit();
    result = swift_allocObject();
    result[2] = 0;
    result[3] = v15;
    result[4] = v15;
    result[5] = v15;
  }

  return result;
}

uint64_t sub_1CF2F1F24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF2F1F6C()
{
  type metadata accessor for NSFileProviderError(0);
  v0 = &unk_1F4C8C390;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF2F1F24(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
  sub_1CF9E57D8();
  v1 = objc_allocWithZone(MEMORY[0x1E69674B0]);
  v2 = sub_1CF9E57E8();

  v3 = sub_1CF9E6888();
  [v1 initWithConnection:0 protocol:v0 orError:v2 name:v3 requestPid:0];

  return swift_dynamicCastObjCProtocolUnconditional();
}

uint64_t sub_1CF2F20BC()
{
  type metadata accessor for NSFileProviderError(0);
  v0 = &unk_1F4C7FA50;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF2F1F24(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
  sub_1CF9E57D8();
  v1 = objc_allocWithZone(MEMORY[0x1E69674B0]);
  v2 = sub_1CF9E57E8();

  v3 = sub_1CF9E6888();
  [v1 initWithConnection:0 protocol:v0 orError:v2 name:v3 requestPid:0];

  return swift_dynamicCastObjCProtocolUnconditional();
}

uint64_t sub_1CF2F220C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v93 = *MEMORY[0x1E69E9840];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5270, &unk_1CFA01BC0);
  v7 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v9 = (&v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v69 - v11);
  v84 = sub_1CF9E5A58();
  v83 = *(v84 - 8);
  v13 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v76 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v69 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v81 = &v69 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v69 - v20;
  v22 = swift_allocObject();
  v78 = a2;
  *(v22 + 2) = a2;
  *(v22 + 3) = a3;
  v80 = v22;
  *(v22 + 4) = a4;
  v23 = objc_allocWithZone(MEMORY[0x1E6999E20]);
  v77 = a3;

  v72 = a4;

  v79 = [v23 init];
  v82 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v24 = sub_1CF9E5928();
  *aBlock = 0;
  v25 = [v24 fp:aBlock uniqueTempFolderWithError:?];
  v26 = *aBlock;
  v74 = v21;
  if (v25 && (sub_1CF9E59D8(), v27 = v26, v25, *aBlock = 0, v28 = [v24 fp:aBlock uniqueTempFolderWithError:?], v26 = *aBlock, v28))
  {
    v29 = v28;
    v71 = v25;
    sub_1CF9E59D8();
    v30 = v26;

    strcpy(aBlock, "package.");
    aBlock[9] = 0;
    *&aBlock[10] = 0;
    *&aBlock[12] = -402653184;
    v31 = *MEMORY[0x1E6967108];
    v32 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    MEMORY[0x1D3868CC0](v32);

    sub_1CF9E5968();

    v33 = v83;
    v34 = *(v83 + 8);
    v73 = v83 + 8;
    v70 = v34;
    v34(v16, v84);
    v35 = sub_1CF9E5928();
    v36 = sub_1CF9E5928();
    *aBlock = 0;
    v37 = v82;
    v38 = [v82 moveItemAtURL:v35 toURL:v36 error:aBlock];

    if (v38)
    {
      v39 = *aBlock;

      v78 = sub_1CF9E5928();
      v40 = v74;
      v41 = sub_1CF9E5928();
      v42 = v84;
      (*(v33 + 16))(v16, v40, v84);
      v43 = (*(v33 + 80) + 24) & ~*(v33 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = v37;
      (*(v33 + 32))(v44 + v43, v16, v42);
      v45 = (v44 + ((v13 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
      v46 = v80;
      *v45 = sub_1CF2F5A28;
      v45[1] = v46;
      *&aBlock[32] = sub_1CF2F5A34;
      *&aBlock[40] = v44;
      *aBlock = MEMORY[0x1E69E9820];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_1CF90535C;
      *&aBlock[24] = &block_descriptor_570;
      v47 = _Block_copy(aBlock);
      v48 = v37;

      v49 = v79;
      v50 = v78;
      v51 = [v79 unarchiveItemAtURL:v78 passphrases:0 destinationFolderURL:v41 acceptedFormats:2 completionHandler:v47];
      _Block_release(v47);

      v52 = v70;
      v70(v81, v42);
      v52(v40, v42);
      goto LABEL_14;
    }

    v55 = *aBlock;
    v54 = sub_1CF9E57F8();

    swift_willThrow();
    LODWORD(v73) = 1;
    v25 = v71;
  }

  else
  {
    v53 = v26;
    v54 = sub_1CF9E57F8();

    swift_willThrow();
    LODWORD(v73) = 0;
  }

  *v12 = v54;
  swift_storeEnumTagMultiPayload();
  sub_1CEFCCBDC(v12, v9, &unk_1EC4C5270, &unk_1CFA01BC0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v57 = v76;
  if (EnumCaseMultiPayload == 1)
  {
    v58 = *v9;
    aBlock[0] = 1;
    v59 = v54;
    v60 = aBlock[0];
    v61 = v84;
    v62 = v83;
  }

  else
  {
    v62 = v83;
    v61 = v84;
    (*(v83 + 32))(v76, v9, v84);
    v63 = *(v72 + 136);
    v64 = v54;
    v65 = sub_1CF9E5A18();
    (*(*v63 + 408))(aBlock, v65);
    (*(v62 + 8))(v57, v61);

    v60 = 0;
    v92 = 0;
    v85 = *&aBlock[8];
    v86 = *&aBlock[24];
    v87 = *&aBlock[40];
    v58 = *aBlock;
    v88 = *&aBlock[56];
  }

  v66 = v82;
  *v89 = v58;
  *&v89[8] = v85;
  *&v89[24] = v86;
  *&v89[40] = v87;
  *&v89[56] = v88;
  v90 = v60;
  v78(v89);
  *&aBlock[32] = *&v89[32];
  *&aBlock[48] = *&v89[48];
  v92 = v90;
  *aBlock = *v89;
  *&aBlock[16] = *&v89[16];
  sub_1CEFCCC44(aBlock, &unk_1EC4BF2C0, &qword_1CFA01BB8);

  sub_1CEFCCC44(v12, &unk_1EC4C5270, &unk_1CFA01BC0);
  if (v73)
  {
    (*(v62 + 8))(v81, v61);
  }

  if (v25)
  {
    (*(v62 + 8))(v74, v61);
  }

LABEL_14:

  v68 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF2F2B2C(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v28) = a3;
  v5 = sub_1CF9E5648();
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27 - v11;
  v13 = sub_1CF9E5A58();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFCCBDC(a2, v12, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1CEFCCC44(v12, &unk_1EC4BE310, qword_1CF9FCBE0);
    return 0;
  }

  (*(v14 + 32))(v17, v12, v13);
  v19 = type metadata accessor for ItemMetadata();
  v20 = a1;
  if (*(a1 + *(v19 + 112)) == 1 && (v28 & 1) != 0)
  {
    v28 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4700, &qword_1CFA00810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FA450;
    v22 = *MEMORY[0x1E695DB50];
    *(inited + 32) = *MEMORY[0x1E695DB50];
    v23 = v22;
    sub_1CEFF8A84(inited);
    swift_setDeallocating();
    sub_1CF007B98(inited + 32, type metadata accessor for URLResourceKey);
    sub_1CF9E58A8();

    v24 = sub_1CF9E5618();
    v26 = v25;
    (*(v27 + 8))(v8, v5);
    (*(v14 + 8))(v17, v13);
    v20 = v28;
    if ((v26 & 1) == 0)
    {
      return v24;
    }
  }

  else
  {
    (*(v14 + 8))(v17, v13);
  }

  return *(v20 + *(v19 + 104));
}

void sub_1CF2F2E90(_OWORD *a1, uint64_t a2, uint64_t *a3, uint64_t a4, __int128 *a5, void (*a6)(void *, uint64_t), void *a7)
{
  v80 = a2;
  v81 = a7;
  v12 = sub_1CF9E63D8();
  v74 = *(v12 - 8);
  v75 = v12;
  v13 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v73 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v76 = *(v15 - 8);
  v16 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v70 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v77 = v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = a1[1];
  v108 = *a1;
  v109 = v24;
  v25 = a1[3];
  v110 = a1[2];
  v111 = v25;
  v26 = *a3;
  v27 = a5[13];
  v104 = a5[12];
  v105 = v27;
  v106 = a5[14];
  v107 = *(a5 + 30);
  v28 = a5[9];
  v100 = a5[8];
  v101 = v28;
  v29 = a5[11];
  v102 = a5[10];
  v103 = v29;
  v30 = a5[5];
  v96 = a5[4];
  v97 = v30;
  v31 = a5[7];
  v98 = a5[6];
  v99 = v31;
  v32 = a5[1];
  v92 = *a5;
  v93 = v32;
  v33 = a5[3];
  v34 = *(&v109 + 1);
  v94 = a5[2];
  v95 = v33;
  if (*(&v109 + 1) >> 60 == 11)
  {
    if ((v26 & 8) != 0 && *(v80 + *(v15 + 40)) != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
      sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70);
      v68 = swift_allocError();
      *v69 = 1;
      *(v69 + 8) = 0u;
      *(v69 + 24) = 0u;
      *(v69 + 40) = 0u;
      *(v69 + 56) = 0u;
      *(v69 + 72) = 0u;
      *(v69 + 88) = 11;
      a6(v68, 1);
    }

    else
    {
      type metadata accessor for StagedContext();
      v35 = swift_allocObject();
      a6(v35, 0);
    }
  }

  else
  {
    v36 = *a1;
    v91 = *(a1 + 2);
    v37 = a1[3];
    v88 = a1[2];
    v89 = v37;
    v90 = v36;
    v38 = *(v7 + 160);
    v71 = *(v7 + 168);
    v72 = v38;
    v39 = v70 - v23;
    v79 = v70 - v23;
    v40 = sub_1CF9E6448();
    v70[0] = *(v40 - 8);
    (*(v70[0] + 56))(v39, 1, 1, v40);
    v41 = swift_allocObject();
    v70[1] = v7;
    v78 = v41;
    v42 = v81;
    *(v41 + 16) = a6;
    *(v41 + 24) = v42;
    sub_1CEFCCBDC(v80, v18, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
    v43 = (*(v76 + 80) + 104) & ~*(v76 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = v7;
    *(v44 + 24) = a6;
    v45 = v44;
    *(v44 + 32) = v42;
    v46 = v89;
    *(v44 + 40) = v90;
    *(v44 + 56) = v91;
    *(v44 + 64) = v34;
    v47 = v70[0];
    *(v44 + 72) = v88;
    *(v44 + 88) = v46;
    sub_1CEFE55D0(v18, v44 + v43, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
    v48 = v45 + ((v16 + v43 + 7) & 0xFFFFFFFFFFFFFFF8);
    v49 = v105;
    *(v48 + 192) = v104;
    *(v48 + 208) = v49;
    *(v48 + 224) = v106;
    *(v48 + 240) = v107;
    v50 = v101;
    *(v48 + 128) = v100;
    *(v48 + 144) = v50;
    v51 = v103;
    *(v48 + 160) = v102;
    *(v48 + 176) = v51;
    v52 = v97;
    *(v48 + 64) = v96;
    *(v48 + 80) = v52;
    v53 = v99;
    *(v48 + 96) = v98;
    *(v48 + 112) = v53;
    v54 = v93;
    *v48 = v92;
    *(v48 + 16) = v54;
    v55 = v95;
    *(v48 + 32) = v94;
    *(v48 + 48) = v55;
    v56 = swift_allocObject();
    v57 = v78;
    v56[2] = sub_1CEFF9D98;
    v56[3] = v57;
    v58 = v71;
    v56[4] = v71;
    sub_1CEFCCBDC(&v108, &v82, &unk_1EC4BF260, &unk_1CFA01B60);
    swift_retain_n();
    sub_1CEFCCBDC(&v108, &v82, &unk_1EC4BF260, &unk_1CFA01B60);

    sub_1CEFCCBDC(&v92, &v82, &qword_1EC4BECF0, &unk_1CF9FEEB0);

    v59 = v58;

    v60 = fpfs_current_log();
    v81 = *(v59 + 16);
    v61 = v77;
    sub_1CEFCCBDC(v79, v77, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v47 + 48))(v61, 1, v40) == 1)
    {
      sub_1CEFCCC44(v61, &unk_1EC4BE370, qword_1CFA01B30);
      v62 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v63 = v73;
      sub_1CF9E6438();
      (*(v47 + 8))(v61, v40);
      v62 = sub_1CF9E63C8();
      (*(v74 + 8))(v63, v75);
    }

    v64 = swift_allocObject();
    v64[2] = v60;
    v64[3] = sub_1CF2F50D0;
    v64[4] = v45;
    v86 = sub_1CF2BA17C;
    v87 = v64;
    v82 = MEMORY[0x1E69E9820];
    v83 = 1107296256;
    v84 = sub_1CEFCA444;
    v85 = &block_descriptor_407;
    v65 = _Block_copy(&v82);
    v66 = v60;

    v86 = sub_1CF2F671C;
    v87 = v56;
    v82 = MEMORY[0x1E69E9820];
    v83 = 1107296256;
    v84 = sub_1CEFCA444;
    v85 = &block_descriptor_410;
    v67 = _Block_copy(&v82);

    fp_task_tracker_async_and_qos(v81, v72, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v62, v65, v67);
    _Block_release(v67);
    _Block_release(v65);

    sub_1CEFCCC44(&v108, &unk_1EC4BF260, &unk_1CFA01B60);
    sub_1CEFCCC44(v79, &unk_1EC4BE370, qword_1CFA01B30);
  }
}

uint64_t sub_1CF2F36A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t (*)(void), void), uint64_t a5)
{
  v63 = a2;
  aBlock[7] = *MEMORY[0x1E69E9840];
  v9 = type metadata accessor for ItemMetadata();
  v61 = *(v9 - 8);
  v10 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v62 = v11;
  v65 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1CF9E5A58();
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v69 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v70 = v19;
  v20 = objc_allocWithZone(MEMORY[0x1E6999E20]);

  v21 = [v20 init];
  v59 = a1;
  v22 = sub_1CF9E5928();
  aBlock[0] = 0;
  v68 = v22;
  v23 = [v22 fp:aBlock uniqueTempFolderWithError:?];
  v24 = aBlock[0];
  if (v23)
  {
    v25 = v23;
    sub_1CF9E59D8();
    v26 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
    v27 = *(v12 + 72);
    v28 = *(v12 + 80);
    v67 = v12;
    v29 = v18;
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1CF9FA450;
    v66 = a3;
    v57 = v21;
    v31 = *(v12 + 16);
    v32 = v59;
    v33 = v64;
    v31(v30 + ((v28 + 32) & ~v28), v59, v64);
    v56 = sub_1CF9E6D28();

    v34 = v29;
    v58 = v29;
    v55 = sub_1CF9E5928();
    v35 = v60;
    v31(v60, v34, v33);
    v36 = v65;
    sub_1CEFF4408(v63, v65);
    v31(v69, v32, v33);
    v37 = v70;
    v38 = (v28 + 40) & ~v28;
    v39 = (v38 + v13 + *(v61 + 80)) & ~*(v61 + 80);
    v40 = (v62 + v28 + v39) & ~v28;
    v41 = swift_allocObject();
    v42 = v67;
    *(v41 + 2) = v66;
    *(v41 + 3) = sub_1CF2F4C34;
    *(v41 + 4) = v37;
    v43 = *(v42 + 32);
    v43(&v41[v38], v35, v33);
    sub_1CF2F63E4(v36, &v41[v39], type metadata accessor for ItemMetadata);
    v43(&v41[v40], v69, v33);
    aBlock[4] = sub_1CF2F4CAC;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF2EAFD8;
    aBlock[3] = &block_descriptor_338;
    v44 = _Block_copy(aBlock);

    v45 = v57;
    v46 = v56;
    v47 = v55;
    v48 = [v57 archiveItemsWithURLs:v56 compressionFormat:3 destinationFolderURL:v55 completionHandler:v44];

    _Block_release(v44);
    (*(v67 + 8))(v58, v33);
  }

  else
  {
    v49 = aBlock[0];
    v50 = sub_1CF9E57F8();

    swift_willThrow();
    v51 = v50;
    a4(v50, 1, nullsub_1, 0);
  }

  v53 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CF2F3C10(uint64_t a1, void *a2, char *a3, uint64_t a4)
{
  v53 = a3;
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = 0x696669746E656469;
  v61 = 0xEA00000000007265;
  sub_1CF9E7898();
  if (*(a1 + 16) && (v12 = sub_1CF0271B0(v59), (v13 & 1) != 0))
  {
    sub_1CEFD1104(*(a1 + 56) + 32 * v12, &v60);
    sub_1CF027318(v59);
    type metadata accessor for NSFileProviderItemIdentifier(0);
    if (swift_dynamicCast())
    {
      v14 = v57;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    sub_1CF027318(v59);
    v14 = 0;
  }

  v60 = 0xD000000000000017;
  v61 = 0x80000001CFA3E3E0;
  sub_1CF9E7898();
  if (*(a1 + 16) && (v15 = sub_1CF0271B0(v59), (v16 & 1) != 0))
  {
    sub_1CEFD1104(*(a1 + 56) + 32 * v15, &v60);
    sub_1CF027318(v59);
    sub_1CEFD57E0(0, &unk_1EDEA35A0, 0x1E6967408);
    v17 = swift_dynamicCast();
    v18 = v57;
    if (!v17)
    {
      v18 = 0;
    }

    v56 = v18;
  }

  else
  {
    sub_1CF027318(v59);
    v56 = 0;
  }

  v60 = 0x54746E65746E6F63;
  v61 = 0xEB00000000657079;
  sub_1CF9E7898();
  if (*(a1 + 16) && (v19 = sub_1CF0271B0(v59), (v20 & 1) != 0))
  {
    sub_1CEFD1104(*(a1 + 56) + 32 * v19, &v60);
    sub_1CF027318(v59);
    v21 = swift_dynamicCast();
    if (v21)
    {
      v22 = v57;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = v58;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    sub_1CF027318(v59);
    v22 = 0;
    v23 = 0;
  }

  v60 = 0xD000000000000011;
  v61 = 0x80000001CFA3E400;
  sub_1CF9E7898();
  if (*(a1 + 16) && (v24 = sub_1CF0271B0(v59), (v25 & 1) != 0))
  {
    sub_1CEFD1104(*(a1 + 56) + 32 * v24, &v60);
    sub_1CF027318(v59);
    v26 = swift_dynamicCast();
    v27 = v57;
    if (!v26)
    {
      v27 = 0;
    }

    v55 = v27;
    v28 = 0xF000000000000000;
    if (v26)
    {
      v28 = v58;
    }
  }

  else
  {
    sub_1CF027318(v59);
    v55 = 0;
    v28 = 0xF000000000000000;
  }

  v54 = v28;
  v57 = 0x6E6F6973726576;
  v58 = 0xE700000000000000;
  sub_1CF9E7898();
  if (*(a1 + 16))
  {
    v29 = sub_1CF0271B0(v59);
    if (v30)
    {
      sub_1CEFD1104(*(a1 + 56) + 32 * v29, &v60);
      sub_1CF027318(v59);
      sub_1CEFD57E0(0, &unk_1EDEAB5A0, 0x1E69674E8);
      if (swift_dynamicCast())
      {
        v31 = v57;
      }

      else
      {
        v31 = 0;
      }

      if (v14)
      {
        if (v31)
        {
          v33 = *&v53[OBJC_IVAR____TtC18FileProviderDaemon20DummyOperationClient_perThumbnailCompletionHandler];
          v32 = *&v53[OBJC_IVAR____TtC18FileProviderDaemon20DummyOperationClient_perThumbnailCompletionHandler + 8];
          v34 = v14;
          v35 = v31;
          v36 = v55;
          v14 = v56;
          v37 = v22;
          v38 = v54;
          v33(v34, v35, v56, v37, v23, v55, v54, a2);

          (*(a4 + 16))(a4);

          sub_1CEFE48D8(v36, v38);
          goto LABEL_48;
        }

        goto LABEL_39;
      }

LABEL_41:

      goto LABEL_42;
    }
  }

  sub_1CF027318(v59);
  if (!v14)
  {
    v31 = 0;
    goto LABEL_41;
  }

LABEL_39:

  v31 = 0;
LABEL_42:
  v39 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v40 = a2;
  v41 = sub_1CF9E6108();
  v42 = sub_1CF9E72A8();

  if (os_log_type_enabled(v41, v42))
  {
    v53 = v11;
    v43 = v14;
    v44 = v8;
    v45 = v7;
    v46 = a4;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v47 = 138412290;
    if (a2)
    {
      v49 = a2;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      v51 = v50;
    }

    else
    {
      v50 = 0;
      v51 = 0;
    }

    *(v47 + 4) = v50;
    *v48 = v51;
    _os_log_impl(&dword_1CEFC7000, v41, v42, "Missing required identifier and version for perThumbnailCompletionHandler: %@", v47, 0xCu);
    sub_1CEFCCC44(v48, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v48, -1, -1);
    MEMORY[0x1D386CDC0](v47, -1, -1);
    a4 = v46;
    v7 = v45;
    v8 = v44;
    v14 = v43;
    v11 = v53;
  }

  (*(v8 + 8))(v11, v7);
  (*(a4 + 16))(a4);

  sub_1CEFE48D8(v55, v54);
  v34 = v56;
LABEL_48:
}

void *sub_1CF2F4268(void *result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result)
  {

    sub_1CEFE48D8(a2, a3);

    return sub_1CEFE48D8(a4, a5);
  }

  return result;
}

uint64_t sub_1CF2F42E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = *(a1 + 32);
  return v2(v6, MEMORY[0x1E69E7CC0]);
}

void sub_1CF2F432C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1CF2EE284(*(v0 + 16));
}

uint64_t objectdestroy_140Tm()
{
  v1 = sub_1CF9E5CF8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v9 = *(v0 + v4);

  v10 = *(v0 + v7 + 8);

  v11 = *(v0 + v8 + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF2F443C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v11 = *(sub_1CF9E5CF8() - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF2EBC20(a1, a2, a3, a4, a5, v5 + v12, *(v5 + v13), *(v5 + v14), *(v5 + v15), *(v5 + v16), *(v5 + v16 + 8), *(v5 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v5 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v5 + ((((v16 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF2F4554(void *a1, void *a2)
{
  v5 = *(sub_1CF9E5CF8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF2EB8C8(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_1CF2F462C()
{
  result = qword_1EDEA7408;
  if (!qword_1EDEA7408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA7408);
  }

  return result;
}

uint64_t sub_1CF2F470C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3 & 1;
  return v4(v7);
}

uint64_t sub_1CF2F474C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 16));
}

void sub_1CF2F4798()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1CF2EE20C(*(v0 + 16));
}

void sub_1CF2F47A4(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {

    a1 = a2;
  }
}

uint64_t sub_1CF2F4918(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, 0, 0, 0, a1);
}

void sub_1CF2F4954()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + *(*(v1 - 8) + 80) + 72) & ~*(*(v1 - 8) + 80);
  v7 = v6 + *(*(v1 - 8) + 64);
  sub_1CF2E4AE8(*(v0 + 32), *(v0 + 40), *(v0 + 48), (v0 + v4), (v0 + v5), v0 + v6, *(v0 + v7), *(v0 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + (((v7 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)), *(v0 + (((((v7 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v1, v2);
}

void sub_1CF2F4AA8(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) - 8);
  v12 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF2E583C(a1, a2 & 1, a3, a4, *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), v4 + v12, *(v4 + v13), *(v4 + v14), *(v4 + v15), *(v4 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)), v4 + ((*(*(v9 - 8) + 80) + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(*(v9 - 8) + 80)), v9, v10);
}

void sub_1CF2F4C34(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v9 = *(v4 + 24);
  sub_1CF0BA8A4(a1);
  v10(a1, a2 & 1, a3, a4);

  sub_1CF091F00(a1);
}

uint64_t sub_1CF2F4CAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(sub_1CF9E5A58() - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + 40) & ~v10;
  v12 = *(v9 + 64);
  v13 = *(type metadata accessor for ItemMetadata() - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  return sub_1CF2E99C4(a1, a2, a3, a4, v4[2], v4[3], v4[4], v4 + v11, v4 + v14, v4 + ((*(v13 + 64) + v10 + v14) & ~v10));
}

uint64_t sub_1CF2F4DDC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), nullsub_1, 0);
}

void sub_1CF2F4E28()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1CF9E5A58() - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + v5 + 8) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for ItemMetadata() - 8);
  v11 = (*(v10 + 80) + v9 + 8) & ~*(v10 + 80);
  sub_1CF2EA218(v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), v0 + v8, *(v0 + v9), v0 + v11, v0 + ((*(v10 + 64) + v7 + v11) & ~v7));
}

uint64_t sub_1CF2F50E8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, void *, char *, char *))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) - 8);
  v3 = (*(v2 + 80) + 104) & ~*(v2 + 80);
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = &v1[(*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8];

  return a1(v4, v5, v6, v1 + 5, &v1[v3], v7);
}

uint64_t sub_1CF2F51B0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF2E03B4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), (v0 + v2), *(v0 + v3), *(v0 + v4), *(v0 + v5), *(v0 + v6), *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), (v0 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF2F529C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_1CF2EE15C(*(v0 + 16));
}

void sub_1CF2F52A8(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 71) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF2E151C(a1, a2 & 1, a3, a4, *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), v4 + v10, *(v4 + v11), *(v4 + v12), (v4 + v13), *(v4 + v14), *(v4 + v15), *(v4 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_439Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_165Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF2F5550()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  v6 = *(v0 + 60);
  v7 = *(v0 + 96);
  v8 = *(v0 + 168);
  v9 = *(v0 + 176);
  v14 = *(v0 + 48);
  v15 = v5;
  v16 = v6;
  v10 = *(v0 + 80);
  v17 = *(v0 + 64);
  v18 = v10;
  v19 = v7;
  v11 = *(v0 + 120);
  v20 = *(v0 + 104);
  v21 = v11;
  v12 = *(v0 + 152);
  v22 = *(v0 + 136);
  v23 = v12;
  v24 = v8;
  v25 = v9;
  return sub_1CF2DB280(v1, v2, v3, v4, &v14, *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216));
}

uint64_t sub_1CF2F55E4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_1CF2EE0CC(*(v0 + 16));
}

uint64_t objectdestroy_413Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return swift_deallocObject();
}

void sub_1CF2F5650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  v8 = *(v4 + 40);
  v9 = *(v4 + 104);
  v22 = *(v4 + 88);
  v23 = v9;
  v10 = *(v4 + 144);
  v25 = *(v4 + 128);
  v26 = v10;
  v11 = *(v4 + 176);
  v27 = *(v4 + 160);
  v28 = v11;
  v12 = *(v4 + 48);
  v13 = *(v4 + 64);
  v14 = *(v4 + 80);
  v15 = *(v4 + 84);
  v16 = *(v4 + 120);
  v17 = *(v4 + 192);
  v18 = *(v4 + 200);
  v19 = *(v4 + 72);
  v20 = v14;
  v21 = v15;
  v24 = v16;
  v29 = v17;
  v30 = v18;
  sub_1CF2DD2E8(a1, a2, a3, a4, v5, v6, v7, v8, v12, *(&v12 + 1), v13, &v19, *(v4 + 208), *(v4 + 216), *(v4 + 224));
}

uint64_t sub_1CF2F56F0(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v8 = *(v5 + 32);
  v9 = *(v5 + 104);
  v24 = *(v5 + 88);
  v25 = v9;
  v10 = *(v5 + 144);
  v27 = *(v5 + 128);
  v28 = v10;
  v11 = *(v5 + 176);
  v29 = *(v5 + 160);
  v30 = v11;
  v12 = *(v5 + 40);
  v13 = *(v5 + 56);
  v14 = *(v5 + 64);
  v15 = *(v5 + 80);
  v16 = *(v5 + 84);
  v17 = *(v5 + 120);
  v18 = *(v5 + 192);
  v19 = *(v5 + 200);
  v21 = *(v5 + 72);
  v22 = v15;
  v23 = v16;
  v26 = v17;
  v31 = v18;
  v32 = v19;
  return sub_1CF2DDC70(a1, a2, a3, a4, a5, v6, v7, v8, v12, *(&v12 + 1), v13, v14, &v21, *(v5 + 208), *(v5 + 216));
}

uint64_t sub_1CF2F578C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  v11 = *(v0 + 104);
  v12 = *(v0 + 108);
  v13 = *(v0 + 144);
  v14 = *(v0 + 216);
  v15 = *(v0 + 224);
  v22 = *(v0 + 96);
  v23 = v11;
  v24 = v12;
  v16 = *(v0 + 128);
  v25 = *(v0 + 112);
  v26 = v16;
  v27 = v13;
  v17 = *(v0 + 168);
  v28 = *(v0 + 152);
  v29 = v17;
  v18 = *(v0 + 200);
  v30 = *(v0 + 184);
  v31 = v18;
  v32 = v14;
  v33 = v15;
  v21 = *(v0 + 240);
  v20 = *(v0 + 232);
  return sub_1CF2DDECC(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, &v22);
}

uint64_t sub_1CF2F582C(_OWORD *a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + v5);
  v7 = v1 + (v5 & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);

  return sub_1CF2DE8F0(a1, v1 + v4, v6, v8);
}

uint64_t sub_1CF2F58CC@<X0>(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 56);
  v7 = *(v1 + 60);
  v8 = *(v1 + 96);
  v9 = *(v1 + 168);
  v10 = *(v1 + 176);
  v15 = *(v1 + 48);
  v16 = v6;
  v17 = v7;
  v11 = *(v1 + 80);
  v18 = *(v1 + 64);
  v19 = v11;
  v20 = v8;
  v12 = *(v1 + 120);
  v21 = *(v1 + 104);
  v22 = v12;
  v13 = *(v1 + 152);
  v23 = *(v1 + 136);
  v24 = v13;
  v25 = v9;
  v26 = v10;
  return sub_1CF2DEA2C(v2, v3, v4, v5, &v15, *(v1 + 184), *(v1 + 192), a1);
}

uint64_t sub_1CF2F5950(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = *(v1 + 72);
  v20 = *(v1 + 56);
  v21 = v4;
  v5 = *(v1 + 112);
  v23 = *(v1 + 96);
  v24 = v5;
  v6 = *(v1 + 144);
  v25 = *(v1 + 128);
  v26 = v6;
  v7 = (*(v3 + 80) + 192) & ~*(v3 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 48);
  v12 = *(v1 + 52);
  v13 = *(v1 + 88);
  v14 = *(v1 + 160);
  v15 = *(v1 + 168);
  v17 = *(v1 + 40);
  v18 = v11;
  v19 = v12;
  v22 = v13;
  v27 = v14;
  v28 = v15;
  return sub_1CF2DEDAC(a1, v8, v9, v10, &v17, *(v1 + 176), *(v1 + 184), v1 + v7);
}

void sub_1CF2F5A34(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1CF9E5A58() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  sub_1CF2EB164(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t objectdestroy_538Tm()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF2F5BE4(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);
  v9 = *(v1 + v6);
  v10 = v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_1CF2DA450(a1, v1 + v4, v7, v8, v9, v11);
}

uint64_t objectdestroy_612Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t objectdestroy_377Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t objectdestroy_576Tm()
{
  v1 = *(v0 + 16);

  if (*(v0 + 80) != 1)
  {
    sub_1CEFE4714(*(v0 + 64), *(v0 + 72));
    v2 = *(v0 + 80);

    sub_1CEFE4714(*(v0 + 88), *(v0 + 96));
    v3 = *(v0 + 104);

    v4 = *(v0 + 120);
  }

  v5 = *(v0 + 136);

  v6 = *(v0 + 168);

  return swift_deallocObject();
}

uint64_t sub_1CF2F5E94()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = v0 + ((v3 + 255) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1CF2E64A8(v4, v0 + 24, v0 + v2, v0 + v3, v6, v7);
}

unint64_t sub_1CF2F5F80()
{
  result = qword_1EDEA3420;
  if (!qword_1EDEA3420)
  {
    sub_1CEFD57E0(255, &unk_1EDEA3430, 0x1E69673A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3420);
  }

  return result;
}

uint64_t objectdestroy_466Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  v2 = *(v1 + 40);

  return swift_deallocObject();
}

id sub_1CF2F6038()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  result = v3();
  if (v2)
  {

    return [v2 unregisterLifetimeExtensionForObject_];
  }

  return result;
}

uint64_t objectdestroy_770Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 88);

  v5 = *(v0 + 96);

  return swift_deallocObject();
}

id sub_1CF2F62D8()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result unregisterLifetimeExtensionForObject_];
  }

  return result;
}

uint64_t objectdestroy_776Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  v2 = *(v1 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF2F634C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t objectdestroy_767Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

void sub_1CF2F63CC(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

uint64_t sub_1CF2F63E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1CF2F6458(id a1, char a2, void (*a3)(id))
{
  if (a2)
  {
  }

  else
  {
    a3(a1);
  }
}

void sub_1CF2F673C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1CF9E7818())
  {
    v4 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D3869C30](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = v5;
      sub_1CF2F9624(&v8);

      if (!v1)
      {
        ++v4;
        if (v7 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1CF2F6830(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_1CF9E77C8();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 56) + 16 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_1CEFE95CC((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 64;
    v16 = *(a1 + 64 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1CF0663D8(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1CF0663D8(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1CF2F6A58(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v4 = sub_1CF9E6638();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_1CF2F6B08()
{
  type metadata accessor for GSConflictManager();
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  type metadata accessor for GSRemoteVersionsManager();
  v1 = swift_allocObject();
  *(v1 + 16) = [objc_allocWithZone(FPGSStorageManager) init];
  *(v0 + 16) = v1;
  if (qword_1EC4BCD08 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC4BCD00;
  v3 = qword_1EC4BF338;
  if (v2 != -1)
  {
    swift_once();
  }

  [v3 setUnderlyingQueue_];

  off_1EC4BF328 = v0;
}

uint64_t static GSConflictManager.instance.getter()
{
  if (qword_1EC4BCCF8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1CF2F6C6C()
{
  v0 = sub_1CF9E7388();
  v25 = *(v0 - 8);
  v26 = v0;
  v1 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v24 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1CF9E7318();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v23 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - v8;
  v22 = sub_1CF9E6448();
  v10 = *(v22 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v22);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v21 - v15;
  v17 = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  v21[0] = "FileProviderDaemon";
  v21[1] = v17;
  sub_1CF9E63F8();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1CF2FC9FC(&qword_1EDEAED80, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CF00FED0(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CF9E77B8();
  v18 = v22;
  (*(v10 + 16))(v14, v16, v22);
  (*(v4 + 16))(v23, v9, v3);
  (*(v25 + 104))(v24, *MEMORY[0x1E69E8098], v26);
  v19 = sub_1CF9E73B8();
  (*(v4 + 8))(v9, v3);
  result = (*(v10 + 8))(v16, v18);
  qword_1EC4BF330 = v19;
  return result;
}

id sub_1CF2F6FF8()
{
  result = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  qword_1EC4BF338 = result;
  return result;
}

void sub_1CF2F702C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = a5;
  v60 = a4;
  v59 = a3;
  v74 = a2;
  v6 = sub_1CF9E63A8();
  v67 = *(v6 - 8);
  v68 = v6;
  v7 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1CF9E6448();
  v64 = *(v66 - 8);
  v9 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = dispatch_group_create();
  v77 = swift_allocObject();
  *(v77 + 16) = 0;
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E7CC8];
  v73 = v16;
  *(v16 + 16) = MEMORY[0x1E69E7CC8];
  v72 = swift_allocObject();
  *(v72 + 16) = 0;
  v71 = swift_allocObject();
  *(v71 + 16) = 0;
  v70 = swift_allocObject();
  *(v70 + 16) = v17;
  v76 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  v18 = objc_opt_self();
  v19 = sub_1CF9E5928();
  v20 = [v18 writingIntentWithURL:v19 options:0];

  v69 = v15;
  dispatch_group_enter(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1CFA00250;
  *(v21 + 32) = v20;
  sub_1CEFD57E0(0, &qword_1EDEA3630, 0x1E696ABF0);
  v62 = v20;
  v58 = sub_1CF9E6D28();

  if (qword_1EC4BCD08 != -1)
  {
    swift_once();
  }

  v57 = qword_1EC4BF338;
  (*(v12 + 16))(&v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v22 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v23 = (v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = v11;
  v25 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v69;
  *(v28 + 2) = v77;
  *(v28 + 3) = v29;
  v30 = v75;
  *(v28 + 4) = v74;
  *(v28 + 5) = v30;
  (*(v12 + 32))(&v28[v22], v14, v24);
  v31 = v72;
  v32 = v73;
  *&v28[v23] = v73;
  v34 = v70;
  v33 = v71;
  *&v28[v25] = v70;
  *&v28[v26] = v31;
  *&v28[v27] = v59;
  *&v28[(v27 + 15) & 0xFFFFFFFFFFFFFFF8] = v33;
  v83 = sub_1CF2FC528;
  v84 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v80 = 1107296256;
  v81 = sub_1CF00A468;
  v82 = &block_descriptor_11;
  v35 = _Block_copy(&aBlock);
  v36 = v57;
  v37 = v77;

  v69 = v69;

  v38 = v58;
  [v76 coordinateAccessWithIntents:v58 queue:v36 byAccessor:v35];
  _Block_release(v35);

  if (qword_1EC4BCD00 != -1)
  {
    swift_once();
  }

  v39 = qword_1EC4BF330;
  v40 = swift_allocObject();
  v40[2] = v32;
  v40[3] = v33;
  v40[4] = v31;
  v40[5] = v37;
  v41 = v61;
  v40[6] = v60;
  v40[7] = v41;
  v40[8] = v34;

  v42 = fpfs_current_log();
  v75 = fpfs_adopt_log();
  v43 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v80 = v44;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v45 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v45);

  sub_1CF9E6978();

  v46 = __fp_log_fork();

  *(v43 + 16) = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = v42;
  *(v47 + 24) = v43;
  *(v47 + 32) = v39;
  *(v47 + 40) = "updateListOfConflictsToGS(url:toAdd:toRemove:completion:)";
  *(v47 + 48) = 57;
  *(v47 + 56) = 2;
  *(v47 + 64) = sub_1CF2FC600;
  *(v47 + 72) = v40;
  v83 = sub_1CEFD5064;
  v84 = v47;
  aBlock = MEMORY[0x1E69E9820];
  v80 = 1107296256;
  v81 = sub_1CEFCA444;
  v82 = &block_descriptor_25;
  v48 = _Block_copy(&aBlock);
  v74 = v42;

  v49 = v39;

  v50 = v63;
  sub_1CF9E63F8();
  v78 = MEMORY[0x1E69E7CC0];
  sub_1CF2FC9FC(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v51 = v65;
  v52 = v68;
  sub_1CF9E77B8();
  v53 = v69;
  sub_1CF9E7308();
  _Block_release(v48);
  (*(v67 + 8))(v51, v52);
  (*(v64 + 8))(v50, v66);

  v54 = v75;
  v55 = fpfs_adopt_log();
}

void sub_1CF2F793C(void *a1, void **a2, NSObject *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v19 = sub_1CF9E6118();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v158 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v158 - v26;
  if (a1)
  {
    swift_beginAccess();
    v28 = a2[2];
    a2[2] = a1;
    v29 = a1;
    v30 = a1;

    dispatch_group_leave(a3);
    goto LABEL_61;
  }

  v164 = v24;
  v165 = a7;
  v161 = v25;
  v162 = a6;
  v160 = a2;
  v31 = a11;
  v158 = a5;
  v159 = a10;
  dispatch_group_enter(a3);
  v32 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v33 = sub_1CF9E6108();
  v34 = sub_1CF9E7298();
  v35 = os_log_type_enabled(v33, v34);
  v163 = a11;
  if (v35)
  {
    v36 = swift_slowAlloc();
    *v36 = 134217984;
    *(v36 + 4) = *(a4 + 16);

    _os_log_impl(&dword_1CEFC7000, v33, v34, "⚔️  Adding %ld conflicts...", v36, 0xCu);
    v37 = v36;
    v31 = v163;
    MEMORY[0x1D386CDC0](v37, -1, -1);
  }

  else
  {
  }

  isa = v161[1].isa;
  isa(v27, v164);
  v39 = swift_allocObject();
  v40 = v165;
  v39[2] = a3;
  v39[3] = v40;
  v39[4] = a8;
  v39[5] = a4;
  v39[6] = a9;

  v41 = a3;

  v42 = a4;
  v43 = v158;
  sub_1CF2F9914(v162, v42, sub_1CF2FCA44, v39);

  v161 = v41;
  dispatch_group_enter(v41);
  v44 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v45 = v159;

  v46 = sub_1CF9E6108();
  v47 = sub_1CF9E7298();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 134217984;
    *(v48 + 4) = *(v45 + 16);

    _os_log_impl(&dword_1CEFC7000, v46, v47, "⚔️  Removing %ld conflicts...", v48, 0xCu);
    MEMORY[0x1D386CDC0](v48, -1, -1);
  }

  else
  {
  }

  isa(v22, v164);
  v49 = *(v43 + 16);
  v50 = sub_1CF2F6830(v45);
  v51 = *MEMORY[0x1E69A07A8];
  v52 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v54 = v53;
  v55 = swift_allocObject();
  v57 = v160;
  v56 = v161;
  v55[2] = v161;
  v55[3] = v57;
  v58 = v165;
  v55[4] = v165;
  v55[5] = v31;
  v159 = v55;
  if (v50[2])
  {
    v59 = *(v49 + 16);
    v164 = v56;

    v60 = v162;
    v61 = sub_1CF9E5928();
    aBlock[0] = 0;
    v62 = [v59 permanentStorageForItemAtURL:v61 allocateIfNone:0 error:aBlock];

    if (v62)
    {
      v63 = aBlock[0];
      v148 = sub_1CF2CBDAC(v60, v50, v52, v54);

      sub_1CEFD57E0(0, &qword_1EC4C4FE0, 0x1E69A07B0);
      v149 = sub_1CF9E6D28();
      v150 = swift_allocObject();
      v150[2] = v148;
      v150[3] = v49;
      v151 = v159;
      v150[4] = sub_1CF2FCA54;
      v150[5] = v151;
      aBlock[4] = sub_1CF2FCA60;
      aBlock[5] = v150;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CF2F6A58;
      aBlock[3] = &block_descriptor_71;
      v152 = _Block_copy(aBlock);

      [v62 removeAdditions:v149 completionHandler:v152];

      _Block_release(v152);

      goto LABEL_60;
    }

    v103 = aBlock[0];

    v104 = sub_1CF9E57F8();

    swift_willThrow();
    v105 = sub_1CF4E2860(MEMORY[0x1E69E7CC0]);
    v106 = v104;
    v107 = v104;
    v108 = v104;
    v109 = v164;
    sub_1CF518C30(v164, v160 + 2, v104);
    v160 = v104;

    v110 = v105 + 64;
    v111 = 1 << *(v105 + 32);
    v112 = -1;
    if (v111 < 64)
    {
      v112 = ~(-1 << v111);
    }

    v113 = v112 & *(v105 + 64);
    v114 = (v111 + 63) >> 6;
    v162 = v105;

    v115 = 0;
    v116 = v165;
    if (v113)
    {
      while (1)
      {
        v117 = v115;
LABEL_43:
        v118 = __clz(__rbit64(v113)) | (v117 << 6);
        v119 = (*(v162 + 6) + 16 * v118);
        v120 = *v119;
        v121 = v119[1];
        v122 = *(*(v162 + 7) + 8 * v118);

        v123 = v122;
        v124 = objc_sync_enter(v109);
        if (v124)
        {
          goto LABEL_69;
        }

        swift_beginAccess();
        v125 = v122;
        v126 = *(v116 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v166 = *(v116 + 16);
        v128 = v166;
        *(v116 + 16) = 0x8000000000000000;
        v129 = sub_1CEFE4328(v120, v121);
        v131 = v128[2];
        v132 = (v130 & 1) == 0;
        v87 = __OFADD__(v131, v132);
        v133 = v131 + v132;
        if (v87)
        {
          goto LABEL_64;
        }

        v134 = v130;
        if (v128[3] >= v133)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v144 = v129;
            sub_1CF7D02E0();
            v129 = v144;
          }
        }

        else
        {
          sub_1CF7C59C0(v133, isUniquelyReferenced_nonNull_native);
          v129 = sub_1CEFE4328(v120, v121);
          if ((v134 & 1) != (v135 & 1))
          {
            goto LABEL_68;
          }
        }

        v31 = v163;
        v136 = v166;
        if (v134)
        {
          v137 = v166[7];
          v138 = *(v137 + 8 * v129);
          *(v137 + 8 * v129) = v122;
        }

        else
        {
          v166[(v129 >> 6) + 8] |= 1 << v129;
          v139 = (v136[6] + 16 * v129);
          *v139 = v120;
          v139[1] = v121;
          *(v136[7] + 8 * v129) = v122;
          v140 = v136[2];
          v87 = __OFADD__(v140, 1);
          v141 = v140 + 1;
          if (v87)
          {
            goto LABEL_66;
          }

          v136[2] = v141;
        }

        v116 = v165;
        v142 = *(v165 + 16);
        *(v165 + 16) = v136;

        swift_endAccess();
        v109 = v164;
        v143 = objc_sync_exit(v164);
        if (v143)
        {
          break;
        }

        v113 &= v113 - 1;

        v115 = v117;
        if (!v113)
        {
          goto LABEL_40;
        }
      }

      MEMORY[0x1EEE9AC00](v143);
      v156 = &v158 - 4;
      *(&v158 - 2) = v109;
      v157 = sub_1CF1C5290;
LABEL_74:
      fp_preconditionFailure(_:file:line:)(v157, v156, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

LABEL_40:
    while (1)
    {
      v117 = v115 + 1;
      if (__OFADD__(v115, 1))
      {
        break;
      }

      if (v117 >= v114)
      {
        v145 = v162;

        v146 = v145[2];

        if (!v146)
        {
          swift_beginAccess();
          *(v31 + 16) = 1;
        }

        dispatch_group_leave(v109);

        v147 = v160;

        v56 = v161;
        goto LABEL_60;
      }

      v113 = *(v110 + 8 * v117);
      ++v115;
      if (v113)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
  }

  v164 = v56;

  v64 = sub_1CF4E2860(MEMORY[0x1E69E7CC0]);
  v65 = v64 + 64;
  v66 = 1 << *(v64 + 32);
  v67 = -1;
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  v68 = v67 & *(v64 + 64);
  v69 = (v66 + 63) >> 6;
  v162 = v64;

  v70 = 0;
  if (v68)
  {
    while (1)
    {
      v71 = v70;
LABEL_19:
      v72 = __clz(__rbit64(v68)) | (v71 << 6);
      v73 = (*(v162 + 6) + 16 * v72);
      v74 = *v73;
      v75 = v73[1];
      v76 = *(*(v162 + 7) + 8 * v72);

      v77 = v76;
      v78 = objc_sync_enter(v164);
      if (v78)
      {
        MEMORY[0x1EEE9AC00](v78);
        v154 = &v158 - 4;
        *(&v158 - 2) = v164;
        v155 = sub_1CF1C546C;
        goto LABEL_72;
      }

      swift_beginAccess();
      v79 = v76;
      v80 = *(v58 + 16);
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v166 = *(v58 + 16);
      v82 = v166;
      *(v58 + 16) = 0x8000000000000000;
      v83 = sub_1CEFE4328(v74, v75);
      v85 = v82[2];
      v86 = (v84 & 1) == 0;
      v87 = __OFADD__(v85, v86);
      v88 = v85 + v86;
      if (v87)
      {
        goto LABEL_65;
      }

      v89 = v84;
      if (v82[3] < v88)
      {
        break;
      }

      if (v81)
      {
        goto LABEL_25;
      }

      v94 = v83;
      sub_1CF7D02E0();
      v83 = v94;
      v91 = v166;
      if (v89)
      {
LABEL_26:
        v92 = v91[7];
        v93 = *(v92 + 8 * v83);
        *(v92 + 8 * v83) = v76;

        goto LABEL_30;
      }

LABEL_28:
      v91[(v83 >> 6) + 8] |= 1 << v83;
      v95 = (v91[6] + 16 * v83);
      *v95 = v74;
      v95[1] = v75;
      *(v91[7] + 8 * v83) = v76;
      v96 = v91[2];
      v87 = __OFADD__(v96, 1);
      v97 = v96 + 1;
      if (v87)
      {
        goto LABEL_67;
      }

      v91[2] = v97;

LABEL_30:
      v58 = v165;
      v98 = *(v165 + 16);
      *(v165 + 16) = v91;

      swift_endAccess();
      v99 = objc_sync_exit(v164);
      if (v99)
      {
        MEMORY[0x1EEE9AC00](v99);
        v156 = &v158 - 4;
        *(&v158 - 2) = v164;
        v157 = sub_1CF1C5468;
        goto LABEL_74;
      }

      v68 &= v68 - 1;

      v70 = v71;
      if (!v68)
      {
        goto LABEL_16;
      }
    }

    sub_1CF7C59C0(v88, v81);
    v83 = sub_1CEFE4328(v74, v75);
    if ((v89 & 1) != (v90 & 1))
    {
LABEL_68:
      v124 = sub_1CF9E8108();
      __break(1u);
LABEL_69:
      MEMORY[0x1EEE9AC00](v124);
      v154 = &v158 - 4;
      *(&v158 - 2) = v164;
      v155 = sub_1CF1C5288;
LABEL_72:
      fp_preconditionFailure(_:file:line:)(v155, v154, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

LABEL_25:
    v91 = v166;
    if (v89)
    {
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  while (1)
  {
LABEL_16:
    v71 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      goto LABEL_63;
    }

    if (v71 >= v69)
    {
      break;
    }

    v68 = *(v65 + 8 * v71);
    ++v70;
    if (v68)
    {
      goto LABEL_19;
    }
  }

  v100 = v162;

  v101 = v100[2];

  if (!v101)
  {
    v102 = v163;
    swift_beginAccess();
    *(v102 + 16) = 1;
  }

  dispatch_group_leave(v164);

  v56 = v161;
LABEL_60:
  dispatch_group_leave(v56);
LABEL_61:
  v153 = *MEMORY[0x1E69E9840];
}

void sub_1CF2F8610(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  if (objc_sync_enter(a3))
  {
    swift_unknownObjectRetain();

    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, a3);
  }

  sub_1CF2F8760(a2, (a4 + 16), (a5 + 16), a1);
  if (objc_sync_exit(a3))
  {
    swift_unknownObjectRetain();

    sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, a3);
  }

  if (*(a2 + 16) < *(a6 + 16))
  {
    swift_beginAccess();
    *(a7 + 16) = 1;
  }

  dispatch_group_leave(a3);
}

uint64_t sub_1CF2F8760(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v42 = v9;
  v43 = v5;
  v44 = a2;
  while (v8)
  {
LABEL_11:
    v16 = __clz(__rbit64(v8)) | (v10 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = *(*(a1 + 56) + 8 * v16);
    swift_beginAccess();
    v21 = v20;
    v22 = v20;

    v23 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *a2;
    v46 = *a2;
    *a2 = 0x8000000000000000;
    v27 = sub_1CEFE4328(v19, v18);
    v28 = *(v25 + 16);
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_24;
    }

    v31 = v26;
    if (*(v25 + 24) >= v30)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v26)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1CF7D02E0();
        if (v31)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1CF7C59C0(v30, isUniquelyReferenced_nonNull_native);
      v32 = sub_1CEFE4328(v19, v18);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_26;
      }

      v27 = v32;
      if (v31)
      {
LABEL_4:

        v11 = v46;
        v12 = v46[7];
        v13 = *(v12 + 8 * v27);
        *(v12 + 8 * v27) = v20;

        goto LABEL_5;
      }
    }

    v11 = v46;
    v46[(v27 >> 6) + 8] |= 1 << v27;
    v34 = (v46[6] + 16 * v27);
    *v34 = v19;
    v34[1] = v18;
    *(v46[7] + 8 * v27) = v20;
    v35 = v46[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_25;
    }

    v46[2] = v37;
LABEL_5:
    v8 &= v8 - 1;
    a2 = v44;
    v14 = *v44;
    *v44 = v11;

    swift_endAccess();

    v9 = v42;
    v5 = v43;
  }

  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v15 >= v9)
    {

      swift_beginAccess();
      v38 = *a3;
      *a3 = a4;
    }

    v8 = *(v5 + 8 * v15);
    ++v10;
    if (v8)
    {
      v10 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

void sub_1CF2F89F0(uint64_t a1, id a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a6;
  v49 = a1;
  v50 = a5;
  if (a2)
  {
    v9 = a2;
    sub_1CF518C30(a3, (a4 + 16), a2);
  }

  v46 = 0;
  v10 = v49 + 64;
  v11 = 1 << *(v49 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v49 + 64);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  v48 = a3;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
LABEL_10:
      v18 = __clz(__rbit64(v13)) | (v17 << 6);
      v19 = (*(v49 + 48) + 16 * v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = *(*(v49 + 56) + 8 * v18);

      v23 = v22;
      v15 = objc_sync_enter(a3);
      if (v15)
      {
        goto LABEL_30;
      }

      swift_beginAccess();
      v24 = v22;
      v25 = *(v50 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = *(v50 + 16);
      v27 = v51;
      *(v50 + 16) = 0x8000000000000000;
      v15 = sub_1CEFE4328(v21, v20);
      v29 = v27[2];
      v30 = (v28 & 1) == 0;
      v31 = __OFADD__(v29, v30);
      v32 = v29 + v30;
      if (v31)
      {
        goto LABEL_28;
      }

      v33 = v28;
      if (v27[3] < v32)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      v38 = v15;
      sub_1CF7D02E0();
      v15 = v38;
      v35 = v51;
      if (v33)
      {
LABEL_17:
        v36 = v35[7];
        v37 = *(v36 + 8 * v15);
        *(v36 + 8 * v15) = v22;

        goto LABEL_21;
      }

LABEL_19:
      v35[(v15 >> 6) + 8] |= 1 << v15;
      v39 = (v35[6] + 16 * v15);
      *v39 = v21;
      v39[1] = v20;
      *(v35[7] + 8 * v15) = v22;
      v40 = v35[2];
      v31 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v31)
      {
        goto LABEL_29;
      }

      v35[2] = v41;

LABEL_21:
      v42 = *(v50 + 16);
      *(v50 + 16) = v35;

      swift_endAccess();
      a3 = v48;
      v43 = objc_sync_exit(v48);
      if (v43)
      {
        MEMORY[0x1EEE9AC00](v43);
        v45 = v48;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v44, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      v13 &= v13 - 1;

      v16 = v17;
      if (!v13)
      {
        goto LABEL_7;
      }
    }

    sub_1CF7C59C0(v32, isUniquelyReferenced_nonNull_native);
    v15 = sub_1CEFE4328(v21, v20);
    if ((v33 & 1) != (v34 & 1))
    {
      sub_1CF9E8108();
      __break(1u);
      return;
    }

LABEL_16:
    v35 = v51;
    if (v33)
    {
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  while (1)
  {
LABEL_7:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      MEMORY[0x1EEE9AC00](v15);
      v45 = v48;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v44, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    if (v17 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      goto LABEL_10;
    }
  }

  if (!*(v49 + 16))
  {
    swift_beginAccess();
    *(v47 + 16) = 1;
  }

  dispatch_group_leave(a3);
}

void sub_1CF2F8D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unint64_t, uint64_t, void *), uint64_t a6, uint64_t a7)
{
  v62 = a7;
  v67 = a6;
  v68 = a5;
  v66 = a4;
  v64 = a3;
  v65 = a2;
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v63 = a1;
  v13 = *(a1 + 16);
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  v73 = (v9 + 8);
  v74 = v13;

  v19 = 0;
  *&v20 = 136315394;
  v69 = v20;
  v71 = v8;
  v70 = v12;
  while (v17)
  {
    v21 = v19;
LABEL_11:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = v22 | (v21 << 6);
    v24 = *(v74 + 56);
    v25 = *(v74 + 48) + 16 * v23;
    v26 = *(v25 + 8);
    v75 = *v25;
    v27 = *(v24 + 8 * v23);

    v28 = v27;
    v29 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v30 = v27;
    v31 = sub_1CF9E6108();
    v32 = sub_1CF9E72A8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v76[0] = v72;
      *v33 = v69;
      v35 = sub_1CEFD0DF0(v75, v26, v76);
      v75 = v31;
      v36 = v35;

      *(v33 + 4) = v36;
      *(v33 + 12) = 2112;
      swift_getErrorValue();
      v37 = Error.prettyDescription.getter(v76[4]);
      *(v33 + 14) = v37;
      *v34 = v37;
      v38 = v75;
      _os_log_impl(&dword_1CEFC7000, v75, v32, "⚔️  Error when updating conflict loser with version %s: %@", v33, 0x16u);
      sub_1CEFCCC44(v34, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v39 = v34;
      v8 = v71;
      MEMORY[0x1D386CDC0](v39, -1, -1);
      v40 = v72;
      __swift_destroy_boxed_opaque_existential_1(v72);
      MEMORY[0x1D386CDC0](v40, -1, -1);
      v41 = v33;
      v12 = v70;
      MEMORY[0x1D386CDC0](v41, -1, -1);
    }

    else
    {
    }

    (*v73)(v12, v8);
    v19 = v21;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      return;
    }

    if (v21 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v21);
    ++v19;
    if (v17)
    {
      goto LABEL_11;
    }
  }

  v42 = v65;
  swift_beginAccess();
  if (*(v42 + 16))
  {
    v43 = v64;
    swift_beginAccess();
    v44 = *(v43 + 16);
  }

  else
  {
    v44 = 1;
  }

  v45 = v66;
  swift_beginAccess();
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = v46;
    v48 = sub_1CF4E2D78(MEMORY[0x1E69E7CC0]);
    v49 = v46;
    v68(v48, v44, v46);

LABEL_20:

    return;
  }

  v50 = v63;
  swift_beginAccess();
  v51 = *(v50 + 16);

  sub_1CF6619B0(v52);
  v54 = v53;
  v46 = v55;

  if (v54)
  {
    v56 = sub_1CF4E2D78(MEMORY[0x1E69E7CC0]);
    v57 = v46;
    v68(v56, v44, v46);

    goto LABEL_20;
  }

  v58 = v62;
  swift_beginAccess();
  v59 = *(v58 + 16);

  v68(v60, v44, 0);
}

void sub_1CF2F9304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a2;
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  if (qword_1EC4BCD00 != -1)
  {
    swift_once();
  }

  v9 = fpfs_current_log();
  (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  (*(v7 + 32))(v11 + v10, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v12 = (v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = v14;
  v12[1] = a3;

  sub_1CF01001C(v9, "listConflicts(for:completionHandler:)", 37, 2, sub_1CF2FC614, v11);
}

uint64_t sub_1CF2F94E0(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, void))
{
  v12 = sub_1CF4E0980(MEMORY[0x1E69E7CC0]);
  v6 = *(a1 + 16);
  v7 = *MEMORY[0x1E69A07A8];
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = sub_1CF2CC430(a2, v8, v9);

  sub_1CF2F673C(v10);

  a3(v12, 0);
}

void sub_1CF2F9624(void **a1)
{
  v3 = sub_1CF9E6118();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = [v8 name];
  if (!v9)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = [objc_opt_self() parseEtag_];

  if (!v11)
  {
    v32 = v4;
    v20 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v21 = v8;
    v22 = sub_1CF9E6108();
    v23 = sub_1CF9E72A8();
    if (!os_log_type_enabled(v22, v23))
    {

      (*(v32 + 8))(v7, v3);
      return;
    }

    v31 = v1;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v33 = v25;
    *v24 = 136315138;
    v26 = [v21 name];

    if (v26)
    {
      v27 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v29 = v28;

      v30 = sub_1CEFD0DF0(v27, v29, &v33);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_1CEFC7000, v22, v23, "⚔️  Loser %s has invalid format, ignoring it...", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1D386CDC0](v25, -1, -1);
      MEMORY[0x1D386CDC0](v24, -1, -1);

      (*(v32 + 8))(v7, v3);
      return;
    }

    goto LABEL_12;
  }

  v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v14 = v13;

  v15 = [v8 name];
  if (v15)
  {
    v16 = v15;
    v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  sub_1CF1C8A44(v17, v19, v12, v14);
}

void sub_1CF2F9914(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v57 = a3;
  v69 = a1;
  v5 = sub_1CF9E63A8();
  v63 = *(v5 - 8);
  v64 = v5;
  v6 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1CF9E6448();
  v60 = *(v62 - 8);
  v8 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StagedRemoteVersion(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = type metadata accessor for GSConflictInfo(0);
  v72 = *(v13 - 8);
  v14 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = dispatch_group_create();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E7CC8];
  *(v18 + 16) = MEMORY[0x1E69E7CC8];
  v20 = swift_allocObject();
  v21 = a2;
  v22 = v20;
  *(v20 + 16) = v19;
  v23 = *(v21 + 16);
  v73 = v17;
  if (v23)
  {
    v24 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = *(v13 + 20);
    v67 = (v16 + *(v13 + 24));
    v68 = v25;
    v26 = v21 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v27 = *(v72 + 72);
    v65 = v12 + 7;
    v66 = v27;
    do
    {
      sub_1CF2FC770(v26, v16, type metadata accessor for GSConflictInfo);
      dispatch_group_enter(v17);
      v28 = *v67;
      v71 = v67[1];
      v72 = v28;
      sub_1CF2FC770(v16, v24, type metadata accessor for StagedRemoteVersion);
      v29 = v24;
      v30 = v22;
      v31 = v18;
      v32 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v33 = (v65 + v32) & 0xFFFFFFFFFFFFFFF8;
      v34 = v11;
      v35 = swift_allocObject();
      *(v35 + 16) = v73;
      *(v35 + 24) = v31;
      v36 = v35 + v32;
      v18 = v31;
      v22 = v30;
      v24 = v29;
      sub_1CF2FC7D8(v29, v36);
      *(v35 + v33) = v22;
      v17 = v73;
      v37 = v73;

      sub_1CF2FA4BC(v69, v16, v16 + v68, v72, v71, sub_1CF2FC83C, v35);
      v11 = v34;

      sub_1CF2FC8DC(v16, type metadata accessor for GSConflictInfo);
      v26 += v66;
      --v23;
    }

    while (v23);
  }

  if (qword_1EC4BCD00 != -1)
  {
    swift_once();
  }

  v38 = qword_1EC4BF330;
  v39 = swift_allocObject();
  v40 = v58;
  v39[2] = v57;
  v39[3] = v40;
  v39[4] = v22;
  v39[5] = v18;

  v41 = fpfs_current_log();
  v71 = fpfs_adopt_log();
  v42 = swift_allocObject();
  v72 = v18;
  v43 = v42;
  aBlock = sub_1CF9E73C8();
  v76 = v44;
  v70 = v22;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v45 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v45);

  sub_1CF9E6978();

  v46 = __fp_log_fork();

  *(v43 + 16) = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = v41;
  *(v47 + 24) = v43;
  *(v47 + 32) = v38;
  *(v47 + 40) = "saveConflicts(for:conflicts:completionHandler:)";
  *(v47 + 48) = 47;
  *(v47 + 56) = 2;
  *(v47 + 64) = sub_1CF2FC93C;
  *(v47 + 72) = v39;
  v79 = sub_1CF2B9F54;
  v80 = v47;
  aBlock = MEMORY[0x1E69E9820];
  v76 = 1107296256;
  v77 = sub_1CEFCA444;
  v78 = &block_descriptor_55;
  v48 = _Block_copy(&aBlock);
  v69 = v41;

  v49 = v38;

  v50 = v59;
  sub_1CF9E63F8();
  v74 = MEMORY[0x1E69E7CC0];
  sub_1CF2FC9FC(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v51 = v61;
  v52 = v64;
  sub_1CF9E77B8();
  v53 = v73;
  sub_1CF9E7308();
  _Block_release(v48);
  (*(v63 + 8))(v51, v52);
  (*(v60 + 8))(v50, v62);

  v54 = v71;
  v55 = fpfs_adopt_log();
}

void sub_1CF2FA0D8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v33[1] = a4;
  v34 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v33 - v7;
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF008, &unk_1CFA01CB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (v33 - v16);
  sub_1CEFCCBDC(a1, v33 - v16, &qword_1EC4BF008, &unk_1CFA01CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    v19 = sub_1CF93CF34();
    v20 = [v19 description];

    v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v23 = v22;

    v24 = v34;
    swift_beginAccess();
    v25 = v18;
    v26 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *v24;
    *v24 = 0x8000000000000000;
    sub_1CF1D214C(v18, v21, v23, isUniquelyReferenced_nonNull_native);

    *v24 = v36;
    swift_endAccess();
  }

  else
  {
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF010, &unk_1CFA01890) + 48);
    (*(v10 + 32))(v13, v17, v9);
    v29 = sub_1CF93D034();
    v31 = v30;
    (*(v10 + 16))(v8, v13, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    swift_beginAccess();
    sub_1CF1C8FC0(v8, v29, v31);
    swift_endAccess();
    v32 = *(v10 + 8);
    v32(v13, v9);
    v32(v17 + v28, v9);
  }
}

uint64_t sub_1CF2FA414(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a3 + 16);
  swift_beginAccess();
  v8 = *(a4 + 16);

  a1(v7, v8);
}

uint64_t sub_1CF2FA4BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v308 = a7;
  v306 = a6;
  v275 = a5;
  v273 = a4;
  v283 = a3;
  v314 = a2;
  v310 = a1;
  v325 = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v284 = &v273 - v9;
  v309 = sub_1CF9E5A58();
  v300 = *(v309 - 8);
  v10 = *(v300 + 64);
  MEMORY[0x1EEE9AC00](v309);
  v279 = &v273 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v290 = &v273 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v277 = &v273 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v276 = &v273 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v274 = &v273 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v286 = &v273 - v21;
  v278 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v296 = &v273 - v24;
  v294 = type metadata accessor for ItemMetadata();
  v25 = *(*(v294 - 8) + 64);
  MEMORY[0x1EEE9AC00](v294);
  v293 = &v273 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v292 = type metadata accessor for StagedRemoteVersion(0);
  v27 = *(*(v292 - 8) + 64);
  MEMORY[0x1EEE9AC00](v292);
  v305 = (&v273 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_1CF9E6118();
  v312 = *(v29 - 8);
  v313 = v29;
  v30 = *(v312 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v285 = &v273 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v295 = &v273 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v289 = &v273 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v288 = &v273 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v297 = &v273 - v39;
  v40 = sub_1CF9E53C8();
  v281 = *(v40 - 8);
  v282 = v40;
  v41 = *(v281 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v280 = &v273 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF008, &unk_1CFA01CB0);
  v43 = *(*(v298 - 8) + 64);
  MEMORY[0x1EEE9AC00](v298);
  v299 = (&v273 - v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1180, &unk_1CFA18170);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v301 = &v273 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v273 - v49;
  v51 = sub_1CF9E5748();
  v303 = *(v51 - 8);
  v304 = v51;
  v52 = *(v303 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v302 = &v273 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v57 = &v273 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v273 - v59;
  v61 = sub_1CF9E5CF8();
  v62 = *(v61 - 8);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v65 = &v273 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  v291 = xmmword_1CF9FA450;
  *(inited + 16) = xmmword_1CF9FA450;
  *(inited + 32) = 0x534650467369;
  v67 = inited + 32;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x1E69E6370];
  v68 = 1;
  *(inited + 48) = 1;
  v315 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  sub_1CEFCCC44(v67, &unk_1EC4BE300, &unk_1CF9FC5D0);
  v311 = *v314;
  v69 = [v311 contentModificationDate];
  if (v69)
  {
    v70 = v69;
    sub_1CF9E5CB8();

    v68 = 0;
  }

  (*(v62 + 56))(v57, v68, 1, v61);
  sub_1CEFE55D0(v57, v60, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if ((*(v62 + 48))(v60, 1, v61) == 1)
  {
    sub_1CEFCCC44(v60, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v71 = v315;
  }

  else
  {
    (*(v62 + 32))(v65, v60, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF340, &qword_1CFA01CC8);
    v72 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0D30, &qword_1CFA01CD0) - 8);
    v73 = *(*v72 + 72);
    v74 = (*(*v72 + 80) + 32) & ~*(*v72 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = v291;
    v76 = (v75 + v74);
    v77 = v72[14];
    *v76 = 0xD000000000000010;
    *(v76 + 1) = 0x80000001CFA3ED40;
    (*(v62 + 16))(&v76[v77], v65, v61);
    v78 = sub_1CF4E2B8C(v75);
    swift_setDeallocating();
    sub_1CEFCCC44(v76, &qword_1EC4C0D30, &qword_1CFA01CD0);
    swift_deallocClassInstance();
    v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF348, qword_1CFA01CD8);
    *&v320 = v78;
    sub_1CEFE9EB8(&v320, v319);
    v79 = v315;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v317 = v79;
    sub_1CF1D154C(v319, 0x656D75636F44534ELL, 0xEE006F666E49746ELL, isUniquelyReferenced_nonNull_native);
    (*(v62 + 8))(v65, v61);
    v71 = v317;
  }

  v81 = v304;
  v82 = v305;
  v84 = v302;
  v83 = v303;
  v85 = v301;
  v86 = [v311 mostRecentEditorNameComponents];
  if (v86)
  {
    v87 = v86;
    sub_1CF9E5738();

    v88 = 0;
  }

  else
  {
    v88 = 1;
  }

  (*(v83 + 56))(v85, v88, 1, v81);
  sub_1CEFE55D0(v85, v50, &qword_1EC4C1180, &unk_1CFA18170);
  if ((*(v83 + 48))(v50, 1, v81) == 1)
  {
    sub_1CEFCCC44(v50, &qword_1EC4C1180, &unk_1CFA18170);
  }

  else
  {
    (*(v83 + 32))(v84, v50, v81);
    v89 = objc_opt_self();
    v90 = sub_1CF9E5728();
    *&v320 = 0;
    v91 = [v89 archivedDataWithRootObject:v90 requiringSecureCoding:1 error:&v320];

    v92 = v320;
    if (!v91)
    {
      v188 = v92;

      v189 = sub_1CF9E57F8();

      swift_willThrow();
      (*(v83 + 8))(v84, v81);
      v190 = fpfs_current_or_default_log();
      v191 = v285;
      sub_1CF9E6128();
      v192 = v300;
      v193 = v279;
      v194 = v309;
      (*(v300 + 16))(v279, v310, v309);
      v195 = v189;
      v196 = sub_1CF9E6108();
      v197 = sub_1CF9E72A8();

      if (os_log_type_enabled(v196, v197))
      {
        v198 = swift_slowAlloc();
        LODWORD(v314) = v197;
        v199 = v198;
        v311 = swift_slowAlloc();
        v315 = swift_slowAlloc();
        *&v320 = v315;
        *v199 = 136446466;
        v200 = sub_1CF9E5928();
        v201 = [v200 fp_shortDescription];

        v202 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v204 = v203;

        (*(v192 + 8))(v193, v194);
        v205 = sub_1CEFD0DF0(v202, v204, &v320);

        *(v199 + 4) = v205;
        *(v199 + 12) = 2112;
        swift_getErrorValue();
        v206 = Error.prettyDescription.getter(v316);
        *(v199 + 14) = v206;
        v207 = v311;
        *v311 = v206;
        _os_log_impl(&dword_1CEFC7000, v196, v314, "failed to add conflict to %{public}s: %@", v199, 0x16u);
        sub_1CEFCCC44(v207, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v207, -1, -1);
        v208 = v315;
        __swift_destroy_boxed_opaque_existential_1(v315);
        MEMORY[0x1D386CDC0](v208, -1, -1);
        MEMORY[0x1D386CDC0](v199, -1, -1);

        (*(v312 + 8))(v285, v313);
      }

      else
      {

        (*(v192 + 8))(v193, v194);
        (*(v312 + 8))(v191, v313);
      }

      v110 = v299;
      *v299 = v189;
      swift_storeEnumTagMultiPayload();
      v226 = v189;
      v306(v110);

      goto LABEL_35;
    }

    v93 = sub_1CF9E5B88();
    v95 = v94;

    v322 = MEMORY[0x1E6969080];
    *&v320 = v93;
    *(&v320 + 1) = v95;
    sub_1CEFE9EB8(&v320, v319);
    sub_1CEFE42D4(v93, v95);
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v317 = v71;
    sub_1CF1D154C(v319, 0xD000000000000021, 0x80000001CFA3ED10, v96);
    sub_1CEFE4714(v93, v95);
    (*(v83 + 8))(v84, v81);
    v71 = v317;
  }

  v97 = v314;
  v98 = sub_1CF93CF34();
  v99 = [v98 lastEditorDeviceName];

  v100 = MEMORY[0x1E69E6158];
  if (v99)
  {
    v101 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v103 = v102;

    v322 = v100;
    *&v320 = v101;
    *(&v320 + 1) = v103;
    sub_1CEFE9EB8(&v320, v319);
    v104 = swift_isUniquelyReferenced_nonNull_native();
    v317 = v71;
    sub_1CF1D154C(v319, 0xD00000000000001DLL, 0x80000001CFA3ECF0, v104);
    v71 = v317;
  }

  v105 = v310;
  v106 = v297;
  if (!os_variant_has_internal_content() || *(v307 + 24) != 1)
  {
    v111 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CF2FC770(v97, v82, type metadata accessor for StagedRemoteVersion);
    v112 = sub_1CF9E6108();
    v113 = sub_1CF9E7288();
    v114 = os_log_type_enabled(v112, v113);
    v315 = v71;
    if (v114)
    {
      v115 = v106;
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      *&v320 = v117;
      *v116 = 136315138;
      v118 = sub_1CF93D034();
      v119 = v82;
      v121 = v120;
      sub_1CF2FC8DC(v119, type metadata accessor for StagedRemoteVersion);
      v122 = sub_1CEFD0DF0(v118, v121, &v320);

      *(v116 + 4) = v122;
      _os_log_impl(&dword_1CEFC7000, v112, v113, "⚔️  Putting loser %s into the Genstore...", v116, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v117);
      MEMORY[0x1D386CDC0](v117, -1, -1);
      MEMORY[0x1D386CDC0](v116, -1, -1);

      v123 = *(v312 + 8);
      v124 = v115;
    }

    else
    {

      sub_1CF2FC8DC(v82, type metadata accessor for StagedRemoteVersion);
      v123 = *(v312 + 8);
      v124 = v106;
    }

    v305 = v123;
    v123(v124, v313);
    v125 = *(v307 + 16);
    v126 = sub_1CF93D034();
    v128 = v127;
    v129 = *MEMORY[0x1E69A07A8];
    v130 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v132 = v131;
    v133 = v293;
    v303 = *(v292 + 20);
    sub_1CEFF54BC(v293);
    v134 = v133[*(v294 + 52)];
    sub_1CF2FC8DC(v133, type metadata accessor for ItemMetadata);
    v135 = *(v125 + 16);
    v136 = sub_1CF9E5928();
    *&v320 = 0;
    v137 = [v135 permanentStorageForItemAtURL:v136 allocateIfNone:1 error:&v320];

    v138 = v320;
    v311 = v137;
    v307 = v128;
    if (v137)
    {
      sub_1CF9E58E8();
      v139 = sub_1CF9E6888();

      v140 = [v139 fp:v134 displayNameFromFilenameWithHiddenPathExtension:0 isFolder:?];

      v141 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v304 = v132;
      v143 = v142;

      v144 = swift_initStackObject();
      *(v144 + 16) = xmmword_1CFA001F0;
      v145 = *MEMORY[0x1E69A0788];
      *(v144 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(v144 + 40) = v146;
      v147 = sub_1CF9E58E8();
      v148 = MEMORY[0x1E69E6158];
      *(v144 + 72) = MEMORY[0x1E69E6158];
      *(v144 + 48) = v147;
      *(v144 + 56) = v149;
      v150 = *MEMORY[0x1E69A0768];
      *(v144 + 80) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(v144 + 88) = v151;
      *(v144 + 120) = v148;
      *(v144 + 96) = v126;
      *(v144 + 104) = v128;
      v152 = *MEMORY[0x1E69A0758];
      *(v144 + 128) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(v144 + 136) = v153;
      *(v144 + 168) = v148;
      *(v144 + 144) = v141;
      *(v144 + 152) = v143;
      v154 = v304;
      v155 = *MEMORY[0x1E69A0760];
      *(v144 + 176) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(v144 + 184) = v156;
      *(v144 + 216) = MEMORY[0x1E69E6370];
      *(v144 + 192) = 1;
      v157 = *MEMORY[0x1E69A0790];
      *(v144 + 224) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(v144 + 232) = v158;
      *(v144 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0920, &qword_1CFA01CC0);
      *(v144 + 240) = v315;
      v159 = *MEMORY[0x1E69A0770];
      *(v144 + 272) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(v144 + 280) = v160;
      *(v144 + 312) = v148;
      *(v144 + 288) = v130;
      *(v144 + 296) = v154;

      v161 = sub_1CF4E04E8(v144);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
      swift_arrayDestroy();
      v162 = fpfs_current_or_default_log();
      v163 = v288;
      sub_1CF9E6128();

      v164 = sub_1CF9E6108();
      v165 = sub_1CF9E7288();

      v166 = os_log_type_enabled(v164, v165);
      v302 = v126;
      if (v166)
      {
        v167 = v161;
        v168 = swift_slowAlloc();
        v169 = swift_slowAlloc();
        *&v320 = v169;
        *v168 = 136315138;
        *(v168 + 4) = sub_1CEFD0DF0(v126, v128, &v320);
        _os_log_impl(&dword_1CEFC7000, v164, v165, "⚔️  Putting remote version %s into Genstore...", v168, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v169);
        MEMORY[0x1D386CDC0](v169, -1, -1);
        v170 = v168;
        v161 = v167;
        MEMORY[0x1D386CDC0](v170, -1, -1);
      }

      v171 = *(v312 + 8);
      v171(v163, v313);
      v172 = v300;
      v173 = v289;
      v174 = v311;
      v175 = sub_1CF9E5928();
      sub_1CF7BA9CC(v161);
      v176 = v161;
      v177 = sub_1CF9E6618();

      *&v320 = 0;
      v178 = [v174 prepareAdditionCreationWithItemAtURL:v175 byMoving:1 creationInfo:v177 error:&v320];

      v179 = v320;
      v105 = v310;
      if (v178)
      {
        v314 = v176;
        sub_1CF9E59D8();
        v180 = v179;

        v181 = v284;
        sub_1CEFCCBDC(v283, v284, &unk_1EC4BE310, qword_1CF9FCBE0);
        v182 = v309;
        if ((*(v172 + 48))(v181, 1, v309) == 1)
        {
          sub_1CEFCCC44(v181, &unk_1EC4BE310, qword_1CF9FCBE0);
LABEL_42:
          v233 = v314;
          v234 = v296;
          v314 = sub_1CF9E5928();
          sub_1CF7BA9CC(v233);

          v313 = sub_1CF9E6618();

          v235 = *(v172 + 16);
          v236 = v172;
          v237 = v276;
          v238 = v309;
          v235(v276, v105, v309);
          v239 = v277;
          v235(v277, v234, v238);
          v240 = *(v236 + 80);
          v241 = (v240 + 32) & ~v240;
          v242 = (v278 + v240 + v241) & ~v240;
          v243 = swift_allocObject();
          v244 = v308;
          *(v243 + 16) = v306;
          *(v243 + 24) = v244;
          v245 = *(v236 + 32);
          v245(v243 + v241, v237, v238);
          v245(v243 + v242, v239, v238);
          v323 = sub_1CF2FC6C0;
          v324 = v243;
          *&v320 = MEMORY[0x1E69E9820];
          *(&v320 + 1) = 1107296256;
          v321 = sub_1CEFF99E0;
          v322 = &block_descriptor_39;
          v246 = _Block_copy(&v320);

          v247 = v311;
          v249 = v313;
          v248 = v314;
          [v311 createAdditionStagedAtURL:v314 creationInfo:v313 completionHandler:v246];
          _Block_release(v246);

          (*(v236 + 8))(v296, v238);

LABEL_49:

          goto LABEL_50;
        }

        v305 = v171;
        v210 = v286;
        (*(v172 + 32))(v286, v181, v182);
        v211 = fpfs_current_or_default_log();
        v212 = v173;
        sub_1CF9E6128();
        v213 = v274;
        (*(v172 + 16))(v274, v210, v182);
        v214 = v307;

        v215 = sub_1CF9E6108();
        v216 = v172;
        v217 = sub_1CF9E7288();

        if (os_log_type_enabled(v215, v217))
        {
          v218 = v213;
          v219 = swift_slowAlloc();
          v301 = swift_slowAlloc();
          *&v320 = v301;
          *v219 = 136315394;
          sub_1CF2FC9FC(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0]);
          v220 = sub_1CF9E7F98();
          v222 = v221;
          v303 = *(v216 + 8);
          (v303)(v218, v182);
          v223 = sub_1CEFD0DF0(v220, v222, &v320);

          *(v219 + 4) = v223;
          *(v219 + 12) = 2080;
          *(v219 + 14) = sub_1CEFD0DF0(v302, v214, &v320);
          _os_log_impl(&dword_1CEFC7000, v215, v217, "⚔️  associate thumbnail %s for loser %s", v219, 0x16u);
          v224 = v301;
          swift_arrayDestroy();
          v105 = v310;
          MEMORY[0x1D386CDC0](v224, -1, -1);
          MEMORY[0x1D386CDC0](v219, -1, -1);

          v225 = v289;
        }

        else
        {

          v303 = *(v216 + 8);
          (v303)(v213, v182);
          v225 = v212;
        }

        v305(v225, v313);
        v172 = v216;
        v228 = sub_1CF9E5928();
        v229 = sub_1CF9E5928();
        v186 = v290;
        if (v275 >> 60 == 15)
        {
          v230 = 0;
        }

        else
        {
          v230 = sub_1CF9E5B48();
        }

        *&v320 = 0;
        v231 = [v228 fp:v229 associateThumbnailToVersionAtURL:v230 thumbnailMetadata:&v320 error:?];

        if (v231)
        {
          v232 = v320;
          (v303)(v286, v309);
          goto LABEL_42;
        }

        v250 = v320;

        v184 = sub_1CF9E57F8();

        swift_willThrow();
        v185 = v309;
        v251 = v303;
        (v303)(v286, v309);
        v251(v296, v185);
      }

      else
      {
        v305 = v171;
        v209 = v320;

        v184 = sub_1CF9E57F8();

        swift_willThrow();
        v185 = v309;
        v186 = v290;
      }

      v187 = v295;
    }

    else
    {
      v183 = v138;
      v184 = sub_1CF9E57F8();

      swift_willThrow();
      v185 = v309;
      v186 = v290;
      v187 = v295;
    }

    v252 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v253 = v300;
    (*(v300 + 16))(v186, v105, v185);
    v254 = v184;
    v255 = sub_1CF9E6108();
    v256 = sub_1CF9E72A8();

    if (os_log_type_enabled(v255, v256))
    {
      v257 = swift_slowAlloc();
      v311 = swift_slowAlloc();
      v314 = swift_slowAlloc();
      *&v320 = v314;
      *v257 = 136446466;
      v258 = sub_1CF9E5928();
      v259 = [v258 fp_shortDescription];
      LODWORD(v310) = v256;
      v260 = v259;

      v261 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v262 = v186;
      v264 = v263;

      (*(v253 + 8))(v262, v309);
      v265 = sub_1CEFD0DF0(v261, v264, &v320);

      *(v257 + 4) = v265;
      *(v257 + 12) = 2112;
      swift_getErrorValue();
      v266 = Error.prettyDescription.getter(v318);
      *(v257 + 14) = v266;
      v267 = v311;
      *v311 = v266;
      _os_log_impl(&dword_1CEFC7000, v255, v310, "failed to add version to %{public}s: %@", v257, 0x16u);
      sub_1CEFCCC44(v267, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v267, -1, -1);
      v268 = v314;
      __swift_destroy_boxed_opaque_existential_1(v314);
      MEMORY[0x1D386CDC0](v268, -1, -1);
      MEMORY[0x1D386CDC0](v257, -1, -1);

      v269 = v295;
    }

    else
    {

      (*(v253 + 8))(v186, v185);
      v269 = v187;
    }

    v305(v269, v313);
    v270 = v299;
    *v299 = v184;
    swift_storeEnumTagMultiPayload();
    v271 = v184;
    v306(v270);

    sub_1CEFCCC44(v270, &qword_1EC4BF008, &unk_1CFA01CB0);

    goto LABEL_49;
  }

  LODWORD(v320) = 12;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF2FC9FC(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
  v107 = v280;
  v108 = v282;
  sub_1CF9E57D8();
  v109 = sub_1CF9E53A8();
  (*(v281 + 8))(v107, v108);
  v110 = v299;
  *v299 = v109;
  swift_storeEnumTagMultiPayload();
  v306(v110);
LABEL_35:
  result = sub_1CEFCCC44(v110, &qword_1EC4BF008, &unk_1CFA01CB0);
LABEL_50:
  v272 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF2FC298(char a1)
{
  result = os_variant_has_internal_content();
  if (result)
  {
    *(v1 + 24) = a1 & 1;
  }

  return result;
}

uint64_t GSConflictManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t GSConflictManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1CF2FC34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a2;
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = *v3;
  if (qword_1EC4BCD00 != -1)
  {
    swift_once();
  }

  v10 = fpfs_current_log();
  (*(v7 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  (*(v7 + 32))(v12 + v11, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v13 = (v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v15;
  v13[1] = a3;

  sub_1CF01001C(v10, "listConflicts(for:completionHandler:)", 37, 2, sub_1CF2FCA7C, v12);
}

void sub_1CF2FC528(void *a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF2F793C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), (v1 + v4), *(v1 + v5), *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_1CF2FC6C0(void *a1, void *a2)
{
  v5 = *(sub_1CF9E5A58() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = v2 + ((*(v5 + 64) + v6 + v7) & ~v6);

  return sub_1CF2CB8C8(a1, a2, v8, v9, v2 + v7, v10);
}

uint64_t sub_1CF2FC770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF2FC7D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StagedRemoteVersion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CF2FC83C(uint64_t a1)
{
  v3 = *(type metadata accessor for StagedRemoteVersion(0) - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);

  sub_1CF2FA06C(a1, v5);
}

uint64_t sub_1CF2FC8DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF2FC968()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_1CF2F94E0(v3, v0 + v2, v5);
}

uint64_t sub_1CF2FC9FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF2FCAB8(uint64_t a1)
{
  v2 = sub_1CF9E5A58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1CF9E59D8();
  v8(v6);
  return (*(v3 + 8))(v6, v2);
}

id sub_1CF2FCB9C()
{
  ObjectType = swift_getObjectType();
  v0 = sub_1CF9E5A58();
  v77 = *(v0 - 8);
  v78 = v0;
  v1 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v74 = v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v75 = v65 - v4;
  v5 = type metadata accessor for LocalDomain();
  v6 = *(v5 - 8);
  v76 = v5 - 8;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E7388();
  v71 = *(v10 - 8);
  v72 = v10;
  v11 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v70 = v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E7318();
  v69 = *(v13 - 8);
  v14 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v67 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v65 - v17;
  v66 = sub_1CF9E6448();
  v19 = *(v66 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v22 = v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v65 - v24;
  v68 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_queue;
  v65[1] = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  sub_1CF9E63F8();
  v81 = MEMORY[0x1E69E7CC0];
  sub_1CEFD5B1C(&qword_1EDEAED80, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CEFCCCEC(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CF9E77B8();
  v26 = v66;
  (*(v19 + 16))(v22, v25, v66);
  v27 = v69;
  (*(v69 + 16))(v67, v18, v13);
  (*(v71 + 104))(v70, *MEMORY[0x1E69E8098], v72);
  v28 = sub_1CF9E73B8();
  (*(v27 + 8))(v18, v13);
  (*(v19 + 8))(v25, v26);
  v29 = v73;
  *&v73[v68] = v28;
  v30 = [objc_opt_self() legacyDefaultManager];
  v31 = [v30 documentStorageURL];
  v32 = v74;
  sub_1CF9E59D8();

  v33 = v75;
  sub_1CEFFBA1C(v75);
  v34 = v77;
  v35 = *(v77 + 8);
  v36 = v32;
  v37 = v78;
  v35(v36, v78);
  v38 = *MEMORY[0x1E6967178];
  *(v9 + 2) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(v9 + 3) = v39;
  *(v9 + 4) = 0x6C75616665645F5FLL;
  *(v9 + 5) = 0xEB000000005F5F74;
  v40 = v76;
  v41 = *(v76 + 40);
  v42 = *(v34 + 16);
  v43 = v33;
  v44 = v33;
  v45 = v37;
  v42(&v9[v41], v43, v37);
  v9[*(v40 + 44)] = 1;
  LODWORD(v41) = sub_1CEFFBB54(&v9[v41]);
  v47 = v46;

  v35(v44, v45);
  *v9 = v47;
  *(v9 + 2) = v41;
  sub_1CEFFC48C(v9, v29 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, type metadata accessor for LocalDomain);
  v83.receiver = v29;
  v83.super_class = ObjectType;
  v48 = objc_msgSendSuper2(&v83, sel_init);
  sub_1CEFFC55C();
  sub_1CEFFC714();
  if ((fpfs_set_vfs_ignore_permissions_iopolicy() & 0x80000000) != 0)
  {
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_1CF9E7948();
    v49 = MEMORY[0x1D3868CC0](0xD000000000000032, 0x80000001CFA3F890);
    v80 = MEMORY[0x1D38683F0](v49);
    v50 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v50);

    v51 = v81;
    v52 = v82;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E72B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1CF9FA450;
    *(v53 + 56) = MEMORY[0x1E69E6158];
    *(v53 + 64) = sub_1CEFD51C4();
    *(v53 + 32) = v51;
    *(v53 + 40) = v52;
    sub_1CF9E6018();
  }

  v54 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v55 = sub_1CF9E6888();
  v56 = [v54 initWithSuiteName_];

  if (v56 && (v57 = sub_1CF9E6888(), v58 = [v56 BOOLForKey_], v56, v57, (v58 & 1) != 0) && (fpfs_set_vfs_parent_mtime_iopolicy() & 0x80000000) != 0)
  {
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_1CF9E7948();

    v81 = 0xD00000000000002CLL;
    v82 = 0x80000001CFA3F860;
    v80 = MEMORY[0x1D38683F0](v60);
    v61 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v61);

    v62 = v81;
    v63 = v82;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E72B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1CF9FA450;
    *(v64 + 56) = MEMORY[0x1E69E6158];
    *(v64 + 64) = sub_1CEFD51C4();
    *(v64 + 32) = v62;
    *(v64 + 40) = v63;
    sub_1CF9E6018();
  }

  else
  {
  }

  return v48;
}

uint64_t sub_1CF2FD4F4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1CF9E7948();

  v15 = a1;
  v3 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v3);

  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v5 = sub_1CF9E7718();
  v7 = v6;
  v8 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1CEFD51C4();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 96) = v8;
  *(v4 + 104) = v9;
  *(v4 + 64) = v9;
  *(v4 + 72) = 0x752070756B6F6F6CLL;
  *(v4 + 80) = 0xEF20726F66206C72;

  sub_1CF9E6018();

  sub_1CF2FD7DC(v15, v16, a2);

  sub_1CF9E7298();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1CF9FA450;
  v11 = sub_1CF9E7718();
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = v9;
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  sub_1CF9E6018();
}

uint64_t sub_1CF2FD7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v30 - v13;
  sub_1CEFFD89C((a2 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain), 1, a1, v10);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v15 - 8) + 48))(v10, 1, v15) == 1)
  {
    sub_1CEFCCC44(v10, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    v16 = sub_1CF9E5A58();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
LABEL_5:
    sub_1CEFCCC44(v14, &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CF9E5A58();
    return (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
  }

  v31 = a3;
  v34 = v3;
  v17 = *(v15 + 48);
  v16 = sub_1CF9E5A58();
  v18 = *(v16 - 8);
  v19 = *(v18 + 32);
  v19(v14, v10, v16);
  v30 = *(v18 + 56);
  v30(v14, 0, 1, v16);
  sub_1CEFCCC44(&v10[v17], &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v18 + 48))(v14, 1, v16) == 1)
  {
    a3 = v31;
    goto LABEL_5;
  }

  v21 = v31;
  v19(v31, v14, v16);
  v32 = 0x20646E756F66;
  v33 = 0xE600000000000000;
  sub_1CF9E5A18();
  v22 = sub_1CF9E6888();

  v23 = [v22 fp_prettyPath];

  v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v26 = v25;

  MEMORY[0x1D3868CC0](v24, v26);

  v28 = v32;
  v27 = v33;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1CF9FA450;
  *(v29 + 56) = MEMORY[0x1E69E6158];
  *(v29 + 64) = sub_1CEFD51C4();
  *(v29 + 32) = v28;
  *(v29 + 40) = v27;
  sub_1CF9E6018();

  return (v30)(v21, 0, 1, v16);
}

uint64_t sub_1CF2FDD8C(uint64_t a1)
{
  sub_1CF9E7948();

  v20[1] = 0x80000001CFA3F530;
  v18 = a1;
  sub_1CF9E5A18();
  v2 = sub_1CF9E6888();

  v3 = [v2 fp_prettyPath];

  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;

  MEMORY[0x1D3868CC0](v4, v6);

  v7 = sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1CF9FA440;
  v20[0] = v7;
  sub_1CEFFD0A8();
  v9 = sub_1CF9E7718();
  v11 = v10;
  v12 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1CEFD51C4();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = v12;
  *(v8 + 104) = v13;
  *(v8 + 64) = v13;
  *(v8 + 72) = 0xD000000000000013;
  *(v8 + 80) = 0x80000001CFA3F530;

  sub_1CF9E6018();

  sub_1CF2FE0B4(v18, v19, v20);

  sub_1CF9E7298();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1CF9FA450;
  v15 = sub_1CF9E7718();
  *(v14 + 56) = v12;
  *(v14 + 64) = v13;
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  sub_1CF9E6018();

  return v20[0];
}

void sub_1CF2FE0B4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v36 = a2;
  v38 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v37 = &v35 - v6;
  v7 = type metadata accessor for LocalDomain();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = sub_1CF9E5A58();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v35 - v21;
  v23 = *(v15 + 16);
  v23(&v35 - v21, a1, v14, v20);
  sub_1CEFFD30C(v36 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, v13, type metadata accessor for LocalDomain);
  (v23)(v18, v22, v14);
  sub_1CEFFD30C(v13, v10, type metadata accessor for LocalDomain);
  v24 = type metadata accessor for VFSItem(0);
  v25 = v37;
  (*(*(v24 - 8) + 56))(v37, 1, 1, v24);
  v26 = objc_allocWithZone(type metadata accessor for LocalItem(0));
  v27 = sub_1CF001704(v18, v10, v25);
  sub_1CF007BF8(v13, type metadata accessor for LocalDomain);
  (*(v15 + 8))(v22, v14);
  if (v27)
  {
    v39 = 0x20646E756F66;
    v40 = 0xE600000000000000;
    v28 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier;
    v29 = *&v27[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier];
    v30 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v30);

    v31 = v39;
    v32 = v40;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1CF9FA450;
    *(v33 + 56) = MEMORY[0x1E69E6158];
    *(v33 + 64) = sub_1CEFD51C4();
    *(v33 + 32) = v31;
    *(v33 + 40) = v32;
    sub_1CF9E6018();

    v34 = *&v27[v28];
  }

  else
  {
    v34 = 0;
  }

  *v38 = v34;
}

uint64_t sub_1CF2FE598(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(a4);
  sub_1CF9E59D8();
  v10[2](v10, 0);
  _Block_release(v10);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1CF2FE8E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - v10;
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (a2)
  {
    sub_1CF9E59D8();
    v14 = sub_1CF9E5A58();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  }

  else
  {
    v15 = sub_1CF9E5A58();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  }

  swift_unknownObjectRetain();
  v16 = a4;
  v13(v11, a3, a4);
  swift_unknownObjectRelease();

  return sub_1CEFCCC44(v11, &unk_1EC4BE310, qword_1CF9FCBE0);
}

void sub_1CF2FEBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  sub_1CEFCCBDC(a1, &v16 - v10, &unk_1EC4BE310, qword_1CF9FCBE0);
  v12 = sub_1CF9E5A58();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v14 = sub_1CF9E5928();
    (*(v13 + 8))(v11, v12);
  }

  if (a3)
  {
    v15 = sub_1CF9E57E8();
  }

  else
  {
    v15 = 0;
  }

  (*(a4 + 16))(a4, v14, a2, v15);
}

void sub_1CF2FEE60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, id), uint64_t a5)
{
  v48 = a4;
  v49 = a5;
  v47 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v44 - v9;
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LocalDomain();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = (&v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v44 - v28;
  if (a2)
  {
    swift_getErrorValue();
    v30 = sub_1CF7DBA58(a3 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, v50, v51);
    v31 = v30;
LABEL_3:
    v48(0, v31);
LABEL_9:

    return;
  }

  sub_1CEFCCBDC(v47, &v44 - v28, &unk_1EC4BE310, qword_1CF9FCBE0);
  v45 = *(v12 + 48);
  v46 = v12 + 48;
  if (v45(v29, 1, v11) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1CEFFD30C(a3 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, v22, type metadata accessor for LocalDomain);
    (*(v12 + 16))(v15, v29, v11);
    sub_1CEFFD30C(v22, v19, type metadata accessor for LocalDomain);
    v32 = type metadata accessor for VFSItem(0);
    (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
    v33 = objc_allocWithZone(type metadata accessor for LocalItem(0));
    v34 = sub_1CF001704(v15, v19, v10);
    sub_1CF007BF8(v22, type metadata accessor for LocalDomain);
    v35 = *(v12 + 8);
    v35(v29, v11);
    if (v34)
    {
      v52 = 2113085;
      v53 = 0xE300000000000000;
      v36 = [v34 description];
      v37 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v39 = v38;

      MEMORY[0x1D3868CC0](v37, v39);

      v40 = v52;
      v41 = v53;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1CF9FA450;
      *(v42 + 56) = MEMORY[0x1E69E6158];
      *(v42 + 64) = sub_1CEFD51C4();
      *(v42 + 32) = v40;
      *(v42 + 40) = v41;
      sub_1CF9E6018();

      v30 = v34;
      v48(v34, 0);

      goto LABEL_9;
    }

    sub_1CEFCCBDC(v47, v26, &unk_1EC4BE310, qword_1CF9FCBE0);
    if (v45(v26, 1, v11) != 1)
    {
      v43 = sub_1CF9E5928();
      v35(v26, v11);
      v30 = FPInvalidURLError();

      v31 = v30;
      goto LABEL_3;
    }
  }

  __break(1u);
}

void sub_1CF2FF458(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void))
{
  v57 = a3;
  v58 = a4;
  v62 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v60 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v61 = &v57 - v12;
  v13 = sub_1CF9E5A58();
  v14 = *(v13 - 8);
  v63 = v13;
  v64 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E5248();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = sub_1CF9E5268();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = swift_allocObject();
  *(v66 + 16) = a5;
  v24 = *MEMORY[0x1E6967258];
  v65 = a1;
  v25 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v27 = v26;
  if (v25 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v27 == v28)
  {
    _Block_copy(a5);
LABEL_4:

LABEL_7:
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    v31 = sub_1CF9E50D8();
    (*(v20 + 8))(v23, v19);
    goto LABEL_8;
  }

  v29 = sub_1CF9E8048();
  _Block_copy(a5);

  if (v29)
  {
    goto LABEL_7;
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v30 = sub_1CF9E6AE8();

  if (v30)
  {
    goto LABEL_7;
  }

  v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v35 = v34;
  if (v33 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v35 == v36)
  {
    goto LABEL_4;
  }

  v37 = sub_1CF9E8048();

  if (v37)
  {
    goto LABEL_7;
  }

  v38 = v62;
  v39 = v60;
  sub_1CEFFD89C(&v62[OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain], 1, v65, v60);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
  {
    sub_1CEFCCC44(v39, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    v41 = v61;
    (*(v64 + 56))(v61, 1, 1, v63);
    goto LABEL_17;
  }

  v42 = *(v40 + 48);
  v44 = v63;
  v43 = v64;
  v45 = *(v64 + 32);
  v41 = v61;
  v45(v61, v39, v63);
  (*(v43 + 56))(v41, 0, 1, v44);
  sub_1CEFCCC44(&v39[v42], &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v43 + 48))(v41, 1, v44) == 1)
  {
LABEL_17:
    sub_1CEFCCC44(v41, &unk_1EC4BE310, qword_1CF9FCBE0);
    v31 = FPItemNotFoundError();
    if (!v31)
    {
      v32 = 0;
      goto LABEL_9;
    }

LABEL_8:
    v32 = sub_1CF9E57E8();
LABEL_9:
    (a5)[2](a5, 0, v32);

    goto LABEL_10;
  }

  v45(v59, v41, v44);
  v46 = sub_1CF9E5928();
  v47 = sub_1CF9E6888();
  v48 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v49 = sub_1CF9E6888();
  v50 = [v48 initWithSuiteName_];

  if (v50)
  {
    v51 = sub_1CF9E6888();
    v52 = [v50 BOOLForKey_];

    v53 = v52 ^ 1;
  }

  else
  {
    v53 = 1;
  }

  v54 = swift_allocObject();
  v54[2] = v38;
  v54[3] = sub_1CF024BB0;
  v54[4] = v66;
  aBlock[4] = sub_1CF32723C;
  aBlock[5] = v54;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF90535C;
  aBlock[3] = &block_descriptor_344;
  v55 = _Block_copy(aBlock);
  v56 = v38;

  [v46 fp:v47 renameWithNewName:v53 allowCoordination:v55 completionHandler:?];
  _Block_release(v55);

  (*(v64 + 8))(v59, v44);

LABEL_10:
  _Block_release(a5);
}

uint64_t sub_1CF2FFD5C(uint64_t a1, void *a2, int a3, void (*a4)(uint64_t, id), uint64_t a5)
{
  v83 = a3;
  v97 = *MEMORY[0x1E69E9840];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v85 = &v75 - v11;
  v87 = sub_1CF9E5A58();
  v86 = *(v87 - 8);
  v12 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v80 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v75 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1110, &qword_1CFA08100);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = (&v75 - v19);
  v21 = type metadata accessor for LocalContainer(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v78 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v88 = &v75 - v25;
  v26 = swift_allocObject();
  v84 = a4;
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  v89 = v26;
  v27 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;

  v82 = a2;
  v81 = a1;
  sub_1CF0047A0(a2 + v27, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1CEFCCC44(v20, &unk_1EC4C1110, &qword_1CFA08100);
    v28 = *MEMORY[0x1E696A250];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FA450;
    v30 = *MEMORY[0x1E696A278];
    *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v31;
    *(inited + 48) = 0xD00000000000003DLL;
    *(inited + 56) = 0x80000001CFA3F380;
    v32 = v28;
    sub_1CF4E04E8(inited);
    swift_setDeallocating();
    sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    v33 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v34 = sub_1CF9E6618();

    v35 = [v33 initWithDomain:v32 code:3328 userInfo:v34];

    v36 = v85;
    (*(v86 + 56))(v85, 1, 1, v87);
    v37 = v35;
    v84(v36, v35);

    sub_1CEFCCC44(v36, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  else
  {
    v77 = a5;
    v38 = v88;
    sub_1CEFFC48C(v20, v88, type metadata accessor for LocalContainer);
    v39 = v38 + *(v21 + 28);
    sub_1CF9E5958();
    v40 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
    v41 = sub_1CF9E5928();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF610, &qword_1CFA01DD0);
    v42 = swift_initStackObject();
    v43 = *MEMORY[0x1E696A370];
    *(v42 + 32) = *MEMORY[0x1E696A370];
    v75 = xmmword_1CF9FA450;
    *(v42 + 16) = xmmword_1CF9FA450;
    *(v42 + 64) = MEMORY[0x1E69E6530];
    *(v42 + 40) = 493;
    v44 = v43;
    sub_1CF4E2F64(v42);
    v45 = v16;
    swift_setDeallocating();
    sub_1CEFCCC44(v42 + 32, &unk_1EC4C1120, &qword_1CFA07BA0);
    type metadata accessor for FileAttributeKey(0);
    sub_1CEFD5B1C(&unk_1EC4BF620, type metadata accessor for FileAttributeKey);
    v46 = sub_1CF9E6618();

    aBlock = 0;
    v47 = [v40 createDirectoryAtURL:v41 withIntermediateDirectories:1 attributes:v46 error:&aBlock];

    v76 = v45;
    if (v47)
    {
      v48 = aBlock;
      v49 = v81;
      v85 = sub_1CF9E5928();
      v84 = sub_1CF9E5928();
      v50 = v86;
      v51 = v80;
      (*(v86 + 16))(v80, v49, v87);
      v52 = v78;
      sub_1CEFFD30C(v88, v78, type metadata accessor for LocalContainer);
      v53 = (*(v50 + 80) + 40) & ~*(v50 + 80);
      v54 = (v79 + *(v22 + 80) + v53) & ~*(v22 + 80);
      v55 = swift_allocObject();
      v56 = v89;
      *(v55 + 2) = sub_1CF326F80;
      *(v55 + 3) = v56;
      v57 = v82;
      *(v55 + 4) = v82;
      v58 = v51;
      v59 = v87;
      (*(v50 + 32))(&v55[v53], v58, v87);
      sub_1CEFFC48C(v52, &v55[v54], type metadata accessor for LocalContainer);
      v94 = sub_1CF32743C;
      v95 = v55;
      aBlock = MEMORY[0x1E69E9820];
      v91 = 1107296256;
      v92 = sub_1CF90535C;
      v93 = &block_descriptor_324;
      v60 = _Block_copy(&aBlock);

      v61 = v57;

      v62 = v85;
      v63 = v84;
      [v85 fp:v84 trashUnderFolder:v83 & 1 allowCoordination:v60 completionHandler:?];
      _Block_release(v60);

      (*(v50 + 8))(v76, v59);
      sub_1CF007BF8(v88, type metadata accessor for LocalContainer);
    }

    else
    {
      v64 = aBlock;
      v65 = sub_1CF9E57F8();

      swift_willThrow();
      aBlock = 0;
      v91 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA3F3C0);
      v96 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      sub_1CF9E7B58();
      v66 = aBlock;
      v67 = v91;
      v68 = v87;
      v69 = v86;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v70 = swift_allocObject();
      *(v70 + 16) = v75;
      *(v70 + 56) = MEMORY[0x1E69E6158];
      *(v70 + 64) = sub_1CEFD51C4();
      *(v70 + 32) = v66;
      *(v70 + 40) = v67;
      sub_1CF9E6018();

      v71 = v85;
      (*(v69 + 56))(v85, 1, 1, v68);
      v72 = v65;
      v84(v71, v65);

      sub_1CEFCCC44(v71, &unk_1EC4BE310, qword_1CF9FCBE0);
      (*(v69 + 8))(v76, v68);
      sub_1CF007BF8(v88, type metadata accessor for LocalContainer);
    }
  }

  v74 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CF300898(uint64_t a1, void *a2, int a3, void (**a4)(void, void, void))
{
  v81 = a3;
  v93 = *MEMORY[0x1E69E9840];
  v84 = sub_1CF9E5A58();
  v82 = *(v84 - 8);
  v7 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v79 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1110, &qword_1CFA08100);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = (&v69 - v13);
  v15 = type metadata accessor for LocalContainer(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v83 = &v69 - v20;
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1CF024BB0;
  *(v22 + 24) = v21;
  v23 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  _Block_copy(a4);
  _Block_copy(a4);

  v80 = a2;
  v77 = a1;
  sub_1CF0047A0(a2 + v23, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1CEFCCC44(v14, &unk_1EC4C1110, &qword_1CFA08100);
    v24 = *MEMORY[0x1E696A250];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FA450;
    v26 = *MEMORY[0x1E696A278];
    *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v27;
    *(inited + 48) = 0xD00000000000003DLL;
    *(inited + 56) = 0x80000001CFA3F380;
    v28 = v24;
    sub_1CF4E04E8(inited);
    swift_setDeallocating();
    sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v30 = sub_1CF9E6618();

    v31 = [v29 initWithDomain:v28 code:3328 userInfo:v30];

    _Block_copy(a4);
    v32 = v31;
    v33 = sub_1CF9E57E8();
    (a4)[2](a4, 0, v33);

    _Block_release(a4);
  }

  else
  {
    v72 = a4;
    v73 = v22;
    v74 = v21;
    v34 = v83;
    sub_1CEFFC48C(v14, v83, type metadata accessor for LocalContainer);
    v35 = v34 + *(v15 + 28);
    sub_1CF9E5958();
    v36 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
    v37 = sub_1CF9E5928();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF610, &qword_1CFA01DD0);
    v38 = swift_initStackObject();
    v39 = *MEMORY[0x1E696A370];
    *(v38 + 32) = *MEMORY[0x1E696A370];
    v71 = xmmword_1CF9FA450;
    *(v38 + 16) = xmmword_1CF9FA450;
    *(v38 + 64) = MEMORY[0x1E69E6530];
    *(v38 + 40) = 493;
    v40 = v39;
    sub_1CF4E2F64(v38);
    swift_setDeallocating();
    sub_1CEFCCC44(v38 + 32, &unk_1EC4C1120, &qword_1CFA07BA0);
    type metadata accessor for FileAttributeKey(0);
    sub_1CEFD5B1C(&unk_1EC4BF620, type metadata accessor for FileAttributeKey);
    v41 = sub_1CF9E6618();

    aBlock = 0;
    v42 = [v36 createDirectoryAtURL:v37 withIntermediateDirectories:1 attributes:v41 error:&aBlock];

    if (v42)
    {
      v43 = aBlock;
      v44 = v77;
      *&v71 = sub_1CF9E5928();
      v70 = sub_1CF9E5928();
      v45 = v82;
      v46 = v79;
      (*(v82 + 16))(v79, v44, v84);
      v47 = v76;
      sub_1CEFFD30C(v34, v76, type metadata accessor for LocalContainer);
      v48 = (*(v45 + 80) + 40) & ~*(v45 + 80);
      v49 = (v78 + *(v16 + 80) + v48) & ~*(v16 + 80);
      v50 = swift_allocObject();
      v51 = v73;
      v50[2] = sub_1CF327470;
      v50[3] = v51;
      v52 = v80;
      v50[4] = v80;
      v53 = v50 + v48;
      v54 = v84;
      (*(v45 + 32))(v53, v46, v84);
      sub_1CEFFC48C(v47, v50 + v49, type metadata accessor for LocalContainer);
      v90 = sub_1CF32743C;
      v91 = v50;
      aBlock = MEMORY[0x1E69E9820];
      v87 = 1107296256;
      v88 = sub_1CF90535C;
      v89 = &block_descriptor_311;
      v55 = _Block_copy(&aBlock);

      v56 = v52;

      v57 = v71;
      v58 = v70;
      [v71 fp:v70 trashUnderFolder:v81 & 1 allowCoordination:v55 completionHandler:?];
      _Block_release(v55);

      (*(v45 + 8))(v85, v54);
      sub_1CF007BF8(v83, type metadata accessor for LocalContainer);

      a4 = v72;
    }

    else
    {
      v59 = v34;
      v60 = v85;
      v61 = aBlock;
      v62 = sub_1CF9E57F8();

      swift_willThrow();
      aBlock = 0;
      v87 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA3F3C0);
      v92 = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      sub_1CF9E7B58();
      v63 = aBlock;
      v64 = v87;
      a4 = v72;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v65 = swift_allocObject();
      *(v65 + 16) = v71;
      *(v65 + 56) = MEMORY[0x1E69E6158];
      *(v65 + 64) = sub_1CEFD51C4();
      *(v65 + 32) = v63;
      *(v65 + 40) = v64;
      sub_1CF9E6018();

      _Block_copy(a4);
      v66 = v62;
      v67 = sub_1CF9E57E8();
      (a4)[2](a4, 0, v67);

      _Block_release(a4);
      (*(v82 + 8))(v60, v84);
      sub_1CF007BF8(v59, type metadata accessor for LocalContainer);
    }
  }

  _Block_release(a4);
  _Block_release(a4);
  v68 = *MEMORY[0x1E69E9840];
}

void sub_1CF3013B4(uint64_t a1, void *a2, int a3, void *a4)
{
  v81 = a3;
  v85 = a1;
  v94 = *MEMORY[0x1E69E9840];
  v84 = sub_1CF9E5A58();
  v82 = *(v84 - 8);
  v6 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v79 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v69 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1110, &qword_1CFA08100);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v69 - v12);
  v14 = type metadata accessor for LocalContainer(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v86 = &v69 - v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1CF326F6C;
  *(v21 + 24) = v20;
  v22 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  v23 = a4;

  v80 = a2;
  v24 = a2 + v22;
  v25 = v85;
  sub_1CF0047A0(v24, v13);
  v75 = v15;
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1CEFCCC44(v13, &unk_1EC4C1110, &qword_1CFA08100);
    v26 = *MEMORY[0x1E696A250];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FA450;
    v28 = *MEMORY[0x1E696A278];
    *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v29;
    *(inited + 48) = 0xD00000000000003DLL;
    *(inited + 56) = 0x80000001CFA3F380;
    v30 = v26;
    sub_1CF4E04E8(inited);
    swift_setDeallocating();
    sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    v31 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v32 = sub_1CF9E6618();

    v33 = [v31 initWithDomain:v30 code:3328 userInfo:v32];

    v34 = v23;
    v35 = v33;
    sub_1CF3195D4(v33);
  }

  else
  {
    v72 = v21;
    v73 = v20;
    v74 = v23;
    v36 = v86;
    sub_1CEFFC48C(v13, v86, type metadata accessor for LocalContainer);
    v37 = v36 + *(v14 + 28);
    v38 = v83;
    sub_1CF9E5958();
    v39 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
    v40 = sub_1CF9E5928();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF610, &qword_1CFA01DD0);
    v41 = swift_initStackObject();
    v42 = *MEMORY[0x1E696A370];
    *(v41 + 32) = *MEMORY[0x1E696A370];
    v71 = xmmword_1CF9FA450;
    *(v41 + 16) = xmmword_1CF9FA450;
    *(v41 + 64) = MEMORY[0x1E69E6530];
    *(v41 + 40) = 493;
    v43 = v42;
    sub_1CF4E2F64(v41);
    swift_setDeallocating();
    sub_1CEFCCC44(v41 + 32, &unk_1EC4C1120, &qword_1CFA07BA0);
    type metadata accessor for FileAttributeKey(0);
    sub_1CEFD5B1C(&unk_1EC4BF620, type metadata accessor for FileAttributeKey);
    v44 = sub_1CF9E6618();

    aBlock = 0;
    v45 = [v39 createDirectoryAtURL:v40 withIntermediateDirectories:1 attributes:v44 error:&aBlock];

    if (v45)
    {
      v46 = aBlock;
      *&v71 = sub_1CF9E5928();
      v70 = sub_1CF9E5928();
      v47 = v82;
      v48 = v79;
      (*(v82 + 16))(v79, v25, v84);
      v49 = v77;
      sub_1CEFFD30C(v36, v77, type metadata accessor for LocalContainer);
      v50 = (*(v47 + 80) + 40) & ~*(v47 + 80);
      v51 = (v78 + *(v75 + 80) + v50) & ~*(v75 + 80);
      v52 = swift_allocObject();
      v53 = v72;
      v52[2] = sub_1CF327470;
      v52[3] = v53;
      v54 = v80;
      v52[4] = v80;
      v55 = v52 + v50;
      v56 = v84;
      (*(v47 + 32))(v55, v48, v84);
      sub_1CEFFC48C(v49, v52 + v51, type metadata accessor for LocalContainer);
      v91 = sub_1CF32743C;
      v92 = v52;
      aBlock = MEMORY[0x1E69E9820];
      v88 = 1107296256;
      v89 = sub_1CF90535C;
      v90 = &block_descriptor_267;
      v57 = _Block_copy(&aBlock);

      v58 = v54;

      v59 = v71;
      v60 = v70;
      [v71 fp:v70 trashUnderFolder:v81 & 1 allowCoordination:v57 completionHandler:?];
      _Block_release(v57);

      (*(v47 + 8))(v83, v56);
      sub_1CF007BF8(v86, type metadata accessor for LocalContainer);
      v23 = v74;
    }

    else
    {
      v61 = aBlock;
      v62 = sub_1CF9E57F8();

      swift_willThrow();
      aBlock = 0;
      v88 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA3F3C0);
      v93 = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      sub_1CF9E7B58();
      v63 = aBlock;
      v64 = v88;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v65 = swift_allocObject();
      *(v65 + 16) = v71;
      *(v65 + 56) = MEMORY[0x1E69E6158];
      *(v65 + 64) = sub_1CEFD51C4();
      *(v65 + 32) = v63;
      *(v65 + 40) = v64;
      sub_1CF9E6018();

      v23 = v74;
      v66 = v74;
      v67 = v62;
      sub_1CF3195D4(v62);

      (*(v82 + 8))(v38, v84);
      sub_1CF007BF8(v86, type metadata accessor for LocalContainer);
    }
  }

  v68 = *MEMORY[0x1E69E9840];
}

void sub_1CF301E8C(uint64_t a1, void *a2, int a3, void (*a4)(void, id), uint64_t a5)
{
  v82 = a5;
  v77 = a3;
  v90 = *MEMORY[0x1E69E9840];
  v8 = sub_1CF9E5A58();
  v79 = *(v8 - 8);
  v9 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1110, &qword_1CFA08100);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = (&v69 - v15);
  v17 = type metadata accessor for LocalContainer(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v72 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v69 - v22;
  v24 = swift_allocObject();
  v81 = a4;
  *(v24 + 16) = a4;
  *(v24 + 24) = v82;
  v25 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;

  v76 = a2;
  v74 = a1;
  sub_1CF0047A0(a2 + v25, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1CEFCCC44(v16, &unk_1EC4C1110, &qword_1CFA08100);
    v26 = *MEMORY[0x1E696A250];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FA450;
    v28 = *MEMORY[0x1E696A278];
    *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v29;
    *(inited + 48) = 0xD00000000000003DLL;
    *(inited + 56) = 0x80000001CFA3F380;
    v30 = v26;
    sub_1CF4E04E8(inited);
    swift_setDeallocating();
    sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    v31 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v32 = sub_1CF9E6618();

    v33 = [v31 initWithDomain:v30 code:3328 userInfo:v32];

    v34 = v33;
    v81(0, v33);
  }

  else
  {
    v78 = v8;
    v70 = v24;
    v35 = v23;
    sub_1CEFFC48C(v16, v23, type metadata accessor for LocalContainer);
    v36 = &v23[*(v17 + 28)];
    v37 = v80;
    sub_1CF9E5958();
    v38 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
    v39 = sub_1CF9E5928();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF610, &qword_1CFA01DD0);
    v40 = swift_initStackObject();
    v41 = *MEMORY[0x1E696A370];
    *(v40 + 32) = *MEMORY[0x1E696A370];
    v69 = xmmword_1CF9FA450;
    *(v40 + 16) = xmmword_1CF9FA450;
    *(v40 + 64) = MEMORY[0x1E69E6530];
    *(v40 + 40) = 493;
    v42 = v41;
    sub_1CF4E2F64(v40);
    swift_setDeallocating();
    sub_1CEFCCC44(v40 + 32, &unk_1EC4C1120, &qword_1CFA07BA0);
    type metadata accessor for FileAttributeKey(0);
    sub_1CEFD5B1C(&unk_1EC4BF620, type metadata accessor for FileAttributeKey);
    v43 = sub_1CF9E6618();

    aBlock = 0;
    v44 = [v38 createDirectoryAtURL:v39 withIntermediateDirectories:1 attributes:v43 error:&aBlock];

    if (v44)
    {
      v45 = aBlock;
      v46 = v74;
      v81 = sub_1CF9E5928();
      *&v69 = sub_1CF9E5928();
      v47 = v79;
      v48 = v75;
      (*(v79 + 16))(v75, v46, v78);
      v49 = v72;
      sub_1CEFFD30C(v35, v72, type metadata accessor for LocalContainer);
      v50 = (*(v47 + 80) + 40) & ~*(v47 + 80);
      v51 = (v73 + *(v18 + 80) + v50) & ~*(v18 + 80);
      v52 = swift_allocObject();
      v53 = v70;
      v52[2] = sub_1CF3262C8;
      v52[3] = v53;
      v74 = v35;
      v54 = v76;
      v52[4] = v76;
      v55 = v52 + v50;
      v56 = v78;
      (*(v47 + 32))(v55, v48, v78);
      sub_1CEFFC48C(v49, v52 + v51, type metadata accessor for LocalContainer);
      v87 = sub_1CF3262F4;
      v88 = v52;
      aBlock = MEMORY[0x1E69E9820];
      v84 = 1107296256;
      v85 = sub_1CF90535C;
      v86 = &block_descriptor_121;
      v57 = _Block_copy(&aBlock);

      v58 = v54;

      v59 = v81;
      v60 = v69;
      [v81 fp:v69 trashUnderFolder:v77 & 1 allowCoordination:v57 completionHandler:?];
      _Block_release(v57);

      (*(v47 + 8))(v80, v56);
      sub_1CF007BF8(v74, type metadata accessor for LocalContainer);
    }

    else
    {
      v61 = v37;
      v62 = aBlock;
      v63 = sub_1CF9E57F8();

      swift_willThrow();
      aBlock = 0;
      v84 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA3F3C0);
      v89 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      sub_1CF9E7B58();
      v64 = aBlock;
      v65 = v84;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v66 = swift_allocObject();
      *(v66 + 16) = v69;
      *(v66 + 56) = MEMORY[0x1E69E6158];
      *(v66 + 64) = sub_1CEFD51C4();
      *(v66 + 32) = v64;
      *(v66 + 40) = v65;
      sub_1CF9E6018();

      v67 = v63;
      v81(0, v63);

      (*(v79 + 8))(v61, v78);
      sub_1CF007BF8(v35, type metadata accessor for LocalContainer);
    }
  }

  v68 = *MEMORY[0x1E69E9840];
}