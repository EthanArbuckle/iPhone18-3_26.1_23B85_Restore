uint64_t IMCoreSimulatedEnvironmentEnabled(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], a2, a3);
  v6 = objc_msgSend_environment(v3, v4, v5);
  v8 = objc_msgSend_valueForKey_(v6, v7, @"IMCoreSimulatedEnvironmentEnabled");
  v11 = objc_msgSend_BOOLValue(v8, v9, v10);

  return v11;
}

uint64_t sub_1A8241908(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = IMCoreSimulatedEnvironmentEnabled(a1, a2, a3);
  v4 = off_1E780DD08;
  if (!v3)
  {
    v4 = off_1E780D7A8;
  }

  qword_1ED767848 = objc_alloc_init(*v4);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A8241A60()
{
  if (IMIsRunningInIMDPersistenceAgent())
  {
    v2 = IMLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1A84E1BA8(v2);
    }

    abort();
  }

  v0 = [IMChatRegistry alloc];
  qword_1ED767790 = objc_msgSend_initAsListener_(v0, v1, 1);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A8241B28()
{
  if ((IMIsRunningInFullClient() & 1) != 0 || (result = IMIsRunningInUnitTesting(), result))
  {
    qword_1EB2E9FB0 = objc_opt_new();

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

uint64_t sub_1A8241E34()
{
  result = MEMORY[0x1AC56C550](@"SGSuggestionsService", @"CoreSuggestions");
  qword_1EB2EA018 = result;
  return result;
}

uint64_t sub_1A8241E64()
{
  qword_1ED7677D8 = objc_alloc_init(IMDaemonController);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A8242194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t type metadata accessor for DaemonConnection()
{
  result = qword_1ED767570;
  if (!qword_1ED767570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A82422E8()
{
  if (!qword_1ED767590)
  {
    v0 = sub_1A84E5A1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED767590);
    }
  }
}

id DaemonConnection.init(listener:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = *(*(sub_1A84E623C() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v4 = *(*(sub_1A84E621C() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v5 = *(*(sub_1A84E5CCC() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = OBJC_IVAR___IMDaemonConnection_queue;
  sub_1A83EA2FC(&qword_1EB2E6578, &qword_1A8500710);
  v7 = sub_1A8242810(MEMORY[0x1E69E7CC0]);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 1;
  v16 = 0;
  v17 = v7;
  v18 = 0;
  v19 = 0;
  sub_1A84E5A8C();
  sub_1A84E5A9C();
  MEMORY[0x1AC56A5A0](&type metadata for DaemonConnection.State);
  *&v1[v6] = sub_1A84E5A7C();
  v8 = OBJC_IVAR___IMDaemonConnection_setupQueue;
  sub_1A83EA2FC(&qword_1EB2E6588, &qword_1A8500718);
  v12 = 0;
  v13 = 0;
  sub_1A84E5A8C();
  sub_1A84E5A9C();
  MEMORY[0x1AC56A5A0](&type metadata for DaemonConnection.SetupState);
  *&v1[v8] = sub_1A84E5A7C();
  LOBYTE(v12) = 0;
  sub_1A84E5A0C();
  *&v1[OBJC_IVAR___IMDaemonConnection_listener] = a1;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

void sub_1A8242724()
{
  sub_1A82422E8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1A8242810(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A83EA2FC(&qword_1EB2E66B8, &qword_1A8500968);
    v3 = sub_1A84E657C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A8243D74(v4, &v13, &unk_1EB2E66C0, &unk_1A8500970);
      v5 = v13;
      v6 = v14;
      result = sub_1A824B390(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1A8243DDC(&v15, (v3[7] + 32 * result));
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

__n128 sub_1A8242940(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 _s12DerivedStateVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1A8242A50()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8242A90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  sub_1A8242AE8(v4);
  result = sub_1A8245638(v5);
  *(a1 + 48) = v4;
  *(a1 + 56) = v3;
  return result;
}

uint64_t sub_1A8242AE8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

char *NicknameProvider.init()()
{
  v1 = v0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR___IMNicknameProvider_Impl_nicknameController;
  *&v1[v2] = [objc_opt_self() sharedInstance];
  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v3 = sub_1A84E5C9C();
  sub_1A824431C(v3, qword_1ED7679E0);
  v4 = sub_1A84E5C7C();
  v5 = sub_1A84E61BC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1A823F000, v4, v5, "Opening Daemon connection", v6, 2u);
    MEMORY[0x1AC56D3F0](v6, -1, -1);
  }

  v7 = [objc_opt_self() sharedController];
  v8 = type metadata accessor for NicknameProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v10)
  {
    sub_1A84E5DBC();
    v10 = sub_1A84E5D8C();
  }

  v11 = [v7 multiplexedConnectionWithLabel:v10 capabilities:512 context:0];

  *&v1[OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection] = v11;
  v21.receiver = v1;
  v21.super_class = v8;
  v12 = objc_msgSendSuper2(&v21, sel_init);
  v13 = *&v12[OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection];
  v20[4] = sub_1A824FE40;
  v20[5] = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_1A824B720;
  v20[3] = &unk_1F1B764A0;
  v14 = _Block_copy(v20);
  v15 = v12;
  [swift_unknownObjectRetain() connectWithCompletion_];
  _Block_release(v14);
  swift_unknownObjectRelease();
  v16 = objc_opt_self();
  v17 = [v16 defaultCenter];
  [v17 addObserver:v15 selector:sel_nicknamesDidChangeWithNotification_ name:@"__kIMPendingNicknamesDidChangeNotification" object:0];

  v18 = [v16 defaultCenter];
  [v18 addObserver:v15 selector:sel_connectionStartedWithNotification_ name:@"__kIMDaemonDidConnectNotification" object:0];

  return v15;
}

uint64_t sub_1A8242ED8()
{
  qword_1ED7678C0 = objc_alloc_init(IMNicknameController);

  return MEMORY[0x1EEE66BB8]();
}

id sub_1A824340C(char *a1)
{
  v1 = *&a1[OBJC_IVAR___IMDaemonConnection_queue];
  v2 = a1;
  sub_1A83EA2FC(&qword_1EB2E65A8, &qword_1A8500738);
  sub_1A84E5A5C();

  return v4;
}

id sub_1A82434AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_msgSend_remoteObjectProxy(WeakRetained[10], v2, v3);

  return v4;
}

uint64_t sub_1A8243500(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1A83EEE14(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1A82435EC(const char *a1, void (*a2)(uint64_t *), uint64_t a3, char a4)
{
  v40 = a3;
  v41 = a2;
  v5 = NSStringFromSelector(a1);
  v42 = sub_1A84E5DBC();
  v7 = v6;

  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v8 = sub_1A84E5C9C();
  sub_1A824431C(v8, qword_1ED7679F8);

  v9 = sub_1A84E5C7C();
  v10 = sub_1A84E618C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v47 = v12;
    *v11 = 136315394;
    if (a4)
    {
      v13 = 0x6E6F7268636E7973;
    }

    else
    {
      v13 = 0x6F7268636E797361;
    }

    if (a4)
    {
      v14 = 0xEB0000000073756FLL;
    }

    else
    {
      v14 = 0xEC00000073756F6ELL;
    }

    v15 = sub_1A82446BC(v13, v14, &v47);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1A82446BC(v42, v7, &v47);
    _os_log_impl(&dword_1A823F000, v9, v10, "Sending %s message to daemon %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC56D3F0](v12, -1, -1);
    MEMORY[0x1AC56D3F0](v11, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = OBJC_IVAR___IMDaemonConnection_queue;
    v19 = *(Strong + OBJC_IVAR___IMDaemonConnection_queue);
    (MEMORY[0x1EEE9AC00])();

    sub_1A83EA2FC(&qword_1EB2E66A8, &qword_1A8500958);
    sub_1A84E5A5C();

    v20 = v47;
    v50[0] = v48;
    v50[1] = v49;
    sub_1A8243D74(v50, &v45, &qword_1EB2E66B0, &qword_1A8500960);
    if (!v46)
    {

      sub_1A8243FD0(&v45);
      v33 = sub_1A84E5C7C();
      v34 = sub_1A84E619C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1A823F000, v33, v34, "Attempted to send daemon request but proxy unavailable!", v35, 2u);
        MEMORY[0x1AC56D3F0](v35, -1, -1);
        v36 = v17;
      }

      else
      {
        v36 = v33;
        v33 = v17;
      }

      goto LABEL_27;
    }

    sub_1A8243DDC(&v45, &v47);
    if (!v20)
    {

      v41(&v47);

LABEL_24:
      sub_1A8244788(&v47);
LABEL_27:
      sub_1A8243FD0(v50);
      return;
    }

    sub_1A8244F40(&v47, &v45);
    sub_1A8244F40(&v45, v44);
    v21 = swift_allocObject();
    *(v21 + 16) = v42;
    *(v21 + 24) = v7;
    v22 = v40;
    *(v21 + 32) = v41;
    *(v21 + 40) = v22;
    v23 = sub_1A8243DDC(&v45, (v21 + 48));
    v39 = &v39;
    v24 = *(&v17->isa + v18);
    MEMORY[0x1EEE9AC00](v23);

    sub_1A84E5A5C();

    if (a4)
    {
      v25 = *(&v17->isa + OBJC_IVAR___IMDaemonConnection_setupQueue);

      sub_1A84E5A5C();

      v26 = sub_1A84E5C7C();
      v27 = sub_1A84E617C();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v43 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_1A82446BC(v42, v7, &v43);
        _os_log_impl(&dword_1A823F000, v26, v27, "Completing deferred invocation of %s", v28, 0xCu);
        sub_1A8244788(v29);
        MEMORY[0x1AC56D3F0](v29, -1, -1);
        MEMORY[0x1AC56D3F0](v28, -1, -1);
      }

      v41(v44);

      sub_1A8244788(v44);
      goto LABEL_24;
    }

    sub_1A8244788(v44);

    v37 = *(&v17->isa + OBJC_IVAR___IMDaemonConnection_setupQueue);
    v38 = swift_allocObject();
    *(v38 + 16) = sub_1A824FA68;
    *(v38 + 24) = v21;

    sub_1A84E5A6C();

    sub_1A8244788(&v47);
    sub_1A8243FD0(v50);
  }

  else
  {

    v30 = sub_1A84E5C7C();
    v31 = sub_1A84E619C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1A823F000, v30, v31, "Attempted to send daemon request but daemon connection no longer exists!", v32, 2u);
      MEMORY[0x1AC56D3F0](v32, -1, -1);
    }
  }
}

uint64_t sub_1A8243CF0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8243D28()
{
  v1 = v0[3];

  v2 = v0[5];

  sub_1A8244788(v0 + 6);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A8243D74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1A83EA2FC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_1A8243DDC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1A8243DF8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v6 = sub_1A84E5C9C();
  sub_1A824431C(v6, qword_1ED7679F8);

  v7 = sub_1A84E5C7C();
  v8 = sub_1A84E617C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1A82446BC(a2, a3, &v11);
    _os_log_impl(&dword_1A823F000, v7, v8, "Setup has not been requested at time of proxy invocation, deferring invocation of %s to after setup complete", v9, 0xCu);
    sub_1A8244788(v10);
    MEMORY[0x1AC56D3F0](v10, -1, -1);
    MEMORY[0x1AC56D3F0](v9, -1, -1);
  }

  sub_1A8244F9C(a1);
}

void *sub_1A8243F5C(uint64_t a1, uint64_t a2)
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

  sub_1A83EA2FC(&qword_1EB2E6DC8, &unk_1A8500C18);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1A8243FD0(uint64_t a1)
{
  v2 = sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A8244038(uint64_t a1, unint64_t a2)
{
  v4 = sub_1A8244084(a1, a2);
  sub_1A8243500(&unk_1F1B6FE40);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1A8244084(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1A8243F5C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1A84E64CC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1A84E5EBC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1A8243F5C(v10, 0);
        result = sub_1A84E645C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1A82441B4()
{
  v0 = sub_1A84E5C9C();
  sub_1A82442B8(v0, qword_1ED7679E0);
  sub_1A824431C(v0, qword_1ED7679E0);
  sub_1A84E5C6C();
  return sub_1A84E5C8C();
}

uint64_t sub_1A824424C()
{
  v0 = sub_1A84E5C9C();
  sub_1A82442B8(v0, qword_1ED7679F8);
  sub_1A824431C(v0, qword_1ED7679F8);
  sub_1A84E5C6C();
  return sub_1A84E5C8C();
}

uint64_t *sub_1A82442B8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1A824431C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1A8244354(void **a1)
{
  v3 = sub_1A84E5CFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR___IMDaemonConnection_queue);
  *v7 = sub_1A84E5A4C();
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  LOBYTE(v8) = sub_1A84E5D1C();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  if (*a1)
  {
    return;
  }

  if (qword_1ED7675D0 != -1)
  {
    goto LABEL_13;
  }

LABEL_4:
  v9 = sub_1A84E5C9C();
  sub_1A824431C(v9, qword_1ED7679F8);
  v10 = sub_1A84E5C7C();
  v11 = sub_1A84E617C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315138;
    v14 = *MEMORY[0x1E69A61F0];
    v15 = sub_1A84E5DBC();
    v17 = sub_1A82446BC(v15, v16, &v27);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1A823F000, v10, v11, "Attempting to connect to daemon with mach service %s", v12, 0xCu);
    sub_1A8244788(v13);
    MEMORY[0x1AC56D3F0](v13, -1, -1);
    MEMORY[0x1AC56D3F0](v12, -1, -1);
  }

  else
  {

    v14 = *MEMORY[0x1E69A61F0];
  }

  v18 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithMachServiceName:v14 options:0];
  sub_1A82447D4(v18, a1);
  v19 = *a1;
  v20 = v18;

  *a1 = v18;
  [v20 resume];
  v21 = v20;
  v22 = sub_1A84E5C7C();
  v23 = sub_1A84E617C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    v25 = [v21 processIdentifier];

    *(v24 + 4) = v25;
    _os_log_impl(&dword_1A823F000, v22, v23, "Resumed connection for %d", v24, 8u);
    MEMORY[0x1AC56D3F0](v24, -1, -1);
  }

  else
  {

    v22 = v21;
  }
}

uint64_t sub_1A82446BC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1A8244E34(v11, 0, 0, 1, a1, a2);
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
    sub_1A8244F40(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1A8244788(v11);
  return v7;
}

uint64_t sub_1A8244788(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1A82447D4(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v6 = sub_1A84E5C9C();
  sub_1A824431C(v6, qword_1ED7679F8);
  v7 = a1;
  v8 = sub_1A84E5C7C();
  v9 = sub_1A84E617C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = [v7 processIdentifier];

    _os_log_impl(&dword_1A823F000, v8, v9, "Configuring XPC connection to PID %d", v10, 8u);
    MEMORY[0x1AC56D3F0](v10, -1, -1);
  }

  else
  {

    v8 = v7;
  }

  sub_1A8244B68(0, &unk_1ED7675A0, 0x1E696B0D0);
  v11 = sub_1A84E61DC();
  [v7 setExportedInterface:v11];

  [v7 setExportedObject:sub_1A8244BC0()];
  swift_unknownObjectRelease();
  v12 = sub_1A84E61CC();
  [v7 setRemoteObjectInterface:v12];

  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  *(v13 + 24) = v3;
  v30 = sub_1A83ECA9C;
  v31 = v13;
  v26 = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1A824B720;
  v29 = &unk_1F1B716F8;
  v14 = _Block_copy(&v26);
  v15 = v7;
  v16 = v3;

  [v15 setInterruptionHandler:v14];
  _Block_release(v14);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  v30 = sub_1A83ECAA4;
  v31 = v17;
  v26 = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1A824B720;
  v29 = &unk_1F1B71748;
  v18 = _Block_copy(&v26);
  v19 = v15;
  v20 = v16;

  [v19 setInvalidationHandler:v18];
  _Block_release(v18);
  v21 = sub_1A83ECAAC(0);
  v22 = *(a2 + 8);
  swift_unknownObjectRelease();
  *(a2 + 8) = v21;
  v23 = sub_1A83ECAAC(1);
  v24 = *(a2 + 16);
  result = swift_unknownObjectRelease();
  *(a2 + 16) = v23;
  return result;
}

uint64_t sub_1A8244B24()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8244B68(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1A8244BC0()
{
  v0 = IMGetDaemonListenerProtocol();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(MEMORY[0x1E69A80D0]);
  aBlock[4] = sub_1A824F74C;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A8247230;
  aBlock[3] = &unk_1F1B71928;
  v3 = _Block_copy(aBlock);

  [v2 initWithProtocol:v0 forwardingHandler:v3];

  _Block_release(v3);

  return swift_dynamicCastObjCProtocolUnconditional();
}

uint64_t sub_1A8244D04()
{
  MEMORY[0x1AC56D490](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8244D3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244D4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244D5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244D6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244D7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244D8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244DAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244DBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244DCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244DDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244DEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244DFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244E0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244E1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1A8244E34(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1A8244038(a5, a6);
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
    result = sub_1A84E64CC();
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

uint64_t sub_1A8244F40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1A8244F9C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A84E5CFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = (&v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v1[OBJC_IVAR___IMDaemonConnection_queue];
  *v8 = sub_1A84E5A4C();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  LOBYTE(v9) = sub_1A84E5D1C();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_13;
  }

  sub_1A8244354(a1);
  if (*(a1 + 24) != 1)
  {
    return;
  }

  v10 = *a1;
  if (*a1)
  {
    aBlock[4] = sub_1A83EA4B8;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A83EA4C4;
    aBlock[3] = &unk_1F1B71518;
    v11 = _Block_copy(aBlock);

    v12 = [v10 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v11);
    sub_1A84E63AC();
    swift_unknownObjectRelease();
    sub_1A83EA2FC(&qword_1EB2E6690, &qword_1A8500948);
    if (swift_dynamicCast())
    {
      v59 = aBlock[0];
      v13 = [objc_opt_self() mainBundle];
      v14 = [v13 bundleIdentifier];

      if (!v14)
      {
        v15 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
        v14 = [v15 UUIDString];
      }

      v16 = sub_1A84E5DBC();
      v18 = v17;

      v19 = *(a1 + 48);
      if (v19)
      {
        v20 = *(a1 + 32);
        v21 = *(a1 + 40);
        v22 = *(a1 + 56);

        sub_1A8242AE8(v19);
        if (qword_1ED7675D0 != -1)
        {
          swift_once();
        }

        v23 = sub_1A84E5C9C();
        sub_1A824431C(v23, qword_1ED7679F8);

        v24 = sub_1A84E5C7C();
        v25 = sub_1A84E617C();

        v58 = v25;
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v56 = v21;
          v27 = v26;
          v54 = swift_slowAlloc();
          aBlock[0] = v54;
          *v27 = 136315394;
          *(v27 + 4) = sub_1A82446BC(v16, v18, aBlock);
          *(v27 + 12) = 2080;
          v55 = v18;
          v28 = v20;
          v29 = IMStringFromClientCapabilities();
          v53 = v24;
          v30 = v16;
          v31 = v29;
          v32 = sub_1A84E5DBC();
          v57 = v22;
          v33 = v32;
          v35 = v34;

          v16 = v30;
          v36 = sub_1A82446BC(v33, v35, aBlock);
          v20 = v28;
          v18 = v55;

          *(v27 + 14) = v36;
          v22 = v57;
          v37 = v53;
          _os_log_impl(&dword_1A823F000, v53, v58, "Dispatching setup request with id: %s capabilities: %s", v27, 0x16u);
          v38 = v54;
          swift_arrayDestroy();
          MEMORY[0x1AC56D3F0](v38, -1, -1);
          v39 = v27;
          v21 = v56;
          MEMORY[0x1AC56D3F0](v39, -1, -1);
        }

        else
        {
        }

        *(a1 + 24) = 0;
        v48 = *&v2[OBJC_IVAR___IMDaemonConnection_setupQueue];
        v49 = swift_allocObject();
        v49[2] = v16;
        v49[3] = v18;
        v50 = v59;
        v49[4] = v20;
        v49[5] = v50;
        v49[6] = v21;
        v49[7] = v19;
        v49[8] = v22;
        v49[9] = v2;
        sub_1A8242AE8(v19);
        swift_unknownObjectRetain();
        v51 = v2;
        sub_1A84E5A6C();

        sub_1A8245638(v19);
      }

      else
      {

        if (qword_1ED7675D0 != -1)
        {
          swift_once();
        }

        v44 = sub_1A84E5C9C();
        sub_1A824431C(v44, qword_1ED7679F8);
        v45 = sub_1A84E5C7C();
        v46 = sub_1A84E619C();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_1A823F000, v45, v46, "No closure to handle setup complete, not requesting setup", v47, 2u);
          MEMORY[0x1AC56D3F0](v47, -1, -1);
        }
      }

      swift_unknownObjectRelease();
      return;
    }
  }

  if (qword_1ED7675D0 != -1)
  {
    goto LABEL_26;
  }

LABEL_13:
  v40 = sub_1A84E5C9C();
  sub_1A824431C(v40, qword_1ED7679F8);
  v41 = sub_1A84E5C7C();
  v42 = sub_1A84E619C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1A823F000, v41, v42, "Setup not requested due to missing remote proxy", v43, 2u);
    MEMORY[0x1AC56D3F0](v43, -1, -1);
  }
}

uint64_t sub_1A8245638(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A8245648()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A82456D4(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v63 = a8;
  v64 = a7;
  v74 = a5;
  v65 = a1;
  v12 = sub_1A84E5CAC();
  v67 = *(v12 - 8);
  v13 = *(v67 + 64);
  MEMORY[0x1EEE9AC00]();
  v69 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1A84E5CCC();
  v68 = *(v70 - 8);
  v15 = *(v68 + 64);
  MEMORY[0x1EEE9AC00]();
  v66 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v76 = (v17 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v73 = (v18 + 16);
  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v19 = sub_1A84E5C9C();
  v20 = sub_1A824431C(v19, qword_1ED7679F8);

  v21 = sub_1A84E5C7C();
  v22 = sub_1A84E617C();

  v71 = v22;
  v23 = os_log_type_enabled(v21, v22);
  v75 = a4;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v62 = v12;
    v25 = v24;
    v61 = swift_slowAlloc();
    aBlock = v61;
    *v25 = 136315394;
    *(v25 + 4) = sub_1A82446BC(a2, a3, &aBlock);
    *(v25 + 12) = 2080;
    v26 = IMStringFromClientCapabilities();
    v27 = sub_1A84E5DBC();
    v72 = v20;
    v28 = v17;
    v29 = v18;
    v31 = v30;

    v32 = sub_1A82446BC(v27, v31, &aBlock);
    v18 = v29;
    v17 = v28;
    v20 = v72;

    *(v25 + 14) = v32;
    _os_log_impl(&dword_1A823F000, v21, v71, "Requesting setup with id: %s capabilities: %s", v25, 0x16u);
    v33 = v61;
    swift_arrayDestroy();
    MEMORY[0x1AC56D3F0](v33, -1, -1);
    v34 = v25;
    v12 = v62;
    MEMORY[0x1AC56D3F0](v34, -1, -1);
  }

  v35 = [objc_opt_self() sharedFeatureFlags];
  v36 = [v35 isNSXPCSetupInfoEnabled];

  v37 = sub_1A84E5D8C();
  v38 = sub_1A84E5D2C();
  v39 = swift_allocObject();
  *(v39 + 16) = v18;
  *(v39 + 24) = v17;
  if (v36)
  {
    v81 = sub_1A83ECA94;
    v82 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v78 = 1107296256;
    v79 = sub_1A83EA5B0;
    v80 = &unk_1F1B716A8;
    v40 = _Block_copy(&aBlock);

    v41 = &selRef_requestSetupWithClientID_capabilities_context_reply_;
  }

  else
  {
    v81 = sub_1A83ECA1C;
    v82 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v78 = 1107296256;
    v79 = sub_1A824B11C;
    v80 = &unk_1F1B715E0;
    v40 = _Block_copy(&aBlock);

    v41 = &selRef_requestSetupXPCObjectWithClientID_capabilities_context_reply_;
  }

  [v74 *v41];
  _Block_release(v40);

  v42 = v73;
  swift_beginAccess();
  v43 = *v42;
  if (*v42)
  {
    v44 = v76;
    swift_beginAccess();
    if (*v44 == 1)
    {
      v72 = v20;
      v45 = v65;
      v46 = *v65;
      v47 = v65[1];

      sub_1A8245638(v46);
      v48 = swift_allocObject();
      v49 = v63;
      v48[2] = v64;
      v48[3] = v49;
      v48[4] = v43;
      *v45 = sub_1A83ECA24;
      v45[1] = v48;
      sub_1A8244B68(0, &qword_1ED767638, 0x1E69E9610);

      v50 = sub_1A84E624C();
      v51 = swift_allocObject();
      *(v51 + 16) = a9;
      v81 = sub_1A83ECC74;
      v82 = v51;
      aBlock = MEMORY[0x1E69E9820];
      v78 = 1107296256;
      v79 = sub_1A824B720;
      v80 = &unk_1F1B71658;
      v52 = _Block_copy(&aBlock);
      v53 = a9;

      v54 = v66;
      sub_1A84E5A8C();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1A824B214();
      sub_1A83EA2FC(&unk_1EB2E6680, &qword_1A8500940);
      sub_1A824B26C();
      v55 = v69;
      sub_1A84E63CC();
      MEMORY[0x1AC56AD50](0, v54, v55, v52);
      _Block_release(v52);

      (*(v67 + 8))(v55, v12);
      (*(v68 + 8))(v54, v70);
    }
  }

  v56 = sub_1A84E5C7C();
  v57 = sub_1A84E617C();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 67109120;
    swift_beginAccess();
    *(v58 + 4) = *(v17 + 16);

    _os_log_impl(&dword_1A823F000, v56, v57, "Setup request concluded with success: %{BOOL}d", v58, 8u);
    MEMORY[0x1AC56D3F0](v58, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1A8245F2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8245F74()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8245FB0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A8246040()
{
  qword_1ED7678F0 = objc_alloc_init(IMChatHistoryController);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A82461F0()
{
  qword_1ED767840 = objc_alloc_init(IMPinnedConversationsController);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A8246858(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  if (!qword_1ED767758)
  {
    v4 = *(a1 + 32);
    v5 = objc_msgSend__createSingleton__im(v4, v2, v3);
    objc_msgSend___setSingleton__im_(v4, v6, v5);
  }

  objc_sync_exit(obj);
}

uint64_t sub_1A8246FA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_1A8244354(a1);
  *a2 = *(a1 + 8);

  return swift_unknownObjectRetain();
}

double sub_1A8246FF8@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *a1;
  if ((a2 & 1) == 0)
  {
    if (v5)
    {
      v13 = sub_1A83EA96C;
      v14 = 0;
      *&v11 = MEMORY[0x1E69E9820];
      *(&v11 + 1) = 1107296256;
      *&v12 = sub_1A83EA4C4;
      *(&v12 + 1) = &unk_1F1B718B0;
      v6 = _Block_copy(&v11);
      v7 = [v5 remoteObjectProxyWithErrorHandler_];
      goto LABEL_6;
    }

LABEL_7:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_8;
  }

  if (!v5)
  {
    goto LABEL_7;
  }

  v13 = sub_1A83EA960;
  v14 = 0;
  *&v11 = MEMORY[0x1E69E9820];
  *(&v11 + 1) = 1107296256;
  *&v12 = sub_1A83EA4C4;
  *(&v12 + 1) = &unk_1F1B718D8;
  v6 = _Block_copy(&v11);
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler_];
LABEL_6:
  v8 = v7;
  _Block_release(v6);
  sub_1A84E63AC();
  swift_unknownObjectRelease();
LABEL_8:
  *a3 = v4;
  result = *&v11;
  v10 = v12;
  *(a3 + 8) = v11;
  *(a3 + 24) = v10;
  return result;
}

uint64_t sub_1A8247180(void *a1, uint64_t a2)
{
  sub_1A82471E0(a1, a1[3]);
  v3 = sub_1A84E679C();
  (*(a2 + 16))(a2, v3);

  return swift_unknownObjectRelease();
}

void *sub_1A82471E0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1A8247230(uint64_t a1, uint64_t a2, void *aBlock)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;

  v5(a2, sub_1A8247178, v7);
}

uint64_t sub_1A824734C()
{
  qword_1ED7678C8 = objc_alloc_init(IMHandleRegistrar);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A8247448(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, a3);
  objc_msgSend_addObserver_selector_name_object_(v3, v4, qword_1ED7678C8, sel__handleAddContactChangeHistoryEvent_, *MEMORY[0x1E69A6A80], 0);

  v7 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v5, v6);
  objc_msgSend_addObserver_selector_name_object_(v7, v8, qword_1ED7678C8, sel__handleDeleteContactChangeHistoryEvent_, *MEMORY[0x1E69A6A98], 0);

  v11 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v9, v10);
  objc_msgSend_addObserver_selector_name_object_(v11, v12, qword_1ED7678C8, sel__handleUpdateContactChangeHistoryEvent_, *MEMORY[0x1E69A6AB0], 0);

  v15 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v13, v14);
  objc_msgSend_addObserver_selector_name_object_(v15, v16, qword_1ED7678C8, sel__handleDropEverythingChangeHistoryEvent, *MEMORY[0x1E69A6AA0], 0);

  v20 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v17, v18);
  objc_msgSend_addObserver_selector_name_object_(v20, v19, qword_1ED7678C8, sel__handleNicknameDidChangeNotification_, @"__kIMNicknameDidChangeNotification", 0);
}

