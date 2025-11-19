uint64_t sub_1D0F9D71C(void *a1)
{
  v3 = sub_1D0FF4C18();
  v57 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v51 - v7;
  v9 = sub_1D0FF5248();
  v55 = *(v9 - 8);
  v56 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D0FF5268();
  v53 = *(v12 - 8);
  v54 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D0FF4518();

  sub_1D0FF4508();

  v15 = *&v1[OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_preconditionCompletion];
  if (!v15)
  {
    sub_1D0FF4BC8();
    v22 = v1;
    v23 = sub_1D0FF4C08();
    v24 = sub_1D0FF5958();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      aBlock = v55;
      *v25 = 136446210;
      v26 = v22;
      v56 = v22;
      v27 = v26;
      v28 = [v26 description];
      v29 = sub_1D0FF5428();
      v52 = v3;
      v31 = v30;

      v32 = sub_1D0F1AE0C(v29, v31, &aBlock);

      *(v25 + 4) = v32;
      _os_log_impl(&dword_1D0F17000, v23, v24, "[%{public}s]: Received cloud sync status update without a preconditionCompletion; shutting down observer", v25, 0xCu);
      v33 = v55;
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x1D3882680](v33, -1, -1);
      MEMORY[0x1D3882680](v25, -1, -1);

      (*(v57 + 8))(v6, v52);
    }

    else
    {

      (*(v57 + 8))(v6, v3);
    }

    sub_1D0F9CC30();
LABEL_16:

    sub_1D0FF4528();
  }

  v52 = v3;
  v16 = *&v1[OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_preconditionCompletion + 8];
  v17 = *&v1[OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_completionQueue];

  v18 = sub_1D0F9D1A0(a1);
  v19 = v18;
  if (v1[OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_waitUntilShouldProceed] != 1)
  {
    sub_1D0F9CC30();

    sub_1D0FF4528();

    if (v17)
    {
      v34 = swift_allocObject();
      *(v34 + 16) = v15;
      *(v34 + 24) = v16;
      *(v34 + 32) = v19 & 1;
      v63 = sub_1D0F9E77C;
      v64 = v34;
      aBlock = MEMORY[0x1E69E9820];
      v60 = 1107296256;
      v21 = &block_descriptor_17;
      goto LABEL_10;
    }

    v50 = v19 & 1;
    goto LABEL_20;
  }

  if ((v18 & 1) == 0)
  {
    sub_1D0F2625C(v15);
    sub_1D0FF4B88();
    v39 = v1;
    v40 = sub_1D0FF4C08();
    v41 = sub_1D0FF5978();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      aBlock = v56;
      *v42 = 136446210;
      v43 = v39;
      v44 = [v43 description];
      v45 = sub_1D0FF5428();
      v47 = v46;

      v48 = sub_1D0F1AE0C(v45, v47, &aBlock);

      *(v42 + 4) = v48;
      _os_log_impl(&dword_1D0F17000, v40, v41, "[%{public}s]: First restore status in-progress; deferring precondition callback until restore is completed", v42, 0xCu);
      v49 = v56;
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      MEMORY[0x1D3882680](v49, -1, -1);
      MEMORY[0x1D3882680](v42, -1, -1);
    }

    (*(v57 + 8))(v8, v52);
    goto LABEL_16;
  }

  sub_1D0F9CC30();

  sub_1D0FF4528();

  if (v17)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = v15;
    *(v20 + 24) = v16;
    *(v20 + 32) = 1;
    v63 = sub_1D0F9E77C;
    v64 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v60 = 1107296256;
    v21 = &block_descriptor_24_0;
LABEL_10:
    v61 = sub_1D0F1E1EC;
    v62 = v21;
    v35 = _Block_copy(&aBlock);
    sub_1D0F1C500(v15);
    v36 = v17;
    sub_1D0FF5258();
    v58 = MEMORY[0x1E69E7CC0];
    sub_1D0F9E628();
    sub_1D0F9E708(0, &qword_1EE071280, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D0F9E680();
    v37 = v56;
    sub_1D0FF5CC8();
    MEMORY[0x1D3881150](0, v14, v11, v35);
    _Block_release(v35);

    v55[1](v11, v37);
    (*(v53 + 8))(v14, v54);

    return sub_1D0F2625C(v15);
  }

  v50 = 1;
LABEL_20:
  v15(v50);

  return sub_1D0F2625C(v15);
}

uint64_t _s16HealthExperience37FirstRestoreNotInProgressPreconditionC17cloudSyncObserver_32didFailToPopulateStatusWithErrorySo07HKCloudjK0C_s0R0_ptF_0()
{
  v1 = v0;
  v2 = sub_1D0FF5248();
  v61 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1D0FF5268();
  v5 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D0FF4C18();
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v52 - v12;
  v14 = OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_lock;

  sub_1D0FF4518();

  v65 = v14;

  sub_1D0FF4508();

  v15 = *&v0[OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_preconditionCompletion];
  if (!v15)
  {
    sub_1D0FF4BC8();
    v35 = v0;
    v36 = sub_1D0FF4C08();
    v37 = sub_1D0FF5958();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      aBlock[0] = v62;
      *v38 = 136446210;
      v39 = v35;
      v40 = [v39 description];
      v41 = sub_1D0FF5428();
      v43 = v42;

      v44 = sub_1D0F1AE0C(v41, v43, aBlock);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_1D0F17000, v36, v37, "[%{public}s]: Received cloud sync status did fail to populate without a preconditionCompletion; shutting down observer", v38, 0xCu);
      v45 = v62;
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x1D3882680](v45, -1, -1);
      MEMORY[0x1D3882680](v38, -1, -1);
    }

    (*(v63 + 8))(v11, v64);
    sub_1D0F9CC30();
    goto LABEL_9;
  }

  v57 = v7;
  v16 = *&v0[OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_preconditionCompletion + 8];
  v60 = *&v0[OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_completionQueue];

  sub_1D0FF4BC8();
  v17 = v0;
  v18 = sub_1D0FF4C08();
  v19 = sub_1D0FF5958();

  v59 = v19;
  v20 = os_log_type_enabled(v18, v19);
  v58 = v5;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v56 = v2;
    v22 = v21;
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v22 = 136446210;
    v23 = v17;
    v54 = v16;
    v24 = v23;
    v25 = [v23 description];
    v26 = v4;
    v27 = sub_1D0FF5428();
    v55 = v1;
    v28 = v15;
    v30 = v29;

    v16 = v54;
    v31 = v27;
    v4 = v26;
    v32 = sub_1D0F1AE0C(v31, v30, aBlock);
    v15 = v28;

    *(v22 + 4) = v32;
    _os_log_impl(&dword_1D0F17000, v18, v59, "[%{public}s]: Received cloud sync status did fail to populate", v22, 0xCu);
    v33 = v53;
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x1D3882680](v33, -1, -1);
    v34 = v22;
    v2 = v56;
    MEMORY[0x1D3882680](v34, -1, -1);
  }

  (*(v63 + 8))(v13, v64);
  if (v17[OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_waitUntilShouldProceed] == 1)
  {
    sub_1D0F2625C(v15);
LABEL_9:

    sub_1D0FF4528();
  }

  sub_1D0F9CC30();

  sub_1D0FF4528();

  v47 = v60;
  if (v60)
  {
    v48 = swift_allocObject();
    *(v48 + 16) = v15;
    *(v48 + 24) = v16;
    *(v48 + 32) = 0;
    aBlock[4] = sub_1D0F9E5F8;
    aBlock[5] = v48;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D0F1E1EC;
    aBlock[3] = &block_descriptor_11;
    v49 = _Block_copy(aBlock);
    sub_1D0F1C500(v15);
    v50 = v47;
    v51 = v57;
    sub_1D0FF5258();
    v66 = MEMORY[0x1E69E7CC0];
    sub_1D0F9E628();
    sub_1D0F9E708(0, &qword_1EE071280, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D0F9E680();
    sub_1D0FF5CC8();
    MEMORY[0x1D3881150](0, v51, v4, v49);
    _Block_release(v49);

    (*(v61 + 8))(v4, v2);
    (*(v58 + 8))(v51, v62);
  }

  else
  {
    v15(0);
  }

  return sub_1D0F2625C(v15);
}

unint64_t sub_1D0F9E628()
{
  result = qword_1EE071288;
  if (!qword_1EE071288)
  {
    sub_1D0FF5248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE071288);
  }

  return result;
}

unint64_t sub_1D0F9E680()
{
  result = qword_1EE071278;
  if (!qword_1EE071278)
  {
    sub_1D0F9E708(255, &qword_1EE071280, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE071278);
  }

  return result;
}

void sub_1D0F9E708(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t PluginFeedItem.init<A>(uniqueIdentifier:viewControllerClass:userData:contentKind:sourceProfile:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[1] = a7;
  v13[2] = a4;
  v13[3] = a5;
  v8 = sub_1D0FF4558();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF45C8();
  (*(v9 + 16))(v11, a6, v8);
  sub_1D0FF45D8();
  return (*(v9 + 8))(a6, v8);
}

uint64_t PluginFeedItem.setCategoryIdentifier(displayCategory:)(void *a1)
{
  v2 = [a1 categoryName];
  sub_1D0FF5428();

  sub_1D0FF45E8();
  v3 = [a1 displayName];
  v4 = sub_1D0FF5428();
  v6 = v5;

  return MEMORY[0x1EEE0EF58](v4, v6);
}

uint64_t SuggestedAction.feedItemUniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

id static SuggestedAction.medicalID(for:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_1D0FF43A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 type];
  if (result == 1)
  {
    v9 = 0x80000001D1004D80;
    v10 = 0xD00000000000003ALL;
  }

  else
  {
    v11 = [a1 identifier];
    sub_1D0FF4388();

    v12 = sub_1D0FF4358();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    v15 = 0xD000000000000016;
    v16 = 0x80000001D1004DC0;
    MEMORY[0x1D3880AC0](v12, v14);

    v10 = v15;
    v9 = v16;
  }

  *a2 = v10;
  a2[1] = v9;
  return result;
}

id ThreadsafeHKCalendarCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ThreadsafeHKCalendarCache.init()()
{
  v1 = OBJC_IVAR____TtC16HealthExperience25ThreadsafeHKCalendarCache_lock;
  sub_1D0FF4828();
  swift_allocObject();
  *&v0[v1] = sub_1D0FF4818();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ThreadsafeHKCalendarCache();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ThreadsafeHKCalendarCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThreadsafeHKCalendarCache();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D0F9F1A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16HealthExperience20UserDefaultsObserver_currentValue;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1D0F9F258(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16HealthExperience20UserDefaultsObserver_currentValue;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id UserDefaultsObserver.__allocating_init(userDefaults:key:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC16HealthExperience20UserDefaultsObserver_currentValue;
  sub_1D0F9F528();
  swift_allocObject();
  *&v7[v8] = sub_1D0FF4EF8();
  *&v7[OBJC_IVAR____TtC16HealthExperience20UserDefaultsObserver_userDefaults] = a1;
  v9 = &v7[OBJC_IVAR____TtC16HealthExperience20UserDefaultsObserver_key];
  *v9 = a2;
  *(v9 + 1) = a3;
  v14.receiver = v7;
  v14.super_class = v3;
  v10 = a1;

  v11 = objc_msgSendSuper2(&v14, sel_init);
  v12 = sub_1D0FF53E8();

  [v10 addObserver:v11 forKeyPath:v12 options:3 context:{0, v14.receiver, v14.super_class}];

  return v11;
}

id UserDefaultsObserver.init(userDefaults:key:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC16HealthExperience20UserDefaultsObserver_currentValue;
  sub_1D0F9F528();
  swift_allocObject();
  *&v3[v7] = sub_1D0FF4EF8();
  *&v3[OBJC_IVAR____TtC16HealthExperience20UserDefaultsObserver_userDefaults] = a1;
  v8 = &v3[OBJC_IVAR____TtC16HealthExperience20UserDefaultsObserver_key];
  *v8 = a2;
  *(v8 + 1) = a3;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for UserDefaultsObserver();
  v9 = a1;

  v10 = objc_msgSendSuper2(&v13, sel_init);
  v11 = sub_1D0FF53E8();

  [v9 addObserver:v10 forKeyPath:v11 options:3 context:{0, v13.receiver, v13.super_class}];

  return v10;
}

void sub_1D0F9F528()
{
  if (!qword_1EE070E28[0])
  {
    sub_1D0F51F9C();
    v0 = sub_1D0FF4F08();
    if (!v1)
    {
      atomic_store(v0, qword_1EE070E28);
    }
  }
}

id UserDefaultsObserver.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC16HealthExperience20UserDefaultsObserver_userDefaults];
  v2 = v0;

  v3 = sub_1D0FF53E8();

  [v1 removeObserver:v2 forKeyPath:v3];

  v5.receiver = v2;
  v5.super_class = type metadata accessor for UserDefaultsObserver();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_1D0F9F75C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    v13 = 0;
    goto LABEL_14;
  }

  v9 = *&v5[OBJC_IVAR____TtC16HealthExperience20UserDefaultsObserver_key] == a1 && *&v5[OBJC_IVAR____TtC16HealthExperience20UserDefaultsObserver_key + 8] == a2;
  if (!v9 && (sub_1D0FF6278() & 1) == 0)
  {
    v13 = sub_1D0FF53E8();
LABEL_14:
    sub_1D0F23A60(a3, &v23);
    v14 = *(&v24 + 1);
    if (*(&v24 + 1))
    {
      v15 = __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
      v16 = *(v14 - 8);
      MEMORY[0x1EEE9AC00](v15);
      v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v18);
      v19 = sub_1D0FF6268();
      (*(v16 + 8))(v18, v14);
      __swift_destroy_boxed_opaque_existential_1Tm(&v23);
      if (!a4)
      {
LABEL_17:
        v20 = type metadata accessor for UserDefaultsObserver();
        v22.receiver = v5;
        v22.super_class = v20;
        objc_msgSendSuper2(&v22, sel_observeValueForKeyPath_ofObject_change_context_, v13, v19, a4, a5);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v19 = 0;
      if (!a4)
      {
        goto LABEL_17;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_1D0F9FBC0();
    a4 = sub_1D0FF5328();
    goto LABEL_17;
  }

  swift_beginAccess();
  if (a4 && a4[2])
  {
    v10 = *MEMORY[0x1E696A4F0];

    v11 = sub_1D0FA5A40(v10);
    if (v12)
    {
      sub_1D0F1B398(a4[7] + 32 * v11, &v23);
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  sub_1D0FF4EE8();

  sub_1D0F23B7C(&v23);
}

id UserDefaultsObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1D0F9FBC0()
{
  result = qword_1EC5FBFF8;
  if (!qword_1EC5FBFF8)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FBFF8);
  }

  return result;
}

Swift::Void __swiftcall ExternalDeepLink.open()()
{
  sub_1D0F3B100();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D0FF4238();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12[15] = *v0;
  ExternalDeepLink.url.getter();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1D0F42558(v3);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v8 = [objc_opt_self() defaultWorkspace];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1D0FF41B8();
      sub_1D0F53524(MEMORY[0x1E69E7CC0]);
      v11 = sub_1D0FF5328();

      [v9 openSensitiveURL:v10 withOptions:v11];
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t ExternalDeepLink.url.getter()
{
  if (*v0 > 1u)
  {
    if (*v0 != 2)
    {

      return sub_1D0FF4228();
    }

    sub_1D0FF5DE8();
    v2 = [objc_opt_self() internalPrivacySettingsURLString];
    sub_1D0FF5428();

    v3 = 0x80000001D1004F80;
    v4 = 0xD000000000000012;
    goto LABEL_11;
  }

  if (*v0)
  {
    v6 = [objc_opt_self() internalPrivacySettingsURLString];
    sub_1D0FF5428();

    v4 = 0x4F495441434F4C2FLL;
    v3 = 0xE90000000000004ELL;
LABEL_11:
    MEMORY[0x1D3880AC0](v4, v3);
    sub_1D0FF4228();
    goto LABEL_12;
  }

  v1 = [objc_opt_self() internalHealthSettingsURLString];
  sub_1D0FF5428();

  sub_1D0FF4228();
LABEL_12:
}

uint64_t ExternalDeepLink.hashValue.getter()
{
  v1 = *v0;
  sub_1D0FF6338();
  MEMORY[0x1D3881950](v1);
  return sub_1D0FF6378();
}

unint64_t sub_1D0FA0170()
{
  result = qword_1EC5FD038;
  if (!qword_1EC5FD038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD038);
  }

  return result;
}

uint64_t FamilyMemberPhotoFetcher.fetchPhoto(forFamilyMemberDSID:imageSize:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v5 + 48) = a3;
  *(v5 + 56) = v4;
  *(v5 + 40) = a2;
  *(v5 + 32) = a4;
  *(v5 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D0FA0200, 0, 0);
}

uint64_t sub_1D0FA0200()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  sub_1D0FA0640();
  *v5 = v0;
  v5[1] = sub_1D0FA0318;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000002ALL, 0x80000001D1004FA0, sub_1D0FA0630, v4, v6);
}

uint64_t sub_1D0FA0318()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D0FA0450;
  }

  else
  {

    v2 = sub_1D0FA0434;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D0FA0450()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D0FA04B4(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D0FA0AC8();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  (*(v13 + 16))(&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v16 = swift_allocObject();
  (*(v13 + 32))(v16 + v15, &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  (*(a6 + 8))(a4, sub_1D0FA0B38, v16, a5, a6, a2);
}

void sub_1D0FA0640()
{
  if (!qword_1EE06F998)
  {
    sub_1D0F57018();
    v0 = sub_1D0FF5C38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06F998);
    }
  }
}

uint64_t sub_1D0FA0698(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    sub_1D0FA0AC8();
    return sub_1D0FF5708();
  }

  else
  {
    sub_1D0FA0AC8();
    v5 = a1;
    return sub_1D0FF5718();
  }
}

void FamilyCirclePhotoFetcher.fetchPhoto(forFamilyMemberDSID:imageSize:completion:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D0FF5868();
  v8 = [objc_allocWithZone(MEMORY[0x1E699C078]) initWithFamilyMemberDSID:v7 size:1 localFallback:1];

  if (v8)
  {
    [v8 setUseMonogramAsLastResort_];
    [v8 setMonogramDiameter_];
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a3;
    *(v9 + 32) = a4;
    v11[4] = sub_1D0FA09B8;
    v11[5] = v9;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1D0FA09C4;
    v11[3] = &block_descriptor_12;
    v10 = _Block_copy(v11);

    [v8 startRequestWithCompletionHandler_];
    _Block_release(v10);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D0FA086C(uint64_t a1, unint64_t a2, int a3, objc_class *a4, __n128 a5, void (*a6)(Class, BOOL))
{
  isa = a4;
  if (!a4)
  {
    if (a2 >> 60 != 15)
    {
      v9 = a5.n128_u8[0];
      v12 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      sub_1D0F35360(a1, a2);
      sub_1D0F35360(a1, a2);
      v13 = sub_1D0FF4278();
      v14 = [v12 initWithData_];

      v15 = a1;
      sub_1D0F54BBC(a1, a2);
      if (v14)
      {
        v18 = v9;
        isa = UIImage.withCircularCrop(adjustedSize:)(*&v16).super.isa;
        sub_1D0F54BBC(v15, a2);

        goto LABEL_7;
      }

      sub_1D0F54BBC(a1, a2);
    }

    isa = 0;
  }

LABEL_7:
  v19 = a4;
  a6(isa, a4 != 0);

  sub_1D0FA0ABC(isa);
}

uint64_t sub_1D0FA09C4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1D0FF4288();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a4;
  v7(v6, v10, a3, a4);

  sub_1D0F54BBC(v6, v10);
}

void sub_1D0FA0AC8()
{
  if (!qword_1EC5FD040)
  {
    sub_1D0FA0640();
    sub_1D0F1E940();
    v0 = sub_1D0FF5728();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FD040);
    }
  }
}

uint64_t sub_1D0FA0B38(void *a1, char a2)
{
  sub_1D0FA0AC8();

  return sub_1D0FA0698(a1, a2 & 1);
}

