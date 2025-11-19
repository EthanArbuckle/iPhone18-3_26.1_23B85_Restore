uint64_t sub_1A85E8AA4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t default argument 2 of ProtectiveQueue.init(label:qos:attributes:autoreleaseFrequency:target:initialState:)()
{
  sub_1A88C8A18();
  sub_1A870C2BC(&qword_1ED8C9580, MEMORY[0x1E69E8030]);
  sub_1A870CCE0(&qword_1EB3023F0);
  sub_1A85E8C68(&qword_1ED8C9590, &qword_1EB3023F0);
  return sub_1A88C8CE8();
}

uint64_t sub_1A85E8C20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A85E8C68(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA2__0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E8090];
  v3 = sub_1A88C8A28();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

char *ProtectiveQueue.init(label:qos:attributes:autoreleaseFrequency:target:initialState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v36 = a7;
  v37 = a3;
  v33 = a2;
  v34 = a6;
  v30 = a5;
  v32 = a1;
  v35 = *v7;
  v31 = sub_1A88C8A28();
  v10 = *(v31 - 8);
  MEMORY[0x1EEE9AC00]();
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A88C8A18();
  v28 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00]();
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A88C7EF8();
  v29 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00]();
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[1] = sub_1A85E90C8();
  (*(v18 + 16))(v20, v37, v17);
  (*(v14 + 16))(v16, a4, v13);
  v21 = v10;
  v22 = *(v10 + 16);
  v23 = v30;
  v24 = v31;
  v22(v12, v30, v31);
  v25 = sub_1A88C8A78();
  (*(v21 + 8))(v23, v24);
  (*(v14 + 8))(a4, v28);
  (*(v18 + 8))(v37, v29);
  *(v8 + 2) = v25;
  (*(*(*(v35 + 80) - 8) + 32))(&v8[*(*v8 + 96)], v36);
  return v8;
}

uint64_t ProtectiveQueue.__allocating_init(label:qos:attributes:autoreleaseFrequency:target:initialState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  ProtectiveQueue.init(label:qos:attributes:autoreleaseFrequency:target:initialState:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

unint64_t sub_1A85E90C8()
{
  result = qword_1ED8C95A0;
  if (!qword_1ED8C95A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8C95A0);
  }

  return result;
}

id sub_1A85E914C()
{
  v0 = IMGetDaemonListenerProtocol();
  v20 = [objc_opt_self() interfaceWithProtocol_];

  sub_1A870CCE0(&qword_1EB303CB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E2770;
  v2 = sub_1A85E9718(0, &qword_1ED8C94A0);
  *(inited + 32) = v2;
  *(inited + 40) = sub_1A85E9718(0, &qword_1ED8C94E0);
  sub_1A85E976C(inited);
  swift_setDeallocating();
  v3 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v4 = sub_1A88C85E8();

  v5 = [v3 initWithArray_];

  sub_1A88C88E8();
  v6 = sub_1A88C88C8();

  [v20 setClasses:v6 forSelector:sel_account_chat_style_chatProperties_groupID_chatPersonCentricID_messagesReceived_removed_messagesComingFromStorage_ argumentIndex:6 ofReply:0];

  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1A88E7B80;
  *(v7 + 32) = sub_1A85E9718(0, &qword_1ED8C9398);
  *(v7 + 40) = sub_1A85E9718(0, &qword_1ED8C92F0);
  *(v7 + 48) = sub_1A85E9718(0, &qword_1ED8C9450);
  *(v7 + 56) = sub_1A85E9718(0, &unk_1ED8C9440);
  *(v7 + 64) = sub_1A85E9718(0, &qword_1ED8C93A0);
  *(v7 + 72) = sub_1A85E9718(0, &qword_1ED8C91E0);
  *(v7 + 80) = sub_1A85E9718(0, &qword_1ED8C9278);
  *(v7 + 88) = sub_1A85E9718(0, &qword_1ED8C9290);
  *(v7 + 96) = sub_1A85E9718(0, &unk_1ED8C9388);
  *(v7 + 104) = sub_1A85E9718(0, &qword_1ED8C94D8);
  *(v7 + 112) = sub_1A85E9718(0, &unk_1ED8C9280);
  *(v7 + 120) = v2;
  *(v7 + 128) = sub_1A85E9718(0, &unk_1ED8C91E8);
  *(v7 + 136) = sub_1A85E9718(0, &unk_1ED8C9490);
  *(v7 + 144) = sub_1A85E9718(0, &unk_1ED8C91D0);
  v8 = IMSetupInfoAllowedClasses();
  sub_1A870CCE0(&qword_1EB304A08);
  v9 = sub_1A88C85F8();

  sub_1A85E99C0(v9);
  sub_1A85E976C(v7);

  v10 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v11 = sub_1A88C85E8();

  v12 = [v10 initWithArray_];

  sub_1A88C88E8();
  v13 = sub_1A88C88C8();

  [v20 setClasses:v13 forSelector:sel_setupComplete_info_ argumentIndex:1 ofReply:0];

  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1A88E14F0;
  *(v14 + 32) = sub_1A85E9718(0, &qword_1ED8C92F8);
  sub_1A85E976C(v14);
  swift_setDeallocating();
  v15 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v16 = sub_1A88C85E8();

  v17 = [v15 initWithArray_];

  sub_1A88C88E8();
  v18 = sub_1A88C88C8();

  [v20 setClasses:v18 forSelector:sel_unreadCountReportsUpdated_ argumentIndex:0 ofReply:0];

  return v20;
}

id sub_1A85E96EC()
{
  result = sub_1A85E914C();
  qword_1ED8C94C0 = result;
  return result;
}

uint64_t sub_1A85E9718(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1A85E976C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1A85E998C(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      sub_1A870CCE0(&qword_1EB304A08);
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1A85E998C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1A85E99B0(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_1A85E987C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A870CCE0(&qword_1EB303460);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A85E998C(char *a1, int64_t a2, char a3)
{
  result = sub_1A85E987C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_OWORD *sub_1A85E99B0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_1A85E99D4()
{
  v0 = IMGetDaemonProtocol();
  v64 = objc_opt_self();
  v1 = [v64 interfaceWithProtocol_];

  sub_1A870CCE0(&qword_1EB303CB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E2770;
  v3 = sub_1A85E9718(0, &qword_1ED8C94A0);
  *(inited + 32) = v3;
  v4 = v3;
  *(inited + 40) = sub_1A85E9718(0, &qword_1ED8C94A8);
  sub_1A85E976C(inited);
  swift_setDeallocating();
  v5 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v6 = sub_1A88C85E8();

  v7 = [v5 initWithArray_];

  sub_1A88C88E8();
  v8 = sub_1A88C88C8();

  [v1 setClasses:v8 forSelector:sel_fetchCollaborationNoticesForChatGUIDs_reply_ argumentIndex:0 ofReply:1];

  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1A88E2770;
  *(v9 + 32) = v4;
  v10 = v4;
  v65 = v4;
  v66 = sub_1A85E9718(0, &unk_1ED8C9440);
  *(v9 + 40) = v66;
  sub_1A85E976C(v9);
  swift_setDeallocating();
  v11 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v12 = sub_1A88C85E8();

  v13 = [v11 initWithArray_];

  sub_1A88C88E8();
  v14 = sub_1A88C88C8();

  [v1 setClasses:v14 forSelector:sel_fetchCollaborationNoticesForChatGUIDs_reply_ argumentIndex:0 ofReply:0];

  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1A88E4F70;
  v16 = sub_1A85E9718(0, &qword_1ED8C94D8);
  *(v15 + 32) = v16;
  *(v15 + 40) = v10;
  *(v15 + 48) = sub_1A85E9718(0, &unk_1ED8C9490);
  sub_1A85E976C(v15);
  swift_setDeallocating();
  v17 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v18 = sub_1A88C85E8();

  v19 = [v17 initWithArray_];

  sub_1A88C88E8();
  v20 = sub_1A88C88C8();

  [v1 setClasses:v20 forSelector:sel_updateMessage_withIndexesOfDeletedItems_withIndexToRangeMapOfDeletedItems_deleteDate_ argumentIndex:2 ofReply:0];

  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1A88E4F70;
  *(v21 + 32) = v16;
  *(v21 + 40) = v66;
  *(v21 + 48) = sub_1A85E9718(0, &unk_1ED8C9458);
  sub_1A85E976C(v21);
  swift_setDeallocating();
  v22 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v23 = sub_1A88C85E8();

  v24 = [v22 initWithArray_];

  sub_1A88C88E8();
  v25 = sub_1A88C88C8();

  [v1 setClasses:v25 forSelector:sel_fetchGroupPhotoPathsForChatsWithGroupIDs_completionHandler_ argumentIndex:0 ofReply:1];

  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1A88E2770;
  *(v26 + 32) = v65;
  *(v26 + 40) = sub_1A85E9718(0, qword_1ED8C93B0);
  sub_1A85E976C(v26);
  swift_setDeallocating();
  v27 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v28 = sub_1A88C85E8();

  v29 = [v27 &selRef:v28 initWithMessagePartBody:? messagePartIndex:? messagePartRange:?];

  sub_1A88C88E8();
  v30 = sub_1A88C88C8();

  [v1 setClasses:v30 forSelector:sel_simulateMessages_configuration_completion_ argumentIndex:0 ofReply:0];

  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1A88E14F0;
  *(v31 + 32) = sub_1A85E9718(0, &unk_1ED8C8FC8);
  sub_1A85E976C(v31);
  swift_setDeallocating();
  v32 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v33 = sub_1A88C85E8();

  v34 = [v32 initWithArray_];

  sub_1A88C88E8();
  v35 = sub_1A88C88C8();

  [v1 setClasses:v35 forSelector:sel_simulateMessages_configuration_completion_ argumentIndex:1 ofReply:0];

  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_1A88E4F70;
  *(v36 + 32) = sub_1A85E9718(0, &qword_1ED8C93A0);
  *(v36 + 40) = v16;
  *(v36 + 48) = v66;
  sub_1A85E976C(v36);
  swift_setDeallocating();
  v37 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v38 = sub_1A88C85E8();

  v39 = [v37 initWithArray_];

  sub_1A88C88E8();
  v40 = sub_1A88C88C8();

  [v1 setClasses:v40 forSelector:sel_updateChatsUsingMessageGUIDsAndSummaries_ argumentIndex:0 ofReply:0];

  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_1A88E2770;
  *(v41 + 32) = v65;
  *(v41 + 40) = v66;
  sub_1A85E976C(v41);
  swift_setDeallocating();
  v42 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v43 = sub_1A88C85E8();

  v44 = [v42 initWithArray_];

  sub_1A88C88E8();
  v45 = sub_1A88C88C8();

  [v1 setClasses:v45 forSelector:sel_updateChatsUsingMessageGUIDsWithPriority_ argumentIndex:0 ofReply:0];

  v46 = swift_initStackObject();
  *(v46 + 16) = xmmword_1A88E14F0;
  *(v46 + 32) = sub_1A85E9718(0, &qword_1ED8C92F8);
  sub_1A85E976C(v46);
  swift_setDeallocating();
  v47 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v48 = sub_1A88C85E8();

  v49 = [v47 initWithArray_];

  sub_1A88C88E8();
  v50 = sub_1A88C88C8();

  [v1 setClasses:v50 forSelector:sel_unreadCountFullReplacementWithCompletion_ argumentIndex:0 ofReply:1];

  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1A88E4F70;
  *(v51 + 32) = v16;
  *(v51 + 40) = v66;
  v52 = sub_1A85E9718(0, &qword_1ED8C9380);
  *(v51 + 48) = v52;
  sub_1A85E976C(v51);
  swift_setDeallocating();
  v53 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v54 = sub_1A88C85E8();

  v55 = [v53 initWithArray_];

  sub_1A88C88E8();
  v56 = sub_1A88C88C8();

  [v1 setClasses:v56 forSelector:sel_loadLastMessageItemsForMergedChatsWithGUIDs_completionHandler_ argumentIndex:0 ofReply:1];

  v57 = swift_initStackObject();
  *(v57 + 16) = xmmword_1A88E4F70;
  *(v57 + 32) = v52;
  *(v57 + 40) = v66;
  *(v57 + 48) = v65;
  sub_1A85E976C(v57);
  swift_setDeallocating();
  v58 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v59 = sub_1A88C85E8();

  v60 = [v58 initWithArray_];

  sub_1A88C88E8();
  v61 = sub_1A88C88C8();

  [v1 setClasses:v61 forSelector:sel_downloadTranslationAssetsForLanguageCodes_messageItemsToTranslateLocally_chatIdentifier_style_account_ argumentIndex:1 ofReply:0];

  v62 = [v64 interfaceWithProtocol_];
  [v1 setInterface:v62 forSelector:sel_calculateReachabilityWithRequest_responseHandler_ argumentIndex:1 ofReply:0];

  if (qword_1ED8C9338 != -1)
  {
    swift_once();
  }

  [v1 setInterface:qword_1ED8C9228 forSelector:sel_addPersistentTaskExecutorMonitor_withID_ argumentIndex:0 ofReply:{0, 1, 2}];
  return v1;
}

id sub_1A85EA71C()
{
  result = sub_1A85EA73C();
  qword_1ED8C9228 = result;
  return result;
}

id sub_1A85EA73C()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  sub_1A870CCE0(&qword_1EB303CB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E2770;
  v2 = sub_1A85E9718(0, &qword_1ED8C94A0);
  *(inited + 32) = v2;
  v3 = sub_1A85E9718(0, &unk_1ED8C91F8);
  *(inited + 40) = v3;
  sub_1A85E976C(inited);
  swift_setDeallocating();
  v4 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v5 = sub_1A88C85E8();

  v6 = [v4 initWithArray_];

  sub_1A88C88E8();
  v7 = sub_1A88C88C8();

  [v0 setClasses:v7 forSelector:sel_allExecutorStatusReportsUpdated_ argumentIndex:0 ofReply:0];

  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1A88E2770;
  *(v8 + 32) = v2;
  *(v8 + 40) = v3;
  sub_1A85E976C(v8);
  swift_setDeallocating();
  v9 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v10 = sub_1A88C85E8();

  v11 = [v9 initWithArray_];

  sub_1A88C88E8();
  v12 = sub_1A88C88C8();

  [v0 setClasses:v12 forSelector:sel_executorStatusReportsUpdated_ argumentIndex:0 ofReply:0];

  return v0;
}

uint64_t sub_1A85EA9F4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(*v2 + 96);
  swift_beginAccess();
  v1(v2 + v3);
  return swift_endAccess();
}

BOOL IMSharedHelperNickNameEnabled()
{
  if (+[IMAppleStoreHelper isInAppleStoreDemoMode])
  {
    return 0;
  }

  if ([+[IMFeatureFlags isNicknamesDisabledInCertainRegionsEnabled]&& sub_1A86E9328() sharedFeatureFlags]
  {
    v1 = [objc_msgSend(objc_msgSend(MEMORY[0x1E695DF58] "currentLocale")];
    v2 = [objc_msgSend(MEMORY[0x1E69A53F0] sharedInstanceForBagType:{0), "objectForKey:", @"name-and-photo-disallowed-country-codes"}];
    v3 = [v2 count] ? v2 : &unk_1F1BFB0C0;
    if ([v3 containsObject:v1])
    {
      return 0;
    }
  }

  return _IMServerSaysToKeepNicknamesEnabled();
}

uint64_t sub_1A85EAB78()
{
  result = [CFPreferencesCopyAppValue(@"StoreDemoMode" @"com.apple.demo-settings")];
  byte_1ED8C9BC8 = result;
  return result;
}

BOOL _IMServerSaysToKeepNicknamesEnabled()
{
  v0 = [objc_msgSend(MEMORY[0x1E69A53F0] sharedInstanceForBagType:{1), "objectForKey:", @"nicknames-enabled-version"}];
  v1 = v0;
  v2 = !v0 || [v0 unsignedIntegerValue] <= 1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A85EAC9C;
  v4[3] = &unk_1E782A200;
  v5 = v2;
  v4[4] = v1;
  if (qword_1ED8CA1D0 != -1)
  {
    dispatch_once(&qword_1ED8CA1D0, v4);
  }

  return v2;
}

void sub_1A85EAC9C(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 32);
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
      v6 = @"NO";
      v7 = 138412802;
      if (v3)
      {
        v6 = @"YES";
      }

      v8 = v6;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "Server says we should keep nicknames on? %@ {serverbagValue: %@ version: %@}", &v7, 0x20u);
    }
  }
}

id sub_1A85EAE08(void *a1, void **a2)
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

uint64_t sub_1A85EAE74()
{
  if (qword_1ED8C94B0 != -1)
  {
    result = swift_once();
  }

  if (qword_1ED8C94D0 != -1)
  {

    return swift_once();
  }

  return result;
}

void IMSetEmbeddedTempDirectory()
{
  v15 = *MEMORY[0x1E69E9840];
  setenv("TMPDIR", "/var/mobile/tmp/", 1);
  if (_set_user_dir_suffix())
  {
    v0 = NSTemporaryDirectory();
    if (IMOSLoggingEnabled())
    {
      v1 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v0;
        _os_log_impl(&dword_1A85E5000, v1, OS_LOG_TYPE_INFO, "NSTemporaryDirectory() set to %@", &v13, 0xCu);
      }
    }

    bzero(&v13, 0x400uLL);
    if (!_dirhelper())
    {
      if (IMOSLoggingEnabled())
      {
        v2 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
        {
          v3 = *__error();
          v11 = 134217984;
          v12 = v3;
          _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "Error getting temp directory path: (%lu)\n", &v11, 0xCu);
        }
      }
    }

    v4 = NSHomeDirectory();
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v4;
        v6 = "NSHomeDirectory() set to %@";
        v7 = &v11;
        v8 = v5;
LABEL_15:
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, v6, v7, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *__error();
      v13 = 134217984;
      v14 = v10;
      v6 = "Could not setup dirhelper suffix: (%lu)\n";
      v7 = &v13;
      v8 = v9;
      goto LABEL_15;
    }
  }
}

uint64_t sub_1A85EB27C()
{
  qword_1ED8CA300 = objc_alloc_init(IMFeatureFlags);

  return MEMORY[0x1EEE66BB8]();
}

BOOL IMIsRunningInIMDPersistenceAgent()
{
  if (qword_1ED8CA178 != -1)
  {
    sub_1A85EB3A8();
  }

  return qword_1EB30A9C8 == 11;
}

void sub_1A85EB30C()
{
  if (_os_feature_enabled_impl())
  {
    byte_1ED8C9F38 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1ED8C9F38 = v0;
  }
}

uint64_t IMIsRunningInUnitTesting()
{
  if (qword_1ED8CA338 != -1)
  {
    sub_1A85EB3F4();
  }

  return byte_1ED8CA130;
}

void sub_1A85EB408()
{
  v4 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(MEMORY[0x1E69A60F0] "sharedInstance")] && (objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30], "processInfo"), "environment"), "objectForKeyedSubscript:", @"IMIsRunningInIntegrationTesting"), "isEqualToString:", @"YES") & 1) == 0)
  {
    if (qword_1ED8CA1D8 != -1)
    {
      sub_1A85EB7B4();
    }

    byte_1ED8CA130 = byte_1ED8C9AA8;
    if ((byte_1ED8C9AA8 & 1) == 0)
    {
      byte_1ED8CA130 = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    }
  }

  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      if (byte_1ED8CA130)
      {
        v1 = @"YES";
      }

      else
      {
        v1 = @"NO";
      }

      v2 = 138412290;
      v3 = v1;
      _os_log_impl(&dword_1A85E5000, v0, OS_LOG_TYPE_INFO, "IMIsRunningInUnitTesting %@", &v2, 0xCu);
    }
  }
}

