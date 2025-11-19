unint64_t sub_190B26730()
{
  result = qword_1EAD5DB88;
  if (!qword_1EAD5DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DB88);
  }

  return result;
}

unint64_t sub_190B26798()
{
  result = qword_1EAD5DBA8;
  if (!qword_1EAD5DBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DBA8);
  }

  return result;
}

Swift::Void __swiftcall CKSuggestedActionsHandler.openSettings()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didRequestSettings];
    swift_unknownObjectRelease();
  }
}

void sub_190B269C8()
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = [v0 assets];
  sub_1902188FC(0, &qword_1EAD583F8);
  v2 = sub_190D57180();

  v15 = 0;
  v3 = [objc_opt_self() openPhotoLibraryWithWellKnownIdentifier:1 error:&v15];
  v4 = v15;
  if (v3)
  {
    v5 = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    v19 = sub_190B2734C;
    v20 = v6;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_190840E6C;
    v18 = &block_descriptor_83;
    v7 = _Block_copy(&v15);
    v8 = v4;

    v9 = swift_allocObject();
    *(v9 + 16) = v0;
    v19 = sub_190B27354;
    v20 = v9;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_190B271EC;
    v18 = &block_descriptor_6_7;
    v10 = _Block_copy(&v15);
    v11 = v0;

    [v5 performChanges:v7 completionHandler:v10];
    _Block_release(v10);
    _Block_release(v7);
  }

  else
  {
    v12 = v15;

    v13 = sub_190D51420();

    swift_willThrow();
    v14 = sub_190D51410();
    [v0 completeBackgroundTaskWithSuccess:0 error:v14];
  }
}

void sub_190B26C48(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    v2 = sub_190D581C0();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 >= 1)
  {
    v3 = 0;
    v4 = a1 & 0xC000000000000001;
    v5 = &selRef_buttonAttributedString;
    v6 = 0x1E6978000uLL;
    v7 = &selRef_buttonAttributedString;
    a2.n128_u64[0] = 136315138;
    v21 = a2;
    v22 = v2;
    while (1)
    {
      if (v4)
      {
        v8 = MEMORY[0x193AF3B90](v3, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v3 + 32);
      }

      v9 = v8;
      if ([v8 v5[408]])
      {
      }

      else
      {
        if (qword_1EAD51DE0 != -1)
        {
          swift_once();
        }

        v10 = sub_190D53040();
        __swift_project_value_buffer(v10, qword_1EAD9E2B0);
        v11 = v9;
        v9 = sub_190D53020();
        v12 = sub_190D576C0();

        if (os_log_type_enabled(v9, v12))
        {
          v13 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v25 = v23;
          *v13 = v21.n128_u32[0];
          v14 = v7;
          v15 = v6;
          v16 = [v11 localIdentifier];
          v17 = sub_190D56F10();
          v19 = v18;

          v6 = v15;
          v7 = v14;
          v20 = sub_19021D9F8(v17, v19, &v25);
          v2 = v22;

          *(v13 + 4) = v20;
          v4 = a1 & 0xC000000000000001;
          _os_log_impl(&dword_19020E000, v9, v12, "Skipping asset %s, already saved.", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v23);
          v5 = &selRef_buttonAttributedString;
          MEMORY[0x193AF7A40](v23, -1, -1);
          MEMORY[0x193AF7A40](v13, -1, -1);

          goto LABEL_7;
        }
      }

LABEL_7:
      if (v2 == ++v3)
      {
        return;
      }
    }
  }

  __break(1u);
}

uint64_t sub_190B26ED0(char a1, void *a2, void *a3)
{
  v6 = sub_190D56770();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_190D567A0();
  v10 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1902188FC(0, &qword_1EAD46670);
  v13 = sub_190D57870();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2;
  aBlock[4] = sub_190B2735C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_12_5;
  v15 = _Block_copy(aBlock);
  v16 = a3;
  v17 = a2;

  sub_190D56790();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_190840DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190840E08();
  sub_190D58170();
  MEMORY[0x193AF3110](0, v12, v9, v15);
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v20);
}

void sub_190B2717C(void *a1, char a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    v5 = sub_190D51410();
    a1 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [a1 completeBackgroundTaskWithSuccess:a2 & 1 error:?];
}

void sub_190B271EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_190D50920();
  v6 = a3;
  v5(a2, a3);
}

id sub_190B272F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosGridSaveToPhotosActionPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190B2736C()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E2B0);
  __swift_project_value_buffer(v0, qword_1EAD9E2B0);
  sub_190D53010();
  return sub_190D53030();
}

id sub_190B273D8()
{
  result = CKFrameworkBundle();
  if (result)
  {
    v1 = result;
    v2 = sub_190D56ED0();
    v3 = sub_190D56ED0();
    v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

    v5 = sub_190D56F10();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190B274B0(char a1)
{
  result = CKFrameworkBundle();
  v3 = result;
  if (a1)
  {
    if (result)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  else if (result)
  {
LABEL_5:
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v7 = sub_190D56F10();
    return v7;
  }

  __break(1u);
  return result;
}

id sub_190B275A4(char a1)
{
  if (a1)
  {
    result = CKFrameworkBundle();
    if (result)
    {
      v2 = result;
LABEL_10:
      v3 = sub_190D56ED0();
      v4 = sub_190D56ED0();
      v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

      v6 = sub_190D56F10();
      return v6;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((IMDeviceIsGreenTea() & 1) != 0 || [objc_opt_self() IMDeviceIsChinaRegion])
  {
    result = CKFrameworkBundle();
    if (result)
    {
      v2 = result;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  result = CKFrameworkBundle();
  if (result)
  {
    v2 = result;
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

void CKConversation.canSendComposition(_:forCapabilities:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 chat];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 supportsCapabilities_];

    if (v8)
    {
      return;
    }
  }

  else if ([v3 isPending])
  {
    return;
  }

  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 isSatelliteConnectionActive];

  v11 = [a1 mediaObjects];
  if (!v11)
  {
    __break(1u);
    return;
  }

  v12 = v11;
  sub_190B27868();
  v13 = sub_190D57180();

  if (v13 >> 62)
  {
    v14 = sub_190D581C0();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v14)
  {
    v15 = [a1 shelfPluginPayload];
    if (!v15)
    {
      return;
    }
  }

  sub_190B286AC(v10 ^ 1);
  swift_willThrow();
}

unint64_t sub_190B27868()
{
  result = qword_1EAD466C0;
  if (!qword_1EAD466C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD466C0);
  }

  return result;
}

uint64_t CKConversation.shouldShowSatelliteServiceUnavailableIndicator.getter()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isMessagingActiveOverSatellite];

  if (!v2)
  {
    goto LABEL_14;
  }

  if (([v0 isGroupConversation] & 1) == 0 && (objc_msgSend(v0, sel_isBusinessConversation) & 1) == 0)
  {
    if ([v0 isSatelliteEmergencyConversation])
    {
      goto LABEL_14;
    }

    v4 = [v0 chat];
    if (!v4)
    {
      goto LABEL_14;
    }

    v5 = v4;
    v6 = [v4 account];

    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = [v6 serviceName];

    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = sub_190D56F10();
    v10 = v9;

    if (v8 != sub_190D56F10() || v10 != v11)
    {
      v12 = sub_190D58760();

      if (v12)
      {
        goto LABEL_13;
      }

      if (v8 != sub_190D56F10() || v10 != v14)
      {
        v15 = sub_190D58760();

        v3 = v15 ^ 1;
        return v3 & 1;
      }
    }

LABEL_13:

LABEL_14:
    v3 = 0;
    return v3 & 1;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t CKConversation.isSatelliteEmergencyConversation.getter()
{
  if ([v0 isStewieConversation])
  {
    return 1;
  }

  else
  {
    return [v0 isEmergencyTranscriptSharingConversation];
  }
}

uint64_t CKConversation.allowToSendWithCurrentServiceForSatellite.getter()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isMessagingActiveOverSatellite];

  if (v2)
  {
    v3 = [v0 sendingService];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 name];

      if (v5)
      {
        v6 = sub_190D56F10();
        v8 = v7;

        if (v6 == sub_190D56F10() && v8 == v9)
        {
          v10 = 1;
        }

        else
        {
          v11 = sub_190D58760();

          if (v11)
          {
            v10 = 1;
            goto LABEL_12;
          }

          if (v6 == sub_190D56F10() && v8 == v13)
          {
            v10 = 1;
          }

          else
          {
            v10 = sub_190D58760();
          }
        }

LABEL_12:

        return v10 & 1;
      }
    }

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

uint64_t CKConversation.shouldShowSatelliteSummary.getter()
{
  v1 = [v0 chat];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isDownloadingPendingSatelliteMessages];

    v4 = v3 ^ 1;
  }

  else
  {
    v4 = 1;
  }

  v5 = [v0 chat];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 pendingIncomingSatelliteMessageCount];

    v8 = v7 > 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 isMessagingActiveOverSatellite];

  if (v10)
  {
    return v4 & v8;
  }

  else
  {
    return 0;
  }
}

uint64_t CKConversation.satelliteSummaryMessage.getter()
{
  v1 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_190D56EC0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v18[-v8];
  v10 = [v0 chat];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 pendingIncomingSatelliteMessageCount];
  }

  else
  {
    v12 = 0;
  }

  sub_190D56E50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_190DD1D90;
  v14 = MEMORY[0x1E69E65A8];
  *(v13 + 56) = MEMORY[0x1E69E6530];
  *(v13 + 64) = v14;
  *(v13 + 32) = v12;
  (*(v3 + 16))(v5, v9, v2);
  v15 = CKFrameworkBundle();
  sub_190D51980();
  sub_190D56F30();
  v16 = sub_190D56EE0();

  (*(v3 + 8))(v9, v2);
  return v16;
}

uint64_t CKConversation.shouldShowDownloadingPendingMessages.getter()
{
  v1 = [v0 chat];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isDownloadingPendingSatelliteMessages];
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 isMessagingActiveOverSatellite];

  return v5 & v3;
}

id CKConversation.pendingMessageCountText.getter()
{
  v1 = v0;
  v2 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_190D56EC0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v24[-v9];
  result = [v0 chat];
  if (result)
  {
    v12 = result;
    if ([v1 shouldShowDownloadingPendingMessages])
    {
      v13 = [v12 pendingIncomingSatelliteMessageCount];
      result = [v12 totalSatelliteMessageCount];
      v14 = result - v13;
      if (__OFSUB__(result, v13))
      {
        __break(1u);
      }

      else
      {
        v15 = v14 + 1;
        if (!__OFADD__(v14, 1))
        {
          v16 = result;
          sub_190D56E50();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
          v17 = swift_allocObject();
          v18 = MEMORY[0x1E69E6530];
          *(v17 + 16) = xmmword_190DD1DA0;
          v19 = MEMORY[0x1E69E65A8];
          *(v17 + 56) = v18;
          *(v17 + 64) = v19;
          *(v17 + 32) = v15;
          *(v17 + 96) = v18;
          *(v17 + 104) = v19;
          *(v17 + 72) = v16;
          (*(v4 + 16))(v6, v10, v3);
          v20 = CKFrameworkBundle();
          sub_190D51980();
          sub_190D56F30();
          sub_190D56EE0();

          (*(v4 + 8))(v10, v3);
          v21 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v22 = sub_190D56ED0();

          v23 = [v21 initWithString_];

          return v23;
        }
      }

      __break(1u);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t CKConversation.showUnreadIndicator.getter()
{
  v1 = [v0 chat];
  if (v1 && (v2 = v1, v3 = [v1 unreadMessageCount], v2, v3 > 0))
  {
    return 1;
  }

  else
  {
    return [v0 shouldShowSatelliteSummary];
  }
}

id sub_190B286AC(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53838);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1DA0;
  *(inited + 32) = sub_190D56F10();
  *(inited + 40) = v3;
  v4 = sub_190B274B0(a1 & 1);
  v5 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 80) = sub_190D56F10();
  *(inited + 88) = v7;
  v8 = sub_190B275A4(a1 & 1);
  *(inited + 120) = v5;
  *(inited + 96) = v8;
  *(inited + 104) = v9;
  sub_190820FDC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DF00);
  swift_arrayDestroy();
  v10 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v11 = sub_190D56ED0();
  v12 = sub_190D56D60();

  v13 = [v10 initWithDomain:v11 code:1 userInfo:v12];

  return v13;
}

id sub_190B28828()
{
  v0 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  v1 = sub_190CEE020();

  v2 = [v0 imagePickerForGroupIdentity_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DBF0);
  sub_190D55210();
  [v2 setDelegate_];

  sub_190D55210();
  [v2 setPresenterDelegate_];

  v3 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  return v3;
}

id sub_190B28AC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupIdentityPickerViewController.GroupIdentityPickerCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190B28B34()
{
  sub_1908CB130();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_190B28C10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190B28E4C(v2, v5);
  v6 = type metadata accessor for GroupIdentityPickerViewController.GroupIdentityPickerCoordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_190B28E4C(v5, v7 + OBJC_IVAR____TtCV7ChatKit33GroupIdentityPickerViewController30GroupIdentityPickerCoordinator_parent);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_190B28EB0(v5);
  *a2 = v8;
  return result;
}

uint64_t sub_190B28CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190B28F0C(&qword_1EAD5DBF8);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_190B28D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190B28F0C(&qword_1EAD5DBF8);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_190B28DD4()
{
  sub_190B28F0C(&qword_1EAD5DBF8);
  sub_190D55130();
  __break(1u);
}

uint64_t sub_190B28E4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupIdentityPickerViewController(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190B28EB0(uint64_t a1)
{
  v2 = type metadata accessor for GroupIdentityPickerViewController(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190B28F0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GroupIdentityPickerViewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_190B28F50(void *a1)
{
  if (qword_1EAD51A68 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9DC20);
  v3 = sub_190D53020();
  v4 = sub_190D576C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, v4, "dismissIdentityPicker", v5, 2u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  return [a1 dismissViewControllerAnimated:1 completion:0];
}

id sub_190B29050(void *a1)
{
  if (qword_1EAD51A68 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9DC20);
  v3 = sub_190D53020();
  v4 = sub_190D576C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, v4, "visualIdentityPickerDidCancel", v5, 2u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  return sub_190B28F50(a1);
}

id sub_190B29140(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for GroupIdentityPickerViewController(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD51A68 != -1)
  {
    swift_once();
  }

  v9 = sub_190D53040();
  __swift_project_value_buffer(v9, qword_1EAD9DC20);
  v10 = sub_190D53020();
  v11 = sub_190D576C0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_19020E000, v10, v11, "visualIdentityPicker.didUpdatePhotoFor", v12, 2u);
    MEMORY[0x193AF7A40](v12, -1, -1);
  }

  sub_190B28E4C(v3 + OBJC_IVAR____TtCV7ChatKit33GroupIdentityPickerViewController30GroupIdentityPickerCoordinator_parent, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  sub_190B28EB0(v8);
  v13 = v17;
  v14 = *&v17[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation];

  sub_1908F7D88(a2);
  return sub_190B28F50(a1);
}

void sub_190B293D8(uint64_t a1, unint64_t a2, char a3)
{
  v5 = [v3 associatedChatItems];
  sub_190B29FF8();
  v6 = sub_190D57180();

  v47[0] = MEMORY[0x1E69E7CC0];
  v7 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
LABEL_27:
    v8 = sub_190D581C0();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_28:
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_28;
  }

LABEL_3:
  v4 = 0;
  v45 = (v6 & 0xC000000000000001);
  v9 = MEMORY[0x1E69E7CC0];
  do
  {
    v40 = v9;
    v10 = v4;
    while (1)
    {
      if (v45)
      {
        v11 = MEMORY[0x193AF3B90](v10, v6);
      }

      else
      {
        if (v10 >= *(v7 + 16))
        {
          goto LABEL_26;
        }

        v11 = *(v6 + 8 * v10 + 32);
      }

      v12 = v11;
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (!v13)
      {
        goto LABEL_5;
      }

      v14 = [v13 associatedMessageGUID];
      if (!v14)
      {
        goto LABEL_5;
      }

      v15 = v14;
      v16 = v7;
      v17 = v6;
      v18 = sub_190D56F10();
      v20 = v19;

      if (v18 == a1 && v20 == a2)
      {
        break;
      }

      v22 = sub_190D58760();

      v6 = v17;
      v7 = v16;
      if (v22)
      {
        goto LABEL_20;
      }

LABEL_5:

      ++v10;
      if (v4 == v8)
      {
        v9 = v40;
        goto LABEL_29;
      }
    }

    v6 = v17;
LABEL_20:
    MEMORY[0x193AF29E0](v23);
    if (*((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    sub_190D571E0();
    v9 = v47[0];
    v7 = v16;
  }

  while (v4 != v8);
LABEL_29:

  if (!(v9 >> 62))
  {
    v24 = v42;
    v25 = a3;
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

LABEL_38:

LABEL_39:
    v30 = [v24 chatItemGUIDsOfHiddenTapbackPiles];
    if (v30)
    {
      v31 = v30;
      v32 = sub_190D57410();
    }

    else
    {
      v32 = MEMORY[0x1E69E7CD0];
    }

    v4 = a2;
    v47[2] = v32;
    if (v25)
    {
      sub_190D52690();
      sub_1908AA174(v47, a1, a2);

      if (qword_1EAD51DE8 == -1)
      {
        goto LABEL_44;
      }

      goto LABEL_56;
    }

    sub_1908AE240(a1, a2);

    if (qword_1EAD51DE8 != -1)
    {
      swift_once();
    }

    v39 = sub_190D53040();
    __swift_project_value_buffer(v39, qword_1EAD9E2D0);
    sub_190D52690();
    v34 = sub_190D53020();
    v35 = sub_190D576C0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_19021D9F8(a1, a2, v47);
      v38 = "Showing associated cell for parentChatItemGUID:%s";
LABEL_50:
      _os_log_impl(&dword_19020E000, v34, v35, v38, v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x193AF7A40](v37, -1, -1);
      MEMORY[0x193AF7A40](v36, -1, -1);
    }

    goto LABEL_51;
  }

  v24 = v42;
  v25 = a3;
  if (!sub_190D581C0())
  {
    goto LABEL_38;
  }

LABEL_31:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x193AF3B90](0, v9);
LABEL_34:
    v27 = v26;

    v28 = [v24 cellForAssociatedChatItem_];
    if (v28)
    {
      v29 = v28;
      [v24 configureTranscriptCell:v28 hidden:v25 & 1];
    }

    else
    {
    }

    goto LABEL_39;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v9 + 32);
    goto LABEL_34;
  }

  __break(1u);
LABEL_56:
  swift_once();
LABEL_44:
  v33 = sub_190D53040();
  __swift_project_value_buffer(v33, qword_1EAD9E2D0);
  sub_190D52690();
  v34 = sub_190D53020();
  v35 = sub_190D576C0();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v47[0] = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_19021D9F8(a1, v4, v47);
    v38 = "Hiding associated cell for parentChatItemGUID:%s";
    goto LABEL_50;
  }

LABEL_51:

  v46 = sub_190D57400();

  [v24 setChatItemGUIDsOfHiddenTapbackPiles_];
}

void sub_190B29A14(char a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = [v4 chatItems];
  if (!v8)
  {
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = sub_190D56ED0();
  v25 = [v9 __ck_chatItemWithGUID_];

  if (v25)
  {
    v11 = v25;
    v12 = [v4 cellForChatItem_];
    if (v12)
    {
      v13 = v12;
      [v4 configureTranscriptCell:v13 hidden:a1 & 1];
    }
  }

  v14 = [v4 hiddenChatItemGUIDs];
  if (!v14)
  {
    v28 = MEMORY[0x1E69E7CD0];
    if (a1)
    {
      goto LABEL_8;
    }

LABEL_13:
    sub_1908AE240(a2, a3);

    if (qword_1EAD51DE8 != -1)
    {
      swift_once();
    }

    v23 = sub_190D53040();
    __swift_project_value_buffer(v23, qword_1EAD9E2D0);
    sub_190D52690();
    v18 = sub_190D53020();
    v19 = sub_190D576C0();

    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_18;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_19021D9F8(a2, a3, &v27);
    v22 = "Showing cell for chatItemGUID:%s";
    goto LABEL_17;
  }

  v15 = v14;
  v16 = sub_190D57410();

  v28 = v16;
  if ((a1 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  sub_190D52690();
  sub_1908AA174(&v27, a2, a3);

  if (qword_1EAD51DE8 != -1)
  {
    swift_once();
  }

  v17 = sub_190D53040();
  __swift_project_value_buffer(v17, qword_1EAD9E2D0);
  sub_190D52690();
  v18 = sub_190D53020();
  v19 = sub_190D576C0();

  if (!os_log_type_enabled(v18, v19))
  {
    goto LABEL_18;
  }

  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v27 = v21;
  *v20 = 136315138;
  *(v20 + 4) = sub_19021D9F8(a2, a3, &v27);
  v22 = "Hiding cell for chatItemGUID:%s";
LABEL_17:
  _os_log_impl(&dword_19020E000, v18, v19, v22, v20, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v21);
  MEMORY[0x193AF7A40](v21, -1, -1);
  MEMORY[0x193AF7A40](v20, -1, -1);
LABEL_18:

  v24 = sub_190D57400();

  [v4 setHiddenChatItemGUIDs_];
}

uint64_t sub_190B29E48()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E2D0);
  __swift_project_value_buffer(v0, qword_1EAD9E2D0);
  sub_190D53010();
  return sub_190D53030();
}

void sub_190B29EB4(void *a1, char a2)
{
  if (!a1)
  {
    return;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v13 = a1;
    v6 = [v5 balloonView];
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    [v6 setHidden_];
  }

  else
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (!v9)
    {
      return;
    }

    v10 = v9;
    v13 = a1;
    if ([v10 emphasisState])
    {
      v8 = v13;
      goto LABEL_6;
    }

    v11 = [v10 contentView];
    v7 = v11;
    v12 = 1.0;
    if (a2)
    {
      v12 = 0.0;
    }

    [v11 setAlpha_];
  }

  v8 = v7;
LABEL_6:
}