char *NotificationSettingsSupport.Defaults.orderedElements.getter()
{
  v0 = sub_1D0F504B4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_1D0F504B4((v1 > 1), v2 + 1, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v0[v2 + 32] = 0;
  v5 = v2 + 2;
  if (v3 < v5)
  {
    v0 = sub_1D0F504B4((v1 > 1), v5, 1, v0);
  }

  *(v0 + 2) = v5;
  v0[v4 + 32] = 1;
  return v0;
}

uint64_t (*NotificationSettingsSupport.Defaults.sortHintValue.getter())(uint64_t)
{
  v1 = *v0;
  v2 = NotificationSettingsSupport.Defaults.orderedElements.getter();
  v3 = sub_1D0F4F5C8(v2, v1);

  return v3;
}

HealthExperience::NotificationSettingsSupport::Defaults_optional __swiftcall NotificationSettingsSupport.Defaults.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t (*sub_1D0FA0CEC())(uint64_t)
{
  v1 = *v0;
  v2 = NotificationSettingsSupport.Defaults.orderedElements.getter();
  v3 = sub_1D0F4F5C8(v2, v1);

  return v3;
}

char *NotificationSettingsSupport.Features.orderedElements.getter()
{
  sub_1D0FA0F70();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D0FFF850;
  *(inited + 32) = 67239944;
  *(inited + 36) = 1;
  v1 = sub_1D0F504C8(1, 6, 1, inited);
  *(v1 + 2) = 6;
  v1[37] = 6;
  v2 = *(v1 + 3);
  if (v2 <= 0xD)
  {
    v1 = sub_1D0F504C8((v2 > 1), 7, 1, v1);
    v2 = *(v1 + 3);
  }

  *(v1 + 2) = 7;
  v1[38] = 5;
  if (v2 <= 0xF)
  {
    v1 = sub_1D0F504C8((v2 > 1), 8, 1, v1);
    v2 = *(v1 + 3);
  }

  *(v1 + 2) = 8;
  v1[39] = 9;
  if (v2 <= 0x11)
  {
    v1 = sub_1D0F504C8((v2 > 1), 9, 1, v1);
    v2 = *(v1 + 3);
  }

  *(v1 + 2) = 9;
  v1[40] = 7;
  if (v2 <= 0x13)
  {
    v1 = sub_1D0F504C8((v2 > 1), 10, 1, v1);
  }

  *(v1 + 2) = 10;
  v1[41] = 3;
  return v1;
}

uint64_t (*NotificationSettingsSupport.Features.sortHintValue.getter())(uint64_t)
{
  v1 = *v0;
  v2 = NotificationSettingsSupport.Features.orderedElements.getter();
  v3 = sub_1D0F4F5E0(v2, v1);

  return v3;
}

HealthExperience::NotificationSettingsSupport::Features_optional __swiftcall NotificationSettingsSupport.Features.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 10;
  if (rawValue < 0xA)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t (*sub_1D0FA0F30())(uint64_t)
{
  v1 = *v0;
  v2 = NotificationSettingsSupport.Features.orderedElements.getter();
  v3 = sub_1D0F4F5E0(v2, v1);

  return v3;
}

void sub_1D0FA0F70()
{
  if (!qword_1EE06E0D0)
  {
    v0 = sub_1D0FF6248();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E0D0);
    }
  }
}

unint64_t sub_1D0FA0FC4()
{
  result = qword_1EC5FD048;
  if (!qword_1EC5FD048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD048);
  }

  return result;
}

unint64_t sub_1D0FA1044()
{
  result = qword_1EC5FD050;
  if (!qword_1EC5FD050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD050);
  }

  return result;
}

unint64_t sub_1D0FA109C()
{
  result = qword_1EC5FD058;
  if (!qword_1EC5FD058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD058);
  }

  return result;
}