void sub_1A85EB5AC()
{
  v10 = *MEMORY[0x1E69E9840];
  if (![objc_msgSend(MEMORY[0x1E69A60F0] "sharedInstance")])
  {
    return;
  }

  v0 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  v1 = [objc_msgSend(v0 objectForKeyedSubscript:{@"XCTestBundlePath", "length"}];
  byte_1ED8C9AA8 = v1 != 0;
  if (!v1)
  {
    v2 = [objc_msgSend(v0 objectForKeyedSubscript:{@"XCTestConfigurationFilePath", "length"}];
    byte_1ED8C9AA8 = v2 != 0;
    if (!v2)
    {
      v3 = [v0 objectForKeyedSubscript:@"IDEiPhoneInternalTestBundleName"];
      if ([v3 containsString:@"xctest"])
      {
        goto LABEL_5;
      }

      byte_1ED8C9AA8 = [v3 containsString:@"xcrun"];
      if (byte_1ED8C9AA8)
      {
        goto LABEL_8;
      }

      v7 = [v0 objectForKeyedSubscript:@"_"];
      if ([v7 containsString:@"xctest"])
      {
LABEL_5:
        v4 = 1;
      }

      else
      {
        v4 = [v7 containsString:@"xcrun"];
      }

      byte_1ED8C9AA8 = v4;
    }
  }

LABEL_8:
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (byte_1ED8C9AA8)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "IMIsRunningInXCTest %@", &v8, 0xCu);
    }
  }
}

id sub_1A85EB7C8()
{
  result = sub_1A85E99D4();
  qword_1ED8C94F0 = result;
  return result;
}

unint64_t sub_1A85EB85C()
{
  result = qword_1ED8C9470;
  if (!qword_1ED8C9470)
  {
    sub_1A870CD28(&unk_1EB3081F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8C9470);
  }

  return result;
}

uint64_t sub_1A85EB8C0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t ProtectiveQueue.async(execute:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A88C7EC8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00]();
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A88C7EF8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00]();
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v2;
  aBlock[4] = sub_1A85EB924;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A85EB8C0;
  aBlock[3] = &unk_1F1BAF978;
  v14 = _Block_copy(aBlock);

  _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
  v16[1] = MEMORY[0x1E69E7CC0];
  sub_1A85EBBD0();
  sub_1A870CCE0(&unk_1EB3081F0);
  sub_1A85EB85C();
  sub_1A88C8CE8();
  MEMORY[0x1AC56F330](0, v12, v8, v14);
  _Block_release(v14);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

unint64_t sub_1A85EBBD0()
{
  result = qword_1ED8C9480;
  if (!qword_1ED8C9480)
  {
    sub_1A88C7EC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8C9480);
  }

  return result;
}

uint64_t sub_1A85EBC28(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 96);
  swift_beginAccess();
  a1(a3 + v5);
  return swift_endAccess();
}

id IMStringFromClientCapabilities(uint64_t a1)
{
  v2 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @"(");
  sub_1A85EBFE4(1, a1, @"Status", v2);
  sub_1A85EBFE4(2, a1, @"Notifications", v2);
  sub_1A85EBFE4(4, a1, @"Chats", v2);
  sub_1A85EBFE4(8, a1, @"VC", v2);
  sub_1A85EBFE4(0x80000, a1, @"FTA", v2);
  sub_1A85EBFE4(16, a1, @"AV Chat Info", v2);
  sub_1A85EBFE4(32, a1, @"Aux Input", v2);
  sub_1A85EBFE4(64, a1, @"VC Invitations", v2);
  sub_1A85EBFE4(128, a1, @"Legacy VC", v2);
  sub_1A85EBFE4(256, a1, @"Transfers", v2);
  sub_1A85EBFE4(512, a1, @"Accounts", v2);
  sub_1A85EBFE4(1024, a1, @"Buddy List", v2);
  sub_1A85EBFE4(4096, a1, @"Send Messages", v2);
  sub_1A85EBFE4(0x4000, a1, @"ID Queries", v2);
  sub_1A85EBFE4(0x2000, a1, @"Message History", v2);
  sub_1A85EBFE4(0x40000, a1, @"Modify Read State", v2);
  sub_1A85EBFE4(0x8000, a1, @"Chat Counts", v2);
  sub_1A85EBFE4(0x10000, a1, @"Sent Messages", v2);
  sub_1A85EBFE4(0x20000, a1, @"Database Update", v2);
  sub_1A85EBFE4(0x100000, a1, @"AV", v2);
  sub_1A85EBFE4(0x200000, a1, @"On Demand Chats", v2);
  sub_1A85EBFE4(0x400000, a1, @"Precache Recent Chats", v2);
  sub_1A85EBFE4(0x2000000, a1, @"Precache Very Recent Chats", v2);
  sub_1A85EBFE4(0x800000, a1, @"OneTimeCode", v2);
  sub_1A85EBFE4(0x1000000, a1, @"Skip Last Message", v2);
  sub_1A85EBFE4(0x4000000, a1, @"Blackhole Chats", v2);
  sub_1A85EBFE4(0x8000000, a1, @"Send Emergency Messages", v2);
  sub_1A85EBFE4(0x10000000, a1, @"File Provider", v2);
  sub_1A85EBFE4(0x20000000, a1, @"Synced Settings", v2);
  sub_1A85EBFE4(0x40000000, a1, @"Cloud Sync", v2);
  sub_1A85EBFE4(0x100000000, a1, @"Remote Connection", v2);
  [v2 appendString:@""]);

  return v2;
}

void sub_1A85EBFE4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  v8 = v7;
  if ((a2 & a1) != 0)
  {
    if ([v7 length] >= 2)
    {
      [v8 appendString:{@", "}];
    }

    [v8 appendString:v9];
  }
}

BOOL IMIsRunningInMobileSMS()
{
  if (qword_1ED8CA178 != -1)
  {
    sub_1A85EB3A8();
  }

  return qword_1EB30A9C8 == 2;
}

uint64_t sub_1A85EC294()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A85EC2D4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1A85EC32C()
{
  swift_unknownObjectRelease();
  sub_1A85F1084(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1A85EC36C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A85EC3AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1A85EC3FC()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A85EC444()
{
  v1 = sub_1A88C72E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1A85EC528(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

IMMeCardSharingStateController *sub_1A85EC5C4()
{
  result = objc_alloc_init(IMMeCardSharingStateController);
  qword_1ED8CA350 = result;
  return result;
}

BOOL IMIsSupportedUTIType(uint64_t a1)
{
  v2 = qword_1ED8C9A50;
  if (!qword_1ED8C9A50)
  {
    sub_1A85EC830();
    v2 = qword_1ED8C9A50;
  }

  v3 = [v2 objectForKey:a1];
  v4 = qword_1ED8C9A58;
  if (!qword_1ED8C9A58)
  {
    sub_1A85EC830();
    v4 = qword_1ED8C9A58;
  }

  return ([v4 objectForKey:a1] | v3) != 0;
}

void sub_1A85EC830()
{
  v0 = IMPreviewGeneratorClasses();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A85ECA24;
  block[3] = &unk_1E7826DA8;
  block[4] = v0;
  if (qword_1ED8C9A90 != -1)
  {
    dispatch_once(&qword_1ED8C9A90, block);
  }
}

uint64_t IMPreviewGeneratorClasses()
{
  v4[10] = *MEMORY[0x1E69E9840];
  v0 = MGGetBoolAnswer();
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v4[8] = objc_opt_class();
  v4[9] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:10];
  if (v0)
  {
    v3[0] = objc_opt_class();
    v3[1] = objc_opt_class();
    return [v1 arrayByAddingObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v3, 2)}];
  }

  return v1;
}

void sub_1A85ECA24(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A85ECAEC;
  v5[3] = &unk_1E7826D80;
  v5[4] = v2;
  v5[5] = v3;
  [v4 enumerateObjectsUsingBlock:v5];
  qword_1ED8C9A50 = [v2 copy];
  qword_1ED8C9A58 = [v3 copy];
}

uint64_t sub_1A85ECAEC(uint64_t a1, void *a2)
{
  v4 = [a2 UTITypes];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A85F34EC;
  v7[3] = &unk_1E7826D58;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v7[5] = a2;
  v7[6] = v5;
  return [v4 enumerateObjectsUsingBlock:v7];
}

uint64_t sub_1A85ECB78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A85ECBA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A85ECBB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A85ECBD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A85ECBE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A85ECBF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A85ECC48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A85ECC58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A85ECC68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A85ECC88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A85ECC98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A85ECCB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A85ECCC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A85ECCD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A85ECCE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A85ECD08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A85ECD18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A85ECD28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A85ECF0C()
{
  qword_1ED8CA380 = objc_alloc_init(IMContactStore);

  return MEMORY[0x1EEE66BB8]();
}

BOOL IMIsRunningInMessages()
{
  if (qword_1ED8CA178 != -1)
  {
    sub_1A85EB3A8();
  }

  return qword_1EB30A9C8 == 2;
}

char *sub_1A85ED3F4(uint64_t a1)
{
  sub_1A870CCE0(&qword_1EB306680);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = a1;
  *&v1[OBJC_IVAR___IMUnreadCountController_filteringControllerLock] = v3;
  swift_unknownObjectRetain();
  sub_1A8803600(v17);
  sub_1A870CCE0(&qword_1EB306688);
  v4 = swift_allocObject();
  *(v4 + 80) = 0;
  v5 = v17[1];
  *(v4 + 16) = v17[0];
  *(v4 + 32) = v5;
  v6 = v17[3];
  *(v4 + 48) = v17[2];
  *(v4 + 64) = v6;
  *&v1[OBJC_IVAR___IMUnreadCountController_state] = v4;
  v16.receiver = v1;
  v16.super_class = IMUnreadCountController;
  v7 = objc_msgSendSuper2(&v16, sel_init);
  v8 = *&v7[OBJC_IVAR___IMUnreadCountController_state];
  v9 = v7;

  os_unfair_lock_lock(v8 + 20);
  sub_1A8801F30(&v8[4]);
  os_unfair_lock_unlock(v8 + 20);

  v10 = *&v9[OBJC_IVAR___IMUnreadCountController_filteringControllerLock];
  swift_getKeyPath();

  os_unfair_lock_lock((v10 + 24));
  sub_1A8802254((v10 + 16), aBlock);
  os_unfair_lock_unlock((v10 + 24));

  v11 = aBlock[0];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1A8801F4C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A85EB8C0;
  aBlock[3] = &unk_1F1BB1C50;
  v13 = _Block_copy(aBlock);

  [v11 setRefreshHandler_];
  _Block_release(v13);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_1A85ED64C()
{
  MEMORY[0x1AC571FF0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1A85ED684()
{
  if (!qword_1ED8C9048)
  {
    sub_1A8783C24();
    v0 = sub_1A88C81F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8C9048);
    }
  }
}

void sub_1A85ED6EC()
{
  if (!qword_1ED8C9178)
  {
    sub_1A88C7478();
    v0 = sub_1A88C8BE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8C9178);
    }
  }
}