void sub_1A8247648(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(a1 + 32);
  *(a1 + 32) = a2;
  if (v7 != a2)
  {
    *(a1 + 24) = 1;
  }

  v8 = *(a1 + 40);

  *(a1 + 40) = a3;
  if (a4)
  {
    *(a1 + 24) = 1;
  }

  sub_1A8244F9C(a1);
}

uint64_t sub_1A8247B70()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8247E78()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8247EC0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1A82505F4;

  return v8();
}

uint64_t sub_1A8247FAC()
{
  v19 = v0;
  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_1A84E5C9C();
  sub_1A824431C(v2, qword_1ED7679F8);
  v3 = v1;
  v4 = sub_1A84E5C7C();
  v5 = sub_1A84E617C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[18];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_1A82446BC(*(v6 + OBJC_IVAR___IMMultiplexedDaemonConnection_label), *(v6 + OBJC_IVAR___IMMultiplexedDaemonConnection_label + 8), &v18);
    *(v7 + 12) = 2080;
    v9 = *(v6 + OBJC_IVAR___IMMultiplexedDaemonConnection_capabilities);
    v10 = IMStringFromClientCapabilities();
    v11 = sub_1A84E5DBC();
    v13 = v12;

    v14 = sub_1A82446BC(v11, v13, &v18);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_1A823F000, v4, v5, "Multiplexed connection %s is requesting asynchronous connection with capabilities %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC56D3F0](v8, -1, -1);
    MEMORY[0x1AC56D3F0](v7, -1, -1);
  }

  v15 = [objc_opt_self() sharedController];
  v0[19] = v15;
  v0[2] = v0;
  v0[3] = sub_1A8250514;
  v16 = swift_continuation_init();
  v0[17] = sub_1A83EA2FC(&qword_1EB2E8258, &qword_1A8507B58);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A824FBAC;
  v0[13] = &unk_1F1B74C40;
  v0[14] = v16;
  [v15 _connectWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

void sub_1A8248300(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  aBlock[4] = nullsub_4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A824B720;
  aBlock[3] = &unk_1F1B76888;
  v4 = _Block_copy(aBlock);
  [v3 connectWithCompletion_];
  _Block_release(v4);
  v5 = [objc_opt_self() phoneNumbersForCNContact_];
  v6 = sub_1A84E5FFC();

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = (v6 + 40 + 16 * v8);
      v11 = v8;
      while (1)
      {
        if (v11 >= *(v6 + 16))
        {
          __break(1u);
          return;
        }

        v8 = v11 + 1;
        v12 = *(v10 - 1);
        v13 = *v10;

        v14 = sub_1A84E5D8C();
        v15 = IMInternationalForPhoneNumberWithOptions();

        if (v15)
        {
          break;
        }

        v10 += 2;
        ++v11;
        if (v7 == v8)
        {
          goto LABEL_15;
        }
      }

      v16 = sub_1A84E5DBC();
      v18 = v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1A824A1FC(0, *(v9 + 2) + 1, 1, v9);
      }

      v20 = *(v9 + 2);
      v19 = *(v9 + 3);
      if (v20 >= v19 >> 1)
      {
        v9 = sub_1A824A1FC((v19 > 1), v20 + 1, 1, v9);
      }

      *(v9 + 2) = v20 + 1;
      v21 = &v9[16 * v20];
      *(v21 + 4) = v16;
      *(v21 + 5) = v18;
    }

    while (v7 - 1 != v11);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:

  sub_1A8249338(v9);
}

uint64_t sub_1A8248560(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A824FC44;

  return v7(a1);
}

uint64_t sub_1A8248658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A824FBE0;

  return sub_1A8247EC0(a1, v4, v5, v7);
}

uint64_t sub_1A8248724(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1A824FBE0;

  return v7();
}

uint64_t sub_1A824880C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A82505F4;

  return sub_1A8248A38(v2, v3);
}

uint64_t sub_1A82488B8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1A84CFCC8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1A84CFF28();
      goto LABEL_16;
    }

    sub_1A84D0084(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1A84E684C();
  sub_1A84E5E5C();
  result = sub_1A84E687C();
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

      result = sub_1A84E67AC();
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
  result = sub_1A84E67DC();
  __break(1u);
  return result;
}

uint64_t sub_1A8248A38(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1A8250728;

  return MultiplexedDaemonConnection.connect()();
}

uint64_t sub_1A8248AE8(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v28[4] = nullsub_4;
  v28[5] = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 1107296256;
  v28[2] = sub_1A824B720;
  v28[3] = &unk_1F1B76608;
  v4 = _Block_copy(v28);
  [v3 connectWithCompletion_];
  _Block_release(v4);
  v28[0] = MEMORY[0x1E69E7CC8];
  sub_1A8248300(a1);
  v5 = [objc_opt_self() emailsForCNContact_];
  v6 = sub_1A84E5FFC();

  sub_1A8249338(v6);

  v7 = *(v1 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
  v8 = sub_1A84E610C();
  v9 = [v7 pendingNicknameForHandleIDs_];

  if (!v9)
  {
    v10 = sub_1A84E610C();
    v9 = [v7 pendingNicknameForHandleIDs_];
  }

  v11 = sub_1A84E610C();
  v12 = [v7 currentNicknameForHandleIDs_];

  if (!v12)
  {
    v13 = sub_1A84E610C();
    v12 = [v7 currentNicknameForHandleIDs_];
  }

  v14 = sub_1A84E610C();

  v15 = [v7 archivedNicknameForHandleIDs_];

  if (v15)
  {

    if (!v9)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v27 = sub_1A84E610C();

  v15 = [v7 archivedNicknameForHandleIDs_];

  if (v9)
  {
LABEL_7:
    v16 = sub_1A84E5DBC();
    v18 = v17;
    v19 = v9;
    sub_1A845EC98(v9, v16, v18);
  }

LABEL_8:
  if (v12)
  {
    v20 = sub_1A84E5DBC();
    v22 = v21;
    v23 = v12;
    sub_1A845EC98(v12, v20, v22);
  }

  if (v15)
  {
    v24 = sub_1A84E5DBC();
    sub_1A845EC98(v15, v24, v25);
  }

  return v28[0];
}

uint64_t sub_1A82490D8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8249120(uint64_t a1, char *a2)
{
  v4 = sub_1A83EA2FC(&unk_1EB2E6670, &qword_1A8500938);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *&a2[OBJC_IVAR___IMDaemonConnection_queue];
  (*(v5 + 16))(&v14 - v7, a1, v4);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  (*(v5 + 32))(v11 + v10, v8, v4);
  v12 = a2;
  sub_1A84E5A6C();
}

uint64_t sub_1A8249280(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A824FBE0;

  return sub_1A8248560(a1, v5);
}

uint64_t sub_1A8249338(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1AC56AC20](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1A82493D0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1A82493D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1A84E684C();
  sub_1A84E5E5C();
  v9 = sub_1A84E687C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1A84E67AC() & 1) != 0)
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

    sub_1A82488B8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t sub_1A8249548()
{
  result = qword_1ED7674D8;
  if (!qword_1ED7674D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7674D8);
  }

  return result;
}

uint64_t sub_1A8249594()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A82505F4;

  return sub_1A8249640(v2, v3);
}

uint64_t sub_1A8249640(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x1EEE6DFA0](sub_1A82496B8, 0, 0);
}

uint64_t sub_1A82496B8()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E88D0] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1A82503FC;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1A82497B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A84E5CAC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00]();
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A84E5CCC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00]();
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A8244B68(0, &qword_1ED767638, 0x1E69E9610);
  v15 = sub_1A84E624C();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  aBlock[4] = sub_1A824C0D8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A824B720;
  aBlock[3] = &unk_1F1B71888;
  v17 = _Block_copy(aBlock);

  sub_1A84E5A8C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A824B214();
  sub_1A83EA2FC(&unk_1EB2E6680, &qword_1A8500940);
  sub_1A824B26C();
  sub_1A84E63CC();
  MEMORY[0x1AC56AD50](0, v14, v9, v17);
  _Block_release(v17);

  (*(v6 + 8))(v9, v5);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1A8249A60(void *a1, uint64_t a2, void *a3)
{
  v34 = a3;
  v5 = sub_1A84E5CAC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A84E5CCC();
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A83EA2FC(&unk_1EB2E6670, &qword_1A8500938);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v32 - v17;
  if (*a1)
  {
    sub_1A8244B68(0, &qword_1ED767638, 0x1E69E9610);
    v32 = sub_1A84E624C();
    (*(v15 + 16))(v18, a2, v14);
    v19 = *(v15 + 80);
    v33 = v6;
    v20 = (v19 + 24) & ~v19;
    v21 = swift_allocObject();
    v22 = v5;
    v23 = v34;
    *(v21 + 16) = v34;
    (*(v15 + 32))(v21 + v20, v18, v14);
    aBlock[4] = sub_1A8250270;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A824B720;
    aBlock[3] = &unk_1F1B714F0;
    v24 = _Block_copy(aBlock);
    v25 = v23;
    sub_1A84E5A8C();
    v37 = MEMORY[0x1E69E7CC0];
    sub_1A824B214();
    sub_1A83EA2FC(&unk_1EB2E6680, &qword_1A8500940);
    sub_1A824B26C();
    sub_1A84E63CC();
    v26 = v32;
    MEMORY[0x1AC56AD50](0, v13, v9, v24);
    _Block_release(v24);

    (*(v33 + 8))(v9, v22);
    (*(v35 + 8))(v13, v36);
  }

  else
  {
    if (qword_1ED7675D0 != -1)
    {
      swift_once();
    }

    v28 = sub_1A84E5C9C();
    sub_1A824431C(v28, qword_1ED7679F8);
    v29 = sub_1A84E5C7C();
    v30 = sub_1A84E617C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1A823F000, v29, v30, "Setup request should be complete, resuming continuation", v31, 2u);
      MEMORY[0x1AC56D3F0](v31, -1, -1);
    }

    return sub_1A84E607C();
  }
}

uint64_t sub_1A8249EA4(void *a1)
{
  v3 = *(sub_1A83EA2FC(&unk_1EB2E6670, &qword_1A8500938) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A8249A60(a1, v1 + v4, v5);
}

uint64_t sub_1A8249F4C(uint64_t a1)
{
  v3 = *(sub_1A83EA2FC(&unk_1EB2E6670, &qword_1A8500938) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1A8249FD0(a1, v4, v5);
}

uint64_t sub_1A8249FD0(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = sub_1A83EA2FC(&unk_1EB2E6670, &qword_1A8500938);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  sub_1A8244F9C(a1);
  v11 = *&a2[OBJC_IVAR___IMDaemonConnection_setupQueue];
  (*(v7 + 16))(v10, a3, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v14 = a2;
  sub_1A84E5A6C();
}

uint64_t sub_1A824A148()
{
  v1 = sub_1A83EA2FC(&unk_1EB2E6670, &qword_1A8500938);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

char *sub_1A824A1FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A83EA2FC(&unk_1EB2E8DC0, &qword_1A8500C50);
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

void sub_1A824A310(void **a1)
{
  v45 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = a1[4];
      *buf = 138412290;
      v44 = v3;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Got back pending nicknames %@", buf, 0xCu);
    }
  }

  v4 = objc_alloc(MEMORY[0x1E695DF90]);
  v7 = objc_msgSend_count(a1[4], v5, v6);
  v9 = objc_msgSend_initWithCapacity_(v4, v8, v7);
  v10 = a1[4];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_1A82B71EC;
  v41[3] = &unk_1E78109A0;
  v11 = v9;
  v42 = v11;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v10, v12, v41);
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = a1[5];
      *buf = 138412290;
      v44 = v14;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Got back handled nicknames %@", buf, 0xCu);
    }
  }

  v15 = objc_alloc(MEMORY[0x1E695DF90]);
  v18 = objc_msgSend_count(a1[5], v16, v17);
  v20 = objc_msgSend_initWithCapacity_(v15, v19, v18);
  v21 = a1[5];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = sub_1A82B7278;
  v39[3] = &unk_1E78109A0;
  v22 = v20;
  v40 = v22;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v21, v23, v39);
  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = a1[6];
      *buf = 138412290;
      v44 = v25;
      _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Got back archived nicknames %@", buf, 0xCu);
    }
  }

  v26 = objc_alloc(MEMORY[0x1E695DF90]);
  v29 = objc_msgSend_count(a1[6], v27, v28);
  v31 = objc_msgSend_initWithCapacity_(v26, v30, v29);
  v32 = a1[6];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_1A82B7304;
  v37[3] = &unk_1E78109A0;
  v38 = v31;
  v33 = v31;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v32, v34, v37);
  objc_msgSend_updatePendingNicknames_handledNicknames_archivedNicknames_(a1[7], v35, v11, v22, v33);

  v36 = *MEMORY[0x1E69E9840];
}