uint64_t sub_1D0FA111C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D0FA1158()
{
  result = qword_1EC5FD060;
  if (!qword_1EC5FD060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD060);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotificationSettingsSupport.Features(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationSettingsSupport.Features(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t ContactsProfileInformation.firstName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContactsProfileInformation.lastName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *ContactsProfileInformation.image.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t ContactsProfileInformation.icloudAccount.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ContactsProfileInformation.init(firstName:lastName:icloudAccount:image:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[5] = a5;
  a8[6] = a6;
  a8[4] = a7;
  return result;
}

void *sub_1D0FA1434()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_1D0FA145C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D0FA14A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AnchoredChangeSet.aggregated(with:)()
{
  if (!sub_1D0FF4668())
  {
    sub_1D0FF4668();
  }

  v0 = sub_1D0FF4658();
  v1 = sub_1D0FF4658();
  v2 = v1;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1D0FF5F58();
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v2 = v3 | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v4 = v1 + 64;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v1 + 64);
  }

  v10 = 0;
  v11 = (v5 + 64) >> 6;
  v59 = v2;
  v61 = v4;
  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_19:
  if (!sub_1D0FF5F88() || (sub_1D0F1ACD4(0, &qword_1EE070B50), swift_dynamicCast(), v20 = v63, sub_1D0F1ACD4(0, &qword_1EE070B20), swift_dynamicCast(), v21 = v63, v16 = v10, v17 = v6, !v63))
  {
LABEL_56:
    sub_1D0F36568();
    return sub_1D0FF4648();
  }

  while (1)
  {
    v62 = v17;
    if ((v0 & 0xC000000000000001) != 0)
    {
      if (v0 >= 0)
      {
        v0 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v22 = v20;
      v23 = sub_1D0FF5F78();

      if (v23)
      {
        sub_1D0F1ACD4(0, &qword_1EE070B20);
        swift_dynamicCast();
        if (v63)
        {
          v24 = HKSampleTypeChange.aggregated(with:)(v21);
          v25 = sub_1D0FF5D18();
          if (__OFADD__(v25, 1))
          {
            goto LABEL_62;
          }

          v60 = v63;
          v0 = sub_1D0FA29F4(v0, v25 + 1);
          goto LABEL_34;
        }
      }

      v26 = v21;
      v27 = sub_1D0FF5D18();
      if (__OFADD__(v27, 1))
      {
        goto LABEL_59;
      }

      v0 = sub_1D0FA29F4(v0, v27 + 1);
    }

    else
    {
      if (*(v0 + 16))
      {
        v28 = sub_1D0FA2670(v20);
        if (v29)
        {
          v30 = *(*(v0 + 56) + 8 * v28);
          v31 = v30;
          if (v30)
          {
            v60 = v31;
            v24 = HKSampleTypeChange.aggregated(with:)(v21);
LABEL_34:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v63 = v0;
            v34 = sub_1D0FA2670(v20);
            v35 = *(v0 + 16);
            v36 = (v33 & 1) == 0;
            v37 = v35 + v36;
            if (__OFADD__(v35, v36))
            {
              goto LABEL_61;
            }

            v38 = v33;
            if (*(v0 + 24) >= v37)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1D0FA486C();
              }
            }

            else
            {
              sub_1D0FA2C30(v37, isUniquelyReferenced_nonNull_native);
              v39 = sub_1D0FA2670(v20);
              if ((v38 & 1) != (v40 & 1))
              {
                goto LABEL_64;
              }

              v34 = v39;
            }

            v4 = v61;
            if (v38)
            {
              v53 = *(v0 + 56);
              v54 = *(v53 + 8 * v34);
              *(v53 + 8 * v34) = v24;
            }

            else
            {
              *(v0 + 8 * (v34 >> 6) + 64) |= 1 << v34;
              *(*(v0 + 48) + 8 * v34) = v20;
              *(*(v0 + 56) + 8 * v34) = v24;
              v54 = v20;

              v55 = *(v0 + 16);
              v47 = __OFADD__(v55, 1);
              v56 = v55 + 1;
              if (v47)
              {
                goto LABEL_63;
              }

              *(v0 + 16) = v56;
            }

            v10 = v16;
            v6 = v62;
            v2 = v59;
            if ((v59 & 0x8000000000000000) != 0)
            {
              goto LABEL_19;
            }

            goto LABEL_13;
          }
        }
      }

      v41 = v21;
    }

    v42 = swift_isUniquelyReferenced_nonNull_native();
    v63 = v0;
    v43 = sub_1D0FA2670(v20);
    v45 = *(v0 + 16);
    v46 = (v44 & 1) == 0;
    v47 = __OFADD__(v45, v46);
    v48 = v45 + v46;
    if (v47)
    {
      goto LABEL_58;
    }

    v49 = v44;
    if (*(v0 + 24) >= v48)
    {
      if ((v42 & 1) == 0)
      {
        v57 = v43;
        sub_1D0FA486C();
        v43 = v57;
      }
    }

    else
    {
      sub_1D0FA2C30(v48, v42);
      v43 = sub_1D0FA2670(v20);
      if ((v49 & 1) != (v50 & 1))
      {
        goto LABEL_64;
      }
    }

    v4 = v61;
    if (v49)
    {
      v12 = *(v0 + 56);
      v13 = *(v12 + 8 * v43);
      *(v12 + 8 * v43) = v21;
    }

    else
    {
      *(v0 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      *(*(v0 + 48) + 8 * v43) = v20;
      *(*(v0 + 56) + 8 * v43) = v21;
      v13 = v20;

      v51 = *(v0 + 16);
      v47 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v47)
      {
        goto LABEL_60;
      }

      *(v0 + 16) = v52;
    }

    v10 = v16;
    v6 = v62;
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }

LABEL_13:
    v14 = v10;
    v15 = v6;
    v16 = v10;
    if (!v6)
    {
      break;
    }

LABEL_17:
    v17 = (v15 - 1) & v15;
    v18 = (v16 << 9) | (8 * __clz(__rbit64(v15)));
    v19 = *(*(v2 + 56) + v18);
    v20 = *(*(v2 + 48) + v18);
    v21 = v19;
    if (!v20)
    {
      goto LABEL_56;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v11)
    {
      goto LABEL_56;
    }

    v15 = *(v4 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  sub_1D0F1ACD4(0, &qword_1EE070B50);
  result = sub_1D0FF62B8();
  __break(1u);
  return result;
}

void AnchoredTypeChangeSet.aggregated(with:)()
{
  sub_1D0FF4888();
  if (!sub_1D0FF48A8())
  {
    sub_1D0FF48A8();
  }

  v0 = sub_1D0FF4898();
  v1 = sub_1D0FF4898();
  if (v0 && v1)
  {
    v2 = v1;
    HKSampleTypeChange.aggregated(with:)(v0);
    sub_1D0FF4878();
  }

  else
  {

    sub_1D0FF4878();
  }
}

uint64_t HKSampleTypeChange.aggregated(with:)(void *a1)
{
  v3 = sub_1D0FF4348();
  v100 = *(v3 - 8);
  v101 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v98 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v97 = &v94 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v99 = &v94 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v96 = &v94 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v95 = &v94 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v105 = &v94 - v14;
  v15 = sub_1D0FF3EA8();
  v114 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v108 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v107 = &v94 - v18;
  sub_1D0FA49C0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F73B6C();
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v111 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v103 = (&v94 - v27);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v104 = &v94 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v94 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v102 = (&v94 - v34);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v94 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v94 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v110 = &v94 - v41;
  sub_1D0F1ACD4(0, &qword_1EE071060);
  v113 = v1;
  v42 = [v1 sampleType];
  v112 = a1;
  v43 = [a1 sampleType];
  v44 = sub_1D0FF5BF8();

  if ((v44 & 1) == 0)
  {
    v115 = 0;
    v116 = 0xE000000000000000;
    sub_1D0FF5DE8();
    MEMORY[0x1D3880AC0](0xD00000000000002DLL, 0x80000001D1005030);
    v84 = [v113 sampleType];
    v85 = [v84 description];
    v86 = sub_1D0FF5428();
    v88 = v87;

    MEMORY[0x1D3880AC0](v86, v88);

    MEMORY[0x1D3880AC0](0x20646E6120, 0xE500000000000000);
    v89 = [v112 sampleType];
    v90 = [v89 description];
    v91 = sub_1D0FF5428();
    v93 = v92;

    MEMORY[0x1D3880AC0](v91, v93);

    result = sub_1D0FF5F98();
    __break(1u);
    return result;
  }

  if ([v113 hasUnfrozenSeries])
  {
    v109 = 1;
    v45 = v112;
  }

  else
  {
    v45 = v112;
    v109 = [v112 hasUnfrozenSeries];
  }

  v46 = [v113 dateInterval];
  if (v46)
  {
    v47 = v46;
    sub_1D0FF3E68();

    v48 = v114[7];
    v49 = v40;
    v50 = 0;
  }

  else
  {
    v48 = v114[7];
    v49 = v40;
    v50 = 1;
  }

  v112 = v48;
  (v48)(v49, v50, 1, v15);
  v51 = [v45 dateInterval];
  if (v51)
  {
    v52 = v51;
    sub_1D0FF3E68();

    v53 = 0;
  }

  else
  {
    v53 = 1;
  }

  v54 = v114;
  v106 = v114 + 7;
  (v112)(v37, v53, 1, v15);
  v55 = *(v20 + 48);
  sub_1D0FA4A24(v40, v22);
  sub_1D0FA4A24(v37, &v22[v55]);
  v56 = v54[6];
  if (v56(v22, 1, v15) != 1)
  {
    v60 = v102;
    sub_1D0F73BC4(v22, v102);
    if (v56(&v22[v55], 1, v15) != 1)
    {
      v63 = v114[4];
      v63(v107, v60, v15);
      v63(v108, &v22[v55], v15);
      v64 = v95;
      sub_1D0FF3E98();
      v65 = v96;
      sub_1D0FF3E98();
      v104 = sub_1D0F1B6A4(&qword_1EE06F878, MEMORY[0x1E6969530]);
      v66 = v101;
      v67 = sub_1D0FF53A8();
      v68 = v100;
      v69 = *(v100 + 8);
      v103 = v69;
      v70 = (v67 & 1) == 0;
      if (v67)
      {
        v71 = v64;
      }

      else
      {
        v71 = v65;
      }

      if (v70)
      {
        v65 = v64;
      }

      (v69)(v71, v66);
      v102 = *(v68 + 32);
      (v102)(v105, v65, v66);
      v72 = v97;
      sub_1D0FF3E78();
      v73 = v98;
      sub_1D0FF3E78();
      v74 = sub_1D0FF53B8();
      v75 = (v74 & 1) == 0;
      if (v74)
      {
        v76 = v72;
      }

      else
      {
        v76 = v73;
      }

      if (v75)
      {
        v73 = v72;
      }

      (v103)(v76, v66);
      (v102)(v99, v73, v66);
      v57 = v110;
      sub_1D0FF3E88();
      v77 = v114[1];
      v77(v108, v15);
      v77(v107, v15);
      v58 = v57;
      v59 = 0;
      goto LABEL_33;
    }

    (v114[1])(v60, v15);
LABEL_16:
    sub_1D0FA4A24(v22, v32);
    v61 = v103;
    sub_1D0FA4A24(&v22[v55], v103);
    v70 = v56(v61, 1, v15) == 1;
    v57 = v110;
    if (v70)
    {
      v78 = v104;
      sub_1D0FA4A24(v32, v104);
      v62 = v56(v61, 1, v15);
      v79 = v111;
      if (v62 != 1)
      {
        sub_1D0F73C28(v61);
      }
    }

    else
    {
      sub_1D0F73C28(v32);
      v78 = v104;
      (v114[4])(v104, v61, v15);
      (v112)(v78, 0, 1, v15);
      v79 = v111;
    }

    sub_1D0FA4A24(v78, v57);
    goto LABEL_35;
  }

  if (v56(&v22[v55], 1, v15) != 1)
  {
    goto LABEL_16;
  }

  v57 = v110;
  v58 = v110;
  v59 = 1;
LABEL_33:
  (v112)(v58, v59, 1, v15);
  sub_1D0F73C28(v22);
  v79 = v111;
LABEL_35:
  v80 = [v113 sampleType];
  sub_1D0F73BC4(v57, v79);
  if (v56(v79, 1, v15) == 1)
  {
    v81 = 0;
  }

  else
  {
    v81 = sub_1D0FF3E58();
    (v114[1])(v79, v15);
  }

  v82 = [objc_opt_self() sampleTypeChangeWithSampleType:v80 dateInterval:v81 hasUnfrozenSeries:v109];

  sub_1D0F73C28(v57);
  return v82;
}

unint64_t sub_1D0FA26C0(uint64_t a1)
{
  sub_1D0FF6338();
  type metadata accessor for CFString(0);
  sub_1D0F1B6A4(&qword_1EC5FD068, type metadata accessor for CFString);
  sub_1D0FF44E8();
  v2 = sub_1D0FF6378();

  return sub_1D0FA4240(a1, v2);
}

unint64_t sub_1D0FA2774(uint64_t a1)
{
  v2 = sub_1D0FF5D58();

  return sub_1D0FA434C(a1, v2);
}

unint64_t sub_1D0FA27B8(uint64_t a1)
{
  v2 = sub_1D0FF6328();

  return sub_1D0FA4414(a1, v2);
}

unint64_t sub_1D0FA27FC(unsigned __int8 a1)
{
  sub_1D0FF6338();
  sub_1D0FF5488();

  v2 = sub_1D0FF6378();

  return sub_1D0FA4480(a1, v2);
}

unint64_t sub_1D0FA2964(uint64_t a1)
{
  sub_1D0FF5428();
  sub_1D0FF6338();
  sub_1D0FF5488();
  v2 = sub_1D0FF6378();

  return sub_1D0FA4768(a1, v2);
}

uint64_t sub_1D0FA29F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D0FA59A4();
    v2 = sub_1D0FF6018();
    v19 = v2;
    sub_1D0FF5F58();
    v3 = sub_1D0FF5F88();
    if (v3)
    {
      v4 = v3;
      sub_1D0F1ACD4(0, &qword_1EE070B50);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1D0F1ACD4(0, &qword_1EE070B20);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1D0FA2C30(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1D0FF5BE8();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1D0FF5F88();
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

uint64_t sub_1D0FA2C30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D0FA59A4();
  result = sub_1D0FF6008();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_1D0FF5BE8();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1D0FA2E8C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D0F54264();
  result = sub_1D0FF6008();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_1D0F54254(v21, v31);
      }

      else
      {
        sub_1D0F1B398(v21, v31);
        v22 = v20;
      }

      sub_1D0FF6338();
      type metadata accessor for CFString(0);
      sub_1D0F1B6A4(&qword_1EC5FD068, type metadata accessor for CFString);
      sub_1D0FF44E8();
      result = sub_1D0FF6378();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_1D0F54254(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D0FA3160(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D0F54130(0, &qword_1EE06E290);
  v34 = a2;
  result = sub_1D0FF6008();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = sub_1D0FF6328();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D0FA33F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D0F54130(0, &qword_1EE06E298);
  v33 = a2;
  result = sub_1D0FF6008();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1D0F54254(v24, v34);
      }

      else
      {
        sub_1D0F1B398(v24, v34);
      }

      sub_1D0FF6338();
      sub_1D0FF5488();
      result = sub_1D0FF6378();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1D0F54254(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D0FA36E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D0F53958();
  v30 = a2;
  result = sub_1D0FF6008();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1D0FF6338();
      sub_1D0FF5488();

      result = sub_1D0FF6378();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D0FA3A40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D0F540CC();
  result = sub_1D0FF6008();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + v19);
      sub_1D0FF6338();
      sub_1D0FF5488();

      result = sub_1D0FF6378();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1D0FA3D88(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = sub_1D0FF4348();
  v5 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D0FF43A8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1D0F1BC98(0, &qword_1EC5FC6E8, MEMORY[0x1E6969530]);
  v47 = a2;
  result = sub_1D0FF6008();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_1D0F1B6A4(&qword_1EE071250, MEMORY[0x1E69695A8]);
      result = sub_1D0FF5368();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

unint64_t sub_1D0FA4240(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1D0F1B6A4(&qword_1EC5FD068, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1D0FF44D8();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D0FA434C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D0F46CF4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1D3881370](v9, a1);
      sub_1D0FA5950(v9);
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

unint64_t sub_1D0FA4414(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D0FA4480(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v22 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v24 + 48) + v4);
      if (v6 > 2)
      {
        if (v6 == 3)
        {
          v9 = 0xD000000000000011;
          v10 = "lowHeartRateNotification";
        }

        else if (v6 == 4)
        {
          v9 = 0xD00000000000001DLL;
          v10 = "trendNotification";
        }

        else
        {
          v9 = 0xD00000000000001ELL;
          v10 = "walkingSteadinessNotification";
        }
      }

      else
      {
        v7 = 0xD000000000000019;
        if (v6 == 1)
        {
          v8 = "lowCardioFitnessNotification";
        }

        else
        {
          v7 = 0xD000000000000018;
          v8 = "highHeartRateNotification";
        }

        if (*(*(v24 + 48) + v4))
        {
          v9 = v7;
        }

        else
        {
          v9 = 0xD00000000000001CLL;
        }

        if (*(*(v24 + 48) + v4))
        {
          v10 = v8;
        }

        else
        {
          v10 = "ready";
        }
      }

      v11 = v10 | 0x8000000000000000;
      v12 = 0xD00000000000001CLL;
      v13 = 0xD00000000000001DLL;
      if (v5 != 4)
      {
        v13 = 0xD00000000000001ELL;
      }

      v14 = "trendNotification";
      if (v5 != 4)
      {
        v14 = "walkingSteadinessNotification";
      }

      if (v5 == 3)
      {
        v13 = 0xD000000000000011;
        v14 = "lowHeartRateNotification";
      }

      v15 = 0xD000000000000019;
      if (v5 == 1)
      {
        v16 = "lowCardioFitnessNotification";
      }

      else
      {
        v15 = 0xD000000000000018;
        v16 = "highHeartRateNotification";
      }

      if (v5)
      {
        v12 = v15;
        v17 = v16;
      }

      else
      {
        v17 = "ready";
      }

      v18 = v5 <= 2 ? v12 : v13;
      v19 = v5 <= 2 ? v17 : v14;
      if (v9 == v18 && v11 == (v19 | 0x8000000000000000))
      {
        break;
      }

      v20 = sub_1D0FF6278();

      if ((v20 & 1) == 0)
      {
        v4 = (v4 + 1) & v22;
        if ((*(v23 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1D0FA469C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_1D0F1ACD4(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_1D0FF5BF8();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D0FA4768(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1D0FF5428();
      v8 = v7;
      if (v6 == sub_1D0FF5428() && v8 == v9)
      {
        break;
      }

      v11 = sub_1D0FF6278();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

id sub_1D0FA486C()
{
  v1 = v0;
  sub_1D0FA59A4();
  v2 = *v0;
  v3 = sub_1D0FF5FF8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1D0FA49C0()
{
  if (!qword_1EE06F890)
  {
    sub_1D0F73B6C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE06F890);
    }
  }
}

uint64_t sub_1D0FA4A24(uint64_t a1, uint64_t a2)
{
  sub_1D0F73B6C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1D0FA4A88()
{
  v1 = v0;
  sub_1D0F54264();
  v2 = *v0;
  v3 = sub_1D0FF5FF8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        sub_1D0F1B398(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1D0F54254(v19, (*(v4 + 56) + 32 * v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_1D0FA4BFC()
{
  v1 = v0;
  v31 = sub_1D0FF43A8();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00]();
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F1BC98(0, &qword_1EE071050, type metadata accessor for MedicalIDCache);
  v3 = *v0;
  v4 = sub_1D0FF5FF8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1D0FA4E80()
{
  v1 = v0;
  sub_1D0F54130(0, &qword_1EE06E290);
  v2 = *v0;
  v3 = sub_1D0FF5FF8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1D0FA4FFC()
{
  v1 = v0;
  sub_1D0F54130(0, &qword_1EE06E298);
  v2 = *v0;
  v3 = sub_1D0FF5FF8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1D0F1B398(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D0F54254(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1D0FA51D4()
{
  v1 = v0;
  sub_1D0F53958();
  v2 = *v0;
  v3 = sub_1D0FF5FF8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1D0FA5324()
{
  v1 = v0;
  sub_1D0F540CC();
  v2 = *v0;
  v3 = sub_1D0FF5FF8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1D0FA5480(unint64_t *a1, unint64_t *a2)
{
  v3 = v2;
  sub_1D0F236B4(0, a1, a2);
  v4 = *v2;
  v5 = sub_1D0FF5FF8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

char *sub_1D0FA55EC()
{
  v1 = v0;
  v41 = sub_1D0FF4348();
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1D0FF43A8();
  v43 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F1BC98(0, &qword_1EC5FC6E8, MEMORY[0x1E6969530]);
  v4 = *v0;
  v5 = sub_1D0FF5FF8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void sub_1D0FA59A4()
{
  if (!qword_1EE06E288)
  {
    sub_1D0F1ACD4(255, &qword_1EE070B50);
    sub_1D0F1ACD4(255, &qword_1EE070B20);
    sub_1D0F658CC();
    v0 = sub_1D0FF6038();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E288);
    }
  }
}

id ContactsMonogramRenderer.render(firstName:lastName:size:scale:rightToLeft:)(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v14 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  v15 = a5;
  v16 = v14;
  if (v15)
  {
    v17 = sub_1D0FF53E8();
    [v16 setGivenName_];
  }

  if (a7)
  {
    v18 = sub_1D0FF53E8();
    [v16 setFamilyName_];
  }

  v19 = [objc_opt_self() defaultSettingsWithCacheSize:0 skipContactLookup:1];
  v20 = [objc_allocWithZone(MEMORY[0x1E695D098]) initWithSettings_];
  v21 = [objc_opt_self() scopeWithPointSize:a8 & 1 scale:0 rightToLeft:a1 style:{a2, a3}];
  sub_1D0F1E9E0();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D0FF9980;
  *(v22 + 32) = v16;
  sub_1D0FA5C30();
  v23 = v16;
  v24 = sub_1D0FF55F8();

  v25 = [v20 avatarImageForContacts:v24 scope:v21];

  swift_unknownObjectRelease();
  return v25;
}

unint64_t sub_1D0FA5C30()
{
  result = qword_1EE070DE0;
  if (!qword_1EE070DE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE070DE0);
  }

  return result;
}

uint64_t ElectrocardiogramAlgorithmVersionPublisher.init(healthStore:queue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ElectrocardiogramAlgorithmVersionPublisher.receive<A>(subscriber:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = type metadata accessor for ElectrocardiogramAlgorithmVersionPublisher.Inner();
  v6 = v3;
  v7 = v4;
  v8 = sub_1D0FA6DC8(a1, v6, v7);

  v10[3] = v5;
  v10[4] = swift_getWitnessTable();
  v10[0] = v8;
  sub_1D0FF4DB8();
  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

uint64_t sub_1D0FA5DA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  v4 = sub_1D0FF4AC8();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_1D0FA5E78(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  v4 = sub_1D0FF4AC8();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

void sub_1D0FA5FF8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D0FA6084();
    [*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x78)) addHeartRhythmAvailabilityObserver_];
  }
}

uint64_t sub_1D0FA6084()
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69E7D40];
  sub_1D0FF4AA8();
  swift_getWitnessTable();
  v2 = sub_1D0FF6418();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - v4;
  v6 = objc_opt_self();
  v7 = *(v0 + *((*v1 & *v0) + 0x70));
  v14 = 0;
  v8 = [v6 versionWithHealthStore:v7 error:&v14];
  v9 = v8;
  if (v14)
  {
    v10 = v14;

    swift_willThrow();
    v14 = 0;
    v15 = 1;
    type metadata accessor for ElectrocardiogramAlgorithmVersionPublisher.Inner();
    swift_getWitnessTable();
    sub_1D0FF4A68();
  }

  else
  {
    if (v8)
    {
      v11 = [v8 integerValue];
    }

    else
    {
      v11 = 0;
    }

    v14 = v11;
    v15 = v9 == 0;
    type metadata accessor for ElectrocardiogramAlgorithmVersionPublisher.Inner();
    swift_getWitnessTable();
    sub_1D0FF4A68();
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D0FA6388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  v4 = *v3;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = sub_1D0FF5248();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D0FF5268();
  v10 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v3 + *((v5 & v4) + 0x80));
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = *((v5 & v4) + 0x50);
  v14[3] = *((v5 & v4) + 0x58);
  v14[4] = v13;
  aBlock[4] = v18;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D0F1E1EC;
  aBlock[3] = v19;
  v15 = _Block_copy(aBlock);

  sub_1D0FF5258();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D0FA6FCC(&qword_1EE071288, MEMORY[0x1E69E7F60]);
  sub_1D0F5D378();
  sub_1D0FA6FCC(&qword_1EE071278, sub_1D0F5D378);
  sub_1D0FF5CC8();
  MEMORY[0x1D3881150](0, v12, v9, v15);
  _Block_release(v15);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v21);
}

void sub_1D0FA66C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D0FA6084();
  }
}

void sub_1D0FA6714(void *a1)
{
  v1 = a1;
  sub_1D0FA6360();
}

id sub_1D0FA679C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ElectrocardiogramAlgorithmVersionPublisher.Inner();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D0FA680C(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  __swift_destroy_boxed_opaque_existential_1Tm(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);
  v3 = *((*v2 & *a1) + 0x68);
  v4 = sub_1D0FF4AC8();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);

  v5 = *&a1[*((*v2 & *a1) + 0x80)];
}

void (*sub_1D0FA6964(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1D0FA5F54();
  return sub_1D0F43B00;
}

uint64_t sub_1D0FA69D4()
{
  type metadata accessor for ElectrocardiogramAlgorithmVersionPublisher.Inner();

  return sub_1D0FF4A68();
}

uint64_t sub_1D0FA6A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ElectrocardiogramAlgorithmVersionPublisher.Inner();

  return MEMORY[0x1EEE0EB78](a1, v5, a3);
}

id sub_1D0FA6B40(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v20[0] = a3;
  v20[1] = a1;
  v6 = *v3;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = sub_1D0FF4AC8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - v10;
  v12 = &v4[*((v7 & v6) + 0x60)];
  v13 = sub_1D0FF4548();
  swift_allocObject();
  v14 = sub_1D0FF4538();
  v12[3] = v13;
  v12[4] = sub_1D0FA6FCC(&qword_1EE070A38, MEMORY[0x1E69A3B50]);
  *v12 = v14;
  v15 = MEMORY[0x1E69E7D40];
  *&v4[*((*MEMORY[0x1E69E7D40] & *v4) + 0x70)] = a2;
  *&v4[*((*v15 & *v4) + 0x78)] = [objc_allocWithZone(MEMORY[0x1E696C1E8]) initWithHealthStore_];
  v16 = v20[0];
  *&v4[*((*v15 & *v4) + 0x80)] = v20[0];
  v17 = v16;
  sub_1D0FF4AB8();
  (*(v9 + 32))(&v4[*((*v15 & *v4) + 0x68)], v11, v8);
  v18 = type metadata accessor for ElectrocardiogramAlgorithmVersionPublisher.Inner();
  v21.receiver = v4;
  v21.super_class = v18;
  return objc_msgSendSuper2(&v21, sel_init);
}

uint64_t sub_1D0FA6E1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D0FA6E64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D0FA6EB0()
{
  result = sub_1D0FF4AC8();
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

uint64_t sub_1D0FA6FCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t NSFileManager.uint64ExtendedAttribute(named:at:)()
{
  sub_1D0FF4208();
  if (!v1)
  {
    v0 = v3;
    sub_1D0F34FDC(v3, v4);
  }

  return v0;
}

void *NSFileManager.getAllFiles(at:)()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1D0FF41B8();
  v7[0] = 0;
  v2 = [v0 contentsOfDirectoryAtURL:v1 includingPropertiesForKeys:0 options:4 error:v7];

  v3 = v7[0];
  if (v2)
  {
    sub_1D0FF4238();
    v1 = sub_1D0FF5608();
    v4 = v3;
  }

  else
  {
    v5 = v7[0];
    sub_1D0FF4198();

    swift_willThrow();
  }

  return v1;
}

unint64_t NSFileManager.ExtendedAttributeError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_1D0FF3D48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NSFileManager.ExtendedAttributeError();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FA8D28(v1, v8, type metadata accessor for NSFileManager.ExtendedAttributeError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *v8;
  v10 = *(v8 + 1);
  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(v8 + 2);
    sub_1D0F3D190();
    (*(v3 + 32))(v5, &v8[*(v13 + 64)], v2);
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_1D0FF5DE8();
    MEMORY[0x1D3880AC0](0xD000000000000013, 0x80000001D10050A0);
    MEMORY[0x1D3880AC0](v11, v10);

    MEMORY[0x1D3880AC0](0xD000000000000022, 0x80000001D10050C0);
    v17[1] = v12;
    v14 = sub_1D0FF6238();
    MEMORY[0x1D3880AC0](v14);

    MEMORY[0x1D3880AC0](0xD000000000000018, 0x80000001D10050F0);
    sub_1D0FF5F38();
    v15 = v18;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_1D0FF5DE8();

    v18 = 0xD000000000000019;
    v19 = 0x80000001D1005110;
    MEMORY[0x1D3880AC0](v11, v10);

    MEMORY[0x1D3880AC0](0x746F6E2073617720, 0xEF2E646E756F6620);
    return v18;
  }

  return v15;
}

uint64_t sub_1D0FA74CC@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = sub_1D0FF5468();
  v10 = getxattr(a1, (v9 + 32), 0, 0, 0, 0);

  if (v10 < 1)
  {
    type metadata accessor for NSFileManager.ExtendedAttributeError();
    sub_1D0FA8C7C(&qword_1EC5FC2A8, type metadata accessor for NSFileManager.ExtendedAttributeError);
    swift_allocError();
    *v14 = a2;
    v14[1] = a3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v15 = sub_1D0FA8AC4(v10);
    v16 = v11;

    sub_1D0FA7BC8(&v15, a1, a2, a3, v10);
    result = v15;
    v13 = v16;
    if (v4)
    {
      return sub_1D0F34FDC(v15, v16);
    }

    else
    {
      *a4 = v15;
      a4[1] = v13;
    }
  }

  return result;
}

uint64_t sub_1D0FA7628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00]();
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v12, v12 + *(*(v15 - 8) + 64), v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_1D0FA771C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15[2] = a1;
  v15[3] = a3;
  v15[4] = a4;
  result = sub_1D0FA7628(a2, sub_1D0FA8E54, v15, a5, MEMORY[0x1E69E73E0], MEMORY[0x1E69E72F0], MEMORY[0x1E69E7410], a8);
  v11 = v16;
  if (v16 < 0)
  {
    type metadata accessor for NSFileManager.ExtendedAttributeError();
    sub_1D0FA8C7C(&qword_1EC5FC2A8, type metadata accessor for NSFileManager.ExtendedAttributeError);
    swift_allocError();
    *v12 = a3;
    v12[1] = a4;
    v12[2] = v11;

    MEMORY[0x1D3880250](v13);
    result = sub_1D0FF4C28();
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v14 = result;
      sub_1D0F3D190();
      sub_1D0FF3D48();
      v16 = v14;
      sub_1D0FA8B64(MEMORY[0x1E69E7CC0]);
      sub_1D0FA8C7C(&qword_1EC5FC2B8, MEMORY[0x1E6967EB8]);
      sub_1D0FF4178();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t type metadata accessor for NSFileManager.ExtendedAttributeError()
{
  result = qword_1EC5FD0D0;
  if (!qword_1EC5FD0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D0FA7930@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, int *a4@<X8>)
{
  if (a1)
  {
    v7 = a2 - a1;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1D0FF5468();
  v9 = setxattr(a3, (v8 + 32), a1, v7, 0, 0);

  *a4 = v9;
  return result;
}

uint64_t sub_1D0FA7A0C(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D0FF5468();
  v7 = removexattr(a1, (v6 + 32), 0);

  if (v7 < 0)
  {
    MEMORY[0x1D3880250](result);
    result = sub_1D0FF4C28();
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
    }

    else
    {
      sub_1D0FF3D38();
      v9 = sub_1D0FF4C38();
      result = sub_1D0FF4C38();
      if (v9 != result)
      {
        type metadata accessor for NSFileManager.ExtendedAttributeError();
        sub_1D0FA8C7C(&qword_1EC5FC2A8, type metadata accessor for NSFileManager.ExtendedAttributeError);
        swift_allocError();
        v11 = v10;
        sub_1D0F3D190();
        *v11 = a2;
        v11[1] = a3;
        v11[2] = v7;
        sub_1D0FF3D48();

        sub_1D0FA8B64(MEMORY[0x1E69E7CC0]);
        sub_1D0FA8C7C(&qword_1EC5FC2B8, MEMORY[0x1E6967EB8]);
        sub_1D0FF4178();
        swift_storeEnumTagMultiPayload();
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_1D0FA7BC8(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4, size_t a5)
{
  v58 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      *(&value + 7) = 0;
      *&value = 0;
      v30 = sub_1D0FF5468();

      v31 = getxattr(a2, (v30 + 32), &value, a5, 0, 0);

      if (v31 >= 1)
      {
        return swift_bridgeObjectRelease_n();
      }

      type metadata accessor for NSFileManager.ExtendedAttributeError();
      sub_1D0FA8C7C(&qword_1EC5FC2A8, type metadata accessor for NSFileManager.ExtendedAttributeError);
      swift_allocError();
      *v36 = a3;
      v36[1] = a4;
      v36[2] = v31;

      MEMORY[0x1D3880250](v37);
      result = sub_1D0FF4C28();
      if ((result & 0x100000000) == 0)
      {
        sub_1D0F3D190();
        sub_1D0FF3D48();
        sub_1D0FA8B64(MEMORY[0x1E69E7CC0]);
        sub_1D0FA8C7C(&qword_1EC5FC2B8, MEMORY[0x1E6967EB8]);
        sub_1D0FF4178();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return swift_bridgeObjectRelease_n();
      }

      goto LABEL_41;
    }

    sub_1D0F34FDC(v9, v8);
    *&value = v9;
    *(&value + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1D0FFFD20;
    sub_1D0F34FDC(0, 0xC000000000000000);
    sub_1D0FF4248();
    v17 = *(&value + 1);
    v54 = value;
    v18 = *(value + 16);
    v19 = sub_1D0FF3F78();
    if (!v19)
    {

      __break(1u);
      goto LABEL_39;
    }

    v20 = v19;
    v21 = sub_1D0FF3FA8();
    v22 = v18 - v21;
    if (!__OFSUB__(v18, v21))
    {
      sub_1D0FF3F98();
      v23 = sub_1D0FF5468();
      v24 = getxattr(a2, (v23 + 32), (v20 + v22), a5, 0, 0);

      if (v24 >= 1)
      {
        result = swift_bridgeObjectRelease_n();
        v25 = *(&value + 1) | 0x8000000000000000;
        *a1 = value;
LABEL_29:
        a1[1] = v25;
        return result;
      }

      type metadata accessor for NSFileManager.ExtendedAttributeError();
      sub_1D0FA8C7C(&qword_1EC5FC2A8, type metadata accessor for NSFileManager.ExtendedAttributeError);
      swift_allocError();
      *v38 = a3;
      v38[1] = a4;
      v38[2] = v24;

      MEMORY[0x1D3880250](v39);
      result = sub_1D0FF4C28();
      if ((result & 0x100000000) != 0)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      sub_1D0F3D190();
      sub_1D0FF3D48();
      sub_1D0FA8B64(MEMORY[0x1E69E7CC0]);
      sub_1D0FA8C7C(&qword_1EC5FC2B8, MEMORY[0x1E6967EB8]);
      sub_1D0FF4178();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      result = swift_bridgeObjectRelease_n();
      v40 = v17 | 0x8000000000000000;
      v41 = a1;
      *a1 = v54;
LABEL_32:
      v41[1] = v40;
      return result;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (!v10)
  {

    sub_1D0F34FDC(v9, v8);
    *&value = v9;
    WORD4(value) = v8;
    BYTE10(value) = BYTE2(v8);
    BYTE11(value) = BYTE3(v8);
    BYTE12(value) = BYTE4(v8);
    BYTE13(value) = BYTE5(v8);
    BYTE14(value) = BYTE6(v8);
    v11 = sub_1D0FF5468();
    v12 = getxattr(a2, (v11 + 32), &value, a5, 0, 0);

    if (v12 > 0)
    {
      v13 = value;
      v14 = DWORD2(value) | ((WORD6(value) | (BYTE14(value) << 16)) << 32);
      result = swift_bridgeObjectRelease_n();
      *a1 = v13;
      a1[1] = v14;
      return result;
    }

    type metadata accessor for NSFileManager.ExtendedAttributeError();
    sub_1D0FA8C7C(&qword_1EC5FC2A8, type metadata accessor for NSFileManager.ExtendedAttributeError);
    swift_allocError();
    *v32 = a3;
    v32[1] = a4;
    v32[2] = v12;

    MEMORY[0x1D3880250](v33);
    result = sub_1D0FF4C28();
    if ((result & 0x100000000) == 0)
    {
      sub_1D0F3D190();
      sub_1D0FF3D48();
      sub_1D0FA8B64(MEMORY[0x1E69E7CC0]);
      sub_1D0FA8C7C(&qword_1EC5FC2B8, MEMORY[0x1E6967EB8]);
      sub_1D0FF4178();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v34 = value;
      v35 = DWORD2(value) | ((WORD6(value) | (BYTE14(value) << 16)) << 32);
      result = swift_bridgeObjectRelease_n();
      *a1 = v34;
      a1[1] = v35;
      return result;
    }

    goto LABEL_40;
  }

  v26 = v8 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1D0F35360(v9, v8);
  sub_1D0F34FDC(v9, v8);
  *a1 = xmmword_1D0FFFD20;
  sub_1D0F34FDC(0, 0xC000000000000000);

  v27 = v9 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v27 < v9)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (sub_1D0FF3F78() && __OFSUB__(v9, sub_1D0FF3FA8()))
    {
LABEL_37:
      __break(1u);
    }

    sub_1D0FF3FB8();
    swift_allocObject();
    v42 = sub_1D0FF3F68();

    v26 = v42;
  }

  if (v27 < v9)
  {
    goto LABEL_34;
  }

  result = sub_1D0FF3F78();
  if (!result)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v43 = result;
  v44 = sub_1D0FF3FA8();
  v45 = v9 - v44;
  if (__OFSUB__(v9, v44))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_1D0FF3F98();
  v46 = sub_1D0FF5468();
  v47 = getxattr(a2, (v46 + 32), (v43 + v45), a5, 0, 0);

  if (v47 >= 1)
  {
    swift_bridgeObjectRelease_n();

    v25 = v26 | 0x4000000000000000;
    *a1 = v9;
    goto LABEL_29;
  }

  type metadata accessor for NSFileManager.ExtendedAttributeError();
  sub_1D0FA8C7C(&qword_1EC5FC2A8, type metadata accessor for NSFileManager.ExtendedAttributeError);
  swift_allocError();
  *v48 = a3;
  v48[1] = a4;
  v48[2] = v47;

  MEMORY[0x1D3880250](v49);
  result = sub_1D0FF4C28();
  if ((result & 0x100000000) == 0)
  {
    v50 = result;
    sub_1D0F3D190();
    sub_1D0FF3D48();
    LODWORD(value) = v50;
    sub_1D0FA8B64(MEMORY[0x1E69E7CC0]);
    sub_1D0FA8C7C(&qword_1EC5FC2B8, MEMORY[0x1E6967EB8]);
    sub_1D0FF4178();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_bridgeObjectRelease_n();

    v40 = v26 | 0x4000000000000000;
    v41 = a1;
    *a1 = v9;
    goto LABEL_32;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t _sSo13NSFileManagerC16HealthExperienceE22ExtendedAttributeErrorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D0FF3D48();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v45 - v8;
  v9 = type metadata accessor for NSFileManager.ExtendedAttributeError();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v45 - v13);
  sub_1D0FA8D90();
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &v18[*(v16 + 56)];
  sub_1D0FA8D28(a1, v18, type metadata accessor for NSFileManager.ExtendedAttributeError);
  sub_1D0FA8D28(a2, v19, type metadata accessor for NSFileManager.ExtendedAttributeError);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D0FA8D28(v18, v12, type metadata accessor for NSFileManager.ExtendedAttributeError);
    v21 = *v12;
    v20 = *(v12 + 1);
    v22 = *(v12 + 2);
    sub_1D0F3D190();
    v24 = *(v23 + 64);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v46 = v21;
      v47 = v22;
      v26 = *v19;
      v25 = *(v19 + 1);
      v45 = *(v19 + 2);
      v48 = v5;
      v27 = *(v5 + 32);
      v28 = &v12[v24];
      v29 = v50;
      v27(v50, v28, v4);
      v30 = &v19[v24];
      v31 = v49;
      v27(v49, v30, v4);
      if (v46 == v26 && v20 == v25)
      {

        v34 = v47;
      }

      else
      {
        v33 = sub_1D0FF6278();

        v34 = v47;
        if ((v33 & 1) == 0)
        {
          v35 = v48;
          goto LABEL_20;
        }
      }

      v35 = v48;
      if (v34 == v45)
      {
        sub_1D0FA8C7C(&qword_1EC5FC2B8, MEMORY[0x1E6967EB8]);
        LOBYTE(v40) = sub_1D0FF4148();
        v42 = *(v35 + 8);
        v42(v31, v4);
        v42(v29, v4);
LABEL_22:
        v41 = type metadata accessor for NSFileManager.ExtendedAttributeError;
        goto LABEL_23;
      }

LABEL_20:
      v43 = *(v35 + 8);
      v43(v31, v4);
      v43(v29, v4);
      LOBYTE(v40) = 0;
      goto LABEL_22;
    }

    (*(v5 + 8))(&v12[v24], v4);
  }

  else
  {
    sub_1D0FA8D28(v18, v14, type metadata accessor for NSFileManager.ExtendedAttributeError);
    v36 = *v14;
    v37 = v14[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v36 == *v19 && v37 == *(v19 + 1))
      {

        LOBYTE(v40) = 1;
      }

      else
      {
        v39 = sub_1D0FF6278();

        v40 = v39 << 31 >> 31;
      }

      goto LABEL_22;
    }
  }

  LOBYTE(v40) = 0;
  v41 = sub_1D0FA8D90;
LABEL_23:
  sub_1D0FA8DF4(v18, v41);
  return v40 & 1;
}

void sub_1D0FA8A58()
{
  sub_1D0F3D190();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_1D0FA8AC4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1D0FF3FB8();
      swift_allocObject();
      sub_1D0FF3F88();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1D0FF4268();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t sub_1D0FA8B64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D0FA8CC4();
    v3 = sub_1D0FF6028();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D0FA8D28(v4, &v13, sub_1D0F398A8);
      v5 = v13;
      v6 = v14;
      result = sub_1D0F23568(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D0F54254(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_1D0FA8C7C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D0FA8CC4()
{
  if (!qword_1EE06E298)
  {
    v0 = sub_1D0FF6038();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E298);
    }
  }
}

uint64_t sub_1D0FA8D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D0FA8D90()
{
  if (!qword_1EC5FD0E0)
  {
    type metadata accessor for NSFileManager.ExtendedAttributeError();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC5FD0E0);
    }
  }
}

uint64_t sub_1D0FA8DF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D0FA8E78(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_1D0FA8EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D0FAFFF0(a1, a2, a3);
  swift_getAssociatedTypeWitness();
  v4 = sub_1D0FF5C38();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

uint64_t HKKeyValueDomainAccessor.value.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D0FAFFF0(a1, a2, a3);
  swift_getAssociatedTypeWitness();
  v4 = sub_1D0FF5C38();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

void (*sub_1D0FA8FF4(void *a1, void *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = HKKeyValueDomainAccessor.value.modify(v6, a2, a3);
  return sub_1D0F43B00;
}

void (*HKKeyValueDomainAccessor.value.modify(void *a1, void *a2, uint64_t a3))(void ***a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  swift_getAssociatedTypeWitness();
  v10 = sub_1D0FF5C38();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  _s16HealthExperience24HKKeyValueDomainAccessorPAAE5value0D0QzSgvg_0(a2, a3, v13);
  return sub_1D0FA91C0;
}

void sub_1D0FA91C0(void ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    v6[2]((*a1)[5], v4, v5);
    sub_1D0FAB62C(v3, v8, v7);
    v9 = v6[1];
    (v9)(v3, v5);
    (v9)(v4, v5);
  }

  else
  {
    sub_1D0FAB62C((*a1)[6], v8, v7);
    (v6[1])(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1D0FA92B8()
{
  v0 = sub_1D0FF4C18();
  MEMORY[0x1EEE9AC00](v0);
  sub_1D0FF5A38();
  sub_1D0F3FA28(0, &qword_1EE06E458);
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1D0FA9590@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D0FF4C18();
  MEMORY[0x1EEE9AC00](v2);
  sub_1D0F3F904();
  MEMORY[0x1EEE9AC00](v3);
  sub_1D0FF5A58();
  v4 = sub_1D0FF4348();
  if (swift_dynamicCast())
  {
    v5 = a1;
    v6 = 0;
  }

  else
  {
    v5 = a1;
    v6 = 1;
  }

  return (*(*(v4 - 8) + 56))(v5, v6, 1, v4);
}

uint64_t sub_1D0FA98F8()
{
  v0 = sub_1D0FF4C18();
  MEMORY[0x1EEE9AC00](v0);
  sub_1D0FF5A88();
  sub_1D0F3FA28(0, &qword_1EE070E10);
  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0FA9BC0()
{
  v0 = sub_1D0FF4C18();
  MEMORY[0x1EEE9AC00](v0);
  sub_1D0FF5A78();
  sub_1D0F3FA28(0, &qword_1EE070E20);
  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t _s16HealthExperience24HKKeyValueDomainAccessorPAAE5value0D0QzSgvg_0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1D0FF4C18();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F3F904();
  MEMORY[0x1EEE9AC00](v9);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = AssociatedTypeWitness;
  v12 = MEMORY[0x1E69E6158];
  if (AssociatedTypeWitness == MEMORY[0x1E69E6158])
  {
    v50 = a3;
    v14 = (*(a2 + 16))(a1, a2);
    (*(a2 + 24))(a1, a2);
    v15 = sub_1D0FF5A78();
    v17 = v16;

    v53 = v15;
    v54 = v17;
    v18 = &qword_1EE070E20;
LABEL_16:
    sub_1D0F3FA28(0, v18);
    v43 = v50;
    v44 = swift_dynamicCast();
    v34 = *(*(v12 - 8) + 56);
    v36 = v44 ^ 1u;
    v35 = v43;
    goto LABEL_17;
  }

  v12 = MEMORY[0x1E69E6530];
  if (AssociatedTypeWitness == MEMORY[0x1E69E6530])
  {
    v50 = a3;
    v19 = (*(a2 + 16))(a1, a2);
    (*(a2 + 24))(a1, a2);
    v40 = sub_1D0FF5A88();
    v42 = v41;

    v53 = v40;
    LOBYTE(v54) = v42 & 1;
    v18 = &qword_1EE070E10;
    goto LABEL_16;
  }

  v12 = MEMORY[0x1E69E6370];
  if (AssociatedTypeWitness == MEMORY[0x1E69E6370])
  {
    v38 = (*(a2 + 16))(a1, a2);
    (*(a2 + 24))(a1, a2);
    v46 = sub_1D0FF5A38();

    LOBYTE(v53) = v46;
    sub_1D0F3FA28(0, &qword_1EE06E458);
    v47 = swift_dynamicCast();
    v34 = *(*(v12 - 8) + 56);
    v36 = v47 ^ 1u;
    v35 = a3;
LABEL_17:
    v37 = v12;
    return v34(v35, v36, 1, v37);
  }

  if (AssociatedTypeWitness == sub_1D0FF4348())
  {
    v39 = (*(a2 + 16))(a1, a2);
    (*(a2 + 24))(a1, a2);
    v50 = v39;
    sub_1D0FF5A58();

    v48 = swift_dynamicCast();
    v34 = *(*(v11 - 8) + 56);
    if (v48)
    {
      v35 = a3;
      v36 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    sub_1D0FB053C();
    v13 = swift_allocError();
    swift_willThrow();
    sub_1D0FF4BC8();
    v20 = v13;
    v21 = sub_1D0FF4C08();
    v22 = sub_1D0FF5958();

    if (os_log_type_enabled(v21, v22))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v53 = v25;
      *v24 = 136446466;
      v55 = a1;
      swift_getMetatypeMetadata();
      v26 = sub_1D0FF5448();
      v28 = a3;
      v29 = sub_1D0F1AE0C(v26, v27, &v53);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      v55 = v13;
      v30 = v13;
      sub_1D0F1E940();
      v31 = sub_1D0FF5448();
      v33 = sub_1D0F1AE0C(v31, v32, &v53);

      *(v24 + 14) = v33;
      a3 = v28;
      _os_log_impl(&dword_1D0F17000, v21, v22, "[%{public}s]: Unable to Get Value. Error: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v25, -1, -1);
      MEMORY[0x1D3882680](v24, -1, -1);
    }

    else
    {
    }

    (*(v51 + 8))(v8, v52);
    v34 = *(*(v11 - 8) + 56);
  }

  v35 = a3;
  v36 = 1;
LABEL_13:
  v37 = v11;
  return v34(v35, v36, 1, v37);
}

id sub_1D0FAA4C0(unsigned __int8 a1)
{
  v2 = a1;
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1D0FF4C18();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  if (v2 != 2)
  {
    return sub_1D0FF5AA8();
  }

  v8 = sub_1D0FF53E8();
  v28[0] = 0;
  v9 = [v7 setString:0 forKey:v8 error:v28];

  v10 = v28[0];
  if (v9)
  {

    return v10;
  }

  else
  {
    v26[1] = v28[0];
    v12 = v28[0];
    v13 = sub_1D0FF4198();

    swift_willThrow();
    sub_1D0FF4BC8();
    v14 = v13;
    v15 = sub_1D0FF4C08();
    v16 = sub_1D0FF5958();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28[0] = v18;
      *v17 = 136446466;
      v27 = type metadata accessor for HKKeyValueDomainBoolValue();
      sub_1D0FB0590(0, &qword_1EC5FD118, type metadata accessor for HKKeyValueDomainBoolValue);
      v19 = sub_1D0FF5448();
      v21 = sub_1D0F1AE0C(v19, v20, v28);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v27 = v13;
      v22 = v13;
      sub_1D0F1E940();
      v23 = sub_1D0FF5448();
      v25 = sub_1D0F1AE0C(v23, v24, v28);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_1D0F17000, v15, v16, "[%{public}s]: Unable to Set Value. Error: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v18, -1, -1);
      MEMORY[0x1D3882680](v17, -1, -1);
    }

    else
    {
    }

    return (*(v4 + 8))(v6, v3);
  }
}

id sub_1D0FAA81C(uint64_t a1)
{
  v67[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1D0FF4C18();
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v65 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F3F904();
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v61 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v58 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v60 = &v58 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v62 = &v58 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v58 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v58 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v58 - v21;
  sub_1D0FB00F8(a1, &v58 - v21);
  v23 = sub_1D0FF4348();
  v59 = *(v23 - 8);
  v24 = *(v59 + 48);
  v25 = v24(v22, 1, v23);
  sub_1D0FB04DC(v22, sub_1D0F3F904);
  if (v25 == 1)
  {
    v26 = *(v1 + 16);
    v27 = sub_1D0FF53E8();
    v67[0] = 0;
    LODWORD(v26) = [v26 setString:0 forKey:v27 error:v67];

    v28 = v67[0];
    if (v26)
    {

      return v28;
    }

    v62 = v67[0];
    v31 = v67[0];
    v32 = sub_1D0FF4198();

    swift_willThrow();
    v34 = v65;
  }

  else
  {
    sub_1D0FB00F8(a1, v20);
    v30 = v24(v20, 1, v23);
    sub_1D0FB04DC(v20, sub_1D0F3F904);
    if (v30 == 1)
    {
      return sub_1D0FF5A28();
    }

    sub_1D0FB00F8(a1, v17);
    v33 = v24(v17, 1, v23);
    sub_1D0FB04DC(v17, sub_1D0F3F904);
    if (v33 == 1)
    {
      return sub_1D0FF5AA8();
    }

    sub_1D0FB00F8(a1, v10);
    if (v24(v10, 1, v23) == 1)
    {
      sub_1D0FB04DC(v10, sub_1D0F3F904);
      v47 = 1;
      v49 = v61;
      v48 = v62;
      v51 = v59;
      v50 = v60;
    }

    else
    {
      v51 = v59;
      v50 = v60;
      (*(v59 + 32))(v60, v10, v23);
      v47 = 0;
      v49 = v61;
      v48 = v62;
    }

    (*(v51 + 56))(v50, v47, 1, v23);
    sub_1D0FB015C(v50, v48);
    v52 = *(v1 + 16);
    sub_1D0FB00F8(v48, v49);
    if (v24(v49, 1, v23) == 1)
    {
      v53 = 0;
    }

    else
    {
      v53 = sub_1D0FF42E8();
      (*(v51 + 8))(v49, v23);
    }

    v34 = v65;
    v54 = sub_1D0FF53E8();
    v67[0] = 0;
    v55 = [v52 setDate:v53 forKey:v54 error:v67];

    if (v55)
    {
      v56 = v67[0];
      return sub_1D0FB04DC(v48, sub_1D0F3F904);
    }

    v57 = v67[0];
    v32 = sub_1D0FF4198();

    swift_willThrow();
    sub_1D0FB04DC(v48, sub_1D0F3F904);
  }

  sub_1D0FF4BC8();
  v35 = v32;
  v36 = sub_1D0FF4C08();
  v37 = sub_1D0FF5958();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v67[0] = v39;
    *v38 = 136446466;
    v66 = type metadata accessor for HKKeyValueDomainDateValue();
    sub_1D0FB0590(0, &qword_1EC5FD110, type metadata accessor for HKKeyValueDomainDateValue);
    v40 = sub_1D0FF5448();
    v42 = sub_1D0F1AE0C(v40, v41, v67);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    v66 = v32;
    v43 = v32;
    sub_1D0F1E940();
    v44 = sub_1D0FF5448();
    v46 = sub_1D0F1AE0C(v44, v45, v67);

    *(v38 + 14) = v46;
    _os_log_impl(&dword_1D0F17000, v36, v37, "[%{public}s]: Unable to Set Value. Error: %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3882680](v39, -1, -1);
    MEMORY[0x1D3882680](v38, -1, -1);
  }

  else
  {
  }

  return (*(v63 + 8))(v34, v64);
}

id sub_1D0FAAF80(uint64_t a1, char a2)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D0FF4C18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 16);
  if ((a2 & 1) == 0)
  {
    return sub_1D0FF5A28();
  }

  v9 = sub_1D0FF53E8();
  v29[0] = 0;
  v10 = [v8 setString:0 forKey:v9 error:v29];

  v11 = v29[0];
  if (v10)
  {

    return v11;
  }

  else
  {
    v27[1] = v29[0];
    v13 = v29[0];
    v14 = sub_1D0FF4198();

    swift_willThrow();
    sub_1D0FF4BC8();
    v15 = v14;
    v16 = sub_1D0FF4C08();
    v17 = sub_1D0FF5958();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29[0] = v19;
      *v18 = 136446466;
      v28 = type metadata accessor for HKKeyValueDomainIntegerValue();
      sub_1D0FB0590(0, &qword_1EC5FD108, type metadata accessor for HKKeyValueDomainIntegerValue);
      v20 = sub_1D0FF5448();
      v22 = sub_1D0F1AE0C(v20, v21, v29);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v28 = v14;
      v23 = v14;
      sub_1D0F1E940();
      v24 = sub_1D0FF5448();
      v26 = sub_1D0F1AE0C(v24, v25, v29);

      *(v18 + 14) = v26;
      _os_log_impl(&dword_1D0F17000, v16, v17, "[%{public}s]: Unable to Set Value. Error: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v19, -1, -1);
      MEMORY[0x1D3882680](v18, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v7, v4);
  }
}

id sub_1D0FAB2DC()
{
  v28[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1D0FF4C18();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  if (v6)
  {
    v7 = sub_1D0FF53E8();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1D0FF53E8();
  v28[0] = 0;
  v9 = [v5 setString:v7 forKey:v8 error:v28];

  v10 = v28[0];
  if (v9)
  {

    return v10;
  }

  else
  {
    v26[1] = v28[0];
    v12 = v28[0];
    v13 = sub_1D0FF4198();

    swift_willThrow();
    sub_1D0FF4BC8();
    v14 = v13;
    v15 = sub_1D0FF4C08();
    v16 = sub_1D0FF5958();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28[0] = v18;
      *v17 = 136446466;
      v27 = type metadata accessor for HKKeyValueDomainStringValue();
      sub_1D0FB0590(0, &qword_1EC5FD0F8, type metadata accessor for HKKeyValueDomainStringValue);
      v19 = sub_1D0FF5448();
      v21 = sub_1D0F1AE0C(v19, v20, v28);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v27 = v13;
      v22 = v13;
      sub_1D0F1E940();
      v23 = sub_1D0FF5448();
      v25 = sub_1D0F1AE0C(v23, v24, v28);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_1D0F17000, v15, v16, "[%{public}s]: Unable to Set Value. Error: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v18, -1, -1);
      MEMORY[0x1D3882680](v17, -1, -1);
    }

    else
    {
    }

    return (*(v2 + 8))(v4, v1);
  }
}

id sub_1D0FAB62C(uint64_t a1, void *a2, uint64_t (**a3)(void, id))
{
  v92[2] = *MEMORY[0x1E69E9840];
  v6 = sub_1D0FF4C18();
  v86 = *(v6 - 8);
  v87 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v90 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FB0468(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v84 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F3F904();
  v82 = *(v10 - 8);
  v83 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v79 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v78 = &v78 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v78 - v15;
  v88 = a3;
  v89 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_1D0FF5C38();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v81 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v78 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v78 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v78 - v27;
  v29 = *(v18 + 16);
  v85 = a1;
  v29(&v78 - v27, a1, v17);
  v30 = *(*(AssociatedTypeWitness - 8) + 48);
  if (v30(v28, 1, AssociatedTypeWitness) != 1)
  {
    if (swift_dynamicCast())
    {
      v31 = v92[1];
      goto LABEL_5;
    }

    v29(v26, v85, v17);
    if (v30(v26, 1, AssociatedTypeWitness) == 1)
    {
      (*(v18 + 8))(v26, v17);
    }

    else if (!swift_dynamicCast())
    {
      v29(v23, v85, v17);
      v58 = v30(v23, 1, AssociatedTypeWitness);
      v35 = v90;
      if (v58 == 1)
      {
        (*(v18 + 8))(v23, v17);
      }

      else if (!swift_dynamicCast())
      {
        v61 = v81;
        v29(v81, v85, v17);
        if (v30(v61, 1, AssociatedTypeWitness) == 1)
        {
          (*(v18 + 8))(v61, v17);
          v62 = sub_1D0FF4348();
          v63 = v84;
          (*(*(v62 - 8) + 56))(v84, 1, 1, v62);
        }

        else
        {
          v62 = sub_1D0FF4348();
          v64 = v78;
          v65 = swift_dynamicCast();
          v66 = *(*(v62 - 8) + 56);
          v63 = v84;
          if (!v65)
          {
            v66(v64, 1, 1, v62);
            sub_1D0FB04DC(v64, sub_1D0F3F904);
            (*(v82 + 56))(v63, 1, 1, v83);
            sub_1D0FB04DC(v63, sub_1D0FB0468);
            sub_1D0FB053C();
            v42 = swift_allocError();
            swift_willThrow();
            v33 = v89;
            goto LABEL_17;
          }

          v67 = *(v62 - 8);
          v66(v64, 0, 1, v62);
          (*(v67 + 32))(v63, v64, v62);
          v66(v63, 0, 1, v62);
        }

        v33 = v89;
        (*(v82 + 56))(v63, 0, 1, v83);
        v68 = v80;
        sub_1D0FB015C(v63, v80);
        v69 = v88;
        v70 = (v88)[2](v33, v88);
        v71 = v79;
        sub_1D0FB00F8(v68, v79);
        sub_1D0FF4348();
        v72 = *(v62 - 8);
        v73 = 0;
        if ((*(v72 + 48))(v71, 1, v62) != 1)
        {
          v73 = sub_1D0FF42E8();
          (*(v72 + 8))(v71, v62);
        }

        (v69)[3](v33, v69);
        v74 = sub_1D0FF53E8();

        v92[0] = 0;
        v75 = [v70 setDate:v73 forKey:v74 error:v92];

        if (v75)
        {
          v76 = v92[0];
          return sub_1D0FB04DC(v68, sub_1D0F3F904);
        }

        v77 = v92[0];
        v42 = sub_1D0FF4198();

        swift_willThrow();
        sub_1D0FB04DC(v68, sub_1D0F3F904);
        goto LABEL_17;
      }

      v59 = v88;
      v60 = v89;
      v45 = (v88)[2](v89, v88);
      (v59)[3](v60, v59);
      sub_1D0FF5AA8();
LABEL_26:
    }

    v43 = v89;
    v44 = v88;
    v45 = (v88)[2](v89, v88);
    (v44)[3](v43, v44);
    sub_1D0FF5A28();
    goto LABEL_26;
  }

  (*(v18 + 8))(v28, v17);
  v31 = 0;
LABEL_5:
  v32 = v88;
  v33 = v89;
  v34 = (v88)[2](v89, v88);
  v35 = v90;
  if (v31)
  {
    v36 = sub_1D0FF53E8();
  }

  else
  {
    v36 = 0;
  }

  (v32)[3](v33, v32);
  v37 = sub_1D0FF53E8();

  v92[0] = 0;
  v38 = [v34 setString:v36 forKey:v37 error:v92];

  v39 = v92[0];
  if (v38)
  {

    return v39;
  }

  v88 = v92[0];
  v41 = v92[0];
  v42 = sub_1D0FF4198();

  swift_willThrow();
LABEL_17:
  sub_1D0FF4BC8();
  v46 = v42;
  v47 = sub_1D0FF4C08();
  v48 = sub_1D0FF5958();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v92[0] = v50;
    *v49 = 136446466;
    v91 = v33;
    swift_getMetatypeMetadata();
    v51 = sub_1D0FF5448();
    v53 = sub_1D0F1AE0C(v51, v52, v92);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2080;
    v91 = v42;
    v54 = v42;
    sub_1D0F1E940();
    v55 = sub_1D0FF5448();
    v57 = sub_1D0F1AE0C(v55, v56, v92);

    *(v49 + 14) = v57;
    _os_log_impl(&dword_1D0F17000, v47, v48, "[%{public}s]: Unable to Set Value. Error: %s", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3882680](v50, -1, -1);
    MEMORY[0x1D3882680](v49, -1, -1);
  }

  else
  {
  }

  return (*(v86 + 8))(v35, v87);
}

uint64_t HKKeyValueDomainAccessor.publisher.getter(uint64_t a1, uint64_t a2)
{
  v14[0] = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  swift_getAssociatedTypeWitness();
  sub_1D0FF5C38();
  sub_1D0F1E940();
  sub_1D0FF4E58();
  swift_getWitnessTable();
  v5 = sub_1D0FF5018();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  (*(v3 + 16))(v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14[1], a1);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v11 = v14[0];
  *(v10 + 16) = a1;
  *(v10 + 24) = v11;
  (*(v3 + 32))(v10 + v9, v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_1D0FF5008();
  swift_getWitnessTable();
  v12 = sub_1D0FF5098();
  (*(v6 + 8))(v8, v5);
  return v12;
}

uint64_t sub_1D0FAC4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v74 = a1;
  v75 = a2;
  v76 = a3;
  v77 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1D0FF5C38();
  v68 = sub_1D0F1E940();
  v5 = sub_1D0FF4F98();
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v67 = v57 - v6;
  sub_1D0FB2110();
  v8 = v7;
  v9 = sub_1D0FB2180(&qword_1EE06E580, sub_1D0FB2110);
  v59 = v8;
  v57[1] = v9;
  v10 = sub_1D0FF4D08();
  v60 = *(v10 - 8);
  v61 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v58 = v57 - v11;
  sub_1D0FB21C8(255, &qword_1EE06E548, &qword_1EE06E458);
  v13 = v12;
  v14 = sub_1D0FB2240(&qword_1EE06E550, &qword_1EE06E548, &qword_1EE06E458);
  v64 = v13;
  v62 = v14;
  v15 = sub_1D0FF4D08();
  v65 = *(v15 - 8);
  v66 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v63 = v57 - v16;
  v17 = MEMORY[0x1E69E6530];
  sub_1D0FB21C8(255, &qword_1EE06E538, &qword_1EE070E10);
  v19 = v18;
  v71 = sub_1D0FB2240(&qword_1EE06E540, &qword_1EE06E538, &qword_1EE070E10);
  v72 = v19;
  v20 = sub_1D0FF4D08();
  v73 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v57 - v21;
  v23 = MEMORY[0x1E69E6158];
  sub_1D0FB21C8(255, &qword_1EE06E558, &qword_1EE070E20);
  sub_1D0FB2240(&qword_1EE06E560, &qword_1EE06E558, &qword_1EE070E20);
  v24 = sub_1D0FF4D08();
  MEMORY[0x1EEE9AC00](v24);
  v27 = v57 - v26;
  if (AssociatedTypeWitness == v23)
  {
    v35 = v75;
    v36 = v76;
    v37 = *(v76 + 16);
    v73 = v25;
    v38 = v37(v75, v76);
    (*(v36 + 24))(v35, v36);
    v39 = sub_1D0FF59F8();

    v78 = v39;
    v40 = swift_allocObject();
    *(v40 + 16) = v35;
    *(v40 + 24) = v36;
    sub_1D0FF50C8();

    swift_getWitnessTable();
    v32 = sub_1D0FF5098();
    result = (*(v73 + 8))(v27, v24);
  }

  else
  {
    v28 = v75;
    v29 = v76;
    if (AssociatedTypeWitness != v17)
    {
      if (AssociatedTypeWitness == MEMORY[0x1E69E6370])
      {
        v47 = v75;
        v48 = (*(v76 + 16))(v75, v76);
        (*(v29 + 24))(v47, v29);
        v49 = sub_1D0FF59D8();

        v78 = v49;
        v50 = swift_allocObject();
        *(v50 + 16) = v47;
        *(v50 + 24) = v29;
        v51 = v63;
        sub_1D0FF50C8();

        v31 = v66;
        swift_getWitnessTable();
        v32 = sub_1D0FF5098();
        v52 = v65;
      }

      else
      {
        if (AssociatedTypeWitness != sub_1D0FF4348())
        {
          sub_1D0FB053C();
          v78 = swift_allocError();
          v30 = v67;
          sub_1D0FF4F78();
          v31 = v70;
          swift_getWitnessTable();
          v32 = sub_1D0FF5098();
          v33 = *(v69 + 8);
          v34 = v30;
LABEL_11:
          result = v33(v34, v31);
          goto LABEL_12;
        }

        v53 = v28;
        v54 = (*(v29 + 16))(v28, v29);
        (*(v29 + 24))(v53, v29);
        v55 = sub_1D0FF59E8();

        v78 = v55;
        v56 = swift_allocObject();
        *(v56 + 16) = v53;
        *(v56 + 24) = v29;
        v51 = v58;
        sub_1D0FF50C8();

        v31 = v61;
        swift_getWitnessTable();
        v32 = sub_1D0FF5098();
        v52 = v60;
      }

      v33 = *(v52 + 8);
      v34 = v51;
      goto LABEL_11;
    }

    v42 = v76;
    v43 = v75;
    v44 = (*(v76 + 16))(v75, v76);
    (*(v42 + 24))(v43, v42);
    v45 = sub_1D0FF59C8();

    v78 = v45;
    v46 = swift_allocObject();
    *(v46 + 16) = v43;
    *(v46 + 24) = v42;
    sub_1D0FF50C8();

    swift_getWitnessTable();
    v32 = sub_1D0FF5098();
    result = (*(v73 + 8))(v22, v20);
  }

LABEL_12:
  *v77 = v32;
  return result;
}

uint64_t sub_1D0FACDC8@<X0>(uint64_t a1@<X8>)
{
  sub_1D0F3FA28(0, &qword_1EE070E20);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  v3 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a1, v3 ^ 1u, 1, AssociatedTypeWitness);
}

uint64_t sub_1D0FACEA8@<X0>(uint64_t a1@<X8>)
{
  sub_1D0F3FA28(0, &qword_1EE070E10);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a1, v3 ^ 1u, 1, AssociatedTypeWitness);
}

uint64_t sub_1D0FACF80@<X0>(uint64_t a1@<X8>)
{
  sub_1D0F3FA28(0, &qword_1EE06E458);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a1, v3 ^ 1u, 1, AssociatedTypeWitness);
}

uint64_t sub_1D0FAD050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D0F3F904();
  MEMORY[0x1EEE9AC00](v4);
  sub_1D0FB00F8(a1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a2, v7 ^ 1u, 1, AssociatedTypeWitness);
}

Swift::Void __swiftcall HKKeyValueDomainAccessor.reset()()
{
  v2 = v1;
  v3 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1D0FF5C38();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v9 - v7;
  (*(*(AssociatedTypeWitness - 8) + 56))(&v9 - v7, 1, 1, AssociatedTypeWitness);
  sub_1D0FAD91C(v8, 0, 0, v3, v2);
  (*(v6 + 8))(v8, v5);
}

void sub_1D0FAD298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v63 = a2;
  sub_1D0F3F904();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v58 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v56 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v57 = &v56 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v59 = &v56 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v60 = &v56 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v61 = &v56 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v56 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v56 - v24;
  sub_1D0FB00F8(a1, &v56 - v24);
  v26 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v27 = (v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  sub_1D0FB015C(v25, v28 + v26);
  *(v28 + v27) = v4;
  v29 = (v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8));
  v30 = v63;
  *v29 = v63;
  v29[1] = a3;
  v62 = a1;
  sub_1D0FB00F8(a1, v23);
  v31 = sub_1D0FF4348();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  LODWORD(v25) = v33(v23, 1, v31);

  sub_1D0F1C500(v30);
  sub_1D0FB04DC(v23, sub_1D0F3F904);
  if (v25 == 1)
  {
    v34 = *(v4 + 16);
    v35 = sub_1D0FF53E8();
    v68 = sub_1D0FB0834;
    v69 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v65 = 1107296256;
    v66 = sub_1D0FCA978;
    v67 = &block_descriptor_14;
    v36 = _Block_copy(&aBlock);

    [v34 setString:0 forKey:v35 completion:v36];

    _Block_release(v36);
  }

  else
  {
    v37 = v28;
    v38 = v32;
    v39 = v61;
    v40 = v62;
    sub_1D0FB00F8(v62, v61);
    v41 = v33(v39, 1, v31);
    sub_1D0FB04DC(v39, sub_1D0F3F904);
    if (v41 == 1)
    {
      sub_1D0FF5A18();
    }

    else
    {
      v42 = v31;
      v43 = v60;
      sub_1D0FB00F8(v40, v60);
      v44 = v33(v43, 1, v31);
      sub_1D0FB04DC(v43, sub_1D0F3F904);
      v45 = v37;
      if (v44 == 1)
      {
        sub_1D0FF5A98();
      }

      else
      {
        v46 = v56;
        sub_1D0FB00F8(v40, v56);
        if (v33(v46, 1, v42) == 1)
        {
          sub_1D0FB04DC(v46, sub_1D0F3F904);
          v47 = 1;
          v49 = v58;
          v48 = v59;
          v50 = v57;
          v51 = v38;
        }

        else
        {
          v51 = v38;
          v50 = v57;
          (*(v38 + 32))(v57, v46, v42);
          v47 = 0;
          v49 = v58;
          v48 = v59;
        }

        (*(v51 + 56))(v50, v47, 1, v42);
        sub_1D0FB015C(v50, v48);
        v52 = *(v4 + 16);
        sub_1D0FB00F8(v48, v49);
        if (v33(v49, 1, v42) == 1)
        {
          v53 = 0;
        }

        else
        {
          v53 = sub_1D0FF42E8();
          (*(v51 + 8))(v49, v42);
        }

        v54 = sub_1D0FF53E8();
        v68 = sub_1D0FB0834;
        v69 = v45;
        aBlock = MEMORY[0x1E69E9820];
        v65 = 1107296256;
        v66 = sub_1D0FCA978;
        v67 = &block_descriptor_38;
        v55 = _Block_copy(&aBlock);

        [v52 setDate:v53 forKey:v54 completion:v55];
        _Block_release(v55);

        sub_1D0FB04DC(v48, sub_1D0F3F904);
      }
    }
  }
}

void sub_1D0FAD91C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v120 = a5;
  v113 = a3;
  v110 = a2;
  v107 = a1;
  sub_1D0FB0468(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v102 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F3F904();
  v101 = v9;
  v100 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v98 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v97 = &v96 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v103 = &v96 - v15;
  v16 = *(a4 - 1);
  v112 = *(v16 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v118 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v116 = &v96 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = sub_1D0FF5C38();
  v117 = *(v20 - 8);
  v21 = *(v117 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v99 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v104 = &v96 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v105 = &v96 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v108 = &v96 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v96 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v96 - v32;
  v35 = *(v34 + 16);
  v115 = v34 + 16;
  v106 = &v96 - v32;
  v35(&v96 - v32, a1, v20);
  v114 = v35;
  v36 = *(v16 + 16);
  v37 = v116;
  v36(v116, v119, a4);
  v111 = v31;
  v35(v31, v33, v20);
  v36(v118, v37, a4);
  v38 = v117;
  v39 = (*(v117 + 80) + 32) & ~*(v117 + 80);
  v40 = (v21 + *(v16 + 80) + v39) & ~*(v16 + 80);
  v41 = (v112 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v120;
  *(v42 + 16) = a4;
  *(v42 + 24) = v43;
  v44 = v107;
  (*(v38 + 32))(v42 + v39, v106, v20);
  v112 = v16;
  v45 = *(v16 + 32);
  v46 = a4;
  v47 = v108;
  v48 = v46;
  v49 = v110;
  v45(v42 + v40, v116);
  v116 = v42;
  v50 = (v42 + v41);
  v51 = v20;
  v52 = v113;
  *v50 = v49;
  v50[1] = v52;
  v114(v47, v44, v20);
  v53 = *(*(AssociatedTypeWitness - 8) + 48);
  v54 = AssociatedTypeWitness;
  if (v53(v47, 1) == 1)
  {
    sub_1D0F1C500(v49);
    v55 = v117;
    (*(v117 + 8))(v47, v20);
    v56 = 0;
    v57 = v48;
LABEL_5:
    (*(v112 + 8))(v118, v57);
    (*(v55 + 8))(v111, v20);
    v58 = v120;
    v59 = (*(v120 + 16))(v57, v120);
    if (v56)
    {
      v60 = sub_1D0FF53E8();
    }

    else
    {
      v60 = 0;
    }

    (*(v58 + 24))(v57, v58);
    v61 = sub_1D0FF53E8();

    v125 = sub_1D0FB1FE4;
    v126 = v116;
    aBlock = MEMORY[0x1E69E9820];
    v122 = 1107296256;
    v123 = sub_1D0FCA978;
    v124 = &block_descriptor_58;
    v62 = _Block_copy(&aBlock);

    [v59 setString:v60 forKey:v61 completion:v62];

    _Block_release(v62);

    return;
  }

  sub_1D0F1C500(v49);
  if (swift_dynamicCast())
  {
    v56 = v122;
    v57 = v48;
    v55 = v117;
    goto LABEL_5;
  }

  v63 = v105;
  v114(v105, v44, v20);
  if ((v53)(v63, 1, v54) == 1)
  {
    v64 = v117;
    (*(v117 + 8))(v63, v20);
LABEL_13:
    (*(v112 + 8))(v118, v48);
    (*(v64 + 8))(v111, v20);
    v65 = v120;
    v66 = (*(v120 + 16))(v48, v120);
    (*(v65 + 24))(v48, v65);
    sub_1D0FF5A18();

LABEL_14:

    return;
  }

  if (swift_dynamicCast())
  {
    v64 = v117;
    goto LABEL_13;
  }

  v108 = v48;
  v67 = v104;
  v114(v104, v44, v20);
  if ((v53)(v67, 1, v54) == 1)
  {
    v68 = v117;
    (*(v117 + 8))(v67, v20);
LABEL_20:
    v69 = v108;
    (*(v112 + 8))(v118, v108);
    (*(v68 + 8))(v111, v20);
    v70 = v120;
    v71 = (*(v120 + 16))(v69, v120);
    (*(v70 + 24))(v69, v70);
    sub_1D0FF5A98();

    goto LABEL_14;
  }

  if (swift_dynamicCast())
  {
    v68 = v117;
    goto LABEL_20;
  }

  v72 = v99;
  v114(v99, v44, v51);
  if ((v53)(v72, 1, v54) == 1)
  {
    v73 = v117;
    (*(v117 + 8))(v72, v51);
    v74 = sub_1D0FF4348();
    v75 = v102;
    (*(*(v74 - 8) + 56))(v102, 1, 1, v74);
    v76 = v120;
  }

  else
  {
    v77 = v49;
    v115 = v51;
    v74 = sub_1D0FF4348();
    v78 = v97;
    v79 = swift_dynamicCast();
    v80 = *(*(v74 - 8) + 56);
    v76 = v120;
    if (!v79)
    {
      v80(v78, 1, 1, v74);
      sub_1D0FB04DC(v78, sub_1D0F3F904);
      v90 = v102;
      (*(v100 + 56))(v102, 1, 1, v101);
      sub_1D0FB04DC(v90, sub_1D0FB0468);
      sub_1D0FB053C();
      v91 = swift_allocError();
      v92 = v111;
      v93 = v118;
      v94 = v77;
      v95 = v108;
      sub_1D0FB08E0(v91, v111, v118, v94, v113, v108);

      (*(v112 + 8))(v93, v95);
      (*(v117 + 8))(v92, v115);
      return;
    }

    v81 = *(v74 - 8);
    v80(v78, 0, 1, v74);
    v75 = v102;
    (*(v81 + 32))(v102, v78, v74);
    v80(v75, 0, 1, v74);
    v51 = v115;
    v73 = v117;
  }

  (*(v100 + 56))(v75, 0, 1, v101);
  v82 = v108;
  (*(v112 + 8))(v118, v108);
  (*(v73 + 8))(v111, v51);
  v83 = v103;
  sub_1D0FB015C(v75, v103);
  v84 = (*(v76 + 16))(v82, v76);
  v85 = v98;
  sub_1D0FB00F8(v83, v98);
  sub_1D0FF4348();
  v86 = *(v74 - 8);
  v87 = 0;
  if ((*(v86 + 48))(v85, 1, v74) != 1)
  {
    v87 = sub_1D0FF42E8();
    (*(v86 + 8))(v85, v74);
  }

  (*(v76 + 24))(v108, v76);
  v88 = sub_1D0FF53E8();

  v125 = sub_1D0FB1FE4;
  v126 = v116;
  aBlock = MEMORY[0x1E69E9820];
  v122 = 1107296256;
  v123 = sub_1D0FCA978;
  v124 = &block_descriptor_61;
  v89 = _Block_copy(&aBlock);

  [v84 setDate:v87 forKey:v88 completion:v89];
  _Block_release(v89);

  sub_1D0FB04DC(v103, sub_1D0F3F904);
}

uint64_t HKKeyValueDomainAccessor.resetPublisher()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1D0FF5C38();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  (*(*(AssociatedTypeWitness - 8) + 56))(&v11 - v7, 1, 1, AssociatedTypeWitness);
  v9 = sub_1D0FAE8E8(v8, a1, a2);
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t sub_1D0FAE8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  swift_getAssociatedTypeWitness();
  v5 = sub_1D0FF5C38();
  v26 = v5;
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FB0044();
  v14 = *(v13 - 8);
  v29 = v13;
  v30 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v27, a2);
  (*(v6 + 16))(v9, a1, v5);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = (v11 + v17 + *(v6 + 80)) & ~*(v6 + 80);
  v19 = swift_allocObject();
  v20 = v28;
  *(v19 + 16) = a2;
  *(v19 + 24) = v20;
  (*(v10 + 32))(v19 + v17, v12, a2);
  (*(v6 + 32))(v19 + v18, v9, v26);
  v21 = MEMORY[0x1E695BED0];
  sub_1D0FB0770(0, &qword_1EE06E5F8, MEMORY[0x1E695BED0]);
  sub_1D0FB07E4(&qword_1EE06E600, &qword_1EE06E5F8, v21);
  sub_1D0FF5008();
  sub_1D0FB2180(&qword_1EC5FD0F0, sub_1D0FB0044);
  v22 = v29;
  v23 = sub_1D0FF5098();
  (*(v30 + 8))(v16, v22);
  return v23;
}

uint64_t sub_1D0FAEC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v24 = a4;
  v25 = a5;
  swift_getAssociatedTypeWitness();
  v8 = sub_1D0FF5C38();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - v11;
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, a3);
  (*(v9 + 16))(v12, a2, v8);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = (v14 + v16 + *(v9 + 80)) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v19 = v24;
  *(v18 + 16) = a3;
  *(v18 + 24) = v19;
  (*(v13 + 32))(v18 + v16, v15, a3);
  (*(v9 + 32))(v18 + v17, v12, v8);
  v20 = MEMORY[0x1E695C028];
  sub_1D0FB0770(0, &qword_1EE070BA8, MEMORY[0x1E695C028]);
  swift_allocObject();
  v26 = sub_1D0FF4FF8();
  sub_1D0FB07E4(&qword_1EE070BB0, &qword_1EE070BA8, v20);
  v21 = sub_1D0FF5098();

  *v25 = v21;
  return result;
}

uint64_t sub_1D0FAEF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1D0FB237C;
  *(v12 + 24) = v11;

  sub_1D0FAD91C(a4, sub_1D0FB2384, v12, a5, a6);
}

void sub_1D0FAEFFC(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    a2(a1, 1);
  }

  else
  {
    sub_1D0F1E940();
    sub_1D0FF63F8();
    a2(v5, v6);
    sub_1D0F9C7C0(v5, v6);
  }
}

uint64_t HKKeyValueDomainBoolValue.key.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void *HKKeyValueDomainBoolValue.__allocating_init(keyValueDomain:key:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *HKKeyValueDomainBoolValue.init(keyValueDomain:key:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t sub_1D0FAF13C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1D0FF4C18();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D0FA92B8();
  if (v7 == 2)
  {
    sub_1D0FF4BC8();

    v8 = sub_1D0FF4C08();
    v9 = sub_1D0FF5958();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18[0] = v11;
      v18[1] = v2;
      *v10 = 136446466;
      swift_getMetatypeMetadata();
      v12 = sub_1D0FF5448();
      v14 = sub_1D0F1AE0C(v12, v13, v18);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_1D0F1AE0C(v1[3], v1[4], v18);
      _os_log_impl(&dword_1D0F17000, v8, v9, "[%{public}s]: Cannot toggle nil value. Key %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v11, -1, -1);
      MEMORY[0x1D3882680](v10, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v16 = (v7 & 1) == 0;
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 32) = 0;
    *(v17 + 40) = 0;
    *(v17 + 24) = v0;

    sub_1D0FF5A98();
  }
}

uint64_t sub_1D0FAF424@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D0FA92B8();
  *a1 = result;
  return result;
}

id (*sub_1D0FAF478(uint64_t a1))(uint64_t a1)
{
  *a1 = *v1;
  *(a1 + 8) = sub_1D0FA92B8();
  return sub_1D0FAF4C4;
}

uint64_t sub_1D0FAF4EC()
{
  sub_1D0F3F904();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4338();
  v3 = sub_1D0FF4348();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  sub_1D0FAD298(v2, 0, 0);
  return sub_1D0FB04DC(v2, sub_1D0F3F904);
}

uint64_t sub_1D0FAF5C4()
{
  sub_1D0F3F904();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4338();
  v3 = sub_1D0FF4348();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  sub_1D0FAA81C(v2);
  return sub_1D0FB04DC(v2, sub_1D0F3F904);
}

uint64_t sub_1D0FAF694()
{
  v1 = v0;
  sub_1D0FB0044();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F3F904();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  sub_1D0FF4338();
  v14 = sub_1D0FF4348();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  sub_1D0FB00F8(v13, v11);
  v15 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  sub_1D0FB015C(v11, v16 + v15);
  v17 = MEMORY[0x1E695BED0];
  sub_1D0FB0770(0, &qword_1EE06E5F8, MEMORY[0x1E695BED0]);
  sub_1D0FB07E4(&qword_1EE06E600, &qword_1EE06E5F8, v17);

  sub_1D0FF5008();
  sub_1D0FB2180(&qword_1EC5FD0F0, sub_1D0FB0044);
  v18 = sub_1D0FF5098();
  (*(v4 + 8))(v6, v3);
  sub_1D0FB04DC(v13, sub_1D0F3F904);
  return v18;
}

void (*sub_1D0FAF9D8(void *a1))(uint64_t a1, char a2)
{
  sub_1D0F3F904();
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    *a1 = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v4);
    v5 = malloc(v4);
  }

  v6 = *v1;
  a1[1] = v5;
  a1[2] = v6;
  sub_1D0FA9590(v5);
  return sub_1D0FAFA88;
}

void sub_1D0FAFA88(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  if (a2)
  {
    sub_1D0FB00F8(v2, v3);
    sub_1D0FAA81C(v3);
    sub_1D0FB04DC(v3, sub_1D0F3F904);
  }

  else
  {
    sub_1D0FAA81C(v2);
  }

  sub_1D0FB04DC(v2, sub_1D0F3F904);
  free(v2);

  free(v3);
}

uint64_t sub_1D0FAFB28@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D0FA98F8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

id (*sub_1D0FAFB8C(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = *v1;
  *a1 = sub_1D0FA98F8();
  *(a1 + 8) = v3 & 1;
  return sub_1D0FAFBE0;
}

uint64_t _s16HealthExperience020HKKeyValueDomainBoolD0CfD_0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D0FAFC50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D0FA9BC0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D0FAFC7C()
{
  sub_1D0FAB2DC();
}

uint64_t (*sub_1D0FAFCC0(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = *v1;
  *a1 = sub_1D0FA9BC0();
  a1[1] = v3;
  return sub_1D0FAFD0C;
}

uint64_t sub_1D0FAFD0C(uint64_t a1, char a2)
{
  if (a2)
  {

    sub_1D0FAB2DC();
  }

  else
  {
    sub_1D0FAB2DC();
  }
}

uint64_t sub_1D0FAFD7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1D0F3F904();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = *a1;
  sub_1D0FB00F8(a2, v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  sub_1D0FB015C(v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = MEMORY[0x1E695C028];
  sub_1D0FB0770(0, &qword_1EE070BA8, MEMORY[0x1E695C028]);
  swift_allocObject();

  v15[1] = sub_1D0FF4FF8();
  sub_1D0FB07E4(&qword_1EE070BB0, &qword_1EE070BA8, v12);
  v13 = sub_1D0FF5098();

  *a3 = v13;
  return result;
}

uint64_t sub_1D0FAFF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D0FB0828;
  *(v8 + 24) = v7;

  sub_1D0FAD298(a4, sub_1D0FB082C, v8);
}

void sub_1D0FB0044()
{
  if (!qword_1EC5FD0E8)
  {
    v0 = MEMORY[0x1E695BED0];
    sub_1D0FB0770(255, &qword_1EE06E5F8, MEMORY[0x1E695BED0]);
    sub_1D0FB07E4(&qword_1EE06E600, &qword_1EE06E5F8, v0);
    v1 = sub_1D0FF5018();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC5FD0E8);
    }
  }
}

uint64_t sub_1D0FB00F8(uint64_t a1, uint64_t a2)
{
  sub_1D0F3F904();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D0FB015C(uint64_t a1, uint64_t a2)
{
  sub_1D0F3F904();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D0FB01C0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D0F3F904();
  v4 = v1 + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80));

  return sub_1D0FAFD7C((v1 + 16), v4, a1);
}

void sub_1D0FB0488(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D0FF5C38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D0FB04DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D0FB053C()
{
  result = qword_1EC5FD100;
  if (!qword_1EC5FD100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD100);
  }

  return result;
}

uint64_t sub_1D0FB0590(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  result = *a2;
  if (!*a2)
  {
    a3();
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t objectdestroy_5Tm_0()
{
  sub_1D0F3F904();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = sub_1D0FF4348();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D0FB06EC(uint64_t a1, uint64_t a2)
{
  sub_1D0F3F904();
  v6 = v2 + ((*(*(v5 - 8) + 80) + 24) & ~*(*(v5 - 8) + 80));

  return sub_1D0FAFF30(a1, a2, v2 + 16, v6);
}

void sub_1D0FB0770(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_1D0F1E940();
    v7 = a3(a1, MEMORY[0x1E69E7CA8] + 8, v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D0FB07E4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_1D0FB0770(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D0FB0834(uint64_t a1, void *a2)
{
  sub_1D0F3F904();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v2 + v7);
  v10 = *v8;
  v11 = *(v8 + 8);

  sub_1D0FB1620(a2, v2 + v6, v9, v10, v11);
}

void sub_1D0FB08E0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, void *a6)
{
  v85 = a5;
  v86 = a2;
  v87 = a3;
  v91 = *(a6 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v78 - v12;
  v84 = v13;
  swift_getAssociatedTypeWitness();
  v14 = sub_1D0FF5C38();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v83 = &v78 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v78 - v21;
  v23 = sub_1D0FF4C18();
  v88 = *(v23 - 8);
  v89 = v23;
  v24 = MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v78 - v26;
  if (a1)
  {
    v28 = a1;
    sub_1D0FF4BC8();
    v29 = *(v15 + 16);
    v29(v22, v86, v14);
    (*(v91 + 16))(v90, v87, a6);
    v30 = a1;
    v87 = v27;
    v31 = sub_1D0FF4C08();
    v32 = sub_1D0FF5958();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      LODWORD(v81) = v32;
      v34 = v33;
      v86 = swift_slowAlloc();
      v92 = a6;
      v93 = v86;
      *v34 = 136446978;
      swift_getMetatypeMetadata();
      v35 = sub_1D0FF5448();
      v80 = v31;
      v37 = sub_1D0F1AE0C(v35, v36, &v93);
      v79 = a6;
      v38 = v29;
      v39 = v37;

      *(v34 + 4) = v39;
      v82 = a4;
      *(v34 + 12) = 2080;
      v38(v83, v22, v14);
      v40 = sub_1D0FF5448();
      v42 = v41;
      (*(v15 + 8))(v22, v14);
      v43 = sub_1D0F1AE0C(v40, v42, &v93);

      *(v34 + 14) = v43;
      *(v34 + 22) = 2080;
      v44 = v90;
      v45 = v79;
      v46 = (*(v84 + 24))(v79);
      v48 = v47;
      (*(v91 + 8))(v44, v45);
      v49 = sub_1D0F1AE0C(v46, v48, &v93);

      *(v34 + 24) = v49;
      *(v34 + 32) = 2080;
      v92 = a1;
      v50 = a1;
      sub_1D0F1E940();
      v51 = sub_1D0FF5448();
      v53 = sub_1D0F1AE0C(v51, v52, &v93);

      *(v34 + 34) = v53;
      a4 = v82;
      v54 = v80;
      _os_log_impl(&dword_1D0F17000, v80, v81, "[%{public}s]: Unable to Set Async Value %s. Key %s: %s", v34, 0x2Au);
      v55 = v86;
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v55, -1, -1);
      MEMORY[0x1D3882680](v34, -1, -1);
    }

    else
    {

      (*(v91 + 8))(v90, a6);
      (*(v15 + 8))(v22, v14);
    }

    (*(v88 + 8))(v87, v89);
    if (a4)
    {
      v77 = a1;
      a4(a1);
    }
  }

  else
  {
    v82 = a4;
    v56 = v25;
    sub_1D0FF4BC8();
    v57 = *(v15 + 16);
    v57(v18, v86, v14);
    v58 = *(v91 + 16);
    v86 = v11;
    v58(v11, v87, a6);
    v90 = v56;
    v59 = sub_1D0FF4C08();
    v60 = sub_1D0FF5978();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v92 = a6;
      v93 = v87;
      *v61 = 136446722;
      swift_getMetatypeMetadata();
      v62 = sub_1D0FF5448();
      v81 = v59;
      v64 = sub_1D0F1AE0C(v62, v63, &v93);

      *(v61 + 4) = v64;
      *(v61 + 12) = 2080;
      v57(v83, v18, v14);
      v65 = sub_1D0FF5448();
      v67 = v66;
      (*(v15 + 8))(v18, v14);
      v68 = sub_1D0F1AE0C(v65, v67, &v93);

      *(v61 + 14) = v68;
      *(v61 + 22) = 2080;
      v69 = v60;
      v70 = v86;
      v71 = (*(v84 + 24))(a6);
      v73 = v72;
      (*(v91 + 8))(v70, a6);
      v74 = sub_1D0F1AE0C(v71, v73, &v93);

      *(v61 + 24) = v74;
      v75 = v81;
      _os_log_impl(&dword_1D0F17000, v81, v69, "[%{public}s]: Set Async Value %s. Key %s", v61, 0x20u);
      v76 = v87;
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v76, -1, -1);
      MEMORY[0x1D3882680](v61, -1, -1);
    }

    else
    {

      (*(v91 + 8))(v86, a6);
      (*(v15 + 8))(v18, v14);
    }

    (*(v88 + 8))(v90, v89);
    if (v82)
    {
      v82(0);
    }
  }
}

void sub_1D0FB10DC(void *a1, int a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v10 = sub_1D0FF4C18();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v48[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v48[-v15];
  if (a1)
  {
    v17 = a1;
    sub_1D0FF4BC8();
    v18 = a1;

    v19 = sub_1D0FF4C08();
    v20 = sub_1D0FF5958();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v49 = a2;
      v22 = v21;
      v52 = swift_slowAlloc();
      v55 = v52;
      *v22 = 136446978;
      v54 = type metadata accessor for HKKeyValueDomainBoolValue();
      sub_1D0FB0590(0, &qword_1EC5FD118, type metadata accessor for HKKeyValueDomainBoolValue);
      v23 = sub_1D0FF5448();
      v53 = a4;
      v25 = sub_1D0F1AE0C(v23, v24, &v55);
      v51 = v11;
      v26 = v25;

      *(v22 + 4) = v26;
      v50 = v10;
      *(v22 + 12) = 2080;
      LOBYTE(v54) = v49;
      sub_1D0F3FA28(0, &qword_1EE06E458);
      v27 = sub_1D0FF5448();
      v29 = sub_1D0F1AE0C(v27, v28, &v55);

      *(v22 + 14) = v29;
      *(v22 + 22) = 2080;
      *(v22 + 24) = sub_1D0F1AE0C(*(a3 + 24), *(a3 + 32), &v55);
      *(v22 + 32) = 2080;
      v54 = a1;
      v30 = a1;
      sub_1D0F1E940();
      v31 = sub_1D0FF5448();
      v33 = sub_1D0F1AE0C(v31, v32, &v55);
      a4 = v53;

      *(v22 + 34) = v33;
      _os_log_impl(&dword_1D0F17000, v19, v20, "[%{public}s]: Unable to Set Async Value %s. Key %s: %s", v22, 0x2Au);
      v34 = v52;
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v34, -1, -1);
      MEMORY[0x1D3882680](v22, -1, -1);

      (*(v51 + 8))(v16, v50);
      if (!a4)
      {
        goto LABEL_10;
      }
    }

    else
    {

      (*(v11 + 8))(v16, v10);
      if (!a4)
      {
LABEL_10:

        return;
      }
    }

    v47 = a1;
    a4(a1);

    goto LABEL_10;
  }

  sub_1D0FF4BC8();

  v35 = sub_1D0FF4C08();
  v36 = sub_1D0FF5978();

  if (!os_log_type_enabled(v35, v36))
  {

    (*(v11 + 8))(v14, v10);
    if (!a4)
    {
      return;
    }

    goto LABEL_12;
  }

  v37 = swift_slowAlloc();
  v52 = a5;
  v38 = v37;
  v51 = swift_slowAlloc();
  v55 = v51;
  *v38 = 136446722;
  v54 = type metadata accessor for HKKeyValueDomainBoolValue();
  sub_1D0FB0590(0, &qword_1EC5FD118, type metadata accessor for HKKeyValueDomainBoolValue);
  v39 = sub_1D0FF5448();
  v53 = a4;
  v41 = v11;
  v42 = sub_1D0F1AE0C(v39, v40, &v55);

  *(v38 + 4) = v42;
  *(v38 + 12) = 2080;
  LOBYTE(v54) = a2;
  sub_1D0F3FA28(0, &qword_1EE06E458);
  v43 = sub_1D0FF5448();
  v45 = sub_1D0F1AE0C(v43, v44, &v55);
  a4 = v53;

  *(v38 + 14) = v45;
  *(v38 + 22) = 2080;
  *(v38 + 24) = sub_1D0F1AE0C(*(a3 + 24), *(a3 + 32), &v55);
  _os_log_impl(&dword_1D0F17000, v35, v36, "[%{public}s]: Set Async Value %s. Key %s", v38, 0x20u);
  v46 = v51;
  swift_arrayDestroy();
  MEMORY[0x1D3882680](v46, -1, -1);
  MEMORY[0x1D3882680](v38, -1, -1);

  (*(v41 + 8))(v14, v10);
  if (a4)
  {
LABEL_12:
    a4(0);
  }
}

void sub_1D0FB1620(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  sub_1D0F3F904();
  v62 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v58[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v58[-v15];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v58[-v17];
  v19 = sub_1D0FF4C18();
  v63 = *(v19 - 8);
  v64 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v58[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v58[-v23];
  if (a1)
  {
    v25 = a1;
    sub_1D0FF4BC8();
    sub_1D0FB00F8(a2, v18);
    v26 = a1;

    v27 = sub_1D0FF4C08();
    v28 = sub_1D0FF5958();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v59 = v28;
      v30 = v29;
      v60 = swift_slowAlloc();
      v66 = v60;
      *v30 = 136446978;
      v65 = type metadata accessor for HKKeyValueDomainDateValue();
      sub_1D0FB0590(0, &qword_1EC5FD110, type metadata accessor for HKKeyValueDomainDateValue);
      v31 = sub_1D0FF5448();
      v61 = a5;
      v33 = a4;
      v34 = sub_1D0F1AE0C(v31, v32, &v66);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      sub_1D0FB00F8(v18, v13);
      v35 = sub_1D0FF5448();
      v37 = v36;
      sub_1D0FB04DC(v18, sub_1D0F3F904);
      v38 = sub_1D0F1AE0C(v35, v37, &v66);
      a4 = v33;

      *(v30 + 14) = v38;
      *(v30 + 22) = 2080;
      *(v30 + 24) = sub_1D0F1AE0C(*(a3 + 24), *(a3 + 32), &v66);
      *(v30 + 32) = 2080;
      v65 = a1;
      v39 = a1;
      sub_1D0F1E940();
      v40 = sub_1D0FF5448();
      v42 = sub_1D0F1AE0C(v40, v41, &v66);

      *(v30 + 34) = v42;
      _os_log_impl(&dword_1D0F17000, v27, v59, "[%{public}s]: Unable to Set Async Value %s. Key %s: %s", v30, 0x2Au);
      v43 = v60;
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v43, -1, -1);
      MEMORY[0x1D3882680](v30, -1, -1);
    }

    else
    {

      sub_1D0FB04DC(v18, sub_1D0F3F904);
    }

    (*(v63 + 8))(v24, v64);
    if (a4)
    {
      v57 = a1;
      a4(a1);
    }
  }

  else
  {
    v61 = a5;
    sub_1D0FF4BC8();
    sub_1D0FB00F8(a2, v16);

    v44 = sub_1D0FF4C08();
    v45 = sub_1D0FF5978();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v66 = v60;
      *v46 = 136446722;
      v65 = type metadata accessor for HKKeyValueDomainDateValue();
      sub_1D0FB0590(0, &qword_1EC5FD110, type metadata accessor for HKKeyValueDomainDateValue);
      v47 = sub_1D0FF5448();
      v48 = a4;
      v50 = sub_1D0F1AE0C(v47, v49, &v66);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      sub_1D0FB00F8(v16, v13);
      v51 = sub_1D0FF5448();
      v53 = v52;
      sub_1D0FB04DC(v16, sub_1D0F3F904);
      v54 = v51;
      a4 = v48;
      v55 = sub_1D0F1AE0C(v54, v53, &v66);

      *(v46 + 14) = v55;
      *(v46 + 22) = 2080;
      *(v46 + 24) = sub_1D0F1AE0C(*(a3 + 24), *(a3 + 32), &v66);
      _os_log_impl(&dword_1D0F17000, v44, v45, "[%{public}s]: Set Async Value %s. Key %s", v46, 0x20u);
      v56 = v60;
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v56, -1, -1);
      MEMORY[0x1D3882680](v46, -1, -1);
    }

    else
    {

      sub_1D0FB04DC(v16, sub_1D0F3F904);
    }

    (*(v63 + 8))(v22, v64);
    if (a4)
    {
      a4(0);
    }
  }
}

uint64_t sub_1D0FB1C24@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = v5 + *(*(v3 - 8) + 64);
  swift_getAssociatedTypeWitness();
  v7 = *(sub_1D0FF5C38() - 8);
  v8 = v1 + ((v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_1D0FAEC5C(v1 + v5, v8, v3, v4, a1);
}

uint64_t objectdestroy_40Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(sub_1D0FF5C38() - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v11 = *(AssociatedTypeWitness - 8);
  if (!(*(v11 + 48))(v0 + v9, 1, AssociatedTypeWitness))
  {
    (*(v11 + 8))(v0 + v9, AssociatedTypeWitness);
  }

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v3 | v8 | 7);
}

uint64_t sub_1D0FB1ED0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = (*(*(v5 - 1) + 80) + 32) & ~*(*(v5 - 1) + 80);
  v8 = v7 + *(*(v5 - 1) + 64);
  swift_getAssociatedTypeWitness();
  v9 = *(sub_1D0FF5C38() - 8);
  v10 = v2 + ((v8 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_1D0FAEF20(a1, a2, v2 + v7, v10, v5, v6);
}

void sub_1D0FB1FE4(uint64_t a1, void *a2)
{
  v4 = *(v2 + 16);
  swift_getAssociatedTypeWitness();
  v5 = *(sub_1D0FF5C38() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (v6 + *(v5 + 64) + *(*(v4 - 1) + 80)) & ~*(*(v4 - 1) + 80);
  v8 = v2 + ((*(*(v4 - 1) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  sub_1D0FB08E0(a2, v2 + v6, v2 + v7, v9, v10, v4);
}

void sub_1D0FB2110()
{
  if (!qword_1EE06E578)
  {
    sub_1D0F3F904();
    sub_1D0F1E940();
    v0 = sub_1D0FF4FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E578);
    }
  }
}

uint64_t sub_1D0FB2180(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D0FB21C8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D0F3FA28(255, a3);
    sub_1D0F1E940();
    v4 = sub_1D0FF4FE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D0FB2240(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D0FB21C8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D0FB22C4()
{
  result = qword_1EC5FD120;
  if (!qword_1EC5FD120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD120);
  }

  return result;
}

uint64_t Array<A>.hx_asyncMap<A>(mapFunction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D0FB23B0, 0, 0);
}

uint64_t sub_1D0FB23B0()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = sub_1D0FF56E8();
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = *(v0 + 24);
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v3;
  *(v6 + 40) = v7;
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_1D0FB24E4;

  return MEMORY[0x1EEE6DBF8](v0 + 16, TupleTypeMetadata2, v5, 0, 0, &unk_1D1000078, v6, TupleTypeMetadata2);
}

uint64_t sub_1D0FB24E4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D0FB25FC, 0, 0);
}

uint64_t sub_1D0FB2614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  v7[9] = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7[16] = TupleTypeMetadata2;
  v7[17] = *(TupleTypeMetadata2 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v10 = *(a6 - 8);
  v7[20] = v10;
  v7[21] = *(v10 + 64);
  v7[22] = swift_task_alloc();
  sub_1D0F7F884();
  v7[23] = swift_task_alloc();
  sub_1D0FF5C38();
  v7[24] = swift_task_alloc();
  v11 = sub_1D0FF5758();
  v7[25] = v11;
  v7[26] = *(v11 - 8);
  v7[27] = swift_task_alloc();
  v12 = sub_1D0FF5C38();
  v7[28] = v12;
  v7[29] = *(v12 - 8);
  v7[30] = swift_task_alloc();
  v7[31] = swift_getTupleTypeMetadata2();
  v13 = sub_1D0FF5C38();
  v7[32] = v13;
  v7[33] = *(v13 - 8);
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0FB2924, 0, 0);
}

uint64_t sub_1D0FB2924()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 160);
  *(v0 + 48) = *(v0 + 88);
  v4 = sub_1D0FF56E8();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1D3880B40](v4, WitnessTable);
  *(v0 + 56) = *(v0 + 40);
  sub_1D0FF5FD8();
  sub_1D0FF5FA8();
  v32 = v3;
  v33 = (v1 + 32);
  sub_1D0FF5FC8();
  while (1)
  {
    v7 = *(v0 + 272);
    v6 = *(v0 + 280);
    v9 = *(v0 + 248);
    v8 = *(v0 + 256);
    sub_1D0FF5FB8();
    (*v33)(v6, v7, v8);
    if ((*(*(v2 - 8) + 48))(v6, 1, v9) == 1)
    {
      break;
    }

    v10 = *(v0 + 280);
    v12 = *(v0 + 176);
    v11 = *(v0 + 184);
    v13 = *(v0 + 104);
    v35 = *(v0 + 96);
    v34 = *v10;
    v14 = *(v2 + 48);
    v15 = sub_1D0FF5788();
    v36 = *(v0 + 112);
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    v16 = *(v32 + 32);
    v16(v12, &v10[v14], v36);
    v17 = (*(v32 + 80) + 72) & ~*(v32 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = v36;
    *(v18 + 48) = v34;
    *(v18 + 56) = v35;
    *(v18 + 64) = v13;
    v16((v18 + v17), v12, v36);
    v19 = sub_1D0FF5768();

    sub_1D0FB3430(v11, &unk_1D1000110, v18, v19);
    sub_1D0F80628(v11);
  }

  v21 = *(v0 + 232);
  v20 = *(v0 + 240);
  v22 = *(v0 + 224);
  v23 = *(v0 + 120);

  v24 = *(v23 - 8);
  *(v0 + 288) = v24;
  v25 = *(v24 + 56);
  *(v0 + 296) = v25;
  *(v0 + 304) = (v24 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v25(v20, 1, 1, v23);
  v26 = sub_1D0FF5698();
  v27 = sub_1D0FB6874(v20, v26, v22);
  (*(v21 + 8))(v20, v22);
  *(v0 + 64) = v27;
  sub_1D0FF5738();
  v28 = swift_task_alloc();
  *(v0 + 312) = v28;
  *v28 = v0;
  v28[1] = sub_1D0FB2D10;
  v29 = *(v0 + 192);
  v30 = *(v0 + 200);

  return MEMORY[0x1EEE6D8A8](v29, 0, 0, v30);
}

uint64_t sub_1D0FB2D10()
{

  return MEMORY[0x1EEE6DFA0](sub_1D0FB2E0C, 0, 0);
}

uint64_t sub_1D0FB2E0C()
{
  v1 = v0[24];
  v2 = v0[16];
  v3 = v0[17];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[9];
    (*(v0[26] + 8))(v0[27], v0[25]);
    v5 = sub_1D0FF5F28();

    *v4 = v5;

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[36];
    v9 = v0[29];
    v19 = v0[30];
    v20 = v0[37];
    v21 = v0[28];
    v11 = v0[18];
    v10 = v0[19];
    v12 = v0[15];
    v22 = *v1;
    v13 = *(v2 + 48);
    *v10 = *v1;
    v14 = *(v8 + 32);
    v14(v10 + v13, v1 + v13, v12);
    (*(v3 + 16))(v11, v10, v2);
    v14(v19, (v11 + *(v2 + 48)), v12);
    v20(v19, 0, 1, v12);
    sub_1D0FF56E8();
    sub_1D0FF5648();
    v15 = v0[8];
    sub_1D0FB6820(v22, v15);
    (*(v3 + 8))(v10, v2);
    (*(v9 + 40))(v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22, v19, v21);
    v16 = swift_task_alloc();
    v0[39] = v16;
    *v16 = v0;
    v16[1] = sub_1D0FB2D10;
    v17 = v0[24];
    v18 = v0[25];

    return MEMORY[0x1EEE6D8A8](v17, 0, 0, v18);
  }
}

uint64_t sub_1D0FB310C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D0F80740;

  return sub_1D0FB2614(a1, a2, v8, v9, v10, v6, v7);
}

uint64_t sub_1D0FB31E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a7;
  v7[7] = v9;
  v7[4] = a5;
  v7[5] = a6;
  v7[2] = a1;
  v7[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D0FB3214, 0, 0);
}