void sub_1A85ED758(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1A85ED7B8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1A870CCE0(a2);
    v4 = sub_1A88C9008();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_1A85F5F40(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1A85EDA18(void *a1)
{
  objc_begin_catch(a1);
  v3 = *(v1 + 32);
  *(v1 + 32) = 0;

  *(v2 + 1528) = 0;
  objc_exception_rethrow();
}

id IMCloudKitGetSyncStateDictionaryWithTestBlock(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (qword_1ED8C96D0 == -1)
  {
    if (v1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1A88C0318();
  if (!v2)
  {
LABEL_3:
    v2 = _Block_copy(qword_1ED8C96D8);
  }

LABEL_4:
  v3 = IMCloudKitGetAllSyncStateKeys();
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = v2[2](v2, @"com.apple.madrid", v10);
        if (v11)
        {
          [v4 setObject:v11 forKey:{v10, v13}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

id IMCloudKitGetAllSyncStateKeys()
{
  if (qword_1ED8C96E8 != -1)
  {
    sub_1A88C0304();
  }

  v1 = qword_1ED8C96E0;

  return v1;
}

uint64_t MainThreadOnly.valueAssertingIfNotMainThread.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ([objc_opt_self() isMainThread])
  {
    v5 = *(*(*(a1 + 16) - 8) + 16);

    return v5(a2, v2);
  }

  else
  {
    result = sub_1A88C8FB8();
    __break(1u);
  }

  return result;
}

uint64_t MainThreadOnly.valueAssertingIfNotMainThread.setter(uint64_t a1, uint64_t a2)
{
  if ([objc_opt_self() isMainThread])
  {
    v5 = *(*(*(a2 + 16) - 8) + 40);

    return v5(v2, a1);
  }

  else
  {
    result = sub_1A88C8FB8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A85EDE50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A870CCE0(&qword_1EB304708);
    v3 = sub_1A88C8DD8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1A88C9528();

      sub_1A88C8268();
      result = sub_1A88C9578();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1A88C9398();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
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
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1A85EDFB8()
{
  if (qword_1EB300740 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB338DA8;
  v1 = objc_allocWithZone(IMCTRCSUtilitiesManager);
  v2 = v0;
  v3 = [v1 init];
  v4 = &v3[OBJC_IVAR___IMCTRCSUtilitiesManager_delegate];
  *v4 = v2;
  *(v4 + 1) = &off_1F1BB1710;
  result = swift_unknownObjectRelease();
  qword_1ED8C9378 = v3;
  return result;
}

unint64_t sub_1A85EE060(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A870CCE0(&qword_1EB303D78);
    v3 = sub_1A88C9008();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      result = sub_1A85F5F40(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A85EE160(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A85EE1A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A85EE248()
{
  qword_1ED8CA368 = objc_alloc_init(IMCTSubscriptionUtilities);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A85EE2EC()
{
  if (_os_feature_enabled_impl())
  {
    byte_1ED8CA278 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1ED8CA278 = v0;
  }
}

uint64_t sub_1A85EE544(void *a1)
{
  v2 = objc_msgSend(a1, "rangeOfString:", @"(");
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a1;
  }

  v3 = v2;
  v4 = v2 + 1;
  if (v2 + 1 >= [a1 length])
  {
    return a1;
  }

  v5 = [a1 substringFromIndex:v4];
  v6 = [v5 rangeOfString:@""]);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a1;
  }

  [v5 substringToIndex:v6];
  if (qword_1EB30AD28 != -1)
  {
    sub_1A88C0CC8();
  }

  if (![qword_1EB30AD30 containsObject:?])
  {
    return a1;
  }

  return [a1 substringToIndex:v3];
}

uint64_t sub_1A85EE68C()
{
  qword_1ED8CA320 = MEMORY[0x1AC570AA0](@"CTXPCServiceSubscriptionInfo", @"CoreTelephony");
  qword_1ED8CA328 = MEMORY[0x1AC570AA0](@"CTXPCServiceSubscriptionContext", @"CoreTelephony");
  result = MEMORY[0x1AC570AA0](@"CTBundle", @"CoreTelephony");
  qword_1ED8CA330 = result;
  return result;
}

uint64_t sub_1A85EE6F8()
{
  result = MEMORY[0x1AC570AA0](@"CTMessageCenter", @"CoreTelephony");
  qword_1EB30A9D8 = result;
  return result;
}

void sub_1A85EE7EC()
{
  v1 = v0;
  v2 = sub_1A85EDE50(&unk_1F1BA9C50);
  swift_arrayDestroy();
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 allowedChatBotExtensions];

  if (v4)
  {
    v5 = sub_1A88C88F8();

    sub_1A85EF178(v5);
  }

  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 56);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
LABEL_11:
    v8 &= v8 - 1;

    v12 = sub_1A88C82A8();
    v13 = [v1 containsString_];

    if (v13)
    {
LABEL_12:

      return;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_12;
    }

    v8 = *(v2 + 56 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1A85EE9C4(void *a1)
{
  v1 = a1;
  sub_1A85EE7EC();
  v3 = v2;

  return v3 & 1;
}

uint64_t sub_1A85EECB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A85EED04()
{
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1A85EED54()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___IMUnreadCountController_filteringControllerLock];
  os_unfair_lock_lock((v2 + 24));
  sub_1A85EEF48((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
  v3 = *&v0[OBJC_IVAR___IMUnreadCountController_state];
  os_unfair_lock_lock(v3 + 20);
  sub_1A8802284(&v3[4]);
  os_unfair_lock_unlock(v3 + 20);
  swift_getKeyPath();

  os_unfair_lock_lock((v2 + 24));
  sub_1A8802254((v2 + 16), aBlock);
  os_unfair_lock_unlock((v2 + 24));

  v4 = aBlock[0];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  aBlock[4] = sub_1A8801D98;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A85EB8C0;
  aBlock[3] = &unk_1F1BB1C00;
  v6 = _Block_copy(aBlock);
  v7 = v1;

  [v4 setRefreshHandler_];
  _Block_release(v6);
  return swift_unknownObjectRelease();
}

uint64_t sub_1A85EEF0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A85EEF48(void *a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  *a1 = v3;
  return swift_unknownObjectRetain();
}

IMDefaults *sub_1A85EF004()
{
  result = objc_alloc_init(IMDefaults);
  qword_1ED8CA298 = result;
  return result;
}

uint64_t sub_1A85EF0E4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1A85EF178(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_1A85FB018(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

BOOL IMIsRunningInFaceTime()
{
  if (qword_1ED8CA178 != -1)
  {
    sub_1A85EB3A8();
  }

  return qword_1EB30A9C8 == 6;
}

uint64_t sub_1A85EF3D4(void *a1)
{
  v1 = a1;
  v2 = sub_1A85EF954();

  return v2 & 1;
}

uint64_t sub_1A85EF408(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB306438);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A85EF4B0()
{
  result = qword_1ED8C8FB0;
  if (!qword_1ED8C8FB0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ED8C8FB0);
  }

  return result;
}

id sub_1A85EF500()
{
  v8 = *v0;
  v9 = v0[2];
  v10 = *(v0 + 6);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = [result isInternalInstall];

    if (v3)
    {
      v4 = "com.apple.Messages";
      v5 = 0xD000000000000013;
      if (v8 != 1)
      {
        v5 = 0xD000000000000011;
        v4 = "com.apple.MobileSMS";
      }

      if (v8)
      {
        v6 = v5;
      }

      else
      {
        v6 = 0xD000000000000012;
      }

      if (v8)
      {
        v7 = v4;
      }

      else
      {
        v7 = "";
      }

      (*(v0 + 5))(&v11, v6, v7 | 0x8000000000000000, *(v0 + 1), *(v0 + 2), &v9);

      return v11;
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A85EF60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_1A85F0608(a1, a2, a3, a4, *a5);
  *a6 = result;
  return result;
}

uint64_t sub_1A85EF638(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1A870CCE0(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A85EF698(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1A85EF758()
{
  if (IMIsRunningInMessages())
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  }

  else
  {
    v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.MobileSMS"];
  }

  qword_1ED8CA140 = v0;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A85EF7B8()
{
  if (qword_1ED8C9020 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1ED8C9030);
  v2 = v0;
  v3 = sub_1A88C7E38();
  v4 = sub_1A88C89A8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = [v2 debugDescription];
    v8 = sub_1A88C82E8();
    v10 = v9;

    v11 = sub_1A85F0394(v8, v10, &v14);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1A85E5000, v3, v4, "Starting path evaluator: %s", v5, 0xCu);
    sub_1A85F1084(v6);
    MEMORY[0x1AC571F20](v6, -1, -1);
    MEMORY[0x1AC571F20](v5, -1, -1);
  }

  v12 = *&v2[OBJC_IVAR___IMNetworkMonitor_evaluator];

  return MEMORY[0x1EEDD3E28](v12);
}

uint64_t sub_1A85EF954()
{
  v1 = v0;
  if (qword_1ED8C9230 != -1)
  {
    swift_once();
  }

  v10[0] = xmmword_1ED8C9238;
  v10[1] = unk_1ED8C9248;
  v10[2] = xmmword_1ED8C9258;
  v11 = qword_1ED8C9268;
  sub_1A85EF408(v10, v9);
  v2 = sub_1A85EF500();
  sub_1A85EF638(v10, &qword_1EB306438);
  result = [v1 _stripFZIDPrefix];
  if (result)
  {
    v4 = result;
    v5 = sub_1A88C82E8();
    v7 = v6;

    v9[0] = v5;
    v9[1] = v7;
    MEMORY[0x1EEE9AC00]();
    v8[2] = v9;
    LOBYTE(v4) = sub_1A85EF698(sub_1A87C49BC, v8, v2);

    if (v4)
    {
      return 1;
    }

    else
    {
      result = [v1 __im_isChatBotPatterned];
      if (result)
      {
        return [objc_opt_self() IMHandleIsChatBot_];
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A85EFAEC()
{
  LOBYTE(xmmword_1ED8C9238) = 1;
  *(&xmmword_1ED8C9238 + 1) = 0x6148746F42534352;
  unk_1ED8C9248 = 0xED000073656C646ELL;
  qword_1ED8C9250 = MEMORY[0x1E69E7CC0];
  *&xmmword_1ED8C9258 = MEMORY[0x1E69E7CC0];
  *(&xmmword_1ED8C9258 + 1) = sub_1A85EF60C;
  qword_1ED8C9268 = 0;
}

uint64_t *sub_1A85EFC04(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1A85EFC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v36 = a1;
  v33[0] = swift_getObjectType();
  v35 = sub_1A88C8A28();
  v6 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A88C8A18();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1A88C7EF8();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v34 = OBJC_IVAR___IMNetworkMonitor_queue;
  v11 = sub_1A85E9718(0, &qword_1ED8C95A0);
  v33[1] = "OnUltraConstrainedTierB";
  v33[2] = v11;
  _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A85E8C20(&qword_1ED8C9580, MEMORY[0x1E69E8030]);
  sub_1A870CCE0(&qword_1EB3023F0);
  sub_1A85E8C68(&qword_1ED8C9590, &qword_1EB3023F0);
  sub_1A88C8CE8();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8090], v35);
  v13 = v36;
  v12 = v37;
  *&v4[v34] = sub_1A88C8A78();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___IMNetworkMonitor_evaluator] = v13;
  v14 = &v4[OBJC_IVAR___IMNetworkMonitor_host];
  *v14 = v39;
  *(v14 + 1) = v12;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRetain_n();
  result = nw_path_evaluator_copy_path();
  if (result)
  {
    v16 = result;
    v17 = objc_allocWithZone(MEMORY[0x1E6964F80]);
    v18 = [v17 initAgentDataFromInternetPath_];
    sub_1A870CCE0(&unk_1EB3081E0);
    v19 = swift_allocObject();
    *(v19 + 36) = 0;
    swift_unknownObjectRetain_n();
    v20 = v18;

    *(v19 + 16) = v16;
    *(v19 + 24) = v20;
    *(v19 + 32) = 1;

    swift_unknownObjectRelease();
    *&v5[OBJC_IVAR___IMNetworkMonitor_state] = v19;
    v41.receiver = v5;
    v41.super_class = IMNetworkMonitor;
    v21 = objc_msgSendSuper2(&v41, sel_init);
    v22 = qword_1ED8C9020;
    v23 = v21;
    if (v22 != -1)
    {
      swift_once();
    }

    v24 = sub_1A88C7E58();
    sub_1A85EF0E4(v24, qword_1ED8C9030);
    v25 = v23;
    v26 = sub_1A88C7E38();
    v27 = sub_1A88C89A8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 67109120;
      v29 = [v25 isUltraConstrained];

      *(v28 + 4) = v29;
      _os_log_impl(&dword_1A85E5000, v26, v27, "    Initial IMNetworkMonitor configuration:\n    isUltraConstrained: %{BOOL}d", v28, 8u);
      MEMORY[0x1AC571F20](v28, -1, -1);
    }

    else
    {

      v26 = v25;
    }

    v30 = *(&v25->isa + OBJC_IVAR___IMNetworkMonitor_state);

    os_unfair_lock_lock(v30 + 9);
    sub_1A88736E8(&v30[4]);
    os_unfair_lock_unlock(v30 + 9);

    nw_path_evaluator_set_queue();
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1A8874818;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A8873B7C;
    aBlock[3] = &unk_1F1BB66D8;
    v32 = _Block_copy(aBlock);

    nw_path_evaluator_set_update_handler();
    _Block_release(v32);
    swift_unknownObjectRelease();
    sub_1A85EF7B8();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A85F022C()
{
  MEMORY[0x1AC571FF0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1A85F0394(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1A85F0F1C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1A85F1028(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1A85F1084(v11);
  return v7;
}

void sub_1A85F04B4()
{
  if (_os_feature_enabled_impl())
  {
    byte_1ED8C9AA0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1ED8C9AA0 = v0;
  }
}

unint64_t sub_1A85F0550()
{
  result = type metadata accessor for PrototypingSetting.DefaultsDomain();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_1A85EF4B0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A85F0608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1A88C82A8();
  v7 = sub_1A88C82A8();
  v8 = IMGetCachedDomainValueForKey();

  if (v8)
  {
    sub_1A88C8CB8();
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
    sub_1A85EF638(v13, &qword_1EB3057B0);
    goto LABEL_8;
  }

  sub_1A870CCE0(&qword_1EB303100);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    return a5;
  }

  return v10;
}

void sub_1A85F0710()
{
  if (_os_feature_enabled_impl())
  {
    byte_1ED8CA170 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1ED8CA170 = v0;
  }
}

uint64_t IMAdditionalContactsLoggingEnabled()
{
  if ([objc_msgSend(MEMORY[0x1E69A60F0] "sharedInstance")] && qword_1ED8CA290 != -1)
  {
    sub_1A85EFB44();
  }

  return byte_1ED8C9BF8;
}

void sub_1A85F07F4()
{
  v4 = *MEMORY[0x1E69E9840];
  byte_1ED8C9BF8 = IMGetDomainBoolForKeyWithDefaultValue();
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      if (byte_1ED8C9BF8)
      {
        v1 = @"YES";
      }

      else
      {
        v1 = @"NO";
      }

      v2 = 138412290;
      v3 = v1;
      _os_log_impl(&dword_1A85E5000, v0, OS_LOG_TYPE_INFO, "Additional Contacts logging is enabled %@", &v2, 0xCu);
    }
  }
}

id sub_1A85F0920(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  if (a2)
  {
    if (qword_1ED8C9020 != -1)
    {
      swift_once();
    }

    v6 = sub_1A88C7E58();
    sub_1A85EF0E4(v6, qword_1ED8C9030);

    v7 = sub_1A88C7E38();
    v8 = sub_1A88C89A8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v32 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1A85F0394(a1, v4, &v32);
      _os_log_impl(&dword_1A85E5000, v7, v8, "Configuring IMNetworkMonitor for reachability to %s", v9, 0xCu);
      sub_1A85F1084(v10);
      MEMORY[0x1AC571F20](v10, -1, -1);
      MEMORY[0x1AC571F20](v9, -1, -1);
    }

    v11 = sub_1A88C8358();
    nw_endpoint_create_host((v11 + 32), "0");
  }

  else
  {
    if (qword_1ED8C9020 != -1)
    {
      swift_once();
    }

    v13 = sub_1A88C7E58();
    sub_1A85EF0E4(v13, qword_1ED8C9030);
    v14 = sub_1A88C7E38();
    v15 = sub_1A88C89A8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1A85E5000, v14, v15, "Configuring IMNetworkMonitor for general network reachability", v16, 2u);
      MEMORY[0x1AC571F20](v16, -1, -1);
    }
  }

  MEMORY[0x1AC5712D0](v12);
  nw_parameters_set_allow_ultra_constrained();
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  if (evaluator_for_endpoint)
  {
    v18 = evaluator_for_endpoint;
    if (v4)
    {
      v4 = sub_1A88C82A8();
    }

    v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEvaluator:v18 remoteHost:v4 delegate:a3];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED8C9020 != -1)
    {
      swift_once();
    }

    v20 = sub_1A88C7E58();
    sub_1A85EF0E4(v20, qword_1ED8C9030);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v21 = sub_1A88C7E38();
    v22 = sub_1A88C89C8();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315394;
      swift_unknownObjectRetain();
      sub_1A870CCE0(&qword_1EB3082C0);
      v25 = sub_1A88C8338();
      v27 = sub_1A85F0394(v25, v26, &v32);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      swift_unknownObjectRetain();
      sub_1A870CCE0(&qword_1EB3082C8);
      v28 = sub_1A88C8338();
      v30 = sub_1A85F0394(v28, v29, &v32);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_1A85E5000, v21, v22, "    Unable to create path evaluator for endpoint     %s, parameters %s.     Check for logs from the Network library to determine the underlying error.", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC571F20](v24, -1, -1);
      MEMORY[0x1AC571F20](v23, -1, -1);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return v19;
}

uint64_t sub_1A85F0DC4()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1ED8C9030);
  sub_1A85EF0E4(v0, qword_1ED8C9030);
  return sub_1A88C7E48();
}

id sub_1A85F0ED8()
{
  if (qword_1ED8CA138 != -1)
  {
    sub_1A85F0EC4();
  }

  v1 = qword_1ED8CA140;

  return v1;
}

unint64_t sub_1A85F0F1C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1A8736820(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1A88C8EB8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1A85F1028(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1A85F1084(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1A85F1144()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___IMUnreadCountController_state];
  os_unfair_lock_lock((v2 + 80));
  sub_1A8801D48((v2 + 16), &v5);
  os_unfair_lock_unlock((v2 + 80));
  v3 = v5;
  if (*(v5 + 2))
  {
    os_unfair_lock_lock((v2 + 80));
    sub_1A87FE298(v2 + 16, v3, v3, v1);
    os_unfair_lock_unlock((v2 + 80));
  }
}

uint64_t sub_1A85F11E8(uint64_t a1)
{
  result = MEMORY[0x1AC56F1E0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
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

    sub_1A85FB018(&v13, v11, v12);
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

uint64_t sub_1A85F1304(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v53 = 0;
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_1A88C9528();

    sub_1A88C8268();
    v23 = sub_1A88C9578();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_1A88C9398() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x1EEE9AC00](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_1A88BA9DC(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_1A88C9528();

            sub_1A88C8268();
            v41 = sub_1A88C9578();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_1A88C9398() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_1A8737374(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x1AC571F20](v50, -1, -1);
    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_1A85EF290();
    return v5;
  }

  result = MEMORY[0x1AC571F20](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1A85F1874(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1A85F1B30(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_1A85F1C3C(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (*(result + 48) + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_1A85F1B30((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (*(result + 48) + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_1A85EF290();
  *v1 = v4;
  return result;
}

char *sub_1A85F1B30(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A870CCE0(&unk_1EB306530);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_1A85F1C3C(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_1A85F1D94()
{
  v0 = sub_1A85F2ED8();
  v1 = *(v0 + 16);
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    v2 = v0;
    sub_1A85F31E8(0, v1, 0);
    v3 = v2;
    v4 = v11;
    v5 = *(v11 + 16);
    v6 = 32;
    do
    {
      v7 = *(v3 + v6);
      v8 = *(v11 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_1A85F31E8((v8 > 1), v5 + 1, 1);
        v3 = v2;
      }

      *(v11 + 16) = v5 + 1;
      *(v11 + 8 * v5 + 32) = v7;
      v6 += 8;
      ++v5;
      --v1;
    }

    while (v1);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1A85F330C(v4);

  return v9;
}

void *sub_1A85F1F80(uint64_t a1, uint64_t a2)
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

  sub_1A870CCE0(&qword_1EB303098);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

void *sub_1A85F220C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

IMSingletonProxy *sub_1A85F222C()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = byte_1EB309311;
  v2 = IMLogHandleForCategory("IMSingletonLog");
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);
  if (v1 == 1)
  {
    if (v3)
    {
      sub_1A88C4EE8();
    }

    v4 = [[IMSingletonProxy alloc] initWithSingleton:v0 singletonOverride:0];
  }

  else
  {
    if (v3)
    {
      sub_1A88C4E58();
    }

    v4 = v0;
  }

  v5 = v4;

  return v5;
}

const void *IMLogHandleForCategory(const void *a1)
{
  if (qword_1ED8CA280 != -1)
  {
    sub_1A85F238C();
  }

  pthread_mutex_lock(&stru_1ED8CA1F0);
  Value = CFDictionaryGetValue(qword_1ED8CA1E8, a1);
  if (!Value)
  {
    Value = os_log_create(IMMessagesLoggingSubSystem, a1);
    CFDictionarySetValue(qword_1ED8CA1E8, a1, Value);
  }

  pthread_mutex_unlock(&stru_1ED8CA1F0);
  return Value;
}

CFMutableDictionaryRef sub_1A85F23A0()
{
  pthread_mutex_init(&stru_1ED8CA1F0, 0);
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  qword_1ED8CA1E8 = result;
  return result;
}

uint64_t sub_1A85F2ED8()
{
  sub_1A870CCE0(&qword_1EB303D20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A88E14F0;
  *(v0 + 32) = 2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [ObjCClassFromMetadata filteringKeySet];
  v3 = [v2 BOOLValue];

  if ((v3 & 1) != 0 || [ObjCClassFromMetadata isFilterUnknownSendersEnabled])
  {
    v4 = [objc_opt_self() sharedFeatureFlags];
    v5 = [v4 isPriorityMessagesEnabled];

    if (v5)
    {
      sub_1A8734D90(&unk_1F1BAA0D0);
    }

    else
    {
      if ([ObjCClassFromMetadata hideUnknownSenders])
      {
        v0 = sub_1A8736180(1, 2, 1, v0);
        *(v0 + 16) = 2;
        *(v0 + 40) = 1;
      }

      if ([ObjCClassFromMetadata hideTransactionalMessages])
      {
        v7 = *(v0 + 16);
        v6 = *(v0 + 24);
        v8 = v7 + 1;
        if (v7 >= v6 >> 1)
        {
          v13 = v7 + 1;
          v12 = sub_1A8736180((v6 > 1), v7 + 1, 1, v0);
          v8 = v7 + 1;
          v0 = v12;
        }

        *(v0 + 16) = v8;
        *(v0 + 8 * v7 + 32) = 4;
      }

      if ([ObjCClassFromMetadata hidePromotionalMessages])
      {
        v10 = *(v0 + 16);
        v9 = *(v0 + 24);
        if (v10 >= v9 >> 1)
        {
          v0 = sub_1A8736180((v9 > 1), v10 + 1, 1, v0);
        }

        *(v0 + 16) = v10 + 1;
        *(v0 + 8 * v10 + 32) = 3;
      }
    }
  }

  return v0;
}

uint64_t sub_1A85F30F0()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isIntroductionsEnabled];

  if (!v1)
  {
    return 0;
  }

  v2 = @"com.apple.MobileSMS";
  v3 = sub_1A88C82A8();
  IMSyncedSettingsKey.defaultValue.getter(4, &v6);
  swift_dynamicCast();
  v4 = IMGetDomainBoolForKeyWithDefaultValue();

  return v4;
}

char *sub_1A85F31E8(char *a1, int64_t a2, char a3)
{
  result = sub_1A85F3208(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A85F3208(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A870CCE0(&qword_1EB303478);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_1A85F330C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    sub_1A88C8F08();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      sub_1A88C8958();
      sub_1A88C8ED8();
      sub_1A88C8F18();
      sub_1A88C8F28();
      sub_1A88C8EE8();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

void sub_1A85F34EC(uint64_t a1, __CFString *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) objectForKey:a2])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 40);
        v6 = [*(a1 + 32) objectForKey:a2];
        v11 = 138412802;
        v12 = a2;
        v13 = 2112;
        v14 = v5;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Can't register UTIType %@ for class %@. It is already registered for %@. Please file a bug.", &v11, 0x20u);
      }
    }
  }

  [*(a1 + 32) setObject:*(a1 + 40) forKey:a2];
  if ([(__CFString *)a2 hasPrefix:@"dyn."])
  {
    v7 = UTTypeCopyPreferredTagWithClass(a2, *MEMORY[0x1E6963710]);
    v8 = [(__CFString *)v7 lowercaseString];
    if ([*(a1 + 48) objectForKey:v8] && IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [*(a1 + 48) objectForKey:v8];
        v11 = 138412802;
        v12 = v8;
        v13 = 2112;
        v14 = a2;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Can't register extension %@ for UTIType %@. It is already registered for %@. Please file a bug.", &v11, 0x20u);
      }
    }

    [*(a1 + 48) setObject:a2 forKey:v8];
  }
}

uint64_t IMWorkoutUTITypes()
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], @"workout", 0);
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v1 count:1];
}

void *sub_1A85F3A4C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1A85F3EC4@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (a1[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  result = (*(v2 + 16))(v5 | *a1 | v4);
  *a2 = result & 1;
  return result;
}

uint64_t IMClientTelemetryLogHandle()
{
  if (qword_1ED8C9850 != -1)
  {
    sub_1A85F3F70();
  }

  return qword_1ED8C9848;
}

os_log_t sub_1A85F3F84()
{
  result = os_log_create("com.apple.Messages.telemetry", "MobileSMS");
  qword_1ED8C9848 = result;
  return result;
}

id IMSHA1HashFromStrings(void *a1)
{
  v1 = [a1 sortedArrayUsingSelector:sel_compare_];
  v2 = [v1 componentsJoinedByString:{@", "}];
  v3 = [v2 dataUsingEncoding:4];
  v4 = [v3 SHA1HexString];

  return v4;
}

BOOL IMIsRunningInSafari()
{
  if (qword_1ED8CA178 != -1)
  {
    sub_1A85EB3A8();
  }

  return qword_1EB30A9C8 == 7;
}

BOOL IMIsRunningInSOSBuddy()
{
  if (qword_1ED8CA178 != -1)
  {
    sub_1A85EB3A8();
  }

  return qword_1EB30A9C8 == 9;
}

void sub_1A85F40F4()
{
  if (IMGetCachedDomainBoolForKeyWithDefaultValue())
  {
    byte_1ED8C9F48 = 0;
  }

  else if (_os_feature_enabled_impl())
  {
    byte_1ED8C9F48 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1ED8C9F48 = v0;
  }
}

void sub_1A85F4300()
{
  if (!qword_1ED8CA1B0)
  {
    v0 = MEMORY[0x1AC570AB0]("CNContactIdentifierKey", @"Contacts");
    v1 = v0 ? *v0 : 0;
    objc_storeStrong(&qword_1ED8CA1B0, v1);
    if (!qword_1ED8CA1B0)
    {
      v2 = MEMORY[0x1E696AEC0];
      v3 = IMFileLocationTrimFileName();
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1BB91F0];
      v5 = [v2 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"kIMCNContactIdentifierKey", "void SetupContactKeysIfNeeded(void)_block_invoke", v3, 280, v4];

      v6 = IMGetAssertionFailureHandler();
      if (v6)
      {
        v6(v5);
      }

      else
      {
        v7 = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C375C();
        }
      }
    }
  }

  if (!qword_1ED8CA198)
  {
    v8 = MEMORY[0x1AC570AB0]("CNContactLinkIdentifierKey", @"Contacts");
    v9 = v8 ? *v8 : 0;
    objc_storeStrong(&qword_1ED8CA198, v9);
    if (!qword_1ED8CA198)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = IMFileLocationTrimFileName();
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1BB91F0];
      v13 = [v10 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"kIMCNContactLinkIdentifierKey", "void SetupContactKeysIfNeeded(void)_block_invoke", v11, 283, v12];

      v14 = IMGetAssertionFailureHandler();
      if (v14)
      {
        v14(v13);
      }

      else
      {
        v15 = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C375C();
        }
      }
    }
  }

  if (!qword_1ED8CA190)
  {
    v16 = MEMORY[0x1AC570AB0]("CNContactPhoneNumbersKey", @"Contacts");
    v17 = v16 ? *v16 : 0;
    objc_storeStrong(&qword_1ED8CA190, v17);
    if (!qword_1ED8CA190)
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = IMFileLocationTrimFileName();
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1BB91F0];
      v21 = [v18 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"kIMCNContactPhoneNumbersKey", "void SetupContactKeysIfNeeded(void)_block_invoke", v19, 286, v20];

      v22 = IMGetAssertionFailureHandler();
      if (v22)
      {
        v22(v21);
      }

      else
      {
        v23 = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C375C();
        }
      }
    }
  }

  if (!qword_1ED8CA1B8)
  {
    v24 = MEMORY[0x1AC570AB0]("CNContactEmailAddressesKey", @"Contacts");
    v25 = v24 ? *v24 : 0;
    objc_storeStrong(&qword_1ED8CA1B8, v25);
    if (!qword_1ED8CA1B8)
    {
      v26 = MEMORY[0x1E696AEC0];
      v27 = IMFileLocationTrimFileName();
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1BB91F0];
      v29 = [v26 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"kIMCNContactEmailAddressesKey", "void SetupContactKeysIfNeeded(void)_block_invoke", v27, 289, v28];

      v30 = IMGetAssertionFailureHandler();
      if (v30)
      {
        v30(v29);
      }

      else
      {
        v31 = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C375C();
        }
      }
    }
  }

  if (!qword_1ED8CA1A8)
  {
    v32 = MEMORY[0x1AC570AB0]("CNContactImageDataAvailableKey", @"Contacts");
    v33 = v32 ? *v32 : 0;
    objc_storeStrong(&qword_1ED8CA1A8, v33);
    if (!qword_1ED8CA1A8)
    {
      v34 = MEMORY[0x1E696AEC0];
      v35 = IMFileLocationTrimFileName();
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1BB91F0];
      v37 = [v34 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"kIMCNContactImageDataAvailableKey", "void SetupContactKeysIfNeeded(void)_block_invoke", v35, 292, v36];

      v38 = IMGetAssertionFailureHandler();
      if (v38)
      {
        v38(v37);
      }

      else
      {
        v39 = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C375C();
        }
      }
    }
  }

  if (!qword_1ED8CA1A0)
  {
    v40 = MEMORY[0x1AC570AB0]("CNContactImageDataKey", @"Contacts");
    v41 = v40 ? *v40 : 0;
    objc_storeStrong(&qword_1ED8CA1A0, v41);
    if (!qword_1ED8CA1A0)
    {
      v42 = MEMORY[0x1E696AEC0];
      v43 = IMFileLocationTrimFileName();
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1BB91F0];
      v45 = [v42 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"kIMCNContactImageDataKey", "void SetupContactKeysIfNeeded(void)_block_invoke", v43, 295, v44];

      v46 = IMGetAssertionFailureHandler();
      if (v46)
      {
        v46(v45);
      }

      else
      {
        v47 = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C375C();
        }
      }
    }
  }

  if (!qword_1ED8CA188)
  {
    v48 = MEMORY[0x1AC570AB0]("CNContactThumbnailImageDataKey", @"Contacts");
    v49 = v48 ? *v48 : 0;
    objc_storeStrong(&qword_1ED8CA188, v49);
    if (!qword_1ED8CA188)
    {
      v50 = MEMORY[0x1E696AEC0];
      v51 = IMFileLocationTrimFileName();
      v52 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1BB91F0];
      v53 = [v50 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"kIMCNContactThumbnailImageDataKey", "void SetupContactKeysIfNeeded(void)_block_invoke", v51, 298, v52];

      v54 = IMGetAssertionFailureHandler();
      if (v54)
      {
        v54(v53);
      }

      else
      {
        v55 = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C375C();
        }
      }
    }
  }

  if (!qword_1ED8CA1C0)
  {
    v56 = MEMORY[0x1AC570AB0]("CNContactCropRectKey", @"Contacts");
    v57 = v56 ? *v56 : 0;
    objc_storeStrong(&qword_1ED8CA1C0, v57);
    if (!qword_1ED8CA1C0)
    {
      v58 = MEMORY[0x1E696AEC0];
      v59 = IMFileLocationTrimFileName();
      v60 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1BB91F0];
      v61 = [v58 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"kIMCNContactCropRectKey", "void SetupContactKeysIfNeeded(void)_block_invoke", v59, 301, v60];

      v62 = IMGetAssertionFailureHandler();
      if (v62)
      {
        v62(v61);
      }

      else
      {
        v63 = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C375C();
        }
      }
    }
  }

  if (!qword_1ED8CA150)
  {
    v64 = MEMORY[0x1AC570AB0]("CNContactWallpaperKey", @"Contacts");
    v65 = v64 ? *v64 : 0;
    objc_storeStrong(&qword_1ED8CA150, v65);
    if (!qword_1ED8CA150)
    {
      v66 = MEMORY[0x1E696AEC0];
      v67 = IMFileLocationTrimFileName();
      v68 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1BB91F0];
      v69 = [v66 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"kIMCNContactWallpaperKey", "void SetupContactKeysIfNeeded(void)_block_invoke", v67, 304, v68];

      v70 = IMGetAssertionFailureHandler();
      if (v70)
      {
        v70(v69);
      }

      else
      {
        v71 = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C375C();
        }
      }
    }
  }

  if (!qword_1ED8CA148)
  {
    v72 = MEMORY[0x1AC570AB0]("CNContactWatchWallpaperImageDataKey", @"Contacts");
    v73 = v72 ? *v72 : 0;
    objc_storeStrong(&qword_1ED8CA148, v73);
    if (!qword_1ED8CA148)
    {
      v74 = MEMORY[0x1E696AEC0];
      v75 = IMFileLocationTrimFileName();
      v76 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1BB91F0];
      v77 = [v74 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"kIMCNContactWatchWallpaperImageDataKey", "void SetupContactKeysIfNeeded(void)_block_invoke", v75, 307, v76];

      v78 = IMGetAssertionFailureHandler();
      if (v78)
      {
        v78(v77);
      }

      else
      {
        v79 = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C375C();
        }
      }
    }
  }

  if (!qword_1ED8CA160)
  {
    v80 = MEMORY[0x1AC570AB0]("CNContactImageBackgroundColorsDataKey", @"Contacts");
    v81 = v80 ? *v80 : 0;
    objc_storeStrong(&qword_1ED8CA160, v81);
    if (!qword_1ED8CA160)
    {
      v82 = MEMORY[0x1E696AEC0];
      v83 = IMFileLocationTrimFileName();
      v84 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1BB91F0];
      v85 = [v82 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"kIMCNContactImageBackgroundColorsDataKey", "void SetupContactKeysIfNeeded(void)_block_invoke", v83, 310, v84];

      v86 = IMGetAssertionFailureHandler();
      if (v86)
      {
        v86(v85);
      }

      else
      {
        v87 = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C375C();
        }
      }
    }
  }

  if (!qword_1ED8CA158)
  {
    v88 = MEMORY[0x1AC570AB0]("CNContactSensitiveContentConfigurationKey", @"Contacts");
    v89 = v88 ? *v88 : 0;
    objc_storeStrong(&qword_1ED8CA158, v89);
    if (!qword_1ED8CA158)
    {
      v90 = MEMORY[0x1E696AEC0];
      v91 = IMFileLocationTrimFileName();
      v92 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1BB91F0];
      v93 = [v90 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"kIMCNContactSensitiveContentConfigurationKey", "void SetupContactKeysIfNeeded(void)_block_invoke", v91, 313, v92];

      v94 = IMGetAssertionFailureHandler();
      if (v94)
      {
        v94(v93);
      }

      else
      {
        v95 = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C375C();
        }
      }
    }
  }

  if (!qword_1ED8C9BB0)
  {
    v96 = MEMORY[0x1AC570AB0]("CNContactAvatarRecipeDataKey", @"Contacts");
    v97 = v96 ? *v96 : 0;
    objc_storeStrong(&qword_1ED8C9BB0, v97);
    if (!qword_1ED8C9BB0)
    {
      v98 = MEMORY[0x1E696AEC0];
      v99 = IMFileLocationTrimFileName();
      v100 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1BB91F0];
      v101 = [v98 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"kIMCNContactAvatarRecipeDataKey", "void SetupContactKeysIfNeeded(void)_block_invoke", v99, 316, v100];

      v102 = IMGetAssertionFailureHandler();
      if (v102)
      {
        v102(v101);
      }

      else
      {
        v103 = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C375C();
        }
      }
    }
  }
}

