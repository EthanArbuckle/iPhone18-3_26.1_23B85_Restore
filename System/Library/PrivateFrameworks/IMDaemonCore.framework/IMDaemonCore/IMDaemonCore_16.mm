unint64_t sub_22B7B15D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22B6F0AD4(&qword_27D8CDB58, &qword_22B7FA358);
    v2 = sub_22B7DC488();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_22B4DA0DC(*(a1 + 48) + 40 * v14, v29);
        sub_22B4D1F68(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_22B4DA0DC(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_22B4D1F68(v27 + 8, v22);
        sub_22B7B4764(v26);
        v23 = v20;
        sub_22B4D7F04(v22, v24);
        v15 = v23;
        sub_22B4D7F04(v24, v25);
        sub_22B4D7F04(v25, &v23);
        result = sub_22B723648(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_22B4CFB78(v12);
          result = sub_22B4D7F04(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_22B4D7F04(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_22B7B4764(v26);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id static IMDaemonCoreBridgeDelegate.updateChat(usingSyncData:)(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 updateChatUsingSyncData_];
}

BOOL static IMDaemonCoreBridgeDelegate.supportsService(withName:)()
{
  v0 = [objc_opt_self() sharedController];
  v1 = sub_22B7DB678();
  v2 = [v0 serviceWithName_];

  if (v2)
  {
  }

  return v2 != 0;
}

uint64_t static IMDaemonCoreBridgeDelegate.indexMessageGUIDs(_:lane:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B6F12E8;

  return (sub_22B7B3B80)(a1, a2);
}

uint64_t static IMDaemonCoreBridgeDelegate.indexChatGUIDs(_:lane:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B6F0D94;

  return (sub_22B7B3F30)(a1, a2);
}

id sub_22B7B1B68(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = objc_opt_self();
  v7 = sub_22B7DB678();
  v8 = [v6 *a4];

  return v8;
}

void static IMDaemonCoreBridgeDelegate.add(item:toParentChat:updatedLastMessageCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_opt_self();
  v7 = sub_22B7DB678();
  [v6 addItem:a1 toParentChatID:v7 updatedLastMessageCount:a4];
}

id static IMDaemonCoreBridgeDelegate.decompress(data:)()
{
  v0 = sub_22B7DA838();
  result = [v0 _FTOptionallyDecompressData];
  if (result)
  {
    v2 = result;
    v3 = sub_22B7DA848();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static IMDaemonCoreBridgeDelegate.updateTemporaryTransferGUIDS(forItem:)(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 updateTemporaryTransferGUIDsIfNeeded_];
}

void static IMDaemonCoreBridgeDelegate.storeAttachment(transfer:withMessageGUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_22B7DB678();
  }

  else
  {
    v4 = 0;
  }

  [objc_opt_self() storeAttachmentWithTransfer:a1 withMessageGUID:v4];
}

id static IMDaemonCoreBridgeDelegate.storeAttachment(transfer:withChatGUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_22B7DB678();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_opt_self() storeAttachmentWithTransfer:a1 withChatGUID:v4];

  return v5;
}

id static IMDaemonCoreBridgeDelegate.reloadDatabase()()
{
  v0 = objc_opt_self();

  return [v0 reloadDatabase];
}

id static IMDaemonCoreBridgeDelegate.storeAttachments(forMessage:)(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 storeAttachmentsForMessage_];
}

id static IMDaemonCoreBridgeDelegate.createMessageItem(recordRef:handle:)(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22B7DB678();
  v4 = [v2 createMessageItemWithRecordRef:a1 handle:v3];

  return v4;
}

id static IMDaemonCoreBridgeDelegate.updateStamp()()
{
  v0 = objc_opt_self();

  return [v0 updateStamp];
}

id sub_22B7B1F6C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_opt_self();
  v5 = sub_22B7DB678();
  v6 = [v4 *a3];

  return v6;
}

void sub_22B7B1FEC(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = objc_opt_self();
  v7 = sub_22B7DB678();
  [v6 *a4];
}

void sub_22B7B2084(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_opt_self();
  v5 = sub_22B7DB678();
  [v4 *a3];
}

id static IMDaemonCoreBridgeDelegate.register(guid:localURL:)()
{
  v0 = objc_opt_self();
  v1 = sub_22B7DB678();
  v2 = sub_22B7DA788();
  v3 = [v0 registerGuid:v1 forLocalURL:v2];

  return v3;
}

id static IMDaemonCoreBridgeDelegate.isRecoverablyDeletedMessageGUID(_:)()
{
  v0 = objc_opt_self();
  v1 = sub_22B7DB678();
  v2 = [v0 isRecoverablyDeletedMessageGUID_];

  return v2;
}

void static IMDaemonCoreBridgeDelegate.moveMessages(forGUIDs:deleteDate:)()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_22B7DB8F8();
  v2 = sub_22B7DA8B8();
  [v0 moveMessagesWithGUIDsToRecentlyDeleted:v1 deleteDate:v2];
}

void static IMDaemonCoreBridgeDelegate.moveMessagePart(forGUID:deleteDate:partBody:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_opt_self();
  v6 = sub_22B7DB678();
  v7 = sub_22B7DA8B8();
  [v5 moveMessagePartForGUID:v6 deleteDate:v7 partBody:a4];
}

uint64_t static IMDaemonCoreBridgeDelegate.primaryAccountCountryCode()()
{
  v0 = [objc_opt_self() primaryAccountCountryCode];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_22B7DB6A8();

  return v2;
}

id sub_22B7B23F4(uint64_t a1, SEL *a2)
{
  v4 = objc_opt_self();
  sub_22B7B0AC8(a1);
  v5 = sub_22B7DB568();

  v6 = [v4 *a2];

  return v6;
}

id static IMDaemonCoreBridgeDelegate.handleMessageUpdate(withRecord:)(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 handleMessageUpdateWithCKRecord_];
}

uint64_t static IMDaemonCoreBridgeDelegate.deviceActiveString()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 deviceActiveString];

  v2 = sub_22B7DB6A8();
  return v2;
}

id static IMDaemonCoreBridgeDelegate.shouldReportToRTC()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 shouldReportToRTC];

  return v1;
}

unint64_t static IMDaemonCoreBridgeDelegate.syncDatesDictionary()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 syncState];

  v2 = [v1 analyticSyncDatesDictionary];
  if (!v2)
  {
    return 0;
  }

  v3 = sub_22B7DB588();

  v4 = sub_22B7B15D4(v3);

  return v4;
}

uint64_t static IMDaemonCoreBridgeDelegate.syncReportDictionary()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 syncState];

  v2 = [v1 syncReportDictionary];
  sub_22B7DB578();

  return 0;
}

uint64_t static IMDaemonCoreBridgeDelegate.syncReportDictionary(attemptCount:wasSuccessful:duration:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B766620;
  v8.n128_f64[0] = a3;

  return (sub_22B7B43F8)(a1, a2, v8);
}

void static IMDaemonCoreBridgeDelegate.setSyncDate(_:forKey:shouldOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 syncState];

  v7 = sub_22B7DA8B8();
  v8 = sub_22B7DB678();
  [v6 setAnalyticSyncDatesDictionaryObject:v7 forKey:v8 shouldOverrideIfExists:a4 & 1];
}

void static IMDaemonCoreBridgeDelegate.postSyncState(withStep:category:reportDictionary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_opt_self() sharedInstance];
  v6 = sub_22B7DB678();
  v7 = sub_22B7DB068();
  sub_22B7B0AC8(a4);
  v8 = sub_22B7DB568();

  [v5 postSyncStateToRTC:v6 category:v7 reportDictionary:v8];
}

id static IMDaemonCoreBridgeDelegate.generatePreview(transfer:)(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 generatePreviewForTransfer_];
}

id sub_22B7B2A14(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 updateChatUsingSyncData_];
}

BOOL sub_22B7B2A5C()
{
  v0 = [objc_opt_self() sharedController];
  v1 = sub_22B7DB678();
  v2 = [v0 serviceWithName_];

  if (v2)
  {
  }

  return v2 != 0;
}

uint64_t sub_22B7B2B78(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B6F12E8;

  return (sub_22B7B3B80)(a1, a2);
}

uint64_t sub_22B7B2C2C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B6F12E8;

  return (sub_22B7B3F30)(a1, a2);
}

id sub_22B7B2CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v8 = objc_opt_self();
  v9 = sub_22B7DB678();
  v10 = [v8 *a6];

  return v10;
}

void sub_22B7B2D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_opt_self();
  v7 = sub_22B7DB678();
  [v6 addItem:a1 toParentChatID:v7 updatedLastMessageCount:a4];
}

id sub_22B7B2E08()
{
  v0 = sub_22B7DA838();
  result = [v0 _FTOptionallyDecompressData];
  if (result)
  {
    v2 = result;
    v3 = sub_22B7DA848();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_22B7B2E7C(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 updateTemporaryTransferGUIDsIfNeeded_];
}

void sub_22B7B2ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_22B7DB678();
  }

  else
  {
    v4 = 0;
  }

  [objc_opt_self() storeAttachmentWithTransfer:a1 withMessageGUID:v4];
}

id sub_22B7B2F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_22B7DB678();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_opt_self() storeAttachmentWithTransfer:a1 withChatGUID:v4];

  return v5;
}

id sub_22B7B2FB0()
{
  v0 = objc_opt_self();

  return [v0 reloadDatabase];
}

id sub_22B7B2FE8(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 storeAttachmentsForMessage_];
}

id sub_22B7B3030(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22B7DB678();
  v4 = [v2 createMessageItemWithRecordRef:a1 handle:v3];

  return v4;
}

id sub_22B7B30AC()
{
  v0 = objc_opt_self();

  return [v0 updateStamp];
}

id sub_22B7B30F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = objc_opt_self();
  v7 = sub_22B7DB678();
  v8 = [v6 *a5];

  return v8;
}

void sub_22B7B3170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v8 = objc_opt_self();
  v9 = sub_22B7DB678();
  [v8 *a6];
}

void sub_22B7B3208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = objc_opt_self();
  v7 = sub_22B7DB678();
  [v6 *a5];
}

id sub_22B7B3284()
{
  v0 = objc_opt_self();
  v1 = sub_22B7DB678();
  v2 = sub_22B7DA788();
  v3 = [v0 registerGuid:v1 forLocalURL:v2];

  return v3;
}

unint64_t sub_22B7B3304()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 syncState];

  v2 = [v1 analyticSyncDatesDictionary];
  if (!v2)
  {
    return 0;
  }

  v3 = sub_22B7DB588();

  v4 = sub_22B7B15D4(v3);

  return v4;
}

void sub_22B7B33D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 syncState];

  v7 = sub_22B7DA8B8();
  v8 = sub_22B7DB678();
  [v6 setAnalyticSyncDatesDictionaryObject:v7 forKey:v8 shouldOverrideIfExists:a4 & 1];
}

uint64_t sub_22B7B34D0()
{
  v0 = [objc_opt_self() primaryAccountCountryCode];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_22B7DB6A8();

  return v2;
}

id sub_22B7B3540()
{
  v0 = objc_opt_self();
  v1 = sub_22B7DB678();
  v2 = [v0 isRecoverablyDeletedMessageGUID_];

  return v2;
}

void sub_22B7B35AC()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_22B7DB8F8();
  v2 = sub_22B7DA8B8();
  [v0 moveMessagesWithGUIDsToRecentlyDeleted:v1 deleteDate:v2];
}

void sub_22B7B3654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_opt_self();
  v6 = sub_22B7DB678();
  v7 = sub_22B7DA8B8();
  [v5 moveMessagePartForGUID:v6 deleteDate:v7 partBody:a4];
}

id sub_22B7B3718(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = objc_opt_self();
  sub_22B7B0AC8(a1);
  v7 = sub_22B7DB568();

  v8 = [v6 *a4];

  return v8;
}

id sub_22B7B37B0(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 handleMessageUpdateWithCKRecord_];
}

uint64_t sub_22B7B37F8()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 deviceActiveString];

  v2 = sub_22B7DB6A8();
  return v2;
}

id sub_22B7B3878()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 shouldReportToRTC];

  return v1;
}

uint64_t sub_22B7B38D0()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 syncState];

  v2 = [v1 syncReportDictionary];
  sub_22B7DB578();

  return 0;
}

uint64_t sub_22B7B3988(uint64_t a1, uint64_t a2, double a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B6FAF68;
  v8.n128_f64[0] = a3;

  return (sub_22B7B43F8)(a1, a2, v8);
}

void sub_22B7B3A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_opt_self() sharedInstance];
  v6 = sub_22B7DB678();
  v7 = sub_22B7DB068();
  sub_22B7B0AC8(a4);
  v8 = sub_22B7DB568();

  [v5 postSyncStateToRTC:v6 category:v7 reportDictionary:v8];
}

id sub_22B7B3B38(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 generatePreviewForTransfer_];
}

uint64_t sub_22B7B3B80(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  sub_22B7DB058();
  v2[20] = sub_22B7DB048();
  sub_22B7DBA18();
  v4 = sub_22B7DB9C8();
  v2[21] = v4;
  v2[22] = v3;

  return MEMORY[0x2822009F8](sub_22B7B3C18, v4, v3);
}

uint64_t sub_22B7B3C18()
{
  v1 = v0[19];
  v2 = [objc_opt_self() contextWithReason_];
  v0[23] = v2;
  sub_22B7DBDA8();
  v3 = [objc_opt_self() indexingQueryProvider];
  v0[24] = v3;
  if (v3)
  {
    v4 = v3;
    v5 = v0[18];
    v6 = sub_22B7DB8F8();
    v0[25] = v6;
    v0[2] = v0;
    v0[3] = sub_22B7B3E00;
    v7 = swift_continuation_init();
    v0[17] = sub_22B6F0AD4(&qword_27D8CE618, &qword_22B7FA6A0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22B731620;
    v0[13] = &unk_283F1FCB8;
    v0[14] = v7;
    [v4 addMessageGUIDs:v6 context:v2 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v8 = v0[20];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_22B7B3E00()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 208) = v3;
  v4 = *(v1 + 176);
  v5 = *(v1 + 168);
  if (v3)
  {
    v6 = sub_22B7B47E0;
  }

  else
  {
    v6 = sub_22B7B47DC;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_22B7B3F30(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  sub_22B7DB058();
  v2[20] = sub_22B7DB048();
  sub_22B7DBA18();
  v4 = sub_22B7DB9C8();
  v2[21] = v4;
  v2[22] = v3;

  return MEMORY[0x2822009F8](sub_22B7B3FC8, v4, v3);
}

uint64_t sub_22B7B3FC8()
{
  v1 = v0[19];
  v2 = [objc_opt_self() contextWithReason_];
  v0[23] = v2;
  sub_22B7DBDA8();
  v3 = [objc_opt_self() indexingQueryProvider];
  v0[24] = v3;
  if (v3)
  {
    v4 = v3;
    v5 = v0[18];
    v6 = sub_22B7DB8F8();
    v0[25] = v6;
    v0[2] = v0;
    v0[3] = sub_22B7B41B0;
    v7 = swift_continuation_init();
    v0[17] = sub_22B6F0AD4(&qword_27D8CE618, &qword_22B7FA6A0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22B731620;
    v0[13] = &unk_283F1FC90;
    v0[14] = v7;
    [v4 addChatGUIDs:v6 context:v2 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v8 = v0[20];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_22B7B41B0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 208) = v3;
  v4 = *(v1 + 176);
  v5 = *(v1 + 168);
  if (v3)
  {
    v6 = sub_22B7B4368;
  }

  else
  {
    v6 = sub_22B7B42E0;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_22B7B42E0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 160);

  swift_unknownObjectRelease();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22B7B4368()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[20];

  swift_willThrow();

  swift_unknownObjectRelease();
  v6 = v0[1];
  v7 = v0[26];

  return v6();
}

uint64_t sub_22B7B43F8(uint64_t a1, char a2, double a3)
{
  *(v3 + 160) = a3;
  *(v3 + 176) = a2;
  *(v3 + 152) = a1;
  return MEMORY[0x2822009F8](sub_22B7B4420, 0, 0);
}

uint64_t sub_22B7B4420()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 syncState];
  *(v0 + 168) = v5;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_22B7B45A4;
  v6 = swift_continuation_init();
  *(v0 + 136) = sub_22B6F0AD4(&qword_27D8CFA30, &unk_22B7FDF50);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_22B77E9CC;
  *(v0 + 104) = &unk_283F1FC68;
  *(v0 + 112) = v6;
  [v5 syncReportDictionaryForAttempt:v3 withSuccess:v2 duration:v0 + 80 completion:v1];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_22B7B45A4()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B7B4684, 0, 0);
}

uint64_t sub_22B7B4684()
{
  v1 = v0[21];
  v2 = v0[18];
  sub_22B7DB578();

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_22B7B4764(uint64_t a1)
{
  v2 = sub_22B6F0AD4(&qword_27D8CFA38, &unk_22B7FDF60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id ClientConnectionManager.__allocating_init(connectionListeners:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___IMDClientConnectionManager_connectionListeners] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ClientConnectionManager.init(connectionListeners:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___IMDClientConnectionManager_connectionListeners] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_22B7B48A4()
{
  if (qword_28141F3C8 != -1)
  {
    swift_once();
  }

  v1 = sub_22B7DB2B8();
  sub_22B4CFA74(v1, qword_281422698);
  v2 = sub_22B7DB298();
  v3 = sub_22B7DBC78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B4CC000, v2, v3, "Starting to accept incoming connections", v4, 2u);
    MEMORY[0x231898D60](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  [objc_opt_self() registerSharedProvider_];
  sub_22B7DBA18();
  *(v0 + 24) = sub_22B7DBA08();
  v7 = sub_22B7DB9C8();

  return MEMORY[0x2822009F8](sub_22B7B4A14, v7, v6);
}

uint64_t sub_22B7B4A14()
{
  v1 = *(v0 + 24);

  v2 = [objc_opt_self() sharedController];
  v3 = [v2 allServices];

  sub_22B7B4D30();
  v4 = sub_22B7DB918();

  if (v4 >> 62)
  {
    v5 = sub_22B7DC1C8();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

    v10 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  v22 = MEMORY[0x277D84F90];
  v6 = sub_22B7AB6B4(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  v21 = v0;
  v9 = 0;
  v10 = v22;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x231895C80](v9, v4);
    }

    else
    {
      v11 = *(v4 + 8 * v9 + 32);
    }

    v12 = v11;
    v13 = [v12 internalName];
    v14 = sub_22B7DB6A8();
    v16 = v15;

    v18 = *(v22 + 16);
    v17 = *(v22 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_22B7AB6B4((v17 > 1), v18 + 1, 1);
    }

    ++v9;
    *(v22 + 16) = v18 + 1;
    v19 = v22 + 16 * v18;
    *(v19 + 32) = v14;
    *(v19 + 40) = v16;
  }

  while (v5 != v9);

  v0 = v21;
LABEL_14:
  *(v0 + 32) = v10;
  v6 = sub_22B7B4C28;
  v7 = 0;
  v8 = 0;

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22B7B4C28()
{
  v1 = *(v0[2] + OBJC_IVAR___IMDClientConnectionManager_connectionListeners);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = v0[4];
      v5 = *(v3 - 1);
      v6 = *v3;
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 24);
      swift_unknownObjectRetain();

      v8(v9, ObjectType, v6);
      (*(v6 + 40))(ObjectType, v6);
      swift_unknownObjectRelease();
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  v10 = v0[4];

  v11 = v0[1];

  return v11();
}

unint64_t sub_22B7B4D30()
{
  result = qword_28141F290;
  if (!qword_28141F290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28141F290);
  }

  return result;
}

void ClientConnectionManager.notifyClientsNewSetupInfoAvailable(requiredCapabilities:)(uint64_t a1)
{
  v2 = v1;
  if (qword_28141F3C8 != -1)
  {
    swift_once();
  }

  v4 = sub_22B7DB2B8();
  sub_22B4CFA74(v4, qword_281422698);
  v5 = sub_22B7DB298();
  v6 = sub_22B7DBC78();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B4CC000, v5, v6, "Notifying clients they need to re-request setup", v7, 2u);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  v8 = IMGetDaemonListenerProtocol();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = v2;
  v9[4] = a1;
  v9[5] = 0;
  v10 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  aBlock[4] = sub_22B4D5CDC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D1BA8;
  aBlock[3] = &unk_283F1FD08;
  v11 = _Block_copy(aBlock);
  v12 = v2;
  v13 = [v10 initWithProtocol:v8 forwardingHandler:v11];

  _Block_release(v11);

  [swift_dynamicCastObjCProtocolUnconditional() newSetupInfoAvailable];
}

id ClientConnectionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ClientConnectionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B7B5058()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B6F0D94;

  return ClientConnectionManager.startAcceptingIncomingConnections()();
}

uint64_t ClientConnectionManager.broadcasterForListeners(supporting:)(void *a1)
{
  v3 = IMGetDaemonListenerProtocol();
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = v1;
  v4[4] = 0;
  v4[5] = 0;
  v5 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  aBlock[4] = sub_22B4D5CD8;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D1BA8;
  aBlock[3] = &unk_283F1FE98;
  v6 = _Block_copy(aBlock);
  v7 = a1;
  v8 = v1;
  [v5 initWithProtocol:v3 forwardingHandler:v6];

  _Block_release(v6);

  return swift_dynamicCastObjCProtocolUnconditional();
}

uint64_t ClientConnectionManager.broadcasterForKeyTransparencyListeners.getter()
{
  v1 = IMGetDaemonListenerProtocol();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = v0;
  *(v2 + 32) = xmmword_22B7F87F0;
  v3 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  v25 = sub_22B4D5CD8;
  v26 = v2;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_22B4D1BA8;
  v24 = &unk_283F1FEE8;
  v4 = _Block_copy(&aBlock);
  v5 = v0;
  v6 = [v3 initWithProtocol:v1 forwardingHandler:v4];

  _Block_release(v4);

  v7 = swift_dynamicCastObjCProtocolUnconditional();
  v8 = IMGetDaemonListenerProtocol();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = v5;
  *(v9 + 32) = xmmword_22B7FDF70;
  v10 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  v25 = sub_22B4D5CD8;
  v26 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_22B4D1BA8;
  v24 = &unk_283F1FF38;
  v11 = _Block_copy(&aBlock);
  v12 = v5;
  v13 = [v10 initWithProtocol:v8 forwardingHandler:v11];

  _Block_release(v11);

  v14 = swift_dynamicCastObjCProtocolUnconditional();
  sub_22B6F0AD4(qword_27D8CFA50, &qword_22B7FBB08);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22B7F93A0;
  *(v15 + 56) = swift_getObjectType();
  *(v15 + 32) = v7;
  *(v15 + 88) = swift_getObjectType();
  *(v15 + 64) = v14;
  v16 = objc_allocWithZone(MEMORY[0x277D1A9B0]);
  v17 = v6;
  v18 = v13;
  v19 = sub_22B7DB8F8();

  [v16 initWithTargets_];

  return swift_dynamicCastObjCProtocolUnconditional();
}

uint64_t ClientConnectionManager.broadcasterForChatDatabaseListeners.getter()
{
  v1 = IMGetDaemonListenerProtocol();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = v0;
  *(v2 + 32) = xmmword_22B7F87F0;
  v3 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  v25 = sub_22B4D5CD8;
  v26 = v2;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_22B4D1BA8;
  v24 = &unk_283F201B8;
  v4 = _Block_copy(&aBlock);
  v5 = v0;
  v6 = [v3 initWithProtocol:v1 forwardingHandler:v4];

  _Block_release(v4);

  v7 = swift_dynamicCastObjCProtocolUnconditional();
  v8 = IMGetDaemonListenerProtocol();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = v5;
  *(v9 + 32) = xmmword_22B7FDFC0;
  v10 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  v25 = sub_22B4D5CD8;
  v26 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_22B4D1BA8;
  v24 = &unk_283F20208;
  v11 = _Block_copy(&aBlock);
  v12 = v5;
  v13 = [v10 initWithProtocol:v8 forwardingHandler:v11];

  _Block_release(v11);

  v14 = swift_dynamicCastObjCProtocolUnconditional();
  sub_22B6F0AD4(qword_27D8CFA50, &qword_22B7FBB08);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22B7F93A0;
  *(v15 + 56) = swift_getObjectType();
  *(v15 + 32) = v7;
  *(v15 + 88) = swift_getObjectType();
  *(v15 + 64) = v14;
  v16 = objc_allocWithZone(MEMORY[0x277D1A9B0]);
  v17 = v6;
  v18 = v13;
  v19 = sub_22B7DB8F8();

  [v16 initWithTargets_];

  return swift_dynamicCastObjCProtocolUnconditional();
}

uint64_t ClientConnectionManager.broadcasterForChatCountsListeners(withAdditionalCapabilities:)(uint64_t a1)
{
  v3 = a1 | 4;
  v4 = IMGetDaemonListenerProtocol();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = v1;
  v5[4] = v3;
  v5[5] = 0;
  v6 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  v29 = sub_22B4D5CD8;
  v30 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_22B4D1BA8;
  v28 = &unk_283F20258;
  v7 = _Block_copy(&aBlock);
  v8 = v1;
  v9 = [v6 initWithProtocol:v4 forwardingHandler:v7];

  _Block_release(v7);

  v10 = swift_dynamicCastObjCProtocolUnconditional();
  v11 = a1 | 0x8000;
  v12 = IMGetDaemonListenerProtocol();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = v8;
  v13[4] = v11;
  v13[5] = 0;
  v14 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  v29 = sub_22B4D5CD8;
  v30 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_22B4D1BA8;
  v28 = &unk_283F202A8;
  v15 = _Block_copy(&aBlock);
  v16 = v8;
  v17 = [v14 initWithProtocol:v12 forwardingHandler:v15];

  _Block_release(v15);

  v18 = swift_dynamicCastObjCProtocolUnconditional();
  sub_22B6F0AD4(qword_27D8CFA50, &qword_22B7FBB08);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22B7F93A0;
  *(v19 + 56) = swift_getObjectType();
  *(v19 + 32) = v10;
  *(v19 + 88) = swift_getObjectType();
  *(v19 + 64) = v18;
  v20 = objc_allocWithZone(MEMORY[0x277D1A9B0]);
  v21 = v9;
  v22 = v17;
  v23 = sub_22B7DB8F8();

  [v20 initWithTargets_];

  return swift_dynamicCastObjCProtocolUnconditional();
}

uint64_t ClientConnectionManager.broadcasterForChatCountsListeners.getter()
{
  v1 = IMGetDaemonListenerProtocol();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = v0;
  *(v2 + 32) = xmmword_22B7F87F0;
  v3 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  v25 = sub_22B4D5CD8;
  v26 = v2;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_22B4D1BA8;
  v24 = &unk_283F202F8;
  v4 = _Block_copy(&aBlock);
  v5 = v0;
  v6 = [v3 initWithProtocol:v1 forwardingHandler:v4];

  _Block_release(v4);

  v7 = swift_dynamicCastObjCProtocolUnconditional();
  v8 = IMGetDaemonListenerProtocol();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = v5;
  *(v9 + 32) = xmmword_22B7FDFD0;
  v10 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  v25 = sub_22B4D5CD8;
  v26 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_22B4D1BA8;
  v24 = &unk_283F20348;
  v11 = _Block_copy(&aBlock);
  v12 = v5;
  v13 = [v10 initWithProtocol:v8 forwardingHandler:v11];

  _Block_release(v11);

  v14 = swift_dynamicCastObjCProtocolUnconditional();
  sub_22B6F0AD4(qword_27D8CFA50, &qword_22B7FBB08);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22B7F93A0;
  *(v15 + 56) = swift_getObjectType();
  *(v15 + 32) = v7;
  *(v15 + 88) = swift_getObjectType();
  *(v15 + 64) = v14;
  v16 = objc_allocWithZone(MEMORY[0x277D1A9B0]);
  v17 = v6;
  v18 = v13;
  v19 = sub_22B7DB8F8();

  [v16 initWithTargets_];

  return swift_dynamicCastObjCProtocolUnconditional();
}

uint64_t sub_22B7B6830(void *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = IMGetDaemonListenerProtocol();
  v10 = swift_allocObject();
  v10[1].n128_u64[0] = a1;
  v10[1].n128_u64[1] = v5;
  v10[2] = a2;
  v11 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  aBlock[4] = a4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D1BA8;
  aBlock[3] = a5;
  v12 = _Block_copy(aBlock);
  v13 = a1;
  v14 = v5;
  [v11 initWithProtocol:v9 forwardingHandler:v12];

  _Block_release(v12);

  return swift_dynamicCastObjCProtocolUnconditional();
}

uint64_t (*sub_22B7B6B04(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x231895C80](a2, a3);
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
    *v3 = v5;
    return sub_22B7B6B84;
  }

  __break(1u);
  return result;
}

unint64_t sub_22B7B6B8C()
{
  result = qword_27D8CFAD0;
  if (!qword_27D8CFAD0)
  {
    sub_22B6FB8C4(&unk_27D8CDC20, &unk_22B7FA438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CFAD0);
  }

  return result;
}

uint64_t IMDMessageStore.batchOfRecordIDsToDelete(limit:)(uint64_t a1)
{
  v3 = v1;
  v5 = [v3 recordZoneID];
  if (!v5)
  {
    if (qword_28141F368 != -1)
    {
LABEL_15:
      swift_once();
    }

    v14 = sub_22B7DB2B8();
    sub_22B4CFA74(v14, qword_281422608);
    v15 = sub_22B7DB298();
    v16 = sub_22B7DBC98();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22B4CC000, v15, v16, "No record zone initialized in IMDRecordZoneManager.", v17, 2u);
      MEMORY[0x231898D60](v17, -1, -1);
    }

    return sub_22B71E2E4(MEMORY[0x277D84F90]);
  }

  v6 = [v3 recordIDsAndGUIDsToDeleteWithLimit_];
  sub_22B6F0AD4(&qword_27D8CF710, qword_22B7FA230);
  v7 = sub_22B7DB918();

  v8 = *(v7 + 16);
  if (!v8)
  {

    return sub_22B71E2E4(MEMORY[0x277D84F90]);
  }

  v9 = 0;
  v19 = MEMORY[0x277D84F98];
  while (1)
  {
    if (v9 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    v18 = *(v7 + 8 * v9 + 32);

    sub_22B7B6FA8(&v19, &v18);
    if (v2)
    {
      break;
    }

    if (v8 == ++v9)
    {

      v10 = v19;
      v11 = [objc_opt_self() sharedInstance];
      v12 = [v11 syncState];

      [v12 setSyncControllerSyncState:3 withRecordType:1];
      return v10;
    }
  }

  __break(1u);
  return result;
}