uint64_t sub_1D0FB3214()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(swift_getTupleTypeMetadata2() + 48);
  *v3 = v1;
  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1D0FB333C;
  v6 = v0[6];

  return v8(&v3[v4], v6);
}

uint64_t sub_1D0FB333C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D0FB3430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1D0F7F884();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F805C4(a1, v12);
  v13 = sub_1D0FF5788();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D0F80628(v12);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_1D0FF56F8();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D0FF5778();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v5;
  v19 = swift_allocObject();
  v19[2] = *(a4 + 16);
  v19[3] = a2;
  v19[4] = a3;
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

uint64_t Array<A>.hx_asyncThrowingMap<A>(mapFunction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D0FB3650, 0, 0);
}

uint64_t sub_1D0FB3650()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = sub_1D0FF56E8();
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = *(v0 + 24);
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v3;
  *(v6 + 40) = v7;
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_1D0FA0318;

  return MEMORY[0x1EEE6DD58](v0 + 16, TupleTypeMetadata2, v5, 0, 0, &unk_1D1000090, v6, TupleTypeMetadata2);
}

uint64_t sub_1D0FB3784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7[17] = TupleTypeMetadata2;
  v7[18] = *(TupleTypeMetadata2 - 8);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v10 = *(a6 - 8);
  v7[21] = v10;
  v7[22] = *(v10 + 64);
  v7[23] = swift_task_alloc();
  sub_1D0F7F884();
  v7[24] = swift_task_alloc();
  sub_1D0FF5C38();
  v7[25] = swift_task_alloc();
  v7[26] = sub_1D0F1E940();
  v11 = sub_1D0FF57E8();
  v7[27] = v11;
  v7[28] = *(v11 - 8);
  v7[29] = swift_task_alloc();
  v12 = sub_1D0FF5C38();
  v7[30] = v12;
  v7[31] = *(v12 - 8);
  v7[32] = swift_task_alloc();
  v7[33] = swift_getTupleTypeMetadata2();
  v13 = sub_1D0FF5C38();
  v7[34] = v13;
  v7[35] = *(v13 - 8);
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0FB3AAC, 0, 0);
}