unint64_t sub_190B29FF8()
{
  result = qword_1EAD44F88;
  if (!qword_1EAD44F88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD44F88);
  }

  return result;
}

id GroupTypingAvatarAnimationCoordinator.__allocating_init(toCell:fromTypingCell:hostingView:fromFrame:senderContact:completion:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  v11 = v10;
  v44 = v11;
  v22 = objc_allocWithZone(v11);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v45 = a1;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v23 = &v22[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_fromFrame];
  *v23 = a7;
  v23[1] = a8;
  v23[2] = a9;
  v23[3] = a10;
  *&v22[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_senderContact] = a4;
  v24 = &v22[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_completion];
  *v24 = a5;
  *(v24 + 1) = a6;
  v25 = a4;
  sub_190D50920();
  v26 = [a3 superview];
  if (v26)
  {
    v27 = v26;
    [v26 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
  }

  else
  {
    v29 = 0.0;
    v31 = 0.0;
    v33 = 0.0;
    v35 = 0.0;
  }

  v36 = [objc_allocWithZone(type metadata accessor for OverlayView()) initWithFrame_];
  v37 = OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_overlayView;
  *&v22[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_overlayView] = v36;
  v38 = [objc_allocWithZone(CKAvatarView) initWithFrame_];
  v39 = OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_avatarView;
  *&v22[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_avatarView] = v38;
  [v38 setContact_];
  [*&v22[v37] addSubview_];
  v40 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:370.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  v41 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v40 timingParameters:0.5];

  *&v22[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_animator] = v41;
  v46.receiver = v22;
  v46.super_class = v44;
  v42 = objc_msgSendSuper2(&v46, sel_init);

  return v42;
}

id GroupTypingAvatarAnimationCoordinator.init(toCell:fromTypingCell:hostingView:fromFrame:senderContact:completion:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  v14 = sub_190B2BB10(a7, a8, a9, a10, a1, a2, a3, a4, a5, a6);

  return v14;
}

id GroupTypingAvatarAnimationCoordinator.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_overlayView] removeFromSuperview];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupTypingAvatarAnimationCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190B2A604()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4 && (v5 = v4, v6 = [v4 contactImageView], v5, v6))
    {
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        v9 = [v3 superview];
        if (v9)
        {
          v10 = v9;
          [v9 insertSubview:*&v1[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_overlayView] aboveSubview:v3];
        }

        [*&v1[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_avatarView] layoutIfNeeded];
        [v6 setHidden_];
        v11 = swift_unknownObjectWeakLoadStrong();
        v12 = [v11 contactImageStrokeView];

        [v12 setHidden_];
        if (qword_1EAD51DF0 != -1)
        {
          swift_once();
        }

        v13 = sub_190D53040();
        __swift_project_value_buffer(v13, qword_1EAD9E2E8);
        v14 = sub_190D53020();
        v15 = sub_190D576C0();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_19020E000, v14, v15, "About to begin new avatar animation.", v16, 2u);
          MEMORY[0x193AF7A40](v16, -1, -1);
        }

        v17 = OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_animator;
        v18 = *&v1[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_animator];
        v19 = swift_allocObject();
        v19[2] = v8;
        v19[3] = v6;
        v19[4] = v1;
        v52 = sub_190B2BDC4;
        v53 = v19;
        aBlock = MEMORY[0x1E69E9820];
        v49 = 1107296256;
        v50 = sub_190840E6C;
        v51 = &block_descriptor_84;
        v20 = _Block_copy(&aBlock);
        v21 = v18;
        osloga = v8;
        v22 = v6;
        v23 = v1;

        [v21 addAnimations_];
        _Block_release(v20);

        v24 = *&v1[v17];
        v25 = swift_allocObject();
        *(v25 + 16) = v23;
        v52 = sub_190B2BDD0;
        v53 = v25;
        aBlock = MEMORY[0x1E69E9820];
        v49 = 1107296256;
        v50 = sub_190840E6C;
        v51 = &block_descriptor_6_8;
        v26 = _Block_copy(&aBlock);
        v27 = v23;
        v28 = v24;

        [v28 addAnimations:v26 delayFactor:0.0];
        _Block_release(v26);

        v29 = *&v1[v17];
        v30 = swift_allocObject();
        *(v30 + 16) = v22;
        *(v30 + 24) = v27;
        v52 = sub_190B2BDD8;
        v53 = v30;
        aBlock = MEMORY[0x1E69E9820];
        v49 = 1107296256;
        v50 = sub_190893958;
        v51 = &block_descriptor_12_6;
        v31 = _Block_copy(&aBlock);
        v32 = v22;
        v33 = v27;
        v34 = v29;

        [v34 addCompletion_];
        _Block_release(v31);

        [*&v1[v17] startAnimation];
        return;
      }
    }

    else
    {
      v6 = v3;
    }
  }

  if (qword_1EAD51DF0 != -1)
  {
    swift_once();
  }

  v35 = sub_190D53040();
  __swift_project_value_buffer(v35, qword_1EAD9E2E8);
  v36 = v1;
  oslog = sub_190D53020();
  v37 = sub_190D576C0();

  if (os_log_type_enabled(oslog, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412802;
    v40 = swift_unknownObjectWeakLoadStrong();
    *(v38 + 4) = v40;
    *v39 = v40;
    *(v38 + 12) = 2112;
    v41 = swift_unknownObjectWeakLoadStrong();
    if (v41)
    {
      v42 = v41;
      v43 = [v41 contactImageView];

      v44 = v43;
    }

    else
    {
      v43 = 0;
      v44 = 0;
    }

    *(v38 + 14) = v43;
    v39[1] = v44;
    *(v38 + 22) = 2112;
    v45 = swift_unknownObjectWeakLoadStrong();
    *(v38 + 24) = v45;
    v39[2] = v45;
    _os_log_impl(&dword_19020E000, oslog, v37, "Bailing animation early, missing hostingView: %@, destinationContactView: %@, or toCell: %@.", v38, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54610);
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v39, -1, -1);
    MEMORY[0x193AF7A40](v38, -1, -1);
  }
}

id sub_190B2AC2C(void *a1, id a2, uint64_t a3)
{
  [a2 frame];
  [a1 convertRect:*(a3 + OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_overlayView) toCoordinateSpace:?];
  v6 = *(a3 + OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_avatarView);
  [a2 center];
  v8 = v7;
  [v6 center];
  [v6 setCenter_];
  [v6 bounds];
  [v6 setBounds_];

  return [v6 layoutIfNeeded];
}

void sub_190B2AD24(char *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v6;
        v24 = [v6 contactImageView];

        if (v24)
        {
          [v3 performAvatarAnimation];
          if (qword_1EAD51DF0 != -1)
          {
            swift_once();
          }

          v8 = sub_190D53040();
          __swift_project_value_buffer(v8, qword_1EAD9E2E8);
          v9 = sub_190D53020();
          v10 = sub_190D576C0();
          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            *v11 = 0;
            _os_log_impl(&dword_19020E000, v9, v10, "Performing avatar move animation.", v11, 2u);
            MEMORY[0x193AF7A40](v11, -1, -1);
          }

          [v24 frame];
          [v5 convertRect:*&a1[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_overlayView] toCoordinateSpace:?];
          v12 = *&a1[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_avatarView];
          [v12 setFrame_];
          [v12 layoutIfNeeded];

          goto LABEL_19;
        }
      }
    }
  }

  if (qword_1EAD51DF0 != -1)
  {
    swift_once();
  }

  v13 = sub_190D53040();
  __swift_project_value_buffer(v13, qword_1EAD9E2E8);
  v14 = a1;
  v24 = sub_190D53020();
  v15 = sub_190D576C0();

  if (os_log_type_enabled(v24, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412802;
    v18 = swift_unknownObjectWeakLoadStrong();
    *(v16 + 4) = v18;
    *v17 = v18;
    *(v16 + 12) = 2112;
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      v21 = [v19 contactImageView];

      v22 = v21;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    *(v16 + 14) = v21;
    v17[1] = v22;
    *(v16 + 22) = 2112;
    v23 = swift_unknownObjectWeakLoadStrong();
    *(v16 + 24) = v23;
    v17[2] = v23;
    _os_log_impl(&dword_19020E000, v24, v15, "Bailing move animation early, missing fromTypingCell: %@, destinationContactView: %@, or toCell: %@.", v16, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54610);
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v17, -1, -1);
    MEMORY[0x193AF7A40](v16, -1, -1);
  }

LABEL_19:
}

uint64_t sub_190B2B088(uint64_t result, void *a2, uint64_t a3)
{
  if (!result)
  {
    if (qword_1EAD51DF0 != -1)
    {
      swift_once();
    }

    v5 = sub_190D53040();
    __swift_project_value_buffer(v5, qword_1EAD9E2E8);
    v6 = sub_190D53020();
    v7 = sub_190D576C0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v6, v7, "All avatar animations complete. Removing overlay view.", v8, 2u);
      MEMORY[0x193AF7A40](v8, -1, -1);
    }

    [a2 setHidden_];
    Strong = swift_unknownObjectWeakLoadStrong();
    v10 = [Strong contactImageStrokeView];

    [v10 setHidden_];
    v11 = [*(a3 + OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_overlayView) removeFromSuperview];
    return (*(a3 + OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_completion))(v11);
  }

  return result;
}

void sub_190B2B248()
{
  v1 = OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_animator;
  if ([*&v0[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_animator] state] == 1)
  {
    v2 = *&v0[v1];
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v7[4] = sub_190B2BDE0;
    v7[5] = v3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_190840E6C;
    v7[3] = &block_descriptor_18;
    v4 = _Block_copy(v7);
    v5 = v2;
    v6 = v0;

    [v5 addAnimations:v4 delayFactor:0.0];
    _Block_release(v4);
  }
}

void sub_190B2B350(char *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong performAvatarAnimation];

  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {

    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v6;
        v24 = [v6 contactImageView];

        if (v24)
        {
          if (qword_1EAD51DF0 != -1)
          {
            swift_once();
          }

          v8 = sub_190D53040();
          __swift_project_value_buffer(v8, qword_1EAD9E2E8);
          v9 = sub_190D53020();
          v10 = sub_190D576C0();
          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            *v11 = 0;
            _os_log_impl(&dword_19020E000, v9, v10, "Performing avatar move animation.", v11, 2u);
            MEMORY[0x193AF7A40](v11, -1, -1);
          }

          [v24 frame];
          [v5 convertRect:*&a1[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_overlayView] toCoordinateSpace:?];
          v12 = *&a1[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_avatarView];
          [v12 setFrame_];
          [v12 layoutIfNeeded];

          goto LABEL_18;
        }
      }
    }
  }

  if (qword_1EAD51DF0 != -1)
  {
    swift_once();
  }

  v13 = sub_190D53040();
  __swift_project_value_buffer(v13, qword_1EAD9E2E8);
  v14 = a1;
  v24 = sub_190D53020();
  v15 = sub_190D576C0();

  if (os_log_type_enabled(v24, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412802;
    v18 = swift_unknownObjectWeakLoadStrong();
    *(v16 + 4) = v18;
    *v17 = v18;
    *(v16 + 12) = 2112;
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      v21 = [v19 contactImageView];

      v22 = v21;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    *(v16 + 14) = v21;
    v17[1] = v22;
    *(v16 + 22) = 2112;
    v23 = swift_unknownObjectWeakLoadStrong();
    *(v16 + 24) = v23;
    v17[2] = v23;
    _os_log_impl(&dword_19020E000, v24, v15, "Bailing move animation early, missing fromTypingCell: %@, destinationContactView: %@, or toCell: %@.", v16, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54610);
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v17, -1, -1);
    MEMORY[0x193AF7A40](v16, -1, -1);
  }

LABEL_18:
}

id sub_190B2B700()
{
  v1 = v0;
  v2 = OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_animator;
  result = [*(v0 + OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_animator) state];
  if (result == 1)
  {
    if (qword_1EAD51DF0 != -1)
    {
      swift_once();
    }

    v4 = sub_190D53040();
    __swift_project_value_buffer(v4, qword_1EAD9E2E8);
    v5 = sub_190D53020();
    v6 = sub_190D576C0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, v6, "Asked to end the animation early.", v7, 2u);
      MEMORY[0x193AF7A40](v7, -1, -1);
    }

    [*(v1 + v2) stopAnimation_];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = [Strong contactImageView];

      if (v10)
      {
        [v10 setHidden_];
      }
    }

    v11 = [*(v1 + OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_overlayView) removeFromSuperview];
    return (*(v1 + OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_completion))(v11);
  }

  return result;
}

id GroupTypingAvatarAnimationCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_190B2BA6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OverlayView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190B2BAA4()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E2E8);
  __swift_project_value_buffer(v0, qword_1EAD9E2E8);
  sub_190D53010();
  return sub_190D53030();
}

id sub_190B2BB10(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v19 = &v10[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_fromFrame];
  *v19 = a1;
  v19[1] = a2;
  v19[2] = a3;
  v19[3] = a4;
  *&v10[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_senderContact] = a8;
  v20 = &v10[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_completion];
  *v20 = a9;
  *(v20 + 1) = a10;
  v21 = a8;
  sub_190D50920();
  v22 = [a7 superview];
  if (v22)
  {
    v23 = v22;
    [v22 bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
  }

  else
  {
    v25 = 0.0;
    v27 = 0.0;
    v29 = 0.0;
    v31 = 0.0;
  }

  v32 = [objc_allocWithZone(type metadata accessor for OverlayView()) initWithFrame_];
  v33 = OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_overlayView;
  *&v10[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_overlayView] = v32;
  v34 = [objc_allocWithZone(CKAvatarView) initWithFrame_];
  v35 = OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_avatarView;
  *&v10[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_avatarView] = v34;
  [v34 setContact_];
  [*&v10[v33] addSubview_];
  v36 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:370.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  v37 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v36 timingParameters:0.5];

  *&v10[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_animator] = v37;
  v39.receiver = v10;
  v39.super_class = type metadata accessor for GroupTypingAvatarAnimationCoordinator();
  return objc_msgSendSuper2(&v39, sel_init);
}

double sub_190B2BEF8(uint64_t a1)
{
  result = *v1;
  if (a1 >= 1)
  {
    return fmin(sub_190B2BF8C(0, a1, result), 86400.0);
  }

  return result;
}

void sub_190B2BF34(uint64_t a1)
{
  v2 = *(*(v1 + 8) + 16);
  if (a1 >= v2)
  {
    fmin(sub_190B2BF8C(0, a1 - v2, *v1), 86400.0);
  }

  else if (a1 < 0)
  {
    __break(1u);
  }
}

double sub_190B2BF8C(char a1, uint64_t a2, double a3)
{
  result = -a3;
  if ((a1 & 1) == 0)
  {
    result = a3;
  }

  v5 = (*&a3 >> 52) & 0x7FFLL;
  if (v5 != 2047 && v5 | *&a3 & 0xFFFFFFFFFFFFFLL)
  {
    if (a2 >= -1022)
    {
      if (a2 >= 1024)
      {
        if (a2 >= 0xBFD)
        {
          a2 = 3069;
        }

        do
        {
          a2 -= 1023;
          result = result * 8.98846567e307;
        }

        while (a2 > 0x3FF);
      }
    }

    else
    {
      v6 = -3066;
      if (a2 > 0xFFFFFFFFFFFFF406)
      {
        v6 = a2;
      }

      v7 = v6 + 1022;
      result = result * 2.22507386e-308;
      v8 = v6 + 2044;
      v9 = __CFADD__(a2, 2044);
      if (a2 >= 0xFFFFFFFFFFFFF804)
      {
        a2 = v7;
      }

      else
      {
        a2 = v8;
      }

      if (!v9)
      {
        result = result * 2.22507386e-308;
      }
    }

    return result * COERCE_DOUBLE(((a2 << 52) + 0x3FF0000000000000) & 0x7FF0000000000000);
  }

  return result;
}

uint64_t sub_190B2C058(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xEB000000006C616ELL;
  if (a1 == 5)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0x6F69746F6D6F7270;
  }

  if (a1 == 5)
  {
    v4 = 0x8000000190E5AD10;
  }

  v6 = 0x8000000190E5ACD0;
  v7 = 0xD000000000000016;
  if (v2 == 3)
  {
    v7 = 0xD000000000000013;
  }

  else
  {
    v6 = 0x8000000190E5ACF0;
  }

  if (v2 > 4)
  {
    v6 = v4;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0x536E776F6E6B6E75;
  v9 = 0xEE00737265646E65;
  if (v2 != 1)
  {
    v8 = 0xD000000000000014;
    v9 = 0x8000000190E5ACB0;
  }

  if (v2)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x65757373496F6ELL;
  }

  if (v2 <= 2)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEE00737265646E65;
        if (v10 != 0x536E776F6E6B6E75)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v12 = 0x8000000190E5ACB0;
        if (v10 != 0xD000000000000014)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x65757373496F6ELL)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
    if (a2 <= 4u)
    {
      if (a2 != 3)
      {
        v12 = 0x8000000190E5ACF0;
        if (v10 != 0xD000000000000016)
        {
          goto LABEL_44;
        }

        goto LABEL_42;
      }

      v12 = 0x8000000190E5ACD0;
      goto LABEL_33;
    }

    if (a2 == 5)
    {
      v12 = 0x8000000190E5AD10;
LABEL_33:
      if (v10 != 0xD000000000000013)
      {
        goto LABEL_44;
      }

      goto LABEL_42;
    }

    v12 = 0xEB000000006C616ELL;
    if (v10 != 0x6F69746F6D6F7270)
    {
LABEL_44:
      v13 = sub_190D58760();
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v11 != v12)
  {
    goto LABEL_44;
  }

  v13 = 1;
LABEL_45:

  return v13 & 1;
}

uint64_t sub_190B2C274(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x4C74736575716572;
    }

    else
    {
      v3 = 7364973;
    }

    if (v2)
    {
      v4 = 0xEF6E6F697461636FLL;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x636F4C6572616873;
    v4 = 0xED00006E6F697461;
  }

  else
  {
    v3 = 0xD000000000000013;
    if (v2 == 3)
    {
      v4 = 0x8000000190E5AC60;
    }

    else
    {
      v4 = 0x8000000190E5AC80;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x4C74736575716572;
    }

    else
    {
      v6 = 7364973;
    }

    if (a2)
    {
      v5 = 0xEF6E6F697461636FLL;
    }

    else
    {
      v5 = 0xE300000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xED00006E6F697461;
    if (v3 != 0x636F4C6572616873)
    {
LABEL_31:
      v7 = sub_190D58760();
      goto LABEL_32;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0x8000000190E5AC60;
    }

    else
    {
      v5 = 0x8000000190E5AC80;
    }

    if (v3 != 0xD000000000000013)
    {
      goto LABEL_31;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_190B2C440(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000012;
  v3 = "ers";
  v4 = a1;
  v5 = 0xD000000000000019;
  if (a1 == 4)
  {
    v5 = 0xD000000000000010;
    v6 = "com.apple.MobileSMS";
  }

  else
  {
    v6 = "com.apple.madrid";
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000013;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v8 = "com.apple.Messages";
  }

  else
  {
    v8 = v6;
  }

  if (a1 == 1)
  {
    v9 = 0xD000000000000013;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (v4 == 1)
  {
    v10 = "com.apple.messages";
  }

  else
  {
    v10 = "com.apple.mobileSMS";
  }

  if (!v4)
  {
    v9 = 0xD000000000000012;
    v10 = "ers";
  }

  if (v4 <= 2)
  {
    v11 = v10;
  }

  else
  {
    v9 = v7;
    v11 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD000000000000013;
      v3 = "com.apple.Messages";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000010;
      v3 = "com.apple.MobileSMS";
    }

    else
    {
      v2 = 0xD000000000000019;
      v3 = "com.apple.madrid";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000013;
      v3 = "com.apple.messages";
    }

    else
    {
      v3 = "com.apple.mobileSMS";
    }
  }

  if (v9 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_190D58760();
  }

  return v12 & 1;
}

uint64_t sub_190B2C5A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF7473694C746E61;
  v3 = 0x7069636974726170;
  v4 = a1;
  if (a1 > 4u)
  {
    v13 = 0x736E61725479656BLL;
    v14 = 0xEF79636E65726170;
    v15 = 0x746E6F4365766173;
    v16 = 0xEB00000000746361;
    if (a1 != 8)
    {
      v15 = 0x6E6F436B636F6C62;
      v16 = 0xEC00000074636174;
    }

    if (a1 != 7)
    {
      v13 = v15;
      v14 = v16;
    }

    v17 = 0xE500000000000000;
    v18 = 0x616964656DLL;
    if (a1 != 5)
    {
      v18 = 0x64616F6C6E776F64;
      v17 = 0xEE00737465737341;
    }

    if (a1 <= 6u)
    {
      v11 = v18;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 6)
    {
      v12 = v17;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v5 = 0x6950656C646E6168;
    v6 = 0xEC00000072656B63;
    v7 = 0xE800000000000000;
    v8 = 0x6E6F697461636F6CLL;
    if (a1 != 3)
    {
      v8 = 0xD000000000000014;
      v7 = 0x8000000190E5AE40;
    }

    if (a1 != 2)
    {
      v5 = v8;
      v6 = v7;
    }

    v9 = 0xD000000000000014;
    v10 = 0x8000000190E5AE00;
    if (a1)
    {
      v9 = 0x7069636974726170;
      v10 = 0xEF7473694C746E61;
    }

    if (a1 <= 1u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 1)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x616964656DLL)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v2 = 0xEE00737465737341;
        if (v11 != 0x64616F6C6E776F64)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_51;
    }

    if (a2 == 7)
    {
      v2 = 0xEF79636E65726170;
      if (v11 != 0x736E61725479656BLL)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    if (a2 == 8)
    {
      v2 = 0xEB00000000746361;
      if (v11 != 0x746E6F4365766173)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    v3 = 0x6E6F436B636F6C62;
    v2 = 0xEC00000074636174;
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEC00000072656B63;
        if (v11 != 0x6950656C646E6168)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      }

      if (a2 == 3)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x6E6F697461636F6CLL)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      }

      v19 = "conversationSettings";
LABEL_47:
      v2 = (v19 - 32) | 0x8000000000000000;
      if (v11 != 0xD000000000000014)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    if (!a2)
    {
      v19 = "conversationIdentity";
      goto LABEL_47;
    }
  }

  if (v11 != v3)
  {
LABEL_54:
    v20 = sub_190D58760();
    goto LABEL_55;
  }

LABEL_51:
  if (v12 != v2)
  {
    goto LABEL_54;
  }

  v20 = 1;
LABEL_55:

  return v20 & 1;
}