id sub_1A824A700(void *a1)
{
  result = [a1 userInfo];
  if (result)
  {
    v2 = result;
    v3 = sub_1A84E5D3C();

    v4 = sub_1A824A83C(v3);

    if (v4)
    {
      if (*(v4 + 16) && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
      {
        v6 = Strong;
        sub_1A83EA2FC(&qword_1EB2E8E90, &qword_1A850B540);
        v7 = sub_1A84E5D2C();

        [v6 nicknameStoreDidChange_];

        return swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return result;
}

unint64_t sub_1A824A83C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A83EA2FC(&qword_1EB2E8E98, &qword_1A850B548);
    v2 = sub_1A84E657C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
        sub_1A824B334(*(a1 + 48) + 40 * v14, v27);
        sub_1A8244F40(*(a1 + 56) + 32 * v14, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_1A824B334(v24, v23);
        if (!swift_dynamicCast())
        {
          sub_1A824B2D4(v24, &unk_1EB2E8EA0, &unk_1A850B550);

          goto LABEL_23;
        }

        sub_1A8244F40(v25 + 8, v23);
        sub_1A824B2D4(v24, &unk_1EB2E8EA0, &unk_1A850B550);
        sub_1A83EA2FC(&qword_1EB2E8E90, &qword_1A850B540);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_1A824B390(v21, v22);
        v15 = result;
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v21;
          v9[1] = v22;

          v11 = v2[7];
          v12 = *(v11 + 8 * v15);
          *(v11 + 8 * v15) = v21;

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
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v21;
          v17[1] = v22;
          *(v2[7] + 8 * result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v2[2] = v20;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

Swift::Void __swiftcall DaemonConnection.waitForSetup()()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 isMainThread];
  if (v3)
  {
    swift_beginAccess();
    sub_1A83EA2FC(&qword_1EB2E65A0, &unk_1A8500728);
    sub_1A84E59EC();
    v3 = swift_endAccess();
    if (v27 == 1)
    {
      if (qword_1ED7675D0 != -1)
      {
        swift_once();
      }

      v4 = sub_1A84E5C9C();
      sub_1A824431C(v4, qword_1ED7679F8);
      v5 = sub_1A84E5C7C();
      v6 = sub_1A84E617C();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_16;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Already invoking setup on this thread, not blocking";
LABEL_15:
      _os_log_impl(&dword_1A823F000, v5, v6, v8, v7, 2u);
      MEMORY[0x1AC56D3F0](v7, -1, -1);
LABEL_16:

      return;
    }
  }

  v9 = *&v0[OBJC_IVAR___IMDaemonConnection_queue];
  MEMORY[0x1EEE9AC00](v3);
  sub_1A84E5A5C();
  v10 = *&v1[OBJC_IVAR___IMDaemonConnection_setupQueue];
  sub_1A83EA2FC(&unk_1EB2E6590, &qword_1A8500720);
  sub_1A84E5A5C();
  v11 = aBlock[0];
  if (aBlock[0])
  {
    if ([v2 isMainThread])
    {
      if (qword_1ED7675D0 != -1)
      {
        swift_once();
      }

      v12 = sub_1A84E5C9C();
      sub_1A824431C(v12, qword_1ED7679F8);
      v13 = sub_1A84E5C7C();
      v14 = sub_1A84E617C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1A823F000, v13, v14, "Starting to handle setup message", v15, 2u);
        MEMORY[0x1AC56D3F0](v15, -1, -1);
      }

      swift_beginAccess();
      sub_1A83EA2FC(&qword_1EB2E65A0, &unk_1A8500728);
      sub_1A84E59FC();
      v16 = swift_endAccess();
      v11(v16);
      sub_1A8245638(v11);
      swift_beginAccess();
      sub_1A84E59FC();
      swift_endAccess();
      sub_1A84E5A5C();
      v5 = sub_1A84E5C7C();
      v6 = sub_1A84E617C();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_16;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Finished handling setup message";
      goto LABEL_15;
    }

    sub_1A8245638(aBlock[0]);
    if (qword_1ED7675D0 != -1)
    {
      swift_once();
    }

    v17 = sub_1A84E5C9C();
    sub_1A824431C(v17, qword_1ED7679F8);
    v18 = sub_1A84E5C7C();
    v19 = sub_1A84E617C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1A823F000, v18, v19, "Caller needs main queue to wait for setup", v20, 2u);
      MEMORY[0x1AC56D3F0](v20, -1, -1);
    }

    sub_1A8244B68(0, &qword_1ED767638, 0x1E69E9610);
    v21 = sub_1A84E624C();
    v22 = swift_allocObject();
    *(v22 + 16) = v1;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1A824B764;
    *(v23 + 24) = v22;
    aBlock[4] = sub_1A824C0D8;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A83EB688;
    aBlock[3] = &unk_1F1B710E0;
    v24 = _Block_copy(aBlock);
    v25 = v1;

    dispatch_sync(v21, v24);

    _Block_release(v24);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_1A824B11C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, v7);
}

unint64_t sub_1A824B214()
{
  result = qword_1ED7675C0;
  if (!qword_1ED7675C0)
  {
    sub_1A84E5CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7675C0);
  }

  return result;
}

unint64_t sub_1A824B26C()
{
  result = qword_1ED7675B0;
  if (!qword_1ED7675B0)
  {
    sub_1A83EC9D4(&unk_1EB2E6680, &qword_1A8500940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7675B0);
  }

  return result;
}

uint64_t sub_1A824B2D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1A83EA2FC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1A824B390(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1A84E684C();
  sub_1A84E5E5C();
  v6 = sub_1A84E687C();

  return sub_1A824B408(a1, a2, v6);
}

unint64_t sub_1A824B408(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1A84E67AC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1A824B4C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1A824B500(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A824A310;
  v14[3] = &unk_1E78101E0;
  v15 = v7;
  v16 = v8;
  v10 = *(a1 + 32);
  v17 = v9;
  v18 = v10;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void sub_1A824B5E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A824FB14;
  v5[3] = &unk_1E7810140;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void sub_1A824B684(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A8250258;
  v5[3] = &unk_1E7810140;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t sub_1A824B720(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1A824B8C4()
{
  qword_1ED7677A0 = objc_alloc_init(IMParentalControls);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A824C064(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A824BD20);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1A824C0D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1A824C108()
{
  v1 = *(v0 + 16);
  v2 = sub_1A84E5D2C();
  (*(v1 + 16))(v1, v2);
}

void sub_1A824C17C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = objc_msgSend_listener(WeakRetained, v4, v5);
  objc_msgSend_setupComplete_info_(v6, v7, 1, v3);
}

uint64_t sub_1A824C1EC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A824C0D8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1A8242AE8(v3);
}

id sub_1A824D260(void *a1)
{
  v1 = a1;
  if (objc_msgSend_supportsCrossAccountIDSMessaging(v1, v2, v3))
  {
    v6 = objc_msgSend_idsServiceNames(v1, v4, v5);
    v9 = objc_msgSend_firstObject(v6, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_1A824D5F0()
{
  if (qword_1ED7677F8 != -1)
  {
    sub_1A824D634();
  }

  v1 = qword_1ED7677F0;

  return v1;
}

uint64_t sub_1A824D648()
{
  qword_1ED7677F0 = objc_alloc_init(MEMORY[0x1E69A6170]);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A824D788(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A84E5CAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00]();
  v50 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A84E5CCC();
  v49 = *(v10 - 8);
  v11 = *(v49 + 64);
  MEMORY[0x1EEE9AC00]();
  v48 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v13 = sub_1A84E5C9C();
  v46 = sub_1A824431C(v13, qword_1ED7679F8);
  v14 = sub_1A84E5C7C();
  v15 = sub_1A84E618C();
  v16 = os_log_type_enabled(v14, v15);
  v47 = a1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v45 = v6;
    v18 = v17;
    v19 = swift_slowAlloc();
    v44 = a3;
    v20 = v19;
    aBlock[0] = v19;
    *v18 = 136315138;
    v21 = v10;
    v22 = v7;
    v23 = NSStringFromSelector(a1);
    v24 = sub_1A84E5DBC();
    v43 = a2;
    v25 = v24;
    v27 = v26;

    v7 = v22;
    v10 = v21;
    v28 = sub_1A82446BC(v25, v27, aBlock);

    *(v18 + 4) = v28;
    a2 = v43;
    _os_log_impl(&dword_1A823F000, v14, v15, "Receiving message from daemon %s, dispatching to main queue", v18, 0xCu);
    sub_1A8244788(v20);
    v29 = v20;
    a3 = v44;
    MEMORY[0x1AC56D3F0](v29, -1, -1);
    v30 = v18;
    v6 = v45;
    MEMORY[0x1AC56D3F0](v30, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    sub_1A8244B68(0, &qword_1ED767638, 0x1E69E9610);
    v33 = sub_1A84E624C();
    v34 = swift_allocObject();
    v34[2] = v47;
    v34[3] = a2;
    v34[4] = a3;
    v34[5] = v32;
    aBlock[4] = sub_1A825BDC0;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A824B720;
    aBlock[3] = &unk_1F1B71978;
    v35 = _Block_copy(aBlock);

    v36 = v32;

    v37 = v48;
    sub_1A84E5A8C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A824B214();
    sub_1A83EA2FC(&unk_1EB2E6680, &qword_1A8500940);
    sub_1A824B26C();
    v38 = v50;
    sub_1A84E63CC();
    MEMORY[0x1AC56AD50](0, v37, v38, v35);
    _Block_release(v35);

    (*(v7 + 8))(v38, v6);
    (*(v49 + 8))(v37, v10);
  }

  else
  {
    v39 = sub_1A84E5C7C();
    v40 = sub_1A84E619C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1A823F000, v39, v40, "Got daemon request but daemon connection no longer exists!", v41, 2u);
      MEMORY[0x1AC56D3F0](v41, -1, -1);
    }
  }
}

uint64_t sub_1A824DC50()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1A824DC9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A8250264;
  v5[3] = &unk_1E7810140;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t sub_1A824DF2C()
{
  v1 = [v0 brand];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = [v0 ID];
  if (!v2)
  {
    sub_1A84E5DBC();
    v2 = sub_1A84E5D8C();
  }

  v3 = MEMORY[0x1AC56C3A0](v2);

  if (!v3)
  {
    return 1;
  }

LABEL_5:
  v4 = [v0 ID];
  if (!v4)
  {
    sub_1A84E5DBC();
    v4 = sub_1A84E5D8C();
  }

  v5 = [v4 __im_isChatBot];

  return v5;
}

void sub_1A824EE1C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *exc_buf)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A824EB0CLL);
  }

  JUMPOUT(0x1A824EE14);
}

NSComparisonResult IMComparePersonStatus(IMPersonStatus status, IMPersonStatus compareTo)
{
  v2 = qword_1A84FFD28[status];
  v3 = qword_1A84FFD28[compareTo];
  v4 = v2 == v3;
  v5 = v2 <= v3;
  v6 = NSOrderedDescending;
  if (v5)
  {
    v6 = NSOrderedAscending;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1A824F4AC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_chatResolutionPriority(v4, v6, v7);
  if (v8 <= objc_msgSend_chatResolutionPriority(v5, v9, v10))
  {
    v14 = objc_msgSend_chatResolutionPriority(v4, v11, v12);
    v13 = v14 < objc_msgSend_chatResolutionPriority(v5, v15, v16);
  }

  else
  {
    v13 = -1;
  }

  return v13;
}

id sub_1A824F64C()
{
  result = [objc_allocWithZone(IMUltraConstrainedNetworkMonitor) init];
  qword_1ED767518 = result;
  return result;
}

uint64_t sub_1A824F8C0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A8245638(*a1);
  *a1 = 0;
  a1[1] = 0;
  return result;
}

uint64_t sub_1A824F8F4(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v9 = sub_1A84E5C9C();
  sub_1A824431C(v9, qword_1ED7679F8);

  v10 = sub_1A84E5C7C();
  v11 = sub_1A84E617C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1A82446BC(a1, a2, &v15);
    _os_log_impl(&dword_1A823F000, v10, v11, "Completing deferred invocation of %s", v12, 0xCu);
    sub_1A8244788(v13);
    MEMORY[0x1AC56D3F0](v13, -1, -1);
    MEMORY[0x1AC56D3F0](v12, -1, -1);
  }

  return a3(a5);
}

void sub_1A824FA78(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A824FF2C;
  v5[3] = &unk_1E7810140;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t sub_1A824FB34()
{
  v1 = *(v0 + 24);

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A824FBAC(uint64_t a1)
{
  v1 = *sub_1A82471E0((a1 + 32), *(a1 + 56));

  return MEMORY[0x1EEE6DED8](v1);
}

uint64_t sub_1A824FBE4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A824FC44()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_1A824FD40()
{
  v1 = v0;
  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v2 = sub_1A84E5C9C();
  sub_1A824431C(v2, qword_1ED7679E0);
  v3 = sub_1A84E5C7C();
  v4 = sub_1A84E61BC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A823F000, v3, v4, "Connection started, updating local nickname store.", v5, 2u);
    MEMORY[0x1AC56D3F0](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);

  return [v6 updateLocalNicknameStore];
}

void sub_1A824FE40()
{
  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v0 = sub_1A84E5C9C();
  sub_1A824431C(v0, qword_1ED7679E0);
  oslog = sub_1A84E5C7C();
  v1 = sub_1A84E61BC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1A823F000, oslog, v1, "Opened Daemon connection", v2, 2u);
    MEMORY[0x1AC56D3F0](v2, -1, -1);
  }
}

uint64_t sub_1A8250270()
{
  v1 = *(*(sub_1A83EA2FC(&unk_1EB2E6670, &qword_1A8500938) - 8) + 80);
  v2 = *(v0 + 16);

  return sub_1A82502E0();
}

uint64_t sub_1A82502E0()
{
  DaemonConnection.waitForSetup()();
  sub_1A83EA2FC(&unk_1EB2E6670, &qword_1A8500938);
  return sub_1A84E607C();
}

uint64_t sub_1A825032C()
{
  v1 = sub_1A83EA2FC(&unk_1EB2E6670, &qword_1A8500938);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A82503FC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A824FB34, 0, 0);
}

uint64_t sub_1A8250514()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A824FBE4, 0, 0);
}

uint64_t sub_1A82505F4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1A82506E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A8250728()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_1A8250878(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1A83EA2FC(a2, a3);
    v5 = sub_1A84E657C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1A824B390(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

void sub_1A8250988(uint64_t a1, unint64_t *a2)
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

void sub_1A82509D4(uint64_t a1)
{
  v2 = v1;
  v4 = *MEMORY[0x1E69A7BC8];
  v15 = sub_1A84E5DBC();
  sub_1A84E641C();
  if (*(a1 + 16) && (v5 = sub_1A8250C0C(v17), (v6 & 1) != 0))
  {
    sub_1A8244F40(*(a1 + 56) + 32 * v5, v18);
    sub_1A8250D18(v17);
    sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
    if (swift_dynamicCast())
    {
      v7 = v15;
      v8 = *MEMORY[0x1E69A7098];
      v16 = sub_1A84E5DBC();
      sub_1A84E641C();
      if (*(v7 + 16) && (v9 = sub_1A8250C0C(v17), (v10 & 1) != 0))
      {
        sub_1A8244F40(*(v7 + 56) + 32 * v9, v18);
        sub_1A8250D18(v17);

        if (swift_dynamicCast())
        {
          [v2 keyTransparencyOptInStateChanged_];
        }
      }

      else
      {

        sub_1A8250D18(v17);
      }

      return;
    }
  }

  else
  {
    sub_1A8250D18(v17);
  }

  if (qword_1EB2E4780 != -1)
  {
    swift_once();
  }

  v11 = sub_1A84E5C9C();
  sub_1A824431C(v11, qword_1EB2E47B0);
  v12 = sub_1A84E5C7C();
  v13 = sub_1A84E619C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1A823F000, v12, v13, "Received setup info but it did not contain KT info", v14, 2u);
    MEMORY[0x1AC56D3F0](v14, -1, -1);
  }
}

unint64_t sub_1A8250C0C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1A84E63FC();

  return sub_1A8250C50(a1, v5);
}

unint64_t sub_1A8250C50(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1A824B334(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1AC56AF00](v9, a1);
      sub_1A8250D18(v9);
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

void sub_1A8250D6C(char a1)
{
  v3 = a1 & 1;
  v4 = *(v1 + OBJC_IVAR___IMKeyTransparencyController_state);

  os_unfair_lock_lock((v4 + 40));
  v5 = *(v4 + 17);
  *(v4 + 17) = a1;
  v6 = *(v4 + 16);
  *(v4 + 16) = 1;
  os_unfair_lock_unlock((v4 + 40));

  v7 = v6 ^ 1;
  if (v5 != v3 || (v7 & 1) != 0)
  {
    if (qword_1EB2E4780 != -1)
    {
      swift_once();
    }

    v8 = sub_1A84E5C9C();
    sub_1A824431C(v8, qword_1EB2E47B0);
    v9 = sub_1A84E5C7C();
    v10 = sub_1A84E618C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67174913;
      *(v11 + 4) = a1 & 1;
      *(v11 + 8) = 1026;
      *(v11 + 10) = v7 & 1;
      _os_log_impl(&dword_1A823F000, v9, v10, "Key transparency opt-in state changed to %{BOOL,private}d. Initial load? %{BOOL,public}d", v11, 0xEu);
      MEMORY[0x1AC56D3F0](v11, -1, -1);
    }

    sub_1A8250EEC(a1 & 1);
  }
}

void sub_1A8250EEC(char a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = IMKeyTransparencySelfOptInStateChangedNotification;
  sub_1A83EA2FC(&qword_1EB2E87A8, &qword_1A8509748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A85013E0;
  *(inited + 32) = sub_1A84E5DBC();
  *(inited + 40) = v5;
  *(inited + 48) = a1;
  sub_1A8251018(inited);
  swift_setDeallocating();
  sub_1A824B2D4(inited + 32, &qword_1EB2E87B0, &qword_1A8509750);
  v6 = sub_1A84E5D2C();

  [v2 postNotificationName:v3 object:v6];
}

unint64_t sub_1A8251018(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A83EA2FC(&qword_1EB2E65D8, &qword_1A8500880);
    v3 = sub_1A84E657C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A824B390(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

id sub_1A82511A0(void *a1, void *a2, void *a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v13 = objc_msgSend__stripFZIDPrefix(a3, v10, v11);
  if (!v9 || (objc_msgSend_accountForUniqueID_(v7, v12, v9), (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v34 = 0;
    v15 = sub_1A825246C(v7, v8, v13, &v34);
    v16 = v15;
    if (v34 == 1)
    {
      v14 = v15;
LABEL_14:

      goto LABEL_15;
    }

    v17 = sub_1A8251424(v7, v8, v13, &v34);
    v18 = v17;
    if (v34 == 1)
    {
      v14 = v17;
LABEL_13:

      goto LABEL_14;
    }

    v19 = sub_1A8251638(v7, v8, v13, &v34);
    v21 = v19;
    if (v34 != 1)
    {
      if (v16)
      {
        v22 = v16;
        goto LABEL_11;
      }

      if (!v19)
      {
        v25 = objc_msgSend_accountsForService_(v7, v20, v8);
        if (objc_msgSend_count(v25, v26, v27))
        {
          v14 = objc_msgSend___imFirstObject(v25, v28, v29);
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v30 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v33 = objc_msgSend_accounts(v7, v31, v32);
              *buf = 138413058;
              v36 = v8;
              v37 = 2112;
              v38 = v13;
              v39 = 2112;
              v40 = v9;
              v41 = 2112;
              v42 = v33;
              _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "Couldn't find any account for service: %@, login: %@, guid: %@, accounts: %@", buf, 0x2Au);
            }
          }

          v14 = 0;
        }

        goto LABEL_12;
      }
    }

    v22 = v19;
LABEL_11:
    v14 = v22;
LABEL_12:

    goto LABEL_13;
  }

LABEL_15:

  v23 = *MEMORY[0x1E69E9840];

  return v14;
}

id sub_1A8251424(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v11 = objc_msgSend_operationalAccountsForService_(v7, v10, v8);
  if (objc_msgSend_count(v11, v12, v13))
  {
    if (objc_msgSend_length(v9, v14, v15))
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v18 = v11;
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v41, v45, 16);
      if (v20)
      {
        v23 = v20;
        v24 = *v42;
        v39 = v8;
        v40 = v7;
        v38 = a4;
        while (2)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v42 != v24)
            {
              objc_enumerationMutation(v18);
            }

            v26 = *(*(&v41 + 1) + 8 * i);
            v27 = objc_msgSend_strippedLogin(v26, v21, v22);
            if (objc_msgSend_isEqualToIgnoringCase_(v27, v28, v9))
            {

LABEL_17:
              if (v38)
              {
                *v38 = 1;
              }

              v35 = v26;

              v8 = v39;
              v7 = v40;
              goto LABEL_20;
            }

            v31 = objc_msgSend_aliases(v26, v29, v30);
            v33 = objc_msgSend_containsObject_(v31, v32, v9);

            if (v33)
            {
              goto LABEL_17;
            }
          }

          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v41, v45, 16);
          v8 = v39;
          v7 = v40;
          a4 = v38;
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v34 = sub_1A8251424(v7, v8, 0, a4);
    }

    else
    {
      v34 = objc_msgSend___imFirstObject(v11, v16, v17);
    }

    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

LABEL_20:

  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

id sub_1A8251638(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v11 = objc_msgSend_activeAccountsForService_(v7, v10, v8);
  if (objc_msgSend_count(v11, v12, v13))
  {
    if (objc_msgSend_length(v9, v14, v15))
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v18 = v11;
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v41, v45, 16);
      if (v20)
      {
        v23 = v20;
        v24 = *v42;
        v39 = v8;
        v40 = v7;
        v38 = a4;
        while (2)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v42 != v24)
            {
              objc_enumerationMutation(v18);
            }

            v26 = *(*(&v41 + 1) + 8 * i);
            v27 = objc_msgSend_strippedLogin(v26, v21, v22);
            if (objc_msgSend_isEqualToIgnoringCase_(v27, v28, v9))
            {

LABEL_17:
              if (v38)
              {
                *v38 = 1;
              }

              v35 = v26;

              v8 = v39;
              v7 = v40;
              goto LABEL_20;
            }

            v31 = objc_msgSend_aliases(v26, v29, v30);
            v33 = objc_msgSend_containsObject_(v31, v32, v9);

            if (v33)
            {
              goto LABEL_17;
            }
          }

          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v41, v45, 16);
          v8 = v39;
          v7 = v40;
          a4 = v38;
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v34 = sub_1A8251638(v7, v8, 0, a4);
    }

    else
    {
      v34 = objc_msgSend___imFirstObject(v11, v16, v17);
    }

    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

LABEL_20:

  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