void sub_22B7B6FA8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  sub_22B7DC248();
  if (!*(v3 + 16))
  {
    goto LABEL_15;
  }

  v4 = sub_22B4D7EC0(v32);
  if ((v5 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_22B4D1F68(*(v3 + 56) + 32 * v4, v33);
  sub_22B4DA138(v32);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  sub_22B7DC248();
  if (!*(v3 + 16) || (v6 = sub_22B4D7EC0(v32), (v7 & 1) == 0))
  {

LABEL_15:
    sub_22B4DA138(v32);
    return;
  }

  sub_22B4D1F68(*(v3 + 56) + 32 * v6, v33);
  sub_22B4DA138(v32);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:

    return;
  }

  v34 = 0xE400000000000000;
  sub_22B6F0AD4(&qword_27D8CFAE0, &qword_22B7FE0B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B7F93A0;
  v9 = objc_opt_self();
  v10 = [v9 sharedInstance];
  if (!v10)
  {
    __break(1u);
    goto LABEL_26;
  }

  v11 = v10;
  v12 = [v10 messageRecordZoneID];

  *(inited + 32) = v12;
  v13 = [v9 sharedInstance];
  if (!v13)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = [v13 chatBotMessageRecordZoneID];

  *(inited + 40) = v15;
  v16 = *(inited + 32);
  if (v16)
  {
    sub_22B71EEC0();
    v17 = v16;

    v18 = sub_22B7DBC48();
    v19 = v18;
    if (*(*a1 + 16) && (sub_22B7237AC(v18), (v20 & 1) != 0))
    {
    }

    else
    {
      v31 = v17;
      v21 = v34;

      v22 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32[0] = *a1;
      sub_22B768B6C(1684632935, v21, v19, isUniquelyReferenced_nonNull_native);

      *a1 = v32[0];
    }
  }

  v24 = v15;

  if (!v24)
  {

    goto LABEL_13;
  }

  sub_22B71EEC0();
  v25 = v24;
  v26 = sub_22B7DBC48();
  v27 = v26;
  if (*(*a1 + 16))
  {
    sub_22B7237AC(v26);
    if (v28)
    {

      goto LABEL_13;
    }

    v29 = *a1;
  }

  v30 = swift_isUniquelyReferenced_nonNull_native();
  v32[0] = *a1;
  sub_22B768B6C(1684632935, v34, v27, v30);

  *a1 = v32[0];
}

uint64_t _sSo15IMDMessageStoreC12IMDaemonCoreE25recordIDsAndGUIDsToDelete9withLimitSaySDys11AnyHashableVypGGs5Int64V_tF_0()
{
  v0 = IMDMessageRecordCopyRecordIDsAndGUIDsToDeleteWithLimit();
  if (v0)
  {
    v1 = v0;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_22B6F0AD4(&qword_27D8CF710, qword_22B7FA230);
      sub_22B7DB908();
    }
  }

  if (qword_28141F368 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_281422608);
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBC98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Could not retrieve messages metadatas from IMDPersistence, returning nil from DeletedMessageStore.", v5, 2u);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t _sSo15IMDMessageStoreC12IMDaemonCoreE15clearTombstones12forRecordIDsySaySo10CKRecordIDCG_tF_0(uint64_t a1)
{
  if (qword_28141F368 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_281422608);

  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = sub_22B71EEC0();
    v8 = MEMORY[0x2318952A0](a1, v7);
    v10 = sub_22B4CFAAC(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Clearing message tombstones for recordIDs: %s", v5, 0xCu);
    sub_22B4CFB78(v6);
    MEMORY[0x231898D60](v6, -1, -1);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  return IMDMessageRecordClearDeleteTombStones();
}

uint64_t sub_22B7B7760()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_28141F4F0);
  sub_22B4CFA74(v0, qword_28141F4F0);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

id sub_22B7B77CC()
{
  result = [objc_allocWithZone(IMDKeyTransparencyController) init];
  qword_28141F0D8 = result;
  return result;
}

id sub_22B7B7800()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D73558]) initWithApplication_];
  *&v0[OBJC_IVAR___IMDKeyTransparencyController_app] = v1;
  sub_22B6F0AD4(&qword_27D8CFB00, &qword_22B7FE0D0);
  v2 = swift_allocObject();
  *(v2 + 20) = 0;
  *(v2 + 16) = 0;
  *&v0[OBJC_IVAR___IMDKeyTransparencyController_state] = v2;
  v6.receiver = v0;
  v6.super_class = IMDKeyTransparencyController;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  sub_22B7B7910();
  v4 = [objc_opt_self() defaultCenter];
  [v4 addObserver:v3 selector:sel_optInStateChanged_ name:*MEMORY[0x277D73600] object:0];

  return v3;
}

void sub_22B7B7910()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___IMDKeyTransparencyController_state];
  swift_getKeyPath();

  os_unfair_lock_lock((v2 + 20));
  sub_22B4D7CAC((v2 + 16), aBlock);
  os_unfair_lock_unlock((v2 + 20));

  v3 = LOBYTE(aBlock[0]);

  if (qword_28141F4E8 != -1)
  {
    swift_once();
  }

  v4 = sub_22B7DB2B8();
  sub_22B4CFA74(v4, qword_28141F4F0);
  v5 = sub_22B7DB298();
  v6 = sub_22B7DBC88();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = v3 ^ 1;
    _os_log_impl(&dword_22B4CC000, v5, v6, "Refreshing opt-in state. initial load: %{BOOL,public}d", v7, 8u);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  v8 = *&v1[OBJC_IVAR___IMDKeyTransparencyController_app];
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  aBlock[4] = sub_22B7B83B8;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B7B7F18;
  aBlock[3] = &unk_283F20798;
  v10 = _Block_copy(aBlock);
  v11 = v1;

  [v8 getOptInState:0 completionBlock:v10];
  _Block_release(v10);
}