uint64_t sub_190B2C8F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1702260588;
  v6 = 0xE900000000000073;
  if (a1 != 6)
  {
    v5 = 0x6867696C746F7073;
    v4 = 0xE900000000000074;
  }

  v7 = 0x6B726F7765726966;
  if (a1 != 4)
  {
    v7 = 0x73726573616CLL;
    v6 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x69747465666E6F63;
  if (a1 != 2)
  {
    v9 = 1869112165;
    v8 = 0xE400000000000000;
  }

  v10 = 0x74617262656C6563;
  if (a1)
  {
    v3 = 0xEB000000006E6F69;
  }

  else
  {
    v10 = 0x6E6F6F6C6C6162;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE400000000000000;
        if (v11 != 1702260588)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE900000000000074;
        if (v11 != 0x6867696C746F7073)
        {
LABEL_45:
          v14 = sub_190D58760();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE900000000000073;
      if (v11 != 0x6B726F7765726966)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x73726573616CLL)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x69747465666E6F63)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE400000000000000;
      if (v11 != 1869112165)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEB000000006E6F69;
    if (v11 != 0x74617262656C6563)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v11 != 0x6E6F6F6C6C6162)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_190B2CB64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064657463;
  v3 = 0x656C6553656E6F6ELL;
  v4 = a1;
  v5 = 0xD000000000000014;
  v6 = 0xEE00534D53656761;
  if (a1 != 4)
  {
    v6 = 0xEE00534352656761;
  }

  if (a1 == 3)
  {
    v7 = 0x8000000190E5AED0;
  }

  else
  {
    v5 = 0x7373654D74786574;
    v7 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6567617373656D69;
  if (a1 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = 0x8000000190E5AEB0;
  }

  if (!a1)
  {
    v9 = 0x656C6553656E6F6ELL;
    v8 = 0xEC00000064657463;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x8000000190E5AED0;
      if (v10 != 0xD000000000000014)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (a2 == 4)
      {
        v12 = 0x534D53656761;
      }

      else
      {
        v12 = 0x534352656761;
      }

      v2 = v12 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      if (v10 != 0x7373654D74786574)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_31;
  }

  if (!a2)
  {
LABEL_27:
    if (v10 != v3)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (a2 != 1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x8000000190E5AEB0;
    goto LABEL_27;
  }

  v2 = 0xE800000000000000;
  if (v10 != 0x6567617373656D69)
  {
    goto LABEL_33;
  }

LABEL_31:
  if (v11 != v2)
  {
LABEL_33:
    v13 = sub_190D58760();
    goto LABEL_34;
  }

  v13 = 1;
LABEL_34:

  return v13 & 1;
}

uint64_t sub_190B2CD58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000656C637269;
  v3 = 0x632E6E6F73726570;
  v4 = a1;
  v5 = 0x72656B63697473;
  if (a1 == 6)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x6275622E74786574;
    v6 = 0xEB00000000656C62;
  }

  v7 = 0x8000000190E5AF50;
  v8 = 0xD000000000000011;
  if (a1 != 4)
  {
    v8 = 0x742E656C62627562;
    v7 = 0xEE006B6361627061;
  }

  if (a1 <= 5u)
  {
    v6 = v7;
  }

  else
  {
    v8 = v5;
  }

  v9 = 0x7269632E6F666E69;
  v10 = 0xEB00000000656C63;
  if (a1 != 2)
  {
    v9 = 0xD000000000000010;
    v10 = 0x8000000190E5AF30;
  }

  v11 = 0xE500000000000000;
  v12 = 0x6B636F6C63;
  if (!a1)
  {
    v12 = 0x632E6E6F73726570;
    v11 = 0xED0000656C637269;
  }

  if (a1 <= 1u)
  {
    v9 = v12;
    v10 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v8;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE700000000000000;
        if (v13 != 0x72656B63697473)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v2 = 0xEB00000000656C62;
        if (v13 != 0x6275622E74786574)
        {
          goto LABEL_43;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x8000000190E5AF50;
      if (v13 != 0xD000000000000011)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v2 = 0xEE006B6361627061;
      if (v13 != 0x742E656C62627562)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEB00000000656C63;
        if (v13 != 0x7269632E6F666E69)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v3 = 0xD000000000000010;
      v2 = 0x8000000190E5AF30;
    }

    else if (a2)
    {
      v2 = 0xE500000000000000;
      if (v13 != 0x6B636F6C63)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    if (v13 != v3)
    {
LABEL_43:
      v15 = sub_190D58760();
      goto LABEL_44;
    }
  }

LABEL_40:
  if (v14 != v2)
  {
    goto LABEL_43;
  }

  v15 = 1;
LABEL_44:

  return v15 & 1;
}

uint64_t sub_190B2CFE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x72656B63697473;
    }

    else
    {
      v5 = 0x656C756465686373;
    }

    if (v4 == 2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6E6F697463616572;
    }

    else
    {
      v5 = 0x6669636570736E75;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEB00000000646569;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x72656B63697473;
  if (a2 != 2)
  {
    v8 = 0x656C756465686373;
    v7 = 0xE900000000000064;
  }

  if (a2)
  {
    v3 = 0x6E6F697463616572;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_190D58760();
  }

  return v11 & 1;
}