id sub_1A82519EC(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_context(a1, a2, a3);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_senderHandle(v3, v4, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1A8251A48(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_context(a1, a2, a3);
  v6 = objc_msgSend_invitation(v3, v4, v5);

  return v6;
}

uint64_t sub_1A8251EAC(int a1)
{
  if ((a1 + 1) > 6)
  {
    return 1;
  }

  else
  {
    return qword_1A84FFE58[a1 + 1];
  }
}

id sub_1A8252004()
{
  result = [objc_allocWithZone(IMKeyTransparencyController) init];
  qword_1EB2E47A8 = result;
  return result;
}

id sub_1A825204C()
{
  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_1A8252038(MEMORY[0x1E69E7CC0]);
  v3 = sub_1A8250864(v1);
  sub_1A83EA2FC(&qword_1EB2E87B8, &qword_1A8509758);
  v4 = swift_allocObject();
  *(v4 + 40) = 0;
  *(v4 + 16) = 0;
  *&v0[OBJC_IVAR___IMKeyTransparencyController_state] = v4;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DB4F0]) initWithApplication_];
  *&v0[OBJC_IVAR___IMKeyTransparencyController_verifier] = v5;
  v12.receiver = v0;
  v12.super_class = IMKeyTransparencyController;
  v6 = objc_msgSendSuper2(&v12, sel_init);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 sharedController];
  v10 = [v9 listener];

  [v10 addHandler_];
  return v8;
}

uint64_t sub_1A82522A0()
{
  v0 = sub_1A84E5C9C();
  sub_1A82442B8(v0, qword_1EB2E47B0);
  sub_1A824431C(v0, qword_1EB2E47B0);
  sub_1A84E5C6C();
  return sub_1A84E5C8C();
}

void sub_1A825230C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 80);
  if (!v4)
  {
    v5 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], 0, a3);
    v6 = *(a1 + 32);
    v7 = *(v6 + 80);
    *(v6 + 80) = v5;

    v4 = *(*(a1 + 32) + 80);
  }

  v8 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v8, v4);
}

id sub_1A825246C(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v11 = objc_msgSend_connectedAccountsForService_(v7, v10, v8);
  if (objc_msgSend_count(v11, v12, v13))
  {
    if (objc_msgSend_length(v9, v14, v15))
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v18 = v11;
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v41, v45, 16);
      if (v20)
      {
        v23 = v20;
        v24 = *v42;
        v39 = v8;
        v40 = v7;
        v38 = a4;
        while (2)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v42 != v24)
            {
              objc_enumerationMutation(v18);
            }

            v26 = *(*(&v41 + 1) + 8 * i);
            v27 = objc_msgSend_strippedLogin(v26, v21, v22);
            if (objc_msgSend_isEqualToIgnoringCase_(v27, v28, v9))
            {

LABEL_17:
              if (v38)
              {
                *v38 = 1;
              }

              v35 = v26;

              v8 = v39;
              v7 = v40;
              goto LABEL_20;
            }

            v31 = objc_msgSend_aliases(v26, v29, v30);
            v33 = objc_msgSend_containsObject_(v31, v32, v9);

            if (v33)
            {
              goto LABEL_17;
            }
          }

          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v41, v45, 16);
          v8 = v39;
          v7 = v40;
          a4 = v38;
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v34 = sub_1A825246C(v7, v8, 0, a4);
    }

    else
    {
      v34 = objc_msgSend___imFirstObject(v11, v16, v17);
    }

    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

LABEL_20:

  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

void *_CreateIMMessageFromIMMessageItemDictionary(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v8 = a2;
  if (v8 && objc_msgSend_count(v5, v6, v7))
  {
    v10 = objc_alloc(objc_msgSend_classForMessageItemDictionary_(MEMORY[0x1E69A80E0], v9, v5));
    v12 = objc_msgSend_initWithDictionary_(v10, v11, v5);
    _ConfigureContextForIMItem(v12, v8, a3);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_1A8253418(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A82533ECLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A82534F8()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v20 - v3;
  if ([v0 chatStyle] != 45)
  {
    return;
  }

  v5 = [v0 participants];
  sub_1A8253D64();
  v6 = sub_1A84E5FFC();

  v7 = v6 >> 62 ? sub_1A84E654C() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v7 != 1)
  {
    return;
  }

  v8 = [v0 participants];
  v9 = sub_1A84E5FFC();

  if (v9 >> 62)
  {
    if (sub_1A84E654C())
    {
      goto LABEL_7;
    }

LABEL_25:

    return;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_25;
  }

LABEL_7:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1AC56AF80](0, v9);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v10 = *(v9 + 32);
  }

  v21 = v10;

  v11 = [v21 ID];
  if (!v11)
  {
    sub_1A84E5DBC();
    v11 = sub_1A84E5D8C();
  }

  v12 = [v11 __im_isChatBotPatterned];

  if (v12)
  {
    v13 = [v0 brandInfo];
    if (v13)
    {

      v14 = [v0 brandLogoURL];
      if (v14)
      {
        v15 = v14;
        sub_1A84E554C();

        v16 = sub_1A84E558C();
        (*(*(v16 - 8) + 56))(v4, 0, 1, v16);
        sub_1A824B2D4(v4, &qword_1EB2E7068, &unk_1A8501EB0);
        v17 = [v0 lastAddressedSIMID];
        [v21 fetchBrandInfoIfNecessaryWithSimID_];
LABEL_21:

        return;
      }

      v19 = sub_1A84E558C();
      (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
      sub_1A824B2D4(v4, &qword_1EB2E7068, &unk_1A8501EB0);
    }

    v17 = [v0 lastAddressedSIMID];
    [v21 forceFetchChatBotBrandInfoWithSimID_];
    goto LABEL_21;
  }

  v18 = v21;
}

uint64_t sub_1A82538EC()
{
  qword_1EB2EA100 = os_log_create("com.apple.Messages", "ChatItemUpdater");

  return MEMORY[0x1EEE66BB8]();
}

id sub_1A8253970(void *a1, uint64_t a2, Class *a3)
{
  v4 = a1;
  v5 = [v4 allChatProperties];
  if (v5 && (v6 = v5, v7 = sub_1A84E5D3C(), v6, v8 = sub_1A8253A88(v7), , v8))
  {
    v9 = objc_allocWithZone(*a3);
    v10 = sub_1A84E5D2C();

    v11 = [v9 initWithDictionary_];

    v4 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

unint64_t sub_1A8253A88(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A83EA2FC(&qword_1EB2E66B8, &qword_1A8500968);
    v2 = sub_1A84E657C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
        sub_1A824B334(*(a1 + 48) + 40 * v14, v29);
        sub_1A8244F40(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_1A824B334(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1A8244F40(v27 + 8, v22);
        sub_1A824B2D4(v26, &unk_1EB2E8EA0, &unk_1A850B550);
        v23 = v20;
        sub_1A8243DDC(v22, v24);
        v15 = v23;
        sub_1A8243DDC(v24, v25);
        sub_1A8243DDC(v25, &v23);
        result = sub_1A824B390(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_1A8244788(v12);
          result = sub_1A8243DDC(&v23, v12);
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
          result = sub_1A8243DDC(&v23, (v2[7] + 32 * result));
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

      sub_1A824B2D4(v26, &unk_1EB2E8EA0, &unk_1A850B550);

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

unint64_t sub_1A8253D64()
{
  result = qword_1EB2E4760;
  if (!qword_1EB2E4760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2E4760);
  }

  return result;
}

void _IMItemsControllerSortItems(const __CFArray *a1)
{
  v2.length = CFArrayGetCount(a1);
  v2.location = 0;

  CFArraySortValues(a1, v2, sub_1A8254394, 0);
}

uint64_t sub_1A8254134(void *a1, void *a2, uint64_t a3, int a4)
{
  v6 = a1;
  v7 = a2;
  v10 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v8, v9);
  v13 = objc_msgSend_stewieEnabled(v10, v11, v12);

  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v6;
        v15 = v7;
        if (objc_msgSend_isStewie(v14, v16, v17) && objc_msgSend_isStewie(v15, v18, v19))
        {
          v20 = v14;
          v21 = v15;
          v24 = objc_msgSend_stewieConversationUUID(v20, v22, v23);
          v27 = objc_msgSend_stewieConversationUUID(v21, v25, v26);
          isEqual = objc_msgSend_isEqual_(v24, v28, v27);

          if (isEqual && (v32 = objc_msgSend_stewieSequenceNumber(v20, v30, v31), v32 != objc_msgSend_stewieSequenceNumber(v21, v33, v34)))
          {
            v55 = objc_msgSend_stewieSequenceNumber(v20, v35, v36);
            v58 = v55 > objc_msgSend_stewieSequenceNumber(v21, v56, v57);
            v61 = objc_msgSend_stewieSequenceNumber(v20, v59, v60);
            v37 = v58 - (v61 < objc_msgSend_stewieSequenceNumber(v21, v62, v63));
          }

          else
          {
            v37 = Testing_IMItemOrderMessageByDate_0(v20, v21);
          }

          goto LABEL_25;
        }
      }
    }
  }

  if (a4)
  {
    v38 = Testing_IMItemOrderMessageByDate_0(v6, v7);
  }

  else
  {
    v38 = IMItemCompareSortIDs(v6, v7);
  }

  v37 = v38;
  if (!v38)
  {
    isIncomingTypingOrCancelTypingMessage = objc_msgSend_isIncomingTypingOrCancelTypingMessage(v6, v39, v40);
    v37 = isIncomingTypingOrCancelTypingMessage - objc_msgSend_isIncomingTypingOrCancelTypingMessage(v7, v42, v43);
    if (!v37)
    {
      v46 = objc_msgSend_consumedSessionPayloads(v6, v44, v45);
      if (v46 && (v49 = v46, objc_msgSend_consumedSessionPayloads(v7, v47, v48), v50 = objc_claimAutoreleasedReturnValue(), v50, v49, !v50))
      {
        v37 = 1;
      }

      else
      {
        v51 = objc_msgSend_consumedSessionPayloads(v6, v47, v48);
        if (v51)
        {

          v37 = 0;
        }

        else
        {
          v54 = objc_msgSend_consumedSessionPayloads(v7, v52, v53);

          if (v54)
          {
            v37 = -1;
          }

          else
          {
            v37 = 0;
          }
        }
      }
    }
  }

LABEL_25:

  return v37;
}

uint64_t Testing_IMItemOrderMessageByDate_0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!objc_msgSend_messageID(v3, v5, v6) || !objc_msgSend_messageID(v4, v7, v8))
  {
    goto LABEL_8;
  }

  v11 = objc_msgSend_time(v3, v9, v10);
  v14 = objc_msgSend_time(v4, v12, v13);
  v16 = objc_msgSend_compare_(v11, v15, v14);

  if (v16 == 1)
  {
    goto LABEL_9;
  }

  if (!v16)
  {
LABEL_8:
    v16 = sub_1A8254B84(v3, v4);
    goto LABEL_9;
  }

  if (v16 != -1)
  {
    v16 = 0;
  }

LABEL_9:

  return v16;
}

void _IMItemsControllerReplaceItems(void *a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a1;
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = objc_msgSend_array(MEMORY[0x1E695DEC8], v5, v6);
  }

  v11 = v8;
  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = objc_msgSend_array(MEMORY[0x1E695DEC8], v9, v10);
  }

  v38 = v11;
  v14 = objc_msgSend_differenceFromArray_withOptions_usingEquivalenceTest_(v12, v13, v11, 0, &unk_1F1B6F2A0, v12);
  v43 = 0;
  v44 = 0;
  IMIndexesFromOrderedCollectionDifference(v14, &v44, &v43);
  v15 = v44;
  v16 = v43;
  v18 = objc_msgSend_objectsAtIndexes_(a2, v17, v16);
  objc_msgSend_removeObjectsAtIndexes_(a2, v19, v16);
  v21 = objc_msgSend_objectsAtIndexes_(a3, v20, v15);
  objc_msgSend_insertObjects_atIndexes_(a2, v22, v21, v15);

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v23 = v18;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v39, v45, 16);
  if (v25)
  {
    v26 = v25;
    v27 = *v40;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v40 != v27)
        {
          objc_enumerationMutation(v23);
        }

        v29 = *(*(&v39 + 1) + 8 * i);
        if (_IMItemsControllerIndexOfExistingItem(a2, v29, 0) == -1 && sub_1A8392DC4(a2, -1, v29, 0))
        {
          v31 = _IMItemsControllerInsertionIndexForItem(a2, v29);
          CFArrayInsertValueAtIndex(a2, v31, v29);
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v30, &v39, v45, 16);
    }

    while (v26);
  }

  Count = CFArrayGetCount(a2);
  if (Count)
  {
    v33 = Count - 1;
    do
    {
      v34 = CFArrayGetValueAtIndex(a2, v33);
      objc_msgSend__didReplaceItem_oldItem_idx_(v7, v35, a2, v34, v33);

      --v33;
    }

    while (v33 != -1);
  }

  v36 = *MEMORY[0x1E69E9840];
}

BOOL sub_1A82546E8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (sub_1A8254760(v4, v5))
  {
    v6 = sub_1A8254134(v4, v5, 0, 1) == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1A8254760(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  Class = object_getClass(v3);
  if (Class == object_getClass(v4))
  {
    v6 = sub_1A82547D8(v3, v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1A82547D8(void *a1, void *a2)
{
  v79[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v6 = a2;
  if (v3 == v6)
  {
    v16 = 1;
    goto LABEL_24;
  }

  isTypingOrCancelTypingMessage = objc_msgSend_isTypingOrCancelTypingMessage(v3, v4, v5);
  v10 = objc_msgSend_isTypingOrCancelTypingMessage(v6, v8, v9);
  if (!isTypingOrCancelTypingMessage || !v10)
  {
    v17 = MEMORY[0x1E695DF70];
    v79[0] = *MEMORY[0x1E69A7AF8];
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v11, v79, 1);
    v20 = objc_msgSend_arrayWithArray_(v17, v19, v18);

    v22 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFA8], v21, MEMORY[0x1E695E0F0]);
    objc_msgSend_addObject_(v22, v23, *MEMORY[0x1E69A7AE0]);
    objc_msgSend_addObject_(v22, v24, *MEMORY[0x1E69A7AD8]);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_22;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_22;
    }

    v25 = v3;
    v26 = v6;
    v29 = objc_msgSend_service(v25, v27, v28);
    if (objc_msgSend_containsObject_(v20, v30, v29))
    {
    }

    else
    {
      v35 = objc_msgSend_service(v26, v31, v32);
      v37 = objc_msgSend_containsObject_(v20, v36, v35);

      if (!v37)
      {
LABEL_15:
        v50 = objc_msgSend_service(v25, v33, v34);
        if (objc_msgSend_containsObject_(v22, v51, v50))
        {
          v54 = objc_msgSend_service(v26, v52, v53);
          v56 = objc_msgSend_containsObject_(v22, v55, v54);

          if (v56)
          {
            v38 = objc_msgSend_guid(v25, v57, v58);
            v41 = objc_msgSend_originalGUID(v26, v59, v60);
            if (objc_msgSend_isEqualToString_(v38, v61, v41))
            {
              goto LABEL_12;
            }

            v64 = objc_msgSend_guid(v26, v62, v63);
            v67 = objc_msgSend_originalGUID(v25, v65, v66);
            isEqualToString = objc_msgSend_isEqualToString_(v64, v68, v67);

            if (isEqualToString)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
        }

LABEL_22:
        v69 = v6;
        v25 = objc_msgSend_guid(v3, v70, v71);
        v26 = objc_msgSend_guid(v69, v72, v73);

        v16 = objc_msgSend_isEqualToString_(v25, v74, v26);
        goto LABEL_23;
      }
    }

    v38 = objc_msgSend_guid(v25, v33, v34);
    v41 = objc_msgSend_fallbackHash(v26, v39, v40);
    if (objc_msgSend_isEqualToString_(v38, v42, v41))
    {
LABEL_12:

LABEL_14:
      v16 = 1;
LABEL_23:

      goto LABEL_24;
    }

    v45 = objc_msgSend_guid(v26, v43, v44);
    v48 = objc_msgSend_fallbackHash(v25, v46, v47);
    v77 = objc_msgSend_isEqualToString_(v45, v49, v48);

    if (v77)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v13 = objc_msgSend_isFromMe(v3, v11, v12);
  v16 = v13 ^ objc_msgSend_isFromMe(v6, v14, v15) ^ 1;
LABEL_24:

  v75 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t sub_1A8254B84(void *a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_messageID(a1, v4, v5) - 1;
  v9 = objc_msgSend_messageID(v3, v7, v8);

  return (__PAIR128__(v6 > v9 - 1, v6) - (v9 - 1)) >> 64;
}

uint64_t sub_1A8254BE4(void *a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69A8138];
  v5 = objc_msgSend_flags(a1, a2, a3);
  objc_msgSend_hasEditedParts(a1, v6, v7);

  return MEMORY[0x1EEE66B58](v4, sel_isIncomingTypingOrCancelTypingMessage_isEditedMessage_, v5);
}

void IMIndexesFromOrderedCollectionDifference(void *a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v8 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v6, v7);
  v11 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v9, v10);
  v14 = objc_msgSend_insertions(v5, v12, v13);
  v17 = objc_msgSend_removals(v5, v15, v16);
  if (objc_msgSend_hasChanges(v5, v18, v19))
  {
    v43 = a3;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v20 = v14;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v48, v53, 16);
    if (v22)
    {
      v25 = v22;
      v26 = *v49;
      do
      {
        v27 = 0;
        do
        {
          if (*v49 != v26)
          {
            objc_enumerationMutation(v20);
          }

          v28 = objc_msgSend_index(*(*(&v48 + 1) + 8 * v27), v23, v24);
          objc_msgSend_addIndex_(v8, v29, v28);
          ++v27;
        }

        while (v25 != v27);
        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v48, v53, 16);
      }

      while (v25);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v30 = v17;
    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v44, v52, 16);
    if (v32)
    {
      v35 = v32;
      v36 = *v45;
      do
      {
        v37 = 0;
        do
        {
          if (*v45 != v36)
          {
            objc_enumerationMutation(v30);
          }

          v38 = objc_msgSend_index(*(*(&v44 + 1) + 8 * v37), v33, v34);
          objc_msgSend_addIndex_(v11, v39, v38);
          ++v37;
        }

        while (v35 != v37);
        v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v44, v52, 16);
      }

      while (v35);
    }

    a3 = v43;
  }

  v40 = v8;
  *a2 = v8;
  v41 = v11;
  *a3 = v11;

  v42 = *MEMORY[0x1E69E9840];
}

id _IMItemsControllerGetTypingMessage(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
LABEL_7:
    v4 = 0;
  }

  else
  {
    v3 = Count + 1;
    while (1)
    {
      v4 = CFArrayGetValueAtIndex(a1, v3 - 2);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend_isTypingMessage(v4, v5, v6))
      {
        break;
      }

      if (--v3 <= 1)
      {
        goto LABEL_7;
      }
    }
  }

  return v4;
}

uint64_t IMIsOscarEnabled(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = qword_1ED7674A0;
  if (qword_1ED7674A0 == -1)
  {
    v4 = objc_msgSend_sharedInstance(IMAccountController, a2, a3);
    qword_1ED7674A0 = objc_msgSend_activeAccountsAreEligibleForiMessageJunk(v4, v5, v6);

    objc_msgSend_setSupportsiMessageJunk_(MEMORY[0x1E69A8020], v7, qword_1ED7674A0 == 1);
    v3 = qword_1ED7674A0;
  }

  if (v3 == 1)
  {
    return 1;
  }

  v9 = objc_msgSend_sharedRegistry(IMChatRegistry, a2, a3);
  v12 = objc_msgSend_filterediMessageChatsExist(v9, v10, v11);

  return v12;
}

uint64_t sub_1A8255A40()
{
  result = MEMORY[0x1AC56C550](@"FTDeviceSupport", @"FTServices");
  qword_1ED767680 = result;
  return result;
}