id sub_22B7B7B64(char a1)
{
  v2 = v1;
  v4 = sub_22B7DB348();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B7DB398();
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = *(v26 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v1[OBJC_IVAR___IMDKeyTransparencyController_state];

  os_unfair_lock_lock((v12 + 20));
  v13 = *(v12 + 17);
  v14 = a1 & 1;
  *(v12 + 17) = a1;
  v15 = *(v12 + 16);
  *(v12 + 16) = 1;
  os_unfair_lock_unlock((v12 + 20));

  v17 = v15 ^ 1;
  if (v13 != (a1 & 1) || ((v15 ^ 1) & 1) != 0)
  {
    if (qword_28141F4E8 != -1)
    {
      swift_once();
    }

    v18 = sub_22B7DB2B8();
    sub_22B4CFA74(v18, qword_28141F4F0);
    v19 = sub_22B7DB298();
    v20 = sub_22B7DBC78();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67174913;
      *(v21 + 4) = a1 & 1;
      *(v21 + 8) = 1026;
      *(v21 + 10) = v17 & 1;
      _os_log_impl(&dword_22B4CC000, v19, v20, "Updated KT opt in state: %{BOOL,private}d. initial load? %{BOOL,public}d", v21, 0xEu);
      MEMORY[0x231898D60](v21, -1, -1);
    }

    result = im_primary_queue();
    if (result)
    {
      v22 = result;
      v23 = swift_allocObject();
      *(v23 + 16) = v2;
      *(v23 + 24) = v14;
      aBlock[4] = sub_22B7B83AC;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22B4D22C0;
      aBlock[3] = &unk_283F20748;
      v24 = _Block_copy(aBlock);
      v25 = v2;
      sub_22B7DACD8();
      v29 = MEMORY[0x277D84F90];
      sub_22B799D14();
      sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
      sub_22B799D6C();
      sub_22B7DC138();
      MEMORY[0x2318956F0](0, v11, v7, v24);
      _Block_release(v24);

      (*(v28 + 8))(v7, v4);
      (*(v26 + 8))(v11, v27);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22B7B7F18(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (a3)
  {
    sub_22B7DA928();
    v14 = sub_22B7DA968();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  }

  else
  {
    v15 = sub_22B7DA968();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  }

  v16 = a4;
  v13(a2, v11, a4);

  return sub_22B4D0D64(v11, &unk_27D8CF790, &qword_22B7F9578);
}

uint64_t sub_22B7B8078()
{
  v0 = sub_22B7DA678();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  v2 = *MEMORY[0x277D735B8];
  sub_22B7DB6A8();
  sub_22B7DC248();
  if (!*(v1 + 16) || (v3 = sub_22B4D7EC0(v6), (v4 & 1) == 0))
  {

    sub_22B4DA138(v6);
LABEL_8:
    v7 = 0u;
    v8 = 0u;
    return sub_22B4D0D64(&v7, &unk_27D8CCDC0, &qword_22B7F9580);
  }

  sub_22B4D1F68(*(v1 + 56) + 32 * v3, &v7);
  sub_22B4DA138(v6);

  if (!*(&v8 + 1))
  {
    return sub_22B4D0D64(&v7, &unk_27D8CCDC0, &qword_22B7F9580);
  }

  result = swift_dynamicCast();
  if (result)
  {
    return sub_22B7B7B64(v6[0]);
  }

  return result;
}

id sub_22B7B826C(uint64_t a1, char a2)
{
  result = [objc_opt_self() sharedProvider];
  if (result)
  {
    v4 = [result broadcasterForKeyTransparencyListeners];
    swift_unknownObjectRelease();
    [v4 keyTransparencyOptInStateChanged_];

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t type metadata accessor for IMDKeyTransparencyController()
{
  result = qword_27D8CFAF8;
  if (!qword_27D8CFAF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8CFAF8);
  }

  return result;
}

uint64_t _s5StateVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *_s5StateVwst(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_22B7B8550()
{
  v1 = OBJC_IVAR___IMDCollaborationNoticeStore____lazy_storage___persistenceContainer;
  v2 = *(v0 + OBJC_IVAR___IMDCollaborationNoticeStore____lazy_storage___persistenceContainer);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_22B7B85C0();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_22B7BD314(v4);
  }

  sub_22B7BD394(v2);
  return v3;
}

id sub_22B7B85C0()
{
  v0 = sub_22B7DA828();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v67[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v67[-v7];
  v9 = MEMORY[0x28223BE20](v6);
  v74 = &v67[-v10];
  MEMORY[0x28223BE20](v9);
  v12 = &v67[-v11];
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = sub_22B7DB678();
  v16 = sub_22B7DB678();
  v75 = v14;
  v17 = [v14 URLForResource:v15 withExtension:v16];

  if (!v17)
  {
    goto LABEL_9;
  }

  sub_22B7DA7D8();

  v18 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v19 = sub_22B7DA788();
  v20 = [v18 initWithContentsOfURL_];

  if (!v20)
  {
    (*(v1 + 8))(v12, v0);
LABEL_9:
    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v45 = sub_22B7DB2B8();
    sub_22B4CFA74(v45, qword_281422668);
    v46 = sub_22B7DB298();
    v47 = sub_22B7DBC98();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_22B4CC000, v46, v47, "Unable to generate objectModelURL, aborting.", v48, 2u);
      MEMORY[0x231898D60](v48, -1, -1);
    }

    return 0;
  }

  v73 = v0;
  v21 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  v22 = v20;
  v23 = sub_22B7DB678();
  v24 = [v21 initWithName:v23 managedObjectModel:v22];

  v25 = [*MEMORY[0x277D19CD8] stringByResolvingAndStandardizingPath];
  if (!v25)
  {
    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v49 = sub_22B7DB2B8();
    sub_22B4CFA74(v49, qword_281422668);
    v50 = sub_22B7DB298();
    v51 = sub_22B7DBC98();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = v22;
      v54 = swift_slowAlloc();
      aBlock[0] = v54;
      *v52 = 136315138;
      v55 = sub_22B7DB6A8();
      v57 = sub_22B4CFAAC(v55, v56, aBlock);

      *(v52 + 4) = v57;
      _os_log_impl(&dword_22B4CC000, v50, v51, "Unable to resolve collaboration notice directory path %s", v52, 0xCu);
      sub_22B4CFB78(v54);
      MEMORY[0x231898D60](v54, -1, -1);
      MEMORY[0x231898D60](v52, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v12, v73);
    return 0;
  }

  v72 = v22;
  v26 = v25;
  sub_22B7DB6A8();
  IMSharedHelperEnsureDirectoryExistsAtPath();

  sub_22B7DA768();

  sub_22B7DA798();
  if (qword_28141F390 != -1)
  {
    swift_once();
  }

  v27 = sub_22B7DB2B8();
  sub_22B4CFA74(v27, qword_281422668);
  v28 = *(v1 + 16);
  v71 = v8;
  v29 = v73;
  v28(v5, v8, v73);
  v30 = v24;
  v31 = sub_22B7DB298();
  v32 = sub_22B7DBCB8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    aBlock[0] = v70;
    *v33 = 136315394;
    sub_22B7BD3A4(&qword_27D8CEB40, MEMORY[0x277CC9260]);
    v34 = sub_22B7DC4E8();
    v35 = v29;
    v37 = v36;
    v38 = *(v1 + 8);
    v68 = v32;
    v39 = v5;
    v40 = v35;
    v38(v39, v35);
    v41 = sub_22B4CFAAC(v34, v37, aBlock);

    *(v33 + 4) = v41;
    *(v33 + 12) = 2112;
    *(v33 + 14) = v30;
    v42 = v69;
    *v69 = v30;
    v43 = v30;
    _os_log_impl(&dword_22B4CC000, v31, v68, "Loading store at storeURL: %s with persistenceContainer:%@", v33, 0x16u);
    sub_22B4D0D64(v42, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v42, -1, -1);
    v44 = v70;
    sub_22B4CFB78(v70);
    MEMORY[0x231898D60](v44, -1, -1);
    MEMORY[0x231898D60](v33, -1, -1);
  }

  else
  {

    v38 = *(v1 + 8);
    v58 = v5;
    v40 = v29;
    v38(v58, v29);
  }

  sub_22B6F0AD4(&unk_27D8CD970, &qword_22B7FB330);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_22B7F9620;
  v60 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
  v61 = v71;
  v62 = sub_22B7DA788();
  v63 = [v60 initWithURL_];

  *(v59 + 32) = v63;
  sub_22B4D01A0(0, &qword_27D8CFB28, 0x277CBE4E0);
  v64 = sub_22B7DB8F8();

  [v30 setPersistentStoreDescriptions_];

  aBlock[4] = sub_22B7B8E84;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B7B9174;
  aBlock[3] = &unk_283F20840;
  v65 = _Block_copy(aBlock);
  [v30 loadPersistentStoresWithCompletionHandler_];
  _Block_release(v65);

  v38(v61, v40);
  v38(v74, v40);
  v38(v12, v40);
  return v30;
}

void sub_22B7B8E84(void *a1, void *a2)
{
  if (a2)
  {
    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v3 = sub_22B7DB2B8();
    sub_22B4CFA74(v3, qword_281422668);
    v4 = a2;
    oslog = sub_22B7DB298();
    v5 = sub_22B7DBC98();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v26 = v7;
      *v6 = 136315138;
      v8 = a2;
      sub_22B6F0AD4(&qword_27D8CFB30, &qword_22B7FE190);
      v9 = sub_22B7DB6C8();
      v11 = sub_22B4CFAAC(v9, v10, &v26);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_22B4CC000, oslog, v5, "Error loading store: %s", v6, 0xCu);
      sub_22B4CFB78(v7);
      MEMORY[0x231898D60](v7, -1, -1);
      v12 = v6;
LABEL_10:
      MEMORY[0x231898D60](v12, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v14 = sub_22B7DB2B8();
    sub_22B4CFA74(v14, qword_281422668);
    v15 = a1;
    oslog = sub_22B7DB298();
    v16 = sub_22B7DBCB8();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136315138;
      v19 = v15;
      v20 = [v19 description];
      v21 = sub_22B7DB6A8();
      v23 = v22;

      v24 = sub_22B4CFAAC(v21, v23, &v26);

      *(v17 + 4) = v24;
      _os_log_impl(&dword_22B4CC000, oslog, v16, "Successfully loaded store: %s", v17, 0xCu);
      sub_22B4CFB78(v18);
      MEMORY[0x231898D60](v18, -1, -1);
      v12 = v17;
      goto LABEL_10;
    }
  }
}

void sub_22B7B9174(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

void sub_22B7B9200(void *a1)
{
  v73[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22B7DA828();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22B7DA968();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v70 - v13;
  v15 = sub_22B7B8550();
  if (v15 && (v16 = v15, v17 = [v15 viewContext], v16, v17))
  {
    v70 = v3;
    type metadata accessor for PersistedCollaborationNotice();
    v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v71 = v17;
    v19 = [v18 initWithContext_];
    v20 = [a1 guidString];
    if (!v20)
    {
      sub_22B7DB6A8();
      v20 = sub_22B7DB678();
    }

    [v19 setGuidString_];

    v21 = [a1 date];
    sub_22B7DA928();

    v22 = sub_22B7DA8B8();
    v23 = *(v8 + 8);
    v23(v14, v7);
    [v19 setDate_];

    v24 = [a1 dateViewed];
    if (v24)
    {
      v25 = v24;
      sub_22B7DA928();

      v26 = sub_22B7DA8B8();
      v23(v12, v7);
    }

    else
    {
      v26 = 0;
    }

    [v19 setDateViewed_];

    v32 = [a1 metadata];
    v33 = [v32 contentURL];

    sub_22B7DA7D8();
    sub_22B7DA748();
    (*(v70 + 8))(v6, v2);
    v34 = sub_22B7DB678();

    [v19 setUrl_];

    v35 = [a1 senderHandle];
    v36 = v71;
    if (!v35)
    {
      sub_22B7DB6A8();
      v35 = sub_22B7DB678();
    }

    [v19 setSenderHandle_];

    v37 = objc_opt_self();
    v38 = [a1 metadata];
    v73[0] = 0;
    v39 = [v37 archivedDataWithRootObject:v38 requiringSecureCoding:1 error:v73];

    v40 = v73[0];
    if (v39)
    {
      v41 = sub_22B7DA848();
      v43 = v42;

      v44 = sub_22B7DA838();
      sub_22B705E98(v41, v43);
    }

    else
    {
      v45 = v40;
      v46 = sub_22B7DA6F8();

      swift_willThrow();
      v44 = 0;
    }

    [v19 setMetadata_];

    v73[0] = 0;
    if ([v36 save:v73])
    {
      v47 = v19;
      v48 = qword_28141F390;
      v49 = v73[0];
      if (v48 != -1)
      {
        swift_once();
      }

      v50 = sub_22B7DB2B8();
      sub_22B4CFA74(v50, qword_281422668);
      v51 = a1;
      v52 = sub_22B7DB298();
      v53 = sub_22B7DBCB8();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138412290;
        *(v54 + 4) = v51;
        *v55 = v51;
        v56 = v51;
        _os_log_impl(&dword_22B4CC000, v52, v53, "Saved notice: %@", v54, 0xCu);
        sub_22B4D0D64(v55, &unk_27D8CEC60, &qword_22B7F9E20);
        MEMORY[0x231898D60](v55, -1, -1);
        MEMORY[0x231898D60](v54, -1, -1);
      }
    }

    else
    {
      v57 = v73[0];
      v58 = sub_22B7DA6F8();

      swift_willThrow();
      if (qword_28141F390 != -1)
      {
        swift_once();
      }

      v59 = sub_22B7DB2B8();
      sub_22B4CFA74(v59, qword_281422668);
      v60 = v58;
      v61 = sub_22B7DB298();
      v62 = sub_22B7DBC98();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v73[0] = v64;
        *v63 = 136315138;
        v72 = v58;
        v65 = v58;
        sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
        v66 = sub_22B7DB6C8();
        v68 = sub_22B4CFAAC(v66, v67, v73);

        *(v63 + 4) = v68;
        _os_log_impl(&dword_22B4CC000, v61, v62, "Unable to save notice, error: %s", v63, 0xCu);
        sub_22B4CFB78(v64);
        MEMORY[0x231898D60](v64, -1, -1);
        MEMORY[0x231898D60](v63, -1, -1);
      }

      else
      {
      }
    }

    v69 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v27 = sub_22B7DB2B8();
    sub_22B4CFA74(v27, qword_281422668);
    v71 = sub_22B7DB298();
    v28 = sub_22B7DBC98();
    if (os_log_type_enabled(v71, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22B4CC000, v71, v28, "Unable to save notice, can't retrieve object context", v29, 2u);
      MEMORY[0x231898D60](v29, -1, -1);
    }

    v30 = *MEMORY[0x277D85DE8];
    v31 = v71;
  }
}

unint64_t sub_22B7B9AFC(uint64_t a1)
{
  v58 = sub_22B7DA828();
  v2 = *(v58 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v58);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v29 = sub_22B7DB2B8();
    sub_22B4CFA74(v29, qword_281422668);
    v25 = sub_22B7DB298();
    v26 = sub_22B7DBCB8();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_17;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "No URLs provided, unable to retrieve any notices";
LABEL_16:
    _os_log_impl(&dword_22B4CC000, v25, v26, v28, v27, 2u);
    MEMORY[0x231898D60](v27, -1, -1);
LABEL_17:

    return 0;
  }

  v7 = sub_22B7B8550();
  if (!v7 || (v8 = v7, v9 = [v7 viewContext], v8, !v9))
  {
    if (qword_28141F390 != -1)
    {
LABEL_41:
      swift_once();
    }

    v24 = sub_22B7DB2B8();
    sub_22B4CFA74(v24, qword_281422668);
    v25 = sub_22B7DB298();
    v26 = sub_22B7DBC98();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_17;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Unable to get notices, can't retrieve object context";
    goto LABEL_16;
  }

  v54 = v9;
  v59 = MEMORY[0x277D84F90];
  sub_22B7AB6B4(0, v6, 0);
  v10 = v59;
  v12 = *(v2 + 16);
  v11 = v2 + 16;
  v13 = *(v11 + 64);
  v52 = v6;
  v53 = a1;
  v14 = a1 + ((v13 + 32) & ~v13);
  v55 = *(v11 + 56);
  v56 = v12;
  v57 = v11;
  v15 = (v11 - 8);
  v16 = v6;
  do
  {
    v17 = v58;
    v56(v5, v14, v58);
    v18 = sub_22B7DA748();
    v20 = v19;
    (*v15)(v5, v17);
    v59 = v10;
    v22 = *(v10 + 16);
    v21 = *(v10 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_22B7AB6B4((v21 > 1), v22 + 1, 1);
      v10 = v59;
    }

    *(v10 + 16) = v22 + 1;
    v23 = v10 + 16 * v22;
    *(v23 + 32) = v18;
    *(v23 + 40) = v20;
    v14 += v55;
    --v16;
  }

  while (v16);
  v32 = sub_22B7BCD18(v10);

  type metadata accessor for PersistedCollaborationNotice();
  v33 = v54;
  v34 = sub_22B7DBEE8();
  v57 = 0;

  v59 = MEMORY[0x277D84F90];
  if (v34 >> 62)
  {
    v35 = sub_22B7DC1C8();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v35 != v36)
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x231895C80](v36, v34);
    }

    else
    {
      if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v37 = *(v34 + 8 * v36 + 32);
    }

    v38 = v37;
    v39 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v40 = sub_22B7BA274();

    ++v36;
    if (v40)
    {
      MEMORY[0x231895260]();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v41 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22B7DB938();
        v33 = v54;
      }

      sub_22B7DB968();
      v30 = v59;
      v36 = v39;
    }
  }

  if (qword_28141F390 != -1)
  {
    swift_once();
  }

  v42 = sub_22B7DB2B8();
  sub_22B4CFA74(v42, qword_281422668);

  v43 = v53;

  v44 = sub_22B7DB298();
  v45 = sub_22B7DBCB8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v59 = v47;
    *v46 = 134218498;
    if (v30 >> 62)
    {
      v48 = sub_22B7DC1C8();
    }

    else
    {
      v48 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v46 + 4) = v48;

    *(v46 + 12) = 2048;
    *(v46 + 14) = v52;

    *(v46 + 22) = 2080;
    v49 = MEMORY[0x2318952A0](v43, v58);
    v51 = sub_22B4CFAAC(v49, v50, &v59);

    *(v46 + 24) = v51;
    _os_log_impl(&dword_22B4CC000, v44, v45, "Retrieved %ld notices for urls (%ld: %s", v46, 0x20u);
    sub_22B4CFB78(v47);
    MEMORY[0x231898D60](v47, -1, -1);
    MEMORY[0x231898D60](v46, -1, -1);
  }

  else
  {
  }

  return v30;
}

id sub_22B7BA274()
{
  v1 = v0;
  v2 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v56 - v7;
  v9 = sub_22B7DA968();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v56 - v15;
  v17 = [v0 metadata];
  if (!v17)
  {
    goto LABEL_4;
  }

  v18 = v17;
  v19 = sub_22B7DA848();
  v21 = v20;

  sub_22B4D01A0(0, &qword_27D8CFB18, 0x277CCAAC8);
  sub_22B4D01A0(0, &qword_27D8CFB20, 0x277D1A940);
  v60 = v21;
  v22 = sub_22B7DBD18();
  if (!v22)
  {
    sub_22B705E98(v19, v60);
LABEL_4:
    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v23 = sub_22B7DB2B8();
    sub_22B4CFA74(v23, qword_281422668);
    v24 = v1;
    v25 = sub_22B7DB298();
    v26 = sub_22B7DBC98();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v24;
      *v28 = v24;
      v29 = v24;
      _os_log_impl(&dword_22B4CC000, v25, v26, "Unable to get metadata from PersistedCollaborationNotice, %@", v27, 0xCu);
      sub_22B4D0D64(v28, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v28, -1, -1);
      MEMORY[0x231898D60](v27, -1, -1);
    }

    return 0;
  }

  v59 = v22;
  v31 = [v1 guidString];
  if (!v31)
  {
    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v36 = sub_22B7DB2B8();
    sub_22B4CFA74(v36, qword_281422668);
    v37 = v1;
    v38 = sub_22B7DB298();
    v39 = sub_22B7DBC98();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      *(v40 + 4) = v37;
      *v41 = v37;
      v42 = v37;
      _os_log_impl(&dword_22B4CC000, v38, v39, "Unable to get guidString from PersistedCollaborationNotice, %@", v40, 0xCu);
      sub_22B4D0D64(v41, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v41, -1, -1);
      MEMORY[0x231898D60](v40, -1, -1);
    }

    sub_22B705E98(v19, v60);

    return 0;
  }

  v32 = v31;
  v33 = [v1 senderHandle];
  if (v33)
  {
    v34 = v33;
    v57 = sub_22B7DB6A8();
    v58 = v35;
  }

  else
  {
    v57 = 0;
    v58 = 0xE000000000000000;
  }

  v43 = [v1 date];
  if (v43)
  {
    v44 = v43;
    sub_22B7DA928();

    v56 = v32;
    v45 = *(v10 + 32);
    v45(v8, v14, v9);
    v46 = *(v10 + 56);
    v46(v8, 0, 1, v9);
    v45(v16, v8, v9);
    v32 = v56;
  }

  else
  {
    v46 = *(v10 + 56);
    v46(v8, 1, 1, v9);
    sub_22B7DA958();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_22B4D0D64(v8, &unk_27D8CF790, &qword_22B7F9578);
    }
  }

  v47 = [v1 dateViewed];
  if (v47)
  {
    v48 = v47;
    sub_22B7DA928();

    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  v46(v6, v49, 1, v9);
  v50 = sub_22B7DB678();

  v51 = sub_22B7DA8B8();
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    v52 = 0;
  }

  else
  {
    v52 = sub_22B7DA8B8();
    (*(v10 + 8))(v6, v9);
  }

  v53 = objc_allocWithZone(MEMORY[0x277D1A938]);
  v54 = v59;
  v55 = [v53 initWithGUIDString:v32 sender:v50 metadata:v59 date:v51 dateViewed:v52];
  sub_22B705E98(v19, v60);

  (*(v10 + 8))(v16, v9);
  return v55;
}

uint64_t sub_22B7BA9E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 guidString];
  v4 = sub_22B7DB6A8();
  v6 = v5;

  sub_22B7BABDC(v4, v6, a2);
}

uint64_t sub_22B7BABDC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v6 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v52 - v8;
  v10 = sub_22B7B8550();
  if (v10 && (v11 = v10, v12 = [v10 viewContext], v11, v12))
  {
    v13 = sub_22B7BCF50(a1, a2);
    type metadata accessor for PersistedCollaborationNotice();
    v32 = sub_22B7DBEE8();

    if (v32 >> 62)
    {
      if (sub_22B7DC1C8())
      {
        if (sub_22B7DC1C8() >= 2)
        {
          goto LABEL_19;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
        if (v33 >= 2)
        {
LABEL_19:
          if (qword_28141F390 != -1)
          {
            swift_once();
          }

          v34 = sub_22B7DB2B8();
          sub_22B4CFA74(v34, qword_281422668);

          v35 = sub_22B7DB298();
          v36 = sub_22B7DBCB8();

          if (os_log_type_enabled(v35, v36))
          {
            v53 = v36;
            v37 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v55[0] = v52;
            *v37 = 134218242;
            if (v32 >> 62)
            {
              v38 = sub_22B7DC1C8();
            }

            else
            {
              v38 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v37 + 4) = v38;

            *(v37 + 12) = 2080;
            *(v37 + 14) = sub_22B4CFAAC(a1, a2, v55);
            _os_log_impl(&dword_22B4CC000, v35, v53, "Found %ld notices for guidString: %s", v37, 0x16u);
            v41 = v52;
            sub_22B4CFB78(v52);
            MEMORY[0x231898D60](v41, -1, -1);
            MEMORY[0x231898D60](v37, -1, -1);
          }

          else
          {
          }
        }

LABEL_30:
        v42 = sub_22B7DA828();
        (*(*(v42 - 8) + 56))(v9, 1, 1, v42);

        v43 = v12;
        sub_22B7BC9D8(v32, v9, v43, a1, a2);

        v55[0] = 0;
        if ([v43 save_])
        {
          v44 = v55[0];

          result = sub_22B7AA5D4(v9, a3);
        }

        else
        {
          v45 = v55[0];
          v46 = sub_22B7DA6F8();

          swift_willThrow();
          sub_22B4D0D64(v9, &qword_27D8CFC90, &unk_22B7FE140);
          if (qword_28141F390 != -1)
          {
            swift_once();
          }

          v14 = sub_22B7DB2B8();
          sub_22B4CFA74(v14, qword_281422668);
          v15 = v46;
          v16 = sub_22B7DB298();
          v17 = sub_22B7DBC98();

          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            v19 = swift_slowAlloc();
            v55[0] = v19;
            *v18 = 136315138;
            v54 = v46;
            v20 = v46;
            sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
            v21 = sub_22B7DB6C8();
            v23 = sub_22B4CFAAC(v21, v22, v55);

            *(v18 + 4) = v23;
            _os_log_impl(&dword_22B4CC000, v16, v17, "Failed to delete notice, error: %s", v18, 0xCu);
            sub_22B4CFB78(v19);
            MEMORY[0x231898D60](v19, -1, -1);
            MEMORY[0x231898D60](v18, -1, -1);
          }

          else
          {
          }

          v39 = sub_22B7DA828();
          result = (*(*(v39 - 8) + 56))(a3, 1, 1, v39);
        }

        v40 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v47 = sub_22B7DB2B8();
    sub_22B4CFA74(v47, qword_281422668);

    v48 = sub_22B7DB298();
    v49 = sub_22B7DBCB8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v55[0] = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_22B4CFAAC(a1, a2, v55);
      _os_log_impl(&dword_22B4CC000, v48, v49, "No notices to delete for guidString: %s", v50, 0xCu);
      sub_22B4CFB78(v51);
      MEMORY[0x231898D60](v51, -1, -1);
      MEMORY[0x231898D60](v50, -1, -1);
    }
  }

  else
  {
    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v24 = sub_22B7DB2B8();
    sub_22B4CFA74(v24, qword_281422668);
    v25 = sub_22B7DB298();
    v26 = sub_22B7DBC98();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22B4CC000, v25, v26, "Unable to delete notice, can't retrieve object context", v27, 2u);
      MEMORY[0x231898D60](v27, -1, -1);
    }
  }

  v28 = sub_22B7DA828();
  v29 = *(*(v28 - 8) + 56);
  v30 = *MEMORY[0x277D85DE8];

  return v29(a3, 1, 1, v28);
}