uint64_t sub_1D0FB3AAC()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 168);
  *(v0 + 48) = *(v0 + 96);
  v4 = sub_1D0FF56E8();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1D3880B40](v4, WitnessTable);
  *(v0 + 56) = *(v0 + 40);
  sub_1D0FF5FD8();
  sub_1D0FF5FA8();
  v31 = v3;
  sub_1D0FF5FC8();
  while (1)
  {
    v7 = *(v0 + 288);
    v6 = *(v0 + 296);
    v9 = *(v0 + 264);
    v8 = *(v0 + 272);
    sub_1D0FF5FB8();
    (*(v1 + 32))(v6, v7, v8);
    if ((*(*(v2 - 8) + 48))(v6, 1, v9) == 1)
    {
      break;
    }

    v10 = *(v0 + 296);
    v11 = *(v0 + 184);
    v12 = *(v0 + 192);
    v13 = *(v0 + 112);
    v33 = *(v0 + 104);
    v32 = *v10;
    v14 = *(v2 + 48);
    v15 = sub_1D0FF5788();
    v34 = *(v0 + 120);
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    v16 = *(v31 + 32);
    v16(v11, &v10[v14], v34);
    v17 = (*(v31 + 80) + 72) & ~*(v31 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = v34;
    *(v18 + 48) = v32;
    *(v18 + 56) = v33;
    *(v18 + 64) = v13;
    v16((v18 + v17), v11, v34);
    sub_1D0FF57F8();

    sub_1D0FB44CC(v12, &unk_1D1000100, v18);
    sub_1D0F80628(v12);
  }

  v20 = *(v0 + 248);
  v19 = *(v0 + 256);
  v21 = *(v0 + 240);
  v22 = *(v0 + 128);

  v23 = *(v22 - 8);
  *(v0 + 304) = v23;
  v24 = *(v23 + 56);
  *(v0 + 312) = v24;
  *(v0 + 320) = (v23 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v24(v19, 1, 1, v22);
  v25 = sub_1D0FF5698();
  v26 = sub_1D0FB6874(v19, v25, v21);
  (*(v20 + 8))(v19, v21);
  *(v0 + 64) = v26;
  swift_checkMetadataState();
  sub_1D0FF57C8();
  v27 = swift_task_alloc();
  *(v0 + 328) = v27;
  *v27 = v0;
  v27[1] = sub_1D0FB3ED4;
  v28 = *(v0 + 216);
  v29 = *(v0 + 200);

  return MEMORY[0x1EEE6DAD8](v29, 0, 0, v28, v0 + 72);
}

uint64_t sub_1D0FB3ED4()
{

  if (v0)
  {

    v1 = sub_1D0FB42F8;
  }

  else
  {
    v1 = sub_1D0FB3FEC;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D0FB3FEC()
{
  v1 = v0[25];
  v2 = v0[17];
  v3 = v0[18];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[10];
    (*(v0[28] + 8))(v0[29], v0[27]);
    v5 = sub_1D0FF5F28();

    *v4 = v5;

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[38];
    v9 = v0[31];
    v19 = v0[32];
    v20 = v0[39];
    v21 = v0[30];
    v11 = v0[19];
    v10 = v0[20];
    v12 = v0[16];
    v22 = *v1;
    v13 = *(v2 + 48);
    *v10 = *v1;
    v14 = *(v8 + 32);
    v14(v10 + v13, v1 + v13, v12);
    (*(v3 + 16))(v11, v10, v2);
    v14(v19, (v11 + *(v2 + 48)), v12);
    v20(v19, 0, 1, v12);
    sub_1D0FF56E8();
    sub_1D0FF5648();
    v15 = v0[8];
    sub_1D0FB6820(v22, v15);
    (*(v3 + 8))(v10, v2);
    (*(v9 + 40))(v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22, v19, v21);
    v16 = swift_task_alloc();
    v0[41] = v16;
    *v16 = v0;
    v16[1] = sub_1D0FB3ED4;
    v17 = v0[27];
    v18 = v0[25];

    return MEMORY[0x1EEE6DAD8](v18, 0, 0, v17, v0 + 9);
  }
}

uint64_t sub_1D0FB42F8()
{
  (*(v0[28] + 8))(v0[29], v0[27]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D0FB43F4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D0F80740;

  return sub_1D0FB3784(a1, a2, v8, v9, v10, v6, v7);
}

uint64_t sub_1D0FB44CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D0F7F884();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F805C4(a1, v9);
  v10 = sub_1D0FF5788();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D0F80628(v9);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1D0FF56F8();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D0FF5778();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t Array<A>.hx_asyncCompactMap<A>(mapFunction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D0FB46C0, 0, 0);
}

uint64_t sub_1D0FB46C0()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  sub_1D0FF5C38();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = sub_1D0FF56E8();
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = *(v0 + 24);
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v3;
  *(v6 + 40) = v7;
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_1D0FB4800;

  return MEMORY[0x1EEE6DBF8](v0 + 16, TupleTypeMetadata2, v5, 0, 0, &unk_1D10000A8, v6, TupleTypeMetadata2);
}

uint64_t sub_1D0FB4800()
{

  return MEMORY[0x1EEE6DFA0](sub_1D0FB7020, 0, 0);
}

uint64_t sub_1D0FB4918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  v9 = sub_1D0FF5C38();
  v7[17] = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7[18] = TupleTypeMetadata2;
  v7[19] = *(TupleTypeMetadata2 - 8);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v11 = *(a6 - 8);
  v7[22] = v11;
  v7[23] = *(v11 + 64);
  v7[24] = swift_task_alloc();
  sub_1D0F7F884();
  v7[25] = swift_task_alloc();
  sub_1D0FF5C38();
  v7[26] = swift_task_alloc();
  v12 = sub_1D0FF5758();
  v7[27] = v12;
  v7[28] = *(v12 - 8);
  v7[29] = swift_task_alloc();
  v7[30] = *(v9 - 8);
  v7[31] = swift_task_alloc();
  v7[32] = swift_getTupleTypeMetadata2();
  v13 = sub_1D0FF5C38();
  v7[33] = v13;
  v7[34] = *(v13 - 8);
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0FB4C28, 0, 0);
}