void sub_1A8255B88(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "TUConversationManager registered", buf, 2u);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8360D60;
  block[3] = &unk_1E780FCB0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void sub_1A8255F88(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1A8255DA0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A8256084()
{
  qword_1EB2E90C8 = objc_alloc_init(IMTextInputCryptographer);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A82561EC()
{
  qword_1ED767668 = objc_alloc_init(IMBalloonPluginManager);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A8256FFC()
{
  qword_1ED767648 = os_log_create("com.apple.Messages", "IMBalloonPluginManager");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A82572C8()
{
  qword_1ED7678D8 = objc_alloc_init(IMChorosMonitor);

  return MEMORY[0x1EEE66BB8]();
}

id sub_1A82574B8(uint64_t a1, void *a2)
{
  v2 = a2;
  v5 = objc_msgSend_lastPathComponent(v2, v3, v4);
  hasSuffix = objc_msgSend_hasSuffix_(v5, v6, @".bundle");

  if (hasSuffix)
  {
    v9 = objc_msgSend_bundleWithURL_(MEMORY[0x1E696AAE8], v8, v2);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1A8257644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8257768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8257A60(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  if (!qword_1EB2E9FC0)
  {
    v4 = *(a1 + 32);
    v5 = objc_msgSend__createSingleton__im(v4, v2, v3);
    objc_msgSend___setSingleton__im_(v4, v6, v5);
  }

  objc_sync_exit(obj);
}

void sub_1A8257D94(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DFA8]);
  v14 = objc_msgSend_initWithObjects_(v2, v3, @"com.apple.ExtensionTester.NullMessagesAppExtension", @"com.apple.hellbender.messagesextension", @"com.apple.PPTPong.MessagesExtension", @"com.apple.PPTTimeLabel.MessagesExtension", 0);
  if (IMIsRunningInCameraClient())
  {
    objc_msgSend_addObject_(v14, v4, *MEMORY[0x1E69A68F8]);
  }

  if (objc_msgSend__shouldAddSafetyMonitorToBlockList(*(a1 + 32), v4, v5))
  {
    objc_msgSend_addObject_(v14, v6, *MEMORY[0x1E69A6930]);
  }

  if (objc_msgSend__shouldAddFindMyToBlockList(*(a1 + 32), v6, v7))
  {
    objc_msgSend_addObject_(v14, v8, *MEMORY[0x1E69A6938]);
  }

  if (objc_msgSend__shouldAddGenPlaygroundToBlockList(*(a1 + 32), v8, v9))
  {
    objc_msgSend_addObject_(v14, v10, *MEMORY[0x1E69A69D0]);
  }

  v12 = objc_msgSend_copy(v14, v10, v11);
  v13 = qword_1ED767658;
  qword_1ED767658 = v12;
}

id sub_1A8258434(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_context(a1, a2, a3);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_message(v4, v5, v6);

    if (!v8)
    {
      v11 = objc_msgSend_senderHandle(v7, v9, v10);
      v14 = objc_msgSend_otherHandle(v7, v12, v13);
      v16 = objc_msgSend_messageFromIMMessageItem_sender_subject_(IMMessage, v15, a1, v11, v14);
      objc_msgSend_setMessage_(v7, v17, v16);
    }

    v18 = objc_msgSend_message(v7, v9, v10);
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_msgSend_sortID(a1, v5, v6);
  objc_msgSend_setSortID_(v18, v20, v19);

  return v18;
}

id _IMBestAccountForIMItem(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v17 = objc_msgSend_accountID(v9, v13, v14);
  v18 = 0x1E780D000uLL;
  if (!v17 || (objc_msgSend_sharedInstance(IMAccountController, v15, v16), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend_accountForUniqueID_(v19, v20, v17), v21 = objc_claimAutoreleasedReturnValue(), v19, !v21))
  {
    v22 = objc_msgSend_service(v9, v15, v16);
    v24 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v23, v22);
    v27 = objc_msgSend_service(v12, v25, v26);

    if (v27 == v24)
    {
      if (a5)
      {
        v33 = v12;
        *a5 = v12;
      }

      v21 = v12;
    }

    else
    {
      v30 = objc_msgSend_sharedInstance(IMAccountController, v28, v29);
      v21 = objc_msgSend_bestAccountForService_(v30, v31, v24);

      if (a5)
      {
        v32 = v21;
        *a5 = v21;
      }

      v18 = 0x1E780D000;
    }

    if (!v21)
    {
      v36 = objc_msgSend_account(v10, v34, v35);
      if (v36)
      {
        v21 = v36;
      }

      else
      {
        v39 = objc_msgSend_sharedInstance(*(v18 + 1960), v37, v38);
        v21 = objc_msgSend_accountForUniqueID_(v39, v40, v11);

        if (!v21)
        {
          v43 = objc_msgSend_sharedInstance(*(v18 + 1960), v41, v42);
          v21 = objc_msgSend_bestAccountForService_(v43, v44, 0);
        }
      }
    }
  }

  return v21;
}

uint64_t _CreateIMMessageFromIMItem(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v9 = v6;
  v10 = 0;
  if (v5 && v6)
  {
    if (!objc_msgSend_type(v5, v7, v8))
    {
      if (objc_msgSend_isFromMe(v5, v11, v12))
      {
        v13 = objc_msgSend_loginIMHandle(v9, v20, v21);
        v24 = objc_msgSend_handle(v5, v22, v23);
        v26 = objc_msgSend_imHandleWithID_alreadyCanonical_(v9, v25, v24, a3);
      }

      else
      {
        v31 = objc_msgSend_sender(v5, v20, v21);
        v13 = objc_msgSend_imHandleWithID_alreadyCanonical_(v9, v32, v31, a3);

        v26 = objc_msgSend_loginIMHandle(v9, v33, v34);
      }

      objc_msgSend__updateContextWithSenderHandle_otherHandle_(v5, v27, v13, v26);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37 = v5;
        if ((objc_msgSend_hasUnseenMention(v37, v38, v39) & 1) == 0)
        {
          v42 = objc_msgSend_message(v37, v40, v41);
          objc_msgSend_setHasMention_(v42, v43, 0);
        }
      }

      v10 = objc_msgSend_message(v5, v35, v36);
      goto LABEL_21;
    }

    v13 = objc_msgSend_sender(v5, v11, v12);
    if (objc_msgSend_type(v5, v14, v15) == 6)
    {
      objc_msgSend_handle(v5, v16, v17);
    }

    else
    {
      objc_msgSend_otherHandle(v5, v16, v17);
    }
    v18 = ;
    v26 = v18;
    if (v13)
    {
      v28 = objc_msgSend_imHandleWithID_alreadyCanonical_(v9, v19, v13, 1);
      if (v26)
      {
LABEL_11:
        v29 = objc_msgSend_imHandleWithID_alreadyCanonical_(v9, v19, v26, 1);
        objc_msgSend__updateContextWithSenderHandle_otherHandle_(v5, v30, v28, v29);
LABEL_14:

        v10 = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      v28 = 0;
      if (v18)
      {
        goto LABEL_11;
      }
    }

    v29 = 0;
    objc_msgSend__updateContextWithSenderHandle_otherHandle_(v5, v19, v28, 0);
    goto LABEL_14;
  }

LABEL_22:

  return v10;
}

void sub_1A8258B70(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v5 = *(a1 + 32);
  v8 = objc_msgSend_startDate(a3, v6, v7);
  objc_msgSend_timeIntervalSinceDate_(v5, v9, v8);
  v11 = v10;

  if (v11 > 10.0)
  {
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    if (v13)
    {
      v14 = v13;
      v15 = *(v12 + 40);
      *(v12 + 40) = v14;
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v17 = *(*(a1 + 40) + 8);
      v15 = *(v17 + 40);
      *(v17 + 40) = v16;
    }

    objc_msgSend_addObject_(*(*(*(a1 + 40) + 8) + 40), v18, v19);
  }
}

uint64_t sub_1A82591E0()
{
  qword_1ED7678E0 = objc_alloc_init(IMDowntimeController);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A825967C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v5 = objc_msgSend_fetchEmergencyNumbersSetWithProviderManager_(v3, v4, *(*(a1 + 32) + 40));
  v8 = sub_1A8259F60(v5, v6, v7);
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v9 = *(a1 + 32);
  v10 = *(v9 + 24);
  *(v9 + 24) = v5;
  v14 = v5;

  v11 = *(a1 + 32);
  v12 = *(v11 + 16);
  *(v11 + 16) = v8;
  v13 = v8;

  os_unfair_lock_unlock((*(a1 + 32) + 8));
}

void sub_1A82597A0(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E6999F48]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A834BEC0;
  v9[3] = &unk_1E780FDC8;
  objc_copyWeak(&v10, (a1 + 32));
  v4 = objc_msgSend_initWithPolicyChangeHandler_(v2, v3, v9);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A825F4A0;
  block[3] = &unk_1E7810450;
  objc_copyWeak(&v8, (a1 + 32));
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
}

id IMHashOfHashesForStringArray(void *a1, const char *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_msgSend_sortedArrayUsingComparator_(a1, a2, &unk_1F1B6EEC0);
    v3 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v4 = v2;
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v25, v29, 16);
    if (v6)
    {
      v9 = v6;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v4);
          }

          v12 = MEMORY[0x1E696AEC0];
          v13 = objc_msgSend_hash(*(*(&v25 + 1) + 8 * i), v7, v8);
          v15 = objc_msgSend_stringWithFormat_(v12, v14, @"%tu", v13);;
          objc_msgSend_appendString_(v3, v16, v15);
        }

        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v25, v29, 16);
      }

      while (v9);
    }

    v17 = MEMORY[0x1E696AEC0];
    v20 = objc_msgSend_hash(v3, v18, v19);
    v22 = objc_msgSend_stringWithFormat_(v17, v21, @"%tu", v20);
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

uint64_t sub_1A8259A90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259AA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259AB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259AC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259AD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259AE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259AF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259B00(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259B10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259B20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259B30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259B40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259B50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259B60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259B70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259B80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259B90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259BA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259BB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259BC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259BD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259BE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259BF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259C00(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259C10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259C20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259C30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259C40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259C50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259C60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259C70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259C80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259C90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259CA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259CB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259CC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259CD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A8259E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1A8259F60(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_isContactLimitsFeatureEnabled(IMDowntimeController, a2, a3))
  {
    if (qword_1ED7676C0 != -1)
    {
      sub_1A8259FC0();
    }

    v3 = qword_1ED7676C8;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1A8259FD4()
{
  qword_1ED767700 = MEMORY[0x1AC56C550](@"STConversation", @"ScreenTimeCore");
  v0 = MEMORY[0x1AC56C550](@"STConversationContext", @"ScreenTimeCore");
  qword_1ED7676F8 = v0;
  if (qword_1ED767700)
  {
    if (v0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v1 = MEMORY[0x1E696AEC0];
  v2 = IMFileLocationTrimFileName();
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v3, &stru_1F1B76F98);
  v6 = objc_msgSend_stringWithFormat_(v1, v5, @"Unexpected nil '%@' in %s at %s:%d. %@", @"IMSTConversationClass", "STConversation *_createSTConversation(void)_block_invoke", v2, 242, v4);

  v7 = IMGetAssertionFailureHandler();
  if (v7)
  {
    v7(v6);
  }

  else
  {
    v10 = objc_msgSend_warning(MEMORY[0x1E69A6138], v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1AB0();
    }
  }

  if (!qword_1ED7676F8)
  {
LABEL_10:
    v11 = MEMORY[0x1E696AEC0];
    v12 = IMFileLocationTrimFileName();
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, &stru_1F1B76F98);
    v16 = objc_msgSend_stringWithFormat_(v11, v15, @"Unexpected nil '%@' in %s at %s:%d. %@", @"IMSTConversationContextClass", "STConversation *_createSTConversation(void)_block_invoke", v12, 243, v14);

    v17 = IMGetAssertionFailureHandler();
    if (v17)
    {
      v17(v16);
    }

    else
    {
      v20 = objc_msgSend_warning(MEMORY[0x1E69A6138], v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E1AB0();
      }
    }
  }

LABEL_16:
  qword_1ED7676F0 = MEMORY[0x1AC56C560]("STManagementStateStateDidChange", @"ScreenTimeCore");
  if (!qword_1ED7676F0)
  {
    v21 = MEMORY[0x1E696AEC0];
    v22 = IMFileLocationTrimFileName();
    v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v23, &stru_1F1B76F98);
    v26 = objc_msgSend_stringWithFormat_(v21, v25, @"Unexpected nil '%@' in %s at %s:%d. %@", @"IMSTManagementStateStateDidChangeNotificationName", "STConversation *_createSTConversation(void)_block_invoke", v22, 245, v24);

    v27 = IMGetAssertionFailureHandler();
    if (v27)
    {
      v27(v26);
    }

    else
    {
      v30 = objc_msgSend_warning(MEMORY[0x1E69A6138], v28, v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E1AB0();
      }
    }
  }

  v31 = IMIsRunningInMessages();
  v32 = [qword_1ED767700 alloc];
  if (v31)
  {
    inited = objc_msgSend_initWithBundleIdentifier_(v32, v33, @"com.apple.MobileSMS");
  }

  else
  {
    inited = objc_msgSend_initSynchronouslyWithBundleIdentifier_(v32, v33, @"com.apple.MobileSMS");
  }

  v35 = qword_1ED7676C8;
  qword_1ED7676C8 = inited;
}

uint64_t sub_1A825BDCC(const char *a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v7 = sub_1A84E5C9C();
  sub_1A824431C(v7, qword_1ED7679F8);
  v8 = sub_1A84E5C7C();
  v9 = sub_1A84E617C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136315138;
    v12 = NSStringFromSelector(a1);
    v13 = sub_1A84E5DBC();
    v15 = v14;

    v16 = sub_1A82446BC(v13, v15, v19);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_1A823F000, v8, v9, "Processing message from daemon %s", v10, 0xCu);
    sub_1A8244788(v11);
    MEMORY[0x1AC56D3F0](v11, -1, -1);
    MEMORY[0x1AC56D3F0](v10, -1, -1);
  }

  v17 = *(a4 + OBJC_IVAR___IMDaemonConnection_listener);
  v19[3] = swift_getObjectType();
  v19[0] = v17;
  swift_unknownObjectRetain();
  a2(v19);
  return sub_1A8244788(v19);
}

uint64_t sub_1A825C0DC(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    *(*(result + 32) + 12) = 1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_1A825C334(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_sharedController(IMDaemonController, a2, a3);
  isConnected = objc_msgSend_isConnected(v3, v4, v5);

  if (isConnected)
  {
    v14 = objc_msgSend_sharedController(IMDaemonController, v7, v8);
    v11 = objc_msgSend_remoteDaemon(v14, v9, v10);
    objc_msgSend_broadcastCloudKitStateAfterFetchingAccountStatus(v11, v12, v13);
  }
}

uint64_t sub_1A825C49C()
{
  qword_1ED767770 = os_log_create("com.apple.Messages", "IMCloudKitHooks");

  return MEMORY[0x1EEE66BB8]();
}

id sub_1A825C5D0(int a1, uint64_t a2)
{
  v3 = v2;
  if (!a2)
  {
    if (qword_1EB2E46B8 != -1)
    {
      swift_once();
    }

    v6 = sub_1A84E5C9C();
    sub_1A824431C(v6, qword_1EB2FEFF8);
    v7 = sub_1A84E5C7C();
    v8 = sub_1A84E619C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A823F000, v7, v8, "state dictionary is nil when creating CloudKitSyncState", v9, 2u);
      MEMORY[0x1AC56D3F0](v9, -1, -1);
    }
  }

  v3[OBJC_IVAR___IMCloudKitSyncState_accountEnabled] = a1 & 1;
  v10 = *MEMORY[0x1E69A6D00];
  v11 = sub_1A84E5DBC();
  if (a2)
  {
    *&v199 = v11;
    *(&v199 + 1) = v12;
    sub_1A84E641C();
    if (*(a2 + 16) && (v13 = sub_1A8250C0C(v197), (v14 & 1) != 0))
    {
      sub_1A8244F40(*(a2 + 56) + 32 * v13, &v199);
      sub_1A8250D18(v197);
    }

    else
    {
      sub_1A8250D18(v197);
      v199 = 0u;
      v200 = 0u;
    }

    sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
    v15 = swift_dynamicCast();
    v16 = v195;
    if (!v15)
    {
      v16 = 0;
    }
  }

  else
  {

    v16 = 0;
  }

  *&v3[OBJC_IVAR___IMCloudKitSyncState_accountStatus] = v16;
  v17 = *MEMORY[0x1E69A6D58];
  v18 = sub_1A84E5DBC();
  if (a2)
  {
    *&v199 = v18;
    *(&v199 + 1) = v19;
    sub_1A84E641C();
    if (*(a2 + 16) && (v20 = sub_1A8250C0C(v197), (v21 & 1) != 0))
    {
      sub_1A8244F40(*(a2 + 56) + 32 * v20, &v199);
      sub_1A8250D18(v197);
    }

    else
    {
      sub_1A8250D18(v197);
      v199 = 0u;
      v200 = 0u;
    }

    sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
    v22 = swift_dynamicCast() & v195;
  }

  else
  {

    v22 = 0;
  }

  v3[OBJC_IVAR___IMCloudKitSyncState_hasExited] = v22;
  v23 = *MEMORY[0x1E69A6D18];
  v24 = sub_1A84E5DBC();
  v194 = a1;
  if (a2)
  {
    *&v199 = v24;
    *(&v199 + 1) = v25;
    sub_1A84E641C();
    if (*(a2 + 16) && (v26 = sub_1A8250C0C(v197), (v27 & 1) != 0))
    {
      sub_1A8244F40(*(a2 + 56) + 32 * v26, &v199);
      sub_1A8250D18(v197);
    }

    else
    {
      sub_1A8250D18(v197);
      v199 = 0u;
      v200 = 0u;
    }

    sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
    sub_1A83EA2FC(&qword_1EB2E7040, &unk_1A85013C0);
    if (swift_dynamicCast())
    {
      v28 = v195;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {

    v28 = 0;
  }

  *&v3[OBJC_IVAR___IMCloudKitSyncState__exitDate] = v28;
  v29 = *MEMORY[0x1E69A6DC8];
  v30 = sub_1A84E5DBC();
  v32 = MEMORY[0x1E69A6D88];
  if (!a2)
  {
    v47 = v28;

    v193 = 0;
    *&v3[OBJC_IVAR___IMCloudKitSyncState__lastSyncDate] = 0;
    goto LABEL_49;
  }

  *&v199 = v30;
  *(&v199 + 1) = v31;
  v33 = v28;
  sub_1A84E641C();
  if (*(a2 + 16) && (v34 = sub_1A8250C0C(v197), (v35 & 1) != 0))
  {
    sub_1A8244F40(*(a2 + 56) + 32 * v34, &v199);
    sub_1A8250D18(v197);
  }

  else
  {
    sub_1A8250D18(v197);
    v199 = 0u;
    v200 = 0u;
  }

  sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  sub_1A83EA2FC(&qword_1EB2E7040, &unk_1A85013C0);
  if (swift_dynamicCast())
  {
    v36 = v195;
  }

  else
  {
    v36 = 0;
  }

  *&v3[OBJC_IVAR___IMCloudKitSyncState__lastSyncDate] = v36;
  v37 = *MEMORY[0x1E69A6D08];
  v195 = sub_1A84E5DBC();
  v196 = v38;
  v193 = v36;
  v39 = v36;

  sub_1A84E641C();
  if (!*(a2 + 16) || (v40 = sub_1A8250C0C(v197), (v41 & 1) == 0))
  {

    sub_1A8250D18(v197);
LABEL_49:
    v199 = 0u;
    v200 = 0u;
    goto LABEL_50;
  }

  sub_1A8244F40(*(a2 + 56) + 32 * v40, &v199);
  sub_1A8250D18(v197);

  if (!*(&v200 + 1))
  {
LABEL_50:
    sub_1A824B2D4(&v199, &qword_1EB2E66B0, &qword_1A8500960);
    goto LABEL_51;
  }

  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  if (swift_dynamicCast())
  {
    v42 = v197[0];
    v43 = *MEMORY[0x1E69A6D30];
    *&v199 = sub_1A84E5DBC();
    *(&v199 + 1) = v44;
    sub_1A84E641C();
    if (*(v42 + 16) && (v45 = sub_1A8250C0C(v197), (v46 & 1) != 0))
    {
      sub_1A8244F40(*(v42 + 56) + 32 * v45, &v199);
      sub_1A8250D18(v197);
    }

    else
    {
      sub_1A8250D18(v197);
      v199 = 0u;
      v200 = 0u;
    }

    sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
    sub_1A83EA2FC(&qword_1EB2E7030, &qword_1A85013B0);
    if ((swift_dynamicCast() & 1) != 0 && (v196 & 1) == 0)
    {
      v138 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970_];
    }

    else
    {
      v138 = 0;
    }

    *&v3[OBJC_IVAR___IMCloudKitSyncState__lastFullSyncDate] = v138;
    v176 = *MEMORY[0x1E69A6D28];
    *&v199 = sub_1A84E5DBC();
    *(&v199 + 1) = v177;
    sub_1A84E641C();
    if (*(v42 + 16) && (v178 = sub_1A8250C0C(v197), (v179 & 1) != 0))
    {
      sub_1A8244F40(*(v42 + 56) + 32 * v178, &v199);
      sub_1A8250D18(v197);
    }

    else
    {
      sub_1A8250D18(v197);
      v199 = 0u;
      v200 = 0u;
    }

    if ((swift_dynamicCast() & 1) != 0 && (v196 & 1) == 0)
    {
      v180 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970_];
    }

    else
    {
      v180 = 0;
    }

    *&v3[OBJC_IVAR___IMCloudKitSyncState__lastFullPartialSyncDate] = v180;
    v181 = *MEMORY[0x1E69A6D48];
    *&v199 = sub_1A84E5DBC();
    *(&v199 + 1) = v182;
    sub_1A84E641C();
    if (*(v42 + 16) && (v183 = sub_1A8250C0C(v197), (v184 & 1) != 0))
    {
      sub_1A8244F40(*(v42 + 56) + 32 * v183, &v199);
      sub_1A8250D18(v197);
    }

    else
    {
      sub_1A8250D18(v197);
      v199 = 0u;
      v200 = 0u;
    }

    sub_1A83EA2FC(&qword_1EB2E7038, &qword_1A85013B8);
    if (swift_dynamicCast())
    {
      v185 = v195;
    }

    else
    {
      v185 = 0;
    }

    v186 = *MEMORY[0x1E69A6D38];
    *&v199 = sub_1A84E5DBC();
    *(&v199 + 1) = v187;
    sub_1A84E641C();
    if (*(v42 + 16) && (v188 = sub_1A8250C0C(v197), (v189 & 1) != 0))
    {
      sub_1A8244F40(*(v42 + 56) + 32 * v188, &v199);
      sub_1A8250D18(v197);
    }

    else
    {

      sub_1A8250D18(v197);
      v199 = 0u;
      v200 = 0u;
    }

    if (swift_dynamicCast())
    {
      v190 = v195;
    }

    else
    {
      v190 = 0;
    }

    if (v185)
    {

      LOBYTE(v185) = v190 == 0;
    }

    v3[OBJC_IVAR___IMCloudKitSyncState__isBetweenInitialAndFullSync] = v185;
    v191 = *v32;
    v49 = sub_1A84E5DBC();
    goto LABEL_52;
  }

LABEL_51:
  *&v3[OBJC_IVAR___IMCloudKitSyncState__lastFullSyncDate] = 0;
  *&v3[OBJC_IVAR___IMCloudKitSyncState__lastFullPartialSyncDate] = 0;
  v3[OBJC_IVAR___IMCloudKitSyncState__isBetweenInitialAndFullSync] = 0;
  v48 = *v32;
  v49 = sub_1A84E5DBC();
  if (!a2)
  {

    v53 = 0;
    goto LABEL_58;
  }