void sub_190B2D138(uint64_t *a1@<X8>)
{
  v104 = a1;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA18);
  v126 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v104 - v1;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D7C8);
  v2 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v107 = &v104 - v3;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA20);
  v4 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v6 = &v104 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA28);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v104 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_190DDA780;
  v11 = objc_opt_self();
  v109 = @"showAppStoreGenreInSendMenu";
  v108 = [v11 standardUserDefaults];
  v127 = type metadata accessor for UserDefaultItem(0);
  v12 = objc_allocWithZone(v127);
  v13 = &v12[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  *(v13 + 12) = 256;
  *v13 = 0;
  v14 = &v12[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v132 = 0u;
  v133 = 0u;
  sub_19023C414(&v132, v131);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD551C0);
  sub_190D538D0();
  sub_19021E7D8(&v132);
  v16 = *(v8 + 32);
  v115 = v10;
  v17 = v10;
  v18 = v107;
  v117 = v7;
  v116 = v8 + 32;
  v112 = v16;
  v16(&v12[v15], v17, v7);
  v19 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v132 = 0;
  sub_190D538D0();
  v20 = *(v4 + 32);
  v118 = v6;
  v119 = v4 + 32;
  v111 = v20;
  v20(&v12[v19], v6, v121);
  v12[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v21 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v132) = 0;
  sub_190D538D0();
  v22 = *(v2 + 32);
  v23 = v124;
  v22(&v12[v21], v18, v124);
  v24 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v132 = 0;
  *(&v132 + 1) = 0xE000000000000000;
  v25 = v122;
  sub_190D538D0();
  v26 = *(v126 + 32);
  v126 += 32;
  v110 = v26;
  v26(&v12[v24], v25, v123);
  v27 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v132) = 0;
  sub_190D538D0();
  v22(&v12[v27], v18, v23);
  v28 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v132) = 0;
  sub_190D538D0();
  v120 = v2 + 32;
  v114 = v22;
  v22(&v12[v28], v18, v23);
  v29 = v108;
  *&v12[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v108;
  v30 = v109;
  v31 = sub_190D56F10();
  v33 = v32;
  v34 = &v12[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v34 = v31;
  v34[1] = v32;
  v35 = swift_allocObject();
  v35[2] = v29;
  v35[3] = v31;
  v35[4] = v33;
  v36 = &v12[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v36 = sub_190B2426C;
  v36[1] = v35;
  swift_beginAccess();
  *v13 = 0;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  *(v13 + 12) = 256;
  swift_beginAccess();
  v37 = *v14;
  *v14 = 0;
  v14[1] = 0;
  v38 = v29;
  sub_190D52690();
  sub_19022123C(v37);
  v130.receiver = v12;
  v130.super_class = v127;
  v39 = objc_msgSendSuper2(&v130, sel_init);
  v40 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v39[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v41 = v39;
  sub_190B224E8();
  v39[v40] = 1;
  sub_190D52690();
  v42 = sub_190D56ED0();

  [v38 addObserver:v41 forKeyPath:v42 options:1 context:0];

  *(v125 + 32) = v41;
  v105 = sub_190D56F10();
  v109 = v43;
  v44 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v108 = "ers";
  v45 = sub_190D56ED0();
  v46 = [v44 initWithSuiteName_];

  v106 = v46;
  if (v46)
  {
    v47 = objc_allocWithZone(v127);
    v48 = &v47[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
    *(v48 + 1) = 0;
    *(v48 + 2) = 0;
    *(v48 + 12) = 256;
    *v48 = 0;
    v49 = &v47[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
    *v49 = 0;
    v49[1] = 0;
    v50 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
    v132 = 0u;
    v133 = 0u;
    sub_19023C414(&v132, v131);
    v51 = v115;
    sub_190D538D0();
    sub_19021E7D8(&v132);
    v112(&v47[v50], v51, v117);
    v52 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
    *&v132 = 0;
    v53 = v118;
    sub_190D538D0();
    v111(&v47[v52], v53, v121);
    v47[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
    v54 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
    LOBYTE(v132) = 0;
    sub_190D538D0();
    v55 = v124;
    v56 = v114;
    v114(&v47[v54], v18, v124);
    v57 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
    *&v132 = 0;
    *(&v132 + 1) = 0xE000000000000000;
    v58 = v122;
    sub_190D538D0();
    v110(&v47[v57], v58, v123);
    v59 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
    LOBYTE(v132) = 0;
    sub_190D538D0();
    v56(&v47[v59], v18, v55);
    v60 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
    LOBYTE(v132) = 0;
    sub_190D538D0();
    v56(&v47[v60], v18, v55);
    v61 = v106;
    *&v47[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v106;
    v62 = &v47[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
    v63 = v105;
    v64 = v109;
    *v62 = v105;
    v62[1] = v64;
    v65 = swift_allocObject();
    v65[2] = v61;
    v65[3] = v63;
    v65[4] = v64;
    v66 = &v47[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
    *v66 = sub_190B2426C;
    v66[1] = v65;
    swift_beginAccess();
    *v48 = 0;
    *(v48 + 1) = 0;
    *(v48 + 2) = 0;
    *(v48 + 12) = 256;
    swift_beginAccess();
    v67 = *v49;
    *v49 = 0;
    v49[1] = 0;
    v68 = v61;
    sub_190D52690();
    sub_19022123C(v67);
    v129.receiver = v47;
    v129.super_class = v127;
    v69 = objc_msgSendSuper2(&v129, sel_init);
    v70 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
    v69[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
    v71 = v69;
    sub_190B224E8();
    v69[v70] = 1;
    sub_190D52690();
    v72 = sub_190D56ED0();

    [v68 addObserver:v71 forKeyPath:v72 options:1 context:0];

    *(v125 + 40) = v71;
    v106 = sub_190D56F10();
    v109 = v73;
    v74 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v75 = sub_190D56ED0();
    v76 = [v74 initWithSuiteName_];

    v108 = v76;
    if (v76)
    {
      v77 = objc_allocWithZone(v127);
      v78 = &v77[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
      *(v78 + 1) = 0;
      *(v78 + 2) = 0;
      *(v78 + 12) = 256;
      *v78 = 0;
      v79 = &v77[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
      *v79 = 0;
      v79[1] = 0;
      v80 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
      v132 = 0u;
      v133 = 0u;
      sub_19023C414(&v132, v131);
      v81 = v115;
      sub_190D538D0();
      sub_19021E7D8(&v132);
      v112(&v77[v80], v81, v117);
      v82 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
      *&v132 = 0;
      v83 = v118;
      sub_190D538D0();
      v111(&v77[v82], v83, v121);
      v77[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
      v84 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
      LOBYTE(v132) = 0;
      sub_190D538D0();
      v85 = v124;
      v86 = v114;
      v114(&v77[v84], v18, v124);
      v87 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
      *&v132 = 0;
      *(&v132 + 1) = 0xE000000000000000;
      v88 = v122;
      sub_190D538D0();
      v110(&v77[v87], v88, v123);
      v89 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
      LOBYTE(v132) = 0;
      sub_190D538D0();
      v86(&v77[v89], v18, v85);
      v90 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
      LOBYTE(v132) = 0;
      sub_190D538D0();
      v86(&v77[v90], v18, v85);
      v91 = v108;
      *&v77[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v108;
      v92 = &v77[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
      v93 = v106;
      v94 = v109;
      *v92 = v106;
      v92[1] = v94;
      v95 = swift_allocObject();
      v95[2] = v91;
      v95[3] = v93;
      v95[4] = v94;
      v96 = &v77[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
      *v96 = sub_190B2426C;
      v96[1] = v95;
      swift_beginAccess();
      *v78 = 0;
      *(v78 + 1) = 0;
      *(v78 + 2) = 0;
      *(v78 + 12) = 256;
      swift_beginAccess();
      v97 = *v79;
      *v79 = 0;
      v79[1] = 0;
      v98 = v91;
      sub_190D52690();
      sub_19022123C(v97);
      v128.receiver = v77;
      v128.super_class = v127;
      v99 = objc_msgSendSuper2(&v128, sel_init);
      v100 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
      v99[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
      v101 = v99;
      sub_190B224E8();
      v99[v100] = 1;
      sub_190D52690();
      v102 = sub_190D56ED0();

      [v98 addObserver:v101 forKeyPath:v102 options:1 context:0];

      v103 = v125;
      *(v125 + 48) = v101;
      *v104 = v103;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_190B2E070(uint64_t *a1@<X8>)
{
  v232 = a1;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA18);
  v252 = *(v249 - 8);
  MEMORY[0x1EEE9AC00](v249);
  v247 = &v230 - v1;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D7C8);
  v251 = *(v246 - 8);
  MEMORY[0x1EEE9AC00](v246);
  v3 = &v230 - v2;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA20);
  v253 = *(v250 - 8);
  MEMORY[0x1EEE9AC00](v250);
  v5 = &v230 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA28);
  v244 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v230 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v248 = swift_allocObject();
  *(v248 + 16) = xmmword_190DDA050;
  v10 = objc_opt_self();
  v240 = v10;
  v233 = @"AlwaysShowMadridRegistration";
  v231 = [v10 standardUserDefaults];
  v245 = type metadata accessor for UserDefaultItem(0);
  v11 = objc_allocWithZone(v245);
  v12 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 12) = 256;
  *v12 = 0;
  v13 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  v230 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v262 = 0u;
  v263 = 0u;
  sub_19023C414(&v262, v261);
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD551C0);
  v236 = v9;
  sub_190D538D0();
  sub_19021E7D8(&v262);
  v239 = *(v7 + 32);
  v243 = v7 + 32;
  v239(&v11[v14], v9, v6);
  v15 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v262 = 0;
  v237 = v5;
  sub_190D538D0();
  v241 = *(v253 + 32);
  v253 += 32;
  v241(&v11[v15], v5, v250);
  v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v16 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v262) = 0;
  v17 = v3;
  sub_190D538D0();
  v18 = v251 + 32;
  v19 = *(v251 + 32);
  v20 = v3;
  v21 = v246;
  v19(&v11[v16], v20, v246);
  v22 = v19;
  v235 = v19;
  v23 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v262 = 0;
  *(&v262 + 1) = 0xE000000000000000;
  v24 = v247;
  sub_190D538D0();
  v25 = *(v252 + 32);
  v252 += 32;
  v242 = v25;
  v25(&v11[v23], v24, v249);
  v26 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v262) = 0;
  sub_190D538D0();
  v27 = v17;
  v28 = v17;
  v29 = v21;
  v251 = v18;
  v22(&v11[v26], v27, v21);
  v30 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v262) = 0;
  sub_190D538D0();
  v31 = v28;
  v22(&v11[v30], v28, v29);
  v32 = v231;
  *&v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v231;
  v33 = v233;
  v34 = sub_190D56F10();
  v36 = v35;
  v37 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v37 = v34;
  v37[1] = v35;
  v38 = swift_allocObject();
  v38[2] = v32;
  v38[3] = v34;
  v38[4] = v36;
  v39 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v39 = sub_190B2426C;
  v39[1] = v38;
  swift_beginAccess();
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 12) = 256;
  v40 = v230;
  swift_beginAccess();
  v41 = *v40;
  *v40 = 0;
  v40[1] = 0;
  v42 = v32;
  sub_190D52690();
  sub_19022123C(v41);
  v43 = v245;
  v260.receiver = v11;
  v260.super_class = v245;
  v44 = objc_msgSendSuper2(&v260, sel_init);
  v45 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v44[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v46 = v44;
  sub_190B224E8();
  v44[v45] = 1;
  sub_190D52690();
  v47 = sub_190D56ED0();

  [(__CFString *)v42 addObserver:v46 forKeyPath:v47 options:1 context:0];

  *(v248 + 32) = v46;
  v233 = @"AlwaysShowNicknameOnboarding";
  v231 = [v240 standardUserDefaults];
  v48 = objc_allocWithZone(v43);
  v49 = &v48[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v49 + 1) = 0;
  *(v49 + 2) = 0;
  *(v49 + 12) = 256;
  *v49 = 0;
  v50 = &v48[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v50 = 0;
  v50[1] = 0;
  v51 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v262 = 0u;
  v263 = 0u;
  sub_19023C414(&v262, v261);
  v52 = v236;
  sub_190D538D0();
  sub_19021E7D8(&v262);
  v239(&v48[v51], v52, v244);
  v53 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v262 = 0;
  v54 = v237;
  sub_190D538D0();
  v241(&v48[v53], v54, v250);
  v48[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v55 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v262) = 0;
  sub_190D538D0();
  v56 = v246;
  v57 = v235;
  v235(&v48[v55], v31, v246);
  v58 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v262 = 0;
  *(&v262 + 1) = 0xE000000000000000;
  v59 = v247;
  sub_190D538D0();
  v242(&v48[v58], v59, v249);
  v60 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v262) = 0;
  sub_190D538D0();
  v234 = v31;
  v57(&v48[v60], v31, v56);
  v61 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v262) = 0;
  sub_190D538D0();
  v57(&v48[v61], v31, v56);
  v62 = v231;
  *&v48[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v231;
  v63 = v233;
  v64 = sub_190D56F10();
  v66 = v65;
  v67 = &v48[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v67 = v64;
  v67[1] = v65;
  v68 = swift_allocObject();
  v68[2] = v62;
  v68[3] = v64;
  v68[4] = v66;
  v69 = &v48[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v69 = sub_190B2426C;
  v69[1] = v68;
  swift_beginAccess();
  *v49 = 0;
  *(v49 + 1) = 0;
  *(v49 + 2) = 0;
  *(v49 + 12) = 256;
  swift_beginAccess();
  v70 = *v50;
  *v50 = 0;
  v50[1] = 0;
  v71 = v62;
  sub_190D52690();
  sub_19022123C(v70);
  v72 = v245;
  v259.receiver = v48;
  v259.super_class = v245;
  v73 = objc_msgSendSuper2(&v259, sel_init);
  v74 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v73[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v75 = v73;
  sub_190B224E8();
  v73[v74] = 1;
  sub_190D52690();
  v76 = sub_190D56ED0();

  [(__CFString *)v71 addObserver:v75 forKeyPath:v76 options:1 context:0];

  *(v248 + 40) = v75;
  v231 = @"AlwaysShowSyndicationOnboarding";
  v230 = [v240 standardUserDefaults];
  v77 = objc_allocWithZone(v72);
  v78 = &v77[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v78 + 1) = 0;
  *(v78 + 2) = 0;
  *(v78 + 12) = 256;
  *v78 = 0;
  v79 = &v77[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  v233 = &v77[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v79 = 0;
  v79[1] = 0;
  v80 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v262 = 0u;
  v263 = 0u;
  sub_19023C414(&v262, v261);
  v81 = v236;
  sub_190D538D0();
  sub_19021E7D8(&v262);
  v239(&v77[v80], v81, v244);
  v82 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v262 = 0;
  v83 = v237;
  sub_190D538D0();
  v241(&v77[v82], v83, v250);
  v77[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v84 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v262) = 0;
  v85 = v234;
  sub_190D538D0();
  v86 = v246;
  v87 = v235;
  v235(&v77[v84], v85, v246);
  v88 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v262 = 0;
  *(&v262 + 1) = 0xE000000000000000;
  v89 = v247;
  sub_190D538D0();
  v242(&v77[v88], v89, v249);
  v90 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v262) = 0;
  sub_190D538D0();
  v87(&v77[v90], v85, v86);
  v91 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v262) = 0;
  sub_190D538D0();
  v87(&v77[v91], v85, v86);
  v93 = v230;
  v92 = v231;
  *&v77[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v230;
  v94 = sub_190D56F10();
  v96 = v95;
  v97 = &v77[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v97 = v94;
  v97[1] = v95;
  v98 = swift_allocObject();
  v98[2] = v93;
  v98[3] = v94;
  v98[4] = v96;
  v99 = &v77[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v99 = sub_190B2426C;
  v99[1] = v98;
  swift_beginAccess();
  v78[24] = 0;
  *(v78 + 1) = 0;
  *(v78 + 2) = 0;
  *v78 = 0;
  v78[25] = 1;
  v100 = v233;
  swift_beginAccess();
  v101 = *v100;
  *v100 = 0;
  v100[1] = 0;
  v102 = v93;
  sub_190D52690();
  sub_19022123C(v101);
  v103 = v245;
  v258.receiver = v77;
  v258.super_class = v245;
  v104 = objc_msgSendSuper2(&v258, sel_init);
  v105 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v104[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v106 = v104;
  sub_190B224E8();
  v104[v105] = 1;
  sub_190D52690();
  v107 = sub_190D56ED0();

  [v102 addObserver:v106 forKeyPath:v107 options:1 context:0];

  *(v248 + 48) = v106;
  v233 = @"AlwaysShowWhatsNewScreen";
  v231 = [v240 standardUserDefaults];
  v108 = objc_allocWithZone(v103);
  v109 = &v108[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v109 + 1) = 0;
  *(v109 + 2) = 0;
  *(v109 + 12) = 256;
  *v109 = 0;
  v110 = &v108[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v110 = 0;
  v110[1] = 0;
  v111 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v262 = 0u;
  v263 = 0u;
  sub_19023C414(&v262, v261);
  v112 = v236;
  sub_190D538D0();
  sub_19021E7D8(&v262);
  v239(&v108[v111], v112, v244);
  v113 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v262 = 0;
  v114 = v237;
  sub_190D538D0();
  v241(&v108[v113], v114, v250);
  v108[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v115 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v262) = 0;
  v116 = v234;
  sub_190D538D0();
  v117 = v246;
  v118 = v235;
  v235(&v108[v115], v116, v246);
  v119 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v262 = 0;
  *(&v262 + 1) = 0xE000000000000000;
  v120 = v247;
  sub_190D538D0();
  v242(&v108[v119], v120, v249);
  v121 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v262) = 0;
  sub_190D538D0();
  v118(&v108[v121], v116, v117);
  v122 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v262) = 0;
  sub_190D538D0();
  v118(&v108[v122], v116, v117);
  v123 = v231;
  *&v108[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v231;
  v124 = v233;
  v125 = sub_190D56F10();
  v127 = v126;
  v128 = &v108[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v128 = v125;
  v128[1] = v126;
  v129 = swift_allocObject();
  v129[2] = v123;
  v129[3] = v125;
  v129[4] = v127;
  v130 = &v108[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v130 = sub_190B2426C;
  v130[1] = v129;
  swift_beginAccess();
  v109[24] = 0;
  *(v109 + 1) = 0;
  *(v109 + 2) = 0;
  *v109 = 0;
  v109[25] = 1;
  swift_beginAccess();
  v131 = *v110;
  *v110 = 0;
  v110[1] = 0;
  v132 = v123;
  sub_190D52690();
  sub_19022123C(v131);
  v133 = v245;
  v257.receiver = v108;
  v257.super_class = v245;
  v134 = objc_msgSendSuper2(&v257, sel_init);
  v135 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v134[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v136 = v134;
  sub_190B224E8();
  v134[v135] = 1;
  sub_190D52690();
  v137 = sub_190D56ED0();

  [(__CFString *)v132 addObserver:v136 forKeyPath:v137 options:1 context:0];

  *(v248 + 56) = v136;
  v233 = @"AlwaysShowMOCWelcomeScreen";
  v231 = [v240 standardUserDefaults];
  v138 = objc_allocWithZone(v133);
  v139 = &v138[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v139 + 1) = 0;
  *(v139 + 2) = 0;
  *(v139 + 12) = 256;
  *v139 = 0;
  v140 = &v138[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v140 = 0;
  v140[1] = 0;
  v141 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v262 = 0u;
  v263 = 0u;
  sub_19023C414(&v262, v261);
  v142 = v236;
  sub_190D538D0();
  sub_19021E7D8(&v262);
  v239(&v138[v141], v142, v244);
  v143 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v262 = 0;
  v144 = v237;
  sub_190D538D0();
  v241(&v138[v143], v144, v250);
  v138[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v145 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v262) = 0;
  v146 = v116;
  sub_190D538D0();
  v147 = v116;
  v148 = v246;
  v149 = v235;
  v235(&v138[v145], v147, v246);
  v150 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v262 = 0;
  *(&v262 + 1) = 0xE000000000000000;
  v151 = v247;
  sub_190D538D0();
  v242(&v138[v150], v151, v249);
  v152 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v262) = 0;
  sub_190D538D0();
  v149(&v138[v152], v146, v148);
  v153 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v262) = 0;
  sub_190D538D0();
  v149(&v138[v153], v146, v148);
  v154 = v231;
  *&v138[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v231;
  v155 = sub_190D56F10();
  v157 = v156;
  v158 = &v138[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v158 = v155;
  v158[1] = v156;
  v159 = swift_allocObject();
  v159[2] = v154;
  v159[3] = v155;
  v159[4] = v157;
  v160 = &v138[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v160 = sub_190B2426C;
  v160[1] = v159;
  swift_beginAccess();
  v139[24] = 0;
  *(v139 + 1) = 0;
  *(v139 + 2) = 0;
  *v139 = 0;
  v139[25] = 1;
  swift_beginAccess();
  v161 = *v140;
  *v140 = 0;
  v140[1] = 0;
  v162 = v154;
  sub_190D52690();
  sub_19022123C(v161);
  v163 = v245;
  v256.receiver = v138;
  v256.super_class = v245;
  v164 = objc_msgSendSuper2(&v256, sel_init);
  v165 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v164[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v166 = v164;
  sub_190B224E8();
  v164[v165] = 1;
  sub_190D52690();
  v167 = sub_190D56ED0();

  [(__CFString *)v162 addObserver:v166 forKeyPath:v167 options:1 context:0];

  *(v248 + 64) = v166;
  v231 = @"AlwaysShowAppleIntelligenceOnboarding";
  v230 = [v240 standardUserDefaults];
  v168 = objc_allocWithZone(v163);
  v169 = &v168[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v169 + 1) = 0;
  *(v169 + 2) = 0;
  *(v169 + 12) = 256;
  *v169 = 0;
  v170 = &v168[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  v233 = &v168[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v170 = 0;
  v170[1] = 0;
  v171 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v262 = 0u;
  v263 = 0u;
  sub_19023C414(&v262, v261);
  v172 = v236;
  sub_190D538D0();
  sub_19021E7D8(&v262);
  v239(&v168[v171], v172, v244);
  v173 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v262 = 0;
  v174 = v237;
  sub_190D538D0();
  v241(&v168[v173], v174, v250);
  v168[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v175 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v262) = 0;
  v176 = v234;
  sub_190D538D0();
  v177 = v176;
  v178 = v176;
  v179 = v246;
  v180 = v235;
  v235(&v168[v175], v177, v246);
  v181 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v262 = 0;
  *(&v262 + 1) = 0xE000000000000000;
  v182 = v247;
  sub_190D538D0();
  v242(&v168[v181], v182, v249);
  v183 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v262) = 0;
  sub_190D538D0();
  v180(&v168[v183], v178, v179);
  v184 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v262) = 0;
  sub_190D538D0();
  v180(&v168[v184], v178, v179);
  v185 = v230;
  v186 = v231;
  *&v168[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v230;
  v187 = sub_190D56F10();
  v189 = v188;
  v190 = &v168[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v190 = v187;
  v190[1] = v188;
  v191 = swift_allocObject();
  v191[2] = v185;
  v191[3] = v187;
  v191[4] = v189;
  v192 = &v168[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v192 = sub_190B2426C;
  v192[1] = v191;
  swift_beginAccess();
  v169[24] = 0;
  *(v169 + 1) = 0;
  *(v169 + 2) = 0;
  *v169 = 0;
  v169[25] = 1;
  v193 = v233;
  swift_beginAccess();
  v194 = *v193;
  *v193 = 0;
  v193[1] = 0;
  v195 = v185;
  sub_190D52690();
  sub_19022123C(v194);
  v196 = v245;
  v255.receiver = v168;
  v255.super_class = v245;
  v197 = objc_msgSendSuper2(&v255, sel_init);
  v198 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v197[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v199 = v197;
  sub_190B224E8();
  v197[v198] = 1;
  sub_190D52690();
  v200 = sub_190D56ED0();

  [v195 addObserver:v199 forKeyPath:v200 options:1 context:0];

  *(v248 + 72) = v199;
  v233 = @"NicknameOnboardingVersion";
  v240 = [v240 standardUserDefaults];
  v201 = objc_allocWithZone(v196);
  v202 = &v201[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v202 + 1) = 0;
  *(v202 + 2) = 0;
  *(v202 + 12) = 256;
  *v202 = 0;
  v203 = &v201[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v203 = 0;
  v203[1] = 0;
  v204 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v262 = 0u;
  v263 = 0u;
  sub_19023C414(&v262, v261);
  v205 = v236;
  sub_190D538D0();
  sub_19021E7D8(&v262);
  v239(&v201[v204], v205, v244);
  v206 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v262 = 0;
  v207 = v237;
  sub_190D538D0();
  v241(&v201[v206], v207, v250);
  v201[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v208 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v262) = 0;
  v209 = v234;
  sub_190D538D0();
  v210 = v246;
  v211 = v235;
  v235(&v201[v208], v209, v246);
  v212 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v262 = 0;
  *(&v262 + 1) = 0xE000000000000000;
  v213 = v247;
  sub_190D538D0();
  v242(&v201[v212], v213, v249);
  v214 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v262) = 0;
  sub_190D538D0();
  v211(&v201[v214], v209, v210);
  v215 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v262) = 0;
  sub_190D538D0();
  v211(&v201[v215], v209, v210);
  v216 = v240;
  *&v201[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v240;
  v217 = sub_190D56F10();
  v219 = v218;
  v220 = &v201[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v220 = v217;
  v220[1] = v218;
  v221 = swift_allocObject();
  v221[2] = v216;
  v221[3] = v217;
  v221[4] = v219;
  v222 = &v201[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v222 = sub_190B2426C;
  v222[1] = v221;
  swift_beginAccess();
  v202[24] = 0;
  *(v202 + 1) = 0;
  *(v202 + 2) = 0;
  *v202 = 0;
  v202[25] = 1;
  swift_beginAccess();
  v223 = *v203;
  *v203 = 0;
  v203[1] = 0;
  v224 = v216;
  sub_190D52690();
  sub_19022123C(v223);
  v254.receiver = v201;
  v254.super_class = v245;
  v225 = objc_msgSendSuper2(&v254, sel_init);
  v226 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v225[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v227 = v225;
  sub_190B224E8();
  v225[v226] = 1;
  sub_190D52690();
  v228 = sub_190D56ED0();

  [v224 addObserver:v227 forKeyPath:v228 options:1 context:0];

  v229 = v248;
  *(v248 + 80) = v227;
  *v232 = v229;
}

void sub_190B2FC48(uint64_t *a1@<X8>)
{
  v102 = a1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA18);
  v119 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v114 = &v99 - v1;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D7C8);
  v118 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v3 = &v99 - v2;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA20);
  v120 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v5 = &v99 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA28);
  v108 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v99 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_190DDA780;
  v10 = objc_opt_self();
  v111 = v10;
  v100 = @"SendAnimationSlowAnimationsEnabled";
  v99 = [v10 standardUserDefaults];
  v112 = type metadata accessor for UserDefaultItem(0);
  v11 = objc_allocWithZone(v112);
  v12 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 12) = 256;
  *v12 = 0;
  v13 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v125 = 0u;
  v126 = 0u;
  sub_19023C414(&v125, v124);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD551C0);
  v103 = v9;
  sub_190D538D0();
  sub_19021E7D8(&v125);
  v15 = *(v7 + 32);
  v107 = v7 + 32;
  v109 = v15;
  v15(&v11[v14], v9, v6);
  v16 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v125 = 0;
  v104 = v5;
  sub_190D538D0();
  v17 = *(v120 + 32);
  v120 += 32;
  v106 = v17;
  v17(&v11[v16], v5, v117);
  v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v18 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v125) = 0;
  sub_190D538D0();
  v20 = v118 + 32;
  v19 = *(v118 + 32);
  v21 = v113;
  v19(&v11[v18], v3, v113);
  v118 = v20;
  v22 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v125 = 0;
  *(&v125 + 1) = 0xE000000000000000;
  v23 = v114;
  sub_190D538D0();
  v24 = *(v119 + 32);
  v119 += 32;
  v105 = v24;
  v24(&v11[v22], v23, v116);
  v25 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v125) = 0;
  sub_190D538D0();
  v19(&v11[v25], v3, v21);
  v26 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v125) = 0;
  sub_190D538D0();
  v19(&v11[v26], v3, v21);
  v27 = v99;
  *&v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v99;
  v28 = v100;
  v29 = sub_190D56F10();
  v31 = v30;
  v32 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v32 = v29;
  v32[1] = v30;
  v33 = swift_allocObject();
  v33[2] = v27;
  v33[3] = v29;
  v33[4] = v31;
  v34 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v34 = sub_190B2426C;
  v34[1] = v33;
  swift_beginAccess();
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 12) = 256;
  swift_beginAccess();
  v35 = *v13;
  *v13 = 0;
  v13[1] = 0;
  v36 = v27;
  sub_190D52690();
  sub_19022123C(v35);
  v37 = v112;
  v123.receiver = v11;
  v123.super_class = v112;
  v38 = objc_msgSendSuper2(&v123, sel_init);
  v39 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v38[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v40 = v38;
  sub_190B224E8();
  v38[v39] = 1;
  sub_190D52690();
  v41 = sub_190D56ED0();

  [v36 addObserver:v40 forKeyPath:v41 options:1 context:0];

  *(v115 + 32) = v40;
  v100 = @"SendAnimationVerySlowAnimationsEnabled";
  v99 = [v111 standardUserDefaults];
  v42 = objc_allocWithZone(v37);
  v43 = &v42[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v43 + 1) = 0;
  *(v43 + 2) = 0;
  *(v43 + 12) = 256;
  *v43 = 0;
  v44 = &v42[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v44 = 0;
  v44[1] = 0;
  v45 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v125 = 0u;
  v126 = 0u;
  sub_19023C414(&v125, v124);
  v46 = v103;
  sub_190D538D0();
  sub_19021E7D8(&v125);
  v109(&v42[v45], v46, v108);
  v47 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v125 = 0;
  v48 = v104;
  sub_190D538D0();
  v106(&v42[v47], v48, v117);
  v42[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v49 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v125) = 0;
  sub_190D538D0();
  v50 = v113;
  v101 = v19;
  v19(&v42[v49], v3, v113);
  v51 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v125 = 0;
  *(&v125 + 1) = 0xE000000000000000;
  v52 = v114;
  sub_190D538D0();
  v105(&v42[v51], v52, v116);
  v53 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v125) = 0;
  sub_190D538D0();
  v19(&v42[v53], v3, v50);
  v54 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v125) = 0;
  sub_190D538D0();
  v19(&v42[v54], v3, v50);
  v55 = v99;
  *&v42[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v99;
  v56 = v100;
  v57 = sub_190D56F10();
  v59 = v58;
  v60 = &v42[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v60 = v57;
  v60[1] = v58;
  v61 = swift_allocObject();
  v61[2] = v55;
  v61[3] = v57;
  v61[4] = v59;
  v62 = &v42[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v62 = sub_190B2426C;
  v62[1] = v61;
  swift_beginAccess();
  *v43 = 0;
  *(v43 + 1) = 0;
  *(v43 + 2) = 0;
  *(v43 + 12) = 256;
  swift_beginAccess();
  v63 = *v44;
  *v44 = 0;
  v44[1] = 0;
  v64 = v55;
  sub_190D52690();
  sub_19022123C(v63);
  v122.receiver = v42;
  v65 = v112;
  v122.super_class = v112;
  v66 = objc_msgSendSuper2(&v122, sel_init);
  v67 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v66[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v68 = v66;
  sub_190B224E8();
  v66[v67] = 1;
  sub_190D52690();
  v69 = sub_190D56ED0();

  [v64 addObserver:v68 forKeyPath:v69 options:1 context:0];

  *(v115 + 40) = v68;
  v100 = @"SendAnimationVeryVerySlowAnimationsEnabled";
  v111 = [v111 standardUserDefaults];
  v70 = objc_allocWithZone(v65);
  v71 = &v70[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v71 + 1) = 0;
  *(v71 + 2) = 0;
  *(v71 + 12) = 256;
  *v71 = 0;
  v72 = &v70[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v72 = 0;
  v72[1] = 0;
  v73 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v125 = 0u;
  v126 = 0u;
  sub_19023C414(&v125, v124);
  v74 = v103;
  sub_190D538D0();
  sub_19021E7D8(&v125);
  v109(&v70[v73], v74, v108);
  v75 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v125 = 0;
  v76 = v104;
  sub_190D538D0();
  v106(&v70[v75], v76, v117);
  v70[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v77 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v125) = 0;
  sub_190D538D0();
  v78 = v113;
  v79 = v101;
  v101(&v70[v77], v3, v113);
  v80 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v125 = 0;
  *(&v125 + 1) = 0xE000000000000000;
  v81 = v114;
  sub_190D538D0();
  v105(&v70[v80], v81, v116);
  v82 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v125) = 0;
  sub_190D538D0();
  v79(&v70[v82], v3, v78);
  v83 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v125) = 0;
  sub_190D538D0();
  v79(&v70[v83], v3, v78);
  v84 = v111;
  *&v70[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v111;
  v85 = v100;
  v86 = sub_190D56F10();
  v88 = v87;
  v89 = &v70[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v89 = v86;
  v89[1] = v87;
  v90 = swift_allocObject();
  v90[2] = v84;
  v90[3] = v86;
  v90[4] = v88;
  v91 = &v70[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v91 = sub_190B2426C;
  v91[1] = v90;
  swift_beginAccess();
  v71[24] = 0;
  *(v71 + 1) = 0;
  *(v71 + 2) = 0;
  *v71 = 0;
  v71[25] = 1;
  swift_beginAccess();
  v92 = *v72;
  *v72 = 0;
  v72[1] = 0;
  v93 = v84;
  sub_190D52690();
  sub_19022123C(v92);
  v121.receiver = v70;
  v121.super_class = v112;
  v94 = objc_msgSendSuper2(&v121, sel_init);
  v95 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v94[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v96 = v94;
  sub_190B224E8();
  v94[v95] = 1;
  sub_190D52690();
  v97 = sub_190D56ED0();

  [v93 addObserver:v96 forKeyPath:v97 options:1 context:0];

  v98 = v115;
  *(v115 + 48) = v96;
  *v102 = v98;
}

void sub_190B30B18(uint64_t *a1@<X8>)
{
  v85 = a1;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA18);
  v91 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v71 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D7C8);
  v76 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v71 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA20);
  v78 = v5;
  v92 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v88 = &v71 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA28);
  v81 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v71 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_190DD5CE0;
  v11 = objc_opt_self();
  v84 = v11;
  v73 = @"showTickerHUD";
  v72 = [v11 standardUserDefaults];
  v86 = type metadata accessor for UserDefaultItem(0);
  v12 = objc_allocWithZone(v86);
  v13 = &v12[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  *(v13 + 12) = 256;
  *v13 = 0;
  v14 = &v12[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v96 = 0u;
  v97 = 0u;
  sub_19023C414(&v96, v95);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD551C0);
  v77 = v10;
  sub_190D538D0();
  sub_19021E7D8(&v96);
  v16 = *(v8 + 32);
  v80 = v8 + 32;
  v82 = v16;
  v16(&v12[v15], v10, v7);
  v17 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v96 = 0;
  v18 = v88;
  sub_190D538D0();
  v19 = *(v92 + 32);
  v92 += 32;
  v79 = v19;
  v19(&v12[v17], v18, v5);
  v12[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v20 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v96) = 0;
  sub_190D538D0();
  v21 = v76[4];
  v21(&v12[v20], v4, v2);
  v22 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v96 = 0;
  *(&v96 + 1) = 0xE000000000000000;
  v23 = v87;
  sub_190D538D0();
  v24 = *(v91 + 32);
  v91 += 32;
  v76 = v24;
  (v24)(&v12[v22], v23, v89);
  v25 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v96) = 0;
  sub_190D538D0();
  v75 = v2;
  v74 = v21;
  v21(&v12[v25], v4, v2);
  v26 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v96) = 0;
  sub_190D538D0();
  v21(&v12[v26], v4, v2);
  v27 = v72;
  *&v12[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v72;
  v28 = v73;
  v29 = sub_190D56F10();
  v31 = v30;
  v32 = &v12[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v32 = v29;
  v32[1] = v30;
  v33 = swift_allocObject();
  v33[2] = v27;
  v33[3] = v29;
  v33[4] = v31;
  v34 = &v12[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v34 = sub_190B2426C;
  v34[1] = v33;
  swift_beginAccess();
  *v13 = 0;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  *(v13 + 12) = 256;
  swift_beginAccess();
  v35 = *v14;
  *v14 = 0;
  v14[1] = 0;
  v36 = v27;
  sub_190D52690();
  sub_19022123C(v35);
  v37 = v86;
  v94.receiver = v12;
  v94.super_class = v86;
  v38 = objc_msgSendSuper2(&v94, sel_init);
  v39 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v38[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v40 = v38;
  sub_190B224E8();
  v38[v39] = 1;
  sub_190D52690();
  v41 = sub_190D56ED0();

  [v36 addObserver:v40 forKeyPath:v41 options:1 context:0];

  *(v90 + 32) = v40;
  v73 = @"showTickerHUDAndLogValueWhileRecording";
  v84 = [v84 standardUserDefaults];
  v42 = objc_allocWithZone(v37);
  v43 = &v42[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v43 + 1) = 0;
  *(v43 + 2) = 0;
  *(v43 + 12) = 256;
  *v43 = 0;
  v44 = &v42[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v44 = 0;
  v44[1] = 0;
  v45 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v96 = 0u;
  v97 = 0u;
  sub_19023C414(&v96, v95);
  v46 = v77;
  sub_190D538D0();
  sub_19021E7D8(&v96);
  v82(&v42[v45], v46, v81);
  v47 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v96 = 0;
  v48 = v88;
  sub_190D538D0();
  v79(&v42[v47], v48, v78);
  v42[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v49 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v96) = 0;
  sub_190D538D0();
  v50 = v75;
  v51 = v74;
  v74(&v42[v49], v4, v75);
  v52 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v96 = 0;
  *(&v96 + 1) = 0xE000000000000000;
  v53 = v87;
  sub_190D538D0();
  (v76)(&v42[v52], v53, v89);
  v54 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v96) = 0;
  sub_190D538D0();
  v51(&v42[v54], v4, v50);
  v55 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v96) = 0;
  sub_190D538D0();
  v51(&v42[v55], v4, v50);
  v56 = v84;
  *&v42[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v84;
  v57 = v73;
  v58 = sub_190D56F10();
  v60 = v59;
  v61 = &v42[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v61 = v58;
  v61[1] = v59;
  v62 = swift_allocObject();
  v62[2] = v56;
  v62[3] = v58;
  v62[4] = v60;
  v63 = &v42[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v63 = sub_190B2426C;
  v63[1] = v62;
  swift_beginAccess();
  *v43 = 0;
  *(v43 + 1) = 0;
  *(v43 + 2) = 0;
  *(v43 + 12) = 256;
  swift_beginAccess();
  v64 = *v44;
  *v44 = 0;
  v44[1] = 0;
  v65 = v56;
  sub_190D52690();
  sub_19022123C(v64);
  v93.receiver = v42;
  v93.super_class = v86;
  v66 = objc_msgSendSuper2(&v93, sel_init);
  v67 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v66[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v68 = v66;
  sub_190B224E8();
  v66[v67] = 1;
  sub_190D52690();
  v69 = sub_190D56ED0();

  [v65 addObserver:v68 forKeyPath:v69 options:1 context:0];

  v70 = v90;
  *(v90 + 40) = v68;
  *v85 = v70;
}

uint64_t PinnedDefaultsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DC48);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DC50);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v16 - v8;
  v10 = *v1;
  if (*v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_190D50920();
    sub_190D53900();

    if (v17 >> 62)
    {
      v15 = sub_190D581C0();

      if (v15)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v11)
      {
LABEL_4:
        v12 = sub_190D549E0();
        v16[1] = v7;
        v16[2] = a1;
        v16[0] = v16;
        MEMORY[0x1EEE9AC00](v12);
        v16[-2] = v10;
        v16[-1] = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DC58);
        sub_190B38D2C();
        sub_190D562A0();
        (*(v4 + 16))(v9, v6, v3);
        swift_storeEnumTagMultiPayload();
        sub_190B38E04();
        sub_190D54C50();
        return (*(v4 + 8))(v6, v3);
      }
    }

    swift_storeEnumTagMultiPayload();
    sub_190B38E04();
    return sub_190D54C50();
  }

  else
  {
    type metadata accessor for PinnedUserDefault(0);
    sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault);
    result = sub_190D54510();
    __break(1u);
  }

  return result;
}

uint64_t sub_190B31954(uint64_t a1)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_190D50920();
    sub_190D53900();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0);
    sub_190233640(&qword_1EAD5DCC8, &qword_1EAD582F0);
    sub_190B38DB0();
    sub_190B39EF4(&qword_1EAD5DCD0, type metadata accessor for UserDefaultItem);
    return sub_190D56290();
  }

  else
  {
    type metadata accessor for PinnedUserDefault(0);
    sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault);
    result = sub_190D54510();
    __break(1u);
  }

  return result;
}

unint64_t sub_190B31B18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A928);
  sub_190D55FD0();

  v0 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v0 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DCA0);
    sub_190D55FD0();
    v1 = v14;
    v13 = MEMORY[0x1E69E7CC0];
    if (v14 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
    {
      v3 = 0;
      v11 = v1 & 0xFFFFFFFFFFFFFF8;
      v12 = v1 & 0xC000000000000001;
      while (1)
      {
        if (v12)
        {
          v4 = MEMORY[0x193AF3B90](v3, v1);
        }

        else
        {
          if (v3 >= *(v11 + 16))
          {
            goto LABEL_19;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v7 = v1;
        sub_190D56F60();
        sub_190D55FD0();
        sub_190D56F60();

        sub_19081E484();
        v8 = sub_190D58110();

        if (v8)
        {
          sub_190D58360();
          sub_190D583B0();
          sub_190D583C0();
          sub_190D58370();
        }

        else
        {
        }

        v1 = v7;
        ++v3;
        if (v6 == i)
        {
          v9 = v13;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

    v9 = MEMORY[0x1E69E7CC0];
LABEL_22:
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DCA0);
    sub_190D55FD0();
    return v14;
  }

  return v9;
}

uint64_t DefaultsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DC78);
  MEMORY[0x1EEE9AC00](v67);
  v4 = &v50 - v3;
  v62 = sub_190D54D00();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v57 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_190D54D10();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v56 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DC80);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DC88);
  v55 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v12 = &v50 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DC90);
  v58 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v54 = &v50 - v13;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DC98);
  v60 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v59 = &v50 - v14;
  v15 = v1[3];
  v16 = v1[4];
  *&v75[16] = v1[2];
  v76 = v15;
  v77 = v16;
  v78 = *(v1 + 10);
  v17 = v1[1];
  v74 = *v1;
  *v75 = v17;
  v71 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DCA0);
  sub_190D55FD0();
  if (v69 >> 62)
  {
    v37 = sub_190D581C0();

    if (v37)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v18)
    {
LABEL_3:
      MEMORY[0x1EEE9AC00](v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DC58);
      v53 = v4;
      sub_190B38D2C();
      sub_190D554D0();
      v71 = *&v75[8];
      v20 = sub_190233640(&qword_1EAD5DCA8, &qword_1EAD5DC80);
      v21 = sub_19081E484();
      v52 = a1;
      v22 = v21;
      v23 = MEMORY[0x1E69E6158];
      sub_190D558C0();
      (*(v8 + 8))(v10, v7);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DCB0);
      *&v71 = v7;
      *(&v71 + 1) = v23;
      v72 = v20;
      v73 = v22;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DCB8);
      v26 = sub_190233640(&qword_1EAD5DCC0, &qword_1EAD5DCB8);
      *&v71 = v25;
      *(&v71 + 1) = v26;
      v27 = swift_getOpaqueTypeConformance2();
      v28 = v54;
      v29 = v65;
      sub_190D55BF0();
      (*(v55 + 8))(v12, v29);
      v69 = v74;
      v70 = *v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A928);
      sub_190D55FF0();
      v30 = v57;
      sub_190D54CF0();
      v31 = v56;
      sub_190D54CE0();
      (*(v61 + 8))(v30, v62);
      *&v71 = v29;
      *(&v71 + 1) = v24;
      v72 = OpaqueTypeConformance2;
      v73 = v27;
      v49 = swift_getOpaqueTypeConformance2();
      v32 = v66;
      v33 = v59;
      sub_190D55710();

      (*(v63 + 8))(v31, v64);
      (*(v58 + 8))(v28, v32);
      v34 = v60;
      v35 = v68;
      (*(v60 + 16))(v53, v33, v68);
      swift_storeEnumTagMultiPayload();
      v71 = __PAIR128__(v49, v32);
      swift_getOpaqueTypeConformance2();
      sub_190D54C50();
      return (*(v34 + 8))(v33, v35);
    }
  }

  sub_190D549E0();
  *v4 = sub_190D555D0();
  *(v4 + 1) = v38;
  v4[16] = v39 & 1;
  *(v4 + 3) = v40;
  swift_storeEnumTagMultiPayload();
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DCB0);
  v42 = sub_190233640(&qword_1EAD5DCA8, &qword_1EAD5DC80);
  v43 = sub_19081E484();
  *&v71 = v7;
  *(&v71 + 1) = MEMORY[0x1E69E6158];
  v72 = v42;
  v73 = v43;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DCB8);
  v46 = sub_190233640(&qword_1EAD5DCC0, &qword_1EAD5DCB8);
  *&v71 = v45;
  *(&v71 + 1) = v46;
  v47 = swift_getOpaqueTypeConformance2();
  *&v71 = v65;
  *(&v71 + 1) = v41;
  v72 = v44;
  v73 = v47;
  v48 = swift_getOpaqueTypeConformance2();
  *&v71 = v66;
  *(&v71 + 1) = v48;
  swift_getOpaqueTypeConformance2();
  return sub_190D54C50();
}

uint64_t sub_190B3282C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v12 = *(a1 + 32);
  v13 = v2;
  v14 = *(a1 + 64);
  v15 = *(a1 + 80);
  v3 = *(a1 + 16);
  v10 = *a1;
  v11 = v3;
  v9 = sub_190B31B18();
  v4 = swift_allocObject();
  v5 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = *(a1 + 80);
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  sub_190B38EA4(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0);
  sub_190233640(&qword_1EAD5DCC8, &qword_1EAD582F0);
  sub_190B38DB0();
  sub_190B39EF4(&qword_1EAD5DCD0, type metadata accessor for UserDefaultItem);
  return sub_190D56290();
}

__n128 sub_190B329A4@<Q0>(void **a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  v13 = *(a2 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DD28);
  sub_190D55FD0();
  type metadata accessor for PinnedUserDefault(0);
  sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault);
  *&v9 = sub_190D54520();
  *(&v9 + 1) = v5;
  sub_190D55FC0();
  LOBYTE(v11) = v13;
  *(&v11 + 1) = *(&v13 + 1);
  sub_190D55FC0();
  *v12 = v14;
  type metadata accessor for UserDefaultItem(0);
  sub_190B39EF4(&qword_1EAD5DD20, type metadata accessor for UserDefaultItem);
  v6 = v4;
  v10.n128_u64[0] = sub_190D53FC0();
  v10.n128_u64[1] = v7;
  *&v12[24] = 1;
  sub_190D55FC0();
  *&v15[2] = *&v12[10];
  *v15 = *&v12[8];
  result = v10;
  a3[2] = v11;
  a3[3] = v13;
  a3[4] = *v12;
  *(a3 + 74) = *&v15[2];
  *a3 = v9;
  a3[1] = v10;
  return result;
}

uint64_t sub_190B32B70()
{
  v0 = sub_190D54D70();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DCB8);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - v3;
  sub_190D54D30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD530E8);
  sub_19081E868();
  sub_190D53AE0();
  v5 = sub_190233640(&qword_1EAD5DCC0, &qword_1EAD5DCB8);
  MEMORY[0x193AF0690](v4, v1, v5);
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_190B32D1C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  sub_190D549E0();
  sub_190D53970();
  v5 = sub_190D539A0();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  sub_190D56050();
  v6 = sub_190D55D40();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD530E8);
  v9 = (a1 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v6;
  return result;
}

uint64_t sub_190B32E84()
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA18);
  v1 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v43 - v2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D7C8);
  v3 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v43 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA20);
  v5 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v43 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA28);
  v7 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v43 - v8;
  v9 = *v0;
  result = MEMORY[0x1E69E7CC0];
  v64 = MEMORY[0x1E69E7CC0];
  v11 = *(v9 + 16);
  if (v11)
  {
    v47 = objc_opt_self();
    v12 = (v9 + 32);
    v46 = (v7 + 32);
    v45 = (v5 + 32);
    v44 = (v3 + 32);
    v43 = (v1 + 32);
    do
    {
      v59 = v12;
      v60 = v11;
      v57 = *v12;
      v56 = [v47 standardUserDefaults];
      v58 = type metadata accessor for UserDefaultItem(0);
      v13 = objc_allocWithZone(v58);
      v14 = &v13[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      *(v14 + 12) = 256;
      *v14 = 0;
      v15 = &v13[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
      *v15 = 0;
      v15[1] = 0;
      v16 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
      memset(v63, 0, sizeof(v63));
      sub_19023C414(v63, v62);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD551C0);
      v17 = v48;
      sub_190D538D0();
      sub_19021E7D8(v63);
      (*v46)(&v13[v16], v17, v49);
      v18 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
      *&v63[0] = 0;
      v19 = v50;
      sub_190D538D0();
      (*v45)(&v13[v18], v19, v51);
      v13[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
      v20 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
      LOBYTE(v63[0]) = 0;
      v21 = v52;
      sub_190D538D0();
      v22 = *v44;
      v23 = v53;
      (*v44)(&v13[v20], v21, v53);
      v24 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
      *&v63[0] = 0;
      *(&v63[0] + 1) = 0xE000000000000000;
      v25 = v54;
      sub_190D538D0();
      (*v43)(&v13[v24], v25, v55);
      v26 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
      LOBYTE(v63[0]) = 0;
      sub_190D538D0();
      v22(&v13[v26], v21, v23);
      v27 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
      LOBYTE(v63[0]) = 0;
      sub_190D538D0();
      v22(&v13[v27], v21, v23);
      v28 = v56;
      *&v13[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v56;
      v29 = v57;
      v30 = sub_190D56F10();
      v32 = v31;
      v33 = &v13[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
      *v33 = v30;
      v33[1] = v31;
      v34 = swift_allocObject();
      v34[2] = v28;
      v34[3] = v30;
      v34[4] = v32;
      v35 = &v13[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
      *v35 = sub_190B2426C;
      v35[1] = v34;
      swift_beginAccess();
      *v14 = 0;
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      *(v14 + 12) = 256;
      swift_beginAccess();
      v36 = *v15;
      *v15 = 0;
      v15[1] = 0;
      v37 = v28;
      sub_190D52690();
      sub_19022123C(v36);
      v61.receiver = v13;
      v61.super_class = v58;
      v38 = objc_msgSendSuper2(&v61, sel_init);
      v39 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
      v38[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
      v40 = v38;
      sub_190B224E8();
      v38[v39] = 1;
      sub_190D52690();
      v41 = sub_190D56ED0();

      [v37 addObserver:v40 forKeyPath:v41 options:1 context:0];

      v42 = v40;
      MEMORY[0x193AF29E0]();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_190D571A0();
      }

      sub_190D571E0();

      v12 = v59 + 1;
      v11 = v60 - 1;
    }

    while (v60 != 1);
    return v64;
  }

  return result;
}

uint64_t SettingsView.body.getter()
{
  sub_190B32E84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0);
  sub_190233640(&qword_1EAD5DCC8, &qword_1EAD582F0);
  sub_190B38DB0();
  sub_190B39EF4(&qword_1EAD5DCD0, type metadata accessor for UserDefaultItem);
  return sub_190D56290();
}

double sub_190B336C0@<D0>(void **a1@<X0>, char a2@<W1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v7 = *a1;
  type metadata accessor for PinnedUserDefault(0);
  sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault);
  *&v12 = sub_190D54520();
  *(&v12 + 1) = v8;
  sub_190D55FC0();
  LOBYTE(v14) = v16;
  *(&v14 + 1) = *(&v16 + 1);
  sub_190D55FC0();
  *v15 = v17;
  type metadata accessor for UserDefaultItem(0);
  sub_190B39EF4(&qword_1EAD5DD20, type metadata accessor for UserDefaultItem);
  v9 = v7;
  *&v13 = sub_190D53FC0();
  *(&v13 + 1) = v10;
  v15[24] = a2;
  v15[25] = a3;
  sub_190D55FC0();
  *&v18[2] = *&v15[10];
  *v18 = *&v15[8];
  a4[2] = v14;
  a4[3] = v16;
  a4[4] = *v15;
  result = *&v18[2];
  *(a4 + 74) = *&v18[2];
  *a4 = v12;
  a4[1] = v13;
  return result;
}

uint64_t sub_190B3386C()
{
  sub_190B32E84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0);
  sub_190233640(&qword_1EAD5DCC8, &qword_1EAD582F0);
  sub_190B38DB0();
  sub_190B39EF4(&qword_1EAD5DCD0, type metadata accessor for UserDefaultItem);
  return sub_190D56290();
}

void sub_190B3397C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA18);
  v96 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v94 = &v78 - v2;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D7C8);
  v95 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v93 = &v78 - v3;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA20);
  v4 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v6 = &v78 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA28);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v78 - v9;
  v98 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_190DD55F0;
  v11 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v89 = "ers";
  v12 = sub_190D56ED0();
  v13 = [v11 initWithSuiteName_];

  v99 = v13;
  if (!v13)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v79 = 0x8000000190E74EB0;
  v100 = type metadata accessor for UserDefaultItem(0);
  v14 = objc_allocWithZone(v100);
  v15 = &v14[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  *(v15 + 12) = 256;
  *v15 = 0;
  v16 = &v14[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v105 = 0u;
  v106 = 0u;
  sub_19023C414(&v105, v104);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD551C0);
  sub_190D538D0();
  sub_19021E7D8(&v105);
  v18 = *(v8 + 32);
  v86 = v10;
  v88 = v7;
  v87 = v8 + 32;
  v84 = v18;
  v18(&v14[v17], v10, v7);
  v19 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v105 = 0;
  sub_190D538D0();
  v20 = *(v4 + 32);
  v90 = v6;
  v91 = v4 + 32;
  v83 = v20;
  v20(&v14[v19], v6, v92);
  v14[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v21 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v105) = 0;
  v22 = v93;
  sub_190D538D0();
  v23 = v95 + 32;
  v24 = *(v95 + 32);
  v25 = v101;
  v24(&v14[v21], v22, v101);
  v26 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v105 = 0;
  *(&v105 + 1) = 0xE000000000000000;
  v27 = v94;
  sub_190D538D0();
  v81 = *(v96 + 32);
  v96 += 32;
  v81(&v14[v26], v27, v1);
  v28 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v105) = 0;
  sub_190D538D0();
  v24(&v14[v28], v22, v25);
  v29 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v105) = 0;
  sub_190D538D0();
  v82 = v24;
  v24(&v14[v29], v22, v25);
  v30 = v99;
  *&v14[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v99;
  v31 = &v14[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  v32 = v79;
  *v31 = 0xD000000000000017;
  v31[1] = v32;
  v33 = swift_allocObject();
  v33[2] = v30;
  v33[3] = 0xD000000000000017;
  v33[4] = v32;
  v34 = &v14[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v34 = sub_190B2426C;
  v34[1] = v33;
  swift_beginAccess();
  *v15 = 0;
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  *(v15 + 12) = 256;
  swift_beginAccess();
  v35 = *v16;
  *v16 = 0;
  v16[1] = 0;
  v36 = v30;
  sub_19022123C(v35);
  v103.receiver = v14;
  v103.super_class = v100;
  v37 = objc_msgSendSuper2(&v103, sel_init);
  v38 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v37[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v39 = v37;
  sub_190B224E8();
  v37[v38] = 1;
  sub_190D52690();
  v40 = sub_190D56ED0();

  [v36 addObserver:v39 forKeyPath:v40 options:1 context:0];

  v41 = v97;
  *(v97 + 32) = v39;
  v107 = v41;
  v42 = v98[2];
  if (v42)
  {
    v95 = v23;
    v43 = v98 + 5;
    v44 = v101;
    v45 = v90;
    v80 = v1;
    while (1)
    {
      v99 = v42;
      v46 = *v43;
      v97 = *(v43 - 1);
      v98 = v43;
      v47 = objc_allocWithZone(MEMORY[0x1E695E000]);
      sub_190D52690();
      v48 = sub_190D56ED0();
      v49 = [v47 initWithSuiteName_];

      if (!v49)
      {
        break;
      }

      v50 = objc_allocWithZone(v100);
      v51 = &v50[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
      *(v51 + 1) = 0;
      *(v51 + 2) = 0;
      *(v51 + 12) = 256;
      *v51 = 0;
      v52 = &v50[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
      *v52 = 0;
      v52[1] = 0;
      v53 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
      v105 = 0u;
      v106 = 0u;
      sub_19023C414(&v105, v104);
      v54 = v86;
      sub_190D538D0();
      sub_19021E7D8(&v105);
      v84(&v50[v53], v54, v88);
      v55 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
      *&v105 = 0;
      sub_190D538D0();
      v83(&v50[v55], v45, v92);
      v50[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
      v56 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
      LOBYTE(v105) = 0;
      v57 = v93;
      sub_190D538D0();
      v58 = v44;
      v59 = v82;
      v82(&v50[v56], v57, v58);
      v60 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
      *&v105 = 0;
      *(&v105 + 1) = 0xE000000000000000;
      v61 = v94;
      sub_190D538D0();
      v62 = v61;
      v63 = v101;
      v81(&v50[v60], v62, v80);
      v64 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
      LOBYTE(v105) = 0;
      sub_190D538D0();
      v59(&v50[v64], v57, v63);
      v65 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
      LOBYTE(v105) = 0;
      sub_190D538D0();
      v59(&v50[v65], v57, v63);
      *&v50[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v49;
      v66 = &v50[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
      v67 = v97;
      *v66 = v97;
      v66[1] = v46;
      v68 = swift_allocObject();
      v68[2] = v49;
      v68[3] = v67;
      v68[4] = v46;
      v69 = &v50[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
      *v69 = sub_190B2426C;
      v69[1] = v68;
      swift_beginAccess();
      *v51 = 0;
      *(v51 + 1) = 0;
      *(v51 + 2) = 0;
      *(v51 + 12) = 256;
      swift_beginAccess();
      v70 = *v52;
      *v52 = 0;
      v52[1] = 0;
      v71 = v49;
      sub_190D52690();
      v72 = v71;
      sub_19022123C(v70);
      v102.receiver = v50;
      v102.super_class = v100;
      v73 = objc_msgSendSuper2(&v102, sel_init);
      v74 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
      v73[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
      v75 = v73;
      sub_190B224E8();
      v73[v74] = 1;
      sub_190D52690();
      v76 = sub_190D56ED0();

      [v72 addObserver:v75 forKeyPath:v76 options:1 context:0];

      v77 = v75;
      MEMORY[0x193AF29E0]();
      if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_190D571A0();
      }

      sub_190D571E0();

      v43 = v98 + 2;
      v42 = v99 - 1;
      v45 = v90;
      v44 = v101;
      if (v99 == 1)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_10;
  }
}

uint64_t FeatureDefaultsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_190D549E0();
  v21 = *(v1 + 1);
  v4 = sub_190D555D0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_190D52690();
  sub_190B3397C();
  v12 = v11;
  v22[0] = 1;
  v22[1] = 0xE000000000000000;
  sub_190D55FC0();
  type metadata accessor for PinnedUserDefault(0);
  sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault);
  *(&v36 + 1) = sub_190D54520();
  v37 = v13;
  *(&v33 + 1) = v3;
  v34 = v21;
  v29 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0);
  sub_190D55FC0();
  *&v35 = 0xE000000000000000;
  sub_190D55FC0();
  v14 = v37;
  v28 = v37;
  v31 = v37;
  *(a1 + 112) = v37;
  v26 = v35;
  v27 = v36;
  v24 = v33;
  v25 = v34;
  v23 = v32;
  LOBYTE(v29) = v8 & 1;
  v30[0] = v32;
  v30[1] = v33;
  v30[3] = v35;
  v30[4] = v36;
  v30[2] = v34;
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  v15 = v24;
  v16 = v23;
  v17 = v24;
  *(a1 + 32) = v23;
  *(a1 + 48) = v15;
  v18 = v27;
  *(a1 + 80) = v26;
  *(a1 + 96) = v18;
  v19 = v25;
  *(a1 + 64) = v25;
  v32 = v16;
  v33 = v17;
  v37 = v14;
  v35 = v26;
  v36 = v27;
  v34 = v19;
  sub_19081BE48(v4, v6, v8 & 1);
  sub_190D52690();
  sub_190B38EA4(v30, v22);
  sub_190B38EDC(&v32);
  sub_19081E474(v4, v6, v8 & 1);
}

__n128 OnboardingDefaultsView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  sub_190D52690();
  sub_190D55FC0();
  *&v4 = v9;
  type metadata accessor for PinnedUserDefault(0);
  sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault);
  v6.n128_u64[1] = sub_190D54520();
  v7 = v2;
  *(&v4 + 1) = 0xD000000000000013;
  *v5 = 0x8000000190E74D80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0);
  sub_190D55FC0();
  *&v5[8] = v8;
  sub_190D55FC0();
  result = v6;
  *(a1 + 32) = *v5;
  *(a1 + 48) = *&v5[16];
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v8;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_190B34920()
{
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA18);
  v90 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v71 - v0;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D7C8);
  v89 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v2 = &v71 - v1;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA20);
  v3 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v5 = &v71 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA28);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v71 - v8;
  v96 = MEMORY[0x1E69E7CC0];
  v10 = objc_opt_self();
  v72 = @"verboseConversationListFilteringLogging";
  v77 = v10;
  v71 = [v10 standardUserDefaults];
  v84 = type metadata accessor for UserDefaultItem(0);
  v11 = objc_allocWithZone(v84);
  v12 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 12) = 256;
  *v12 = 0;
  v13 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v94 = 0u;
  v95 = 0u;
  sub_19023C414(&v94, v93);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD551C0);
  sub_190D538D0();
  sub_19021E7D8(&v94);
  v15 = *(v7 + 32);
  v79 = v9;
  v81 = v6;
  v80 = v7 + 32;
  v75 = v15;
  v15(&v11[v14], v9, v6);
  v16 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v94 = 0;
  sub_190D538D0();
  v17 = *(v3 + 32);
  v82 = v5;
  v83 = v3 + 32;
  v74 = v17;
  v17(&v11[v16], v5, v85);
  v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v18 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v94) = 0;
  sub_190D538D0();
  v19 = v89 + 32;
  v20 = *(v89 + 32);
  v21 = v88;
  v20(&v11[v18], v2, v88);
  v22 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v94 = 0;
  *(&v94 + 1) = 0xE000000000000000;
  v23 = v86;
  sub_190D538D0();
  v24 = *(v90 + 32);
  v90 += 32;
  v73 = v24;
  v24(&v11[v22], v23, v87);
  v25 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v94) = 0;
  sub_190D538D0();
  v20(&v11[v25], v2, v21);
  v26 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v94) = 0;
  sub_190D538D0();
  v89 = v19;
  v78 = v20;
  v20(&v11[v26], v2, v21);
  v27 = v71;
  *&v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v71;
  v28 = v72;
  v29 = sub_190D56F10();
  v31 = v30;
  v32 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v32 = v29;
  v32[1] = v30;
  v33 = swift_allocObject();
  v33[2] = v27;
  v33[3] = v29;
  v33[4] = v31;
  v34 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v34 = sub_190B2426C;
  v34[1] = v33;
  swift_beginAccess();
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 12) = 256;
  swift_beginAccess();
  v35 = *v13;
  *v13 = 0;
  v13[1] = 0;
  v36 = v27;
  sub_190D52690();
  v37 = v84;
  sub_19022123C(v35);
  v92.receiver = v11;
  v92.super_class = v37;
  v38 = objc_msgSendSuper2(&v92, sel_init);
  v39 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v38[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v40 = v38;
  sub_190B224E8();
  v38[v39] = 1;
  sub_190D52690();
  v41 = sub_190D56ED0();

  [v36 addObserver:v40 forKeyPath:v41 options:1 context:0];

  MEMORY[0x193AF29E0]();
  if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_190D571A0();
  }

  sub_190D571E0();
  v72 = @"debugTypingIndicator";
  v77 = [v77 standardUserDefaults];
  v42 = objc_allocWithZone(v37);
  v43 = &v42[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v43 + 1) = 0;
  *(v43 + 2) = 0;
  *(v43 + 12) = 256;
  *v43 = 0;
  v44 = &v42[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v44 = 0;
  v44[1] = 0;
  v45 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v94 = 0u;
  v95 = 0u;
  sub_19023C414(&v94, v93);
  v46 = v79;
  sub_190D538D0();
  sub_19021E7D8(&v94);
  v75(&v42[v45], v46, v81);
  v47 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v94 = 0;
  v48 = v82;
  sub_190D538D0();
  v74(&v42[v47], v48, v85);
  v42[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v49 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v94) = 0;
  sub_190D538D0();
  v50 = v88;
  v51 = v78;
  v78(&v42[v49], v2, v88);
  v52 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v94 = 0;
  *(&v94 + 1) = 0xE000000000000000;
  v53 = v86;
  sub_190D538D0();
  v73(&v42[v52], v53, v87);
  v54 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v94) = 0;
  sub_190D538D0();
  v51(&v42[v54], v2, v50);
  v55 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v94) = 0;
  sub_190D538D0();
  v51(&v42[v55], v2, v50);
  v56 = v77;
  *&v42[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v77;
  v57 = v72;
  v58 = sub_190D56F10();
  v60 = v59;
  v61 = &v42[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v61 = v58;
  v61[1] = v59;
  v62 = swift_allocObject();
  v62[2] = v56;
  v62[3] = v58;
  v62[4] = v60;
  v63 = &v42[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v63 = sub_190B2426C;
  v63[1] = v62;
  swift_beginAccess();
  *v43 = 0;
  *(v43 + 1) = 0;
  *(v43 + 2) = 0;
  *(v43 + 12) = 256;
  swift_beginAccess();
  v64 = *v44;
  *v44 = 0;
  v44[1] = 0;
  v65 = v56;
  sub_190D52690();
  sub_19022123C(v64);
  v91.receiver = v42;
  v91.super_class = v84;
  v66 = objc_msgSendSuper2(&v91, sel_init);
  v67 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v66[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v68 = v66;
  sub_190B224E8();
  v66[v67] = 1;
  sub_190D52690();
  v69 = sub_190D56ED0();

  [v65 addObserver:v68 forKeyPath:v69 options:1 context:0];

  MEMORY[0x193AF29E0]();
  if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_190D571A0();
  }

  sub_190D571E0();
  return v96;
}

__n128 ConversationListDefaultsView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  sub_190B34920();
  sub_190D55FC0();
  *&v4 = v9;
  type metadata accessor for PinnedUserDefault(0);
  sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault);
  v6.n128_u64[1] = sub_190D54520();
  v7 = v2;
  *(&v4 + 1) = 0xD00000000000001ALL;
  *v5 = 0x8000000190E74DA0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0);
  sub_190D55FC0();
  *&v5[8] = v8;
  sub_190D55FC0();
  result = v6;
  *(a1 + 32) = *v5;
  *(a1 + 48) = *&v5[16];
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v8;
  *(a1 + 16) = v4;
  return result;
}