uint64_t sub_1D0FB4C28()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v3 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 96);
  v4 = sub_1D0FF56E8();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1D3880B40](v4, WitnessTable);
  *(v0 + 56) = *(v0 + 40);
  sub_1D0FF5FD8();
  sub_1D0FF5FA8();
  v30 = v3;
  v31 = (v1 + 32);
  sub_1D0FF5FC8();
  while (1)
  {
    v7 = *(v0 + 280);
    v6 = *(v0 + 288);
    v9 = *(v0 + 256);
    v8 = *(v0 + 264);
    sub_1D0FF5FB8();
    (*v31)(v6, v7, v8);
    if ((*(*(v2 - 8) + 48))(v6, 1, v9) == 1)
    {
      break;
    }

    v10 = *(v0 + 288);
    v12 = *(v0 + 192);
    v11 = *(v0 + 200);
    v13 = *(v0 + 112);
    v33 = *(v0 + 104);
    v32 = *v10;
    v14 = *(v2 + 48);
    v15 = sub_1D0FF5788();
    v34 = *(v0 + 120);
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    v16 = *(v30 + 32);
    v16(v12, &v10[v14], v34);
    v17 = (*(v30 + 80) + 72) & ~*(v30 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = v34;
    *(v18 + 48) = v32;
    *(v18 + 56) = v33;
    *(v18 + 64) = v13;
    v16((v18 + v17), v12, v34);
    v19 = sub_1D0FF5768();

    sub_1D0FB3430(v11, &unk_1D10000E0, v18, v19);
    sub_1D0F80628(v11);
  }

  v21 = *(v0 + 240);
  v20 = *(v0 + 248);
  v22 = *(v0 + 136);
  v23 = *(v0 + 128);

  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  v24 = sub_1D0FF5698();
  v25 = sub_1D0FB6874(v20, v24, v22);
  (*(v21 + 8))(v20, v22);
  *(v0 + 64) = v25;
  sub_1D0FF5738();
  v26 = swift_task_alloc();
  *(v0 + 296) = v26;
  *v26 = v0;
  v26[1] = sub_1D0FB4FF4;
  v27 = *(v0 + 208);
  v28 = *(v0 + 216);

  return MEMORY[0x1EEE6D8A8](v27, 0, 0, v28);
}