LABEL_52:
  *&v199 = v49;
  *(&v199 + 1) = v50;
  sub_1A84E641C();
  if (*(a2 + 16) && (v51 = sub_1A8250C0C(v197), (v52 & 1) != 0))
  {
    sub_1A8244F40(*(a2 + 56) + 32 * v51, &v199);
    sub_1A8250D18(v197);
  }

  else
  {
    sub_1A8250D18(v197);
    v199 = 0u;
    v200 = 0u;
  }

  sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  v53 = swift_dynamicCast() & v195;
LABEL_58:
  v3[OBJC_IVAR___IMCloudKitSyncState_isDisablingDevices] = v53;
  v54 = *MEMORY[0x1E69A6DB8];
  v55 = sub_1A84E5DBC();
  if (a2)
  {
    *&v199 = v55;
    *(&v199 + 1) = v56;
    sub_1A84E641C();
    if (*(a2 + 16) && (v57 = sub_1A8250C0C(v197), (v58 & 1) != 0))
    {
      sub_1A8244F40(*(a2 + 56) + 32 * v57, &v199);
      sub_1A8250D18(v197);
    }

    else
    {
      sub_1A8250D18(v197);
      v199 = 0u;
      v200 = 0u;
    }

    sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_67;
    }

    v59 = v195;
    if ((v195 & 0x8000000000000000) == 0)
    {
      goto LABEL_68;
    }

    __break(1u);
  }

LABEL_67:
  v59 = 0;
LABEL_68:
  *&v3[OBJC_IVAR___IMCloudKitSyncState_syncControllerSyncState] = v59;
  v60 = *MEMORY[0x1E69A6DB0];
  v61 = sub_1A84E5DBC();
  if (a2)
  {
    *&v199 = v61;
    *(&v199 + 1) = v62;
    sub_1A84E641C();
    if (*(a2 + 16) && (v63 = sub_1A8250C0C(v197), (v64 & 1) != 0))
    {
      sub_1A8244F40(*(a2 + 56) + 32 * v63, &v199);
      sub_1A8250D18(v197);
    }

    else
    {
      sub_1A8250D18(v197);
      v199 = 0u;
      v200 = 0u;
    }

    sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
    v65 = swift_dynamicCast();
    v66 = v195;
    if (!v65)
    {
      v66 = 0;
    }
  }

  else
  {

    v66 = 0;
  }

  *&v3[OBJC_IVAR___IMCloudKitSyncState_syncControllerRecordType] = v66;
  v67 = *MEMORY[0x1E69A6DC0];
  v68 = sub_1A84E5DBC();
  if (!a2)
  {

    *&v3[OBJC_IVAR___IMCloudKitSyncState_syncControllerSyncType] = 0;
    if ((v53 & 1) == 0)
    {
      v80 = *MEMORY[0x1E69A6D90];
      sub_1A84E5DBC();

      v78 = 0;
      goto LABEL_95;
    }

LABEL_89:
    v78 = 2;
    goto LABEL_95;
  }

  *&v199 = v68;
  *(&v199 + 1) = v69;
  sub_1A84E641C();
  if (*(a2 + 16) && (v70 = sub_1A8250C0C(v197), (v71 & 1) != 0))
  {
    sub_1A8244F40(*(a2 + 56) + 32 * v70, &v199);
    sub_1A8250D18(v197);
  }

  else
  {
    sub_1A8250D18(v197);
    v199 = 0u;
    v200 = 0u;
  }

  sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  v72 = swift_dynamicCast();
  v73 = v195;
  if (!v72)
  {
    v73 = 0;
  }

  *&v3[OBJC_IVAR___IMCloudKitSyncState_syncControllerSyncType] = v73;
  if (v53)
  {
    goto LABEL_89;
  }

  v74 = *MEMORY[0x1E69A6D90];
  *&v199 = sub_1A84E5DBC();
  *(&v199 + 1) = v75;
  sub_1A84E641C();
  if (*(a2 + 16) && (v76 = sub_1A8250C0C(v197), (v77 & 1) != 0))
  {
    sub_1A8244F40(*(a2 + 56) + 32 * v76, &v199);
    sub_1A8250D18(v197);
  }

  else
  {
    sub_1A8250D18(v197);
    v199 = 0u;
    v200 = 0u;
  }

  sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  v79 = swift_dynamicCast();
  v78 = v195;
  if (!v79)
  {
    v78 = 0;
  }

LABEL_95:
  *&v3[OBJC_IVAR___IMCloudKitSyncState_changingEnabledState] = v78;
  v81 = *MEMORY[0x1E69A6D50];
  v82 = sub_1A84E5DBC();
  v84 = MEMORY[0x1E69A6E00];
  v85 = MEMORY[0x1E69A6DE8];
  v86 = MEMORY[0x1E69A6D68];
  v87 = MEMORY[0x1E69A6DA0];
  v88 = MEMORY[0x1E69A6D98];
  if (!a2)
  {

    v122 = *v84;
    sub_1A84E5DBC();

    v123 = *v85;
    sub_1A84E5DBC();

    v124 = *v86;
    sub_1A84E5DBC();

    v125 = *v87;
    sub_1A84E5DBC();

    v126 = *v88;
    sub_1A84E5DBC();

    v117 = 0;
    v111 = 1;
    v119 = v194;
    goto LABEL_125;
  }

  *&v199 = v82;
  *(&v199 + 1) = v83;
  sub_1A84E641C();
  if (*(a2 + 16) && (v89 = sub_1A8250C0C(v197), (v90 & 1) != 0))
  {
    sub_1A8244F40(*(a2 + 56) + 32 * v89, &v199);
    sub_1A8250D18(v197);
  }

  else
  {
    sub_1A8250D18(v197);
    v199 = 0u;
    v200 = 0u;
  }

  sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  v91 = swift_dynamicCast();
  v92 = *v84;
  *&v199 = sub_1A84E5DBC();
  *(&v199 + 1) = v93;
  sub_1A84E641C();
  if (*(a2 + 16) && (v94 = sub_1A8250C0C(v197), (v95 & 1) != 0))
  {
    sub_1A8244F40(*(a2 + 56) + 32 * v94, &v199);
    sub_1A8250D18(v197);
  }

  else
  {
    sub_1A8250D18(v197);
    v199 = 0u;
    v200 = 0u;
  }

  sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  v96 = swift_dynamicCast();
  v97 = *v85;
  *&v199 = sub_1A84E5DBC();
  *(&v199 + 1) = v98;
  sub_1A84E641C();
  if (*(a2 + 16) && (v99 = sub_1A8250C0C(v197), (v100 & 1) != 0))
  {
    sub_1A8244F40(*(a2 + 56) + 32 * v99, &v199);
    sub_1A8250D18(v197);
  }

  else
  {
    sub_1A8250D18(v197);
    v199 = 0u;
    v200 = 0u;
  }

  sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  v192 = swift_dynamicCast();
  v101 = *v86;
  *&v199 = sub_1A84E5DBC();
  *(&v199 + 1) = v102;
  sub_1A84E641C();
  if (*(a2 + 16) && (v103 = sub_1A8250C0C(v197), (v104 & 1) != 0))
  {
    sub_1A8244F40(*(a2 + 56) + 32 * v103, &v199);
    sub_1A8250D18(v197);
  }

  else
  {
    sub_1A8250D18(v197);
    v199 = 0u;
    v200 = 0u;
  }

  v105 = (v91 & v195);
  sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  v106 = swift_dynamicCast();
  v107 = *v87;
  *&v199 = sub_1A84E5DBC();
  *(&v199 + 1) = v108;
  sub_1A84E641C();
  if (*(a2 + 16) && (v109 = sub_1A8250C0C(v197), (v110 & 1) != 0))
  {
    sub_1A8244F40(*(a2 + 56) + 32 * v109, &v199);
    sub_1A8250D18(v197);
  }

  else
  {
    sub_1A8250D18(v197);
    v199 = 0u;
    v200 = 0u;
  }

  v111 = v105 ^ 1;
  sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  v112 = swift_dynamicCast();
  v113 = *MEMORY[0x1E69A6D98];
  *&v199 = sub_1A84E5DBC();
  *(&v199 + 1) = v114;
  sub_1A84E641C();
  if (*(a2 + 16) && (v115 = sub_1A8250C0C(v197), (v116 & 1) != 0))
  {
    sub_1A8244F40(*(a2 + 56) + 32 * v115, &v199);
    sub_1A8250D18(v197);
  }

  else
  {
    sub_1A8250D18(v197);
    v199 = 0u;
    v200 = 0u;
  }

  v117 = v96 & v195;
  sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  v118 = swift_dynamicCast();
  v119 = v194;
  if ((v194 & v105 & 1) == 0)
  {
LABEL_125:
    v3[OBJC_IVAR___IMCloudKitSyncState_syncState] = 1;
    if (v119)
    {
      goto LABEL_126;
    }

LABEL_150:
    if (qword_1EB2E46B8 != -1)
    {
      swift_once();
    }

    v139 = sub_1A84E5C9C();
    sub_1A824431C(v139, qword_1EB2FEFF8);
    v133 = sub_1A84E5C7C();
    v134 = sub_1A84E619C();
    if (!os_log_type_enabled(v133, v134))
    {
      goto LABEL_155;
    }

    v135 = swift_slowAlloc();
    *v135 = 0;
    v136 = "Account not enabled or not eligible for truth zone, setting sync status to stopped";
LABEL_154:
    _os_log_impl(&dword_1A823F000, v133, v134, v136, v135, 2u);
    MEMORY[0x1AC56D3F0](v135, -1, -1);
LABEL_155:

    goto LABEL_156;
  }

  if ((v96 & v195) == 0)
  {
    v3[OBJC_IVAR___IMCloudKitSyncState_syncState] = 2;
    if (v194)
    {
      goto LABEL_133;
    }

    goto LABEL_150;
  }

  if ((v192 & v195) != 0)
  {
    v120 = OBJC_IVAR___IMCloudKitSyncState_syncState;
    v121 = 4;
  }

  else
  {
    v120 = OBJC_IVAR___IMCloudKitSyncState_syncState;
    if (((v106 & v195 | v112 & v195) | (v118 & v195)))
    {
      v121 = 5;
    }

    else
    {
      v121 = 3;
    }
  }

  v3[v120] = v121;
  v117 = 1;
  if ((v194 & 1) == 0)
  {
    goto LABEL_150;
  }

LABEL_126:
  if (v111)
  {
    goto LABEL_150;
  }

  if ((v117 & 1) == 0)
  {
LABEL_133:
    if (qword_1EB2E46B8 != -1)
    {
      swift_once();
    }

    v132 = sub_1A84E5C9C();
    sub_1A824431C(v132, qword_1EB2FEFF8);
    v133 = sub_1A84E5C7C();
    v134 = sub_1A84E619C();
    if (!os_log_type_enabled(v133, v134))
    {
      goto LABEL_155;
    }

    v135 = swift_slowAlloc();
    *v135 = 0;
    v136 = "Syncing disabled, setting sync status to stopped";
    goto LABEL_154;
  }

  v127 = *MEMORY[0x1E69A6DF0];
  v128 = sub_1A84E5DBC();
  if (a2)
  {
    *&v199 = v128;
    *(&v199 + 1) = v129;
    sub_1A84E641C();
    if (*(a2 + 16) && (v130 = sub_1A8250C0C(v197), (v131 & 1) != 0))
    {
      sub_1A8244F40(*(a2 + 56) + 32 * v130, &v199);
      sub_1A8250D18(v197);
    }

    else
    {
      sub_1A8250D18(v197);
      v199 = 0u;
      v200 = 0u;
    }

    sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_156;
    }

    v137 = v195;
    if ((v195 & 0x8000000000000000) == 0)
    {
      goto LABEL_157;
    }

    __break(1u);
  }

LABEL_156:
  v137 = 0;
LABEL_157:
  *&v3[OBJC_IVAR___IMCloudKitSyncState_syncStatus] = v137;
  v140 = *MEMORY[0x1E69A6DE0];
  v141 = sub_1A84E5DBC();
  if (a2)
  {
    *&v199 = v141;
    *(&v199 + 1) = v142;
    sub_1A84E641C();
    if (*(a2 + 16) && (v143 = sub_1A8250C0C(v197), (v144 & 1) != 0))
    {
      sub_1A8244F40(*(a2 + 56) + 32 * v143, &v199);
      sub_1A8250D18(v197);
    }

    else
    {
      sub_1A8250D18(v197);
      v199 = 0u;
      v200 = 0u;
    }

    sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_166;
    }

    v145 = v195;
    if ((v195 & 0x8000000000000000) == 0)
    {
      goto LABEL_167;
    }

    __break(1u);
  }

LABEL_166:
  v145 = 0;
LABEL_167:
  *&v3[OBJC_IVAR___IMCloudKitSyncState_syncJobState] = v145;
  v146 = *MEMORY[0x1E69A6DF8];
  v147 = sub_1A84E5DBC();
  if (a2)
  {
    *&v199 = v147;
    *(&v199 + 1) = v148;
    sub_1A84E641C();
    if (*(a2 + 16) && (v149 = sub_1A8250C0C(v197), (v150 & 1) != 0))
    {
      sub_1A8244F40(*(a2 + 56) + 32 * v149, &v199);
      sub_1A8250D18(v197);
    }

    else
    {
      sub_1A8250D18(v197);
      v199 = 0u;
      v200 = 0u;
    }

    sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_176;
    }

    v151 = v195;
    if ((v195 & 0x8000000000000000) == 0)
    {
      goto LABEL_177;
    }

    __break(1u);
  }

LABEL_176:
  v151 = 0;
LABEL_177:
  *&v3[OBJC_IVAR___IMCloudKitSyncState_syncType] = v151;
  v152 = *MEMORY[0x1E69A6D40];
  v153 = sub_1A84E5DBC();
  if (a2)
  {
    *&v199 = v153;
    *(&v199 + 1) = v154;
    sub_1A84E641C();
    if (*(a2 + 16) && (v155 = sub_1A8250C0C(v197), (v156 & 1) != 0))
    {
      sub_1A8244F40(*(a2 + 56) + 32 * v155, &v199);
      sub_1A8250D18(v197);
    }

    else
    {
      sub_1A8250D18(v197);
      v199 = 0u;
      v200 = 0u;
    }

    sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
    v157 = swift_dynamicCast() & v195;
  }

  else
  {

    v157 = 0;
  }

  v3[OBJC_IVAR___IMCloudKitSyncState_hasAvailableRecordsToDownload] = v157;
  v158 = *MEMORY[0x1E69A6DD8];
  v159 = sub_1A84E5DBC();
  if (!a2)
  {

    *&v3[OBJC_IVAR___IMCloudKitSyncState_errors] = 0;
    v199 = 0u;
    v200 = 0u;
    sub_1A824B2D4(&v199, &qword_1EB2E66B0, &qword_1A8500960);
    *&v3[OBJC_IVAR___IMCloudKitSyncState_statistics] = 0;
    v199 = 0u;
    v200 = 0u;
LABEL_202:
    sub_1A824B2D4(&v199, &qword_1EB2E66B0, &qword_1A8500960);
    v173 = 0;
    v172 = v193;
    goto LABEL_204;
  }

  *&v199 = v159;
  *(&v199 + 1) = v160;
  sub_1A84E641C();
  if (*(a2 + 16) && (v161 = sub_1A8250C0C(v197), (v162 & 1) != 0))
  {
    sub_1A8244F40(*(a2 + 56) + 32 * v161, &v199);
    sub_1A8250D18(v197);
  }

  else
  {
    sub_1A8250D18(v197);
    v199 = 0u;
    v200 = 0u;
  }

  sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  sub_1A83EA2FC(&qword_1EB2E7020, &qword_1A85013A0);
  if (swift_dynamicCast() && v195)
  {
    v163 = objc_opt_self();
    sub_1A83EA2FC(&qword_1EB2E7028, &qword_1A85013A8);
    v164 = sub_1A84E5FEC();
    sub_1A83F8164(v195);
    v165 = [v163 errorArrayFromSerializedErrorArray:v164 im:?];

    sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
    v166 = sub_1A84E5FFC();

    *&v3[OBJC_IVAR___IMCloudKitSyncState_errors] = v166;
  }

  else
  {
    *&v3[OBJC_IVAR___IMCloudKitSyncState_errors] = 0;
  }

  v167 = *MEMORY[0x1E69A6DA8];
  sub_1A84E5DBC();

  sub_1A84E641C();
  sub_1A825E0BC(v197, a2, &v199);

  sub_1A8250D18(v197);
  if (*(&v200 + 1))
  {
    sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
    if (swift_dynamicCast())
    {
      v168 = objc_allocWithZone(IMCloudKitSyncStatistics);
      v169 = sub_1A84E5D2C();

      v170 = [v168 initWithStatisticsDictionary_];

      *&v3[OBJC_IVAR___IMCloudKitSyncState_statistics] = v170;
      goto LABEL_199;
    }
  }

  else
  {
    sub_1A824B2D4(&v199, &qword_1EB2E66B0, &qword_1A8500960);
  }

  *&v3[OBJC_IVAR___IMCloudKitSyncState_statistics] = 0;
LABEL_199:
  v171 = *MEMORY[0x1E69A6D70];
  sub_1A84E5DBC();
  sub_1A84E641C();
  sub_1A825E0BC(v197, a2, &v199);

  sub_1A8250D18(v197);
  if (!*(&v200 + 1))
  {
    goto LABEL_202;
  }

  v172 = v193;
  if (swift_dynamicCast())
  {
    v173 = v197[0];
  }

  else
  {
    v173 = 0;
  }

LABEL_204:
  *&v3[OBJC_IVAR___IMCloudKitSyncState_lastDownloadProgress] = v173;
  v198.receiver = v3;
  v198.super_class = IMCloudKitSyncState;
  v174 = objc_msgSendSuper2(&v198, sel_init);

  return v174;
}

uint64_t sub_1A825E050()
{
  v0 = sub_1A84E5C9C();
  sub_1A82442B8(v0, qword_1EB2FEFF8);
  sub_1A824431C(v0, qword_1EB2FEFF8);
  sub_1A84E5C6C();
  return sub_1A84E5C8C();
}

double sub_1A825E0BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1A8250C0C(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1A8244F40(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1A825E1A0()
{
  qword_1ED767760 = os_log_create("com.apple.Messages", "iMessageCloudKitEvents");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A825E2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A825E48C(uint64_t a1, const char *a2, uint64_t a3)
{
  v10 = objc_msgSend_map(*(a1 + 32), a2, a3);
  v8 = objc_msgSend_copy(v10, v4, v5);
  v9 = v8;
  if (!v8)
  {
    v9 = objc_msgSend_dictionary(MEMORY[0x1E695DF20], v6, v7);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v9);
  if (!v8)
  {
  }
}

void sub_1A825E744(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = objc_msgSend_map(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_allKeys(v9, v4, v5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

uint64_t sub_1A825E8E0(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_msgSend_proxy(v22, v22, v4);
    v8 = objc_msgSend_bundleIdentifier(v5, v6, v7);

    v11 = objc_msgSend_identifier(v22, v9, v10);
    if (objc_msgSend_length(v11, v12, v13) && objc_msgSend_length(v8, v14, v15))
    {
      v18 = *(a1 + 32);
      v19 = objc_msgSend_identifier(v22, v16, v17);
      objc_msgSend_setObject_forKey_(v18, v20, v19, v8);
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A825EF3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_fetchScreenTimeAppPolicy(WeakRetained, v1, v2);
}

void sub_1A825F398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A825F3B0(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = objc_msgSend_map(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_allValues(v9, v4, v5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_1A825F418(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_appBundle(a2, a2, a3);
  v9 = objc_msgSend_bundleIdentifier(v4, v5, v6);

  v8 = v9;
  if (v9)
  {
    objc_msgSend_addObject_(*(a1 + 32), v7, v9);
    v8 = v9;
  }
}

void sub_1A825F4A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_setAppPolicyMonitor_(WeakRetained, v2, *(a1 + 32));
}

id IMTextInputIdentifier(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_messagesAppDomain(MEMORY[0x1E695E000], v2, v3);
  if (objc_msgSend_BOOLForKey_(v4, v5, @"CKTextInputIdentifiersMigrated"))
  {
    v6 = IMEncryptedIdentifier(v1);
  }

  else
  {
    v6 = v1;
  }

  v7 = v6;

  return v7;
}

id IMEncryptedIdentifier(void *a1)
{
  v1 = MEMORY[0x1E696AB08];
  v2 = a1;
  v5 = objc_msgSend_whitespaceAndNewlineCharacterSet(v1, v3, v4);
  v7 = objc_msgSend_stringByTrimmingCharactersInSet_(v2, v6, v5);

  if (objc_msgSend_length(v7, v8, v9))
  {
    v12 = objc_msgSend_sharedCryptographer(IMTextInputCryptographer, v10, v11);
    v14 = objc_msgSend_stringDigestForName_(v12, v13, v7);

    if (v14)
    {
      v16 = objc_msgSend_stringByAppendingString_(@"IM_", v15, v14);
      goto LABEL_10;
    }

    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1F90(v17);
    }
  }

  else
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1FD4(v14);
    }
  }

  v16 = 0;
LABEL_10:

  return v16;
}

IMSPIMessage *_IMSPIMessageFromRecord(uint64_t a1, int a2, unsigned int a3, void *a4, dispatch_qos_class_t a5)
{
  v316 = *MEMORY[0x1E69E9840];
  v260 = a4;
  if (a1)
  {
    Identifier = IMDMessageRecordGetIdentifier();
    v256 = a1;
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = Identifier;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Beginning _IMSPIMessageFromRecord for message record %lld", &buf, 0xCu);
      }

      a1 = v256;
    }

    v292 = 0;
    v291 = 0;
    v290 = 0;
    v289 = 0;
    v288 = 0;
    v287 = 0;
    v286 = 0;
    v285 = 0;
    v284 = 0;
    v283 = 0;
    v282 = 0;
    v281 = 0;
    v280 = 0;
    v279 = 0;
    v278 = 0;
    theString = 0;
    v276 = 0;
    v275 = 0;
    v274 = 0;
    v273 = 0;
    v272 = 0;
    v271 = 0;
    v270 = 0;
    v269 = 0;
    if (qword_1EB2E9198 != -1)
    {
      sub_1A8263DCC();
      a1 = v256;
    }

    off_1EB2E91C8(a1, &v291, &v288, 0, &v286, &v290, &v289, 0, 0, &v285, &v284, &v283, &v282, 0, 0, &v292, &v281, 0, 0, &v271, 0, 0, 0, 0, 0, 0, 0, 0, 0, &v274, &v275, 0, &theString, &v272, &v276, 0, &v273, 0, 0, 0, 0, &v270, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, &v269, 0, 0, 0);
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Completed _IMDMessageRecordBulkCopy", &buf, 2u);
      }
    }

    v10 = v285;
    v250 = v281;
    v254 = theString;
    v241 = v274;
    v242 = v284;
    v247 = v286;
    v248 = v282;
    v251 = v270;
    v249 = v269;
    v255 = v283;
    v252 = objc_msgSend_unsignedLongLongValue(v283, v7, v8);
    if ((v252 & 4) != 0)
    {
      if (objc_msgSend_length(v251, v11, v12))
      {
        v13 = [IMSPIHandle alloc];
        isMe = objc_msgSend_initWithAddress_countryCode_isMe_(v13, v14, v251, 0, 1);
        goto LABEL_35;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_34;
      }

      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "destinationCallerID on outgoing message is nil. Sender information will be missing for this message.", &buf, 2u);
      }

      goto LABEL_33;
    }

    if (v292 < 1)
    {
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "handleID for sender on received message is nil. Sender information will be missing for this message.", &buf, 2u);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v18 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v11, v292);
      isMe = objc_msgSend_objectForKey_(v260, v19, v18);

      if (isMe)
      {
        goto LABEL_35;
      }

      if (qword_1EB2E9188 != -1)
      {
        sub_1A8263E24();
      }

      v20 = off_1EB2E91B8(v256);
      v21 = v20;
      if (v20)
      {
        isMe = sub_1A8262D14(v20);
        v23 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v22, v292);
        objc_msgSend_setObject_forKey_(v260, v24, isMe, v23);

        CFRelease(v21);
        goto LABEL_35;
      }

      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "handleRef matching handleID on received message is nil. Sender information will be missing for this message.", &buf, 2u);
        }