char *sub_22B7BB4EC(uint64_t a1, unint64_t a2)
{
  v75[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22B7B8550();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 viewContext];

    if (v6)
    {
      v7 = sub_22B7BD078(a1, a2);
      type metadata accessor for PersistedCollaborationNotice();
      v24 = sub_22B7DBEE8();

      v25 = v24;
      if (v24 >> 62)
      {
        v26 = sub_22B7DC1C8();
        if (v26)
        {
LABEL_17:
          v70 = a1;
          v27 = 0;
          v28 = v24 & 0xC000000000000001;
          v74 = v24 & 0xFFFFFFFFFFFFFF8;
          v29 = MEMORY[0x277D84F90];
          v73 = v24 & 0xC000000000000001;
          v71 = v24;
          do
          {
            v30 = v27;
            while (1)
            {
              if (v28)
              {
                v31 = MEMORY[0x231895C80](v30, v25);
              }

              else
              {
                if (v30 >= *(v74 + 16))
                {
                  goto LABEL_48;
                }

                v31 = *(v25 + 8 * v30 + 32);
              }

              v32 = v31;
              v27 = v30 + 1;
              if (__OFADD__(v30, 1))
              {
                __break(1u);
LABEL_48:
                __break(1u);
                goto LABEL_49;
              }

              v33 = [v31 guidString];
              if (v33)
              {
                break;
              }

              ++v30;
              if (v27 == v26)
              {
                goto LABEL_33;
              }
            }

            v34 = v26;
            v35 = v33;
            v36 = sub_22B7DB6A8();
            v38 = v37;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v29 = sub_22B71BD80(0, *(v29 + 2) + 1, 1, v29);
            }

            v40 = *(v29 + 2);
            v39 = *(v29 + 3);
            v41 = v29;
            if (v40 >= v39 >> 1)
            {
              v41 = sub_22B71BD80((v39 > 1), v40 + 1, 1, v29);
            }

            v29 = v41;
            *(v41 + 2) = v40 + 1;
            v42 = &v41[16 * v40];
            *(v42 + 4) = v36;
            *(v42 + 5) = v38;
            v26 = v34;
            v43 = v27 == v34;
            v25 = v71;
            v28 = v73;
          }

          while (!v43);
LABEL_33:
          v72 = v26;
          v69 = v29;
          v44 = 0;
          v45 = &selRef_updatedPriorityForChatsWithGUIDsAndProperties_chatsAndMessageGUIDs_;
          v46 = &qword_28141F000;
          while (1)
          {
            if (v28)
            {
              v47 = MEMORY[0x231895C80](v44, v25);
            }

            else
            {
              if (v44 >= *(v74 + 16))
              {
                goto LABEL_50;
              }

              v47 = *(v25 + 8 * v44 + 32);
            }

            v48 = v47;
            v49 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              break;
            }

            [v6 v45[156]];
            if (v46[114] != -1)
            {
              swift_once();
            }

            v50 = sub_22B7DB2B8();
            sub_22B4CFA74(v50, qword_281422668);

            v51 = v48;
            v52 = sub_22B7DB298();
            v53 = sub_22B7DBCB8();

            if (os_log_type_enabled(v52, v53))
            {
              v54 = swift_slowAlloc();
              v55 = v6;
              v56 = swift_slowAlloc();
              v57 = swift_slowAlloc();
              v75[0] = v57;
              *v54 = 136315394;
              *(v54 + 4) = sub_22B4CFAAC(v70, a2, v75);
              *(v54 + 12) = 2112;
              *(v54 + 14) = v51;
              *v56 = v51;
              v51 = v51;
              _os_log_impl(&dword_22B4CC000, v52, v53, "Successfully deleted notice with collaborationIdentifier: %s, %@", v54, 0x16u);
              sub_22B4D0D64(v56, &unk_27D8CEC60, &qword_22B7F9E20);
              v58 = v56;
              v6 = v55;
              v46 = &qword_28141F000;
              MEMORY[0x231898D60](v58, -1, -1);
              sub_22B4CFB78(v57);
              v59 = v57;
              v45 = &selRef_updatedPriorityForChatsWithGUIDsAndProperties_chatsAndMessageGUIDs_;
              MEMORY[0x231898D60](v59, -1, -1);
              v60 = v54;
              v25 = v71;
              MEMORY[0x231898D60](v60, -1, -1);
            }

            ++v44;
            v28 = v73;
            if (v49 == v72)
            {

              v75[0] = 0;
              if ([v6 save_])
              {
                v61 = v75[0];

                result = v69;
                goto LABEL_14;
              }

              v62 = v75[0];

              v63 = sub_22B7DA6F8();

              swift_willThrow();
              if (qword_28141F390 != -1)
              {
                swift_once();
              }

              v8 = sub_22B7DB2B8();
              sub_22B4CFA74(v8, qword_281422668);
              v9 = v63;
              v10 = sub_22B7DB298();
              v11 = sub_22B7DBC98();

              if (os_log_type_enabled(v10, v11))
              {
                v12 = swift_slowAlloc();
                v13 = swift_slowAlloc();
                v75[0] = v13;
                *v12 = 136315138;
                v14 = v63;
                sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
                v15 = sub_22B7DB6C8();
                v17 = sub_22B4CFAAC(v15, v16, v75);

                *(v12 + 4) = v17;
                _os_log_impl(&dword_22B4CC000, v10, v11, "Failed to delete notices, error: %s", v12, 0xCu);
                sub_22B4CFB78(v13);
                MEMORY[0x231898D60](v13, -1, -1);
                MEMORY[0x231898D60](v12, -1, -1);
              }

              goto LABEL_13;
            }
          }

LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }
      }

      else
      {
        v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v26)
        {
          goto LABEL_17;
        }
      }

      if (qword_28141F390 != -1)
      {
        swift_once();
      }

      v64 = sub_22B7DB2B8();
      sub_22B4CFA74(v64, qword_281422668);

      v65 = sub_22B7DB298();
      v66 = sub_22B7DBCB8();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v75[0] = v68;
        *v67 = 136315138;
        *(v67 + 4) = sub_22B4CFAAC(a1, a2, v75);
        _os_log_impl(&dword_22B4CC000, v65, v66, "No notices to delete for collaborationIdentifier: %s", v67, 0xCu);
        sub_22B4CFB78(v68);
        MEMORY[0x231898D60](v68, -1, -1);
        MEMORY[0x231898D60](v67, -1, -1);
      }

      goto LABEL_13;
    }
  }

  if (qword_28141F390 != -1)
  {
LABEL_51:
    swift_once();
  }

  v18 = sub_22B7DB2B8();
  sub_22B4CFA74(v18, qword_281422668);
  v19 = sub_22B7DB298();
  v20 = sub_22B7DBC98();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_22B4CC000, v19, v20, "Unable to delete notices, can't retrieve object context", v21, 2u);
    MEMORY[0x231898D60](v21, -1, -1);
  }

LABEL_13:
  result = MEMORY[0x277D84F90];
LABEL_14:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22B7BBD60(uint64_t a1)
{
  v63[1] = *MEMORY[0x277D85DE8];
  v61 = sub_22B7DA828();
  v3 = *(v61 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v61);
  v6 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v57[1] = v1;
    v63[0] = MEMORY[0x277D84F90];
    sub_22B7AB6B4(0, v7, 0);
    v8 = v63[0];
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v59 = *(v9 + 56);
    v60 = v10;
    v58 = (v9 - 8);
    do
    {
      v12 = v61;
      v13 = v9;
      v60(v6, v11, v61);
      v14 = sub_22B7DA748();
      v16 = v15;
      (*v58)(v6, v12);
      v63[0] = v8;
      v18 = v8[2];
      v17 = v8[3];
      if (v18 >= v17 >> 1)
      {
        sub_22B7AB6B4((v17 > 1), v18 + 1, 1);
        v8 = v63[0];
      }

      v8[2] = v18 + 1;
      v19 = &v8[2 * v18];
      v19[4] = v14;
      v19[5] = v16;
      v11 += v59;
      --v7;
      v9 = v13;
    }

    while (v7);
  }

  v20 = sub_22B7B8550();
  if (!v20 || (v21 = v20, v22 = [v20 viewContext], v21, !v22))
  {

    if (qword_28141F390 != -1)
    {
LABEL_35:
      swift_once();
    }

    v34 = sub_22B7DB2B8();
    sub_22B4CFA74(v34, qword_281422668);
    v22 = sub_22B7DB298();
    v35 = sub_22B7DBC98();
    if (os_log_type_enabled(v22, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_22B4CC000, v22, v35, "Unable to delete notices, can't retrieve object context", v36, 2u);
      MEMORY[0x231898D60](v36, -1, -1);
    }

    goto LABEL_43;
  }

  v23 = sub_22B7BCD18(v8);

  type metadata accessor for PersistedCollaborationNotice();
  v37 = sub_22B7DBEE8();

  if (v37 >> 62)
  {
    v38 = sub_22B7DC1C8();
    if (v38)
    {
      goto LABEL_18;
    }

LABEL_37:

    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v53 = sub_22B7DB2B8();
    sub_22B4CFA74(v53, qword_281422668);
    v47 = sub_22B7DB298();
    v54 = sub_22B7DBCB8();
    if (os_log_type_enabled(v47, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_22B4CC000, v47, v54, "No notices to delete", v55, 2u);
      v50 = v55;
LABEL_41:
      MEMORY[0x231898D60](v50, -1, -1);
    }

    goto LABEL_42;
  }

  v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v38)
  {
    goto LABEL_37;
  }

LABEL_18:
  v39 = 0;
  do
  {
    if ((v37 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x231895C80](v39, v37);
    }

    else
    {
      if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v40 = *(v37 + 8 * v39 + 32);
    }

    v41 = v40;
    v42 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    [v22 deleteObject:v40];

    ++v39;
  }

  while (v42 != v38);

  v63[0] = 0;
  if ([v22 save:v63])
  {
    v44 = qword_28141F390;
    v45 = v63[0];
    if (v44 != -1)
    {
      swift_once();
    }

    v46 = sub_22B7DB2B8();
    sub_22B4CFA74(v46, qword_281422668);
    v47 = sub_22B7DB298();
    v48 = sub_22B7DBCB8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 134217984;
      *(v49 + 4) = v38;
      _os_log_impl(&dword_22B4CC000, v47, v48, "Successfully deleted %ld notices", v49, 0xCu);
      v50 = v49;
      goto LABEL_41;
    }

LABEL_42:

LABEL_43:
    goto LABEL_44;
  }

  v51 = v63[0];
  v52 = sub_22B7DA6F8();

  swift_willThrow();
  if (qword_28141F390 != -1)
  {
    swift_once();
  }

  v24 = sub_22B7DB2B8();
  sub_22B4CFA74(v24, qword_281422668);
  v25 = v52;
  v26 = sub_22B7DB298();
  v27 = sub_22B7DBC98();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v63[0] = v29;
    *v28 = 136315138;
    v62 = v52;
    v30 = v52;
    sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
    v31 = sub_22B7DB6C8();
    v33 = sub_22B4CFAAC(v31, v32, v63);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_22B4CC000, v26, v27, "Failed to delete notices, error: %s", v28, 0xCu);
    sub_22B4CFB78(v29);
    MEMORY[0x231898D60](v29, -1, -1);
    MEMORY[0x231898D60](v28, -1, -1);
  }

  else
  {
  }

LABEL_44:
  v56 = *MEMORY[0x277D85DE8];
}

id CollaborationNoticeStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CollaborationNoticeStore.init()()
{
  *&v0[OBJC_IVAR___IMDCollaborationNoticeStore____lazy_storage___persistenceContainer] = 1;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollaborationNoticeStore();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CollaborationNoticeStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollaborationNoticeStore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22B7BC5AC(void *a1)
{
  v1 = a1;
  IMCollaborationNotice.description.getter();

  v2 = sub_22B7DB678();

  return v2;
}

uint64_t IMCollaborationNotice.description.getter()
{
  v1 = v0;
  v2 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v31 - v4;
  v6 = sub_22B7DA968();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_22B7DC2E8();
  MEMORY[0x231895140](0x6972745364697567, 0xEC000000203A676ELL);
  v11 = [v0 guidString];
  v12 = sub_22B7DB6A8();
  v14 = v13;

  MEMORY[0x231895140](v12, v14);

  MEMORY[0x231895140](0x7265646E6573202CLL, 0xEA0000000000203ALL);
  v15 = [v1 senderHandle];
  v16 = sub_22B7DB6A8();
  v18 = v17;

  MEMORY[0x231895140](v16, v18);

  MEMORY[0x231895140](0x203A65746164202CLL, 0xE800000000000000);
  v19 = [v1 date];
  sub_22B7DA928();

  sub_22B7BD3A4(&qword_27D8CD8D0, MEMORY[0x277CC9578]);
  v20 = sub_22B7DC4E8();
  MEMORY[0x231895140](v20);

  (*(v7 + 8))(v10, v6);
  MEMORY[0x231895140](0x695665746164202CLL, 0xEE00203A64657765);
  v21 = [v1 dateViewed];
  if (v21)
  {
    v22 = v21;
    sub_22B7DA928();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  (*(v7 + 56))(v5, v23, 1, v6);
  v24 = sub_22B7DB6C8();
  MEMORY[0x231895140](v24);

  MEMORY[0x231895140](0x61646174656D202CLL, 0xEC000000203A6174);
  v25 = [v1 metadata];
  v26 = [v25 description];

  v27 = sub_22B7DB6A8();
  v29 = v28;

  MEMORY[0x231895140](v27, v29);

  return v31[0];
}

void sub_22B7BC9D8(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v33 = a4;
  v35 = a2;
  v8 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v34 = &v29 - v11;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22B7DC1C8())
  {
    v13 = 0;
    v37 = a1 & 0xFFFFFFFFFFFFFF8;
    v38 = a1 & 0xC000000000000001;
    *&v10 = 136315394;
    v30 = v10;
    v31 = a1;
    v32 = a3;
    v36 = i;
    while (1)
    {
      if (v38)
      {
        v14 = MEMORY[0x231895C80](v13, a1);
      }

      else
      {
        if (v13 >= *(v37 + 16))
        {
          goto LABEL_17;
        }

        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v17 = [v14 url];
      if (v17)
      {
        v18 = v17;
        sub_22B7DB6A8();

        v19 = v34;
        sub_22B7DA808();

        sub_22B7BD324(v19, v35);
      }

      [a3 deleteObject_];
      if (qword_28141F390 != -1)
      {
        swift_once();
      }

      v20 = sub_22B7DB2B8();
      sub_22B4CFA74(v20, qword_281422668);

      v21 = v15;
      v22 = sub_22B7DB298();
      v23 = sub_22B7DBCB8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v39 = v26;
        *v24 = v30;
        *(v24 + 4) = sub_22B4CFAAC(v33, a5, &v39);
        *(v24 + 12) = 2112;
        *(v24 + 14) = v21;
        *v25 = v21;
        v21 = v21;
        _os_log_impl(&dword_22B4CC000, v22, v23, "Successfully deleted notice with guidString: %s, %@", v24, 0x16u);
        sub_22B4D0D64(v25, &unk_27D8CEC60, &qword_22B7F9E20);
        v27 = v25;
        a3 = v32;
        MEMORY[0x231898D60](v27, -1, -1);
        sub_22B4CFB78(v26);
        v28 = v26;
        a1 = v31;
        MEMORY[0x231898D60](v28, -1, -1);
        MEMORY[0x231898D60](v24, -1, -1);
      }

      ++v13;
      if (v16 == v36)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

id sub_22B7BCD18(uint64_t a1)
{
  v15 = MEMORY[0x277D84F90];
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B4D01A0(0, &unk_27D8CEED0, 0x277CCAC30);
    v3 = (a1 + 40);
    v4 = MEMORY[0x277D837D0];
    do
    {
      v6 = *(v3 - 1);
      v5 = *v3;
      sub_22B6F0AD4(&qword_27D8CD660, &unk_22B7F9760);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_22B7F93B0;
      *(v7 + 56) = v4;
      *(v7 + 64) = sub_22B704A5C();
      *(v7 + 32) = v6;
      *(v7 + 40) = v5;
      swift_bridgeObjectRetain_n();
      sub_22B7DBC58();
      MEMORY[0x231895260]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22B7DB938();
      }

      sub_22B7DB968();

      v3 += 2;
      --v1;
    }

    while (v1);
  }

  v8 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v9 = sub_22B7DB678();
  v10 = [v8 initWithEntityName_];

  sub_22B4D01A0(0, &unk_27D8CEED0, 0x277CCAC30);
  v11 = sub_22B7DB8F8();
  v12 = [objc_opt_self() orPredicateWithSubpredicates_];

  [v10 setPredicate_];

  return v10;
}

id sub_22B7BCF50(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = sub_22B7DB678();
  v6 = [v4 initWithEntityName_];

  sub_22B4D01A0(0, &unk_27D8CEED0, 0x277CCAC30);
  sub_22B6F0AD4(&qword_27D8CD660, &unk_22B7F9760);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22B7F93B0;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_22B704A5C();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_22B7DBC58();
  [v6 setPredicate_];

  return v6;
}

id sub_22B7BD078(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = sub_22B7DB678();
  v6 = [v4 initWithEntityName_];

  sub_22B4D01A0(0, &unk_27D8CEED0, 0x277CCAC30);
  sub_22B6F0AD4(&qword_27D8CD660, &unk_22B7F9760);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22B7F93B0;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_22B704A5C();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_22B7DBC58();
  [v6 setPredicate_];

  return v6;
}

void sub_22B7BD314(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_22B7BD324(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_22B7BD394(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_22B7BD3A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B7BD3EC()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_2814226C8);
  sub_22B4CFA74(v0, qword_2814226C8);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

void sub_22B7BD458()
{
  v1 = objc_opt_self();
  if ([v1 reindexSchedulingInProgress])
  {
    sub_22B7BE250(0xD000000000000028, 0x800000022B812670);
  }

  else
  {
    v2 = v0;
    sub_22B7BE564(0xD000000000000028, 0x800000022B812670);
  }

  if ([v1 reindexSchedulingInProgress])
  {
    v6 = v0;
    sub_22B7BE9F0(0xD000000000000034, 0x800000022B8126A0);
  }

  else
  {
    v3 = [objc_opt_self() sharedScheduler];
    v4 = sub_22B7DB678();
    v5 = [v3 taskRequestForIdentifier_];

    if (v5)
    {

      sub_22B7BE250(0xD000000000000034, 0x800000022B8126A0);
    }
  }
}

void sub_22B7BD5F0()
{
  v1 = [objc_allocWithZone(IMDSpotlightDaemonClient) init];
  v2 = *(v0 + OBJC_IVAR___IMDaemonModernCoreSpotlightManager_indexingDelegate);
  *(v0 + OBJC_IVAR___IMDaemonModernCoreSpotlightManager_indexingDelegate) = v1;
  v3 = v1;

  v4 = sub_22B7DB678();
  SpotlightDaemonClientRegister();

  if (qword_28141F3D8 != -1)
  {
    swift_once();
  }

  v5 = sub_22B7DB2B8();
  sub_22B4CFA74(v5, qword_2814226C8);
  oslog = sub_22B7DB298();
  v6 = sub_22B7DBC78();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B4CC000, oslog, v6, "Initialized Spotlight daemon client", v7, 2u);
    MEMORY[0x231898D60](v7, -1, -1);
    v8 = v3;
  }

  else
  {
    v8 = oslog;
    oslog = v3;
  }
}

Swift::Void __swiftcall IMDaemonModernCoreSpotlightManager.registerForCoreSpotlightIndexing()()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedScheduler];
  v3 = sub_22B7DB678();
  v4 = objc_opt_self();
  v5 = [v4 spotlightIndexQueue];
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v19 = sub_22B7BD9E0;
  v20 = v6;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_22B74C9E0;
  v18 = &unk_283F20890;
  v7 = _Block_copy(&v15);
  v8 = v0;

  [v2 registerForMessagesDeletionAwareTaskWithIdentifier:v3 usingQueue:v5 launchHandler:v7];
  _Block_release(v7);

  sub_22B7BD5F0();
  v9 = [v1 sharedScheduler];
  v10 = sub_22B7DB678();
  v11 = [v4 spotlightIndexQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  v19 = sub_22B7BDAC0;
  v20 = v12;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_22B74C9E0;
  v18 = &unk_283F208E0;
  v13 = _Block_copy(&v15);
  v14 = v8;

  [v9 registerForMessagesDeletionAwareTaskWithIdentifier:v10 usingQueue:v11 launchHandler:v13];
  _Block_release(v13);

  sub_22B7BD458();
}

void sub_22B7BDA14(void *a1, void *a2, char a3, void (*a4)(uint64_t, id))
{
  type metadata accessor for IMDReindexManagementTask();
  swift_allocObject();
  v8 = a1;
  v9 = sub_22B78B8D0(v8, a3);

  v10 = a2;
  a4(v9, v10);
}

id sub_22B7BDB3C(void *a1, id a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_28141F3D8 != -1)
    {
      swift_once();
    }

    v5 = sub_22B7DB2B8();
    sub_22B4CFA74(v5, qword_2814226C8);
    v6 = a1;
    v7 = sub_22B7DB298();
    v8 = sub_22B7DBC98();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_22B4CC000, v7, v8, "Failed to clear index state due to restore from backup: %@", v9, 0xCu);
      sub_22B708A24(v10);
      MEMORY[0x231898D60](v10, -1, -1);
      MEMORY[0x231898D60](v9, -1, -1);
    }

    else
    {
    }
  }

  return [a2 setTaskCompleted];
}

Swift::Void __swiftcall IMDaemonModernCoreSpotlightManager.registerForCoreSpotlightMigration()()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v2 = [v1 sharedScheduler];
  v3 = sub_22B7DB678();
  v4 = swift_allocObject();
  v4[2] = v0;
  aBlock[4] = sub_22B7BE130;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B74C9E0;
  aBlock[3] = &unk_283F20930;
  v5 = _Block_copy(aBlock);
  v6 = v0;

  [v2 registerForMessagesDeletionAwareTaskWithIdentifier:v3 usingQueue:0 launchHandler:v5];
  _Block_release(v5);

  v7 = [v1 sharedScheduler];
  v8 = sub_22B7BEF0C();
  aBlock[0] = 0;
  LODWORD(v2) = [v7 submitTaskRequest:v8 error:aBlock];

  v9 = aBlock[0];
  if (v2)
  {
    v10 = *MEMORY[0x277D85DE8];

    v11 = v9;
  }

  else
  {
    v12 = aBlock[0];
    v13 = sub_22B7DA6F8();

    swift_willThrow();
    if (qword_28141F3D8 != -1)
    {
      swift_once();
    }

    v14 = sub_22B7DB2B8();
    sub_22B4CFA74(v14, qword_2814226C8);
    v15 = v13;
    v16 = sub_22B7DB298();
    v17 = sub_22B7DBCA8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v18 = 136315394;
      *(v18 + 4) = sub_22B4CFAAC(0xD00000000000002CLL, 0x800000022B8126E0, aBlock);
      *(v18 + 12) = 2112;
      v21 = v13;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v22;
      *v19 = v22;
      _os_log_impl(&dword_22B4CC000, v16, v17, "Failed to submit task request for %s with error: %@", v18, 0x16u);
      sub_22B708A24(v19);
      MEMORY[0x231898D60](v19, -1, -1);
      sub_22B4CFB78(v20);
      MEMORY[0x231898D60](v20, -1, -1);
      MEMORY[0x231898D60](v18, -1, -1);
    }

    else
    {
    }

    v23 = *MEMORY[0x277D85DE8];
  }
}

void sub_22B7BE048(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_22B7BF06C;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_22B78B014;
  v6[3] = &unk_283F20980;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 stageIndexingDeletionForMigrationIfNeededWithCompletion_];
  _Block_release(v4);
}