BOOL IMIsRunningInSafariSandboxBroker()
{
  if (qword_1ED8CA178 != -1)
  {
    sub_1A85EB3A8();
  }

  return qword_1EB30A9C8 == 8;
}

void sub_1A85F5284()
{
  qword_1ED8CA260 = MEMORY[0x1AC570AA0](@"CNContactFormatter", @"Contacts");
  if (!qword_1ED8CA260)
  {
    v0 = MEMORY[0x1E696AEC0];
    v1 = IMFileLocationTrimFileName();
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1BB91F0];
    v3 = [v0 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"IMCNContactFormatterClass", "void SetupContactClassesIfNeeded(void)_block_invoke", v1, 249, v2];

    v4 = IMGetAssertionFailureHandler();
    if (v4)
    {
      v4(v3);
    }

    else
    {
      v5 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C375C();
      }
    }
  }

  qword_1ED8CA268 = MEMORY[0x1AC570AA0](@"CNContactFetchRequest", @"Contacts");
  if (!qword_1ED8CA268)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = IMFileLocationTrimFileName();
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1BB91F0];
    v9 = [v6 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"IMCNContactFetchRequestClass", "void SetupContactClassesIfNeeded(void)_block_invoke", v7, 252, v8];

    v10 = IMGetAssertionFailureHandler();
    if (v10)
    {
      v10(v9);
    }

    else
    {
      v11 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C375C();
      }
    }
  }

  qword_1ED8CA248 = MEMORY[0x1AC570AA0](@"CNMutableContact", @"Contacts");
  if (!qword_1ED8CA248)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = IMFileLocationTrimFileName();
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1BB91F0];
    v15 = [v12 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"IMCNMutableContactClass", "void SetupContactClassesIfNeeded(void)_block_invoke", v13, 255, v14];

    v16 = IMGetAssertionFailureHandler();
    if (v16)
    {
      v16(v15);
    }

    else
    {
      v17 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C375C();
      }
    }
  }

  qword_1ED8CA250 = MEMORY[0x1AC570AA0](@"CNLabeledValue", @"Contacts");
  if (!qword_1ED8CA250)
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = IMFileLocationTrimFileName();
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1BB91F0];
    v21 = [v18 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"IMCNLabeledValueClass", "void SetupContactClassesIfNeeded(void)_block_invoke", v19, 258, v20];

    v22 = IMGetAssertionFailureHandler();
    if (v22)
    {
      v22(v21);
    }

    else
    {
      v23 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C375C();
      }
    }
  }

  qword_1ED8CA240 = MEMORY[0x1AC570AA0](@"CNPhoneNumber", @"Contacts");
  if (!qword_1ED8CA240)
  {
    v24 = MEMORY[0x1E696AEC0];
    v25 = IMFileLocationTrimFileName();
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1BB91F0];
    v27 = [v24 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"IMCNPhoneNumberClass", "void SetupContactClassesIfNeeded(void)_block_invoke", v25, 261, v26];

    v28 = IMGetAssertionFailureHandler();
    if (v28)
    {
      v28(v27);
    }

    else
    {
      v29 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C375C();
      }
    }
  }

  qword_1ED8CA270 = MEMORY[0x1AC570AA0](@"CNChangeHistoryFetchRequest", @"Contacts");
  if (!qword_1ED8CA270)
  {
    v30 = MEMORY[0x1E696AEC0];
    v31 = IMFileLocationTrimFileName();
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1BB91F0];
    v33 = [v30 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"IMCNChangeHistoryFetchRequestClass", "void SetupContactClassesIfNeeded(void)_block_invoke", v31, 264, v32];

    v34 = IMGetAssertionFailureHandler();
    if (v34)
    {
      v34(v33);
    }

    else
    {
      v35 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C375C();
      }
    }
  }

  qword_1ED8CA288 = MEMORY[0x1AC570AA0](@"CNMeCardSharingPickerViewController", @"ContactsUI");
  if (!qword_1ED8CA288)
  {
    v36 = MEMORY[0x1E696AEC0];
    v37 = IMFileLocationTrimFileName();
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1BB91F0];
    v39 = [v36 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"IMCNMeCardSharingPickerViewControllerClass", "void SetupContactClassesIfNeeded(void)_block_invoke", v37, 267, v38];

    v40 = IMGetAssertionFailureHandler();
    if (v40)
    {
      v40(v39);
    }

    else
    {
      v41 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C375C();
      }
    }
  }

  qword_1ED8CA258 = MEMORY[0x1AC570AA0](@"CNGeminiManager", @"Contacts");
  if (!qword_1ED8CA258)
  {
    v42 = MEMORY[0x1E696AEC0];
    v43 = IMFileLocationTrimFileName();
    v44 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1BB91F0];
    v45 = [v42 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"IMCNGeminiManagerClass", "void SetupContactClassesIfNeeded(void)_block_invoke", v43, 271, v44];

    v46 = IMGetAssertionFailureHandler();
    if (v46)
    {
      v46(v45);
    }

    else
    {
      v47 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C375C();
      }
    }
  }
}