LABEL_33:
      }
    }

LABEL_34:
    isMe = 0;
LABEL_35:
    v26 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v10, v15, *MEMORY[0x1E69A5F00], &stru_1F1B76F98);
    v29 = objc_msgSend_newlineCharacterSet(MEMORY[0x1E696AB08], v27, v28);
    v257 = objc_msgSend_stringByTrimmingCharactersInSet_(v26, v30, v29);

    v33 = v273;
    if (v273)
    {
      v34 = objc_msgSend_dictionaryWithMessageSummaryInfoData_(MEMORY[0x1E695DF20], v31, v273);
      v36 = v34;
      if (v34)
      {
        v246 = objc_msgSend_objectForKey_(v34, v35, *MEMORY[0x1E69A7208]);
        v39 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v37, v38);
        isAutomaticIncomingTranslationEnabled = objc_msgSend_isAutomaticIncomingTranslationEnabled(v39, v40, v41);

        if (isAutomaticIncomingTranslationEnabled)
        {
          v46 = objc_msgSend_objectForKey_(v36, v43, *MEMORY[0x1E69A7278]);
          if (v46)
          {
            v47 = objc_msgSend_translationMessagePartClasses(MEMORY[0x1E69A8138], v44, v45);
            v268 = 0;
            v245 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(MEMORY[0x1E696ACD0], v48, v47, v46, &v268);
            v49 = v268;
            if (v49)
            {
              v50 = IMLogHandleForCategory();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                sub_1A84E4484(v49, v50);
              }
            }
          }

          else
          {
            v245 = 0;
          }
        }

        else
        {
          v245 = 0;
        }
      }

      else
      {
        v245 = 0;
        v246 = 0;
      }
    }

    else
    {
      v245 = 0;
      v246 = 0;
    }

    if (v271)
    {
      if (IMOSLoggingEnabled())
      {
        v51 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 67109120;
          DWORD1(buf) = a3;
          _os_log_impl(&dword_1A823F000, v51, OS_LOG_TYPE_INFO, "hasAttachments: 1 loadAttachments:%d", &buf, 8u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v52 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1A823F000, v52, OS_LOG_TYPE_INFO, "Beginning IMSPIAttachmentsFromMessageRecord", &buf, 2u);
        }
      }

      v53 = IMDMessageRecordCopyAttachments();
      v55 = v53;
      if (v53)
      {
        Count = CFArrayGetCount(v53);
        objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v57, Count);
      }

      else
      {
        Count = 0;
        objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v54, 0);
      }
      v261 = ;
      if (qword_1EB2E9200 != -1)
      {
        sub_1A84E44FC();
      }

      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v55, i);
          *&buf = 0;
          cf = 0;
          block[0] = 0;
          v299[0] = 0;
          v298 = 0;
          v297 = 0;
          v296 = 0;
          v295 = 0;
          v294 = 0;
          off_1EB2E9208(ValueAtIndex, &buf, 0, 0, 0, &cf, v299, 0, block, &v298, 0, 0, &v298 + 1, &v297, &v296, 0, 0, 0, 0, 0, 0, &v295, &v294);
          if (cf)
          {
            v62 = objc_msgSend_copy(cf, v60, v61);
            v64 = objc_msgSend_componentsSeparatedByString_(v62, v63, @"/Attachments/");

            if (objc_msgSend_count(v64, v65, v66) < 2)
            {
              v70 = 0;
            }

            else
            {
              v68 = objc_msgSend_objectAtIndexedSubscript_(v64, v67, 1);
              v70 = sub_1A83DBA08(v68, v69);
            }
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v71 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
              {
                *v293 = 0;
                _os_log_impl(&dword_1A823F000, v71, OS_LOG_TYPE_INFO, "Attachment filename returned empty", v293, 2u);
              }
            }

            v70 = 0;
          }

          v72 = [IMSPIAttachment alloc];
          isOutgoing_stickerUserInfo_attributionInfo_creationDate_adaptiveImageGlyphContentIdentifier_adaptiveImageGlyphContentDescription = objc_msgSend_initWithGuid_fileUrl_transferState_uti_isSticker_isOutgoing_stickerUserInfo_attributionInfo_creationDate_adaptiveImageGlyphContentIdentifier_adaptiveImageGlyphContentDescription_(v72, v73, buf, v70, block[0], v299[0], HIBYTE(v298) != 0, v298 != 0, v297, v296, 0, v295, v294);
          objc_msgSend_addObject_(v261, v75, isOutgoing_stickerUserInfo_attributionInfo_creationDate_adaptiveImageGlyphContentIdentifier_adaptiveImageGlyphContentDescription);
          if (buf)
          {
            CFRelease(buf);
            *&buf = 0;
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v299[0])
          {
            CFRelease(v299[0]);
            v299[0] = 0;
          }

          if (v297)
          {
            CFRelease(v297);
            v297 = 0;
          }

          if (v296)
          {
            CFRelease(v296);
            v296 = 0;
          }

          if (v295)
          {
            CFRelease(v295);
            v295 = 0;
          }

          if (v294)
          {
            CFRelease(v294);
            v294 = 0;
          }
        }
      }

      if (v55)
      {
        CFRelease(v55);
      }

      if (IMOSLoggingEnabled())
      {
        v76 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1A823F000, v76, OS_LOG_TYPE_INFO, "Completed IMSPIAttachmentsFromMessageRecord", &buf, 2u);
        }
      }
    }

    else
    {
      v261 = 0;
    }

    if (v275 || !objc_msgSend_length(v257, v31, v32) || theString && CFStringGetLength(theString))
    {
      if (IMOSLoggingEnabled())
      {
        v77 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1A823F000, v77, OS_LOG_TYPE_INFO, "Beginning description construction for non-text message", &buf, 2u);
        }
      }

      v78 = sub_1A83D22A0(v256);
      v266[0] = MEMORY[0x1E69E9820];
      v266[1] = 3221225472;
      v266[2] = sub_1A83D27F8;
      v266[3] = &unk_1E7814870;
      v267 = v261;
      v258 = objc_msgSend_descriptionForPurpose_isGroupMessage_messageDataSource_attachmentDataSource_(v78, v79, 5, 0, &unk_1F1B6F840, v266);

      if (IMOSLoggingEnabled())
      {
        v80 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1A823F000, v80, OS_LOG_TYPE_INFO, "Completed description construction for non-text message", &buf, 2u);
        }
      }
    }

    else
    {
      v258 = 0;
    }

    if (qword_1EB2E9190 != -1)
    {
      sub_1A8263ED4();
    }

    if (v291)
    {
      v83 = 0;
    }

    else
    {
      v84 = off_1EB2E91C0();

      v83 = v84;
    }

    v240 = v83;
    if (objc_msgSend_count(v83, v81, v82))
    {
      if (qword_1EB2E91A8 != -1)
      {
        sub_1A84E4524();
      }

      v85 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v264 = 0u;
      v265 = 0u;
      v262 = 0u;
      v263 = 0u;
      v86 = v240;
      v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v86, v87, &v262, v309, 16);
      if (v88)
      {
        v89 = *v263;
        do
        {
          for (j = 0; j != v88; ++j)
          {
            if (*v263 != v89)
            {
              objc_enumerationMutation(v86);
            }

            v91 = off_1EB2E91D8(0, *(*(&v262 + 1) + 8 * j));
            objc_msgSend_addObject_(v85, v92, v91);
          }

          v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v86, v93, &v262, v309, 16);
        }

        while (v88);
      }

      Object = objc_msgSend___imFirstObject(v86, v94, v95);
      if (Object)
      {
        if (qword_1EB2E91A0 != -1)
        {
          sub_1A84E454C();
        }

        v97 = off_1EB2E91D0(Object);
        v98 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if (objc_msgSend_count(v97, v99, v100))
        {
          v103 = 0;
          while (1)
          {
            v104 = objc_msgSend_objectAtIndex_(v97, v101, v103);
            v105 = IMDHandleRecordGetIdentifier();
            v107 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v106, v105);
            v109 = objc_msgSend_objectForKey_(v260, v108, v107);

            if (v109)
            {
              goto LABEL_135;
            }

            v109 = sub_1A8262D14(v104);
            if (v109)
            {
              break;
            }

LABEL_137:

            if (++v103 >= objc_msgSend_count(v97, v122, v123))
            {
              goto LABEL_138;
            }
          }

          v113 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v112, v105);
          objc_msgSend_setObject_forKey_(v260, v114, v109, v113);

LABEL_135:
          v115 = objc_msgSend_address(v109, v110, v111);
          v118 = objc_msgSend_address(isMe, v116, v117);
          isEqualToString = objc_msgSend_isEqualToString_(v115, v119, v118);

          if ((isEqualToString & 1) == 0)
          {
            objc_msgSend_addObject_(v98, v121, v109);
          }

          goto LABEL_137;
        }

LABEL_138:
        if ((v252 & 4) == 0)
        {
          if (objc_msgSend_length(v251, v101, v102))
          {
            v124 = [IMSPIHandle alloc];
            v126 = objc_msgSend_initWithAddress_countryCode_isMe_(v124, v125, v251, 0, 1);
            objc_msgSend_addObject_(v98, v127, v126);
          }

          else if (IMOSLoggingEnabled())
          {
            v128 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&dword_1A823F000, v128, OS_LOG_TYPE_INFO, "destinationCallerID is nil, message will not contain own address in recipients", &buf, 2u);
            }
          }
        }

        if (qword_1EB2E9180 != -1)
        {
          sub_1A84E4574();
        }

        off_1EB2E91B0(Object, &v287, 0, 0, 0, &v280, 0, 0, 0, &v279, 0, 0, &v278, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
        v238 = v279;
        v243 = v280;
        v244 = v278;
      }

      else
      {
        v98 = 0;
        v243 = 0;
        v244 = 0;
        v238 = 0;
      }
    }

    else
    {
      v98 = 0;
      v243 = 0;
      v244 = 0;
      v238 = 0;
      v85 = 0;
    }

    context = objc_autoreleasePoolPush();
    v131 = objc_msgSend_unsignedLongLongValue(v255, v129, v130);
    v134 = objc_msgSend_unsignedLongLongValue(v255, v132, v133);
    v137 = objc_msgSend_unsignedLongLongValue(v255, v135, v136);
    v138 = objc_alloc_init(IMSPIMessage);
    if (objc_msgSend_length(v258, v139, v140))
    {
      objc_msgSend_setText_(v138, v141, v258);
    }

    else
    {
      objc_msgSend_setText_(v138, v141, v257);
    }

    objc_msgSend_setBody_(v138, v142, v257);
    objc_msgSend_setSummary_(v138, v143, v258);
    objc_msgSend_setEffect_(v138, v144, v276);
    objc_msgSend_setSubject_(v138, v145, v250);
    v148 = objc_msgSend_address(isMe, v146, v147);
    v149 = MEMORY[0x1AC56C3A0]();

    if ((v149 & 1) == 0)
    {
      objc_msgSend_setDisplayName_(v138, v150, v238);
    }

    objc_msgSend_setItemType_(v138, v150, v291);
    v153 = (v134 >> 20) & 1;
    if (v153 && objc_msgSend_length(v242, v151, v152))
    {
      v154 = JWDecodeCodableObjectWithStandardAllowlist();
      objc_msgSend_setAttributedText_(v138, v155, v154);
    }

    objc_msgSend_setHasDataDetectedResults_(v138, v151, v153);
    objc_msgSend_setSender_(v138, v156, isMe);
    objc_msgSend_setRecipients_(v138, v157, v98);
    v160 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v158, v159, v290);
    objc_msgSend_setDate_(v138, v161, v160);

    v164 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v162, v163, v289);
    objc_msgSend_setDateRead_(v138, v165, v164);

    if (a2)
    {
      v167 = sub_1A8261EA4(v256);
      objc_msgSend_setDateForLastReadMessageInChat_(v138, v168, v167);
    }

    objc_msgSend_setIsOutgoing_(v138, v166, (v252 >> 2) & 1);
    objc_msgSend_setIsRead_(v138, v169, (v131 >> 13) & 1);
    objc_msgSend_setIsAudioMessage_(v138, v170, (v137 >> 21) & 1);
    objc_msgSend_setGuid_(v138, v171, v247);
    objc_msgSend_setMessageID_(v138, v172, v288);
    objc_msgSend_setChatGuids_(v138, v173, v85);
    objc_msgSend_setGroupID_(v138, v174, v244);
    objc_msgSend_setChatIdentifier_(v138, v175, v243);
    objc_msgSend_setIsGroupChat_(v138, v176, v287 != 45);
    objc_msgSend_setService_(v138, v177, v248);
    objc_msgSend_setAttachments_(v138, v178, v261);
    objc_msgSend_setBundleId_(v138, v179, v254);
    objc_msgSend_setAssociatedMessageEmoji_(v138, v180, v249);
    v181 = _IMSPIDetermineMessageType(v254, (v137 & 0x200000) != 0, v261, v275, v246, v272, v257, v258);
    objc_msgSend_setMessageType_(v138, v182, v181);
    v183 = _IMSPIDisplayAppNameFromAttachments(v261);
    objc_msgSend_setDisplayAppName_(v138, v184, v183);
    objc_msgSend_setTranslatedMessagePartsMap_(v138, v185, v245);
    if (v181 != 213)
    {
      if ((v181 - 209) > 1)
      {
        if (v181 != 217 && v181 != 216)
        {
          goto LABEL_193;
        }

        v208 = _IMSPIExtractPayloadURLFromPayloadData(v272);
        objc_msgSend_setExtensionPayloadURL_(v138, v211, v208);
      }

      else
      {
        v208 = _IMSPIExtractPayloadURLFromPayloadData(v272);
        v209 = _IMSPIPeerPaymentAmountFromExtensionPayloadURL(v208);
        objc_msgSend_setPeerPaymentAmount_(v138, v210, v209);
      }

LABEL_192:

LABEL_193:
      v217 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v186, v187);
      isZelkovaEnabled = objc_msgSend_isZelkovaEnabled(v217, v218, v219);

      v221 = isZelkovaEnabled ^ 1;
      if (v181 != 215)
      {
        v221 = 1;
      }

      if ((v221 & 1) == 0)
      {
        v222 = _IMSPIExtractPayloadURLFromPayloadData(v272);
        objc_msgSend_setExtensionPayloadURL_(v138, v223, v222);
      }

      if (IMSPIMessageTypeHasAssociatedMessage(v181) && objc_msgSend_length(v241, v224, v225))
      {
        v226 = IMAssociatedMessageDecodeGUID();
        if (qword_1EB2EA520 != -1)
        {
          sub_1A84E459C();
        }

        v227 = off_1EB2EA518(v226);
        v228 = v227;
        if (v227)
        {
          v229 = _IMSPIMessageFromRecord(v227, 0, a3, v260, a5);
          objc_msgSend_setReferencedMessage_(v138, v230, v229);
          CFRelease(v228);
        }
      }

      objc_autoreleasePoolPop(context);
      if (IMOSLoggingEnabled())
      {
        v231 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v231, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = Identifier;
          _os_log_impl(&dword_1A823F000, v231, OS_LOG_TYPE_INFO, "Completed _IMSPIMessageFromRecord for message record %lld", &buf, 0xCu);
        }
      }

      v17 = v138;

      goto LABEL_209;
    }

    if (IMOSLoggingEnabled())
    {
      v188 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v188, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A823F000, v188, OS_LOG_TYPE_INFO, "Beginning _IMSPIRichLinkMetadataForMessageRecord", &buf, 2u);
      }
    }

    v189 = sub_1A83D22A0(v256);
    if (v189)
    {
      v190 = [IMPluginPayload alloc];
      v194 = objc_msgSend_initWithMessageItem_(v190, v191, v189);
      if (v194)
      {
        if (a3)
        {
          v195 = dispatch_group_create();
          dispatch_group_enter(v195);
          v198 = objc_msgSend_fileTransferGUIDs(v189, v196, v197);
          v199 = sub_1A826443C(a5);
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          v311 = sub_1A83DFAEC;
          v312 = &unk_1E7814B50;
          v313 = v198;
          v314 = v194;
          v315 = v195;
          v200 = v195;
          v253 = v198;
          IMSPIGetAttachmentPathsForTransferGUIDsWithQOS(v253, a5, v199, &buf);

          v201 = dispatch_time(0, 5000000000);
          dispatch_group_wait(v200, v201);
        }

        cf = 0;
        p_cf = &cf;
        v305 = 0x3032000000;
        v306 = sub_1A8259CB0;
        v307 = sub_1A825AF84;
        v308 = 0;
        if (objc_msgSend_isMainThread(MEMORY[0x1E696AF00], v192, v193))
        {
          v204 = objc_msgSend_sharedInstance(IMBalloonPluginManager, v202, v203);
          v206 = objc_msgSend_dataSourceForPluginPayload_(v204, v205, v194);
          v207 = p_cf[5];
          p_cf[5] = v206;
        }

        else
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_1A83DFB50;
          block[3] = &unk_1E7810D58;
          v302 = &cf;
          v301 = v194;
          dispatch_sync(MEMORY[0x1E69E96A0], block);
          v204 = v301;
        }

        v208 = objc_msgSend_richLinkMetadata(p_cf[5], v213, v214);
        if (IMOSLoggingEnabled())
        {
          v215 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v215, OS_LOG_TYPE_INFO))
          {
            LOWORD(v299[0]) = 0;
            _os_log_impl(&dword_1A823F000, v215, OS_LOG_TYPE_INFO, "Completed _IMSPIRichLinkMetadataForMessageRecord", v299, 2u);
          }
        }

        _Block_object_dispose(&cf, 8);

        goto LABEL_191;
      }

      if (IMOSLoggingEnabled())
      {
        v212 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v212, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v189;
          _os_log_impl(&dword_1A823F000, v212, OS_LOG_TYPE_INFO, "Could not init IMPluginPayload for messageItem: %@", &buf, 0xCu);
        }

LABEL_183:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v212 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v212, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v256;
        _os_log_impl(&dword_1A823F000, v212, OS_LOG_TYPE_INFO, "Could not create IMMessageItem from message record: %@", &buf, 0xCu);
      }

      goto LABEL_183;
    }

    v208 = 0;
LABEL_191:

    objc_msgSend_setRichLinkMetadata_(v138, v216, v208);
    goto LABEL_192;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Attempted to create IMSPIMessage from NULL IMDMessageRecordRef.", &buf, 2u);
    }
  }

  v17 = 0;
LABEL_209:

  v232 = *MEMORY[0x1E69E9840];

  return v17;
}