void __swiftcall IMDaemonModernCoreSpotlightManager.init()(IMDaemonModernCoreSpotlightManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id IMDaemonModernCoreSpotlightManager.init()()
{
  *(v0 + OBJC_IVAR___IMDaemonModernCoreSpotlightManager_indexingDelegate) = 0;
  v2.super_class = IMDaemonModernCoreSpotlightManager;
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_22B7BE250(uint64_t a1, unint64_t a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_self();
  v5 = [v4 sharedScheduler];
  v6 = sub_22B7DB678();
  v7 = [v5 taskRequestForIdentifier_];

  if (!v7)
  {
LABEL_11:
    v25 = *MEMORY[0x277D85DE8];
    return;
  }

  v8 = [v4 sharedScheduler];
  v9 = sub_22B7DB678();
  v26[0] = 0;
  v10 = [v8 cancelTaskRequestWithIdentifier:v9 error:v26];

  v11 = v26[0];
  if (!v10)
  {
    v14 = v26[0];
    v15 = sub_22B7DA6F8();

    swift_willThrow();
    if (qword_28141F3D8 != -1)
    {
      swift_once();
    }

    v16 = sub_22B7DB2B8();
    sub_22B4CFA74(v16, qword_2814226C8);

    v17 = v15;
    v18 = sub_22B7DB298();
    v19 = sub_22B7DBC98();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26[0] = v22;
      *v20 = 136315394;
      *(v20 + 4) = sub_22B4CFAAC(a1, a2, v26);
      *(v20 + 12) = 2112;
      v23 = v15;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v24;
      *v21 = v24;
      _os_log_impl(&dword_22B4CC000, v18, v19, "Failed to cancel task request for %s with error: %@", v20, 0x16u);
      sub_22B708A24(v21);
      MEMORY[0x231898D60](v21, -1, -1);
      sub_22B4CFB78(v22);
      MEMORY[0x231898D60](v22, -1, -1);
      MEMORY[0x231898D60](v20, -1, -1);
    }

    else
    {
    }

    goto LABEL_11;
  }

  v12 = *MEMORY[0x277D85DE8];

  v13 = v11;
}

void sub_22B7BE564(uint64_t a1, unint64_t a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_self();
  v5 = [v4 sharedScheduler];
  v6 = sub_22B7DB678();
  v29 = [v5 taskRequestForIdentifier_];

  if (v29)
  {
    v7 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = [v4 sharedScheduler];
    v9 = objc_allocWithZone(MEMORY[0x277CF07D8]);
    v10 = sub_22B7DB678();
    v11 = [v9 initWithIdentifier_];

    [v11 setInterval_];
    v12 = v11;
    [v12 setRequiresNetworkConnectivity_];
    [v12 setRequiresUserInactivity_];
    [v12 setRequiresExternalPower_];
    [v12 setRequiresProtectionClass_];
    [v12 setPriority_];
    v13 = sub_22B7DB678();
    [v12 setGroupName_];

    [v12 setGroupConcurrencyLimit_];
    [v12 setResources_];

    v30[0] = 0;
    LOBYTE(v13) = [v8 submitTaskRequest:v12 error:v30];

    v14 = v30[0];
    if (v13)
    {
      v15 = *MEMORY[0x277D85DE8];

      v16 = v14;
    }

    else
    {
      v17 = v30[0];
      v18 = sub_22B7DA6F8();

      swift_willThrow();
      if (qword_28141F3D8 != -1)
      {
        swift_once();
      }

      v19 = sub_22B7DB2B8();
      sub_22B4CFA74(v19, qword_2814226C8);

      v20 = v18;
      v21 = sub_22B7DB298();
      v22 = sub_22B7DBCA8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v30[0] = v25;
        *v23 = 136315394;
        *(v23 + 4) = sub_22B4CFAAC(a1, a2, v30);
        *(v23 + 12) = 2112;
        v26 = v18;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 14) = v27;
        *v24 = v27;
        _os_log_impl(&dword_22B4CC000, v21, v22, "Failed to submit task request for %s with error: %@", v23, 0x16u);
        sub_22B708A24(v24);
        MEMORY[0x231898D60](v24, -1, -1);
        sub_22B4CFB78(v25);
        MEMORY[0x231898D60](v25, -1, -1);
        MEMORY[0x231898D60](v23, -1, -1);
      }

      else
      {
      }

      v28 = *MEMORY[0x277D85DE8];
    }
  }
}

void sub_22B7BE9F0(uint64_t a1, unint64_t a2)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_self();
  v5 = [v4 sharedScheduler];
  v6 = sub_22B7DB678();
  v37 = [v5 taskRequestForIdentifier_];

  if (v37)
  {
    v7 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = [v4 sharedScheduler];
    v9 = objc_allocWithZone(MEMORY[0x277CF07C8]);
    v10 = sub_22B7DB678();
    v11 = [v9 initWithIdentifier_];

    v12 = v11;
    [v12 setRequiresNetworkConnectivity_];
    [v12 setRequiresProtectionClass_];
    [v12 setRequiresUserInactivity_];
    [v12 setRequiresExternalPower_];
    v13 = sub_22B7DB8F8();
    [v12 setInvolvedProcesses_];

    v14 = IMSharedHelperMessagesApplicationName();
    if (v14)
    {
      v15 = v14;
      v16 = sub_22B7DB6A8();
      v18 = v17;

      sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_22B7F93B0;
      *(v19 + 32) = v16;
      *(v19 + 40) = v18;
      v20 = sub_22B7DB8F8();

      [v12 setRelatedApplications_];
    }

    [v12 setPriority_];
    v21 = sub_22B7DB678();
    [v12 setGroupName_];

    [v12 setGroupConcurrencyLimit_];
    [v12 setResources_];

    v38[0] = 0;
    LOBYTE(v21) = [v8 submitTaskRequest:v12 error:v38];

    v22 = v38[0];
    if (v21)
    {
      v23 = *MEMORY[0x277D85DE8];

      v24 = v22;
    }

    else
    {
      v25 = v38[0];
      v26 = sub_22B7DA6F8();

      swift_willThrow();
      if (qword_28141F3D8 != -1)
      {
        swift_once();
      }

      v27 = sub_22B7DB2B8();
      sub_22B4CFA74(v27, qword_2814226C8);

      v28 = v26;
      v29 = sub_22B7DB298();
      v30 = sub_22B7DBCA8();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v38[0] = v33;
        *v31 = 136315394;
        *(v31 + 4) = sub_22B4CFAAC(a1, a2, v38);
        *(v31 + 12) = 2112;
        v34 = v26;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 14) = v35;
        *v32 = v35;
        _os_log_impl(&dword_22B4CC000, v29, v30, "Failed to submit task request for %s with error: %@", v31, 0x16u);
        sub_22B708A24(v32);
        MEMORY[0x231898D60](v32, -1, -1);
        sub_22B4CFB78(v33);
        MEMORY[0x231898D60](v33, -1, -1);
        MEMORY[0x231898D60](v31, -1, -1);
      }

      else
      {
      }

      v36 = *MEMORY[0x277D85DE8];
    }
  }
}

id sub_22B7BEF0C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CF07C8]);
  v1 = sub_22B7DB678();
  v2 = [v0 initWithIdentifier_];

  v3 = v2;
  [v3 setRequiresNetworkConnectivity_];
  [v3 setPostInstall_];
  [v3 setRequiresProtectionClass_];
  v4 = sub_22B7DB678();
  [v3 setGroupName_];

  [v3 setGroupConcurrencyLimit_];
  [v3 setPriority_];

  return v3;
}

unint64_t type metadata accessor for IMDaemonModernCoreSpotlightManager()
{
  result = qword_27D8CFB40;
  if (!qword_27D8CFB40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8CFB40);
  }

  return result;
}

uint64_t ClientConnection.id.getter()
{
  v1 = *(v0 + 16);
  sub_22B7DACB8();
  return v3;
}

Swift::Bool __swiftcall ClientConnection.hasEntitlement(_:)(Swift::String a1)
{
  v2 = *(v1 + 16);
  sub_22B7DACB8();
  return v4;
}

uint64_t ClientConnection.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ClientConnection.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t ClientConnection.supportedServices.getter()
{
  v1 = *(v0 + 16);
  sub_22B6F0AD4(&qword_27D8CEF00, &qword_22B7FBAD0);
  sub_22B7DACB8();
  return v3;
}

uint64_t ClientConnection.supportedServices.setter()
{
  v1 = *(v0 + 16);
  sub_22B7DACB8();
}

uint64_t (*ClientConnection.supportedServices.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = *(v1 + 16);
  sub_22B6F0AD4(&qword_27D8CEF00, &qword_22B7FBAD0);
  sub_22B7DACB8();
  return sub_22B7BF328;
}

uint64_t sub_22B7BF328(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v4 = *a1;
  if (a2)
  {

    sub_22B7DACB8();
  }

  else
  {
    sub_22B7DACB8();
  }
}

uint64_t ClientConnection.supports(serviceNamed:requiredCapabilities:excludedCapabilities:)()
{
  v1 = *(v0 + 16);
  sub_22B7DACB8();
  return v3;
}

uint64_t sub_22B7BF444(uint64_t a1)
{
  v2 = *(a1 + 72);

  *(a1 + 72) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_22B7BF478@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7 = a1[3];
  v8 = a1[4];
  sub_22B4D2BCC(a1, v7);
  result = (*(v8 + 16))(a2, a3, v7, v8);
  *a4 = result & 1;
  return result;
}

uint64_t sub_22B7BF4F0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1[3];
  v7 = a1[4];
  sub_22B4D2BCC(a1, v6);
  result = (*(v7 + 16))(v5, v4, v6, v7);
  *a2 = result & 1;
  return result;
}

uint64_t sub_22B7BF568@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v3 = result;
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  if (v5 && (result = sub_22B4D90D4(v2[3], v5, *(result + 64)), (result & 1) == 0))
  {
    v9 = 0;
  }

  else
  {
    v8 = *(v3 + 40);
    v9 = (v6 & ~v8) == 0 && (v8 & v7) == 0;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_22B7BF5D8@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 16);
  result = sub_22B7DACB8();
  *a1 = v5;
  a1[1] = v6;
  return result;
}

uint64_t sub_22B7BF650(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_22B7BF698(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B7BF6FC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + 64);

  *(a1 + 64) = v3;
  return result;
}

void sub_22B7BF744(unsigned __int8 a1)
{
  v2 = a1;
  v3 = [v1 string];
  v4 = sub_22B7DB6A8();
  v6 = v5;

  if ((v6 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (((v6 >> 60) & ((v4 & 0x800000000000000) == 0)) != 0)
  {
    v8 = 11;
  }

  else
  {
    v8 = 7;
  }

  v9 = 4 * v7;
  v10 = 15;
  if ((v2 | 2) == 2 && v7)
  {
    do
    {
      sub_22B7DB878();
      v11 = sub_22B7DB5C8();

      if ((v11 & 1) == 0)
      {
        v12 = sub_22B7DB878();
        v14 = sub_22B7C1414(v12, v13);
        if ((v14 & 0x100000000) != 0)
        {
          goto LABEL_31;
        }

        v15 = v14;

        if ((v15 - 14) <= 0xFFFFFFFB && (v15 - 8232) >= 2 && v15 != 133)
        {
          break;
        }
      }

      v10 = sub_22B7DB778();
    }

    while (v9 > v10 >> 14);
  }

  v16 = v8 | (v7 << 16);
  v17 = v10 >> 14;
  if ((v2 - 1) <= 1 && v17 < v9)
  {
    do
    {
      sub_22B7DB788();
      sub_22B7DB878();
      v18 = sub_22B7DB5C8();

      if ((v18 & 1) == 0)
      {
        sub_22B7DB788();
        v19 = sub_22B7DB878();
        v21 = sub_22B7C1414(v19, v20);
        if ((v21 & 0x100000000) != 0)
        {
          goto LABEL_30;
        }

        v22 = v21;

        if ((v22 - 14) <= 0xFFFFFFFB && (v22 - 8232) >= 2 && v22 != 133)
        {
          break;
        }
      }

      v16 = sub_22B7DB788();
    }

    while (v17 < v16 >> 14);
  }

  if (v17 > v16 >> 14)
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    sub_22B6F0AD4(&qword_27D8CFB50, &qword_22B7FE2A0);
    sub_22B7C5C4C();
    sub_22B704B70();
    v23 = sub_22B7DC008();
    v25 = [v1 attributedSubstringFromRange_];

    v26 = v25;
  }
}

uint64_t IMMessagePartDescriptor.canBeTranslated.getter()
{
  if (IMMessagePartDescriptor.hasAttachment.getter())
  {
    v1 = 0;
  }

  else
  {
    sub_22B7DAC78();
    sub_22B7DAC58();
    v2 = [v0 messagePartBody];
    v3 = [v2 string];

    sub_22B7DB6A8();
    LOBYTE(v2) = sub_22B7DAC18();

    v1 = v2 ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_22B7BFBD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v3 = *(*(sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0) - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B7BFC6C, 0, 0);
}

uint64_t sub_22B7BFC6C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_22B7DBA58();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_22B7C0068(v1, &unk_22B7FE2B8, v5);
  sub_22B4D0D64(v1, &qword_27D8CD5C0, &qword_22B7F8CF0);
  v4(v1, 1, 1, v3);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_22B7C0068(v1, &unk_22B7FE2C8, v6);
  sub_22B4D0D64(v1, &qword_27D8CD5C0, &qword_22B7F8CF0);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22B7BFE04()
{
  v0[2] = sub_22B7DAE28();
  sub_22B7DAE18();
  sub_22B7DADF8();

  v0[3] = sub_22B7DAE18();
  v1 = *(MEMORY[0x277D19610] + 4);
  v4 = (*MEMORY[0x277D19610] + MEMORY[0x277D19610]);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_22B7BFEE0;

  return v4();
}

uint64_t sub_22B7BFEE0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B7BFFF8, 0, 0);
}