BOOL sub_1A85F5C04()
{
  v1 = *(v0 + OBJC_IVAR___IMUnlockMonitor_state);
  swift_getKeyPath();

  os_unfair_lock_lock((v1 + 20));
  sub_1A85F3EAC((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 20));

  v2 = v4;

  return (v2 & 1) == 0;
}

uint64_t sub_1A85F5D18(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = sub_1A88C85F8();
  v7 = a1;
  v8 = a4(v6);

  return v8;
}

char *sub_1A85F5D80()
{
  v1 = *(v0 + OBJC_IVAR___IMUnreadCountController_state);
  os_unfair_lock_lock(v1 + 20);
  sub_1A880226C(&v1[4], &v16);
  os_unfair_lock_unlock(v1 + 20);
  v2 = v16;
  if (v16 >> 62)
  {
    goto LABEL_17;
  }

  v3 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    result = sub_1A85F31E8(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = v16;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1AC56F710](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 unreadCount];

      v16 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1A85F31E8((v10 > 1), v11 + 1, 1);
        v6 = v16;
      }

      ++v5;
      *(v6 + 16) = v11 + 1;
      *(v6 + 8 * v11 + 32) = v9;
    }

    while (v3 != v5);

    v12 = *(v6 + 16);
    if (!v12)
    {
      break;
    }

    while (1)
    {
      v2 = 0;
      v13 = (v6 + 32);
      while (1)
      {
        v14 = *v13++;
        v15 = __OFADD__(v2, v14);
        v2 += v14;
        if (v15)
        {
          break;
        }

        if (!--v12)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      v3 = sub_1A88C8D38();
      if (v3)
      {
        break;
      }

LABEL_18:

      v6 = MEMORY[0x1E69E7CC0];
      v12 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v12)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_19:
  v2 = 0;
LABEL_20:

  return v2;
}

unint64_t sub_1A85F5F40(uint64_t a1, uint64_t a2)
{
  sub_1A88C9528();
  sub_1A88C8268();
  v4 = sub_1A88C9578();

  return sub_1A85F5FB8(a1, a2, v4);
}

unint64_t sub_1A85F5FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1A88C9398())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_1A85F713C(void *a1)
{
  v1 = a1;
  v2 = sub_1A88C82A8();
  v3 = [v1 hasPrefix_];

  return v3;
}

void sub_1A85F7444(uint64_t a1)
{
  v5 = [*(a1 + 32) overrideDatesByHandleID];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1A85F7624(uint64_t a1, int token)
{
  v34 = *MEMORY[0x1E69E9840];
  state64 = 0;
  state = notify_get_state(token, &state64);
  v4 = IMOSLoggingEnabled();
  if (state)
  {
    if (!v4)
    {
      return;
    }

    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v21) = state;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "LQM-WRM Failed to get the state for com.apple.WRM.iRAT_event.linkRecommendation (%u)", buf, 8u);
    }

    goto LABEL_13;
  }

  if (v4)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v21 = state64;
      _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "LQM-WRM WRM notification 0x%llx", buf, 0xCu);
    }
  }

  v7 = state64;
  v8 = BYTE1(state64);
  v9 = BYTE2(state64);
  v10 = BYTE3(state64);
  v11 = BYTE4(state64);
  v12 = BYTE5(state64);
  v13 = [MEMORY[0x1E696AD98] numberWithInt:state64];
  v15 = *(a1 + 32);
  v14 = a1 + 32;
  v16 = *(v15 + 80);
  *(v15 + 80) = v13;

  v17 = [MEMORY[0x1E696AD98] numberWithInt:v10];
  v18 = *(*v14 + 72);
  *(*v14 + 72) = v17;

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134219520;
      v21 = state64;
      v22 = 1024;
      v23 = v7;
      v24 = 1024;
      v25 = v8;
      v26 = 1024;
      v27 = v9;
      v28 = 1024;
      v29 = v10;
      v30 = 1024;
      v31 = v11;
      v32 = 1024;
      v33 = v12;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "LQM-WRM Link incoming 0x%llx  xpref %d wifi score %d confidence %d cell score %d confidence %d is5GAvailable %d", buf, 0x30u);
    }

LABEL_13:
  }
}

__CFString *sub_1A85F7A64(void *a1)
{
  v1 = [a1 lastPathComponent];
  if ([v1 isEqualToString:@".."])
  {
    return &stru_1F1BB91F0;
  }

  else
  {
    return v1;
  }
}

uint64_t IMAdditionalChatRegistryLoggingEnabled()
{
  if ([objc_msgSend(MEMORY[0x1E69A60F0] "sharedInstance")] && qword_1ED8C99D0 != -1)
  {
    sub_1A85F7B6C();
  }

  return byte_1EB30A960;
}

void sub_1A85F7B80()
{
  v4 = *MEMORY[0x1E69E9840];
  byte_1EB30A960 = IMGetDomainBoolForKeyWithDefaultValue();
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      if (byte_1EB30A960)
      {
        v1 = @"YES";
      }

      else
      {
        v1 = @"NO";
      }

      v2 = 138412290;
      v3 = v1;
      _os_log_impl(&dword_1A85E5000, v0, OS_LOG_TYPE_INFO, "Additional Chat Registry logging is enabled %@", &v2, 0xCu);
    }
  }
}

uint64_t IMCopyAnyServiceGUIDForChat()
{
  [+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags isOneChatEnabled];

  return IMCopyGUIDForChat();
}

void sub_1A85F7D2C()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30A4B8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A4B8 = v0;
  }
}

void sub_1A85F7E1C()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30A990 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A990 = v0;
  }
}

id IMAnyServiceGUIDFromLegacyChatGUID(void *a1)
{
  if (-[IMFeatureFlags isOneChatEnabled](+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags, "sharedFeatureFlags"), "isOneChatEnabled") && [a1 __im_isParseableChatGUID])
  {
    IMComponentsFromChatGUID();
    return IMCopyGUIDForChat();
  }

  return a1;
}

BOOL sub_1A85F7F60(void *a1)
{
  v1 = a1;
  v2 = [v1 UTF8String];
  if (v2 && (v3 = *v2, *v2))
  {
    v4 = 0;
    v5 = v2 + 1;
    do
    {
      if (v3 == 59)
      {
        ++v4;
      }

      v6 = *v5++;
      v3 = v6;
      if (v6)
      {
        v7 = v4 >= 2;
      }

      else
      {
        v7 = 1;
      }
    }

    while (!v7);
    v8 = v4 > 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1A85F8244()
{
  v0 = objc_alloc(MEMORY[0x1E696AD40]);
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObject:&unk_1F1BFA5E0 forKey:*MEMORY[0x1E69A5FD8]];
  v4 = [v0 initWithString:@" " attributes:v1];

  v2 = [v4 attributesAtIndex:0 effectiveRange:0];
  v3 = qword_1ED8C99F0;
  qword_1ED8C99F0 = v2;
}

uint64_t sub_1A85F836C(void *a1)
{
  if (![a1 length])
  {
    return 0;
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [a1 length];
  v3 = *MEMORY[0x1E69A5FD8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A85F8460;
  v6[3] = &unk_1E7826720;
  v6[4] = &v7;
  [a1 enumerateAttribute:v3 inRange:0 options:v2 usingBlock:{0, v6}];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_1A85F8448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A85F85A0()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B2B0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B2B0 = v0;
  }
}

void sub_1A85F8650()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30A978 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A978 = v0;
  }
}