__CFString *sub_190B3558C()
{
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA18);
  v283 = *(v280 - 8);
  MEMORY[0x1EEE9AC00](v280);
  v1 = &v261 - v0;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D7C8);
  v284 = *(v281 - 8);
  MEMORY[0x1EEE9AC00](v281);
  v3 = &v261 - v2;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA20);
  v282 = *(v279 - 8);
  MEMORY[0x1EEE9AC00](v279);
  v5 = &v261 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA28);
  v274 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v261 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v277 = swift_allocObject();
  *&v277->data = xmmword_190DDA050;
  v10 = objc_opt_self();
  v270 = v10;
  v263 = @"UseVectorBalloonMasks";
  v262 = [v10 standardUserDefaults];
  v278 = type metadata accessor for UserDefaultItem(0);
  v11 = objc_allocWithZone(v278);
  v12 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 12) = 256;
  *v12 = 0;
  v13 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  v264 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v294 = 0u;
  v295 = 0u;
  sub_19023C414(&v294, v293);
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD551C0);
  v272 = v9;
  sub_190D538D0();
  sub_19021E7D8(&v294);
  v15 = *(v7 + 32);
  v273 = v7 + 32;
  v268 = v15;
  v15(&v11[v14], v9, v6);
  v16 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v294 = 0;
  v275 = v5;
  sub_190D538D0();
  v17 = *(v282 + 32);
  v282 += 32;
  v267 = v17;
  v17(&v11[v16], v5, v279);
  v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v18 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v294) = 0;
  v19 = v3;
  sub_190D538D0();
  v20 = *(v284 + 32);
  v284 += 32;
  v21 = v3;
  v22 = v281;
  v20(&v11[v18], v21, v281);
  v271 = v20;
  v23 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v294 = 0;
  *(&v294 + 1) = 0xE000000000000000;
  v276 = v1;
  sub_190D538D0();
  v24 = *(v283 + 32);
  v283 += 32;
  v266 = v24;
  v24(&v11[v23], v1, v280);
  v25 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v294) = 0;
  sub_190D538D0();
  v26 = v22;
  v20(&v11[v25], v19, v22);
  v27 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v294) = 0;
  sub_190D538D0();
  v28 = v19;
  v20(&v11[v27], v19, v26);
  v29 = v262;
  v30 = v263;
  *&v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v262;
  v31 = sub_190D56F10();
  v33 = v32;
  v34 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v34 = v31;
  v34[1] = v32;
  v35 = swift_allocObject();
  v35[2] = v29;
  v35[3] = v31;
  v35[4] = v33;
  v36 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v36 = sub_190B2426C;
  v36[1] = v35;
  swift_beginAccess();
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 12) = 256;
  v37 = v264;
  swift_beginAccess();
  v38 = *v37;
  *v37 = 0;
  v37[1] = 0;
  v39 = v29;
  sub_190D52690();
  sub_19022123C(v38);
  v40 = v278;
  v292.receiver = v11;
  v292.super_class = v278;
  v41 = objc_msgSendSuper2(&v292, sel_init);
  v42 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v41[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v43 = v41;
  sub_190B224E8();
  v41[v42] = 1;
  sub_190D52690();
  v44 = sub_190D56ED0();

  [v39 addObserver:v43 forKeyPath:v44 options:1 context:0];

  v277[1].isa = v43;
  v264 = @"AlwaysShowLoggedOutBanner";
  v263 = [v270 standardUserDefaults];
  v45 = objc_allocWithZone(v40);
  v46 = &v45[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v46 + 1) = 0;
  *(v46 + 2) = 0;
  *(v46 + 12) = 256;
  *v46 = 0;
  v47 = &v45[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v47 = 0;
  v47[1] = 0;
  v48 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v294 = 0u;
  v295 = 0u;
  sub_19023C414(&v294, v293);
  v49 = v272;
  sub_190D538D0();
  sub_19021E7D8(&v294);
  v268(&v45[v48], v49, v274);
  v50 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v294 = 0;
  v51 = v275;
  sub_190D538D0();
  v267(&v45[v50], v51, v279);
  v45[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v52 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v294) = 0;
  sub_190D538D0();
  v53 = v281;
  v54 = v271;
  v271(&v45[v52], v28, v281);
  v55 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v294 = 0;
  *(&v294 + 1) = 0xE000000000000000;
  v56 = v276;
  sub_190D538D0();
  v266(&v45[v55], v56, v280);
  v57 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v294) = 0;
  sub_190D538D0();
  v265 = v28;
  v54(&v45[v57], v28, v53);
  v58 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v294) = 0;
  sub_190D538D0();
  v54(&v45[v58], v28, v53);
  v60 = v263;
  v59 = v264;
  *&v45[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v263;
  v61 = sub_190D56F10();
  v63 = v62;
  v64 = &v45[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v64 = v61;
  v64[1] = v62;
  v65 = swift_allocObject();
  v65[2] = v60;
  v65[3] = v61;
  v65[4] = v63;
  v66 = &v45[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v66 = sub_190B2426C;
  v66[1] = v65;
  swift_beginAccess();
  *v46 = 0;
  *(v46 + 1) = 0;
  *(v46 + 2) = 0;
  *(v46 + 12) = 256;
  swift_beginAccess();
  v67 = *v47;
  *v47 = 0;
  v47[1] = 0;
  v68 = v60;
  sub_190D52690();
  sub_19022123C(v67);
  v291.receiver = v45;
  v69 = v278;
  v291.super_class = v278;
  v70 = objc_msgSendSuper2(&v291, sel_init);
  v71 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v70[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v72 = v70;
  sub_190B224E8();
  v70[v71] = 1;
  sub_190D52690();
  v73 = sub_190D56ED0();

  [(__CFString *)v68 addObserver:v72 forKeyPath:v73 options:1 context:0];

  v277[1].info = v72;
  v264 = @"showTranscriptDebugButton";
  v263 = [v270 standardUserDefaults];
  v74 = objc_allocWithZone(v69);
  v75 = &v74[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v75 + 1) = 0;
  *(v75 + 2) = 0;
  *(v75 + 12) = 256;
  *v75 = 0;
  v76 = &v74[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v76 = 0;
  v76[1] = 0;
  v77 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v294 = 0u;
  v295 = 0u;
  sub_19023C414(&v294, v293);
  v78 = v272;
  sub_190D538D0();
  sub_19021E7D8(&v294);
  v268(&v74[v77], v78, v274);
  v79 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v294 = 0;
  v80 = v275;
  sub_190D538D0();
  v267(&v74[v79], v80, v279);
  v74[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v81 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v294) = 0;
  v82 = v265;
  sub_190D538D0();
  v83 = v82;
  v84 = v82;
  v85 = v281;
  v86 = v271;
  v271(&v74[v81], v83, v281);
  v87 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v294 = 0;
  *(&v294 + 1) = 0xE000000000000000;
  v88 = v276;
  sub_190D538D0();
  v266(&v74[v87], v88, v280);
  v89 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v294) = 0;
  sub_190D538D0();
  v86(&v74[v89], v84, v85);
  v90 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v294) = 0;
  sub_190D538D0();
  v86(&v74[v90], v84, v85);
  v91 = v263;
  v92 = v264;
  *&v74[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v263;
  v93 = sub_190D56F10();
  v95 = v94;
  v96 = &v74[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v96 = v93;
  v96[1] = v94;
  v97 = swift_allocObject();
  v97[2] = v91;
  v97[3] = v93;
  v97[4] = v95;
  v98 = &v74[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v98 = sub_190B2426C;
  v98[1] = v97;
  swift_beginAccess();
  v75[24] = 0;
  *(v75 + 1) = 0;
  *(v75 + 2) = 0;
  *v75 = 0;
  v75[25] = 1;
  swift_beginAccess();
  v99 = *v76;
  *v76 = 0;
  v76[1] = 0;
  v100 = v91;
  sub_190D52690();
  sub_19022123C(v99);
  v101 = v278;
  v290.receiver = v74;
  v290.super_class = v278;
  v102 = objc_msgSendSuper2(&v290, sel_init);
  v103 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v102[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v104 = v102;
  sub_190B224E8();
  v102[v103] = 1;
  sub_190D52690();
  v105 = sub_190D56ED0();

  [(__CFString *)v100 addObserver:v104 forKeyPath:v105 options:1 context:0];

  v277[1].data = v104;
  v264 = @"showTranscriptCellDebugBorders";
  v263 = [v270 standardUserDefaults];
  v106 = objc_allocWithZone(v101);
  v107 = &v106[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v107 + 1) = 0;
  *(v107 + 2) = 0;
  *(v107 + 12) = 256;
  *v107 = 0;
  v108 = &v106[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v108 = 0;
  v108[1] = 0;
  v109 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v294 = 0u;
  v295 = 0u;
  sub_19023C414(&v294, v293);
  v110 = v272;
  sub_190D538D0();
  sub_19021E7D8(&v294);
  v268(&v106[v109], v110, v274);
  v111 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v294 = 0;
  v112 = v275;
  sub_190D538D0();
  v267(&v106[v111], v112, v279);
  v106[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v113 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v294) = 0;
  v114 = v84;
  sub_190D538D0();
  v115 = v84;
  v116 = v281;
  v117 = v271;
  v271(&v106[v113], v115, v281);
  v118 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v294 = 0;
  *(&v294 + 1) = 0xE000000000000000;
  v119 = v276;
  sub_190D538D0();
  v266(&v106[v118], v119, v280);
  v120 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v294) = 0;
  sub_190D538D0();
  v117(&v106[v120], v114, v116);
  v121 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v294) = 0;
  sub_190D538D0();
  v117(&v106[v121], v114, v116);
  v122 = v263;
  v123 = v264;
  *&v106[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v263;
  v124 = sub_190D56F10();
  v126 = v125;
  v127 = &v106[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v127 = v124;
  v127[1] = v125;
  v128 = swift_allocObject();
  v128[2] = v122;
  v128[3] = v124;
  v128[4] = v126;
  v129 = &v106[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v129 = sub_190B2426C;
  v129[1] = v128;
  swift_beginAccess();
  v107[24] = 0;
  *(v107 + 1) = 0;
  *(v107 + 2) = 0;
  *v107 = 0;
  v107[25] = 1;
  swift_beginAccess();
  v130 = *v108;
  *v108 = 0;
  v108[1] = 0;
  v131 = v122;
  sub_190D52690();
  sub_19022123C(v130);
  v132 = v278;
  v289.receiver = v106;
  v289.super_class = v278;
  v133 = objc_msgSendSuper2(&v289, sel_init);
  v134 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v133[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v135 = v133;
  sub_190B224E8();
  v133[v134] = 1;
  sub_190D52690();
  v136 = sub_190D56ED0();

  [(__CFString *)v131 addObserver:v135 forKeyPath:v136 options:1 context:0];

  v277[1].length = v135;
  v264 = @"showTickerHUD";
  v263 = [v270 standardUserDefaults];
  v137 = objc_allocWithZone(v132);
  v138 = &v137[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v138 + 1) = 0;
  *(v138 + 2) = 0;
  *(v138 + 12) = 256;
  *v138 = 0;
  v139 = &v137[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v139 = 0;
  v139[1] = 0;
  v140 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v294 = 0u;
  v295 = 0u;
  sub_19023C414(&v294, v293);
  v141 = v272;
  sub_190D538D0();
  sub_19021E7D8(&v294);
  v268(&v137[v140], v141, v274);
  v142 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v294 = 0;
  v143 = v275;
  sub_190D538D0();
  v267(&v137[v142], v143, v279);
  v137[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v144 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v294) = 0;
  v145 = v265;
  sub_190D538D0();
  v146 = v281;
  v147 = v271;
  v271(&v137[v144], v145, v281);
  v148 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v294 = 0;
  *(&v294 + 1) = 0xE000000000000000;
  v149 = v276;
  sub_190D538D0();
  v266(&v137[v148], v149, v280);
  v150 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v294) = 0;
  sub_190D538D0();
  v147(&v137[v150], v145, v146);
  v151 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v294) = 0;
  sub_190D538D0();
  v147(&v137[v151], v145, v146);
  v152 = v263;
  v153 = v264;
  *&v137[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v263;
  v154 = sub_190D56F10();
  v156 = v155;
  v157 = &v137[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v157 = v154;
  v157[1] = v155;
  v158 = swift_allocObject();
  v158[2] = v152;
  v158[3] = v154;
  v158[4] = v156;
  v159 = &v137[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v159 = sub_190B2426C;
  v159[1] = v158;
  swift_beginAccess();
  v138[24] = 0;
  *(v138 + 1) = 0;
  *(v138 + 2) = 0;
  *v138 = 0;
  v138[25] = 1;
  swift_beginAccess();
  v160 = *v139;
  *v139 = 0;
  v139[1] = 0;
  v161 = v152;
  sub_190D52690();
  sub_19022123C(v160);
  v162 = v278;
  v288.receiver = v137;
  v288.super_class = v278;
  v163 = objc_msgSendSuper2(&v288, sel_init);
  v164 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v163[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v165 = v163;
  sub_190B224E8();
  v163[v164] = 1;
  sub_190D52690();
  v166 = sub_190D56ED0();

  [(__CFString *)v161 addObserver:v165 forKeyPath:v166 options:1 context:0];

  v277[2].isa = v165;
  v263 = @"checkForChatControllerLeaks";
  v262 = [v270 standardUserDefaults];
  v167 = objc_allocWithZone(v162);
  v168 = &v167[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v168 + 1) = 0;
  *(v168 + 2) = 0;
  *(v168 + 12) = 256;
  *v168 = 0;
  v169 = &v167[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  v264 = &v167[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v169 = 0;
  v169[1] = 0;
  v170 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v294 = 0u;
  v295 = 0u;
  sub_19023C414(&v294, v293);
  v171 = v272;
  sub_190D538D0();
  sub_19021E7D8(&v294);
  v268(&v167[v170], v171, v274);
  v172 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v294 = 0;
  v173 = v275;
  sub_190D538D0();
  v267(&v167[v172], v173, v279);
  v167[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v174 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v294) = 0;
  v175 = v265;
  sub_190D538D0();
  v176 = v281;
  v177 = v271;
  v271(&v167[v174], v175, v281);
  v178 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v294 = 0;
  *(&v294 + 1) = 0xE000000000000000;
  v179 = v276;
  sub_190D538D0();
  v266(&v167[v178], v179, v280);
  v180 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v294) = 0;
  sub_190D538D0();
  v177(&v167[v180], v175, v176);
  v181 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v294) = 0;
  sub_190D538D0();
  v177(&v167[v181], v175, v176);
  v183 = v262;
  v182 = v263;
  *&v167[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v262;
  v184 = sub_190D56F10();
  v186 = v185;
  v187 = &v167[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v187 = v184;
  v187[1] = v185;
  v188 = swift_allocObject();
  v188[2] = v183;
  v188[3] = v184;
  v188[4] = v186;
  v189 = &v167[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v189 = sub_190B2426C;
  v189[1] = v188;
  swift_beginAccess();
  v168[24] = 0;
  *(v168 + 1) = 0;
  *(v168 + 2) = 0;
  *v168 = 0;
  v168[25] = 1;
  v190 = v264;
  swift_beginAccess();
  v191 = *v190;
  *v190 = 0;
  v190[1] = 0;
  v192 = v183;
  sub_190D52690();
  sub_19022123C(v191);
  v193 = v278;
  v287.receiver = v167;
  v287.super_class = v278;
  v194 = objc_msgSendSuper2(&v287, sel_init);
  v195 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v194[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v196 = v194;
  sub_190B224E8();
  v194[v195] = 1;
  sub_190D52690();
  v197 = sub_190D56ED0();

  [v192 addObserver:v196 forKeyPath:v197 options:1 context:0];

  v277[2].info = v196;
  v263 = @"CKInternalInstallShouldHideDebugMenu";
  v262 = [v270 standardUserDefaults];
  v198 = objc_allocWithZone(v193);
  v199 = &v198[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v199 + 1) = 0;
  *(v199 + 2) = 0;
  *(v199 + 12) = 256;
  *v199 = 0;
  v200 = &v198[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  v264 = &v198[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v200 = 0;
  v200[1] = 0;
  v201 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v294 = 0u;
  v295 = 0u;
  sub_19023C414(&v294, v293);
  v202 = v272;
  sub_190D538D0();
  sub_19021E7D8(&v294);
  v268(&v198[v201], v202, v274);
  v203 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v294 = 0;
  v204 = v275;
  sub_190D538D0();
  v267(&v198[v203], v204, v279);
  v198[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v205 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v294) = 0;
  v206 = v265;
  sub_190D538D0();
  v207 = v281;
  v208 = v271;
  v271(&v198[v205], v206, v281);
  v209 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v294 = 0;
  *(&v294 + 1) = 0xE000000000000000;
  v210 = v276;
  sub_190D538D0();
  v266(&v198[v209], v210, v280);
  v211 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v294) = 0;
  sub_190D538D0();
  v208(&v198[v211], v206, v207);
  v212 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v294) = 0;
  sub_190D538D0();
  v208(&v198[v212], v206, v207);
  v213 = v277;
  v215 = v262;
  v214 = v263;
  *&v198[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v262;
  v216 = sub_190D56F10();
  v218 = v217;
  v219 = &v198[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v219 = v216;
  v219[1] = v217;
  v220 = swift_allocObject();
  v220[2] = v215;
  v220[3] = v216;
  v220[4] = v218;
  v221 = &v198[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v221 = sub_190B2426C;
  v221[1] = v220;
  swift_beginAccess();
  v199[24] = 0;
  *(v199 + 1) = 0;
  *(v199 + 2) = 0;
  *v199 = 0;
  v199[25] = 1;
  v222 = v264;
  swift_beginAccess();
  v223 = *v222;
  *v222 = 0;
  v222[1] = 0;
  v224 = v215;
  sub_190D52690();
  sub_19022123C(v223);
  v225 = v278;
  v286.receiver = v198;
  v286.super_class = v278;
  v226 = objc_msgSendSuper2(&v286, sel_init);
  v227 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v226[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v228 = v226;
  sub_190B224E8();
  v226[v227] = 1;
  sub_190D52690();
  v229 = sub_190D56ED0();

  [v224 addObserver:v228 forKeyPath:v229 options:1 context:0];

  v213[2].data = v228;
  v296 = v213;
  v230 = [objc_opt_self() sharedFeatureFlags];
  LODWORD(v229) = [v230 isTranscriptBackgroundsEnabled];

  if (v229)
  {
    v277 = @"TranscriptBackgroundsShowSalientContentRectangle";
    v270 = [v270 standardUserDefaults];
    v231 = objc_allocWithZone(v225);
    v232 = &v231[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
    *(v232 + 1) = 0;
    *(v232 + 2) = 0;
    *(v232 + 12) = 256;
    *v232 = 0;
    v233 = &v231[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
    *v233 = 0;
    v233[1] = 0;
    v234 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
    v294 = 0u;
    v295 = 0u;
    sub_19023C414(&v294, v293);
    v235 = v272;
    sub_190D538D0();
    sub_19021E7D8(&v294);
    v268(&v231[v234], v235, v274);
    v236 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
    *&v294 = 0;
    v237 = v275;
    sub_190D538D0();
    v267(&v231[v236], v237, v279);
    v231[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
    v238 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
    LOBYTE(v294) = 0;
    v239 = v265;
    sub_190D538D0();
    v240 = v281;
    v241 = v271;
    v271(&v231[v238], v239, v281);
    v242 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
    *&v294 = 0;
    *(&v294 + 1) = 0xE000000000000000;
    v243 = v276;
    sub_190D538D0();
    v266(&v231[v242], v243, v280);
    v244 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
    LOBYTE(v294) = 0;
    sub_190D538D0();
    v241(&v231[v244], v239, v240);
    v245 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
    LOBYTE(v294) = 0;
    sub_190D538D0();
    v241(&v231[v245], v239, v240);
    v246 = v270;
    *&v231[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v270;
    v247 = sub_190D56F10();
    v249 = v248;
    v250 = &v231[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
    *v250 = v247;
    v250[1] = v248;
    v251 = swift_allocObject();
    v251[2] = v246;
    v251[3] = v247;
    v252 = v246;
    v251[4] = v249;
    v253 = &v231[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
    *v253 = sub_190B2426C;
    v253[1] = v251;
    swift_beginAccess();
    *v232 = 0;
    *(v232 + 1) = 0;
    *(v232 + 2) = 0;
    *(v232 + 12) = 256;
    swift_beginAccess();
    v254 = *v233;
    *v233 = 0;
    v233[1] = 0;
    v255 = v252;
    sub_190D52690();
    sub_19022123C(v254);
    v285.receiver = v231;
    v285.super_class = v278;
    v256 = objc_msgSendSuper2(&v285, sel_init);
    v257 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
    v256[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
    v258 = v256;
    sub_190B224E8();
    v256[v257] = 1;
    sub_190D52690();
    v259 = sub_190D56ED0();

    [v255 addObserver:v258 forKeyPath:v259 options:1 context:0];

    MEMORY[0x193AF29E0]();
    if (*((v296 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v296 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    sub_190D571E0();
    return v296;
  }

  return v213;
}

__n128 TranscriptDefaultsView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  sub_190D52690();
  sub_190D55FC0();
  *&v4 = v9;
  type metadata accessor for PinnedUserDefault(0);
  sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault);
  v6.n128_u64[1] = sub_190D54520();
  v7 = v2;
  *(&v4 + 1) = 0xD000000000000013;
  *v5 = 0x8000000190E74DC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0);
  sub_190D55FC0();
  *&v5[8] = v8;
  sub_190D55FC0();
  result = v6;
  *(a1 + 32) = *v5;
  *(a1 + 48) = *&v5[16];
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v8;
  *(a1 + 16) = v4;
  return result;
}

__n128 EntryViewDefaultsView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  sub_190D52690();
  sub_190D55FC0();
  *&v4 = v9;
  type metadata accessor for PinnedUserDefault(0);
  sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault);
  v6.n128_u64[1] = sub_190D54520();
  v7 = v2;
  *(&v4 + 1) = 0xD000000000000012;
  *v5 = 0x8000000190E74DE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0);
  sub_190D55FC0();
  *&v5[8] = v8;
  sub_190D55FC0();
  result = v6;
  *(a1 + 32) = *v5;
  *(a1 + 48) = *&v5[16];
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v8;
  *(a1 + 16) = v4;
  return result;
}

__n128 SendAnimationDefaultsView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  sub_190D52690();
  sub_190D55FC0();
  *&v4 = v9;
  type metadata accessor for PinnedUserDefault(0);
  sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault);
  v6.n128_u64[1] = sub_190D54520();
  v7 = v2;
  *(&v4 + 1) = 0xD000000000000017;
  *v5 = 0x8000000190E74E00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0);
  sub_190D55FC0();
  *&v5[8] = v8;
  sub_190D55FC0();
  result = v6;
  *(a1 + 32) = *v5;
  *(a1 + 48) = *&v5[16];
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v8;
  *(a1 + 16) = v4;
  return result;
}

__n128 TickerHUDView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  sub_190D52690();
  sub_190D55FC0();
  *&v4 = v9;
  type metadata accessor for PinnedUserDefault(0);
  sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault);
  v6.n128_u64[1] = sub_190D54520();
  v7 = v2;
  *(&v4 + 1) = 0xD000000000000013;
  *v5 = 0x8000000190E74E20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0);
  sub_190D55FC0();
  *&v5[8] = v8;
  sub_190D55FC0();
  result = v6;
  *(a1 + 32) = *v5;
  *(a1 + 48) = *&v5[16];
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v8;
  *(a1 + 16) = v4;
  return result;
}

__n128 PhotosDefaultsView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  sub_190D52690();
  sub_190D55FC0();
  *&v4 = v9;
  type metadata accessor for PinnedUserDefault(0);
  sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault);
  v6.n128_u64[1] = sub_190D54520();
  v7 = v2;
  *(&v4 + 1) = 0x4420736F746F6850;
  *v5 = 0xEF73746C75616665;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0);
  sub_190D55FC0();
  *&v5[8] = v8;
  sub_190D55FC0();
  result = v6;
  *(a1 + 32) = *v5;
  *(a1 + 48) = *&v5[16];
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v8;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_190B37C80()
{
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA18);
  v1 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v72 - v2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D7C8);
  v3 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v72 - v4;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA20);
  v92 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v72 - v5;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA28);
  v91 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v72 - v6;
  v7 = "ers";
  v8 = *v0;
  v97 = MEMORY[0x1E69E7CC0];
  v9 = "com.apple.Messages";
  v10 = "com.apple.MobileSMS";
  v11 = 0xD000000000000010;
  if (v8 != 4)
  {
    v11 = 0xD000000000000019;
    v10 = "com.apple.madrid";
  }

  if (v8 == 3)
  {
    v12 = 0xD000000000000013;
  }

  else
  {
    v12 = v11;
  }

  if (v8 != 3)
  {
    v9 = v10;
  }

  v13 = "com.apple.messages";
  if (v8 == 1)
  {
    v14 = 0xD000000000000013;
  }

  else
  {
    v14 = 0xD000000000000012;
  }

  if (v8 != 1)
  {
    v13 = "com.apple.mobileSMS";
  }

  if (v8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0xD000000000000012;
  }

  if (v8)
  {
    v7 = v13;
  }

  if (v8 <= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = v12;
  }

  if (v8 <= 2)
  {
    v9 = v7;
  }

  v17 = (v9 | 0x8000000000000000);
  v18 = objc_opt_self();
  v19 = [v18 standardUserDefaults];
  v20 = sub_190D56ED0();
  v21 = [v19 persistentDomainForName_];

  if (!v21)
  {
    goto LABEL_46;
  }

  v22 = sub_190D56D90();

  v23 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v24 = sub_190D56ED0();
  v25 = [v23 initWithSuiteName_];

  if (v25)
  {

    v78 = v25;
    v26 = *(v22 + 16);
    if (v26)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

  v90 = 0;
  v29 = v22;
  v30 = [objc_opt_self() mainBundle];
  v31 = [v30 bundleIdentifier];

  if (v31)
  {
    v32 = sub_190D56F10();
    v34 = v33;

    if (v16 == v32 && v17 == v34)
    {
    }

    else
    {
      v35 = sub_190D58760();

      if ((v35 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    v36 = [v18 standardUserDefaults];
    if (v36)
    {
      v78 = v36;
      v22 = v29;
      v25 = v90;
      v26 = *(v22 + 16);
      if (v26)
      {
LABEL_26:
        v27 = sub_190A92948(v26, 0);
        v90 = sub_190C837C4(v95, v27 + 4, v26, v22);
        v17 = v96;
        v28 = v25;
        sub_190219C78();
        if (v90 != v26)
        {
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        goto LABEL_37;
      }

LABEL_36:
      v37 = v25;

      v27 = MEMORY[0x1E69E7CC0];
LABEL_37:
      *&v95[0] = v27;
      sub_190D50920();
      sub_190B394BC(v95);

      v38 = *&v95[0];
      v77 = *(*&v95[0] + 16);
      if (v77)
      {
        v17 = 0;
        v75 = (v91 + 4);
        v74 = (v92 + 32);
        v73 = (v3 + 32);
        v72 = (v1 + 32);
        v39 = (*&v95[0] + 40);
        v76 = *&v95[0];
        while (v17 < *(v38 + 16))
        {
          v92 = v17;
          v88 = *v39;
          v89 = *(v39 - 1);
          v91 = v39;
          v90 = type metadata accessor for UserDefaultItem(0);
          v40 = objc_allocWithZone(v90);
          v41 = &v40[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
          *(v41 + 1) = 0;
          *(v41 + 2) = 0;
          *(v41 + 12) = 256;
          *v41 = 0;
          v42 = &v40[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
          *v42 = 0;
          v42[1] = 0;
          v43 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
          memset(v95, 0, sizeof(v95));
          sub_19023C414(v95, v94);
          sub_190D52690();
          v87 = v78;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD551C0);
          v44 = v79;
          sub_190D538D0();
          sub_19021E7D8(v95);
          (*v75)(&v40[v43], v44, v80);
          v45 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
          *&v95[0] = 0;
          v46 = v81;
          sub_190D538D0();
          (*v74)(&v40[v45], v46, v82);
          v40[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
          v47 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
          LOBYTE(v95[0]) = 0;
          v48 = v83;
          sub_190D538D0();
          v49 = *v73;
          v50 = v84;
          (*v73)(&v40[v47], v48, v84);
          v51 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
          *&v95[0] = 0;
          *(&v95[0] + 1) = 0xE000000000000000;
          v52 = v85;
          sub_190D538D0();
          (*v72)(&v40[v51], v52, v86);
          v53 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
          LOBYTE(v95[0]) = 0;
          sub_190D538D0();
          v49(&v40[v53], v48, v50);
          v54 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
          LOBYTE(v95[0]) = 0;
          sub_190D538D0();
          v49(&v40[v54], v48, v50);
          v55 = v87;
          *&v40[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v87;
          v56 = &v40[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
          v57 = v89;
          v58 = v88;
          *v56 = v89;
          v56[1] = v58;
          v59 = swift_allocObject();
          v59[2] = v55;
          v59[3] = v57;
          v59[4] = v58;
          v60 = &v40[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
          *v60 = sub_190B21988;
          v60[1] = v59;
          swift_beginAccess();
          *v41 = 0;
          *(v41 + 1) = 0;
          *(v41 + 2) = 0;
          *(v41 + 12) = 256;
          swift_beginAccess();
          v61 = *v42;
          *v42 = 0;
          v42[1] = 0;
          v62 = v55;
          sub_190D52690();
          v63 = v62;
          sub_19022123C(v61);
          v93.receiver = v40;
          v93.super_class = v90;
          v64 = objc_msgSendSuper2(&v93, sel_init);
          v65 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
          v64[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
          v66 = v64;
          sub_190B224E8();
          v64[v65] = 1;
          sub_190D52690();
          v67 = sub_190D56ED0();

          [(objc_class *)v63 addObserver:v66 forKeyPath:v67 options:1 context:0];

          v68 = v66;
          MEMORY[0x193AF29E0]();
          if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_190D571A0();
          }

          v17 = v92 + 1;
          sub_190D571E0();

          v39 = v91 + 2;
          v38 = v76;
          if (v77 == v17)
          {
            v69 = v97;
            goto LABEL_45;
          }
        }

        __break(1u);
        goto LABEL_49;
      }

      v69 = MEMORY[0x1E69E7CC0];
LABEL_45:

      v70 = v78;

      return v69;
    }

LABEL_46:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_50:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t FoundDefaultsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000012;
  v4 = *v1;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
LABEL_6:
      v6 = 0x8000000190E5AD60;
      goto LABEL_7;
    }

    v5 = "com.apple.Messages";
  }

  else
  {
    if (!*v1)
    {
      goto LABEL_6;
    }

    v5 = "com.apple.messages";
    if (v4 != 1)
    {
      goto LABEL_6;
    }
  }

  v6 = 0x8000000190E5AD60;
  if ((v5 | 0x8000000000000000) == 0x8000000190E5AD60)
  {
LABEL_19:

    goto LABEL_20;
  }

LABEL_7:
  v7 = sub_190D58760();

  if (v7)
  {
    goto LABEL_20;
  }

  if (v4 <= 2)
  {
    if (!v4)
    {
      v8 = "ers";
LABEL_18:
      if (0x8000000190E5AD80 == (v8 | 0x8000000000000000))
      {
        goto LABEL_19;
      }

      goto LABEL_12;
    }

    if (v4 != 1)
    {
      v8 = "com.apple.mobileSMS";
      goto LABEL_18;
    }
  }

LABEL_12:
  v9 = sub_190D58760();

  if ((v9 & 1) == 0)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_21;
  }

LABEL_20:
  sub_190D549E0();
  v10 = sub_190D555D0();
  v11 = v14;
  v13 = v15;
  v12 = v16 & 1;
  sub_19081BE48(v10, v14, v16 & 1);
  sub_190D52690();
LABEL_21:
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v6 = 0x8000000190E5ADA0;
      v3 = 0xD000000000000013;
    }

    else if (v4 == 4)
    {
      v6 = 0x8000000190E5ADC0;
      v3 = 0xD000000000000010;
    }

    else
    {
      v6 = 0x8000000190E5ADE0;
      v3 = 0xD000000000000019;
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v6 = 0x8000000190E5AD80;
    }
  }

  else
  {
    v6 = 0x8000000190E5AD40;
  }

  sub_190B37C80();
  *&v32[0] = 0;
  *(&v32[0] + 1) = 0xE000000000000000;
  sub_190D55FC0();
  type metadata accessor for PinnedUserDefault(0);
  sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault);
  *(&v39 + 1) = sub_190D54520();
  v40 = v17;
  *(&v35 + 1) = v3;
  v36 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0);
  sub_190D55FC0();
  v37 = 0;
  *&v38 = 0xE000000000000000;
  sub_190D55FC0();
  v23 = v38;
  v24 = v39;
  v25 = v40;
  v21 = v34;
  v22 = v35;
  v26 = v34;
  v27 = v35;
  v31 = v40;
  v28 = v6;
  v29 = v38;
  v30 = v39;
  sub_1909F173C(v10, v11, v12, v13);
  sub_190B38EA4(&v26, v32);
  sub_1909F1780(v10, v11, v12, v13);
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  v18 = v29;
  *(a1 + 64) = v28;
  *(a1 + 80) = v18;
  *(a1 + 96) = v30;
  *(a1 + 112) = v31;
  v19 = v27;
  *(a1 + 32) = v26;
  *(a1 + 48) = v19;
  v32[0] = v21;
  v32[1] = v22;
  v33 = v25;
  v32[3] = v23;
  v32[4] = v24;
  v32[2] = v6;
  sub_190B38EDC(v32);
  return sub_1909F1780(v10, v11, v12, v13);
}

uint64_t sub_190B38C28@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  *a1 = v3;
  return result;
}

uint64_t sub_190B38CA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D52690();
  sub_190D50920();
  return sub_190D53910();
}

unint64_t sub_190B38D2C()
{
  result = qword_1EAD5DC60;
  if (!qword_1EAD5DC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DC58);
    sub_190B38DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DC60);
  }

  return result;
}

unint64_t sub_190B38DB0()
{
  result = qword_1EAD5DC68;
  if (!qword_1EAD5DC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DC68);
  }

  return result;
}

unint64_t sub_190B38E04()
{
  result = qword_1EAD5DC70;
  if (!qword_1EAD5DC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DC48);
    sub_190B38D2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DC70);
  }

  return result;
}

uint64_t sub_190B3906C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_190B390B4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_190B391B8()
{
  result = qword_1EAD5DCD8;
  if (!qword_1EAD5DCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DCE0);
    sub_190B38E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DCD8);
  }

  return result;
}

unint64_t sub_190B39244()
{
  result = qword_1EAD5DCE8;
  if (!qword_1EAD5DCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DCF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DC90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DC88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DCB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DC80);
    sub_190233640(&qword_1EAD5DCA8, &qword_1EAD5DC80);
    sub_19081E484();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DCB8);
    sub_190233640(&qword_1EAD5DCC0, &qword_1EAD5DCB8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DCE8);
  }

  return result;
}

unint64_t sub_190B39468()
{
  result = qword_1EAD5DD08;
  if (!qword_1EAD5DD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DD08);
  }

  return result;
}

uint64_t sub_190B394BC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1909E39A8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_190B39528(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_190B39528(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_190D58710();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_190D571D0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_190B396F0(v7, v8, a1, v4);
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
    return sub_190B39620(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_190B39620(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_190D58760(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_190B396F0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1909E383C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_190B39CCC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_190D58760();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_190D58760();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_190835714(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_190835714((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_190B39CCC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1909E383C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1909E37B0(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_190D58760(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_190B39CCC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_190D58760() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_190D58760() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_190B39EF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190B39F4C()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD5DD30);
  __swift_project_value_buffer(v0, qword_1EAD5DD30);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190B3A0B8()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_190B3A118(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit25CKSuggestedActionsHandler_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190863E2C;
}

void sub_190B3A224(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didRequestSendResponseForAction_];
    swift_unknownObjectRelease();
  }

  if (![a1 action])
  {
    goto LABEL_46;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    swift_unknownObjectRetain();
    sub_190AE9710(v4);
LABEL_6:
    swift_unknownObjectRelease_n();
    return;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
LABEL_11:
      swift_unknownObjectRelease();
      return;
    }

    [v7 didRequestLocationPush_];
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    swift_unknownObjectRetain();
    sub_190B9036C(v9);
    goto LABEL_6;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    swift_unknownObjectRetain();
    CKSuggestedActionsHandler.createCalendarEvent(_:)(v11);
    goto LABEL_6;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    swift_unknownObjectRetain();
    _s7ChatKit25CKSuggestedActionsHandlerC17openInApplicationyySo15IMActionOpenAppCF_0(v13);
    goto LABEL_6;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v16 = swift_unknownObjectWeakLoadStrong();
    if (!v16)
    {
      goto LABEL_11;
    }

    [v16 didRequestOpenWebView_];
    goto LABEL_10;
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = v23;
      v25 = swift_unknownObjectWeakLoadStrong();
      if (!v25)
      {
        goto LABEL_11;
      }

      v26 = v25;
      v27 = [v24 phoneNumber];
      if (!v27)
      {
        sub_190D56F10();
        v27 = sub_190D56ED0();
      }

      [v26 didRequestComposeAudio_];
      goto LABEL_38;
    }

    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (v28)
    {
      v29 = v28;
      v30 = swift_unknownObjectWeakLoadStrong();
      if (!v30)
      {
        goto LABEL_11;
      }

      v31 = v30;
      v27 = [v29 phoneNumber];
      if (!v27)
      {
        sub_190D56F10();
        v27 = sub_190D56ED0();
      }

      [v31 didRequestComposeVideo_];
LABEL_38:

      goto LABEL_10;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v32 = swift_unknownObjectWeakLoadStrong();
      if (!v32)
      {
        goto LABEL_11;
      }

      [v32 didRequestSendDeviceDetails];
      goto LABEL_10;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v33 = swift_unknownObjectWeakLoadStrong();
      if (!v33)
      {
        goto LABEL_11;
      }

      [v33 didRequestSettings];
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
LABEL_46:
    if (qword_1EAD51DF8 != -1)
    {
      swift_once();
    }

    v34 = sub_190D53040();
    __swift_project_value_buffer(v34, qword_1EAD5DD30);
    v35 = a1;
    v36 = sub_190D53020();
    v37 = sub_190D57690();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v45 = v39;
      *v38 = 136315138;
      v40 = [v35 dictionaryRepresentation];
      sub_190D56D90();

      v41 = sub_190D56DA0();
      v43 = v42;

      v44 = sub_19021D9F8(v41, v43, &v45);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_19020E000, v36, v37, "Unrecognized Action: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x193AF7A40](v39, -1, -1);
      MEMORY[0x193AF7A40](v38, -1, -1);
    }

    return;
  }

  v18 = v17;
  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
    goto LABEL_11;
  }

  v20 = v19;
  swift_unknownObjectRetain();
  v21 = [v18 phoneNumber];
  if (!v21)
  {
    sub_190D56F10();
    v21 = sub_190D56ED0();
  }

  v22 = [v18 text];
  if (!v22)
  {
    sub_190D56F10();
    v22 = sub_190D56ED0();
  }

  [v20 didRequestComposeText:v21 text:v22];
  swift_unknownObjectRelease_n();

  swift_unknownObjectRelease();
}

id CKSuggestedActionsHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKSuggestedActionsHandler.init()()
{
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKSuggestedActionsHandler();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CKSuggestedActionsHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKSuggestedActionsHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190B3AA78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_190D515F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    sub_190D515E0();
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_19084CF50(v2);
    }

    else
    {
      (*(v4 + 32))(v6, v2, v3);
      v8 = [objc_opt_self() sharedApplication];
      v9 = sub_190D51570();
      sub_19082233C(MEMORY[0x1E69E7CC0]);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_190964630();
      v10 = sub_190D56D60();

      [v8 openURL:v9 options:v10 completionHandler:0];

      (*(v4 + 8))(v6, v3);
    }
  }
}

id sub_190B3AC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_190D515F0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x1E696ECA0]) init];
  v11 = sub_190D56ED0();
  [v10 setTitle_];

  v12 = sub_190D56ED0();
  [v10 setSummary_];

  v32.width = 10.0;
  v32.height = 10.0;
  UIGraphicsBeginImageContextWithOptions(v32, 0, 0.0);
  v13 = [objc_opt_self() clearColor];
  [v13 setFill];

  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  v33.size.width = 10.0;
  v33.size.height = 10.0;
  UIRectFill(v33);
  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (v14)
  {
    v30 = v7;
    v31 = a5;
    v15 = objc_allocWithZone(MEMORY[0x1E696EC68]);
    v16 = v14;
    v17 = [v15 initWithPlatformImage_];
    [v10 setIcon_];
    v18 = [objc_allocWithZone(MEMORY[0x1E696ECD8]) init];
    [v18 setMetadata_];
    v19 = [objc_allocWithZone(MEMORY[0x1E69A5C48]) init];
    v20 = [v18 dataRepresentationWithOutOfLineAttachments_];
    v21 = sub_190D51670();
    v23 = v22;

    v24 = sub_190D51660();
    sub_19083B6D4(v21, v23);
    [v19 setData_];

    v25 = [v10 URL];
    if (v25)
    {
      v26 = v25;
      sub_190D515B0();

      v27 = sub_190D51570();
      (*(v30 + 8))(v9, v6);
    }

    else
    {
      v27 = 0;
    }

    [v19 setUrl_];

    [v19 setPluginBundleID_];
    sub_190A8EC70(v31);
    v28 = sub_190D56D60();

    [v19 setUserInfo_];
  }

  else
  {

    return 0;
  }

  return v19;
}

double sub_190B3B154@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_190B3B1E4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190B3BE94(v2, v3);
  v5 = v4;
  return sub_190D53910();
}

unint64_t EffectType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

double sub_190B3B2B8@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

id sub_190B3B344()
{
  result = [objc_allocWithZone(CKFullScreenEffectManager) init];
  qword_1EAD5DD50 = result;
  return result;
}

void sub_190B3B378()
{
  if (qword_1EAD51E00 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v35 = qword_1EAD5DD50;
    v1 = [qword_1EAD5DD50 effectIdentifiers];
    if (!v1)
    {
      break;
    }

    v2 = v1;
    v30 = v0;
    v0 = sub_190D57180();

    v33 = *(v0 + 16);
    if (v33)
    {
      v3 = 0;
      v4 = v0 + 32;
      v5 = MEMORY[0x1E69E7CC0];
      v31 = v0;
      while (1)
      {
        if (v3 >= *(v0 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        sub_19021834C(v4, &v41);
        swift_dynamicCast();
        v41 = v39;
        v42 = v40;
        sub_190D52690();
        MEMORY[0x193AF28B0](0x6E6F69736956, 0xE600000000000000);
        v7 = v41;
        v6 = v42;
        v8 = sub_190D56ED0();
        v9 = [v35 localizedDisplayNameForEffectWithIdentifier_];

        if (!v9)
        {
          break;
        }

        v37 = sub_190D56F10();
        v11 = v10;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_190836B20(0, *(v5 + 2) + 1, 1, v5);
        }

        v13 = *(v5 + 2);
        v12 = *(v5 + 3);
        if (v13 >= v12 >> 1)
        {
          v5 = sub_190836B20((v12 > 1), v13 + 1, 1, v5);
        }

        ++v3;
        *(v5 + 2) = v13 + 1;
        v14 = &v5[56 * v13];
        *(v14 + 4) = v39;
        *(v14 + 5) = v40;
        *(v14 + 6) = 0;
        *(v14 + 7) = v37;
        *(v14 + 8) = v11;
        *(v14 + 9) = v7;
        *(v14 + 10) = v6;
        v4 += 32;
        v0 = v31;
        if (v33 == v3)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      break;
    }

    v5 = MEMORY[0x1E69E7CC0];
LABEL_14:

    v34 = objc_opt_self();
    v15 = [v34 effectIdentifiers];
    if (!v15)
    {
      goto LABEL_31;
    }

    v16 = v15;
    v38 = v5;
    v17 = sub_190D57180();

    v32 = *(v17 + 16);
    if (!v32)
    {
LABEL_24:

      *(v30 + OBJC_IVAR____TtC7ChatKit28EffectPickerExtensionDetails_effectData) = v38;

      return;
    }

    v18 = 0;
    v19 = (v17 + 40);
    while (v18 < *(v17 + 16))
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      v41 = v20;
      v42 = v21;
      swift_bridgeObjectRetain_n();
      MEMORY[0x193AF28B0](0x6E6F69736956, 0xE600000000000000);
      v23 = v41;
      v22 = v42;
      v24 = sub_190D56ED0();
      v25 = [v34 localizedEffectNameForEffectWithIdentifier_];

      if (!v25)
      {
        goto LABEL_29;
      }

      v0 = sub_190D56F10();
      v36 = v26;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_190836B20(0, *(v38 + 2) + 1, 1, v38);
      }

      v28 = *(v38 + 2);
      v27 = *(v38 + 3);
      if (v28 >= v27 >> 1)
      {
        v38 = sub_190836B20((v27 > 1), v28 + 1, 1, v38);
      }

      ++v18;
      *(v38 + 2) = v28 + 1;
      v29 = &v38[56 * v28];
      *(v29 + 4) = v20;
      *(v29 + 5) = v21;
      *(v29 + 6) = 1;
      *(v29 + 7) = v0;
      *(v29 + 8) = v36;
      *(v29 + 9) = v23;
      *(v29 + 10) = v22;
      v19 += 2;
      if (v32 == v18)
      {
        goto LABEL_24;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_190B3B7AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_190D53910();
}

id EffectPickerExtensionDetails.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EffectPickerExtensionDetails.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DD60);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - v3;
  v5 = OBJC_IVAR____TtC7ChatKit28EffectPickerExtensionDetails__currentEffect;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B768);
  sub_190D538D0();
  (*(v2 + 32))(&v0[v5], v4, v1);
  *&v0[OBJC_IVAR____TtC7ChatKit28EffectPickerExtensionDetails_effectData] = MEMORY[0x1E69E7CC0];
  v6 = type metadata accessor for EffectPickerExtensionDetails();
  v8.receiver = v0;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_init);
}