id sub_1A82618D4(void *a1, int a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v2 = a1;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = objc_msgSend_count(v2, v4, v5);
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Beginning _IMSPIMessagesFromMessageRecords with %ld records", &buf, 0xCu);
    }
  }

  v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v51 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v2;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v56, v69, 16);
  if (v7)
  {
    v9 = *v57;
    *&v8 = 138412546;
    v46 = v8;
    do
    {
      v10 = 0;
      do
      {
        if (*v57 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v56 + 1) + 8 * v10);
        *&buf = 0;
        *(&buf + 1) = &buf;
        v65 = 0x3032000000;
        v66 = sub_1A8259CB0;
        v67 = sub_1A825AF84;
        v68 = 0;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1A8262CB8;
        block[3] = &unk_1E7814C18;
        p_buf = &buf;
        block[4] = v11;
        v53 = v51;
        v55 = a2;
        dispatch_sync(MEMORY[0x1E69E96A0], block);
        v14 = *(*(&buf + 1) + 40);
        if (v14)
        {
          if (!objc_msgSend_itemType(v14, v12, v13))
          {
            v28 = objc_msgSend_chatGuids(*(*(&buf + 1) + 40), v15, v16);
            v31 = objc_msgSend_firstObject(v28, v29, v30);

            v34 = objc_msgSend_objectForKey_(v48, v32, v31);
            if (v34)
            {
              goto LABEL_23;
            }

            v34 = sub_1A8261EA4(v11);
            if (v34)
            {
              objc_msgSend_setObject_forKey_(v48, v35, v34, v31);
LABEL_23:
              objc_msgSend_setDateForLastReadMessageInChat_(*(*(&buf + 1) + 40), v33, v34, v46);
            }

            else
            {
              if (IMOSLoggingEnabled())
              {
                v38 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                {
                  *v60 = 0;
                  _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_INFO, "Unable to set last read date for ", v60, 2u);
                }
              }

              v34 = 0;
            }

            objc_msgSend_addObject_(v47, v36, *(*(&buf + 1) + 40), v46);

            goto LABEL_25;
          }

          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v20 = objc_msgSend_guid(*(*(&buf + 1) + 40), v18, v19);
              v21 = MEMORY[0x1E696AD98];
              v24 = objc_msgSend_itemType(*(*(&buf + 1) + 40), v22, v23);
              v26 = objc_msgSend_numberWithLongLong_(v21, v25, v24);
              *v60 = v46;
              v61 = v20;
              v62 = 2112;
              v63 = v26;
              _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Dropping message with guid %@ and item type %@ as it is not a valid message.", v60, 0x16u);
            }
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *v60 = 0;
            _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "Could not create IMSPIMessage from message record", v60, 2u);
          }
        }

LABEL_25:

        _Block_object_dispose(&buf, 8);
        ++v10;
      }

      while (v7 != v10);
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v37, &v56, v69, 16);
      v7 = v39;
    }

    while (v39);
  }

  if (IMOSLoggingEnabled())
  {
    v40 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v43 = objc_msgSend_count(v47, v41, v42);
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v43;
      _os_log_impl(&dword_1A823F000, v40, OS_LOG_TYPE_INFO, "Completed _IMSPIMessagesFromMessageRecords with %ld IMSPIMessages", &buf, 0xCu);
    }
  }

  v44 = *MEMORY[0x1E69E9840];

  return v47;
}

void sub_1A8261E3C(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A8261DD0);
  }

  _Unwind_Resume(exc_buf);
}

id sub_1A8261EA4(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Beginning _dateForLastReadMessageInChatForMessage", buf, 2u);
    }
  }

  if (a1)
  {
    if (qword_1EB2E9150 != -1)
    {
      sub_1A84E45EC();
    }

    v3 = off_1EB2E9168(a1);
    if (objc_msgSend_count(v3, v4, v5))
    {
      Object = objc_msgSend_firstObject(v3, v6, v7);
      if (qword_1EB2E9140 != -1)
      {
        sub_1A84E4614();
      }

      v19 = 0;
      *buf = 0;
      off_1EB2E9158(Object, 0, 0, 0, 0, buf, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, &v19, 0, 0, 0, 0, 0, 0, 0);
      if (v19 < 1)
      {
        if (qword_1EB2E9148 != -1)
        {
          sub_1A84E463C();
        }

        v12 = off_1EB2E9160(*buf);
        if (v12)
        {
          v13 = v12;
          if (qword_1EB2EA650 != -1)
          {
            sub_1A84E4664();
          }

          *v18 = 0;
          off_1EB2EA648(v13, 0, 0, 0, 0, 0, v18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
          v11 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v14, v15, *v18);
          CFRelease(v13);
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v9, v10, v19);
      }

      if (*buf)
      {
        CFRelease(*buf);
        *buf = 0;
      }

      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *v18 = 0;
          _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Completed _dateForLastReadMessageInChatForMessage", v18, 2u);
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t _IMSPIDetermineMessageType(void *a1, char a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v103 = *MEMORY[0x1E69E9840];
  v85 = a1;
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v19 = a8;
  if (a4 > 2003)
  {
    if (a4 <= 2005)
    {
      if (a4 == 2004)
      {
        v20 = 107;
      }

      else
      {
        v20 = 109;
      }

      goto LABEL_97;
    }

    switch(a4)
    {
      case 2006:
        v20 = 111;
        goto LABEL_97;
      case 2007:
        v20 = 112;
        goto LABEL_97;
      case 4000:
        v20 = 114;
        goto LABEL_97;
    }
  }

  else
  {
    if (a4 > 2000)
    {
      if (a4 == 2001)
      {
        v20 = 105;
      }

      else if (a4 == 2002)
      {
        v20 = 106;
      }

      else
      {
        v20 = 110;
      }

      goto LABEL_97;
    }

    if (a4 == 1000)
    {
      v20 = 113;
      goto LABEL_97;
    }

    if (a4 == 2000)
    {
      v20 = 108;
      goto LABEL_97;
    }
  }

  if (a2)
  {
    v20 = 101;
    goto LABEL_97;
  }

  v21 = *MEMORY[0x1E69A6A38];
  if (objc_msgSend_containsString_(v16, v18, *MEMORY[0x1E69A6A38]))
  {
    v20 = 211;
  }

  else if (_IMSPIMessageOrAttachmentsMatchPluginIdentifier(v21, v85, v15))
  {
    v24 = _IMSPIExtractPayloadURLFromPayloadData(a6);
    v20 = _IMSPIMessageTypeFromPeerPaymentPayloadURL(v24);
  }

  else if (_IMSPIMessageOrAttachmentsMatchPluginIdentifier(*MEMORY[0x1E69A6A18], v85, v15))
  {
    v20 = 213;
  }

  else if (_IMSPIMessageOrAttachmentsMatchPluginIdentifier(*MEMORY[0x1E69A69E8], v85, v15))
  {
    v20 = 207;
  }

  else if (_IMSPIMessageOrAttachmentsMatchPluginIdentifier(*MEMORY[0x1E69A69A8], v85, v15))
  {
    v20 = 102;
  }

  else if (_IMSPIMessageOrAttachmentsMatchPluginIdentifier(*MEMORY[0x1E69A69E0], v85, v15))
  {
    v20 = 103;
  }

  else if (_IMSPIMessageOrAttachmentsMatchPluginIdentifier(*MEMORY[0x1E69A6970], v85, v15))
  {
    v20 = 212;
  }

  else if (_IMSPIMessageOrAttachmentsMatchPluginIdentifier(*MEMORY[0x1E69A6920], v85, v15))
  {
    v20 = 216;
  }

  else if (_IMSPIMessageOrAttachmentsMatchPluginIdentifier(*MEMORY[0x1E69A68E0], v85, v15))
  {
    v20 = 217;
  }

  else if (_IMSPIMessageOrAttachmentsMatchPluginIdentifier(*MEMORY[0x1E69A6938], v85, v15))
  {
    if (objc_msgSend_containsString_(v19, v25, @"Started Sharing Location"))
    {
      v20 = 219;
    }

    else if (objc_msgSend_containsString_(v19, v22, @"Requested Location"))
    {
      v20 = 218;
    }

    else
    {
      v20 = 220;
    }
  }

  else if (_IMSPIMessageOrAttachmentsMatchPluginIdentifier(*MEMORY[0x1E69A6928], v85, v15))
  {
    v20 = 223;
  }

  else
  {
    v20 = 0;
  }

  v26 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v22, v23);
  isZelkovaEnabled = objc_msgSend_isZelkovaEnabled(v26, v27, v28);

  if (isZelkovaEnabled && (_IMSPIMessageOrAttachmentsMatchPluginIdentifier(*MEMORY[0x1E69A6930], v85, v15) & 1) != 0)
  {
    v20 = 215;
    goto LABEL_97;
  }

  if (v20)
  {
    goto LABEL_97;
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v30 = v15;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v94, v102, 16);
  if (!v34)
  {

LABEL_71:
    v81 = objc_msgSend_length(v85, v38, v39);
    if (v81)
    {
      if (IMOSLoggingEnabled())
      {
        v40 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v101 = v85;
          _os_log_impl(&dword_1A823F000, v40, OS_LOG_TYPE_INFO, "Unhandled balloon bundle ID: %@", buf, 0xCu);
        }
      }

      v20 = 214;
    }

    else
    {
      v20 = 0;
    }

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    obj = v30;
    v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, &v90, v99, 16);
    if (v44)
    {
      v83 = *v91;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v91 != v83)
          {
            objc_enumerationMutation(obj);
          }

          v46 = *(*(&v90 + 1) + 8 * i);
          v47 = objc_msgSend_bundleID(v46, v42, v43, v81);
          v50 = objc_msgSend_length(v47, v48, v49) == 0;

          if (!v50)
          {
            if (IMOSLoggingEnabled())
            {
              v57 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
              {
                v60 = objc_msgSend_bundleID(v46, v58, v59);
                *buf = 138412290;
                v101 = v60;
                _os_log_impl(&dword_1A823F000, v57, OS_LOG_TYPE_INFO, "Unhandled attachment bundle ID: %@", buf, 0xCu);
              }
            }

            v20 = 222;
            goto LABEL_97;
          }
        }

        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v42, &v90, v99, 16);
      }

      while (v44);
    }

    if (v81)
    {
      goto LABEL_97;
    }

    if (!objc_msgSend_count(obj, v51, v52) || objc_msgSend_length(v17, v53, v54))
    {
      goto LABEL_89;
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v63 = obj;
    v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v86, v98, 16);
    if (!v84)
    {

      goto LABEL_89;
    }

    v67 = 0;
    v81 = *v87;
    v20 = 200;
LABEL_100:
    v68 = 0;
    while (1)
    {
      if (*v87 != v81)
      {
        objc_enumerationMutation(v63);
      }

      v69 = *(*(&v86 + 1) + 8 * v68);
      v70 = objc_msgSend_uti(v69, v65, v66, v81);
      if (objc_msgSend_isSticker(v69, v71, v72))
      {
        v67 = 104;
      }

      else if (IMUTTypeIsGIF())
      {
        v67 = 221;
      }

      if (IMUTTypeIsImage())
      {
        goto LABEL_130;
      }

      if (IMUTTypeIsMovie())
      {
        break;
      }

      if (IMUTTypeIsAudio())
      {
        v20 = 202;
        goto LABEL_130;
      }

      if (IMUTTypeIsCalendar())
      {
        v20 = 203;
        goto LABEL_130;
      }

      if (IMUTTypeIsVCard())
      {
        v20 = 204;
        goto LABEL_130;
      }

      if (IMUTTypeIsPass())
      {
        v20 = 205;
        goto LABEL_130;
      }

      IsMap = IMUTTypeIsMap();

      if (IsMap)
      {
        v20 = 208;
        goto LABEL_132;
      }

      if (v84 == ++v68)
      {
        v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v65, &v86, v98, 16);
        if (v84)
        {
          goto LABEL_100;
        }

        if (IsMap)
        {
          v20 = 208;
        }

        else
        {
          v20 = v67;
        }

LABEL_132:

        if (!v20)
        {
LABEL_89:
          if (objc_msgSend_count(obj, v53, v54, v81) && !objc_msgSend_length(v17, v55, v56))
          {
            if (IMOSLoggingEnabled())
            {
              v74 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
              {
                v77 = objc_msgSend_firstObject(obj, v75, v76);
                v80 = objc_msgSend_uti(v77, v78, v79);
                *buf = 138412290;
                v101 = v80;
                _os_log_impl(&dword_1A823F000, v74, OS_LOG_TYPE_INFO, "Unhandled attachment UTI: %@", buf, 0xCu);
              }
            }

            v20 = 206;
          }

          else
          {
            v20 = 100;
          }
        }

        goto LABEL_97;
      }
    }

    v20 = 201;
LABEL_130:

    goto LABEL_97;
  }

  v20 = 0;
  v35 = *v95;
  do
  {
    for (j = 0; j != v34; ++j)
    {
      if (*v95 != v35)
      {
        objc_enumerationMutation(v30);
      }

      v37 = *(*(&v94 + 1) + 8 * j);
      if (objc_msgSend_isSticker(v37, v32, v33) && objc_msgSend_isAdaptiveImageGlyph(v37, v32, v33))
      {
        if (!objc_msgSend_length(v19, v32, v33) && !objc_msgSend_length(v17, v32, v33))
        {

          v20 = 104;
          goto LABEL_97;
        }

        v20 = 100;
      }
    }

    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v94, v102, 16);
  }

  while (v34);

  if (!v20)
  {
    goto LABEL_71;
  }

LABEL_97:

  v61 = *MEMORY[0x1E69E9840];
  return v20;
}

void sub_1A8262A8C(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v1 = a1;
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v14, v18, 16);
  if (v3)
  {
    v6 = v3;
    v7 = *v15;
    v8 = MEMORY[0x1E69A7AE0];
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v1);
        }

        v10 = objc_msgSend_service(*(*(&v14 + 1) + 8 * v9), v4, v5, v14);
        isEqualToString = objc_msgSend_isEqualToString_(v10, v11, *v8);

        if (isEqualToString)
        {

          IMGreenTeaMessageReadLog();
          goto LABEL_11;
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v4, &v14, v18, 16);
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1A8262BB4(uint64_t a1)
{
  if (qword_1EB2E91F0 != -1)
  {
    sub_1A84E4938();
  }

  v2 = off_1EB2E91F8(*(a1 + 32), *(a1 + 40), 0, *(a1 + 76), *(a1 + 64));
  v3 = sub_1A82618D4(v2, *(a1 + 72));
  sub_1A8262A8C(v3);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A8263234;
  v7[3] = &unk_1E7810230;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t sub_1A8262CB8(uint64_t a1)
{
  v2 = _IMSPIMessageFromRecord(*(a1 + 32), 0, 0, *(a1 + 40), *(a1 + 56));
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

id sub_1A8262D14(void *isMe)
{
  v16 = *MEMORY[0x1E69E9840];
  Identifier = IMDHandleRecordGetIdentifier();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v15 = Identifier;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Beginning _IMSPIHandleFromRecord for handle record ID: %lld", buf, 0xCu);
    }
  }

  if (isMe)
  {
    if (qword_1EB2E9D78 != -1)
    {
      sub_1A8263E7C();
    }

    cf = 0;
    theString = 0;
    v11 = 0;
    off_1EB2E9D80(isMe, &cf, &v11, 0, &theString, 0);
    if (theString && CFStringGetLength(theString) > 0)
    {
      p_theString = &theString;
    }

    else
    {
      p_theString = &cf;
    }

    v5 = *p_theString;
    v6 = [IMSPIHandle alloc];
    isMe = objc_msgSend_initWithAddress_countryCode_isMe_(v6, v7, v5, v11, 0);
    if (theString)
    {
      CFRelease(theString);
      theString = 0;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v11)
    {
      CFRelease(v11);
      v11 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v15 = isMe;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Completed _IMSPIHandleFromRecord with handle: %@", buf, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return isMe;
}

uint64_t sub_1A8263234(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (objc_msgSend_count(*(a1 + 32), a2, a3))
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v4 + 16);

  return v6(v4, v5);
}

void sub_1A82633F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3);
  v7 = objc_msgSend_sender(*(a1 + 32), v5, v6);
  v10 = objc_msgSend_address(v7, v8, v9);
  v11 = sub_1A82635FC(v10, v10);

  if (v11)
  {
    v14 = objc_msgSend_sender(*(a1 + 32), v12, v13);
    isMe = objc_msgSend_isMe(v14, v15, v16);

    if ((isMe & 1) == 0)
    {
      objc_msgSend_addObject_(v4, v12, v11);
    }
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v18 = objc_msgSend_recipients(*(a1 + 32), v12, v13, 0);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v36, v40, 16);
  if (v20)
  {
    v23 = v20;
    v24 = *v37;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(v18);
        }

        v26 = *(*(&v36 + 1) + 8 * i);
        if ((objc_msgSend_isMe(v26, v21, v22) & 1) == 0)
        {
          v27 = objc_msgSend_address(v26, v21, v22);
          v28 = sub_1A82635FC(v27, v27);

          if (v28)
          {
            objc_msgSend_addObject_(v4, v29, v28);
          }
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v36, v40, 16);
    }

    while (v23);
  }

  v33 = IMSharedDowntimeController(v30, v31, v32);
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_allowedToShowConversationWithHandleIDs_sync_context_(v33, v34, v4, 1, 0);

  v35 = *MEMORY[0x1E69E9840];
}

id sub_1A82635FC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2 && ((MEMORY[0x1AC56C3C0](v2) & 1) != 0 || IMStringIsEmail()))
  {
    v4 = IMStripFormattingFromAddress();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1A8263728(uint64_t a1, uint64_t a2, SEL *a3)
{
  v6 = *(v3 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v16[4] = nullsub_4;
  v16[5] = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1A824B720;
  v16[3] = a2;
  v7 = _Block_copy(v16);
  [v6 connectWithCompletion_];
  _Block_release(v7);
  sub_1A8248300(a1);
  v8 = *(v3 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
  v9 = sub_1A84E610C();

  v10 = [v8 *a3];

  if (!v10)
  {
    v11 = [objc_opt_self() emailsForCNContact_];
    v12 = sub_1A84E5FFC();

    sub_1A8249338(v12);

    v13 = sub_1A84E610C();

    v14 = [v8 *a3];

    return v14;
  }

  return v10;
}

void *sub_1A8263DF4()
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordBulkCopy", @"IMDPersistence");
  off_1EB2E91C8 = result;
  return result;
}

void *sub_1A8263E4C()
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyHandle", @"IMDPersistence");
  off_1EB2E91B8 = result;
  return result;
}

void *sub_1A8263EA4()
{
  result = MEMORY[0x1AC56C560]("IMDHandleRecordBulkCopy", @"IMDPersistence");
  off_1EB2E9D80 = result;
  return result;
}

void *sub_1A8263FE4()
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyChats", @"IMDPersistence");
  off_1EB2E91C0 = result;
  return result;
}

void sub_1A8264014(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_alloc_init(IMBrandCacheClient);
  objc_msgSend_configChatBotBrandManagerWithCacheClient_(v1, v2, v3);
}

uint64_t IMSPIQueryMessagesWithChatIdentifiersAndQOS(void *a1, void *a2, char a3, uint64_t a4, dispatch_qos_class_t a5, void *a6, void *a7)
{
  v45 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = a2;
  v15 = a6;
  v16 = a7;
  v19 = v16;
  if (!v15 || !v16)
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "Empty results block or queue supplied to IMSPIQueryMessagesWithChatIdentifiers", buf, 2u);
      }

      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v20 = objc_msgSend_count(v13, v17, v18);
  if (v20 != objc_msgSend_count(v14, v21, v22))
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v42 = v13;
        v43 = 2112;
        v44 = v14;
        _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "Services is not matched with chatIdentifiers: [%@] [%@] to IMSPIQueryMessagesWithIDs", buf, 0x16u);
      }

      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (!objc_msgSend_count(v13, v23, v24))
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "Empty services or chatIdentifiers supplied to IMSPIQueryMessagesWithChatIdentifiers", buf, 2u);
      }

      goto LABEL_22;
    }

LABEL_23:
    v29 = 0;
    goto LABEL_24;
  }

  if (!a4)
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "0 limit supplied, no query issued to IMSPIQueryMessagesWithChatIdentifiers", buf, 2u);
      }

LABEL_22:

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v27 = objc_msgSend_copy(v19, v25, v26);

  v28 = sub_1A826443C(a5);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1A8262BB4;
  v33[3] = &unk_1E7814A98;
  v34 = v14;
  v40 = a3;
  v35 = v13;
  v38 = a4;
  v39 = a5;
  v36 = v15;
  v19 = v27;
  v37 = v19;
  dispatch_async(v28, v33);

  v29 = 1;
LABEL_24:

  v31 = *MEMORY[0x1E69E9840];
  return v29;
}

void sub_1A8264418(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A82643C4);
  }

  _Unwind_Resume(a1);
}

dispatch_queue_t sub_1A826443C(dispatch_qos_class_t qos_class)
{
  v1 = "com.apple.messages.imcore.spi.default";
  v2 = "com.apple.messages.imcore.spi.userinitiated";
  v3 = "com.apple.messages.imcore.spi.userinteractive";
  if (qos_class != QOS_CLASS_USER_INTERACTIVE)
  {
    v3 = 0;
  }

  if (qos_class != QOS_CLASS_USER_INITIATED)
  {
    v2 = v3;
  }

  if (qos_class != QOS_CLASS_DEFAULT)
  {
    v1 = v2;
  }

  v4 = "com.apple.messages.imcore.spi.qos-unspecified";
  v5 = "com.apple.messages.imcore.spi.background";
  v6 = "com.apple.messages.imcore.spi.utility";
  if (qos_class != QOS_CLASS_UTILITY)
  {
    v6 = 0;
  }

  if (qos_class != QOS_CLASS_BACKGROUND)
  {
    v5 = v6;
  }

  if (qos_class)
  {
    v4 = v5;
  }

  if (qos_class <= 20)
  {
    v7 = v4;
  }

  else
  {
    v7 = v1;
  }

  v8 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], qos_class, 0);
  v9 = dispatch_queue_create(v7, v8);

  return v9;
}

uint64_t _s12DerivedStateVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s12DerivedStateVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}