uint64_t IMSharedHelperAreObjectsLogicallySame(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if ((a1 || !a2) && (!a1 || a2))
  {
    return [a1 isEqual:a2];
  }

  return 0;
}

id IMBrandInfo.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A88C82E8();
  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

  v6 = sub_1A85F5F40(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_1A85F1028(*(a1 + 56) + 32 * v6, v64);

  sub_1A870CCE0(&unk_1EB3091D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if (!v63[2] || (v9 = sub_1A85F5F40(0x495255646E617262, 0xE800000000000000), (v10 & 1) == 0) || (sub_1A85F1028(v63[7] + 32 * v9, v64), (swift_dynamicCast() & 1) == 0))
  {
LABEL_15:

    goto LABEL_16;
  }

  if (!v63[2] || (v11 = sub_1A85F5F40(1701667182, 0xE400000000000000), (v12 & 1) == 0) || (sub_1A85F1028(v63[7] + 32 * v11, v64), (swift_dynamicCast() & 1) == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  if (v63[2] && (v13 = sub_1A85F5F40(0x6966697265567369, 0xEA00000000006465), (v14 & 1) != 0) && (sub_1A85F1028(v63[7] + 32 * v13, v64), sub_1A85E9718(0, &qword_1ED8C9450), (swift_dynamicCast() & 1) != 0))
  {
    v62 = [v63 BOOLValue];
  }

  else
  {
    v62 = 0;
  }

  v61 = sub_1A88C82A8();

  v60 = sub_1A88C82A8();

  if (v63[2] && (v16 = sub_1A85F5F40(0x69726F6765746163, 0xEA00000000007365), (v17 & 1) != 0) && (sub_1A85F1028(v63[7] + 32 * v16, v64), sub_1A870CCE0(&qword_1EB303100), (swift_dynamicCast() & 1) != 0))
  {
    v59 = sub_1A88C85E8();
  }

  else
  {
    v59 = 0;
  }

  if (v63[2] && (v18 = sub_1A85F5F40(0xD000000000000012, 0x80000001A891C420), (v19 & 1) != 0) && (sub_1A85F1028(v63[7] + 32 * v18, v64), (swift_dynamicCast() & 1) != 0))
  {
    v58 = sub_1A88C82A8();
  }

  else
  {
    v58 = 0;
  }

  if (v63[2] && (v20 = sub_1A85F5F40(0xD00000000000001ALL, 0x80000001A891C440), (v21 & 1) != 0) && (sub_1A85F1028(v63[7] + 32 * v20, v64), (swift_dynamicCast() & 1) != 0))
  {
    v57 = sub_1A88C82A8();
  }

  else
  {
    v57 = 0;
  }

  if (v63[2] && (v22 = sub_1A85F5F40(0xD00000000000001CLL, 0x80000001A891C460), (v23 & 1) != 0) && (sub_1A85F1028(v63[7] + 32 * v22, v64), (swift_dynamicCast() & 1) != 0))
  {
    v56 = sub_1A88C82A8();
  }

  else
  {
    v56 = 0;
  }

  if (v63[2] && (v24 = sub_1A85F5F40(0xD000000000000014, 0x80000001A8918500), (v25 & 1) != 0) && (sub_1A85F1028(v63[7] + 32 * v24, v64), (swift_dynamicCast() & 1) != 0))
  {
    v55 = sub_1A88C82A8();
  }

  else
  {
    v55 = 0;
  }

  if (v63[2] && (v26 = sub_1A85F5F40(0x6465696669726576, 0xEA00000000007942), (v27 & 1) != 0) && (sub_1A85F1028(v63[7] + 32 * v26, v64), (swift_dynamicCast() & 1) != 0))
  {
    v54 = sub_1A88C82A8();
  }

  else
  {
    v54 = 0;
  }

  if (v63[2] && (v28 = sub_1A85F5F40(0x65746973626577, 0xE700000000000000), (v29 & 1) != 0) && (sub_1A85F1028(v63[7] + 32 * v28, v64), (swift_dynamicCast() & 1) != 0))
  {
    v30 = sub_1A88C82A8();
  }

  else
  {
    v30 = 0;
  }

  if (v63[2] && (v31 = sub_1A85F5F40(0x4E6567617373656DLL, 0xED00007265626D75), (v32 & 1) != 0) && (sub_1A85F1028(v63[7] + 32 * v31, v64), (swift_dynamicCast() & 1) != 0))
  {
    v33 = sub_1A88C82A8();
  }

  else
  {
    v33 = 0;
  }

  if (v63[2] && (v34 = sub_1A85F5F40(0x6464416C69616D65, 0xEC00000073736572), (v35 & 1) != 0) && (sub_1A85F1028(v63[7] + 32 * v34, v64), (swift_dynamicCast() & 1) != 0))
  {
    v36 = sub_1A88C82A8();
  }

  else
  {
    v36 = 0;
  }

  if (v63[2] && (v37 = sub_1A85F5F40(0x73736572646461, 0xE700000000000000), (v38 & 1) != 0) && (sub_1A85F1028(v63[7] + 32 * v37, v64), (swift_dynamicCast() & 1) != 0))
  {
    v39 = sub_1A88C82A8();
  }

  else
  {
    v39 = 0;
  }

  if (v63[2] && (v40 = sub_1A85F5F40(0xD000000000000015, 0x80000001A891C480), (v41 & 1) != 0) && (sub_1A85F1028(v63[7] + 32 * v40, v64), (swift_dynamicCast() & 1) != 0))
  {
    v42 = sub_1A88C82A8();
  }

  else
  {
    v42 = 0;
  }

  if (v63[2] && (v43 = sub_1A85F5F40(0xD000000000000015, 0x80000001A891C4A0), (v44 & 1) != 0) && (sub_1A85F1028(v63[7] + 32 * v43, v64), (swift_dynamicCast() & 1) != 0))
  {
    v45 = sub_1A88C82A8();
  }

  else
  {
    v45 = 0;
  }

  if (v63[2] && (v46 = sub_1A85F5F40(0xD000000000000015, 0x80000001A891C4C0), (v47 & 1) != 0) && (sub_1A85F1028(v63[7] + 32 * v46, v64), (swift_dynamicCast() & 1) != 0))
  {
    v48 = sub_1A88C82A8();
  }

  else
  {
    v48 = 0;
  }

  if (!v63[2] || (v49 = sub_1A85F5F40(0x676F4C646E617262, 0xED0000646975476FLL), (v50 & 1) == 0))
  {

    goto LABEL_88;
  }

  sub_1A85F1028(v63[7] + 32 * v49, v64);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_88:
    v51 = 0;
    goto LABEL_89;
  }

  v51 = sub_1A88C82A8();

LABEL_89:
  LOBYTE(v52) = v62;
  v53 = [v2 initWithBrandURI:v61 name:v60 categories:v59 primaryPhoneNumber:v58 primaryBrandColorHexString:v57 secondaryBrandColorHexString:v56 isVerified:v52 localizedDescription:v55 verifiedBy:v54 website:v30 messageNumber:v33 emailAddress:v36 address:v39 termsAndConditionsURL:v42 localizedResponseTime:v45 genericCSSTemplateURL:v48 brandLogoGuid:v51];

  return v53;
}

uint64_t IMSharedHelperDeviceHasMultipleSubscriptions()
{
  v0 = +[IMCTSubscriptionUtilities sharedInstance];

  return [(IMCTSubscriptionUtilities *)v0 deviceSupportsMultipleSubscriptions];
}

uint64_t sub_1A85F95F4(uint64_t a1)
{
  result = [*(a1 + 32) __unlocked_deviceSupportsMultipleSubscriptions];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1A85F9B64(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 56) objectForKey:v5];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  if (([v6 containsObject:v7] & 1) == 0)
  {
    [v6 addObject:v7];
  }

  [*(*(a1 + 32) + 56) setObject:v6 forKey:v5];
}

uint64_t sub_1A85F9C34()
{
  if (_os_feature_enabled_impl())
  {
    result = 1;
  }

  else
  {
    result = IMGetCachedDomainBoolForKeyWithDefaultValue();
  }

  byte_1ED8C99A8 = result;
  return result;
}

uint64_t IMSharedHelperPinUnsentMessagesToBottom()
{
  if (qword_1ED8C99C8 != -1)
  {
    sub_1A85F9CFC();
  }

  return byte_1ED8C99C0;
}

void sub_1A85F9D48()
{
  byte_1ED8C99C0 = sub_1A85F9DC8();
  if ((byte_1ED8C99C0 & 1) == 0)
  {
    byte_1ED8C99C0 = IMGetDomainBoolForKeyWithDefaultValue();
    if (byte_1ED8C99C0)
    {
      v0 = 1;
    }

    else
    {
      if (qword_1ED8CA338 != -1)
      {
        sub_1A85EB3F4();
      }

      v0 = byte_1ED8CA130;
    }

    byte_1ED8C99C0 = v0 & 1;
  }
}

BOOL sub_1A85F9DC8()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = [objc_msgSend(MEMORY[0x1E69A53F0] sharedInstanceForBagType:{1), "objectForKey:", @"pin-unsent-messages-to-bottom"}];
  v1 = v0;
  v2 = !v0 || [v0 unsignedIntegerValue] <= 1;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"NO";
      if (v2)
      {
        v4 = @"YES";
      }

      v6 = 138412802;
      v7 = v4;
      v8 = 2112;
      v9 = v1;
      v10 = 2112;
      v11 = &unk_1F1BFA790;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Server says we should pin messages to the bottom? %@ {serverbagValue: %@ version: %@}", &v6, 0x20u);
    }
  }

  return v2;
}

uint64_t sub_1A85FA6CC()
{
  qword_1ED8C9918 = objc_alloc_init(IMHandleOffGridStateManager);

  return MEMORY[0x1EEE66BB8]();
}

void IMSMSReportSpamActivateExtensions()
{
  if (IMIsRunningInMessages())
  {
    if (IMOSLoggingEnabled())
    {
      v0 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
      {
        *v2 = 0;
        _os_log_impl(&dword_1A85E5000, v0, OS_LOG_TYPE_INFO, "We are warming up the classication shared instance", v2, 2u);
      }
    }

    v1 = sub_1A85FA914();
    if (objc_opt_respondsToSelector())
    {
      [v1 activateWithCompletion:0];
    }
  }
}

id sub_1A85FA914()
{
  if (qword_1ED8C9960 != -1)
  {
    sub_1A85FA988();
  }

  v0 = qword_1ED8C9968;
  if (qword_1ED8C9968)
  {
    if (objc_opt_respondsToSelector())
    {
      v0 = [qword_1ED8C9968 sharedInstance];
    }

    else
    {
      v0 = 0;
    }
  }

  return v0;
}

uint64_t sub_1A85FA99C()
{
  result = MEMORY[0x1AC570AA0](@"ILClassificationController", @"IdentityLookup");
  qword_1ED8C9968 = result;
  return result;
}

uint64_t sub_1A85FA9D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A85F5F40(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1A87B219C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1A85FAB18(v16, a4 & 1);
    v11 = sub_1A85F5F40(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1A88C9488();
      __break(1u);
      return MEMORY[0x1EEE66BB8]();
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(*(v21 + 56) + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  sub_1A85FADC8(v11, a2, a3, a1, v21);
}

uint64_t sub_1A85FAB2C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1A870CCE0(a3);
  v36 = a2;
  result = sub_1A88C8FF8();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      sub_1A88C9528();
      sub_1A88C8268();
      result = sub_1A88C9578();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

unint64_t sub_1A85FADCC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

char *sub_1A85FAE14(char *a1, int64_t a2, char a3)
{
  result = sub_1A85FAE34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A85FAE34(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A870CCE0(&qword_1EB303488);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_1A85FAF7C()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30A9A0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A9A0 = v0;
  }
}

uint64_t sub_1A85FB018(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1A88C9528();
  sub_1A88C8268();
  v8 = sub_1A88C9578();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1A88C9398() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1A85FB3A0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1A85FB168()
{
  v1 = v0;
  v2 = *v0;
  sub_1A870CCE0(&qword_1EB304708);
  result = sub_1A88C8DB8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1A88C9528();

      sub_1A88C8268();
      result = sub_1A88C9578();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A85FB3A0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1A8606B44();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1A87C2B08();
      goto LABEL_16;
    }

    sub_1A85FB168();
  }

  v10 = *v4;
  sub_1A88C9528();
  sub_1A88C8268();
  result = sub_1A88C9578();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1A88C9398();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1A88C9478();
  __break(1u);
  return result;
}

uint64_t sub_1A85FB520(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A85FB604()
{
  if (IMGetCachedDomainBoolForKeyWithDefaultValue())
  {
    byte_1EB30A430 = 0;
  }

  else if (_os_feature_enabled_impl())
  {
    byte_1EB30A430 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A430 = v0;
  }
}

void sub_1A85FB720()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30A890 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A890 = v0;
  }
}

uint64_t IMBalloonProviderBundlePaths(int a1)
{
  v10[5] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [@"/System/iOSSupport" stringByAppendingPathComponent:@"/System/Library/Messages/iMessageBalloons"];
  }

  else
  {
    v2 = @"/System/Library/Messages/iMessageBalloons";
  }

  v3 = [IMSystemRootDirectory() stringByAppendingPathComponent:v2];
  v4 = [v3 stringByAppendingPathComponent:@"MSMessageExtensionBalloonPlugin.bundle"];
  if (a1)
  {
    v10[0] = v4;
    v10[1] = [v3 stringByAppendingPathComponent:@"HandwritingProvider-iOSMac.bundle"];
    v10[2] = [v3 stringByAppendingPathComponent:@"DigitalTouchBalloonProvider-iOSMac.bundle"];
    v10[3] = [v3 stringByAppendingPathComponent:@"SendLaterProvider.bundle"];
    v10[4] = [v3 stringByAppendingPathComponent:@"RichLinkProvider.bundle"];
    v5 = MEMORY[0x1E695DEC8];
    v6 = v10;
    v7 = 5;
  }

  else
  {
    v9[0] = v4;
    v9[1] = [v3 stringByAppendingPathComponent:@"AssetExplorer.bundle"];
    v9[2] = [v3 stringByAppendingPathComponent:@"HandwritingProvider.bundle"];
    v9[3] = [v3 stringByAppendingPathComponent:@"DigitalTouchBalloonProvider.bundle"];
    v9[4] = [v3 stringByAppendingPathComponent:@"RichLinkProvider.bundle"];
    v9[5] = [v3 stringByAppendingPathComponent:@"SendLaterProvider.bundle"];
    v9[6] = [v3 stringByAppendingPathComponent:@"ASMessagesProvider.bundle"];
    v5 = MEMORY[0x1E695DEC8];
    v6 = v9;
    v7 = 7;
  }

  return [v5 arrayWithObjects:v6 count:v7];
}