uint64_t sub_22B7BFFF8()
{
  v1 = *(v0 + 16);
  sub_22B7DAE18();
  sub_22B7DADE8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B7C0068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  sub_22B724CA8(a1, v22 - v10);
  v12 = sub_22B7DBA58();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_22B4D0D64(v11, &qword_27D8CD5C0, &qword_22B7F8CF0);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_22B7DB9C8();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_22B7DBA48();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_22B7C028C()
{
  sub_22B7DAC78();
  sub_22B7DAC48();
  v1 = *(v0 + 8);

  return v1();
}

id IMMessagePartDescriptor.shouldSkipTranslationDueToExistingTranslation(messageItem:chat:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_22B7DAA08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = [a1 translationsForMessagePart_];
  sub_22B6F0AD4(&qword_27D8CF710, qword_22B7FA230);
  v15 = sub_22B7DB918();

  if (!*(v15 + 16))
  {

    v31 = 0;
    return (v31 & 1);
  }

  v39 = v11;
  v40 = v7;
  v16 = *(v15 + 32);
  v17 = objc_allocWithZone(MEMORY[0x277D1ACB0]);

  v18 = sub_22B7DB568();
  v19 = [v17 initWithDictionaryRepresentation_];

  v20 = [v19 translationLanguage];
  v21 = sub_22B7DB6A8();
  v23 = v22;

  v41 = a2;
  v24 = [a2 userTranslationLanguageIdentifier];
  if (v24)
  {
    v25 = v24;
    v38 = v6;
    v26 = sub_22B7DB6A8();
    v28 = v27;

    if (v21 == v26 && v23 == v28)
    {

      goto LABEL_14;
    }

    v30 = sub_22B7DC518();

    v6 = v38;
    if (v30)
    {

LABEL_14:

      v31 = 1;
      return (v31 & 1);
    }
  }

  else
  {
  }

  v32 = [v19 sourceLanguage];
  sub_22B7DB6A8();

  sub_22B7DA9B8();
  result = [v41 translationLanguageIdentifier];
  if (result)
  {
    v34 = result;

    sub_22B7DB6A8();

    v35 = v39;
    sub_22B7DA9B8();
    v36 = sub_22B7DA9D8();

    v37 = *(v40 + 8);
    v37(v35, v6);
    v37(v13, v6);
    v31 = v36 ^ 1;
    return (v31 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_22B7C0810(int a1, void *a2, uint64_t a3, void *aBlock)
{
  v4[2] = a2;
  v4[3] = _Block_copy(aBlock);
  sub_22B4D01A0(0, &qword_28141F288, 0x277D1AA70);
  v7 = sub_22B7DB918();
  v4[4] = v7;
  v8 = a2;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_22B7C091C;

  return (sub_22B7C2DD4)(v7, v8, a3);
}

uint64_t sub_22B7C091C()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v6 = *v0;

  if (v4)
  {
    v7 = *(v1 + 24);
    v7[2](v7);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

IMDMessageTranslator __swiftcall IMDMessageTranslator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

BOOL IMMessagePartDescriptor.hasAttachment.getter()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = [v0 messagePartBody];
  v2 = [v1 length];

  v3 = [v0 messagePartBody];
  v4 = [v3 attribute:*MEMORY[0x277D19100] atIndex:0 effectiveRange:&v8];

  if (v4)
  {
    sub_22B7DC118();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  v5 = *(&v10 + 1) != 0;
  sub_22B4D0D64(v11, &unk_27D8CCDC0, &qword_22B7F9580);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_22B7C0C64()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22B6F12E8;

  return sub_22B7C0810(v2, v3, v4, v6);
}

uint64_t sub_22B7C0D2C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_22B6F12E8;

  return v7();
}

uint64_t sub_22B7C0E14(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_22B6F0D94;

  return v8();
}

uint64_t sub_22B7C0EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_22B724CA8(a3, v25 - v11);
  v13 = sub_22B7DBA58();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_22B4D0D64(v12, &qword_27D8CD5C0, &qword_22B7F8CF0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_22B7DBA48();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_22B7DB9C8();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_22B7DB6F8() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_22B4D0D64(a3, &qword_27D8CD5C0, &qword_22B7F8CF0);

    return v23;
  }

LABEL_8:
  sub_22B4D0D64(a3, &qword_27D8CD5C0, &qword_22B7F8CF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_22B7C11E8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B7C5EC0;

  return v7(a1);
}

uint64_t sub_22B7C12E0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B6F12E8;

  return sub_22B7C11E8(a1, v5);
}

uint64_t sub_22B7C1398(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22B7DB838();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x231895180](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_22B7C1414(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_22B7C1564(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_22B7DC2D8();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_22B7DC328() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_22B7C1564(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_22B7C15FC(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_22B7C1670(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_22B7C15FC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_22B7C1398(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22B7C1670(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_22B7DC328();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_22B7C1794(unint64_t a1)
{
  v1 = a1;
  v47 = *MEMORY[0x277D85DE8];
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v3 = 0;
      v4 = v1 & 0xC000000000000001;
      v5 = v1 & 0xFFFFFFFFFFFFFF8;
      v6 = v1 + 32;
      v41 = *MEMORY[0x277D19100];
      v7 = &selRef__unsignedIntegerFromString_;
      v8 = &selRef_handleNotifyRecipientCommandWithPipeline_input_completionBlock_;
      v36 = v1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v4)
        {
          v9 = MEMORY[0x231895C80](v3, v1);
        }

        else
        {
          if (v3 >= *(v5 + 16))
          {
            goto LABEL_42;
          }

          v9 = *(v6 + 8 * v3);
        }

        v10 = v9;
        if (__OFADD__(v3++, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (![v9 v7[362]] && (objc_msgSend(v10, v8[434]) & 1) == 0 && (objc_msgSend(v10, sel_isSystemMessage) & 1) == 0 && !objc_msgSend(v10, sel_isLocatingMessage) && (objc_msgSend(v10, sel_isSticker) & 1) == 0)
        {
          v12 = [v10 balloonBundleID];
          if (!v12)
          {
            goto LABEL_19;
          }

          v13 = v12;
          v14 = sub_22B7DB6A8();
          v16 = v15;

          v8 = &selRef_handleNotifyRecipientCommandWithPipeline_input_completionBlock_;

          v17 = HIBYTE(v16) & 0xF;
          v18 = v14 & 0xFFFFFFFFFFFFLL;
          v5 = v36;
          if ((v16 & 0x2000000000000000) == 0)
          {
            v17 = v18;
          }

          if (!v17)
          {
LABEL_19:
            if (([v10 isTypingMessage] & 1) == 0)
            {
              break;
            }
          }
        }

LABEL_5:

        if (v3 == v2)
        {
          goto LABEL_46;
        }
      }

      v19 = [v10 messageParts];
      if (!v19)
      {
LABEL_40:

        result = 1;
        goto LABEL_47;
      }

      v20 = v19;
      sub_22B4D01A0(0, &qword_28141F130, 0x277D1AA80);
      v21 = sub_22B7DB918();

      v40 = v21;
      v34 = v4;
      v35 = v1;
      if (!(v21 >> 62))
      {
        break;
      }

      v1 = sub_22B7DC1C8();
      v8 = &selRef_handleNotifyRecipientCommandWithPipeline_input_completionBlock_;
      if (!v1)
      {
        goto LABEL_4;
      }

LABEL_23:
      v22 = 0;
      v38 = v21 & 0xFFFFFFFFFFFFFF8;
      v39 = v21 & 0xC000000000000001;
      v37 = v1;
      while (1)
      {
        if (v39)
        {
          v23 = MEMORY[0x231895C80](v22, v21);
        }

        else
        {
          if (v22 >= *(v38 + 16))
          {
            goto LABEL_44;
          }

          v23 = *(v21 + 8 * v22 + 32);
        }

        v24 = v23;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        v42 = v22 + 1;
        v25 = [v23 messagePartBody];
        v26 = [v25 length];

        v43[0] = 0;
        v43[1] = v26;
        v27 = [v24 messagePartBody];
        v28 = [v27 attribute:v41 atIndex:0 effectiveRange:v43];

        if (v28)
        {
          sub_22B7DC118();
          swift_unknownObjectRelease();
        }

        else
        {
          v44 = 0u;
          v45 = 0u;
        }

        v46[0] = v44;
        v46[1] = v45;
        v29 = *(&v45 + 1);
        sub_22B4D0D64(v46, &unk_27D8CCDC0, &qword_22B7F9580);
        if (v29)
        {
        }

        else
        {
          sub_22B7DAC78();
          sub_22B7DAC58();
          v30 = [v24 messagePartBody];
          v31 = [v30 string];

          sub_22B7DB6A8();
          LOBYTE(v30) = sub_22B7DAC18();

          v5 = v36;

          if ((v30 & 1) == 0)
          {

            goto LABEL_40;
          }
        }

        ++v22;
        v1 = v37;
        v7 = &selRef__unsignedIntegerFromString_;
        v8 = &selRef_handleNotifyRecipientCommandWithPipeline_input_completionBlock_;
        v21 = v40;
        if (v42 == v37)
        {
          goto LABEL_4;
        }
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      v2 = sub_22B7DC1C8();
      if (!v2)
      {
        goto LABEL_46;
      }
    }

    v1 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = &selRef_handleNotifyRecipientCommandWithPipeline_input_completionBlock_;
    if (v1)
    {
      goto LABEL_23;
    }

LABEL_4:

    v4 = v34;
    v1 = v35;
    goto LABEL_5;
  }

LABEL_46:
  result = 0;
LABEL_47:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B7C1BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 264) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = sub_22B7DB2B8();
  *(v6 + 56) = v7;
  v8 = *(v7 - 8);
  *(v6 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = swift_task_alloc();
  v10 = *(*(sub_22B6F0AD4(&qword_27D8CFB60, &qword_22B7FE2A8) - 8) + 64) + 15;
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();
  v11 = sub_22B7DAA08();
  *(v6 + 104) = v11;
  v12 = *(v11 - 8);
  *(v6 + 112) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B7C1DD4, 0, 0);
}

uint64_t sub_22B7C1DD4()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 112);
  v4 = *(v0 + 264);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);

  sub_22B7DA9B8();

  sub_22B7DA9B8();
  sub_22B7DAC78();
  *(v0 + 192) = sub_22B7DAC58();
  v10 = *(v3 + 16);
  v3 += 16;
  v9 = v10;
  v11 = (v3 + 40);
  *(v0 + 200) = v10;
  *(v0 + 208) = v3 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12 = *(v0 + 176);
  v13 = *(v0 + 104);
  if (v4 == 1)
  {
    v14 = *(v0 + 96);
    v9(v14, v12, *(v0 + 104));
    (*v11)(v14, 0, 1, v13);
    v15 = *(MEMORY[0x277D19590] + 4);
    v32 = (*MEMORY[0x277D19590] + MEMORY[0x277D19590]);
    v16 = swift_task_alloc();
    *(v0 + 216) = v16;
    *v16 = v0;
    v16[1] = sub_22B7C2040;
    v17 = *(v0 + 184);
    v18 = *(v0 + 160);
    v19 = *(v0 + 96);
    v20 = *(v0 + 16);

    return v32(v18, v20, v17, v19);
  }

  else
  {
    v22 = *(v0 + 88);
    v9(v22, v12, *(v0 + 104));
    (*v11)(v22, 0, 1, v13);
    v23 = sub_22B7DAC68();
    v25 = v24;
    v26 = *(MEMORY[0x277D19588] + 4);
    v33 = (*MEMORY[0x277D19588] + MEMORY[0x277D19588]);
    v27 = swift_task_alloc();
    *(v0 + 240) = v27;
    *v27 = v0;
    v27[1] = sub_22B7C25BC;
    v28 = *(v0 + 184);
    v29 = *(v0 + 136);
    v30 = *(v0 + 88);
    v31 = *(v0 + 16);

    return v33(v29, v31, v28, v30, v23, v25);
  }
}

uint64_t sub_22B7C2040(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v5 = *(*v2 + 96);
  v8 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  sub_22B4D0D64(v5, &qword_27D8CFB60, &qword_22B7FE2A8);
  if (v1)
  {
    v6 = sub_22B7C2B3C;
  }

  else
  {
    v6 = sub_22B7C2184;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22B7C2184()
{
  v61 = v0;
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 104);
  v8 = *(v0 + 80);
  (*(*(v0 + 112) + 32))(v4, *(v0 + 160), v7);
  sub_22B7DB288();
  sub_22B7DB2A8();
  v2(v5, v3, v7);
  v2(v6, v4, v7);
  v9 = sub_22B7DB298();
  v10 = sub_22B7DBC88();
  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 144);
  v12 = *(v0 + 152);
  v15 = *(v0 + 104);
  v14 = *(v0 + 112);
  v16 = *(v0 + 80);
  v17 = *(v0 + 56);
  v18 = *(v0 + 64);
  if (v11)
  {
    v52 = v10;
    v19 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v60 = v54;
    *v19 = 136315394;
    log = v9;
    v20 = sub_22B7DA9C8();
    v57 = v17;
    v22 = v21;
    v23 = *(v14 + 8);
    v23(v12, v15);
    v24 = sub_22B4CFAAC(v20, v22, &v60);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = sub_22B7DA9C8();
    v27 = v26;
    v59 = v23;
    v23(v13, v15);
    v28 = sub_22B4CFAAC(v25, v27, &v60);

    *(v19 + 14) = v28;
    _os_log_impl(&dword_22B4CC000, log, v52, "Incoming message was translated from %s to %s.", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v54, -1, -1);
    MEMORY[0x231898D60](v19, -1, -1);

    (*(v18 + 8))(v16, v57);
  }

  else
  {

    v29 = *(v14 + 8);
    v29(v13, v15);
    v59 = v29;
    v29(v12, v15);
    (*(v18 + 8))(v16, v17);
  }

  v30 = *(v0 + 224);
  v32 = *(v0 + 184);
  v31 = *(v0 + 192);
  v33 = *(v0 + 168);
  sub_22B7DA9C8();
  sub_22B7DA9C8();
  v34 = objc_allocWithZone(MEMORY[0x277D1ACB0]);
  v35 = sub_22B7DB678();

  v36 = sub_22B7DB678();

  v58 = [v34 initWithSourceLanguage:v35 translationLanguage:v36 translatedText:v30];

  v38 = *(v0 + 176);
  v37 = *(v0 + 184);
  v39 = *(v0 + 160);
  v40 = *(v0 + 168);
  v42 = *(v0 + 144);
  v41 = *(v0 + 152);
  v47 = *(v0 + 136);
  v48 = *(v0 + 128);
  v43 = *(v0 + 112);
  v44 = *(v0 + 104);
  v49 = *(v0 + 120);
  loga = *(v0 + 96);
  v53 = *(v0 + 88);
  v55 = *(v0 + 80);
  v56 = *(v0 + 72);

  v59(v40, v44);
  v59(v38, v44);
  v59(v37, v44);

  v45 = *(v0 + 8);

  return v45(v58);
}

uint64_t sub_22B7C25BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v5 = *(*v2 + 88);
  v8 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  sub_22B4D0D64(v5, &qword_27D8CFB60, &qword_22B7FE2A8);
  if (v1)
  {
    v6 = sub_22B7C2C88;
  }

  else
  {
    v6 = sub_22B7C2700;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22B7C2700()
{
  v61 = v0;
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = *(v0 + 128);
  v6 = *(v0 + 120);
  v7 = *(v0 + 104);
  v8 = *(v0 + 72);
  (*(*(v0 + 112) + 32))(v4, *(v0 + 136), v7);
  sub_22B7DB288();
  sub_22B7DB2A8();
  v2(v5, v4, v7);
  v2(v6, v3, v7);
  v9 = sub_22B7DB298();
  v10 = sub_22B7DBC88();
  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 120);
  v12 = *(v0 + 128);
  v15 = *(v0 + 104);
  v14 = *(v0 + 112);
  v17 = *(v0 + 64);
  v16 = *(v0 + 72);
  v18 = *(v0 + 56);
  if (v11)
  {
    v52 = v10;
    v19 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v60 = v54;
    *v19 = 136315394;
    log = v9;
    v20 = sub_22B7DA9C8();
    v57 = v18;
    v22 = v21;
    v23 = *(v14 + 8);
    v23(v12, v15);
    v24 = sub_22B4CFAAC(v20, v22, &v60);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = sub_22B7DA9C8();
    v27 = v26;
    v59 = v23;
    v23(v13, v15);
    v28 = sub_22B4CFAAC(v25, v27, &v60);

    *(v19 + 14) = v28;
    _os_log_impl(&dword_22B4CC000, log, v52, "Outgoing message was translated from %s to %s.", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v54, -1, -1);
    MEMORY[0x231898D60](v19, -1, -1);

    (*(v17 + 8))(v16, v57);
  }

  else
  {

    v29 = *(v14 + 8);
    v29(v13, v15);
    v59 = v29;
    v29(v12, v15);
    (*(v17 + 8))(v16, v18);
  }

  v30 = *(v0 + 248);
  v32 = *(v0 + 184);
  v31 = *(v0 + 192);
  v33 = *(v0 + 168);
  sub_22B7DA9C8();
  sub_22B7DA9C8();
  v34 = objc_allocWithZone(MEMORY[0x277D1ACB0]);
  v35 = sub_22B7DB678();

  v36 = sub_22B7DB678();

  v58 = [v34 initWithSourceLanguage:v35 translationLanguage:v36 translatedText:v30];

  v38 = *(v0 + 176);
  v37 = *(v0 + 184);
  v39 = *(v0 + 160);
  v40 = *(v0 + 168);
  v42 = *(v0 + 144);
  v41 = *(v0 + 152);
  v47 = *(v0 + 136);
  v48 = *(v0 + 128);
  v43 = *(v0 + 112);
  v44 = *(v0 + 104);
  v49 = *(v0 + 120);
  loga = *(v0 + 96);
  v53 = *(v0 + 88);
  v55 = *(v0 + 80);
  v56 = *(v0 + 72);

  v59(v40, v44);
  v59(v38, v44);
  v59(v37, v44);

  v45 = *(v0 + 8);

  return v45(v58);
}

uint64_t sub_22B7C2B3C()
{
  v20 = v0[29];
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  v13 = v0[17];
  v14 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v15 = v0[15];
  v16 = v0[12];
  v17 = v0[11];
  v18 = v0[10];
  v19 = v0[9];

  v10 = *(v8 + 8);
  v10(v3, v9);
  v10(v2, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_22B7C2C88()
{
  v20 = v0[32];
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  v13 = v0[17];
  v14 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v15 = v0[15];
  v16 = v0[12];
  v17 = v0[11];
  v18 = v0[10];
  v19 = v0[9];

  v10 = *(v8 + 8);
  v10(v3, v9);
  v10(v2, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_22B7C2DD4(uint64_t a1, uint64_t a2, char a3)
{
  v12 = *MEMORY[0x277D85DE8];
  *(v3 + 368) = a3;
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  v4 = sub_22B7DAA08();
  *(v3 + 128) = v4;
  v5 = *(v4 - 8);
  *(v3 + 136) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 144) = swift_task_alloc();
  v7 = sub_22B7DB2B8();
  *(v3 + 152) = v7;
  v8 = *(v7 - 8);
  *(v3 + 160) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B7C2F50, 0, 0);
}

uint64_t sub_22B7C2F50()
{
  v67 = v0;
  v66[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 200);
  v2 = *(v0 + 112);
  sub_22B7DB288();
  sub_22B7DB2A8();

  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 112);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v66[0] = v7;
    *v6 = 136315138;
    if (v5 >> 62)
    {
      if (*(v0 + 112) < 0)
      {
        v60 = *(v0 + 112);
      }

      v8 = sub_22B7DC1C8();
    }

    else
    {
      v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = MEMORY[0x277D84F90];
    v63 = v4;
    v61 = v7;
    buf = v6;
    if (v8)
    {
      v65 = MEMORY[0x277D84F90];
      sub_22B7AB8E4(0, v8 & ~(v8 >> 63), 0);
      if (v8 < 0)
      {
        __break(1u);
      }

      v10 = 0;
      v9 = v65;
      v64 = *(v0 + 112) + 32;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x231895C80](v10, *(v0 + 112));
        }

        else
        {
          v11 = *(v64 + 8 * v10);
        }

        v12 = v11;
        v13 = [v11 guid];
        if (v13)
        {
          v14 = v13;
          v15 = sub_22B7DB6A8();
          v17 = v16;
        }

        else
        {

          v15 = 0;
          v17 = 0;
        }

        v19 = *(v65 + 16);
        v18 = *(v65 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_22B7AB8E4((v18 > 1), v19 + 1, 1);
        }

        ++v10;
        *(v65 + 16) = v19 + 1;
        v20 = v65 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
      }

      while (v8 != v10);
    }

    v25 = *(v0 + 200);
    v27 = *(v0 + 152);
    v26 = *(v0 + 160);
    v28 = sub_22B6F0AD4(&qword_27D8CD7B0, &qword_22B7FBB10);
    v29 = MEMORY[0x2318952A0](v9, v28);
    v31 = v30;

    v32 = sub_22B4CFAAC(v29, v31, v66);

    *(buf + 4) = v32;
    _os_log_impl(&dword_22B4CC000, v3, v63, "Kicking off translation for message items: %s", buf, 0xCu);
    sub_22B4CFB78(v61);
    MEMORY[0x231898D60](v61, -1, -1);
    MEMORY[0x231898D60](buf, -1, -1);

    v24 = *(v26 + 8);
    v24(v25, v27);
  }

  else
  {
    v21 = *(v0 + 200);
    v23 = *(v0 + 152);
    v22 = *(v0 + 160);

    v24 = *(v22 + 8);
    v24(v21, v23);
  }

  *(v0 + 208) = v24;
  v33 = [*(v0 + 120) translationLanguageIdentifier];
  if (v33)
  {
    v34 = *(v0 + 120);
    v35 = v33;
    v36 = sub_22B7DB6A8();
    v38 = v37;

    *(v0 + 216) = v36;
    *(v0 + 224) = v38;
    v39 = [v34 userTranslationLanguageIdentifier];
    if (v39)
    {
      v40 = v39;
      v41 = sub_22B7DB6A8();
      v43 = v42;
    }

    else
    {
      v54 = *(v0 + 136);
      v53 = *(v0 + 144);
      v55 = *(v0 + 128);
      sub_22B7DAC78();
      sub_22B7DAC28();
      v41 = sub_22B7DA9C8();
      v43 = v56;
      (*(v54 + 8))(v53, v55);
    }

    *(v0 + 232) = v43;
    *(v0 + 240) = v41;
    v57 = *(MEMORY[0x277D858E8] + 4);
    v58 = swift_task_alloc();
    *(v0 + 248) = v58;
    *v58 = v0;
    v58[1] = sub_22B7C345C;
    v59 = *MEMORY[0x277D85DE8];
    v69 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200600]();
  }

  else
  {
    v45 = *(v0 + 192);
    v44 = *(v0 + 200);
    v47 = *(v0 + 176);
    v46 = *(v0 + 184);
    v48 = *(v0 + 168);
    v49 = *(v0 + 144);

    v50 = *(v0 + 8);
    v51 = *MEMORY[0x277D85DE8];

    return v50();
  }
}

uint64_t sub_22B7C345C()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 248);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B7C3584, 0, 0);
}

void sub_22B7C3584()
{
  v114 = *MEMORY[0x277D85DE8];
  v2 = v0[24];
  sub_22B7DB288();
  sub_22B7DB2A8();
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Translation observation complete. Starting translation... ", v5, 2u);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  v6 = v0[26];
  v7 = v0[24];
  v8 = v0[19];
  v9 = v0[20];
  v10 = v0[14];

  (v6)(v7, v8);
  if (v10 >> 62)
  {
    goto LABEL_101;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[32] = v11;
  if (!v11)
  {
LABEL_104:
    v96 = v0[28];
    v97 = v0[29];

    v99 = v0[24];
    v98 = v0[25];
    v100 = v0[22];
    v101 = v0[23];
    v102 = v0[21];
    v103 = v0[18];

    v104 = v0[1];
    v105 = *MEMORY[0x277D85DE8];

    v104();
    return;
  }

LABEL_5:
  v12 = 0;
  v0[33] = *MEMORY[0x277D19100];
  v113 = v0;
  while (1)
  {
    v15 = v0[14];
    if ((v15 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x231895C80](v12);
    }

    else
    {
      if (v12 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_57:
        v67 = 0;
        goto LABEL_60;
      }

      v16 = *(v15 + 8 * v12 + 32);
    }

    v17 = v16;
    v0[34] = v16;
    v0[35] = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if ([v16 associatedMessageType] || (objc_msgSend(v17, sel_isAudioMessage) & 1) != 0 || (objc_msgSend(v17, sel_isSystemMessage) & 1) != 0 || (objc_msgSend(v17, sel_isLocatingMessage) & 1) != 0 || (objc_msgSend(v17, sel_isSticker) & 1) != 0)
    {
      goto LABEL_23;
    }

    v18 = [v17 balloonBundleID];
    if (v18)
    {
      v19 = v18;
      v8 = sub_22B7DB6A8();
      v6 = v20;

      v21 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v21 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {
        goto LABEL_23;
      }
    }

    if ([v17 isTypingMessage])
    {
LABEL_23:
      v22 = v0[21];
      sub_22B7DB288();
      sub_22B7DB2A8();
      v23 = v17;
      v24 = sub_22B7DB298();
      v6 = sub_22B7DBCB8();
      if (os_log_type_enabled(v24, v6))
      {
        v8 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v0[12] = v25;
        *v8 = 136315138;
        v26 = [v23 guid];
        if (!v26)
        {
          goto LABEL_108;
        }

        v27 = v26;
        v28 = v0[20];
        v109 = v0[21];
        loga = v0[26];
        v107 = v0[19];

        v1 = (v28 + 8);
        v29 = sub_22B7DB6A8();
        v31 = v30;

        v32 = sub_22B4CFAAC(v29, v31, v113 + 12);

        *(v8 + 4) = v32;
        v0 = v113;
        _os_log_impl(&dword_22B4CC000, v24, v6, "Message item %s should not be translated.", v8, 0xCu);
        sub_22B4CFB78(v25);
        MEMORY[0x231898D60](v25, -1, -1);
        MEMORY[0x231898D60](v8, -1, -1);

        (loga)(v109, v107);
      }

      else
      {
        v6 = v0[26];
        v13 = v0[20];
        v14 = v0[21];
        v8 = v0[19];

        (v6)(v14, v8);
      }
    }

    else
    {
      v33 = [v17 messageParts];
      if (v33)
      {
        v23 = v33;
        sub_22B4D01A0(0, &qword_28141F130, 0x277D1AA80);
        v34 = sub_22B7DB918();
        v0[36] = v34;

        if (v34 >> 62)
        {
          v65 = sub_22B7DC1C8();
          if (v65 < 0)
          {
            __break(1u);
LABEL_108:

            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
          }

          v0 = v113;
          v113[37] = v65;
          if (v65)
          {
LABEL_29:
            v12 = 0;
            do
            {
              v36 = v0[36];
              if ((v36 & 0xC000000000000001) != 0)
              {
                v37 = MEMORY[0x231895C80](v12);
              }

              else
              {
                if (v12 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
LABEL_99:
                  __break(1u);
LABEL_100:
                  __break(1u);
LABEL_101:
                  if (v0[14] < 0)
                  {
                    v94 = v0[14];
                  }

                  v95 = sub_22B7DC1C8();
                  v0[32] = v95;
                  if (!v95)
                  {
                    goto LABEL_104;
                  }

                  goto LABEL_5;
                }

                v37 = *(v36 + 8 * v12 + 32);
              }

              v1 = v37;
              v8 = v12 + 1;
              v0[38] = v37;
              v0[39] = v12 + 1;
              if (__OFADD__(v12, 1))
              {
                goto LABEL_99;
              }

              if (v12 >= v0[37])
              {
                goto LABEL_100;
              }

              v38 = v0[33];
              v39 = [v37 messagePartBody];
              v40 = [v39 length];

              v0[10] = 0;
              v0[11] = v40;
              v6 = [v1 messagePartBody];
              v41 = [v6 attribute:v38 atIndex:0 effectiveRange:v0 + 10];

              if (v41)
              {
                sub_22B7DC118();
                swift_unknownObjectRelease();
              }

              else
              {
                *(v0 + 3) = 0u;
                *(v0 + 4) = 0u;
              }

              v42 = *(v0 + 4);
              *(v0 + 1) = *(v0 + 3);
              *(v0 + 2) = v42;
              v43 = v0[5];
              sub_22B4D0D64((v0 + 2), &unk_27D8CCDC0, &qword_22B7F9580);
              if (v43)
              {
                goto LABEL_30;
              }

              sub_22B7DAC78();
              sub_22B7DAC58();
              v44 = [v1 messagePartBody];
              v45 = [v44 string];

              sub_22B7DB6A8();
              v6 = sub_22B7DAC18();

              if (v6)
              {
LABEL_30:
              }

              else
              {
                if ((IMMessagePartDescriptor.shouldSkipTranslationDueToExistingTranslation(messageItem:chat:)(v0[34], v0[15]) & 1) == 0)
                {
                  goto LABEL_53;
                }

                v46 = v0[34];
                v47 = v0[23];
                sub_22B7DB288();
                sub_22B7DB2A8();
                v48 = v46;
                v49 = sub_22B7DB298();
                v50 = sub_22B7DBC88();
                v51 = os_log_type_enabled(v49, v50);
                v52 = v0[34];
                if (v51)
                {
                  log = v49;
                  v53 = swift_slowAlloc();
                  v54 = swift_slowAlloc();
                  v0[13] = v54;
                  *v53 = 136315138;
                  v55 = [v52 guid];
                  v56 = v0[34];
                  if (!v55)
                  {
                    goto LABEL_113;
                  }

                  v57 = v55;
                  v108 = v0[23];
                  v110 = v0[26];
                  v58 = v0[20];
                  v106 = v0[19];

                  v59 = sub_22B7DB6A8();
                  v6 = v60;

                  v61 = sub_22B4CFAAC(v59, v6, v113 + 13);

                  *(v53 + 4) = v61;
                  _os_log_impl(&dword_22B4CC000, log, v50, "Skip translation for message item %s, because translation already exists and configurations match", v53, 0xCu);
                  sub_22B4CFB78(v54);
                  MEMORY[0x231898D60](v54, -1, -1);
                  MEMORY[0x231898D60](v53, -1, -1);

                  v110(v108, v106);
                  v0 = v113;
                }

                else
                {
                  v62 = v0[26];
                  v6 = v0[23];
                  v63 = v113[20];
                  v64 = v113[19];

                  v0 = v113;
                  v62(v6, v64);
                }
              }

              ++v12;
            }

            while (v8 != v0[37]);
          }
        }

        else
        {
          v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v0[37] = v35;
          if (v35)
          {
            goto LABEL_29;
          }
        }

        v66 = v0[36];
        v17 = v0[34];
      }
    }

    v12 = v0[35];
    if (v12 == v0[32])
    {
      goto LABEL_104;
    }
  }

  __break(1u);
LABEL_53:
  v6 = v0[36];
  if (v12 < 1)
  {
    goto LABEL_57;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v67 = MEMORY[0x231895C80](v12 - 1, v0[36]);
    v6 = v0[36];
  }

  else
  {
    if (v12 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_110;
    }

    v67 = *(v6 + 8 * v12 + 24);
  }

LABEL_60:
  v0[40] = v67;
  if (v6 >> 62)
  {
    v68 = sub_22B7DC1C8();
  }

  else
  {
    v68 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = (v68 - 1);
  if (__OFSUB__(v68, 1))
  {
    goto LABEL_109;
  }

  if (v12 >= v56)
  {
    v71 = 0;
    goto LABEL_72;
  }

  v69 = v0[36];
  if ((v69 & 0xC000000000000001) != 0)
  {
    v70 = MEMORY[0x231895C80](v8);
    goto LABEL_71;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:

    __break(1u);
    return;
  }

  v56 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 >= v56)
  {
    goto LABEL_112;
  }

  v70 = *(v69 + 8 * v8 + 32);
LABEL_71:
  v71 = v70;
LABEL_72:
  v0[41] = v71;
  if (v67)
  {
    v72 = v67;
    if (IMMessagePartDescriptor.hasAttachment.getter())
    {

      v73 = 0;
    }

    else
    {
      sub_22B7DAC58();
      v75 = [v72 messagePartBody];
      v76 = [v75 string];

      sub_22B7DB6A8();
      LOBYTE(v75) = sub_22B7DAC18();

      v0 = v113;

      v73 = v75 ^ 1;
    }

    v74 = v73 & 1;
  }

  else
  {
    v74 = 2;
  }

  if (v71)
  {
    v77 = v71;
    if (IMMessagePartDescriptor.hasAttachment.getter())
    {

      v78 = 0;
    }

    else
    {
      sub_22B7DAC58();
      v80 = [v77 messagePartBody];
      v81 = [v80 string];

      sub_22B7DB6A8();
      LOBYTE(v80) = sub_22B7DAC18();

      v78 = v80 ^ 1;
    }

    v79 = v78 & 1;
  }

  else
  {
    v79 = 2;
  }

  if (v74 == 2 || (v74 & 1) == 0)
  {
    if (v79 != 2 && (v79 & 1) != 0)
    {
      v82 = [v1 messagePartBody];
      v83 = 1;
      goto LABEL_94;
    }

    v84 = [v1 messagePartBody];
  }

  else
  {
    if (v79 == 2 || (v79 & 1) == 0)
    {
      v82 = [v1 messagePartBody];
      v83 = 0;
    }

    else
    {
      v82 = [v1 messagePartBody];
      v83 = 2;
    }

LABEL_94:
    sub_22B7BF744(v83);
    v84 = v85;
  }

  v0[42] = v84;
  v86 = v84;
  v87 = swift_task_alloc();
  v0[43] = v87;
  *v87 = v0;
  v87[1] = sub_22B7C421C;
  v89 = v0[29];
  v88 = v0[30];
  v90 = v0[27];
  v91 = v0[28];
  v92 = *(v0 + 368);
  v93 = *MEMORY[0x277D85DE8];

  sub_22B7C1BFC(v86, v90, v91, v88, v89, v92);
}

uint64_t sub_22B7C421C(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 344);
  v10 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v6 = sub_22B7C4F54;
  }

  else
  {

    *(v4 + 360) = a1;
    v6 = sub_22B7C4374;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22B7C4374()
{
  v118 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 360);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 320);
  v5 = *(v0 + 304);
  [*(v0 + 272) addTranslation:v1 forMessagePart:{objc_msgSend(v5, sel_messagePartIndex)}];

  v6 = *(v0 + 312);
  if (v6 == *(v0 + 296))
  {
LABEL_21:
    while (1)
    {
      v41 = *(v0 + 288);
      v42 = *(v0 + 272);

      do
      {

        while (1)
        {
          v6 = *(v0 + 280);
          if (v6 == *(v0 + 256))
          {
            goto LABEL_50;
          }

          v47 = *(v0 + 112);
          if ((v47 & 0xC000000000000001) != 0)
          {
            v48 = MEMORY[0x231895C80](*(v0 + 280));
          }

          else
          {
            if (v6 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_99;
            }

            v48 = *(v47 + 8 * v6 + 32);
          }

          v42 = v48;
          *(v0 + 272) = v48;
          *(v0 + 280) = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
            goto LABEL_98;
          }

          if (![v48 associatedMessageType] && (objc_msgSend(v42, sel_isAudioMessage) & 1) == 0 && (objc_msgSend(v42, sel_isSystemMessage) & 1) == 0 && (objc_msgSend(v42, sel_isLocatingMessage) & 1) == 0 && (objc_msgSend(v42, sel_isSticker) & 1) == 0)
          {
            v49 = [v42 balloonBundleID];
            if (!v49)
            {
              goto LABEL_39;
            }

            v50 = v49;
            v51 = sub_22B7DB6A8();
            v53 = v52;

            v54 = HIBYTE(v53) & 0xF;
            if ((v53 & 0x2000000000000000) == 0)
            {
              v54 = v51 & 0xFFFFFFFFFFFFLL;
            }

            if (!v54)
            {
LABEL_39:
              if (([v42 isTypingMessage] & 1) == 0)
              {
                break;
              }
            }
          }

          v55 = *(v0 + 168);
          sub_22B7DB288();
          sub_22B7DB2A8();
          v6 = v42;
          v56 = sub_22B7DB298();
          v57 = sub_22B7DBCB8();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            *(v0 + 96) = v59;
            *v58 = 136315138;
            v60 = [v6 guid];
            if (!v60)
            {
              goto LABEL_101;
            }

            v61 = v60;
            v62 = *(v0 + 160);
            v115 = *(v0 + 168);
            loga = *(v0 + 208);
            v113 = *(v0 + 152);

            v63 = sub_22B7DB6A8();
            v65 = v64;

            v66 = sub_22B4CFAAC(v63, v65, (v0 + 96));

            *(v58 + 4) = v66;
            _os_log_impl(&dword_22B4CC000, v56, v57, "Message item %s should not be translated.", v58, 0xCu);
            sub_22B4CFB78(v59);
            MEMORY[0x231898D60](v59, -1, -1);
            MEMORY[0x231898D60](v58, -1, -1);

            (loga)(v115, v113);
          }

          else
          {
            v43 = *(v0 + 208);
            v45 = *(v0 + 160);
            v44 = *(v0 + 168);
            v46 = *(v0 + 152);

            v43(v44, v46);
          }
        }

        v67 = [v42 messageParts];
      }

      while (!v67);
      v68 = v67;
      sub_22B4D01A0(0, &qword_28141F130, 0x277D1AA80);
      v69 = sub_22B7DB918();
      *(v0 + 288) = v69;

      if (v69 >> 62)
      {
        break;
      }

      v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_46:
      v6 = 0;
      *(v0 + 296) = v70;
      if (v70)
      {
        goto LABEL_5;
      }
    }

    v70 = sub_22B7DC1C8();
    if ((v70 & 0x8000000000000000) == 0)
    {
      goto LABEL_46;
    }

    __break(1u);