id EffectPickerExtensionDetails.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EffectPickerExtensionDetails();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190B3BC08@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EffectPickerExtensionDetails();
  result = sub_190D538C0();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for EffectPickerExtensionDetails()
{
  result = qword_1EAD5DD70;
  if (!qword_1EAD5DD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_190B3BC98()
{
  result = qword_1EAD5DD68;
  if (!qword_1EAD5DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DD68);
  }

  return result;
}

void sub_190B3BD04()
{
  sub_190B3BE20();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_190B3BE20()
{
  if (!qword_1EAD5DD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B768);
    v0 = sub_190D53920();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5DD80);
    }
  }
}

uint64_t sub_190B3BE94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_190D52690();
    sub_190D52690();

    return sub_190D52690();
  }

  return result;
}

uint64_t sub_190B3BF0C()
{
  v0 = sub_190D51FC0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69A66A0], v0, v2);
  v5 = sub_190D51FB0();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_190B3C054@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_190D51FC0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69A66A0], v2, v4);
  v7 = sub_190D51FB0();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  a1[1] = v9;
  return result;
}

uint64_t sub_190B3C150()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DDF8);
  __swift_allocate_value_buffer(v0, qword_1EAD9E308);
  __swift_project_value_buffer(v0, qword_1EAD9E308);
  sub_190B93088(100);
  return sub_190D53860();
}