void *IMGetUserIgnoreLogoutIntent()
{
  result = CFPreferencesCopyValue(@"UserIgnoreLogoutIntent", @"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  if (result)
  {
    return ([result integerValue] != 0);
  }

  return result;
}

uint64_t IMAppBundleRootDirectory()
{
  v0 = IMSystemRootDirectory();

  return [v0 stringByAppendingPathComponent:@"/System/Library/Messages/iMessageApps/"];
}

uint64_t sub_1A85FB9EC()
{
  qword_1ED8CA0E0 = objc_alloc_init(IMFocusStateManager);

  return MEMORY[0x1EEE66BB8]();
}

id sub_1A85FBBB0(void *a1)
{
  v1 = a1;
  v2 = sub_1A88C82A8();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_1A85FBC78()
{
  if (IMGetCachedDomainBoolForKeyWithDefaultValue())
  {
    byte_1EB30A4C8 = 0;
  }

  else if (_os_feature_enabled_impl())
  {
    byte_1EB30A4C8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A4C8 = v0;
  }
}

uint64_t static IMConversationListFilterMode.defaultPrimaryFilterMode.getter()
{
  if (qword_1ED8C8AC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = sub_1A88BBA94(qword_1ED8CA4B8);
  swift_endAccess();
  return v0;
}

uint64_t sub_1A85FBDC8()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1ED8C8AA8);
  sub_1A85EF0E4(v0, qword_1ED8C8AA8);
  return sub_1A88C7E48();
}

unint64_t IMConversationListFilterMode.stringValue.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0xD000000000000020;
    case 1:
      return 0xD000000000000022;
    case 2:
      v2 = 5;
      goto LABEL_9;
    case 3:
    case 20:
      return 0xD000000000000029;
    case 4:
    case 24:
      return 0xD00000000000002CLL;
    case 5:
      return 0xD00000000000002ALL;
    case 6:
    case 16:
    case 25:
      return 0xD000000000000023;
    case 7:
      v2 = 9;
      goto LABEL_9;
    case 8:
      return 0xD000000000000022;
    case 9:
    case 14:
    case 15:
    case 22:
      return 0xD000000000000021;
    case 10:
      return 0xD000000000000025;
    case 11:
      return 0xD000000000000022;
    case 12:
      return 0xD000000000000022;
    case 13:
      return 0xD000000000000022;
    case 17:
      return 0xD000000000000022;
    case 18:
      return 0xD000000000000022;
    case 19:
      return 0xD000000000000022;
    case 21:
      return 0xD00000000000002ELL;
    case 23:
      return 0xD000000000000022;
    case 26:
      return 0xD000000000000022;
    case 27:
      v2 = 13;
LABEL_9:
      result = v2 | 0xD000000000000022;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t Set<>.imFilterModes.getter(uint64_t a1)
{
  v1 = sub_1A85FC1B4(a1);
  v2 = sub_1A85FC4AC(v1);

  return v2;
}

uint64_t sub_1A85FC1B4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1A88C8D28();
    sub_1A85FC408();
    sub_1A85FC454();
    result = sub_1A88C8938();
    v1 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
    v6 = v24;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = MEMORY[0x1E69E7CC0];
  v19 = v1;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_1A85EF290();
      return v10;
    }

    while (1)
    {
      v16 = [v15 unsignedIntegerValue];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1A85FD07C(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      v1 = v19;
      if (v18 >= v17 >> 1)
      {
        result = sub_1A85FD07C((v17 > 1), v18 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 16) = v18 + 1;
      *(v10 + 8 * v18 + 32) = v16;
      v5 = v13;
      v6 = v14;
      if ((v19 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1A88C8D58())
      {
        sub_1A85FC408();
        swift_dynamicCast();
        v15 = v25;
        v13 = v5;
        v14 = v6;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A85FC408()
{
  result = qword_1ED8C9450;
  if (!qword_1ED8C9450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8C9450);
  }

  return result;
}

unint64_t sub_1A85FC454()
{
  result = qword_1EB300270;
  if (!qword_1EB300270)
  {
    sub_1A85FC408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB300270);
  }

  return result;
}

uint64_t sub_1A85FC4AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for IMConversationListFilterMode(0);
  v4 = v3;
  v5 = sub_1A85FC56C(&unk_1EB300290, type metadata accessor for IMConversationListFilterMode);
  result = MEMORY[0x1AC56F1E0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_1A85FC894(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1A85FC56C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A85FC5B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A85FC5FC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

BOOL sub_1A85FC6B0(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*a2 == -1)
  {
    v4 = *a3;
  }

  else
  {
    v6 = a1;
    swift_once();
    a1 = v6;
    v4 = *a3;
  }

  return sub_1A85FCEB4(a1, v4);
}

uint64_t sub_1A85FC730(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A870CCE0(&qword_1EB304710);
    v3 = sub_1A88C8DD8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_1A88C9528();
      MEMORY[0x1AC56FE00](v10);
      result = sub_1A88C9578();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
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

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1A85FC86C()
{
  result = sub_1A85FC730(&unk_1F1BA9D30);
  qword_1EB3002B8 = result;
  return result;
}

uint64_t sub_1A85FC8BC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1A85FC894(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A85FC99C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v11 = *v5;
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](a2);
  v12 = sub_1A88C9578();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + 8 * v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_1A85FCABC(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1A85FCABC(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v10 = a6;
    sub_1A85FCC44(v8 + 1, a4);
  }

  else
  {
    if (v9 > v8)
    {
      v11 = a2;
      result = sub_1A87C2FF8(a4);
      a2 = v11;
      goto LABEL_12;
    }

    v10 = a6;
    sub_1A87C36B4(v8 + 1, a4);
  }

  v12 = *v6;
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](v7);
  result = sub_1A88C9578();
  v13 = -1 << *(v12 + 32);
  a2 = result & ~v13;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    v15 = result & ~v13;
    result = v10(0);
    a2 = v15;
    while (*(*(v12 + 48) + 8 * a2) != v7)
    {
      a2 = (a2 + 1) & v14;
      if (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v16 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + 8 * a2) = v7;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A88C9478();
  __break(1u);
  return result;
}

uint64_t sub_1A85FCC44(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_1A870CCE0(a2);
  result = sub_1A88C8DB8();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      sub_1A88C9528();
      MEMORY[0x1AC56FE00](v18);
      result = sub_1A88C9578();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
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
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v3 = v2;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_1A85FCE8C()
{
  result = sub_1A85FC730(&unk_1F1BA9CF0);
  qword_1EB3002D0 = result;
  return result;
}

BOOL sub_1A85FCEB4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1A88C9528();
  MEMORY[0x1AC56FE00](a1);
  v4 = sub_1A88C9578();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

char *sub_1A85FCF80(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1A870CCE0(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

uint64_t Set<>.description.getter(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (!v5)
  {
    do
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_16;
      }

      if (v12 >= v6)
      {

        MEMORY[0x1AC56ECB0](93, 0xE100000000000000);
        return 91;
      }

      v10 = *(v2 + 8 * v12);
      ++v9;
    }

    while (!v10);
    v9 = v12;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_16;
    }

LABEL_12:
    v5 = (v10 - 1) & v10;
    v13 = IMConversationListFilterMode.stringValue.getter(*(*(a1 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v10))))));
    MEMORY[0x1AC56ECB0](v13);

    v14 = v8 == *(a1 + 16) - 1;
    v8 = v11;
    if (!v14)
    {
      result = MEMORY[0x1AC56ECB0](8236, 0xE200000000000000);
      v8 = v11;
    }
  }

  v10 = v5;
  v11 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t Set<>.primaryFilterModes.getter(uint64_t a1)
{

  return sub_1A85FD270(a1, &qword_1EB3002E0, &off_1EB3002E8, sub_1A88BA31C, sub_1A85FC71C);
}

{
  return sub_1A85FF92C(a1, Set<>.primaryFilterModes.getter);
}

uint64_t sub_1A85FD270(uint64_t a1, void *a2, uint64_t *a3, uint64_t (*a4)(uint64_t *), uint64_t a5)
{
  v31[1] = a5;
  v34 = a3;
  v35 = a2;
  v7 = 0;
  v37 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v31[0] = v7;
    v31[2] = v31;
    v32 = v10;
    MEMORY[0x1EEE9AC00](v12);
    v33 = v31 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v33, v11);
    v11 = 0;
    v7 = 0;
    v13 = 1 << *(a1 + 32);
    v14 = v13 < 64 ? ~(-1 << v13) : -1;
    v15 = v14 & *(a1 + 56);
    v10 = (v13 + 63) >> 6;
LABEL_6:
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_13:
      v19 = v16 | (v7 << 6);
      v20 = *(*(a1 + 48) + 8 * v19);
      if (*v35 != -1)
      {
        swift_once();
      }

      v21 = *v34;
      if (*(*v34 + 16))
      {
        sub_1A88C9528();
        a4 = &v36;
        MEMORY[0x1AC56FE00](v20);
        v22 = sub_1A88C9578();
        v23 = -1 << *(v21 + 32);
        v24 = v22 & ~v23;
        if ((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
        {
          v25 = ~v23;
          while (*(*(v21 + 48) + 8 * v24) != v20)
          {
            v24 = (v24 + 1) & v25;
            if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          *&v33[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
          if (__OFADD__(v11++, 1))
          {
            __break(1u);
            goto LABEL_28;
          }
        }
      }
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v10)
      {
        return sub_1A85FD584(v33, v32, v11, a1);
      }

      v18 = *(a1 + 56 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

LABEL_28:
  v28 = swift_slowAlloc();

  v29 = sub_1A88BAC00(v28, v10, a1, a4);
  if (v7)
  {

    swift_bridgeObjectRelease_n();
    result = MEMORY[0x1AC571F20](v28, -1, -1);
    __break(1u);
  }

  else
  {
    v30 = v29;
    swift_bridgeObjectRelease_n();
    MEMORY[0x1AC571F20](v28, -1, -1);
    return v30;
  }

  return result;
}

uint64_t sub_1A85FD584(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1A870CCE0(&qword_1EB304710);
  result = sub_1A88C8DD8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_1A88C9528();
    MEMORY[0x1AC56FE00](v16);
    result = sub_1A88C9578();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t IMConversationListFilterMode.combinedValue.getter(uint64_t a1)
{
  v2 = IMConversationListFilterMode.action.getter(a1);
  v3 = IMConversationListFilterMode.subAction.getter(a1);
  result = IMAppendedFilterMode(v2, v3);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A85FD7F4(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_1A85FD86C()
{
  v1 = *(v0 + OBJC_IVAR___IMUnreadCountController_state);
  os_unfair_lock_lock(v1 + 20);
  sub_1A8801F00(&v1[4], &v11);
  os_unfair_lock_unlock(v1 + 20);
  v2 = v11;
  v11 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A88C8D38())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1AC56F710](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isPendingReview])
      {
        sub_1A88C8ED8();
        sub_1A88C8F18();
        sub_1A88C8F28();
        sub_1A88C8EE8();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        v8 = v11;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_18:

  if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
  {
    v9 = sub_1A88C8D38();
  }

  else
  {
    v9 = *(v8 + 16);
  }

  return v9;
}

uint64_t Set<>.secondaryFilters.getter(uint64_t a1)
{
  v1 = a1;
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2 & 0x3F;
  v4 = ((1 << v2) + 63) >> 6;
  v5 = (8 * v4);

  if (v3 > 0xD)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v28 = &v28;
    v29 = v4;
    MEMORY[0x1EEE9AC00](v6);
    v30 = &v28 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v5);
    v7 = 0;
    v8 = 0;
    v9 = v1 + 56;
    v10 = 1 << *(v1 + 32);
    v11 = v10 < 64 ? ~(-1 << v10) : -1;
    v4 = v11 & *(v1 + 56);
    v12 = (v10 + 63) >> 6;
    while (v4)
    {
      v13 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
LABEL_14:
      v16 = v13 | (v8 << 6);
      v17 = v1;
      v18 = *(*(v1 + 48) + 8 * v16);
      if (qword_1EB3002E0 != -1)
      {
        swift_once();
      }

      v19 = off_1EB3002E8;
      if (*(off_1EB3002E8 + 2) && (sub_1A88C9528(), v5 = &v31, MEMORY[0x1AC56FE00](v18), v20 = sub_1A88C9578(), v21 = -1 << *(v19 + 32), v22 = v20 & ~v21, ((*(v19 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v22) & 1) != 0))
      {
        v23 = ~v21;
        while (*(v19[6] + 8 * v22) != v18)
        {
          v22 = (v22 + 1) & v23;
          if (((*(v19 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v22) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        v1 = v17;
      }

      else
      {
LABEL_21:
        *&v30[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        v24 = __OFADD__(v7++, 1);
        v1 = v17;
        if (v24)
        {
          goto LABEL_26;
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        return sub_1A85FD584(v30, v29, v7, v1);
      }

      v15 = *(v9 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v4 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();

  v27 = sub_1A88BAC00(v26, v4, v1, sub_1A88BA394);
  swift_bridgeObjectRelease_n();
  MEMORY[0x1AC571F20](v26, -1, -1);
  return v27;
}

void sub_1A85FDE54()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30A958 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A958 = v0;
  }
}

void sub_1A85FDF48()
{
  if (_os_feature_enabled_impl())
  {
    byte_1ED8C96F8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1ED8C96F8 = v0;
  }
}

void sub_1A85FE024()
{
  if (_os_feature_enabled_impl())
  {
    byte_1ED8C97D0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1ED8C97D0 = v0;
  }
}

void sub_1A85FE0D4()
{
  if (_os_feature_enabled_impl())
  {
    byte_1ED8C97C0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1ED8C97C0 = v0;
  }
}

uint64_t sub_1A85FE16C(uint64_t a1)
{
  v2 = IMSharedHelperDeviceIsiPad();
  v3 = *(a1 + 32);
  if (v2)
  {
    result = [v3 _isSendMenuEnabledForiPad];
  }

  else
  {
    result = [v3 _isSendMenuEnabled];
  }

  byte_1ED8C9708 = result;
  return result;
}

void sub_1A85FE284()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30A4B0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A4B0 = v0;
  }
}

void sub_1A85FE378()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30A460 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A460 = v0;
  }
}

uint64_t sub_1A85FE610(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1EB300860 != -1)
  {
    v4 = a3;
    swift_once();
    a3 = v4;
  }

  return *(qword_1EB300868 + *a3);
}

id sub_1A85FE674()
{
  result = [objc_allocWithZone(IMGenerativeModelsAvailabilityProvider) init];
  qword_1EB300868 = result;
  return result;
}

id sub_1A85FE6D0()
{
  v1 = sub_1A88C7908();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - v5;
  v7 = sub_1A88C7938();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A88C7978();
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v35 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  v16 = &v0[OBJC_IVAR___IMGenerativeModelsAvailabilityProvider_summarizationUseCaseIdentifier];
  *v16 = 0xD000000000000022;
  v16[1] = 0x80000001A891A810;
  v40 = v0;
  v17 = &v0[OBJC_IVAR___IMGenerativeModelsAvailabilityProvider_generativePlaygroundUseCaseIdentifier];
  *v17 = 0xD000000000000025;
  v17[1] = 0x80000001A891A840;
  sub_1A88C7918();
  sub_1A88C7968();
  v18 = *(v8 + 8);
  v33 = v7;
  v18(v10, v7);
  v34 = v15;
  sub_1A88C7948();
  v19 = v1;
  v20 = *(v2 + 88);
  v21 = v20(v6, v19);
  v22 = *MEMORY[0x1E69A0EF0];
  v39 = v2;
  if (v21 == v22)
  {
    (*(v2 + 8))(v6, v19);
    v23 = v40;
LABEL_3:
    v23[OBJC_IVAR___IMGenerativeModelsAvailabilityProvider_summarizationModelsAvailable] = 1;
    goto LABEL_9;
  }

  if (v21 == *MEMORY[0x1E69A0F08])
  {
    v40[OBJC_IVAR___IMGenerativeModelsAvailabilityProvider_summarizationModelsAvailable] = 0;
  }

  else
  {
    v23 = v40;
    if (v21 == *MEMORY[0x1E69A1198])
    {
      goto LABEL_3;
    }

    v40[OBJC_IVAR___IMGenerativeModelsAvailabilityProvider_summarizationModelsAvailable] = 0;
  }

  (*(v2 + 8))(v6, v19);
LABEL_9:

  sub_1A88C7918();
  v24 = v35;
  sub_1A88C7968();
  v18(v10, v33);
  v25 = v38;
  sub_1A88C7948();
  v26 = v20(v25, v19);
  if (v26 == v22)
  {
    (*(v39 + 8))(v25, v19);
    v27 = v40;
  }

  else
  {
    v28 = v39;
    v27 = v40;
    if (v26 == *MEMORY[0x1E69A0F08] || v26 != *MEMORY[0x1E69A1198])
    {
      v40[OBJC_IVAR___IMGenerativeModelsAvailabilityProvider_generativePlaygroundModelsAvailable] = 0;
      (*(v28 + 8))(v25, v19);
      goto LABEL_15;
    }
  }

  v27[OBJC_IVAR___IMGenerativeModelsAvailabilityProvider_generativePlaygroundModelsAvailable] = 1;
LABEL_15:
  v41.receiver = v27;
  v41.super_class = IMGenerativeModelsAvailabilityProvider;
  v29 = objc_msgSendSuper2(&v41, sel_init);
  v30 = v37;
  v31 = *(v36 + 8);
  v31(v24, v37);
  v31(v34, v30);
  return v29;
}

void sub_1A85FEBC8()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB309460 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB309460 = v0;
  }
}

void sub_1A85FECB8()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB309448 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB309448 = v0;
  }
}

void sub_1A85FEDAC()
{
  if (_os_feature_enabled_impl())
  {
    byte_1ED8C95E0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1ED8C95E0 = v0;
  }
}

BOOL IMShouldDisplayKeepMessagesSetting()
{
  v0 = dword_1ED8C8840;
  if (dword_1ED8C8840 < 0)
  {
    if (dword_1ED8C8840 == -2)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1A86C1F34, @"com.apple.MobileSMS.KeepMessages.reset", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    v0 = [IMGetCachedDomainValueForKey() BOOLValue];
    dword_1ED8C8840 = v0;
  }

  return v0 == 1;
}

uint64_t IMIsRunningInIDSAccountCapableClient()
{
  if (qword_1ED8CA178 != -1)
  {
    sub_1A85EB3A8();
  }

  return (qword_1EB30A9C8 < 0x11) & (0x1C03Eu >> qword_1EB30A9C8);
}

uint64_t sub_1A85FF07C()
{
  v0 = objc_alloc(MEMORY[0x1E69A48A8]);
  qword_1EB30A4F8 = [v0 initWithService:*MEMORY[0x1E69A4818]];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A85FF280(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A88C8D38())
  {
    v4 = sub_1A85FC408();
    v5 = sub_1A85FC56C(&qword_1EB300270, sub_1A85FC408);
    result = MEMORY[0x1AC56F1E0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1AC56F710](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1A85FF550(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1A88C8D38();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t Set<>.filterModeNumbers.getter(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      v11 = sub_1A85FF280(v2);

      return v11;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      do
      {
LABEL_8:
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
        MEMORY[0x1AC56EEA0]();
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A88C8638();
        }

        v6 &= v6 - 1;
        result = sub_1A88C8678();
        v2 = v12;
      }

      while (v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A85FF550(void *a1, void *a2)
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

    v9 = sub_1A88C8D48();

    if (v9)
    {

      sub_1A85E9718(0, &qword_1ED8C9450);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_1A88C8D38();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1A87C20EC(v7, result + 1);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_1A87C2770();
    }

    v18 = v8;
    sub_1A87C2A84(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1A85E9718(0, &qword_1ED8C9450);
  v11 = sub_1A88C8B98();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_1A85FF788(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1A88C8BA8();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

void sub_1A85FF788(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A87C2770();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1A87C3128();
      goto LABEL_12;
    }

    sub_1A87C38CC();
  }

  v8 = *v3;
  v9 = sub_1A88C8B98();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1A85E9718(0, &qword_1ED8C9450);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1A88C8BA8();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1A88C9478();
  __break(1u);
}

uint64_t sub_1A85FF92C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_1A85FC1B4(a1);
  v4 = sub_1A85FC4AC(v3);

  v5 = a2(v4);

  return v5;
}

BOOL sub_1A85FF9B8(void *a1)
{
  if (sub_1A85F7F60(a1))
  {
    IMComponentsFromChatGUID();
    v1 = 0;
    v2 = 0;
    if ([v1 length])
    {
      v3 = [v2 length] != 0;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
    v1 = 0;
    v2 = 0;
  }

  return v3;
}

uint64_t sub_1A85FFABC()
{
  qword_1ED8C9D90 = objc_alloc_init(IMMutedChatList);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t IMSharedHelperGroupHashForHandleIDs(void *a1)
{
  v1 = [objc_msgSend(objc_msgSend(a1 sortedArrayUsingSelector:{sel_caseInsensitiveCompare_), "componentsJoinedByString:", @", "), "dataUsingEncoding:", 4}];

  return [v1 SHA1HexString];
}

uint64_t sub_1A85FFC94()
{
  qword_1ED8C9908 = objc_alloc_init(IMCommSafetySettingsManager);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A85FFFEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  _Block_object_dispose((v20 - 112), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1A8600040()
{
  result = [objc_allocWithZone(IMUnlockMonitor) init];
  qword_1ED8C9318 = result;
  return result;
}

void sub_1A8600098()
{
  *&v0[OBJC_IVAR___IMUnlockMonitor_keybagChangeIOKitToken] = 0;
  *&v0[OBJC_IVAR___IMUnlockMonitor_firstKeybagUnlockToken] = -1;
  *&v0[OBJC_IVAR___IMUnlockMonitor_keybagChangeToken] = -1;
  *&v0[OBJC_IVAR___IMUnlockMonitor_sbLockChangeToken] = -1;
  v1 = &v0[OBJC_IVAR___IMUnlockMonitor_stringboardLockstateNotifificationKey];
  *v1 = "com.apple.springboard.lockstate";
  *(v1 + 1) = 31;
  v1[16] = 2;
  v2 = MKBDeviceUnlockedSinceBoot();
  v3 = v2 > 0;
  v0[OBJC_IVAR___IMUnlockMonitor_initializedBeforeFirstUnlock] = v2 < 1;
  v4 = MKBGetDeviceLockState();
  if (v4)
  {
    v5 = v4 == 3;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  sub_1A870CCE0(&qword_1EB3072B8);
  v7 = swift_allocObject();
  *(v7 + 20) = 0;
  *(v7 + 16) = v3;
  *(v7 + 17) = 0;
  *(v7 + 18) = v6;
  *&v0[OBJC_IVAR___IMUnlockMonitor_state] = v7;
  v8 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
  sub_1A870CCE0(&qword_1EB3072C0);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *&v0[OBJC_IVAR___IMUnlockMonitor_listeners] = v9;
  *(v9 + 16) = v8;
  v27.receiver = v0;
  v27.super_class = IMUnlockMonitor;
  v10 = objc_msgSendSuper2(&v27, sel_init);
  if (qword_1ED8C9328 != -1)
  {
    swift_once();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v25 = sub_1A8821298;
  v26 = v11;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1A86047B0;
  v24 = &unk_1F1BB4398;
  v12 = _Block_copy(&v21);
  v13 = v10;

  v14 = IMDispatchForNotify();
  _Block_release(v12);
  *&v13[OBJC_IVAR___IMUnlockMonitor_firstKeybagUnlockToken] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v25 = sub_1A8604810;
  v26 = v15;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1A86047B0;
  v24 = &unk_1F1BB43E8;
  v16 = _Block_copy(&v21);

  LODWORD(v12) = IMDispatchForNotify();
  _Block_release(v16);
  *&v13[OBJC_IVAR___IMUnlockMonitor_keybagChangeToken] = v12;
  if (v13[OBJC_IVAR___IMUnlockMonitor_stringboardLockstateNotifificationKey + 16])
  {
    __break(1u);
  }

  else if (*&v13[OBJC_IVAR___IMUnlockMonitor_stringboardLockstateNotifificationKey])
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    v25 = sub_1A860505C;
    v26 = v17;
    v21 = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_1A86047B0;
    v24 = &unk_1F1BB4438;
    v18 = _Block_copy(&v21);
    v19 = v13;

    v20 = IMDispatchForNotify();
    _Block_release(v18);
    *&v19[OBJC_IVAR___IMUnlockMonitor_sbLockChangeToken] = v20;
    return;
  }

  __break(1u);
}

uint64_t sub_1A860048C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A86004DC()
{
  v7 = sub_1A88C8A28();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A88C8A18();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A88C7EF8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1A85E9718(0, &qword_1ED8C95A0);
  _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1A85EE160(&qword_1ED8C9580, MEMORY[0x1E69E8030]);
  sub_1A870CCE0(&qword_1EB3023F0);
  sub_1A85E8C68(&qword_1ED8C9590, &qword_1EB3023F0);
  sub_1A88C8CE8();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1A88C8A78();
  qword_1ED8C9330 = result;
  return result;
}

void sub_1A860075C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_1A86007D4(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 + OBJC_IVAR___IMUnlockMonitor_listeners);
    MEMORY[0x1EEE9AC00](result);
    swift_unknownObjectRetain();

    os_unfair_lock_lock((v2 + 24));
    sub_1A8600880((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A86008C0()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!qword_1ED8C98C0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = sub_1A8700DF0;
    v3[4] = &unk_1E7826200;
    v3[5] = v3;
    v4 = xmmword_1E782B3F8;
    v5 = 0;
    qword_1ED8C98C0 = _sl_dlopen();
  }

  v0 = qword_1ED8C98C0;
  v1 = v3[0];
  if (!qword_1ED8C98C0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_1A8600A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8600ABC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSettings];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _connectToFamilyCircle:0];
}

Class sub_1A8600F1C(uint64_t a1)
{
  sub_1A86008C0();
  result = objc_getClass("STCommunicationClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED8C9880 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1A88C633C();
    return [(IMCommSafetySettingsManager *)v3 isFeatureEnabled];
  }

  return result;
}

uint64_t sub_1A860105C()
{
  v0 = +[IMDefaults sharedInstance];
  v5 = [v0 getValueFromDomain:@"com.apple.messages.commsafety" forKey:@"kInternalEnablementGroupOverride"];

  v1 = [v5 integerValue];
  if (v5)
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  byte_1EB3095E8 = v3;

  return MEMORY[0x1EEE66BB8](v1);
}

Class sub_1A86011E0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1ED8C98E8)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = sub_1A8700E64;
    v4[4] = &unk_1E7826200;
    v4[5] = v4;
    v5 = xmmword_1E782B410;
    v6 = 0;
    qword_1ED8C98E8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1ED8C98E8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("FAFetchFamilyCircleRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A88C6364();
  }

  qword_1ED8C9888 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A8601324(void *a1)
{
  v3[6] = *MEMORY[0x1E69E9840];
  v3[0] = @"__kIMMentionConfirmedMention";
  v3[1] = @"__kIMTextBoldAttributeName";
  v3[2] = @"__kIMTextItalicAttributeName";
  v3[3] = @"__kIMTextUnderlineAttributeName";
  v3[4] = @"__kIMTextStrikethroughAttributeName";
  v3[5] = @"CTAdaptiveImageProvider";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:6];
  [a1 __im_removeAllAttributesExcept:v2];
}

uint64_t static IMGenerativeModelsAvailabilityProvider.messageSummarizationEnabled()()
{
  if (qword_1EB300860 != -1)
  {
    swift_once();
  }

  v0 = *(qword_1EB300868 + OBJC_IVAR___IMGenerativeModelsAvailabilityProvider_summarizationModelsAvailable);
  v1 = [swift_getObjCClassFromMetadata() summarizationUserPreferenceEnabled];
  v2 = [objc_opt_self() sharedFeatureFlags];
  v3 = [v2 isInboxSummaryEnabled];

  return v0 & v1 & v3 & 1;
}

uint64_t _sSo38IMGenerativeModelsAvailabilityProviderC17IMSharedUtilitiesE34summarizationUserPreferenceEnabledSbyFZ_0()
{
  v0 = sub_1A88C82A8();
  v1 = sub_1A88C82A8();
  v2 = IMGetCachedDomainValueForKey();

  if (v2)
  {
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_1A85E9718(0, &qword_1ED8C9450);
    if (swift_dynamicCast())
    {
      v3 = [v5 BOOLValue];

      return v3;
    }
  }

  else
  {
    sub_1A860169C(v8);
  }

  return 1;
}

uint64_t sub_1A860169C(uint64_t a1)
{
  v2 = sub_1A870CCE0(&qword_1EB3057B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A860175C()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30A988 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A988 = v0;
  }
}

uint64_t IMSharedHelperDeviceHasMultipleActiveSubscriptions()
{
  if (![+[IMCTSubscriptionUtilities deviceSupportsMultipleSubscriptions] sharedInstance]
  {
    return 0;
  }

  v0 = [+[IMCTSubscriptionUtilities sharedInstance](IMCTSubscriptionUtilities ctSubscriptionInfo];
  if (!v0)
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](v0, sel___im_onlyHasActiveSlots);
}

void sub_1A86018E8()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB3093A8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB3093A8 = v0;
  }
}

id sub_1A86019E0(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  sub_1A88BA774(a3);

  sub_1A85FC408();
  sub_1A85FC454();
  v5 = sub_1A88C88C8();

  return v5;
}

uint64_t sub_1A8601A58()
{
  v0 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  v1 = sub_1A88C71A8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C8B58();
  sub_1A8601D48();
  sub_1A88C8C18();
  while (v19)
  {
    sub_1A85E99B0(&v18, v16);
    sub_1A85FC408();
    if ((swift_dynamicCast() & 1) != 0 && v17)
    {
      MEMORY[0x1AC56EEA0]();
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A88C8638();
      }

      sub_1A88C8678();
      v0 = v20;
    }

    sub_1A88C8C18();
  }

  (*(v2 + 8))(v4, v1);
  if (v0 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A88C8D38())
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1AC56F710](v6, v0);
      }

      else
      {
        if (v6 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v8 = *(v0 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = [v8 unsignedIntegerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1A85FD07C(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      if (v13 >= v12 >> 1)
      {
        v7 = sub_1A85FD07C((v12 > 1), v13 + 1, 1, v7);
      }

      *(v7 + 2) = v13 + 1;
      *&v7[8 * v13 + 32] = v11;
      ++v6;
      if (v10 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_27:

  v14 = sub_1A85FC4AC(v7);

  return v14;
}

unint64_t sub_1A8601D48()
{
  result = qword_1EB3006D8;
  if (!qword_1EB3006D8)
  {
    sub_1A88C71A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3006D8);
  }

  return result;
}

uint64_t sub_1A8601E18()
{
  result = IMGetCachedDomainBoolForKey();
  byte_1EB309308 = result;
  return result;
}

uint64_t sub_1A8601E58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8601E68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8601E78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8601E88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8601E98(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8601EA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8601EC8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8601EE8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8601EF8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_1A8601F08(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1A8601F34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8601F44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8601F54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8601F64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8601F74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8601F84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8601F94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8601FA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8601FB4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8601FC4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8601FD4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8601FE4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8601FF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8602004(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8602024(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8602034(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8602044(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A8602054()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("IMContactStoreQueue", v2);
  v1 = qword_1ED8C9990;
  qword_1ED8C9990 = v0;
}

uint64_t IMSharedUtilitiesFrameworkBundle()
{
  if (qword_1EB30A930 != -1)
  {
    sub_1A8602254();
  }

  return qword_1EB30A928;
}

uint64_t sub_1A8602268()
{
  result = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.imsharedutilities"];
  qword_1EB30A928 = result;
  return result;
}

void sub_1A8602480()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30A8C8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A8C8 = v0;
  }
}

uint64_t sub_1A86025A0()
{
  result = IMGetCachedDomainBoolForKey();
  byte_1EB30A410 = result;
  return result;
}

void sub_1A86025DC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1A86025FC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1A8602618(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1A8602650(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1A86026D4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0xEu);
}

void sub_1A8602708(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1A8602894()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30A4A0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A4A0 = v0;
  }
}

void sub_1A86029CC()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30A8F8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A8F8 = v0;
  }
}

uint64_t sub_1A8602B10()
{
  v0 = objc_alloc_init(IMDualSIMUtilitiesManager);
  qword_1ED8C95B8 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

unint64_t sub_1A8602DD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A870CCE0(&unk_1EB305300);
    v3 = sub_1A88C9008();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A8728D80(v4, v13, &qword_1EB303CD8);
      result = sub_1A8602F10(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1A85E99B0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A8602F10(uint64_t a1)
{
  v2 = sub_1A88C8D68();

  return sub_1A8602F54(a1, v2);
}

unint64_t sub_1A8602F54(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1A8717304(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1AC56F640](v9, a1);
      sub_1A8717360(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1A86030A0(void *a1)
{
  v1 = a1;
  v2 = NSUserDefaults.userSwitchForFocusFilteringIsEnabled.getter();

  return v2 & 1;
}