uint64_t sub_1D0FB4FF4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D0FB50F0, 0, 0);
}

uint64_t sub_1D0FB50F0()
{
  v1 = v0[26];
  v2 = v0[18];
  v3 = v0[19];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[16];
    v5 = v0[15];
    v6 = v0[10];
    (*(v0[28] + 8))(v0[29], v0[27]);
    v0[9] = v0[8];
    v7 = swift_task_alloc();
    *(v7 + 16) = v5;
    *(v7 + 24) = v4;
    sub_1D0FF56E8();

    swift_getWitnessTable();
    v8 = sub_1D0FF5528();
    swift_bridgeObjectRelease_n();

    *v6 = v8;

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[30];
    v12 = v0[20];
    v13 = v0[21];
    v14 = v0[17];
    v15 = *v1;
    v16 = *(v2 + 48);
    *v13 = *v1;
    (*(v11 + 32))(v13 + v16, v1 + v16, v14);
    (*(v3 + 16))(v12, v13, v2);
    v17 = *(v2 + 48);
    sub_1D0FF56E8();
    sub_1D0FF5648();
    v18 = v0[8];
    sub_1D0FB6820(v15, v18);
    (*(v3 + 8))(v13, v2);
    (*(v11 + 40))(v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v15, v12 + v17, v14);
    v19 = swift_task_alloc();
    v0[37] = v19;
    *v19 = v0;
    v19[1] = sub_1D0FB4FF4;
    v20 = v0[26];
    v21 = v0[27];

    return MEMORY[0x1EEE6D8A8](v20, 0, 0, v21);
  }
}