LABEL_50:
    v71 = *(v0 + 224);
    v72 = *(v0 + 232);

    v74 = *(v0 + 192);
    v73 = *(v0 + 200);
    v76 = *(v0 + 176);
    v75 = *(v0 + 184);
    v77 = *(v0 + 168);
    v78 = *(v0 + 144);

    v79 = *(v0 + 8);
    v80 = *MEMORY[0x277D85DE8];

    return v79();
  }

  while (1)
  {
LABEL_5:
    v7 = *(v0 + 288);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x231895C80](v6);
    }

    else
    {
      if (v6 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_97;
      }

      v8 = *(v7 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    *(v0 + 304) = v8;
    *(v0 + 312) = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_96;
    }

    if (v6 >= *(v0 + 296))
    {
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v11 = *(v0 + 264);
    v12 = [v8 messagePartBody];
    v13 = [v12 length];

    *(v0 + 80) = 0;
    *(v0 + 88) = v13;
    v14 = [v9 messagePartBody];
    v15 = [v14 attribute:v11 atIndex:0 effectiveRange:v0 + 80];

    if (v15)
    {
      sub_22B7DC118();
      swift_unknownObjectRelease();
    }

    else
    {
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
    }

    v16 = *(v0 + 64);
    *(v0 + 16) = *(v0 + 48);
    *(v0 + 32) = v16;
    v17 = *(v0 + 40);
    sub_22B4D0D64(v0 + 16, &unk_27D8CCDC0, &qword_22B7F9580);
    if (v17)
    {
      goto LABEL_3;
    }

    sub_22B7DAC78();
    sub_22B7DAC58();
    v18 = [v9 messagePartBody];
    v19 = [v18 string];

    sub_22B7DB6A8();
    LOBYTE(v18) = sub_22B7DAC18();

    if (v18)
    {
LABEL_3:

      goto LABEL_4;
    }

    if ((IMMessagePartDescriptor.shouldSkipTranslationDueToExistingTranslation(messageItem:chat:)(*(v0 + 272), *(v0 + 120)) & 1) == 0)
    {
      break;
    }

    v20 = *(v0 + 272);
    v21 = *(v0 + 184);
    sub_22B7DB288();
    sub_22B7DB2A8();
    v22 = v20;
    v23 = sub_22B7DB298();
    v24 = sub_22B7DBC88();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 272);
    if (v25)
    {
      log = v23;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *(v0 + 104) = v28;
      *v27 = 136315138;
      v29 = [v26 guid];
      v30 = *(v0 + 272);
      if (!v29)
      {
        goto LABEL_105;
      }

      v31 = v29;
      v112 = *(v0 + 184);
      v114 = *(v0 + 208);
      v32 = *(v0 + 160);
      v111 = *(v0 + 152);

      v110 = v32 + 8;
      v33 = sub_22B7DB6A8();
      v35 = v34;

      v36 = sub_22B4CFAAC(v33, v35, (v0 + 104));

      *(v27 + 4) = v36;
      _os_log_impl(&dword_22B4CC000, log, v24, "Skip translation for message item %s, because translation already exists and configurations match", v27, 0xCu);
      sub_22B4CFB78(v28);
      MEMORY[0x231898D60](v28, -1, -1);
      MEMORY[0x231898D60](v27, -1, -1);

      v114(v112, v111);
    }

    else
    {
      v37 = *(v0 + 208);
      v38 = *(v0 + 184);
      v39 = *(v0 + 152);
      v40 = *(v0 + 160);

      v37(v38, v39);
    }

LABEL_4:
    ++v6;
    if (v10 == *(v0 + 296))
    {
      goto LABEL_21;
    }
  }

  v82 = *(v0 + 288);
  if (v6 < 1)
  {
    v83 = 0;
    goto LABEL_59;
  }

  if ((v82 & 0xC000000000000001) != 0)
  {
    v83 = MEMORY[0x231895C80](v6 - 1, *(v0 + 288));
    v82 = *(v0 + 288);
    goto LABEL_59;
  }

  v30 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6 > v30)
  {
    goto LABEL_102;
  }

  v83 = *(v82 + 8 * v6 + 24);
LABEL_59:
  *(v0 + 320) = v83;
  if (v82 >> 62)
  {
    v84 = sub_22B7DC1C8();
  }

  else
  {
    v84 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = (v84 - 1);
  if (__OFSUB__(v84, 1))
  {
LABEL_100:
    __break(1u);
LABEL_101:

    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  if (v6 >= v30)
  {
    v87 = 0;
    *(v0 + 328) = 0;
    if (!v83)
    {
      goto LABEL_80;
    }

    goto LABEL_67;
  }

  v85 = *(v0 + 288);
  if ((v85 & 0xC000000000000001) != 0)
  {
    v86 = MEMORY[0x231895C80](v6 + 1);
    goto LABEL_79;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_103;
  }

  v30 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10 >= v30)
  {
LABEL_104:
    __break(1u);
LABEL_105:

    __break(1u);
  }

  v86 = *(v85 + 8 * v10 + 32);
LABEL_79:
  v87 = v86;
  *(v0 + 328) = v86;
  if (!v83)
  {
LABEL_80:
    v92 = 2;
    if (!v87)
    {
      goto LABEL_81;
    }

LABEL_71:
    v93 = v87;
    if (IMMessagePartDescriptor.hasAttachment.getter())
    {

      v94 = 0;
    }

    else
    {
      sub_22B7DAC58();
      v95 = [v93 messagePartBody];
      v96 = [v95 string];

      sub_22B7DB6A8();
      LOBYTE(v95) = sub_22B7DAC18();

      v94 = v95 ^ 1;
    }

    v97 = v94 & 1;
    if (v92 == 2)
    {
      goto LABEL_86;
    }

LABEL_82:
    if ((v92 & 1) == 0)
    {
      goto LABEL_86;
    }

    if (v97 == 2 || (v97 & 1) == 0)
    {
      v98 = [v9 messagePartBody];
      v99 = 0;
    }

    else
    {
      v98 = [v9 messagePartBody];
      v99 = 2;
    }

LABEL_91:
    sub_22B7BF744(v99);
    v100 = v101;

    goto LABEL_92;
  }

LABEL_67:
  v88 = v83;
  if (IMMessagePartDescriptor.hasAttachment.getter())
  {

    v89 = 0;
  }

  else
  {
    sub_22B7DAC58();
    v90 = [v88 messagePartBody];
    v91 = [v90 string];

    sub_22B7DB6A8();
    LOBYTE(v90) = sub_22B7DAC18();

    v89 = v90 ^ 1;
  }

  v92 = v89 & 1;
  if (v87)
  {
    goto LABEL_71;
  }

LABEL_81:
  v97 = 2;
  if (v92 != 2)
  {
    goto LABEL_82;
  }

LABEL_86:
  if (v97 != 2 && (v97 & 1) != 0)
  {
    v98 = [v9 messagePartBody];
    v99 = 1;
    goto LABEL_91;
  }

  v100 = [v9 messagePartBody];
LABEL_92:
  *(v0 + 336) = v100;
  v102 = v100;
  v103 = swift_task_alloc();
  *(v0 + 344) = v103;
  *v103 = v0;
  v103[1] = sub_22B7C421C;
  v105 = *(v0 + 232);
  v104 = *(v0 + 240);
  v106 = *(v0 + 216);
  v107 = *(v0 + 224);
  v108 = *(v0 + 368);
  v109 = *MEMORY[0x277D85DE8];

  return sub_22B7C1BFC(v102, v106, v107, v104, v105, v108);
}

uint64_t sub_22B7C4F54()
{
  v132 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 352);
  v2 = *(v0 + 176);

  sub_22B7DB288();
  sub_22B7DB2A8();
  v3 = v1;
  v4 = sub_22B7DB298();
  v5 = sub_22B7DBC78();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 352);
  v8 = *(v0 + 328);
  v9 = *(v0 + 336);
  v10 = *(v0 + 320);
  v11 = *(v0 + 304);
  if (v6)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_22B4CC000, v4, v5, "Message was not translated: %@", v12, 0xCu);
    sub_22B4D0D64(v13, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v13, -1, -1);
    MEMORY[0x231898D60](v12, -1, -1);

    v4 = v10;
  }

  else
  {
  }

  v16 = *(v0 + 208);
  v17 = *(v0 + 176);
  v18 = *(v0 + 152);
  v19 = *(v0 + 160);

  v16(v17, v18);
  v20 = *(v0 + 312);
  if (v20 == *(v0 + 296))
  {
LABEL_24:
    while (1)
    {
      v55 = *(v0 + 288);
      v56 = *(v0 + 272);

      do
      {

        while (1)
        {
          v20 = *(v0 + 280);
          if (v20 == *(v0 + 256))
          {
            goto LABEL_53;
          }

          v61 = *(v0 + 112);
          if ((v61 & 0xC000000000000001) != 0)
          {
            v62 = MEMORY[0x231895C80](*(v0 + 280));
          }

          else
          {
            if (v20 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_102;
            }

            v62 = *(v61 + 8 * v20 + 32);
          }

          v56 = v62;
          *(v0 + 272) = v62;
          *(v0 + 280) = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
            goto LABEL_101;
          }

          if (![v62 associatedMessageType] && (objc_msgSend(v56, sel_isAudioMessage) & 1) == 0 && (objc_msgSend(v56, sel_isSystemMessage) & 1) == 0 && (objc_msgSend(v56, sel_isLocatingMessage) & 1) == 0 && (objc_msgSend(v56, sel_isSticker) & 1) == 0)
          {
            v63 = [v56 balloonBundleID];
            if (!v63)
            {
              goto LABEL_42;
            }

            v64 = v63;
            v65 = sub_22B7DB6A8();
            v67 = v66;

            v68 = HIBYTE(v67) & 0xF;
            if ((v67 & 0x2000000000000000) == 0)
            {
              v68 = v65 & 0xFFFFFFFFFFFFLL;
            }

            if (!v68)
            {
LABEL_42:
              if (([v56 isTypingMessage] & 1) == 0)
              {
                break;
              }
            }
          }

          v69 = *(v0 + 168);
          sub_22B7DB288();
          sub_22B7DB2A8();
          v20 = v56;
          v70 = sub_22B7DB298();
          v71 = sub_22B7DBCB8();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            *(v0 + 96) = v73;
            *v72 = 136315138;
            v74 = [v20 guid];
            if (!v74)
            {
              goto LABEL_104;
            }

            v75 = v74;
            v76 = *(v0 + 160);
            v129 = *(v0 + 168);
            loga = *(v0 + 208);
            v127 = *(v0 + 152);

            v77 = sub_22B7DB6A8();
            v79 = v78;

            v80 = sub_22B4CFAAC(v77, v79, (v0 + 96));

            *(v72 + 4) = v80;
            _os_log_impl(&dword_22B4CC000, v70, v71, "Message item %s should not be translated.", v72, 0xCu);
            sub_22B4CFB78(v73);
            MEMORY[0x231898D60](v73, -1, -1);
            MEMORY[0x231898D60](v72, -1, -1);

            (loga)(v129, v127);
          }

          else
          {
            v57 = *(v0 + 208);
            v59 = *(v0 + 160);
            v58 = *(v0 + 168);
            v60 = *(v0 + 152);

            v57(v58, v60);
          }
        }

        v81 = [v56 messageParts];
      }

      while (!v81);
      v82 = v81;
      sub_22B4D01A0(0, &qword_28141F130, 0x277D1AA80);
      v83 = sub_22B7DB918();
      *(v0 + 288) = v83;

      if (v83 >> 62)
      {
        break;
      }

      v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_49:
      v20 = 0;
      *(v0 + 296) = v84;
      if (v84)
      {
        goto LABEL_8;
      }
    }

    v84 = sub_22B7DC1C8();
    if ((v84 & 0x8000000000000000) == 0)
    {
      goto LABEL_49;
    }

    __break(1u);
LABEL_53:
    v85 = *(v0 + 224);
    v86 = *(v0 + 232);

    v88 = *(v0 + 192);
    v87 = *(v0 + 200);
    v90 = *(v0 + 176);
    v89 = *(v0 + 184);
    v91 = *(v0 + 168);
    v92 = *(v0 + 144);

    v93 = *(v0 + 8);
    v94 = *MEMORY[0x277D85DE8];

    return v93();
  }

  while (1)
  {
LABEL_8:
    v21 = *(v0 + 288);
    if ((v21 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x231895C80](v20);
    }

    else
    {
      if (v20 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_100;
      }

      v22 = *(v21 + 8 * v20 + 32);
    }

    v23 = v22;
    v24 = v20 + 1;
    *(v0 + 304) = v22;
    *(v0 + 312) = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_99;
    }

    if (v20 >= *(v0 + 296))
    {
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v25 = *(v0 + 264);
    v26 = [v22 messagePartBody];
    v27 = [v26 length];

    *(v0 + 80) = 0;
    *(v0 + 88) = v27;
    v28 = [v23 messagePartBody];
    v29 = [v28 attribute:v25 atIndex:0 effectiveRange:v0 + 80];

    if (v29)
    {
      sub_22B7DC118();
      swift_unknownObjectRelease();
    }

    else
    {
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
    }

    v30 = *(v0 + 64);
    *(v0 + 16) = *(v0 + 48);
    *(v0 + 32) = v30;
    v31 = *(v0 + 40);
    sub_22B4D0D64(v0 + 16, &unk_27D8CCDC0, &qword_22B7F9580);
    if (v31)
    {
      goto LABEL_6;
    }

    sub_22B7DAC78();
    sub_22B7DAC58();
    v32 = [v23 messagePartBody];
    v33 = [v32 string];

    sub_22B7DB6A8();
    LOBYTE(v32) = sub_22B7DAC18();

    if (v32)
    {
LABEL_6:

      goto LABEL_7;
    }

    if ((IMMessagePartDescriptor.shouldSkipTranslationDueToExistingTranslation(messageItem:chat:)(*(v0 + 272), *(v0 + 120)) & 1) == 0)
    {
      break;
    }

    v34 = *(v0 + 272);
    v35 = *(v0 + 184);
    sub_22B7DB288();
    sub_22B7DB2A8();
    v36 = v34;
    v37 = sub_22B7DB298();
    v38 = sub_22B7DBC88();
    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 272);
    if (v39)
    {
      log = v37;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *(v0 + 104) = v42;
      *v41 = 136315138;
      v43 = [v40 guid];
      v44 = *(v0 + 272);
      if (!v43)
      {
        goto LABEL_108;
      }

      v45 = v43;
      v126 = *(v0 + 184);
      v128 = *(v0 + 208);
      v46 = *(v0 + 160);
      v125 = *(v0 + 152);

      v124 = v46 + 8;
      v47 = sub_22B7DB6A8();
      v49 = v48;

      v50 = sub_22B4CFAAC(v47, v49, (v0 + 104));

      *(v41 + 4) = v50;
      _os_log_impl(&dword_22B4CC000, log, v38, "Skip translation for message item %s, because translation already exists and configurations match", v41, 0xCu);
      sub_22B4CFB78(v42);
      MEMORY[0x231898D60](v42, -1, -1);
      MEMORY[0x231898D60](v41, -1, -1);

      v128(v126, v125);
    }

    else
    {
      v51 = *(v0 + 208);
      v52 = *(v0 + 184);
      v53 = *(v0 + 152);
      v54 = *(v0 + 160);

      v51(v52, v53);
    }

LABEL_7:
    ++v20;
    if (v24 == *(v0 + 296))
    {
      goto LABEL_24;
    }
  }

  v96 = *(v0 + 288);
  if (v20 < 1)
  {
    v97 = 0;
    goto LABEL_62;
  }

  if ((v96 & 0xC000000000000001) != 0)
  {
    v97 = MEMORY[0x231895C80](v20 - 1, *(v0 + 288));
    v96 = *(v0 + 288);
    goto LABEL_62;
  }

  v44 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v20 > v44)
  {
    goto LABEL_105;
  }

  v97 = *(v96 + 8 * v20 + 24);