uint64_t sub_190B3C210()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E180);
  __swift_allocate_value_buffer(v0, qword_1EAD9E320);
  __swift_project_value_buffer(v0, qword_1EAD9E320);
  [objc_opt_self() isTimeSensitiveCustomModelAvailable];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B588);
  sub_190D536E0();
  *(swift_allocObject() + 16) = xmmword_190DD1D90;
  sub_190D536D0();
  return sub_190D53860();
}

uint64_t sub_190B3C374@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a1;
  v17 = sub_190D513E0();
  v3 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DE00);
  v6 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DE08);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  sub_190233640(&qword_1EAD5DE10, &qword_1EAD5DE08);
  sub_190D51400();
  v19 = 5;
  sub_190D513F0();
  v13 = v17;
  (*(v3 + 104))(v5, *MEMORY[0x1E6968C30], v17);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DE18);
  a2[4] = sub_190B45A3C();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_190233640(&qword_1EAD5DE38, &qword_1EAD5DE00);
  v14 = v18;
  sub_190D513D0();
  (*(v3 + 8))(v5, v13);
  (*(v6 + 8))(v8, v14);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_190B3C69C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A958);
  a1[4] = sub_190233640(&qword_1EAD46308, &qword_1EAD5A958);
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_190233640(&qword_1EAD46300, &qword_1EAD5A958);
  return sub_190D51400();
}