uint64_t sub_1D0FB5418(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D0F80740;

  return sub_1D0FB4918(a1, a2, v8, v9, v10, v6, v7);
}

uint64_t sub_1D0FB54F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a7;
  v7[7] = v9;
  v7[4] = a5;
  v7[5] = a6;
  v7[2] = a1;
  v7[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D0FB5520, 0, 0);
}

uint64_t sub_1D0FB5520()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1D0FF5C38();
  v4 = *(swift_getTupleTypeMetadata2() + 48);
  *v3 = v1;
  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1D0FB7000;
  v6 = v0[6];

  return v8(&v3[v4], v6);
}

uint64_t Array<A>.hx_asyncThrowingCompactMap<A>(mapFunction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D0FB567C, 0, 0);
}

uint64_t sub_1D0FB567C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  sub_1D0FF5C38();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = sub_1D0FF56E8();
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = *(v0 + 24);
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v3;
  *(v6 + 40) = v7;
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_1D0FB57BC;

  return MEMORY[0x1EEE6DD58](v0 + 16, TupleTypeMetadata2, v5, 0, 0, &unk_1D10000C0, v6, TupleTypeMetadata2);
}

uint64_t sub_1D0FB57BC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D0FB701C;
  }

  else
  {

    v2 = sub_1D0FB7024;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D0FB58D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v9 = sub_1D0FF5C38();
  v7[18] = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7[19] = TupleTypeMetadata2;
  v7[20] = *(TupleTypeMetadata2 - 8);
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v11 = *(a6 - 8);
  v7[23] = v11;
  v7[24] = *(v11 + 64);
  v7[25] = swift_task_alloc();
  sub_1D0F7F884();
  v7[26] = swift_task_alloc();
  sub_1D0FF5C38();
  v7[27] = swift_task_alloc();
  v7[28] = sub_1D0F1E940();
  v12 = sub_1D0FF57E8();
  v7[29] = v12;
  v7[30] = *(v12 - 8);
  v7[31] = swift_task_alloc();
  v7[32] = *(v9 - 8);
  v7[33] = swift_task_alloc();
  v7[34] = swift_getTupleTypeMetadata2();
  v13 = sub_1D0FF5C38();
  v7[35] = v13;
  v7[36] = *(v13 - 8);
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0FB5C00, 0, 0);
}

uint64_t sub_1D0FB5C00()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  v3 = *(v0 + 184);
  *(v0 + 48) = *(v0 + 104);
  v4 = sub_1D0FF56E8();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1D3880B40](v4, WitnessTable);
  *(v0 + 56) = *(v0 + 40);
  sub_1D0FF5FD8();
  sub_1D0FF5FA8();
  v29 = v3;
  sub_1D0FF5FC8();
  while (1)
  {
    v7 = *(v0 + 296);
    v6 = *(v0 + 304);
    v9 = *(v0 + 272);
    v8 = *(v0 + 280);
    sub_1D0FF5FB8();
    (*(v1 + 32))(v6, v7, v8);
    if ((*(*(v2 - 8) + 48))(v6, 1, v9) == 1)
    {
      break;
    }

    v10 = *(v0 + 304);
    v11 = *(v0 + 200);
    v12 = *(v0 + 208);
    v13 = *(v0 + 120);
    v31 = *(v0 + 112);
    v30 = *v10;
    v14 = *(v2 + 48);
    v15 = sub_1D0FF5788();
    v32 = *(v0 + 128);
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    v16 = *(v29 + 32);
    v16(v11, &v10[v14], v32);
    v17 = (*(v29 + 80) + 72) & ~*(v29 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = v32;
    *(v18 + 48) = v30;
    *(v18 + 56) = v31;
    *(v18 + 64) = v13;
    v16((v18 + v17), v11, v32);
    sub_1D0FF57F8();

    sub_1D0FB44CC(v12, &unk_1D10000D0, v18);
    sub_1D0F80628(v12);
  }

  v20 = *(v0 + 256);
  v19 = *(v0 + 264);
  v21 = *(v0 + 144);
  v22 = *(v0 + 136);

  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  v23 = sub_1D0FF5698();
  v24 = sub_1D0FB6874(v19, v23, v21);
  (*(v20 + 8))(v19, v21);
  *(v0 + 64) = v24;
  swift_checkMetadataState();
  sub_1D0FF57C8();
  v25 = swift_task_alloc();
  *(v0 + 312) = v25;
  *v25 = v0;
  v25[1] = sub_1D0FB6008;
  v26 = *(v0 + 232);
  v27 = *(v0 + 216);

  return MEMORY[0x1EEE6DAD8](v27, 0, 0, v26, v0 + 72);
}

uint64_t sub_1D0FB6008()
{
  *(*v1 + 320) = v0;

  if (v0)
  {

    v2 = sub_1D0FB645C;
  }

  else
  {
    v2 = sub_1D0FB6124;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D0FB6124()
{
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[20];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[17];
    v5 = v0[16];
    v21 = v0[11];
    (*(v0[30] + 8))(v0[31], v0[29]);
    v0[10] = v0[8];
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    sub_1D0FF56E8();

    swift_getWitnessTable();
    v7 = sub_1D0FF5528();
    swift_bridgeObjectRelease_n();

    *v21 = v7;

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[32];
    v11 = v0[21];
    v12 = v0[22];
    v13 = v0[18];
    v14 = *v1;
    v15 = *(v2 + 48);
    *v12 = *v1;
    (*(v10 + 32))(v12 + v15, v1 + v15, v13);
    (*(v3 + 16))(v11, v12, v2);
    v16 = *(v2 + 48);
    sub_1D0FF56E8();
    sub_1D0FF5648();
    v17 = v0[8];
    sub_1D0FB6820(v14, v17);
    (*(v3 + 8))(v12, v2);
    (*(v10 + 40))(v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v14, v11 + v16, v13);
    v18 = swift_task_alloc();
    v0[39] = v18;
    *v18 = v0;
    v18[1] = sub_1D0FB6008;
    v19 = v0[29];
    v20 = v0[27];

    return MEMORY[0x1EEE6DAD8](v20, 0, 0, v19, v0 + 9);
  }
}

uint64_t sub_1D0FB645C()
{
  (*(v0[30] + 8))(v0[31], v0[29]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D0FB6558(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D0F80740;

  return sub_1D0FB58D8(a1, a2, v8, v9, v10, v6, v7);
}

uint64_t sub_1D0FB6630(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D0FB6728;

  return v6(a1);
}

uint64_t sub_1D0FB6728()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D0FB6820(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D0FB6874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D0FF5658();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_1D0FF56E8();
    return v8;
  }

  return result;
}

uint64_t sub_1D0FB6978(uint64_t a1)
{
  v3 = (*(*(v1[4] - 8) + 80) + 72) & ~*(*(v1[4] - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D0F80740;

  return sub_1D0FB54F0(a1, v4, v5, v6, v7, v8, v1 + v3);
}

uint64_t sub_1D0FB6B20(uint64_t a1)
{
  v3 = (*(*(v1[4] - 8) + 80) + 72) & ~*(*(v1[4] - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D0F80740;

  return sub_1D0FB54F0(a1, v4, v5, v6, v7, v8, v1 + v3);
}

uint64_t sub_1D0FB6C3C(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D0F80740;

  return sub_1D0FB6630(a1, v4);
}

uint64_t sub_1D0FB6D04(uint64_t a1)
{
  v3 = (*(*(v1[4] - 8) + 80) + 72) & ~*(*(v1[4] - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D0F8016C;

  return sub_1D0FB31E4(a1, v4, v5, v6, v7, v8, v1 + v3);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D0FB6EE4(uint64_t a1)
{
  v3 = (*(*(v1[4] - 8) + 80) + 72) & ~*(*(v1[4] - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D0F8016C;

  return sub_1D0FB31E4(a1, v4, v5, v6, v7, v8, v1 + v3);
}

uint64_t sub_1D0FB7028(uint64_t a1)
{
  v48 = a1;
  sub_1D0F3F904();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D0FF4C18();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for CurrentOSUpdateDateProvider();
  sub_1D0FB97C8(0, &qword_1EE06F840, sub_1D0F91434, MEMORY[0x1E69A3C40]);
  v50 = v7;
  sub_1D0FF4578();
  v9 = v54;
  v8 = v55;
  v10 = objc_opt_self();
  result = [v10 currentOSBuild];
  if (!result)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v12 = result;
  v13 = sub_1D0FF5428();
  v15 = v14;

  if (!v8)
  {

LABEL_8:
    v17 = sub_1D0FF4348();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v3, v48, v17);
    (*(v18 + 56))(v3, 0, 1, v17);
    sub_1D0FB9238(v3);
    result = [v10 currentOSBuild];
    if (!result)
    {
LABEL_29:
      __break(1u);
      return result;
    }

    v19 = result;
    v20 = sub_1D0FF5428();
    v22 = v21;

    v54 = v20;
    v55 = v22;
    sub_1D0FF4588();
    goto LABEL_10;
  }

  if (v9 == v13 && v8 == v15)
  {

    goto LABEL_10;
  }

  v16 = sub_1D0FF6278();

  if ((v16 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  sub_1D0FF4578();
  if (v55)
  {
    v23 = sub_1D0FF53E8();
  }

  else
  {
    v23 = 0;
  }

  HKNSOperatingSystemVersionFromString();
  v25 = v54;
  v24 = v55;
  v26 = v56;

  result = [v10 currentOSVersion];
  if (!result)
  {
    goto LABEL_28;
  }

  v27 = result;
  HKNSOperatingSystemVersionFromString();
  v28 = v54;
  v29 = v55;
  v30 = v56;

  v54 = v28;
  v55 = v29;
  v56 = v30;
  if (!HKNSOperatingSystemVersionIsUnknown())
  {
    v54 = v25;
    v55 = v24;
    v56 = v26;
    if ((HKNSOperatingSystemVersionIsUnknown() & 1) == 0)
    {
      v54 = v25;
      v55 = v24;
      v56 = v26;
      v51 = v28;
      v52 = v29;
      v53 = v30;
      result = HKNSOperatingSystemVersionsEqual();
      if (result)
      {
        return result;
      }
    }

    if (v25 == v28)
    {
      if (v24 == v29)
      {
LABEL_25:
        v54 = v28;
        v55 = v29;
        v56 = v30;
        v41 = HKNSOperatingSystemVersionString();
        v42 = sub_1D0FF5428();
        v44 = v43;

        v54 = v42;
        v55 = v44;
        return sub_1D0FF4588();
      }

      v34 = sub_1D0FF4348();
      v35 = *(v34 - 8);
      (*(v35 + 16))(v3, v48, v34);
      (*(v35 + 56))(v3, 0, 1, v34);
    }

    else
    {
      v36 = sub_1D0FF4348();
      v37 = *(v36 - 8);
      v38 = v37;
      v46 = *(v37 + 16);
      v47 = v37 + 16;
      v39 = v48;
      (v46)(v3, v48, v36);
      v40 = *(v38 + 56);
      v40(v3, 0, 1, v36);
      sub_1D0FB9438(v3);
      (v46)(v3, v39, v36);
      v40(v3, 0, 1, v36);
    }

    sub_1D0FB9638(v3);
    goto LABEL_25;
  }

  sub_1D0FF4BC8();
  v31 = sub_1D0FF4C08();
  v32 = sub_1D0FF5958();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1D0F17000, v31, v32, "Current OS Version is unknown; cannot evaluate version update dates", v33, 2u);
    MEMORY[0x1D3882680](v33, -1, -1);
  }

  return (*(v46 + 8))(v6, v47);
}

uint64_t CurrentOSVersionProviding.evaluateVersionUpdateDates(currentDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D0FF4C18();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F3F904();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(a3 + 24))(a2, a3);
  v12 = v11;
  v13 = *(a3 + 8);
  v14 = v13(a2, a3);
  if (!v12)
  {

    goto LABEL_9;
  }

  if (v10 == v14 && v12 == v15)
  {

    goto LABEL_11;
  }

  v17 = sub_1D0FF6278();

  if ((v17 & 1) == 0)
  {
LABEL_9:
    v18 = sub_1D0FF4348();
    v19 = *(v18 - 8);
    v20 = v53;
    (*(v19 + 16))(v53, a1, v18);
    (*(v19 + 56))(v20, 0, 1, v18);
    (*(a3 + 80))(v20, a2, a3);
    v21 = v13(a2, a3);
    (*(a3 + 32))(v21);
  }

LABEL_11:
  (*(a3 + 48))(a2, a3);
  v52 = a1;
  if (v22)
  {
    v23 = sub_1D0FF53E8();
  }

  else
  {
    v23 = 0;
  }

  HKNSOperatingSystemVersionFromString();
  v25 = v57;
  v24 = v58;
  v26 = v59;

  (*(a3 + 16))(a2, a3);
  v27 = sub_1D0FF53E8();

  HKNSOperatingSystemVersionFromString();
  v29 = v57;
  v28 = v58;
  v30 = v59;

  v57 = v29;
  v58 = v28;
  v59 = v30;
  if ((HKNSOperatingSystemVersionIsUnknown() & 1) == 0)
  {
    v57 = v25;
    v58 = v24;
    v59 = v26;
    if ((HKNSOperatingSystemVersionIsUnknown() & 1) == 0)
    {
      v57 = v25;
      v58 = v24;
      v59 = v26;
      v54 = v29;
      v55 = v28;
      v56 = v30;
      result = HKNSOperatingSystemVersionsEqual();
      if (result)
      {
        return result;
      }
    }

    if (v25 == v29)
    {
      if (v24 == v28)
      {
LABEL_25:
        v57 = v29;
        v58 = v28;
        v59 = v30;
        v44 = HKNSOperatingSystemVersionString();
        v45 = sub_1D0FF5428();
        v47 = v46;

        return (*(a3 + 56))(v45, v47, a2, a3);
      }

      v36 = sub_1D0FF4348();
      v37 = *(v36 - 8);
      v38 = v53;
      (*(v37 + 16))();
      (*(v37 + 56))(v38, 0, 1, v36);
    }

    else
    {
      v39 = sub_1D0FF4348();
      v40 = *(v39 - 8);
      v51 = v30;
      v41 = v40;
      v42 = *(v40 + 16);
      v38 = v53;
      v42(v53, v52, v39);
      v50 = v28;
      v43 = *(v41 + 56);
      v43(v38, 0, 1, v39);
      (*(a3 + 104))(v38, a2, a3);
      v42(v38, v52, v39);
      v43(v38, 0, 1, v39);
      v28 = v50;
      v30 = v51;
    }

    (*(a3 + 128))(v38, a2, a3);
    goto LABEL_25;
  }

  v31 = v49;
  sub_1D0FF4BC8();
  v32 = sub_1D0FF4C08();
  v33 = sub_1D0FF5958();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1D0F17000, v32, v33, "Current OS Version is unknown; cannot evaluate version update dates", v34, 2u);
    MEMORY[0x1D3882680](v34, -1, -1);
  }

  return (*(v50 + 8))(v31, v51);
}

id sub_1D0FB7C9C(SEL *a1)
{
  result = [objc_opt_self() *a1];
  if (result)
  {
    v2 = result;
    v3 = sub_1D0FF5428();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CurrentOSUpdateDateProvider.previousOSBuild.getter()
{
  sub_1D0FB97C8(0, &qword_1EE06F840, sub_1D0F91434, MEMORY[0x1E69A3C40]);
  sub_1D0FF4578();
  return v1;
}

uint64_t sub_1D0FB7D64()
{
  sub_1D0FB97C8(0, &qword_1EE06F840, sub_1D0F91434, MEMORY[0x1E69A3C40]);

  return sub_1D0FF4588();
}