LABEL_62:
  *(v0 + 320) = v97;
  if (v96 >> 62)
  {
    v98 = sub_22B7DC1C8();
  }

  else
  {
    v98 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = (v98 - 1);
  if (__OFSUB__(v98, 1))
  {
LABEL_103:
    __break(1u);
LABEL_104:

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (v20 >= v44)
  {
    v101 = 0;
    *(v0 + 328) = 0;
    if (!v97)
    {
      goto LABEL_83;
    }

    goto LABEL_70;
  }

  v99 = *(v0 + 288);
  if ((v99 & 0xC000000000000001) != 0)
  {
    v100 = MEMORY[0x231895C80](v20 + 1);
    goto LABEL_82;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
    goto LABEL_106;
  }

  v44 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v24 >= v44)
  {
LABEL_107:
    __break(1u);
LABEL_108:

    __break(1u);
  }

  v100 = *(v99 + 8 * v24 + 32);
LABEL_82:
  v101 = v100;
  *(v0 + 328) = v100;
  if (!v97)
  {
LABEL_83:
    v106 = 2;
    if (!v101)
    {
      goto LABEL_84;
    }

LABEL_74:
    v107 = v101;
    if (IMMessagePartDescriptor.hasAttachment.getter())
    {

      v108 = 0;
    }

    else
    {
      sub_22B7DAC58();
      v109 = [v107 messagePartBody];
      v110 = [v109 string];

      sub_22B7DB6A8();
      LOBYTE(v109) = sub_22B7DAC18();

      v108 = v109 ^ 1;
    }

    v111 = v108 & 1;
    if (v106 == 2)
    {
      goto LABEL_89;
    }

LABEL_85:
    if ((v106 & 1) == 0)
    {
      goto LABEL_89;
    }

    if (v111 == 2 || (v111 & 1) == 0)
    {
      v112 = [v23 messagePartBody];
      v113 = 0;
    }

    else
    {
      v112 = [v23 messagePartBody];
      v113 = 2;
    }

LABEL_94:
    sub_22B7BF744(v113);
    v114 = v115;

    goto LABEL_95;
  }

LABEL_70:
  v102 = v97;
  if (IMMessagePartDescriptor.hasAttachment.getter())
  {

    v103 = 0;
  }

  else
  {
    sub_22B7DAC58();
    v104 = [v102 messagePartBody];
    v105 = [v104 string];

    sub_22B7DB6A8();
    LOBYTE(v104) = sub_22B7DAC18();

    v103 = v104 ^ 1;
  }

  v106 = v103 & 1;
  if (v101)
  {
    goto LABEL_74;
  }

LABEL_84:
  v111 = 2;
  if (v106 != 2)
  {
    goto LABEL_85;
  }

LABEL_89:
  if (v111 != 2 && (v111 & 1) != 0)
  {
    v112 = [v23 messagePartBody];
    v113 = 1;
    goto LABEL_94;
  }

  v114 = [v23 messagePartBody];
LABEL_95:
  *(v0 + 336) = v114;
  v116 = v114;
  v117 = swift_task_alloc();
  *(v0 + 344) = v117;
  *v117 = v0;
  v117[1] = sub_22B7C421C;
  v119 = *(v0 + 232);
  v118 = *(v0 + 240);
  v120 = *(v0 + 216);
  v121 = *(v0 + 224);
  v122 = *(v0 + 368);
  v123 = *MEMORY[0x277D85DE8];

  return sub_22B7C1BFC(v116, v120, v121, v118, v119, v122);
}

unint64_t sub_22B7C5C4C()
{
  result = qword_27D8CFB58;
  if (!qword_27D8CFB58)
  {
    sub_22B6FB8C4(&qword_27D8CFB50, &qword_22B7FE2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CFB58);
  }

  return result;
}

uint64_t sub_22B7C5CB0()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B6F12E8;

  return sub_22B7BFDE8();
}

uint64_t sub_22B7C5D5C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B6F12E8;

  return sub_22B7C0270();
}

uint64_t sub_22B7C5E08(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B6F0D94;

  return sub_22B782EC0(a1, v5);
}

uint64_t sub_22B7C5EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22B6F0AD4(&qword_27D8CFB68, &qword_22B7FE2E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  v15 = sub_22B7DBA58();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a1, v6);
  v16 = sub_22B7C6A80();
  v17 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a2;
  *(v18 + 3) = v16;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  (*(v7 + 32))(&v18[v17], v10, v6);
  swift_retain_n();
  v19 = sub_22B77E3D4(0, 0, v14, &unk_22B7FE2F0, v18);
  v20 = *(a2 + 208);
  *(a2 + 208) = v19;
}

uint64_t sub_22B7C60D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  return MEMORY[0x2822009F8](sub_22B7C60F8, a4, 0);
}

uint64_t sub_22B7C60F8()
{
  v1 = *(v0[6] + 200);
  v0[9] = v1;
  if (v1)
  {
    v2 = *(MEMORY[0x277D857D0] + 4);

    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_22B7C6350;
    v4 = MEMORY[0x277D84A98];
    v5 = MEMORY[0x277D84AC0];

    return MEMORY[0x282200440](v0 + 2, v1, &_s11BatchResultVN, v4, v5);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[11] = Strong;
    if (Strong)
    {
      v7 = *(v0[6] + 184);
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 72);
      v17 = (v9 + *v9);
      v10 = v9[1];
      v11 = swift_task_alloc();
      v0[12] = v11;
      *v11 = v0;
      v11[1] = sub_22B7C6618;
      v12 = v0[6];

      return v17(v12, ObjectType, v7);
    }

    else
    {
      v13 = swift_task_alloc();
      v0[13] = v13;
      *v13 = v0;
      v13[1] = sub_22B7C678C;
      v15 = v0[6];
      v14 = v0[7];

      return sub_22B726D90(v14);
    }
  }
}

uint64_t sub_22B7C6350()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B7C6460, v2, 0);
}

uint64_t sub_22B7C6460()
{
  v1 = v0[9];

  v2 = v0[6];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v4 = *(v0[6] + 184);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 72);
    v14 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[12] = v8;
    *v8 = v0;
    v8[1] = sub_22B7C6618;
    v9 = v0[6];

    return v14(v9, ObjectType, v4);
  }

  else
  {
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = sub_22B7C678C;
    v13 = v0[6];
    v12 = v0[7];

    return sub_22B726D90(v12);
  }
}

uint64_t sub_22B7C6618()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *v0;

  swift_unknownObjectRelease();
  v5 = swift_task_alloc();
  v1[13] = v5;
  *v5 = v4;
  v5[1] = sub_22B7C678C;
  v6 = v1[7];
  v7 = v1[6];

  return sub_22B726D90(v6);
}

uint64_t sub_22B7C678C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 104);
  v7 = *v2;
  v5[14] = a1;

  v8 = swift_task_alloc();
  v5[15] = v8;
  *v8 = v7;
  v8[1] = sub_22B7C68E8;
  v9 = v5[6];

  return sub_22B7266A4(a1, a2);
}

uint64_t sub_22B7C68E8()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B7C69F8, v2, 0);
}

uint64_t sub_22B7C69F8()
{
  v1 = v0[8];
  v0[5] = v0[14];
  sub_22B6F0AD4(&qword_27D8CFB68, &qword_22B7FE2E0);
  sub_22B7DB9E8();
  v2 = v0[1];

  return v2();
}

unint64_t sub_22B7C6A80()
{
  result = qword_27D8CEC80;
  if (!qword_27D8CEC80)
  {
    type metadata accessor for IMDPersistentTaskExecutor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CEC80);
  }

  return result;
}

uint64_t sub_22B7C6AD8(uint64_t a1)
{
  v4 = *(sub_22B6F0AD4(&qword_27D8CFB68, &qword_22B7FE2E0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22B6F0D94;

  return sub_22B7C60D4(a1, v6, v7, v8, v9, v1 + v5);
}

id sub_22B7C6BE8()
{
  v1 = *v0;
  v2 = sub_22B7DB678();
  v3 = [v1 taskRequestForIdentifier_];

  return v3;
}

id sub_22B7C6C88()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = sub_22B7DB678();
  v6[0] = 0;
  v2 = [v0 cancelTaskRequestWithIdentifier:v1 error:v6];

  if (v2)
  {
    result = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_22B7DA6F8();

    result = swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_22B7C6D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = sub_22B7DB678();
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_22B74C9E0;
  v14[3] = &unk_283F20C48;
  v11 = _Block_copy(v14);

  v12 = [v9 registerForMessagesDeletionAwareTaskWithIdentifier:v10 usingQueue:a3 launchHandler:v11];

  _Block_release(v11);

  return v12;
}

id sub_22B7C6E54(uint64_t a1, SEL *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if ([v2 *a2])
  {
    result = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_22B7DA6F8();

    result = swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B7C6EFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B6F0D94;

  return sub_22B73B5B4();
}

uint64_t sub_22B7C6F8C()
{
  sub_22B4CFB78((v0 + 136));
  sub_22B71CBE8(v0 + 176);

  v1 = *(v0 + 200);

  v2 = *(v0 + 208);

  sub_22B740788(*(v0 + 224), *(v0 + 232), *(v0 + 240));
  v3 = *(v0 + 256);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22B7C6FF0()
{
  sub_22B7C6F8C();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22B7C7040()
{
  v1 = *v0;
  sub_22B7DC668();
  MEMORY[0x231895FF0](*(v1 + 120));
  MEMORY[0x231895FF0](*(v1 + 112));
  return sub_22B7DC6B8();
}

uint64_t sub_22B7C7094()
{
  v1 = *v0;
  MEMORY[0x231895FF0](*(*v0 + 120));
  return MEMORY[0x231895FF0](*(v1 + 112));
}

uint64_t sub_22B7C70D4()
{
  v1 = *v0;
  sub_22B7DC668();
  MEMORY[0x231895FF0](*(v1 + 120));
  MEMORY[0x231895FF0](*(v1 + 112));
  return sub_22B7DC6B8();
}

unint64_t sub_22B7C715C()
{
  result = qword_27D8CFB70;
  if (!qword_27D8CFB70)
  {
    type metadata accessor for IMDPersistentTaskExecutor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CFB70);
  }

  return result;
}

unint64_t sub_22B7C71B0()
{
  sub_22B7DC2E8();

  v0 = sub_22B7DBF38();
  MEMORY[0x231895140](v0);

  MEMORY[0x231895140](46, 0xE100000000000000);
  v1 = sub_22B7DBE78();
  MEMORY[0x231895140](v1);

  return 0xD000000000000026;
}

uint64_t dispatch thunk of ClientConnectionManaging.startAcceptingIncomingConnections()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22B6F0D94;

  return v9(a1, a2);
}

uint64_t sub_22B7C7394()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_281422710);
  sub_22B4CFA74(v0, qword_281422710);
  return sub_22B7DB2A8();
}

uint64_t IntentClientConnectionRouteProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id IMDServiceReachabilityBaseDelegate.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_22B7C7C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = sub_22B7DB678();
  v9 = sub_22B7DB678();
  v10 = [v6 isSMSEnabledForContext_];
  if ([a5 conversationWasDowngraded])
  {
    goto LABEL_10;
  }

  v11 = [a5 serviceOfLastMessage];
  if (!v11)
  {
    v17 = 0;
    goto LABEL_11;
  }

  v12 = v11;
  v13 = sub_22B7DB6A8();
  v15 = v14;

  if (v13 == 5459283 && v15 == 0xE300000000000000)
  {

LABEL_10:
    v17 = 1;
    goto LABEL_11;
  }

  v17 = sub_22B7DC518();

LABEL_11:
  v18 = [objc_opt_self() shouldDowngradeToRecipient:v8 fromSender:v9 ifCapableOfSMS:v10 withConversationDowngradeState:v17 & 1 andConversationHistoryState:{objc_msgSend(a5, sel_hasConversationHistory)}];

  return v18;
}

void sub_22B7C7E44()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 ctSubscriptionInfo];

  if (v1 && (v2 = sub_22B7DB678(), v3 = [v1 __im_subscriptionContextForForSimID_], v1, v2, v3) && (v4 = objc_msgSend(v3, sel_phoneNumber), v3, v4))
  {
    sub_22B7DB6A8();
  }

  else
  {
    v5 = objc_allocWithZone(MEMORY[0x277D18778]);
    v6 = sub_22B7DB678();
    v7 = [v5 initWithService_];

    if (v7)
    {
      v8 = sub_22B7DB678();
      v9 = [v7 accountMatchingSimIdentifier_];

      if (v9)
      {
        v10 = [v9 aliasStrings];

        if (v10)
        {
          v11 = sub_22B7DB918();

          if (v11[2])
          {
            v13 = v11[4];
            v12 = v11[5];
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
  }
}

void sub_22B7C8040()
{
  v0 = [objc_opt_self() sharedController];
  v1 = sub_22B7DB678();
  v2 = [v0 serviceWithName_];

  if (v2)
  {
    v3 = [objc_opt_self() sharedAccountController];
    if (!v3)
    {
LABEL_26:
      __break(1u);
      return;
    }

    v4 = v3;
    v5 = [v3 accountsForService_];

    if (v5)
    {
      sub_22B4D01A0(0, &qword_28141F298, off_2786FF850);
      v6 = sub_22B7DB918();

      if (!(v6 >> 62))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
LABEL_5:
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7)
        {
          goto LABEL_6;
        }

        goto LABEL_23;
      }
    }

    v7 = sub_22B7DC1C8();
    if (v7)
    {
LABEL_6:
      v17 = v2;
      v8 = 0;
      v9 = *MEMORY[0x277D18FF8];
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x231895C80](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v13 = [v10 accountDefaults];
        v14 = sub_22B7DB588();

        v18 = sub_22B7DB6A8();
        sub_22B7DC248();
        if (*(v14 + 16) && (v15 = sub_22B4D7EC0(v19), (v16 & 1) != 0))
        {
          sub_22B4D1F68(*(v14 + 56) + 32 * v15, v20);

          sub_22B4DA138(v19);

          if (swift_dynamicCast() & 1) != 0 && (v18)
          {
LABEL_20:
            v2 = v17;
            goto LABEL_23;
          }
        }

        else
        {

          sub_22B4DA138(v19);
        }

        ++v8;
        if (v12 == v7)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_23:
  }
}

uint64_t sub_22B7C8328(uint64_t a1)
{
  v2 = sub_22B7DA688();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_22B7DA658();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22B7C841C()
{
  v1 = OBJC_IVAR____TtC12IMDaemonCore35ScheduledMessageBlocklistController____lazy_storage___blockedHandles;
  if (*(v0 + OBJC_IVAR____TtC12IMDaemonCore35ScheduledMessageBlocklistController____lazy_storage___blockedHandles))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12IMDaemonCore35ScheduledMessageBlocklistController____lazy_storage___blockedHandles);
  }

  else
  {
    v3 = v0;
    v4 = sub_22B6F0AD4(&qword_27D8CEF30, &qword_22B7FBAF0);
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v2 = sub_22B7DB308();
    v7 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_22B7C84C0()
{
  *&v0[OBJC_IVAR____TtC12IMDaemonCore35ScheduledMessageBlocklistController____lazy_storage___blockedHandles] = 0;
  p_cb = &OBJC_PROTOCOL___IMDTrustKitDecisioningManaging.cb;
  *&v0[OBJC_IVAR____TtC12IMDaemonCore35ScheduledMessageBlocklistController_cancellables] = MEMORY[0x277D84FA0];
  v26.receiver = v0;
  v26.super_class = type metadata accessor for ScheduledMessageBlocklistController();
  v2 = objc_msgSendSuper2(&v26, sel_init);
  sub_22B7C841C();
  v3 = sub_22B7CCC70();
  v4 = *(v3 + 16);
  if (v4)
  {
    v23 = v2;
    aBlock[0] = MEMORY[0x277D84F90];
    sub_22B7AB6B4(0, v4, 0);
    v5 = aBlock[0];
    v6 = (v3 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      aBlock[0] = v5;
      v9 = *(v5 + 16);
      v10 = *(v5 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_22B7AB6B4((v10 > 1), v9 + 1, 1);
        v5 = aBlock[0];
      }

      *(v5 + 16) = v9 + 1;
      v11 = v5 + 16 * v9;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v6 += 2;
      --v4;
    }

    while (v4);

    v2 = v23;
    p_cb = (&OBJC_PROTOCOL___IMDTrustKitDecisioningManaging + 64);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  aBlock[0] = v5;
  sub_22B7DB2F8();

  result = [objc_opt_self() defaultCenter];
  v13 = *MEMORY[0x277CFB9B8];
  if (*MEMORY[0x277CFB9B8])
  {
    v14 = result;
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_22B7CCEF8;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B7C8328;
    aBlock[3] = &unk_283F20CC8;
    v16 = _Block_copy(aBlock);

    v17 = [v14 addObserverForName:v13 object:0 queue:0 usingBlock:v16];
    _Block_release(v16);

    *(swift_allocObject() + 16) = v17;
    v18 = sub_22B7DB2D8();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    swift_unknownObjectRetain();
    v21 = sub_22B7DB2E8();
    v22 = *(p_cb + 394);
    swift_beginAccess();
    sub_22B7C9568(&v24, v21);
    swift_endAccess();
    swift_unknownObjectRelease();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22B7C87DC()
{
  if (qword_27D8CCC60 != -1)
  {
    swift_once();
  }

  v0 = sub_22B7DB2B8();
  sub_22B4CFA74(v0, qword_27D8D48A0);
  v1 = sub_22B7DB298();
  v2 = sub_22B7DBCB8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22B4CC000, v1, v2, "Received signal that blocklist updated", v3, 2u);
    MEMORY[0x231898D60](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_22B7CCC70();
    v7 = sub_22B7DB298();
    v8 = sub_22B7DBCB8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315138;
      v11 = MEMORY[0x2318952A0](v6, &type metadata for ScheduledMessageBlocklistController.BlockedItem);
      v13 = sub_22B4CFAAC(v11, v12, &v22);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_22B4CC000, v7, v8, "BlockedItems: %s", v9, 0xCu);
      sub_22B4CFB78(v10);
      MEMORY[0x231898D60](v10, -1, -1);
      MEMORY[0x231898D60](v9, -1, -1);
    }

    sub_22B7C841C();
    v14 = *(v6 + 16);
    if (v14)
    {
      v22 = MEMORY[0x277D84F90];
      sub_22B7AB6B4(0, v14, 0);
      v15 = v22;
      v16 = (v6 + 40);
      do
      {
        v18 = *(v16 - 1);
        v17 = *v16;
        v22 = v15;
        v20 = *(v15 + 16);
        v19 = *(v15 + 24);

        if (v20 >= v19 >> 1)
        {
          sub_22B7AB6B4((v19 > 1), v20 + 1, 1);
          v15 = v22;
        }

        *(v15 + 16) = v20 + 1;
        v21 = v15 + 16 * v20;
        *(v21 + 32) = v18;
        *(v21 + 40) = v17;
        v16 += 2;
        --v14;
      }

      while (v14);
    }

    else
    {

      v15 = MEMORY[0x277D84F90];
    }

    v22 = v15;
    sub_22B7DB2F8();
  }

  return result;
}

void sub_22B7C8AAC(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];
}

id sub_22B7C8B40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduledMessageBlocklistController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B7C8BE4(_WORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x231895FC0](*(*v2 + 40), a2, 2);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 2 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_22B7CAD44(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22B7C8CCC(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_22B7DC658();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_22B7CAE68(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22B7C8DF4(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_22B7DC1D8();

    if (v17)
    {

      sub_22B4D01A0(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_22B7DC1C8();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_22B7C9804(v15, result + 1, a5, a6, a3, a4);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_22B7CA74C(v30 + 1, a5, a6);
        }

        v31 = v16;
        sub_22B7CABEC(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_22B4D01A0(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_22B7DBFC8();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_22B7DBFD8();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_22B7CAF88(v28, v22, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_22B7C9068(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22B7DC668();
  sub_22B7DB758();
  v9 = sub_22B7DC6B8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_22B7DC518() & 1) != 0)
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

    sub_22B7CB118(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22B7C91B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22B7DC668();
  sub_22B7DC688();
  if (a3)
  {
    sub_22B7DB758();
  }

  v9 = sub_22B7DC6B8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_16:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_22B7CB298(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  v13 = *(v7 + 48);
  while (1)
  {
    v14 = (v13 + 16 * v11);
    v15 = v14[1];
    if (v15)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_15;
    }

LABEL_6:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!a3)
  {
    goto LABEL_6;
  }

  v16 = *v14 == a2 && v15 == a3;
  if (!v16 && (sub_22B7DC518() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  *a1 = *(*(v7 + 48) + 16 * v11);

  return 0;
}

uint64_t sub_22B7C9340(void *a1, void *a2)
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

    v9 = sub_22B7DC1D8();

    if (v9)
    {

      sub_22B7DBEF8();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_22B7DC1C8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_22B7C9A04(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_22B7CA74C(v22 + 1, &qword_27D8CFC68, &qword_22B7FE538);
    }

    v20 = v8;
    sub_22B7CABEC(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_22B7DBEF8();
  v11 = *(v6 + 40);
  v12 = sub_22B7DBFC8();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_22B7CB454(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_22B7DBFD8();

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

uint64_t sub_22B7C9568(void *a1, uint64_t a2)
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

    v8 = sub_22B7DC1D8();

    if (v8)
    {

      sub_22B7DB2D8();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = sub_22B7DC1C8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_22B7C9C04(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_22B7CA96C(v19 + 1);
    }

    sub_22B7CAC70(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  sub_22B7DB2D8();
  v10 = *(v6 + 40);
  sub_22B7CCF08(&unk_28141F358);
  v11 = sub_22B7DB5A8();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_22B7CB5E4(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_22B7CCF08(&qword_27D8CFC58);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (sub_22B7DB658())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}