uint64_t sub_190B3C7B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57118);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - v2;
  v4 = sub_190D536F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57120);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  sub_190D53700();
  v12 = MEMORY[0x1E6982AC0];
  MEMORY[0x193AEEF00](v7, v4, MEMORY[0x1E6982AC0]);
  (*(v5 + 8))(v7, v4);
  v16 = v4;
  v17 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x193AEEF30](v11, v8, OpaqueTypeConformance2);
  v16 = v8;
  v17 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = sub_190D53680();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v14;
}

uint64_t sub_190B3CA58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_translationTipObservation;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_190D50920();
}

uint64_t sub_190B3CB08(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_translationTipObservation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void (*sub_190B3CBD8(uint64_t *a1))(id **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_chatController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190B45D84;
}

void (*sub_190B3CCA0(uint64_t *a1))(void **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190B1942C;
}

void (*sub_190B3CD68(uint64_t *a1))(void **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_checkInDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190B18530;
}

void (*sub_190B3CE30(uint64_t *a1))(void **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_translationDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190B1942C;
}

void sub_190B3CEDC()
{
  if (*(v0 + OBJC_IVAR____TtC7ChatKit16CKChatTipManager____lazy_storage___checkInTip) == 1)
  {
    *(v0 + OBJC_IVAR____TtC7ChatKit16CKChatTipManager____lazy_storage___checkInTip) = 0;
  }
}

void sub_190B3CF10(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_190B3CF68(uint64_t *a1))(id **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_translationTipView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190B3D000;
}

uint64_t sub_190B3D004(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DDB8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for TranslationTip();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190B3D474(a1, v10);
  v11 = *a2;
  sub_190B3D548(v10, v6);
  (*(v8 + 56))(v6, 0, 1, v7);
  v12 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager____lazy_storage___translationTip;
  swift_beginAccess();
  sub_190B3D4D8(v6, v11 + v12);
  return swift_endAccess();
}

uint64_t sub_190B3D170@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DDB8);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v9 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager____lazy_storage___translationTip;
  swift_beginAccess();
  sub_190B3D404(v1 + v9, v8);
  v10 = type metadata accessor for TranslationTip();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_190B3D548(v8, a1);
  }

  sub_19022EEA4(v8, &qword_1EAD5DDB8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = [Strong conversation];

    v15 = [v14 uniqueIdentifier];
    v16 = sub_190D56F10();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  v20 = *(v10 + 24);
  v21 = sub_190D519C0();
  (*(*(v21 - 8) + 56))(a1 + v20, 1, 1, v21);
  *a1 = v16;
  a1[1] = v18;
  a1[2] = MEMORY[0x1E69E7CC0];
  sub_190B3D474(a1, v6);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_190B3D4D8(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_190B3D404(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DDB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190B3D474(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationTip();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190B3D4D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DDB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_190B3D548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationTip();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190B3D5AC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DDB8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  sub_190B3D548(a1, &v9 - v4);
  v6 = type metadata accessor for TranslationTip();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager____lazy_storage___translationTip;
  swift_beginAccess();
  sub_190B3D4D8(v5, v1 + v7);
  return swift_endAccess();
}

void (*sub_190B3D6A4(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DDB8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = type metadata accessor for TranslationTip();
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v5[10] = v10;
  sub_190B3D170(v10);
  return sub_190B3D7C4;
}

void sub_190B3D7C4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = ((*a1)[9] + 56);
  v4 = (*a1)[10];
  v5 = (*a1)[7];
  v6 = (*a1)[8];
  v7 = (*a1)[6];
  if (a2)
  {
    sub_190B3D474(v2[10], v2[7]);
    (*v3)(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager____lazy_storage___translationTip;
    swift_beginAccess();
    sub_190B3D4D8(v5, v7 + v8);
    swift_endAccess();
    sub_190B3D900(v4);
  }

  else
  {
    sub_190B3D548(v2[10], v2[7]);
    (*v3)(v5, 0, 1, v6);
    v9 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager____lazy_storage___translationTip;
    swift_beginAccess();
    sub_190B3D4D8(v5, v7 + v9);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

uint64_t sub_190B3D900(uint64_t a1)
{
  v2 = type metadata accessor for TranslationTip();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190B3D970(void *a1, unsigned int *a2)
{
  v5 = sub_190D51FC0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v2 + *a1);
  if (v10[1])
  {
    v11 = *v10;
  }

  else
  {
    (*(v6 + 104))(v9, *a2, v5, v7);
    v11 = sub_190D51FB0();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *v10 = v11;
    v10[1] = v13;
    sub_190D52690();
  }

  sub_190D52690();
  return v11;
}

void (*sub_190B3DADC(uint64_t *a1))(void **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_messageRequestsDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190B1942C;
}

id CKChatTipManager.__allocating_init(chatController:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_190B44AB0(a1);

  return v4;
}

id CKChatTipManager.init(chatController:)(void *a1)
{
  v2 = sub_190B44AB0(a1);

  return v2;
}

uint64_t sub_190B3DC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54880);
  v4[9] = swift_task_alloc();
  v5 = sub_190D53840();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54888);
  v4[14] = swift_task_alloc();
  v4[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54890);
  v4[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54898);
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD548A0);
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = sub_190D572A0();
  v4[24] = sub_190D57290();
  v9 = sub_190D57240();
  v4[25] = v9;
  v4[26] = v8;

  return MEMORY[0x1EEE6DFA0](sub_190B3DEBC, v9, v8);
}

uint64_t sub_190B3DEBC()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v0[6] = sub_190B3CEC8();
  v0[7] = v4;
  sub_190B44D54();
  sub_190D53530();

  MEMORY[0x193AF3CF0](v3);
  sub_190233640(&qword_1EAD46710, &qword_1EAD54888);
  sub_190D57380();
  sub_190D58480();
  (*(v1 + 8))(v2, v3);
  sub_190D58490();
  v0[27] = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_inlineTip;
  v5 = sub_190D57290();
  v0[28] = v5;
  if (v5)
  {
    swift_getObjectType();
    v6 = sub_190D57240();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v0[29] = v6;
  v0[30] = v8;

  return MEMORY[0x1EEE6DFA0](sub_190B3E074, v6, v8);
}

uint64_t sub_190B3E074()
{
  v1 = v0[28];
  v0[31] = sub_190D58470();
  sub_190233640(&qword_1EAD46718, &qword_1EAD54890);
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_190B3E178;
  v3 = v0[9];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v3, v1, v4);
}

uint64_t sub_190B3E178()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_190B3E460;
  }

  else
  {
    (*(v2 + 248))();
    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_190B3E2A0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_190B3E2A0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_19022EEA4(v3, &qword_1EAD54880);
    v4 = v0[25];
    v5 = v0[26];

    return MEMORY[0x1EEE6DFA0](sub_190B3E788, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[12], v3, v1);
    v6 = sub_190D58480();
    v0[33] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[34] = v8;
    *v8 = v0;
    v8[1] = sub_190B3E478;
    v9 = v0[12];

    return (v11)(v0 + 35, v9);
  }
}