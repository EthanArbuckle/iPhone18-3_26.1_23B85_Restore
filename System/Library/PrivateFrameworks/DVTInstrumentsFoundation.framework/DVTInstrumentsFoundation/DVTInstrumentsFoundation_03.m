uint64_t sub_2480078E4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for ProcessorTraceTapMessageHandler()
{
  result = qword_27EE83BD0;
  if (!qword_27EE83BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_248007978()
{
  result = qword_27EE83BA8;
  if (!qword_27EE83BA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE83BA8);
  }

  return result;
}

unint64_t sub_2480079C4()
{
  result = qword_27EE83BB0;
  if (!qword_27EE83BB0)
  {
    sub_248007978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83BB0);
  }

  return result;
}

id ProcessorTraceTapMessageHandler.__allocating_init(config:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithConfig_];

  return v3;
}

id ProcessorTraceTapMessageHandler.init(config:)(void *a1)
{
  *&v1[OBJC_IVAR___DTProcessorTraceTapMessageHandler_transferringFile] = 0;
  v3 = OBJC_IVAR___DTProcessorTraceTapMessageHandler_transferringFileURL;
  v4 = sub_248030778();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ProcessorTraceTapMessageHandler();
  v5 = objc_msgSendSuper2(&v7, sel_initWithConfig_, a1);

  return v5;
}

id ProcessorTraceTapMessageHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProcessorTraceTapMessageHandler.init()()
{
  *&v0[OBJC_IVAR___DTProcessorTraceTapMessageHandler_transferringFile] = 0;
  v1 = OBJC_IVAR___DTProcessorTraceTapMessageHandler_transferringFileURL;
  v2 = sub_248030778();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ProcessorTraceTapMessageHandler();
  return objc_msgSendSuper2(&v4, sel_init);
}

id ProcessorTraceTapMessageHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProcessorTraceTapMessageHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_248007DFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2480078E4(&qword_27EE83BE8, qword_24803DEB8);
    v3 = sub_248030DC8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_248008480(v6 + 40 * v4, v20);
      v7 = *(v3 + 40);
      result = sub_248030D98();
      v9 = ~(-1 << *(v3 + 32));
      for (i = result & v9; ; i = (i + 1) & v9)
      {
        v11 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v11) == 0)
        {
          break;
        }

        sub_248008480(*(v3 + 48) + 40 * i, v19);
        v12 = MEMORY[0x24C1C1A00](v19, v20);
        result = sub_248007F5C(v19);
        if (v12)
        {
          sub_248007F5C(v20);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v11;
      v13 = *(v3 + 48) + 40 * i;
      v14 = v20[0];
      v15 = v20[1];
      *(v13 + 32) = v21;
      *v13 = v14;
      *(v13 + 16) = v15;
      v16 = *(v3 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (!v17)
      {
        *(v3 + 16) = v18;
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
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_248007FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2480078E4(&unk_27EE83FE0, &qword_24803DE60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_248008020(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2480080D8(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_248008020(a1, &a1[a2]);
  }

  v3 = sub_248030698();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_248030658();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_248030788();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_248008188()
{
  result = qword_27EE83BC8;
  if (!qword_27EE83BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83BC8);
  }

  return result;
}

uint64_t sub_2480081DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_248008230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProcessorTraceTapMessage.FileSharingType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248008294(uint64_t a1, uint64_t a2)
{
  v4 = sub_2480078E4(&unk_27EE83FE0, &qword_24803DE60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248008304(uint64_t a1)
{
  v2 = sub_2480078E4(&unk_27EE83FE0, &qword_24803DE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_248008374()
{
  sub_248008428();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_248008428()
{
  if (!qword_27EE83BE0)
  {
    sub_248030778();
    v0 = sub_248030D48();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE83BE0);
    }
  }
}

uint64_t sub_2480084DC()
{
  v0 = sub_2480309A8();
  sub_248008A94(v0, qword_27EE83BF0);
  v1 = sub_248006DF0(v0, qword_27EE83BF0);
  if (qword_27EE83A00 != -1)
  {
    swift_once();
  }

  v2 = sub_248006DF0(v0, qword_27EE85A48);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id CoreMLPerfRunnerService.__allocating_init(channel:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithChannel_];

  return v3;
}

id CoreMLPerfRunnerService.init(channel:)(uint64_t a1)
{
  if (qword_27EE839E8 != -1)
  {
    swift_once();
  }

  v3 = qword_27EE85A38;
  type metadata accessor for CoreMLPerfRunnerServiceMessageHandler();
  v4 = swift_allocObject();
  v4[5] = type metadata accessor for CoreMLPerfCoordinator();
  v4[6] = &protocol witness table for CoreMLPerfCoordinator;
  v4[2] = v3;
  v4[7] = a1;
  *&v1[OBJC_IVAR____TtC24DVTInstrumentsFoundation23CoreMLPerfRunnerService_messageHandler] = v4;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CoreMLPerfRunnerService();

  return objc_msgSendSuper2(&v6, sel_initWithChannel_, a1);
}

id CoreMLPerfRunnerService.__deallocating_deinit()
{
  v1 = v0;
  if (qword_27EE839D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2480309A8();
  sub_248006DF0(v2, qword_27EE83BF0);
  v3 = sub_248030C78();
  v4 = sub_248030988();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_247F67000, v4, v3, "PerfRunnerService - deinit invoked", v5, 2u);
    MEMORY[0x24C1C47E0](v5, -1, -1);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for CoreMLPerfRunnerService();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id CoreMLPerfRunnerService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *sub_248008A94(uint64_t a1, uint64_t *a2)
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

uint64_t sub_248008B20()
{
  v0 = sub_2480309A8();
  sub_248008A94(v0, qword_27EE83C10);
  v1 = sub_248006DF0(v0, qword_27EE83C10);
  if (qword_27EE83A00 != -1)
  {
    swift_once();
  }

  v2 = sub_248006DF0(v0, qword_27EE85A48);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_248008BE8()
{
  [objc_opt_self() enableMonitoring];
  v1 = *(v0 + OBJC_IVAR____TtC24DVTInstrumentsFoundation31XPCModelRunnerConnectionManager__serviceConnection);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  swift_unknownObjectRelease();
  *(v1 + 16) = sub_248009BEC();
  os_unfair_lock_unlock((v1 + 24));
  os_unfair_lock_lock((v1 + 24));
  v3 = *(v1 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 24));
  if (!v3)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  xpc_connection_resume(v3);
  swift_unknownObjectRelease();
  if (qword_27EE839D8 != -1)
  {
    swift_once();
  }

  v4 = sub_2480309A8();
  sub_248006DF0(v4, qword_27EE83C10);
  v5 = sub_248030C78();
  v6 = sub_248030988();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_247F67000, v6, v5, "xpc_connection_resume complete", v7, 2u);
    MEMORY[0x24C1C47E0](v7, -1, -1);
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "command", "getPID");
  v9 = sub_248030C78();
  v10 = sub_248030988();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_247F67000, v10, v9, "set XPC dictionary string for getPID", v11, 2u);
    MEMORY[0x24C1C47E0](v11, -1, -1);
  }

  v12 = sub_248030C78();
  v13 = sub_248030988();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_247F67000, v13, v12, "about to send XPC message for getPID", v14, 2u);
    MEMORY[0x24C1C47E0](v14, -1, -1);
  }

  os_unfair_lock_lock((v1 + 24));
  v15 = *(v1 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 24));
  if (!v15)
  {
    goto LABEL_18;
  }

  xpc_connection_send_message_with_reply_sync(v15, v8);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v16 = sub_248030C78();
  v17 = sub_248030988();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_247F67000, v17, v16, "sent XPC message for getPID", v18, 2u);
    MEMORY[0x24C1C47E0](v18, -1, -1);
  }

  os_unfair_lock_lock((v1 + 24));
  v19 = *(v1 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 24));
  if (!v19)
  {
    goto LABEL_19;
  }

  xpc_connection_get_pid(v19);
  swift_unknownObjectRelease();
  v20 = sub_248030EC8();
  v22 = v21;
  sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_24803DE50;
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = sub_24800A52C();
  *(v23 + 32) = v20;
  *(v23 + 40) = v22;
  sub_2480308C8();
  swift_unknownObjectRelease();
}

void sub_248009008(int64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;

  v10 = sub_24800A068(a1);
  if (qword_27EE839D8 != -1)
  {
    swift_once();
  }

  v11 = sub_2480309A8();
  sub_248006DF0(v11, qword_27EE83C10);
  v12 = sub_248030988();
  v13 = sub_248030C98();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_247F67000, v12, v13, "about to send XPC message in kickoffModelPerfRunInXPCService", v14, 2u);
    MEMORY[0x24C1C47E0](v14, -1, -1);
  }

  v15 = *&v5[OBJC_IVAR____TtC24DVTInstrumentsFoundation31XPCModelRunnerConnectionManager__serviceConnection];
  os_unfair_lock_lock((v15 + 24));
  v16 = *(v15 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v15 + 24));
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    *(v17 + 32) = v5;
    *(v17 + 40) = a2;
    v23[4] = sub_24800A504;
    v23[5] = v17;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 1107296256;
    v23[2] = sub_248009898;
    v23[3] = &unk_285A19238;
    v18 = _Block_copy(v23);
    v19 = v5;

    xpc_connection_send_message_with_reply(v16, v10, 0, v18);
    _Block_release(v18);
    swift_unknownObjectRelease();
    v20 = sub_248030C78();
    v21 = sub_248030988();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_247F67000, v21, v20, "sent XPC message in kickoffModelPerfRunInXPCService", v22, 2u);
      MEMORY[0x24C1C47E0](v22, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_248009288(void *a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x24C1C4CD0]();
  sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24803DE50;
  v11 = MEMORY[0x24C1C1A50](v9);
  v13 = v12;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_24800A52C();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  sub_2480308C8();

  v14 = sub_248030B78();
  string = xpc_dictionary_get_string(a1, (v14 + 32));

  if (!string)
  {
    sub_24800A580(a1);
    v26 = [objc_opt_self() diagnoseNoXPCResponse_];
    if (!v26)
    {
      if (qword_27EE839D8 != -1)
      {
        swift_once();
      }

      v37 = sub_2480309A8();
      sub_248006DF0(v37, qword_27EE83C10);
      v38 = sub_248030C78();
      v39 = sub_248030988();
      if (os_log_type_enabled(v39, v38))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_247F67000, v39, v38, "kickoffModelPerfRunInXPCService - no data returned: Jetsam", v40, 2u);
        MEMORY[0x24C1C47E0](v40, -1, -1);
      }

      v36 = xmmword_24803DF00;
      goto LABEL_34;
    }

    if (v26 == 1)
    {
      if (qword_27EE839D8 != -1)
      {
        swift_once();
      }

      v32 = sub_2480309A8();
      sub_248006DF0(v32, qword_27EE83C10);
      v33 = sub_248030C78();
      v34 = sub_248030988();
      if (os_log_type_enabled(v34, v33))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_247F67000, v34, v33, "kickoffModelPerfRunInXPCService - no data returned: Crash", v35, 2u);
        MEMORY[0x24C1C47E0](v35, -1, -1);
      }

      v36 = xmmword_24803DF10;
      goto LABEL_34;
    }

    if (v26 == 2)
    {
      if (qword_27EE839D8 != -1)
      {
        swift_once();
      }

      v27 = sub_2480309A8();
      sub_248006DF0(v27, qword_27EE83C10);
      v28 = sub_248030C78();
      v29 = sub_248030988();
      if (!os_log_type_enabled(v29, v28))
      {
        goto LABEL_33;
      }

      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "kickoffModelPerfRunInXPCService - no data returned: Unknown";
    }

    else
    {
      if (qword_27EE839D8 != -1)
      {
        swift_once();
      }

      v41 = sub_2480309A8();
      sub_248006DF0(v41, qword_27EE83C10);
      v28 = sub_248030C78();
      v29 = sub_248030988();
      if (!os_log_type_enabled(v29, v28))
      {
        goto LABEL_33;
      }

      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "kickoffModelPerfRunInXPCService - no data returned: Undefined cause";
    }

    _os_log_impl(&dword_247F67000, v29, v28, v31, v30, 2u);
    MEMORY[0x24C1C47E0](v30, -1, -1);
LABEL_33:

    v36 = xmmword_24803CE10;
LABEL_34:
    v44 = v36;
    v45 = 1;
    a2(&v44);
    goto LABEL_35;
  }

  if (qword_27EE839D8 != -1)
  {
    swift_once();
  }

  v16 = sub_2480309A8();
  sub_248006DF0(v16, qword_27EE83C10);
  v17 = sub_248030C78();
  v18 = sub_248030988();
  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_247F67000, v18, v17, "unboxed timerData", v19, 2u);
    MEMORY[0x24C1C47E0](v19, -1, -1);
  }

  v20 = sub_248030BA8();
  v22 = v21;
  v23 = sub_248030C78();
  v24 = sub_248030988();
  if (os_log_type_enabled(v24, v23))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_247F67000, v24, v23, "converted timerData", v25, 2u);
    MEMORY[0x24C1C47E0](v25, -1, -1);
  }

  *&v44 = v20;
  *(&v44 + 1) = v22;
  v45 = 0;
  a2(&v44);
  sub_24800ABCC(v44, *(&v44 + 1), v45);
LABEL_35:
  [objc_opt_self() disableMonitoring];
  v42 = *(a4 + OBJC_IVAR____TtC24DVTInstrumentsFoundation31XPCModelRunnerConnectionManager__serviceConnection);
  os_unfair_lock_lock((v42 + 24));
  v43 = *(v42 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v42 + 24));
  if (v43)
  {
    sub_24800A904(v43);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_248009898(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_2480098F8(void *a1, _xpc_connection_s *a2)
{
  sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24803DE50;
  v5 = [a1 description];
  v6 = sub_248030B38();
  v8 = v7;

  v9 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v10 = sub_24800A52C();
  *(v4 + 64) = v10;
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  sub_2480308C8();

  xpc_connection_get_pid(a2);
  sub_248030C78();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24803DE50;
  v12 = sub_248030EC8();
  *(v11 + 56) = v9;
  *(v11 + 64) = v10;
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  sub_2480308C8();
}

id sub_248009B38()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_xpc_connection_s *sub_248009BEC()
{
  v0 = sub_248030CB8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_248030CA8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_248030AC8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_24800ABDC();
  sub_248030AB8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24800AC28();
  sub_2480078E4(&qword_27EE83C58, &qword_24803DFA0);
  sub_24800AC80();
  sub_248030D78();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v0);
  v9 = sub_248030CC8();
  if (qword_27EE839D8 != -1)
  {
    swift_once();
  }

  v10 = sub_2480309A8();
  sub_248006DF0(v10, qword_27EE83C10);
  v11 = sub_248030C78();
  v12 = sub_248030988();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_247F67000, v12, v11, "Creating XPC connection", v13, 2u);
    MEMORY[0x24C1C47E0](v13, -1, -1);
  }

  v14 = sub_248030B78();
  v15 = v9;
  v16 = xpc_connection_create((v14 + 32), v15);

  v17 = sub_248030C78();
  v18 = sub_248030988();
  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_247F67000, v18, v17, "Successfully created XPC connection", v19, 2u);
    MEMORY[0x24C1C47E0](v19, -1, -1);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  aBlock[4] = sub_24800AD2C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_248009898;
  aBlock[3] = &unk_285A19288;
  v21 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  xpc_connection_set_event_handler(v16, v21);
  _Block_release(v21);
  v22 = sub_248030988();
  v23 = sub_248030C98();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_247F67000, v22, v23, "Created XPC handler", v24, 2u);
    MEMORY[0x24C1C47E0](v24, -1, -1);
  }

  return v16;
}

xpc_object_t sub_24800A068(int64_t *a1)
{
  v2 = type metadata accessor for ModelInfo();
  v3 = a1 + *(v2 + 24);
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "command", "profile");
  sub_2480307E8();
  v5 = sub_248030B78();

  xpc_dictionary_set_string(v4, "containerGUID", (v5 + 32));

  v6 = &v3[*(type metadata accessor for ModelLocation() + 20)];
  v7 = *v6;
  v8 = *(v6 + 1);
  v9 = sub_248030B78();
  xpc_dictionary_set_string(v4, "modelFileName", (v9 + 32));

  if (qword_27EE839D8 != -1)
  {
    swift_once();
  }

  v10 = sub_2480309A8();
  sub_248006DF0(v10, qword_27EE83C10);
  v11 = sub_248030C78();
  v12 = sub_248030988();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_247F67000, v12, v11, "created XPC dictionary in kickoffModelPerfRunInXPCService", v13, 2u);
    MEMORY[0x24C1C47E0](v13, -1, -1);
  }

  xpc_dictionary_set_int64(v4, "computeUnit", *a1);
  sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24803DE50;
  v15 = sub_248030EC8();
  v17 = v16;
  *(v14 + 56) = MEMORY[0x277D837D0];
  v18 = sub_24800A52C();
  *(v14 + 64) = v18;
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  sub_2480308C8();

  v19 = (a1 + *(v2 + 28));
  v20 = *v19;
  v21 = v19[1];
  v23 = v19[2];
  v22 = v19[3];
  v24 = v19[4];
  v25 = v19[5];
  v26 = v19[6];

  xpc_dictionary_set_int64(v4, "experimentIterations", v20);
  xpc_dictionary_set_int64(v4, "loadCount", v21);
  xpc_dictionary_set_int64(v4, "predictionCount", v23);
  xpc_dictionary_set_int64(v4, "maxPredictionTime", v22);
  xpc_dictionary_set_int64(v4, "maxIterationTime", v24);
  if (v26)
  {
    v27 = sub_248030B78();
    xpc_dictionary_set_string(v4, "functionName", (v27 + 32));
  }

  sub_248030C78();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_24803DF20;
  v29 = sub_248030EC8();
  v30 = MEMORY[0x277D837D0];
  *(v28 + 56) = MEMORY[0x277D837D0];
  *(v28 + 64) = v18;
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  v32 = sub_248030EC8();
  *(v28 + 96) = v30;
  *(v28 + 104) = v18;
  *(v28 + 72) = v32;
  *(v28 + 80) = v33;
  v34 = sub_248030EC8();
  *(v28 + 136) = v30;
  *(v28 + 144) = v18;
  *(v28 + 112) = v34;
  *(v28 + 120) = v35;
  v36 = sub_248030EC8();
  *(v28 + 176) = v30;
  *(v28 + 184) = v18;
  *(v28 + 152) = v36;
  *(v28 + 160) = v37;
  v38 = sub_248030EC8();
  *(v28 + 216) = v30;
  *(v28 + 224) = v18;
  *(v28 + 192) = v38;
  *(v28 + 200) = v39;
  *(v28 + 256) = v30;
  *(v28 + 264) = v18;
  if (v26)
  {
    *(v28 + 232) = v25;
    *(v28 + 240) = v26;
  }

  else
  {
    *(v28 + 232) = 0x3E7465736E753CLL;
    *(v28 + 240) = 0xE700000000000000;
  }

  sub_2480308C8();

  return v4;
}

uint64_t sub_24800A514(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24800A52C()
{
  result = qword_27EE83C40;
  if (!qword_27EE83C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83C40);
  }

  return result;
}

void sub_24800A580(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC24DVTInstrumentsFoundation31XPCModelRunnerConnectionManager__serviceConnection);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
    v5 = xpc_connection_copy_invalidation_reason();
    swift_unknownObjectRelease();
    v6 = MEMORY[0x277D837D0];
    if (v5)
    {
      if (qword_27EE839D8 != -1)
      {
        swift_once();
      }

      v7 = sub_2480309A8();
      sub_248006DF0(v7, qword_27EE83C10);
      v8 = sub_248030C78();
      v9 = sub_248030988();
      if (os_log_type_enabled(v9, v8))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_247F67000, v9, v8, "attempting to convert error", v10, 2u);
        MEMORY[0x24C1C47E0](v10, -1, -1);
      }

      v11 = sub_248030BA8();
      v13 = v12;
      sub_248030C88();
      if (qword_27EE839F8 != -1)
      {
        swift_once();
      }

      sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_24803DE50;
      *(v14 + 56) = v6;
      *(v14 + 64) = sub_24800A52C();
      *(v14 + 32) = v11;
      *(v14 + 40) = v13;
      sub_2480308C8();
    }

    else
    {
      if (qword_27EE839D8 != -1)
      {
        swift_once();
      }

      v15 = sub_2480309A8();
      sub_248006DF0(v15, qword_27EE83C10);
      v16 = sub_248030C88();
      v17 = sub_248030988();
      if (os_log_type_enabled(v17, v16))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_247F67000, v17, v16, "no invalidation reason", v18, 2u);
        MEMORY[0x24C1C47E0](v18, -1, -1);
      }
    }

    sub_248030C88();
    if (qword_27EE839F8 != -1)
    {
      swift_once();
    }

    sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_24803DE50;
    v20 = [a1 description];
    v21 = sub_248030B38();
    v23 = v22;

    *(v19 + 56) = v6;
    *(v19 + 64) = sub_24800A52C();
    *(v19 + 32) = v21;
    *(v19 + 40) = v23;
    sub_2480308C8();
  }

  else
  {
    __break(1u);
  }
}

void sub_24800A904(_xpc_connection_s *a1)
{
  if (qword_27EE839D8 != -1)
  {
    swift_once();
  }

  v2 = sub_2480309A8();
  sub_248006DF0(v2, qword_27EE83C10);
  v3 = sub_248030C78();
  v4 = sub_248030988();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_247F67000, v4, v3, "about to cancel XPC serviceConnection", v5, 2u);
    MEMORY[0x24C1C47E0](v5, -1, -1);
  }

  xpc_connection_cancel(a1);
  v6 = sub_248030C78();
  v7 = sub_248030988();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_247F67000, v7, v6, "canceled XPC serviceConnection", v8, 2u);
    MEMORY[0x24C1C47E0](v8, -1, -1);
  }

  pid = xpc_connection_get_pid(a1);
  v10 = sub_248030EC8();
  v12 = v11;
  sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24803DE50;
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_24800A52C();
  *(v13 + 32) = v10;
  *(v13 + 40) = v12;
  sub_2480308C8();

  kill(pid, 9);
  v14 = sub_248030C78();
  v15 = sub_248030988();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_247F67000, v15, v14, "finished sending SIG_KILL to XPC service", v16, 2u);
    MEMORY[0x24C1C47E0](v16, -1, -1);
  }
}

uint64_t sub_24800ABCC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_24800ABDC()
{
  result = qword_27EE83C48;
  if (!qword_27EE83C48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE83C48);
  }

  return result;
}

unint64_t sub_24800AC28()
{
  result = qword_27EE83C50;
  if (!qword_27EE83C50)
  {
    sub_248030CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83C50);
  }

  return result;
}

unint64_t sub_24800AC80()
{
  result = qword_27EE83C60;
  if (!qword_27EE83C60)
  {
    sub_24800ACE4(&qword_27EE83C58, &qword_24803DFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83C60);
  }

  return result;
}

uint64_t sub_24800ACE4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24800AD3C()
{
  v0 = sub_2480309A8();
  sub_248008A94(v0, qword_27EE83C70);
  v1 = sub_248006DF0(v0, qword_27EE83C70);
  if (qword_27EE83A00 != -1)
  {
    swift_once();
  }

  v2 = sub_248006DF0(v0, qword_27EE85A48);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

DVTInstrumentsFoundation::PerfRunError_optional __swiftcall PerfRunError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 101;
  if ((rawValue - 101) >= 0xB)
  {
    v2 = 11;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24800AE28()
{
  v1 = *v0;
  sub_248030F98();
  MEMORY[0x24C1C1C00](v1 + 101);
  return sub_248030FB8();
}

uint64_t sub_24800AEA0()
{
  v1 = *v0;
  sub_248030F98();
  MEMORY[0x24C1C1C00](v1 + 101);
  return sub_248030FB8();
}

uint64_t sub_24800AF00(uint64_t a1, uint64_t a2)
{
  v4 = sub_248011E34();
  v5 = sub_248011E88();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

void *static CoreMLPerfCoordinator.TestFactory.create(connectionManager:modelDiskManager:)(uint64_t a1, uint64_t a2)
{
  sub_24800B14C(a1, v23);
  sub_24800B14C(a2, v20);
  type metadata accessor for CoreMLPerfCoordinator();
  v3 = swift_allocObject();
  v5 = v24;
  v4 = v25;
  v6 = sub_2480117E8(v23, v24);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = v21;
  v12 = v22;
  v13 = sub_2480117E8(v20, v21);
  v14 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = sub_248011468(v9, v16, nullsub_52, 0, v3, v5, v11, v4, v12);
  sub_248011838(v20);
  sub_248011838(v23);
  return v18;
}

uint64_t sub_24800B14C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24800B1D8()
{
  v0 = [objc_allocWithZone(type metadata accessor for XPCModelRunnerConnectionManager()) init];
  type metadata accessor for ModelWriter();
  v1 = swift_allocObject();
  type metadata accessor for CoreMLPerfCoordinator();
  v2 = swift_allocObject();
  v3 = v0;

  v4 = sub_248011150(v3, v1, sub_24800B2B4, 0, v2);

  qword_27EE85A38 = v4;
  return result;
}

void CoreMLPerfCoordinator.kickoffSuspendedPerfRunForModel(forToken:)(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v51 = a1;
  v52 = a2;
  v3 = sub_248030808();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v44[1] = v6;
  v45 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2480078E4(&qword_27EE83C88, &unk_24803DFF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v44 - v9;
  v11 = type metadata accessor for ModelInfo();
  v48 = *(v11 - 8);
  v49 = v11;
  v12 = *(v48 + 64);
  MEMORY[0x28223BE20](v11);
  v50 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v44 - v16;
  v18 = v2[14];
  v19 = *(*v18 + *MEMORY[0x277D841D0] + 16);
  v20 = (*(*v18 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v18 + v20));
  v44[0] = v19;
  sub_2480120FC(v18 + v19, v17, &qword_27EE83C90, &unk_24803E820);
  os_unfair_lock_unlock((v18 + v20));
  v46 = v4;
  v47 = v3;
  v21 = *(v4 + 48);
  v22 = 1;
  LODWORD(v3) = v21(v17, 1, v3);
  v23 = sub_2480121CC(v17, &qword_27EE83C90, &unk_24803E820);
  if (v3 == 1)
  {
    v24 = v2[12];
    MEMORY[0x28223BE20](v23);
    v25 = v51;
    v44[-2] = v51;
    os_unfair_lock_lock((v24 + 24));
    sub_248011884((v24 + 16), v10);
    os_unfair_lock_unlock((v24 + 24));
    if ((*(v48 + 48))(v10, 1, v49) == 1)
    {
      sub_2480121CC(v10, &qword_27EE83C88, &unk_24803DFF0);
      if (qword_27EE839E0 != -1)
      {
        swift_once();
      }

      v26 = sub_2480309A8();
      sub_248006DF0(v26, qword_27EE83C70);
      v27 = sub_248030C88();
      v28 = sub_248030988();
      if (os_log_type_enabled(v28, v27))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_247F67000, v28, v27, "Unable to start perf run, no modelInfo found for token", v29, 2u);
        MEMORY[0x24C1C47E0](v29, -1, -1);
      }

      v22 = 1;
      LODWORD(v28) = 4;
    }

    else
    {
      v30 = sub_248012164(v10, v50, type metadata accessor for ModelInfo);
      MEMORY[0x28223BE20](v30);
      v44[-2] = v25;
      os_unfair_lock_lock((v18 + v20));
      sub_2480118A0(v18 + v44[0]);
      os_unfair_lock_unlock((v18 + v20));
      v31 = v2[10];
      v32 = v2[11];
      sub_2480118BC(v2 + 7, v31);
      v28 = (*(v32 + 8))(v31, v32);
      v33 = v2[10];
      v34 = v2[11];
      v49 = sub_2480118BC(v2 + 7, v33);
      v35 = swift_allocObject();
      swift_weakInit();
      v36 = v45;
      v37 = v46;
      v38 = v47;
      (*(v46 + 16))(v45, v25, v47);
      v39 = (*(v37 + 80) + 24) & ~*(v37 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = v35;
      (*(v37 + 32))(v40 + v39, v36, v38);
      v41 = *(v34 + 16);

      v42 = v50;
      v41(v50, v28, sub_248011900, v40, v33, v34);
      sub_248011FF4(v42, type metadata accessor for ModelInfo);

      v22 = 0;
    }
  }

  else
  {
    v53 = 0uLL;
    v54 = 1;
    sub_24800B874(&v53, v51);
    LODWORD(v28) = 0;
  }

  v43 = v52;
  *v52 = v28;
  *(v43 + 4) = v22;
}

uint64_t sub_24800B874(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v26 = type metadata accessor for ModelLocation();
  v6 = *(v26 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2480078E4(&qword_27EE83CD8, &qword_24803E1E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v17 = *(a1 + 16);
  v18 = v3[12];
  v28 = a2;
  v29 = *a1;
  v30 = v17;
  os_unfair_lock_lock((v18 + 24));
  sub_2480120BC((v18 + 16), v16);
  os_unfair_lock_unlock((v18 + 24));
  v19 = v3[14];
  v27 = a2;
  v20 = *(*v19 + *MEMORY[0x277D841D0] + 16);
  v21 = (*(*v19 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v19 + v21));
  sub_2480120E0(v19 + v20);
  os_unfair_lock_unlock((v19 + v21));
  sub_2480120FC(v16, v14, &qword_27EE83CD8, &qword_24803E1E0);
  if ((*(v6 + 48))(v14, 1, v26) == 1)
  {
    sub_2480121CC(v16, &qword_27EE83CD8, &qword_24803E1E0);
  }

  else
  {
    sub_248012164(v14, v9, type metadata accessor for ModelLocation);
    v22 = v3[5];
    v23 = v3[6];
    sub_2480118BC(v3 + 2, v22);
    (*(v23 + 48))(v9, v22, v23);
    sub_248011FF4(v9, type metadata accessor for ModelLocation);
    v14 = v16;
  }

  return sub_2480121CC(v14, &qword_27EE83CD8, &qword_24803E1E0);
}

uint64_t sub_24800BB40(uint64_t a1, uint64_t a2)
{
  sub_2480121CC(a1, &qword_27EE83C90, &unk_24803E820);
  v4 = sub_248030808();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t sub_24800BC04(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *&v8 = v4;
    *(&v8 + 1) = v5;
    v9 = v6;
    sub_24800B874(&v8, a3);
  }

  return result;
}

uint64_t CoreMLPerfCoordinator.cancelPerfRun(forModelToken:)(uint64_t a1)
{
  v2 = xmmword_24803DFB0;
  v3 = 1;
  return sub_24800B874(&v2, a1);
}

uint64_t sub_24800BCC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = sub_248028620(a2), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = type metadata accessor for ModelInfo();
    v10 = *(v9 - 8);
    sub_248012054(v8 + *(v10 + 72) * v7, a3, type metadata accessor for ModelInfo);
    return (*(v10 + 56))(a3, 0, 1, v9);
  }

  else
  {
    v12 = type metadata accessor for ModelInfo();
    return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }
}

BOOL CoreMLPerfCoordinator.__testOnly_isInternalStateClean.getter()
{
  v1 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - v3;
  v5 = *(v0 + 96);
  os_unfair_lock_lock((v5 + 24));
  v6 = *(*(v5 + 16) + 16);
  os_unfair_lock_unlock((v5 + 24));
  if (v6)
  {
    return 0;
  }

  v8 = *(v0 + 112);
  v9 = *(*v8 + *MEMORY[0x277D841D0] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_2480120FC(v8 + v9, v4, &qword_27EE83C90, &unk_24803E820);
  os_unfair_lock_unlock((v8 + v10));
  v11 = sub_248030808();
  v7 = (*(*(v11 - 8) + 48))(v4, 1, v11) == 1;
  sub_2480121CC(v4, &qword_27EE83C90, &unk_24803E820);
  return v7;
}

uint64_t sub_24800BF68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v45 = a5;
  v43 = a3;
  v44 = a4;
  v47 = a6;
  v8 = sub_2480078E4(&qword_27EE83C88, &unk_24803DFF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v41 - v10;
  v12 = sub_248030808();
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ModelInfo();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v41 - v22;
  v46 = a1;
  v24 = *a1;
  if (*(v24 + 16) && (v25 = sub_248028620(a2), (v26 & 1) != 0))
  {
    v41 = a2;
    sub_248012054(*(v24 + 56) + *(v17 + 72) * v25, v21, type metadata accessor for ModelInfo);
    sub_248012164(v21, v23, type metadata accessor for ModelInfo);
    if (qword_27EE839E0 != -1)
    {
      swift_once();
    }

    v27 = sub_2480309A8();
    sub_248006DF0(v27, qword_27EE83C70);
    v28 = sub_248030C78();
    v29 = sub_248030988();
    if (os_log_type_enabled(v29, v28))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_247F67000, v29, v28, "found a registered postTraceCallback", v30, 2u);
      MEMORY[0x24C1C47E0](v30, -1, -1);
    }

    v31 = *(v23 + 1);
    v32 = *(v23 + 2);
    v48[0] = v43;
    v48[1] = v44;
    v49 = v45 & 1;
    v31(v48);
    (*(v42 + 16))(v15, v41, v12);
    (*(v17 + 56))(v11, 1, 1, v16);
    sub_24800C414(v11, v15);
    v33 = v47;
    sub_248012054(&v23[*(v16 + 24)], v47, type metadata accessor for ModelLocation);
    sub_248011FF4(v23, type metadata accessor for ModelInfo);
    v34 = type metadata accessor for ModelLocation();
    return (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  }

  else
  {
    if (qword_27EE839E0 != -1)
    {
      swift_once();
    }

    v36 = sub_2480309A8();
    sub_248006DF0(v36, qword_27EE83C70);
    v37 = sub_248030C78();
    v38 = sub_248030988();
    if (os_log_type_enabled(v38, v37))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_247F67000, v38, v37, "no postTraceCallback found", v39, 2u);
      MEMORY[0x24C1C47E0](v39, -1, -1);
    }

    v40 = type metadata accessor for ModelLocation();
    return (*(*(v40 - 8) + 56))(v47, 1, 1, v40);
  }
}

uint64_t sub_24800C414(uint64_t a1, uint64_t a2)
{
  v5 = sub_2480078E4(&qword_27EE83C88, &unk_24803DFF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for ModelInfo();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_2480121CC(a1, &qword_27EE83C88, &unk_24803DFF0);
    sub_24800F7F8(a2, type metadata accessor for ModelInfo, type metadata accessor for ModelInfo, type metadata accessor for ModelInfo, sub_248010AF8, v8);
    v14 = sub_248030808();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_2480121CC(v8, &qword_27EE83C88, &unk_24803DFF0);
  }

  else
  {
    sub_248012164(a1, v12, type metadata accessor for ModelInfo);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_24801060C(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_248030808();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_24800C674(uint64_t a1, uint64_t a2)
{
  v5 = sub_2480078E4(&qword_27EE83CC0, &qword_24803E1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for SegmentedModelState();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_2480121CC(a1, &qword_27EE83CC0, &qword_24803E1D0);
    sub_24800F7F8(a2, type metadata accessor for SegmentedModelState, type metadata accessor for SegmentedModelState, type metadata accessor for SegmentedModelState, sub_248010E24, v8);
    v14 = sub_248030808();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_2480121CC(v8, &qword_27EE83CC0, &qword_24803E1D0);
  }

  else
  {
    sub_248012164(a1, v12, type metadata accessor for SegmentedModelState);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_248010808(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_248030808();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_24800C8D4(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = sub_248030808();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v31 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2480078E4(&qword_27EE83CE0, &qword_24803E1E8);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29[-v10];
  v12 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v35 = &v29[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v29[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v29[-v19];
  v33 = a1;
  sub_2480120FC(a1, &v29[-v19], &qword_27EE83C90, &unk_24803E820);
  (*(v4 + 16))(v18, v34, v3);
  v21 = *(v4 + 56);
  v34 = v4 + 56;
  v32 = v21;
  v21(v18, 0, 1, v3);
  v22 = *(v8 + 56);
  sub_2480120FC(v20, v11, &qword_27EE83C90, &unk_24803E820);
  sub_2480120FC(v18, &v11[v22], &qword_27EE83C90, &unk_24803E820);
  v23 = *(v4 + 48);
  if (v23(v11, 1, v3) != 1)
  {
    sub_2480120FC(v11, v35, &qword_27EE83C90, &unk_24803E820);
    if (v23(&v11[v22], 1, v3) != 1)
    {
      v25 = v31;
      (*(v4 + 32))(v31, &v11[v22], v3);
      sub_24801222C(&qword_27EE83CE8);
      v26 = v35;
      v30 = sub_248030B18();
      v27 = *(v4 + 8);
      v27(v25, v3);
      sub_2480121CC(v18, &qword_27EE83C90, &unk_24803E820);
      sub_2480121CC(v20, &qword_27EE83C90, &unk_24803E820);
      v27(v26, v3);
      result = sub_2480121CC(v11, &qword_27EE83C90, &unk_24803E820);
      if ((v30 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_2480121CC(v18, &qword_27EE83C90, &unk_24803E820);
    sub_2480121CC(v20, &qword_27EE83C90, &unk_24803E820);
    (*(v4 + 8))(v35, v3);
    return sub_2480121CC(v11, &qword_27EE83CE0, &qword_24803E1E8);
  }

  sub_2480121CC(v18, &qword_27EE83C90, &unk_24803E820);
  sub_2480121CC(v20, &qword_27EE83C90, &unk_24803E820);
  if (v23(&v11[v22], 1, v3) != 1)
  {
    return sub_2480121CC(v11, &qword_27EE83CE0, &qword_24803E1E8);
  }

  sub_2480121CC(v11, &qword_27EE83C90, &unk_24803E820);
LABEL_8:
  v28 = v33;
  sub_2480121CC(v33, &qword_27EE83C90, &unk_24803E820);
  return v32(v28, 1, 1, v3);
}

uint64_t *CoreMLPerfCoordinator.deinit()
{
  sub_248011838(v0 + 2);
  sub_248011838(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  v3 = v0[14];

  return v0;
}

uint64_t CoreMLPerfCoordinator.__deallocating_deinit()
{
  sub_248011838(v0 + 2);
  sub_248011838(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  v3 = v0[14];

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

uint64_t CoreMLPerfCoordinator.writeModelToDiskAndRegisterCallback(modelPayload:perfRunConfig:computeUnit:postTraceCompletionHandler:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v52 = a5;
  v51 = a4;
  v49 = a3;
  v53 = a6;
  v10 = sub_248030808();
  v54 = *(v10 - 8);
  v55 = v10;
  v11 = *(v54 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ModelLocation();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *a1;
  v19 = *(a1 + 2);
  v18 = *(a1 + 3);
  LOBYTE(a1) = *(a1 + 32);
  v20 = *(a2 + 16);
  v60[0] = *a2;
  v60[1] = v20;
  v60[2] = *(a2 + 32);
  v61 = *(a2 + 48);
  v21 = v7[5];
  v22 = v7[6];
  sub_2480118BC(v7 + 2, v21);
  v56 = v50;
  v57 = v19;
  v58 = v18;
  v59 = a1;
  (*(v22 + 8))(&v56, v21, v22);
  *&v50 = v14;
  v23 = v49;
  sub_2480307F8();
  v47 = sub_2480307E8();
  v46 = v24;
  v48 = sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  v45[1] = qword_27EE85A40;
  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_24803DFD0;
  *&v56 = v23;
  v26 = sub_248030EC8();
  v28 = v27;
  v29 = MEMORY[0x277D837D0];
  *(v25 + 56) = MEMORY[0x277D837D0];
  v30 = sub_24800A52C();
  *(v25 + 64) = v30;
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  v31 = sub_2480307E8();
  *(v25 + 96) = v29;
  *(v25 + 104) = v30;
  *(v25 + 72) = v31;
  *(v25 + 80) = v32;
  *(v25 + 136) = v29;
  *(v25 + 144) = v30;
  v33 = v46;
  *(v25 + 112) = v47;
  *(v25 + 120) = v33;
  v34 = &v17[*(v50 + 20)];
  v36 = *v34;
  v35 = *(v34 + 1);
  *(v25 + 176) = v29;
  *(v25 + 184) = v30;
  *(v25 + 152) = v36;
  *(v25 + 160) = v35;

  sub_2480308C8();

  v38 = v13;
  v39 = v7[12];
  MEMORY[0x28223BE20](v37);
  v40 = v51;
  v45[-6] = v23;
  v45[-5] = v40;
  v45[-4] = v52;
  v45[-3] = v17;
  v45[-2] = v60;
  v45[-1] = v38;
  os_unfair_lock_lock(v39 + 6);
  sub_248011974(&v39[4]);
  os_unfair_lock_unlock(v39 + 6);
  v42 = v53;
  v41 = v54;
  v43 = v55;
  (*(v54 + 16))(v53, v38, v55);
  (*(v41 + 56))(v42, 0, 1, v43);
  (*(v41 + 8))(v38, v43);
  return sub_248011FF4(v17, type metadata accessor for ModelLocation);
}

uint64_t sub_24800D380(uint64_t a1)
{
  v2 = *v1;
  v4 = xmmword_24803DFB0;
  v5 = 1;
  return sub_24800B874(&v4, a1);
}

void sub_24800D3C8(char *a1@<X8>)
{
  v4 = *(*v1 + 104);
  os_unfair_lock_lock(v4 + 6);
  sub_24801235C(a1);
  os_unfair_lock_unlock(v4 + 6);
  if (v2)
  {
    __break(1u);
  }
}

void CoreMLPerfCoordinator.generateSegmentationConfig()(char *a1@<X8>)
{
  v4 = *(v1 + 104);
  os_unfair_lock_lock(v4 + 6);
  sub_248011998(a1);
  os_unfair_lock_unlock(v4 + 6);
  if (v2)
  {
    __break(1u);
  }
}

void CoreMLPerfCoordinator.writeSegment(payload:)(uint64_t a1)
{
  v3 = sub_248030808();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for SegmentPayload();
  (*(v4 + 16))(v7, a1 + *(v8 + 28), v3);
  v9 = *(v1 + 104);
  v11 = v7;
  os_unfair_lock_lock((v9 + 24));
  sub_2480119B4((v9 + 16));
  os_unfair_lock_unlock((v9 + 24));
  (*(v4 + 8))(v7, v3);
}

void CoreMLPerfCoordinator.assembleModelSegments(modelToken:)(uint64_t a1)
{
  v3 = v1;
  v5 = sub_248030778();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v13 = v1[13];
  v38 = a1;
  os_unfair_lock_lock((v13 + 24));
  sub_2480119F0((v13 + 16), v12);
  os_unfair_lock_unlock((v13 + 24));
  if (!v2)
  {
    v36 = a1;
    v37 = v6;
    v39 = v5;
    LODWORD(v35) = sub_248030C78();
    if (qword_27EE839F8 != -1)
    {
      swift_once();
    }

    v14 = qword_27EE85A40;
    v34 = sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
    v15 = swift_allocObject();
    v33 = xmmword_24803DE50;
    *(v15 + 16) = xmmword_24803DE50;
    v16 = sub_248030738();
    v18 = v17;
    *(v15 + 56) = MEMORY[0x277D837D0];
    v32 = sub_24800A52C();
    *(v15 + 64) = v32;
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    v35 = v14;
    sub_2480308C8();

    v19 = v3[5];
    v20 = v3[6];
    sub_2480118BC(v3 + 2, v19);
    v21 = v36;
    (*(v20 + 24))(v36, v12, v19, v20);
    sub_248030C78();
    v22 = swift_allocObject();
    *(v22 + 16) = v33;
    v23 = sub_248030738();
    v24 = v32;
    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 64) = v24;
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    sub_2480308C8();

    MEMORY[0x28223BE20](v26);
    *(&v31 - 2) = v21;
    *(&v31 - 1) = v10;
    os_unfair_lock_lock((v13 + 24));
    sub_248011A0C(v13 + 16);
    v27 = v37;
    os_unfair_lock_unlock((v13 + 24));
    v28 = *(v27 + 8);
    v29 = v12;
    v30 = v39;
    v28(v29, v39);
    v28(v10, v30);
  }
}

void CoreMLPerfCoordinator.finalizeModel(modelName:modelToken:isCompressed:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v39 = a4;
  v40 = a1;
  v41 = a2;
  v38 = a5;
  v8 = sub_248030778();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v35 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v35 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - v19;
  v21 = v6[13];
  v43 = a3;
  os_unfair_lock_lock((v21 + 24));
  v22 = v44;
  sub_248012374((v21 + 16), v20);
  os_unfair_lock_unlock((v21 + 24));
  if (!v22)
  {
    v44 = 0;
    v35 = v12;
    v36 = a3;
    v37 = v8;
    v24 = v6[5];
    v23 = v6[6];
    sub_2480118BC(v6 + 2, v24);
    if (v39)
    {
      v25 = v44;
      (*(v23 + 32))(v20, v40, v41, v24, v23);
      v26 = v36;
      if (!v25)
      {
        v44 = 0;
        v27 = v37;
        v28 = v42;
        goto LABEL_8;
      }
    }

    else
    {
      v29 = v44;
      (*(v23 + 40))(v20, v40, v41, v24, v23);
      v26 = v36;
      if (!v29)
      {
        v44 = 0;
        v27 = v37;
        v28 = v42;
        v18 = v15;
LABEL_8:
        v30 = v38;
        (*(v28 + 32))(v38, v18, v27);
        v31 = v35;
        v32 = (*(v28 + 16))(v35, v30, v27);
        MEMORY[0x28223BE20](v32);
        *(&v35 - 2) = v26;
        *(&v35 - 1) = v31;
        os_unfair_lock_lock((v21 + 24));
        v33 = v44;
        sub_248011A2C(v21 + 16);
        if (v33)
        {
          os_unfair_lock_unlock((v21 + 24));
          __break(1u);
        }

        else
        {
          os_unfair_lock_unlock((v21 + 24));
          v34 = *(v28 + 8);
          v34(v20, v27);
          v34(v31, v27);
        }

        return;
      }
    }

    (*(v42 + 8))(v20, v37);
  }
}

void sub_24800DD44(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v6 = *a4;
  v7 = a4[1];
  v8 = a4[2];
  v9 = *(a4 + 6);
  v5 = *(*v4 + 96);
  os_unfair_lock_lock(v5 + 6);
  sub_248012344(&v5[4]);
  os_unfair_lock_unlock(v5 + 6);
}

void CoreMLPerfCoordinator.finalizePerfRunSetup(modelToken:modelURL:isCompressed:perfRunConfig:computeUnit:postTraceCompletionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v6 = *a4;
  v7 = a4[1];
  v8 = a4[2];
  v9 = *(a4 + 6);
  v5 = *(v4 + 96);
  os_unfair_lock_lock(v5 + 6);
  sub_248011A4C(&v5[4]);
  os_unfair_lock_unlock(v5 + 6);
}

uint64_t sub_24800DE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a3;
  v31 = a7;
  v28 = a5;
  v29 = a2;
  v32 = a1;
  v9 = sub_2480078E4(&qword_27EE83C88, &unk_24803DFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = sub_248030808();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ModelInfo();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_248012054(v28, v23 + *(v21 + 24), type metadata accessor for ModelLocation);
  v24 = v30;
  *v23 = v29;
  v23[1] = v24;
  v23[2] = a4;
  v25 = v23 + *(v18 + 28);
  *(v25 + 6) = *(a6 + 48);
  v26 = *(a6 + 32);
  *(v25 + 1) = *(a6 + 16);
  *(v25 + 2) = v26;
  *v25 = *a6;
  (*(v14 + 16))(v17, v31, v13);
  sub_248012054(v23, v12, type metadata accessor for ModelInfo);
  (*(v19 + 56))(v12, 0, 1, v18);
  sub_248011EDC(a6, v33);

  sub_24800C414(v12, v17);
  return sub_248011FF4(v23, type metadata accessor for ModelInfo);
}

uint64_t sub_24800E0D0@<X0>(char *a1@<X8>)
{
  v2 = sub_2480078E4(&qword_27EE83CC0, &qword_24803E1D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  v6 = sub_248030808();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  sub_2480307F8();
  v14 = type metadata accessor for SegmentationConfig();
  v15 = *(v7 + 16);
  v15(&a1[*(v14 + 20)], v13, v6);
  *a1 = 524288000;
  v15(v11, v13, v6);
  sub_248012054(a1, v5, type metadata accessor for SegmentationConfig);
  v16 = type metadata accessor for SegmentedModelState();
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
  sub_24800C674(v5, v11);
  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_24800E2F0(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v54 = a4;
  v55 = a3;
  v6 = sub_248030778();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SegmentedModelState();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v49 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  v21 = *a1;
  if (*(*a1 + 16) && (v22 = sub_248028620(a2), (v23 & 1) != 0))
  {
    sub_248012054(*(v21 + 56) + *(v11 + 72) * v22, v18, type metadata accessor for SegmentedModelState);
    sub_248012164(v18, v20, type metadata accessor for SegmentedModelState);
    sub_248012054(v20, v15, type metadata accessor for SegmentedModelState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v56 + 32))(v9, v15, v57);
      LODWORD(v53) = sub_248030C78();
      if (qword_27EE839F8 != -1)
      {
        swift_once();
      }

      v24 = qword_27EE85A40;
      sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
      v25 = swift_allocObject();
      v51 = xmmword_24803DFE0;
      *(v25 + 16) = xmmword_24803DFE0;
      v26 = MEMORY[0x277D83B88];
      v27 = MEMORY[0x277D83C10];
      *(v25 + 56) = MEMORY[0x277D83B88];
      *(v25 + 64) = v27;
      v28 = v55;
      v30 = *(v55 + 16);
      v29 = *(v55 + 24);
      *(v25 + 32) = v30;
      *(v25 + 96) = v26;
      *(v25 + 104) = v27;
      v50 = v29;
      *(v25 + 72) = v29;
      v31 = sub_248030738();
      v33 = v32;
      *(v25 + 136) = MEMORY[0x277D837D0];
      v52 = sub_24800A52C();
      *(v25 + 144) = v52;
      *(v25 + 112) = v31;
      *(v25 + 120) = v33;
      v53 = v24;
      sub_2480308C8();

      v34 = v54[5];
      v35 = v54[6];
      sub_2480118BC(v54 + 2, v34);
      v36 = v58;
      (*(v35 + 16))(v28, v9, v34, v35);
      if (v36)
      {
        sub_248030C88();
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_24803DE50;
        swift_getErrorValue();
        v38 = sub_248030F18();
        v39 = v52;
        *(v37 + 56) = MEMORY[0x277D837D0];
        *(v37 + 64) = v39;
        *(v37 + 32) = v38;
        *(v37 + 40) = v40;
        sub_2480308C8();
      }

      else
      {
        sub_248030C78();
        v42 = swift_allocObject();
        *(v42 + 16) = v51;
        v43 = MEMORY[0x277D83B88];
        *(v42 + 56) = MEMORY[0x277D83B88];
        v44 = MEMORY[0x277D83C10];
        *(v42 + 32) = v30;
        *(v42 + 96) = v43;
        *(v42 + 104) = v44;
        v45 = v50;
        *(v42 + 64) = v44;
        *(v42 + 72) = v45;
        v46 = sub_248030738();
        v47 = v52;
        *(v42 + 136) = MEMORY[0x277D837D0];
        *(v42 + 144) = v47;
        *(v42 + 112) = v46;
        *(v42 + 120) = v48;
        sub_2480308C8();
      }

      (*(v56 + 8))(v9, v57);
      return sub_248011FF4(v20, type metadata accessor for SegmentedModelState);
    }

    else
    {
      sub_248011FF4(v15, type metadata accessor for SegmentedModelState);
      sub_248030C88();
      if (qword_27EE839F8 != -1)
      {
        swift_once();
      }

      sub_2480308C8();
      return sub_248011FF4(v20, type metadata accessor for SegmentedModelState);
    }
  }

  else
  {
    sub_248030C88();
    if (qword_27EE839F8 != -1)
    {
      swift_once();
    }

    return sub_2480308C8();
  }
}

uint64_t sub_24800E8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2480078E4(&qword_27EE83CC0, &qword_24803E1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v17 - v7;
  v9 = sub_248030808();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a2);
  v14 = sub_248030778();
  (*(*(v14 - 8) + 16))(v8, a3, v14);
  v15 = type metadata accessor for SegmentedModelState();
  swift_storeEnumTagMultiPayload();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  return sub_24800C674(v8, v12);
}

uint64_t sub_24800EAB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  v61 = a8;
  v63 = a7;
  v64 = a6;
  v59 = a5;
  v56 = a4;
  v55 = a3;
  v65 = a1;
  v9 = sub_2480078E4(&qword_27EE83C88, &unk_24803DFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v62 = &v51 - v11;
  v60 = type metadata accessor for ModelInfo();
  v57 = *(v60 - 8);
  v12 = *(v57 + 64);
  MEMORY[0x28223BE20](v60);
  v14 = (&v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = type metadata accessor for ModelLocation();
  v15 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v58 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v51 - v19;
  v21 = sub_248030808();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v53 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v66 = &v51 - v26;
  v27 = sub_248030778();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a2;
  sub_248030718();
  v32 = sub_2480306D8();
  v34 = v33;
  (*(v28 + 8))(v31, v27);
  sub_2480307D8();
  v35 = v22;
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_2480121CC(v20, &qword_27EE83C90, &unk_24803E820);
    sub_248030C88();
    if (qword_27EE839F8 != -1)
    {
      swift_once();
    }

    sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_24803DE50;
    *(v36 + 56) = MEMORY[0x277D837D0];
    *(v36 + 64) = sub_24800A52C();
    *(v36 + 32) = v32;
    *(v36 + 40) = v34;
    sub_2480308C8();
  }

  else
  {

    v38 = v66;
    (*(v22 + 32))(v66, v20, v21);
    v51 = *(v22 + 16);
    v39 = v58;
    v51(v58, v38, v21);
    v40 = sub_2480306D8();
    v41 = v52;
    v42 = (v39 + *(v52 + 20));
    *v42 = v40;
    v42[1] = v43;
    *(v39 + *(v41 + 24)) = v55 & 1;
    v44 = v60;
    sub_248012054(v39, v14 + *(v60 + 24), type metadata accessor for ModelLocation);
    v45 = v59;
    *v14 = v56;
    v14[1] = v45;
    v46 = v63;
    v14[2] = v64;
    v47 = v14 + *(v44 + 28);
    *(v47 + 6) = *(v46 + 48);
    v48 = *(v46 + 32);
    *(v47 + 1) = *(v46 + 16);
    *(v47 + 2) = v48;
    *v47 = *v46;
    v49 = v53;
    v51(v53, v61, v21);
    v50 = v62;
    sub_248012054(v14, v62, type metadata accessor for ModelInfo);
    (*(v57 + 56))(v50, 0, 1, v44);
    sub_248011EDC(v46, v67);

    sub_24800C414(v50, v49);
    sub_248011FF4(v14, type metadata accessor for ModelInfo);
    sub_248011FF4(v39, type metadata accessor for ModelLocation);
    return (*(v35 + 8))(v66, v21);
  }
}

uint64_t sub_24800F0A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SegmentedModelState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v24 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  v17 = *a1;
  if (*(v17 + 16) && (v18 = sub_248028620(a2), (v19 & 1) != 0))
  {
    sub_248012054(*(v17 + 56) + *(v7 + 72) * v18, v14, type metadata accessor for SegmentedModelState);
    sub_248012164(v14, v16, type metadata accessor for SegmentedModelState);
    sub_248012054(v16, v11, type metadata accessor for SegmentedModelState);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_248011FF4(v16, type metadata accessor for SegmentedModelState);
      v20 = sub_248030778();
      return (*(*(v20 - 8) + 32))(a3, v11, v20);
    }

    else
    {
      sub_248011FA0();
      swift_allocError();
      *v23 = 8;
      swift_willThrow();
      sub_248011FF4(v16, type metadata accessor for SegmentedModelState);
      return sub_248011FF4(v11, type metadata accessor for SegmentedModelState);
    }
  }

  else
  {
    sub_248011FA0();
    swift_allocError();
    *v22 = 7;
    return swift_willThrow();
  }
}

uint64_t sub_24800F31C(void *a1, uint64_t a2)
{
  v5 = sub_2480078E4(&qword_27EE83CC0, &qword_24803E1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v36 - v7;
  v8 = sub_248030808();
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v8);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_248030778();
  v37 = *(v39 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SegmentedModelState();
  v42 = *(v14 - 8);
  v15 = *(v42 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v36 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v36 - v22;
  v41 = a1;
  v24 = *a1;
  if (*(v24 + 16) && (v25 = sub_248028620(a2), (v26 & 1) != 0))
  {
    sub_248012054(*(v24 + 56) + *(v42 + 72) * v25, v21, type metadata accessor for SegmentedModelState);
    sub_248012164(v21, v23, type metadata accessor for SegmentedModelState);
    sub_248012054(v23, v18, type metadata accessor for SegmentedModelState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 2) >= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_24801C7C8(1, v13);
        if (!v2)
        {
          v32 = v38;
          (*(v36 + 16))(v38, a2, v8);
          v33 = v37;
          v35 = v39;
          v34 = v40;
          (*(v37 + 16))(v40, v13, v39);
          swift_storeEnumTagMultiPayload();
          (*(v42 + 56))(v34, 0, 1, v14);
          sub_24800C674(v34, v32);
          (*(v33 + 8))(v13, v35);
        }
      }

      sub_248011FF4(v23, type metadata accessor for SegmentedModelState);
      v29 = v18;
    }

    else
    {
      sub_248011FF4(v18, type metadata accessor for SegmentedModelState);
      sub_248030C88();
      if (qword_27EE839F8 != -1)
      {
        swift_once();
      }

      sub_2480308C8();
      sub_248011FA0();
      swift_allocError();
      *v28 = 8;
      swift_willThrow();
      v29 = v23;
    }

    return sub_248011FF4(v29, type metadata accessor for SegmentedModelState);
  }

  else
  {
    sub_248011FA0();
    swift_allocError();
    *v30 = 7;
    return swift_willThrow();
  }
}

uint64_t sub_24800F7F8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = *v6;
  v14 = sub_248028620(a1);
  if (v15)
  {
    v16 = v14;
    v17 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v11;
    v32 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v19 = v32;
    }

    v20 = *(v19 + 48);
    v21 = sub_248030808();
    v22 = v16;
    (*(*(v21 - 8) + 8))(v20 + *(*(v21 - 8) + 72) * v16, v21);
    v23 = *(v19 + 56);
    v24 = a2(0);
    v31 = *(v24 - 8);
    sub_248012164(v23 + *(v31 + 72) * v22, a6, a3);
    sub_2480102D0(v22, v19, a4);
    *v11 = v19;
    v25 = *(v31 + 56);
    v26 = a6;
    v27 = 0;
    v28 = v24;
  }

  else
  {
    v29 = a2(0);
    v25 = *(*(v29 - 8) + 56);
    v28 = v29;
    v26 = a6;
    v27 = 1;
  }

  return v25(v26, v27, 1, v28);
}

uint64_t sub_24800F9B8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ModelInfo();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_248030808();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_2480078E4(&qword_27EE83CB0, &qword_24803E1C8);
  v48 = a2;
  result = sub_248030E38();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_248012164(v31 + v32 * v28, v52, type metadata accessor for ModelInfo);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_248012054(v33 + v32 * v28, v52, type metadata accessor for ModelInfo);
      }

      v34 = *(v16 + 40);
      sub_24801222C(&qword_27EE83CB8);
      result = sub_248030AF8();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_248012164(v52, *(v16 + 56) + v32 * v24, type metadata accessor for ModelInfo);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_24800FE44(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for SegmentedModelState();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_248030808();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_2480078E4(&qword_27EE83CC8, &qword_24803E1D8);
  v48 = a2;
  result = sub_248030E38();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_248012164(v31 + v32 * v28, v52, type metadata accessor for SegmentedModelState);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_248012054(v33 + v32 * v28, v52, type metadata accessor for SegmentedModelState);
      }

      v34 = *(v16 + 40);
      sub_24801222C(&qword_27EE83CB8);
      result = sub_248030AF8();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_248012164(v52, *(v16 + 56) + v32 * v24, type metadata accessor for SegmentedModelState);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

unint64_t sub_2480102D0(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v39 = a3;
  v5 = sub_248030808();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = sub_248030D88();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v41 = v11;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v5);
      v24 = *(a2 + 40);
      sub_24801222C(&qword_27EE83CB8);
      v25 = sub_248030AF8();
      result = (*v40)(v10, v5);
      v16 = v22;
      v26 = v25 & v22;
      if (a1 >= v43)
      {
        if (v26 >= v43 && a1 >= v26)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v44 + 48) + v20 * a1 >= (*(v44 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v29 = *(v44 + 56);
          v30 = *(*(v39(0) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v13;
          v33 = v29 + v30 * v13 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v35 = v31 == v32;
            v11 = v41;
            v16 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v43 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v41;
      a2 = v44;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24801060C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_248030808();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_248028620(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for ModelInfo();
      return sub_248011F38(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for ModelInfo);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_248010AF8();
    goto LABEL_7;
  }

  sub_24800F9B8(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_248028620(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_248030F08();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_248010A04(v15, v12, a1, v21, type metadata accessor for ModelInfo, type metadata accessor for ModelInfo);
}

uint64_t sub_248010808(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_248030808();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_248028620(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for SegmentedModelState();
      return sub_248011F38(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for SegmentedModelState);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_248010E24();
    goto LABEL_7;
  }

  sub_24800FE44(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_248028620(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_248030F08();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_248010A04(v15, v12, a1, v21, type metadata accessor for SegmentedModelState, type metadata accessor for SegmentedModelState);
}

uint64_t sub_248010A04(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_248030808();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = a5(0);
  result = sub_248012164(a3, v14 + *(*(v15 - 8) + 72) * a1, a6);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

char *sub_248010AF8()
{
  v1 = v0;
  v2 = type metadata accessor for ModelInfo();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_248030808();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2480078E4(&qword_27EE83CB0, &qword_24803E1C8);
  v7 = *v0;
  v8 = sub_248030E28();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_248012054(*(v7 + 56) + v28, v37, type metadata accessor for ModelInfo);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_248012164(v27, *(v29 + 56) + v28, type metadata accessor for ModelInfo);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

char *sub_248010E24()
{
  v1 = v0;
  v2 = type metadata accessor for SegmentedModelState();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_248030808();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2480078E4(&qword_27EE83CC8, &qword_24803E1D8);
  v7 = *v0;
  v8 = sub_248030E28();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_248012054(*(v7 + 56) + v28, v37, type metadata accessor for SegmentedModelState);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_248012164(v27, *(v29 + 56) + v28, type metadata accessor for SegmentedModelState);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_248011150(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v9 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v28 - v11;
  v29[3] = type metadata accessor for XPCModelRunnerConnectionManager();
  v29[4] = &off_285A191F8;
  v29[0] = a1;
  v28[3] = type metadata accessor for ModelWriter();
  v28[4] = &off_285A199D8;
  v28[0] = a2;
  v13 = MEMORY[0x277D84F90];
  v14 = sub_248028980(MEMORY[0x277D84F90]);
  sub_2480078E4(&qword_27EE83CF0, &qword_24803E1F0);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = v14;
  a5[12] = v15;
  v16 = sub_248028B9C(v13);
  sub_2480078E4(&qword_27EE83CF8, &qword_24803E1F8);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  *(v17 + 16) = v16;
  a5[13] = v17;
  v18 = sub_248030808();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = sub_2480078E4(&qword_27EE83D00, &unk_24803E200);
  v20 = *(v19 + 52);
  v21 = (*(v19 + 48) + 3) & 0x1FFFFFFFCLL;
  v22 = swift_allocObject();
  *(v22 + ((*(*v22 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_2480122D4(v12, v22 + *(*v22 + *MEMORY[0x277D841D0] + 16));
  a5[14] = v22;
  a5[15] = 524288000;
  sub_24800B14C(v29, (a5 + 7));
  sub_24800B14C(v28, (a5 + 2));
  if (qword_27EE839E0 != -1)
  {
    swift_once();
  }

  v23 = sub_2480309A8();
  sub_248006DF0(v23, qword_27EE83C70);
  v24 = sub_248030C78();
  v25 = sub_248030988();
  if (os_log_type_enabled(v25, v24))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_247F67000, v25, v24, "About to clear Core ML temp folder", v26, 2u);
    MEMORY[0x24C1C47E0](v26, -1, -1);
  }

  a3();
  sub_248011838(v28);
  sub_248011838(v29);
  return a5;
}

void *sub_248011468(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v37 - v18;
  v38[3] = a6;
  v38[4] = a8;
  v20 = sub_248012270(v38);
  (*(*(a6 - 8) + 32))(v20, a1, a6);
  v37[3] = a7;
  v37[4] = a9;
  v21 = sub_248012270(v37);
  (*(*(a7 - 8) + 32))(v21, a2, a7);
  v22 = MEMORY[0x277D84F90];
  v23 = sub_248028980(MEMORY[0x277D84F90]);
  sub_2480078E4(&qword_27EE83CF0, &qword_24803E1F0);
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  *(v24 + 16) = v23;
  a5[12] = v24;
  v25 = sub_248028B9C(v22);
  sub_2480078E4(&qword_27EE83CF8, &qword_24803E1F8);
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  *(v26 + 16) = v25;
  a5[13] = v26;
  v27 = sub_248030808();
  (*(*(v27 - 8) + 56))(v19, 1, 1, v27);
  v28 = sub_2480078E4(&qword_27EE83D00, &unk_24803E200);
  v29 = *(v28 + 52);
  v30 = (*(v28 + 48) + 3) & 0x1FFFFFFFCLL;
  v31 = swift_allocObject();
  *(v31 + ((*(*v31 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_2480122D4(v19, v31 + *(*v31 + *MEMORY[0x277D841D0] + 16));
  a5[14] = v31;
  a5[15] = 524288000;
  sub_24800B14C(v38, (a5 + 7));
  sub_24800B14C(v37, (a5 + 2));
  if (qword_27EE839E0 != -1)
  {
    swift_once();
  }

  v32 = sub_2480309A8();
  sub_248006DF0(v32, qword_27EE83C70);
  v33 = sub_248030C78();
  v34 = sub_248030988();
  if (os_log_type_enabled(v34, v33))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_247F67000, v34, v33, "About to clear Core ML temp folder", v35, 2u);
    MEMORY[0x24C1C47E0](v35, -1, -1);
  }

  a3();
  sub_248011838(v37);
  sub_248011838(v38);
  return a5;
}

uint64_t sub_2480117E8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_248011838(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_2480118BC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_248011900(uint64_t *a1)
{
  v3 = *(sub_248030808() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_24800BC04(a1, v4, v5);
}

unint64_t sub_248011A68()
{
  result = qword_27EE83C98;
  if (!qword_27EE83C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83C98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PerfRunError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PerfRunError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoreMLPerfCoordinator.TestFactory(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CoreMLPerfCoordinator.TestFactory(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_248011E34()
{
  result = qword_27EE83CA0;
  if (!qword_27EE83CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83CA0);
  }

  return result;
}

unint64_t sub_248011E88()
{
  result = qword_27EE83CA8;
  if (!qword_27EE83CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83CA8);
  }

  return result;
}

uint64_t sub_248011F38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_248011FA0()
{
  result = qword_27EE83CD0;
  if (!qword_27EE83CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83CD0);
  }

  return result;
}

uint64_t sub_248011FF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_248012054(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2480120FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2480078E4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_248012164(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2480121CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2480078E4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24801222C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_248030808();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_248012270(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2480122D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ModelPayload.modelData.getter()
{
  v1 = *v0;
  sub_2480123C0(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_2480123C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t ModelPayload.modelName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ModelPayload.init(modelData:modelName:isCompressed:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t ModelPayload.destinationFileName.getter()
{
  v1 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  MEMORY[0x24C1C17F0](46, 0xE100000000000000);
  if (v1)
  {
    v2 = 0x67616B6361706C6DLL;
  }

  else
  {
    v2 = 0x6C65646F6D6C6DLL;
  }

  if (v1)
  {
    v3 = 0xE900000000000065;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  MEMORY[0x24C1C17F0](v2, v3);

  return v5;
}

uint64_t sub_2480124F0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_24801250C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_248012520(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_248012568(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2480125BC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_248030B38();
    v4 = v3;

    qword_27EE83D08 = v2;
    unk_27EE83D10 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_248012648()
{
  sub_2480127A4();
  if (qword_27EE839F0 != -1)
  {
    swift_once();
  }

  result = sub_248030D38();
  qword_27EE85A40 = result;
  return result;
}

uint64_t sub_2480126E8()
{
  v0 = sub_2480309A8();
  sub_248008A94(v0, qword_27EE85A48);
  sub_248006DF0(v0, qword_27EE85A48);
  if (qword_27EE839F0 != -1)
  {
    swift_once();
  }

  return sub_248030998();
}

unint64_t sub_2480127A4()
{
  result = qword_27EE83D18;
  if (!qword_27EE83D18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE83D18);
  }

  return result;
}

unint64_t sub_2480127F4()
{
  result = qword_27EE83D20;
  if (!qword_27EE83D20)
  {
    type metadata accessor for DTCoreClusterFlags(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83D20);
  }

  return result;
}

uint64_t sub_24801284C()
{
  v1 = *v0;
  sub_248030F98();
  MEMORY[0x24C1C1C00](v1);
  return sub_248030FB8();
}

uint64_t sub_2480128C0()
{
  v1 = *v0;
  sub_248030F98();
  MEMORY[0x24C1C1C00](v1);
  return sub_248030FB8();
}

uint64_t sub_248012904()
{
  v0 = sub_2480309A8();
  sub_248008A94(v0, qword_27EE83D28);
  v1 = sub_248006DF0(v0, qword_27EE83D28);
  if (qword_27EE83A00 != -1)
  {
    swift_once();
  }

  v2 = sub_248006DF0(v0, qword_27EE85A48);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t CoreMLModelWriterServiceMessageHandler.ModelTokenResponse.modelToken.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_248030808();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_248012A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B6F546C65646F6DLL && a2 == 0xEA00000000006E65)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_248030EE8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_248012AF4(uint64_t a1)
{
  v2 = sub_248012CE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248012B30(uint64_t a1)
{
  v2 = sub_248012CE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CoreMLModelWriterServiceMessageHandler.ModelTokenResponse.encode(to:)(void *a1)
{
  v2 = sub_2480078E4(&qword_27EE83D40, &qword_24803E330);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_2480118BC(a1, a1[3]);
  sub_248012CE4();
  sub_248030FE8();
  sub_248030808();
  sub_248012FF4(&qword_27EE83D50, MEMORY[0x277CC95F0]);
  sub_248030E98();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_248012CE4()
{
  result = qword_27EE83D48;
  if (!qword_27EE83D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83D48);
  }

  return result;
}

uint64_t CoreMLModelWriterServiceMessageHandler.ModelTokenResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_248030808();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2480078E4(&qword_27EE83D58, &qword_24803E338);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for CoreMLModelWriterServiceMessageHandler.ModelTokenResponse(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_2480118BC(a1, a1[3]);
  sub_248012CE4();
  sub_248030FD8();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_248012FF4(&qword_27EE83D60, MEMORY[0x277CC95F0]);
    sub_248030E68();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_2480137FC(v14, v17, type metadata accessor for CoreMLModelWriterServiceMessageHandler.ModelTokenResponse);
  }

  return sub_248011838(a1);
}

uint64_t sub_248012FF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_248013054(void *a1)
{
  v2 = sub_2480078E4(&qword_27EE83D40, &qword_24803E330);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_2480118BC(a1, a1[3]);
  sub_248012CE4();
  sub_248030FE8();
  sub_248030808();
  sub_248012FF4(&qword_27EE83D50, MEMORY[0x277CC95F0]);
  sub_248030E98();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2480131D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SegmentationConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248013258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000024804E570 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_248030EE8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2480132EC(uint64_t a1)
{
  v2 = sub_2480134DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248013328(uint64_t a1)
{
  v2 = sub_2480134DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CoreMLModelWriterServiceMessageHandler.SegmentationConfigResponse.encode(to:)(void *a1)
{
  v2 = sub_2480078E4(&qword_27EE83D68, &qword_24803E340);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_2480118BC(a1, a1[3]);
  sub_2480134DC();
  sub_248030FE8();
  type metadata accessor for SegmentationConfig();
  sub_248012FF4(&qword_27EE83D78, type metadata accessor for SegmentationConfig);
  sub_248030E98();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_2480134DC()
{
  result = qword_27EE83D70;
  if (!qword_27EE83D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83D70);
  }

  return result;
}

uint64_t CoreMLModelWriterServiceMessageHandler.SegmentationConfigResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for SegmentationConfig();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2480078E4(&qword_27EE83D80, &qword_24803E348);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for CoreMLModelWriterServiceMessageHandler.SegmentationConfigResponse(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_2480118BC(a1, a1[3]);
  sub_2480134DC();
  sub_248030FD8();
  if (!v2)
  {
    v16 = v19;
    sub_248012FF4(&qword_27EE83D88, type metadata accessor for SegmentationConfig);
    v17 = v21;
    sub_248030E68();
    (*(v20 + 8))(v10, v7);
    sub_2480137FC(v17, v14, type metadata accessor for SegmentationConfig);
    sub_2480137FC(v14, v16, type metadata accessor for CoreMLModelWriterServiceMessageHandler.SegmentationConfigResponse);
  }

  return sub_248011838(a1);
}

uint64_t sub_2480137C4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2480137FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24801387C(void *a1)
{
  v2 = sub_2480078E4(&qword_27EE83D68, &qword_24803E340);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_2480118BC(a1, a1[3]);
  sub_2480134DC();
  sub_248030FE8();
  type metadata accessor for SegmentationConfig();
  sub_248012FF4(&qword_27EE83D78, type metadata accessor for SegmentationConfig);
  sub_248030E98();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2480139F4()
{
  sub_248030F98();
  MEMORY[0x24C1C1C00](0);
  return sub_248030FB8();
}

uint64_t sub_248013A38()
{
  sub_248030F98();
  MEMORY[0x24C1C1C00](0);
  return sub_248030FB8();
}

uint64_t sub_248013A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_248030EE8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_248013B24(uint64_t a1)
{
  v2 = sub_248013CD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248013B60(uint64_t a1)
{
  v2 = sub_248013CD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CoreMLModelWriterServiceMessageHandler.ErrorResponse.encode(to:)(void *a1)
{
  v3 = sub_2480078E4(&qword_27EE83D90, &unk_24803E350);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_2480118BC(a1, a1[3]);
  sub_248013CD4();
  sub_248030FE8();
  sub_248030E88();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_248013CD4()
{
  result = qword_27EE83D98;
  if (!qword_27EE83D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83D98);
  }

  return result;
}

uint64_t sub_248013D28(void *a1)
{
  v3 = sub_2480078E4(&qword_27EE83D90, &unk_24803E350);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_2480118BC(a1, a1[3]);
  sub_248013CD4();
  sub_248030FE8();
  sub_248030E88();
  return (*(v4 + 8))(v7, v3);
}

uint64_t *CoreMLModelWriterServiceMessageHandler.__allocating_init(coordinator:channel:)(uint64_t *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_2480117E8(a1, v5);
  v8 = sub_248017B48(v7, a2, v2, v5, v6);
  sub_248011838(a1);
  return v8;
}

uint64_t *CoreMLModelWriterServiceMessageHandler.init(coordinator:channel:)(uint64_t *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_2480117E8(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_248017A84(v10, a2, v2, v5, v6);
  sub_248011838(a1);
  return v12;
}

void CoreMLModelWriterServiceMessageHandler.respond(to:)(void *a1)
{
  v2 = sub_248030B28();
  v3 = [a1 stringForMessageKey_];

  if (!v3)
  {
    if (qword_27EE83A08 != -1)
    {
      swift_once();
    }

    v11 = sub_2480309A8();
    sub_248006DF0(v11, qword_27EE83D28);
    v12 = sub_248030C88();
    log = sub_248030988();
    if (!os_log_type_enabled(log, v12))
    {
      goto LABEL_15;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "ModelWriterService (Handler) no command received. Model was not written to disk.";
    goto LABEL_14;
  }

  v4 = sub_248030B38();
  v6 = v5;

  sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24803DE50;
  v8 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v9 = sub_24800A52C();
  *(v7 + 64) = v9;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;

  sub_2480308C8();

  v10 = sub_248017AFC();
  if (v10 <= 3)
  {
    if (v10 > 1)
    {
      if (v10 == 2)
      {

        sub_248014EF0(a1);
      }

      else
      {

        sub_248015314(a1);
      }
    }

    else if (v10)
    {
      sub_248030C88();
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_24803DE50;
      *(v15 + 56) = v8;
      *(v15 + 64) = v9;
      *(v15 + 32) = 0xD000000000000015;
      *(v15 + 40) = 0x800000024804D8B0;
      sub_2480308C8();
    }

    else
    {

      sub_248014484(a1);
    }

    return;
  }

  if (v10 <= 5)
  {
    if (v10 == 4)
    {

      sub_24801557C(a1);
    }

    else
    {

      sub_248015CA4(a1);
    }

    return;
  }

  if (v10 == 6)
  {

    sub_24801613C(a1);
    return;
  }

  if (qword_27EE83A08 != -1)
  {
    swift_once();
  }

  v16 = sub_2480309A8();
  sub_248006DF0(v16, qword_27EE83D28);
  v12 = sub_248030C88();
  log = sub_248030988();
  if (os_log_type_enabled(log, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "ModelWriterService (Handler) unable to map command name to known command. Model was not written to disk.";
LABEL_14:
    _os_log_impl(&dword_247F67000, log, v12, v14, v13, 2u);
    MEMORY[0x24C1C47E0](v13, -1, -1);
  }

LABEL_15:
}

void sub_248014484(void *a1)
{
  v2 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v75 - v7;
  v9 = sub_248030808();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v75 - v15;
  v17 = [a1 data];
  if (v17)
  {
    v88 = v6;
    v18 = v17;
    v93 = sub_2480307B8();
    v89 = v19;

    v20 = sub_248030B28();
    v21 = [a1 stringForMessageKey_];

    v91 = v9;
    v92 = v8;
    v90 = v10;
    if (v21)
    {
      v87 = sub_248030B38();
      v23 = v22;
    }

    else
    {
      sub_2480307F8();
      v87 = sub_2480307E8();
      v23 = v28;
      (*(v10 + 8))(v16, v9);
    }

    v94 = v23;
    v29 = sub_248030B28();
    v86 = [a1 integerForMessageKey_];

    v30 = sub_248030B28();
    v31 = [a1 integerForMessageKey_];

    v32 = sub_248030C78();
    if (qword_27EE839F8 != -1)
    {
      swift_once();
    }

    v33 = qword_27EE85A40;
    if (os_log_type_enabled(qword_27EE85A40, v32))
    {
      v34 = swift_slowAlloc();
      *v34 = 67109120;
      *(v34 + 4) = v31 == 1;
      _os_log_impl(&dword_247F67000, v33, v32, "Is Compressed: %{BOOL}d", v34, 8u);
      MEMORY[0x24C1C47E0](v34, -1, -1);
    }

    v35 = sub_248030B28();
    v85 = [a1 integerForMessageKey_];

    v36 = sub_248030B28();
    v84 = [a1 integerForMessageKey_];

    v37 = sub_248030B28();
    v83 = [a1 integerForMessageKey_];

    v38 = sub_248030B28();
    v82 = [a1 integerForMessageKey_];

    v39 = sub_248030B28();
    v81 = [a1 integerForMessageKey_];

    v40 = sub_248030B28();
    v41 = [a1 stringForMessageKey_];

    v76 = v14;
    v75 = a1;
    if (v41)
    {
      v79 = sub_248030B38();
      v80 = v42;
    }

    else
    {
      v79 = 0;
      v80 = 0;
    }

    v78 = v31 == 1;
    sub_248030C78();
    sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
    v43 = swift_allocObject();
    v77 = xmmword_24803DE50;
    *(v43 + 16) = xmmword_24803DE50;
    v44 = MEMORY[0x277D837D0];
    *(v43 + 56) = MEMORY[0x277D837D0];
    v45 = sub_24800A52C();
    *(v43 + 64) = v45;
    v46 = v87;
    v47 = v94;
    *(v43 + 32) = v87;
    *(v43 + 40) = v47;

    sub_2480308C8();

    sub_248030C78();
    v48 = swift_allocObject();
    *(v48 + 16) = v77;
    v49 = v86;
    v96[0] = v86;
    v50 = sub_248030EC8();
    *(v48 + 56) = v44;
    *(v48 + 64) = v45;
    *(v48 + 32) = v50;
    *(v48 + 40) = v51;
    sub_2480308C8();

    v52 = v95;
    isa = v95[5].isa;
    v54 = v95[6].isa;
    sub_2480118BC(&v95[2].isa, isa);
    v55 = v93;
    v56 = v89;
    v97[0] = v93;
    v97[1] = v89;
    v97[2] = v46;
    v97[3] = v47;
    v98 = v78;
    v96[0] = v85;
    v96[1] = v84;
    v96[2] = v83;
    v96[3] = v82;
    v96[4] = v81;
    v96[5] = v79;
    v96[6] = v80;
    v57 = *(v54 + 1);
    sub_2480123C0(v93, v89);

    v58 = v49;
    v59 = v92;
    v57(v97, v96, v58, sub_24801822C, v52, isa, v54);

    v60 = v88;
    sub_2480120FC(v59, v88, &qword_27EE83C90, &unk_24803E820);
    v62 = v90;
    v61 = v91;
    if ((*(v90 + 48))(v60, 1, v91) == 1)
    {
      sub_2480121CC(v59, &qword_27EE83C90, &unk_24803E820);
      sub_2480081DC(v55, v56);
      sub_2480081DC(v55, v56);

      v63 = v60;
    }

    else
    {
      v64 = v56;
      v65 = v76;
      (*(v62 + 32))(v76, v60, v61);
      v66 = v75;
      if (qword_27EE83A08 != -1)
      {
        swift_once();
      }

      v67 = sub_2480309A8();
      sub_248006DF0(v67, qword_27EE83D28);
      v68 = sub_248030C78();
      v69 = sub_248030988();
      if (os_log_type_enabled(v69, v68))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_247F67000, v69, v68, "sendingReply from messageReceived", v70, 2u);
        MEMORY[0x24C1C47E0](v70, -1, -1);
      }

      sub_248016B0C(v66, v65);
      v71 = sub_248030C78();
      v72 = sub_248030988();
      if (os_log_type_enabled(v72, v71))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_247F67000, v72, v71, "sent reply from messageReceived", v73, 2u);
        MEMORY[0x24C1C47E0](v73, -1, -1);
      }

      v74 = v93;
      sub_2480081DC(v93, v64);

      sub_2480081DC(v74, v64);
      (*(v62 + 8))(v65, v61);
      v63 = v59;
    }

    sub_2480121CC(v63, &qword_27EE83C90, &unk_24803E820);
  }

  else
  {
    if (qword_27EE83A08 != -1)
    {
      swift_once();
    }

    v24 = sub_2480309A8();
    sub_248006DF0(v24, qword_27EE83D28);
    v25 = sub_248030C88();
    v95 = sub_248030988();
    if (os_log_type_enabled(v95, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_247F67000, v95, v25, "ModelWriterService (Handler) - no model data received", v26, 2u);
      MEMORY[0x24C1C47E0](v26, -1, -1);
    }

    v27 = v95;
  }
}

void sub_248014EF0(void *a1)
{
  v3 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - v5;
  v7 = sub_248030808();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EE83A08 != -1)
  {
    swift_once();
  }

  v12 = sub_2480309A8();
  sub_248006DF0(v12, qword_27EE83D28);
  v13 = sub_248030C78();
  v14 = sub_248030988();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_247F67000, v14, v13, "Calling cancelPerfRun", v15, 2u);
    MEMORY[0x24C1C47E0](v15, -1, -1);
  }

  v16 = sub_248030B28();
  v17 = [a1 stringForMessageKey_];

  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = sub_248030B38();
  v20 = v19;

  sub_2480307D8();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_2480121CC(v6, &qword_27EE83C90, &unk_24803E820);
LABEL_8:
    v21 = sub_248030C88();
    v22 = sub_248030988();
    if (os_log_type_enabled(v22, v21))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_247F67000, v22, v21, "No model token received in cancelPerfRun", v23, 2u);
      MEMORY[0x24C1C47E0](v23, -1, -1);
    }

    v27 = xmmword_24803E310;
    v28 = 1;
    sub_2480171CC(&v27);
    return;
  }

  (*(v8 + 32))(v11, v6, v7);
  sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_24803DE50;
  *(v24 + 56) = MEMORY[0x277D837D0];
  *(v24 + 64) = sub_24800A52C();
  *(v24 + 32) = v18;
  *(v24 + 40) = v20;
  sub_2480308C8();

  v25 = v1[5];
  v26 = v1[6];
  sub_2480118BC(v1 + 2, v25);
  (*(v26 + 24))(v11, v25, v26);
  (*(v8 + 8))(v11, v7);
}

uint64_t sub_248015314(void *a1)
{
  v3 = type metadata accessor for SegmentationConfig();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[5];
  v8 = v1[6];
  sub_2480118BC(v1 + 2, v7);
  (*(v8 + 32))(v7, v8);
  sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24803DE50;
  v10 = *v6;
  v11 = MEMORY[0x277D84A90];
  *(v9 + 56) = MEMORY[0x277D84A28];
  *(v9 + 64) = v11;
  *(v9 + 32) = v10;
  sub_2480308C8();

  sub_248016E84(a1, v6);
  return sub_248018458(v6, type metadata accessor for SegmentationConfig);
}

void sub_24801557C(void *a1)
{
  v3 = type metadata accessor for SegmentPayload();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v49 - v9;
  v11 = sub_248030808();
  isa = v11[-1].isa;
  v13 = *(isa + 8);
  MEMORY[0x28223BE20](v11);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 data];
  if (v16)
  {
    v56 = v11;
    v17 = v16;
    v18 = sub_2480307B8();
    v20 = v19;

    v21 = v56;
    sub_2480176B8(a1, 0xD00000000000001ALL, 0x800000024804E6E0, v10);
    if ((*(isa + 6))(v10, 1, v21) == 1)
    {
      sub_2480081DC(v18, v20);
      sub_2480121CC(v10, &qword_27EE83C90, &unk_24803E820);
    }

    else
    {
      v53 = v18;
      v54 = v20;
      v55 = v1;
      (*(isa + 4))(v15, v10, v21);
      v26 = sub_248030B28();
      v52 = [a1 integerForMessageKey_];

      v27 = sub_248030B28();
      v28 = [a1 integerForMessageKey_];

      LODWORD(v50) = sub_248030C78();
      v51 = isa;
      if (qword_27EE839F8 != -1)
      {
        swift_once();
      }

      v29 = qword_27EE85A40;
      v49[1] = sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_24803DFE0;
      v31 = MEMORY[0x277D83B88];
      v32 = MEMORY[0x277D83C10];
      *(v30 + 56) = MEMORY[0x277D83B88];
      *(v30 + 64) = v32;
      v33 = v52;
      *(v30 + 32) = v52;
      *(v30 + 96) = v31;
      *(v30 + 104) = v32;
      *(v30 + 72) = v28;
      v34 = sub_2480307E8();
      v36 = v35;
      *(v30 + 136) = MEMORY[0x277D837D0];
      v49[0] = sub_24800A52C();
      *(v30 + 144) = v49[0];
      *(v30 + 112) = v34;
      *(v30 + 120) = v36;
      v50 = v29;
      sub_2480308C8();
      v37 = v15;

      v38 = v51;
      (*(v51 + 2))(v6 + *(v3 + 28), v37, v56);
      v39 = v54;
      *v6 = v53;
      v6[1] = v39;
      v6[2] = v33;
      v6[3] = v28;
      v40 = v55[5];
      v41 = v55[6];
      sub_2480118BC(v55 + 2, v40);
      (*(v41 + 40))(v6, v40, v41);
      if (qword_27EE83A08 != -1)
      {
        swift_once();
      }

      v42 = sub_2480309A8();
      sub_248006DF0(v42, qword_27EE83D28);
      v43 = sub_248030C78();
      v44 = sub_248030988();
      if (os_log_type_enabled(v44, v43))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_247F67000, v44, v43, "handleIncomingSegmentedModel: sendingReply from messageReceived", v45, 2u);
        MEMORY[0x24C1C47E0](v45, -1, -1);
      }

      sub_248016B0C(a1, v37);
      v46 = sub_248030C78();
      v47 = sub_248030988();
      if (os_log_type_enabled(v47, v46))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_247F67000, v47, v46, "handleIncomingSegmentedModel: sent reply from messageReceived", v48, 2u);
        MEMORY[0x24C1C47E0](v48, -1, -1);
      }

      sub_248018458(v6, type metadata accessor for SegmentPayload);
      (*(v38 + 1))(v37, v56);
    }
  }

  else
  {
    if (qword_27EE83A08 != -1)
    {
      swift_once();
    }

    v22 = sub_2480309A8();
    sub_248006DF0(v22, qword_27EE83D28);
    v23 = sub_248030C88();
    v56 = sub_248030988();
    if (os_log_type_enabled(v56, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_247F67000, v56, v23, "handleIncomingSegmentedModel - no model data received", v24, 2u);
      MEMORY[0x24C1C47E0](v24, -1, -1);
    }

    v25 = v56;
  }
}

uint64_t sub_248015CA4(void *a1)
{
  v2 = v1;
  v4 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  v8 = sub_248030808();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2480176B8(a1, 0xD000000000000015, 0x800000024804D920, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2480121CC(v7, &qword_27EE83C90, &unk_24803E820);
  }

  v31 = a1;
  v14 = *(v9 + 32);
  v34 = v8;
  v14(v12, v7, v8);
  sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  v15 = qword_27EE85A40;
  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v16 = swift_allocObject();
  v32 = xmmword_24803DE50;
  *(v16 + 16) = xmmword_24803DE50;
  v17 = sub_2480307E8();
  v19 = v18;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = sub_24800A52C();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  v33 = v15;
  sub_2480308C8();

  v20 = v2[5];
  v21 = v2[6];
  sub_2480118BC(v2 + 2, v20);
  (*(v21 + 48))(v12, v20, v21);
  v22 = v34;
  if (qword_27EE83A08 != -1)
  {
    swift_once();
  }

  v23 = sub_2480309A8();
  sub_248006DF0(v23, qword_27EE83D28);
  v24 = sub_248030C78();
  v25 = sub_248030988();
  if (os_log_type_enabled(v25, v24))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_247F67000, v25, v24, "assembleModelSegments: sendingReply from messageReceived", v26, 2u);
    MEMORY[0x24C1C47E0](v26, -1, -1);
  }

  sub_248016B0C(v31, v12);
  v27 = sub_248030C78();
  v28 = sub_248030988();
  if (os_log_type_enabled(v28, v27))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_247F67000, v28, v27, "assembleModelSegments: sent reply from messageReceived", v29, 2u);
    MEMORY[0x24C1C47E0](v29, -1, -1);
  }

  return (*(v9 + 8))(v12, v22);
}

uint64_t sub_24801613C(void *a1)
{
  v3 = sub_2480078E4(&unk_27EE83FE0, &qword_24803DE60);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v76 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v76 - v11;
  v13 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v76 - v15;
  v17 = sub_248030808();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2480176B8(a1, 0xD000000000000015, 0x800000024804D920, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_2480121CC(v16, &qword_27EE83C90, &unk_24803E820);
  }

  v85 = v10;
  v87 = v7;
  v91 = v1;
  (*(v18 + 32))(v21, v16, v17);
  v23 = sub_248030B28();
  v24 = [a1 stringForMessageKey_];

  v84 = v17;
  v83 = v18;
  if (v24)
  {
    v88 = sub_248030B38();
    v26 = v25;
  }

  else
  {
    v88 = sub_2480307E8();
    v26 = v27;
  }

  v28 = v21;
  v29 = sub_248030B28();
  v89 = a1;
  v30 = [a1 integerForMessageKey_];

  v81 = v30;
  v31 = v30 == 1;
  v32 = sub_248030778();
  v86 = *(v32 - 8);
  v33 = *(v86 + 56);
  v33(v12, 1, 1, v32);
  v34 = v12;
  v35 = v91[5];
  v36 = v91[6];
  sub_2480118BC(v91 + 2, v35);
  v37 = *(v36 + 56);
  v38 = v85;
  v39 = v88;
  v82 = v26;
  v88 = v28;
  v37(v39, v26, v28, v31, v35, v36);
  v90 = v34;
  sub_2480121CC(v34, &unk_27EE83FE0, &qword_24803DE60);
  v40 = v32;
  v33(v38, 0, 1, v32);
  sub_2480184EC(v38, v34);
  v41 = v91;
  v42 = v89;
  v43 = sub_248030B28();
  v91 = [v42 integerForMessageKey_];

  v44 = sub_248030B28();
  v85 = [v42 integerForMessageKey_];

  v45 = sub_248030B28();
  v80 = [v42 integerForMessageKey_];

  v46 = sub_248030B28();
  v79 = [v42 integerForMessageKey_];

  v47 = sub_248030B28();
  v78 = [v42 integerForMessageKey_];

  v48 = sub_248030B28();
  v49 = [v42 integerForMessageKey_];

  v50 = sub_248030B28();
  v51 = [v42 stringForMessageKey_];

  v52 = v86;
  if (v51)
  {
    v53 = sub_248030B38();
    v55 = v54;
  }

  else
  {
    v53 = 0;
    v55 = 0;
  }

  v56 = v40;
  v77 = v40;
  sub_24800B14C((v41 + 2), v93);
  v58 = v94;
  v57 = v95;
  sub_2480118BC(v93, v94);
  v59 = v87;
  sub_2480120FC(v90, v87, &unk_27EE83FE0, &qword_24803DE60);
  result = (*(v52 + 48))(v59, 1, v56);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v60 = v41;
    v61 = v81 == 1;

    v92[0] = v85;
    v92[1] = v80;
    v92[2] = v79;
    v92[3] = v78;
    v92[4] = v49;
    v92[5] = v53;
    v92[6] = v55;
    v62 = *(v57 + 64);

    v62(v88, v59, v61, v92, v91, sub_24801857C, v60, v58, v57);

    (*(v52 + 8))(v59, v77);
    sub_248011838(v93);
    if (qword_27EE83A08 != -1)
    {
      swift_once();
    }

    v63 = sub_2480309A8();
    sub_248006DF0(v63, qword_27EE83D28);
    v64 = sub_248030C78();
    v65 = sub_248030988();
    v66 = os_log_type_enabled(v65, v64);
    v67 = v83;
    v68 = v89;
    if (v66)
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_247F67000, v65, v64, "sendingReply from messageReceived", v69, 2u);
      MEMORY[0x24C1C47E0](v69, -1, -1);
    }

    v70 = v88;
    sub_248016B0C(v68, v88);
    v71 = sub_248030C78();
    v72 = sub_248030988();
    v73 = os_log_type_enabled(v72, v71);
    v74 = v90;
    if (v73)
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_247F67000, v72, v71, "sent reply from messageReceived", v75, 2u);
      MEMORY[0x24C1C47E0](v75, -1, -1);
    }

    sub_2480121CC(v74, &unk_27EE83FE0, &qword_24803DE60);
    return (*(v67 + 8))(v70, v84);
  }

  return result;
}

uint64_t sub_248016B0C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CoreMLModelWriterServiceMessageHandler.ModelTokenResponse(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_248030808();
  (*(*(v10 - 8) + 16))(v9, a2, v10);
  v11 = sub_248030648();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_248030638();
  sub_248012FF4(&qword_27EE83E08, type metadata accessor for CoreMLModelWriterServiceMessageHandler.ModelTokenResponse);
  v14 = sub_248030628();
  v16 = v15;
  sub_248018458(v9, type metadata accessor for CoreMLModelWriterServiceMessageHandler.ModelTokenResponse);

  sub_2480123C0(v14, v16);
  v17 = sub_2480307A8();
  v18 = [objc_opt_self() messageWithData_];

  sub_2480081DC(v14, v16);
  v19 = [a1 newReplyWithMessage_];
  v20 = *(v3 + 56);
  aBlock[4] = sub_248018570;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_248023480;
  aBlock[3] = &unk_285A19720;
  v21 = _Block_copy(aBlock);
  [v20 sendMessage:v19 replyHandler:v21];
  _Block_release(v21);

  return sub_2480081DC(v14, v16);
}

uint64_t sub_248016E84(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CoreMLModelWriterServiceMessageHandler.SegmentationConfigResponse(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2480131D8(a2, v9);
  v10 = sub_248030648();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_248030638();
  sub_248012FF4(&qword_27EE83E18, type metadata accessor for CoreMLModelWriterServiceMessageHandler.SegmentationConfigResponse);
  v13 = sub_248030628();
  v15 = v14;
  sub_248018458(v9, type metadata accessor for CoreMLModelWriterServiceMessageHandler.SegmentationConfigResponse);

  sub_2480123C0(v13, v15);
  v16 = sub_2480307A8();
  v17 = [objc_opt_self() messageWithData_];

  sub_2480081DC(v13, v15);
  v18 = [a1 newReplyWithMessage_];
  v19 = *(v3 + 56);
  aBlock[4] = sub_248018570;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_248023480;
  aBlock[3] = &unk_285A19770;
  v20 = _Block_copy(aBlock);
  [v19 sendMessage:v18 replyHandler:v20];
  _Block_release(v20);

  return sub_2480081DC(v13, v15);
}

void sub_2480171CC(__int128 *a1)
{
  v20 = *a1;
  v2 = *(a1 + 16);
  if (qword_27EE83A08 != -1)
  {
    swift_once();
  }

  v3 = sub_2480309A8();
  sub_248006DF0(v3, qword_27EE83D28);
  v4 = sub_248030C78();
  v5 = sub_248030988();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_247F67000, v5, v4, "sendTimingInfoMessage, about to convert to data", v6, 2u);
    MEMORY[0x24C1C47E0](v6, -1, -1);
  }

  aBlock = v20;
  LOBYTE(v22) = v2;
  v7 = sub_248018248(&aBlock);
  v9 = v8;
  sub_2480123C0(v7, v8);
  v10 = sub_2480307A8();
  v11 = [objc_opt_self() messageWithData_];

  sub_2480081DC(v7, v9);
  v12 = sub_248030C78();
  v13 = sub_248030988();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_247F67000, v13, v12, "sendTimingInfoMessage, about to send", v14, 2u);
    MEMORY[0x24C1C47E0](v14, -1, -1);
  }

  v15 = *(v1 + 56);
  v24 = sub_2480174A0;
  v25 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v22 = sub_248023480;
  v23 = &unk_285A19748;
  v16 = _Block_copy(&aBlock);
  [v15 sendMessage:v11 replyHandler:v16];
  _Block_release(v16);
  v17 = sub_248030C78();
  v18 = sub_248030988();
  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_247F67000, v18, v17, "sendTimingInfoMessage, did send", v19, 2u);
    MEMORY[0x24C1C47E0](v19, -1, -1);
  }

  sub_2480081DC(v7, v9);
}

void sub_2480174AC(uint64_t a1, const char *a2)
{
  if (qword_27EE83A08 != -1)
  {
    swift_once();
  }

  v3 = sub_2480309A8();
  sub_248006DF0(v3, qword_27EE83D28);
  v4 = sub_248030C78();
  log = sub_248030988();
  if (os_log_type_enabled(log, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_247F67000, log, v4, a2, v5, 2u);
    MEMORY[0x24C1C47E0](v5, -1, -1);
  }
}

uint64_t CoreMLModelWriterServiceMessageHandler.deinit()
{
  v1 = v0;
  if (qword_27EE83A08 != -1)
  {
    swift_once();
  }

  v2 = sub_2480309A8();
  sub_248006DF0(v2, qword_27EE83D28);
  v3 = sub_248030C78();
  v4 = sub_248030988();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_247F67000, v4, v3, "ModelWriterService (Handler) - deinit invoked", v5, 2u);
    MEMORY[0x24C1C47E0](v5, -1, -1);
  }

  sub_248011838((v1 + 16));
  return v1;
}

uint64_t CoreMLModelWriterServiceMessageHandler.__deallocating_deinit()
{
  CoreMLModelWriterServiceMessageHandler.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_2480176B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v26 - v10;
  v12 = sub_248030B28();
  v13 = [a1 stringForMessageKey_];

  if (v13)
  {
    v14 = sub_248030B38();
    v16 = v15;

    sub_2480307D8();
    v17 = sub_248030808();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v11, 1, v17) == 1)
    {
      sub_2480121CC(v11, &qword_27EE83C90, &unk_24803E820);
      v26[3] = sub_248030C88();
      if (qword_27EE839F8 != -1)
      {
        swift_once();
      }

      sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_24803E320;
      v20 = MEMORY[0x277D837D0];
      *(v19 + 56) = MEMORY[0x277D837D0];
      v21 = sub_24800A52C();
      *(v19 + 32) = a2;
      *(v19 + 40) = a3;
      *(v19 + 96) = v20;
      *(v19 + 104) = v21;
      *(v19 + 64) = v21;
      *(v19 + 72) = v14;
      *(v19 + 80) = v16;

      sub_2480308C8();

      return (*(v18 + 56))(a4, 1, 1, v17);
    }

    else
    {

      (*(v18 + 32))(a4, v11, v17);
      return (*(v18 + 56))(a4, 0, 1, v17);
    }
  }

  else
  {
    sub_248030C88();
    if (qword_27EE839F8 != -1)
    {
      swift_once();
    }

    sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_24803DE50;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = sub_24800A52C();
    *(v23 + 32) = a2;
    *(v23 + 40) = a3;

    sub_2480308C8();

    v24 = sub_248030808();
    v25 = *(*(v24 - 8) + 56);

    return v25(a4, 1, 1, v24);
  }
}

uint64_t *sub_248017A84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  a3[5] = a4;
  a3[6] = a5;
  v9 = sub_248012270(a3 + 2);
  (*(*(a4 - 8) + 32))(v9, a1, a4);
  a3[7] = a2;
  return a3;
}

uint64_t sub_248017AFC()
{
  v0 = sub_248030E58();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t *sub_248017B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  (*(v9 + 16))(v12, a1, a4);
  v13[5] = a4;
  v13[6] = a5;
  v14 = sub_248012270(v13 + 2);
  (*(v9 + 32))(v14, v12, a4);
  v13[7] = a2;
  return v13;
}

uint64_t sub_248017D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_248017D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_248017E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoreMLModelWriterServiceMessageHandler.ErrorResponse(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CoreMLModelWriterServiceMessageHandler.ErrorResponse(uint64_t result, int a2, int a3)
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

unint64_t sub_248017F18()
{
  result = qword_27EE83DC0;
  if (!qword_27EE83DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83DC0);
  }

  return result;
}

unint64_t sub_248017F70()
{
  result = qword_27EE83DC8;
  if (!qword_27EE83DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83DC8);
  }

  return result;
}

unint64_t sub_248017FC8()
{
  result = qword_27EE83DD0;
  if (!qword_27EE83DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83DD0);
  }

  return result;
}

unint64_t sub_248018020()
{
  result = qword_27EE83DD8;
  if (!qword_27EE83DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83DD8);
  }

  return result;
}

unint64_t sub_248018078()
{
  result = qword_27EE83DE0;
  if (!qword_27EE83DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83DE0);
  }

  return result;
}

unint64_t sub_2480180D0()
{
  result = qword_27EE83DE8;
  if (!qword_27EE83DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83DE8);
  }

  return result;
}

unint64_t sub_248018128()
{
  result = qword_27EE83DF0;
  if (!qword_27EE83DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83DF0);
  }

  return result;
}

unint64_t sub_248018180()
{
  result = qword_27EE83DF8;
  if (!qword_27EE83DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83DF8);
  }

  return result;
}

unint64_t sub_2480181D8()
{
  result = qword_27EE83E00;
  if (!qword_27EE83E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83E00);
  }

  return result;
}

uint64_t sub_248018230(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_248018248(uint64_t *a1)
{
  v2 = sub_248030B68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (a1[2])
  {
    v8 = sub_248030648();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_248030638();
    v20 = v7 + 101;
LABEL_5:
    sub_248018404();
    v12 = sub_248030628();

    return v12;
  }

  v11 = a1[1];
  sub_248030B58();
  v12 = sub_248030B48();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  if (v14 >> 60 == 15)
  {
    v15 = sub_248030648();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    sub_248030638();
    v20 = 102;
    goto LABEL_5;
  }

  return v12;
}

unint64_t sub_248018404()
{
  result = qword_27EE83E10;
  if (!qword_27EE83E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83E10);
  }

  return result;
}

uint64_t sub_248018458(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2480184B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  v3 = v1;
  sub_2480171CC(&v2);
}

uint64_t sub_2480184EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2480078E4(&unk_27EE83FE0, &qword_24803DE60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SegmentedModelState()
{
  result = qword_27EE83E20;
  if (!qword_27EE83E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_248018628()
{
  result = type metadata accessor for SegmentationConfig();
  if (v1 <= 0x3F)
  {
    result = sub_248030778();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t PerfRunConfig.init(experimentIterations:loadCount:predictionCount:maxPredictionTime:maxIterationTime:functionName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t PerfRunConfig.functionName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

__n128 sub_24801870C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_248018728(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_248018784(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

void sub_2480187F4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_248030B38();
    v4 = v3;

    qword_27EE83E30 = v2;
    *algn_27EE83E38 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_248018880()
{
  v0 = sub_2480309A8();
  sub_248008A94(v0, qword_27EE85A60);
  sub_248006DF0(v0, qword_27EE85A60);
  if (qword_27EE83A10 != -1)
  {
    swift_once();
  }

  return sub_248030998();
}

uint64_t SegmentationConfig.init(segmentSizeInBytes:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for SegmentationConfig() + 20);
  v6 = sub_248030808();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t type metadata accessor for SegmentationConfig()
{
  result = qword_27EE83E58;
  if (!qword_27EE83E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_248018A24()
{
  v1 = *v0;
  sub_248030F98();
  MEMORY[0x24C1C1C00](v1);
  return sub_248030FB8();
}

uint64_t sub_248018A6C()
{
  v1 = *v0;
  sub_248030F98();
  MEMORY[0x24C1C1C00](v1);
  return sub_248030FB8();
}

unint64_t sub_248018AB0()
{
  if (*v0)
  {
    result = 0x6E656B6F74;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_248018AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000024804E8E0 == a2 || (sub_248030EE8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_248030EE8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_248018BDC(uint64_t a1)
{
  v2 = sub_248018DF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248018C18(uint64_t a1)
{
  v2 = sub_248018DF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SegmentationConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2480078E4(&qword_27EE83E40, &qword_24803E8C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_2480118BC(a1, a1[3]);
  sub_248018DF8();
  sub_248030FE8();
  v11 = *v3;
  v14[15] = 0;
  sub_248030EA8();
  if (!v2)
  {
    v12 = *(type metadata accessor for SegmentationConfig() + 20);
    v14[14] = 1;
    sub_248030808();
    sub_24801222C(&qword_27EE83D50);
    sub_248030E98();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_248018DF8()
{
  result = qword_27EE83E48;
  if (!qword_27EE83E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83E48);
  }

  return result;
}

uint64_t SegmentationConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_248030808();
  v22 = *(v25 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v25);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2480078E4(&qword_27EE83E50, &qword_24803E8C8);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = &v19 - v8;
  v10 = type metadata accessor for SegmentationConfig();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  sub_2480118BC(a1, a1[3]);
  sub_248018DF8();
  sub_248030FD8();
  if (!v2)
  {
    v21 = v10;
    v15 = v24;
    v16 = v25;
    v28 = 0;
    v17 = v26;
    *v13 = sub_248030E78();
    v27 = 1;
    sub_24801222C(&qword_27EE83D60);
    v20 = v6;
    sub_248030E68();
    (*(v15 + 8))(v9, v17);
    (*(v22 + 32))(v13 + *(v21 + 20), v20, v16);
    sub_24801911C(v13, v23);
  }

  return sub_248011838(a1);
}

uint64_t sub_24801911C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SegmentationConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2480191D8()
{
  result = sub_248030808();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SegmentationConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SegmentationConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2480193B4()
{
  result = qword_27EE83E68;
  if (!qword_27EE83E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83E68);
  }

  return result;
}

unint64_t sub_24801940C()
{
  result = qword_27EE83E70;
  if (!qword_27EE83E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83E70);
  }

  return result;
}

unint64_t sub_248019464()
{
  result = qword_27EE83E78;
  if (!qword_27EE83E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83E78);
  }

  return result;
}

id ProcessorTraceRecorder.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = sub_2480309A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  *&v8[OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording] = 0;
  v8[OBJC_IVAR___DTProcessorTraceRecorder_state] = 0;
  v9 = OBJC_IVAR___DTProcessorTraceRecorder_logger;
  if (qword_27EE83A18 != -1)
  {
    swift_once();
  }

  v10 = sub_248006DF0(v3, qword_27EE85A60);
  v11 = *(v4 + 16);
  v11(&v8[v9], v10, v3);
  v11(v7, v10, v3);
  sub_248030908();
  *&v8[OBJC_IVAR___DTProcessorTraceRecorder_configuration] = a1;
  v13.receiver = v8;
  v13.super_class = v1;
  return objc_msgSendSuper2(&v13, sel_init);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProcessorTraceRecorder.startRecording()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_2480308F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  sub_2480308E8();
  v12 = sub_248030918();
  v13 = sub_248030CE8();
  if (sub_248030D28())
  {
    v14 = swift_slowAlloc();
    v35 = v1;
    v15 = v14;
    *v14 = 0;
    v16 = sub_2480308D8();
    _os_signpost_emit_with_name_impl(&dword_247F67000, v12, v13, v16, "start", "", v15, 2u);
    v17 = v15;
    v3 = v0;
    v2 = v35;
    MEMORY[0x24C1C47E0](v17, -1, -1);
  }

  (*(v5 + 16))(v9, v11, v4);
  v18 = sub_248030968();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_248030958();
  (*(v5 + 8))(v11, v4);
  v22 = OBJC_IVAR___DTProcessorTraceRecorder_state;
  if (*(v3 + OBJC_IVAR___DTProcessorTraceRecorder_state))
  {
    if (*(v3 + OBJC_IVAR___DTProcessorTraceRecorder_state) != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  v29 = *(v3 + OBJC_IVAR___DTProcessorTraceRecorder_configuration);
  v30 = sub_24801B41C();
  if (!v2)
  {
    *(v3 + OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording) = v30;
    if (*(v3 + v22) != 1)
    {
      goto LABEL_11;
    }

LABEL_5:
    if (*(v3 + OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording))
    {
      v23 = hwtrace_live_recording_start();
      if (!v23)
      {
        *(v3 + v22) = 2;
        goto LABEL_15;
      }

      v24 = v23;
      v25 = sub_248030988();
      v26 = sub_248030C88();
      if (!os_log_type_enabled(v25, v26))
      {
        goto LABEL_14;
      }

      v27 = swift_slowAlloc();
      *v27 = 67109120;
      *(v27 + 4) = v24;
      _os_log_impl(&dword_247F67000, v25, v26, "Failed to start recording: %d", v27, 8u);
      v28 = v27;
      goto LABEL_13;
    }

LABEL_11:
    v25 = sub_248030988();
    v31 = sub_248030C88();
    if (!os_log_type_enabled(v25, v31))
    {
LABEL_14:

      sub_24801C0A4();
      swift_allocError();
      *v33 = 1;
      swift_willThrow();
      goto LABEL_15;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_247F67000, v25, v31, "Recording is not in configured state or is not initialized.", v32, 2u);
    v28 = v32;
LABEL_13:
    MEMORY[0x24C1C47E0](v28, -1, -1);
    goto LABEL_14;
  }

LABEL_15:
  sub_24801BD00(v3, v21, "start");
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProcessorTraceRecorder.stopRecording()()
{
  v2 = v0;
  v3 = sub_2480308F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v33 - v9;
  sub_2480308E8();
  v11 = sub_248030918();
  v12 = sub_248030CE8();
  if (sub_248030D28())
  {
    v13 = swift_slowAlloc();
    v33[1] = v1;
    v14 = v13;
    *v13 = 0;
    v15 = sub_2480308D8();
    _os_signpost_emit_with_name_impl(&dword_247F67000, v11, v12, v15, "stop", "", v14, 2u);
    v16 = v14;
    v2 = v0;
    MEMORY[0x24C1C47E0](v16, -1, -1);
  }

  (*(v4 + 16))(v8, v10, v3);
  v17 = sub_248030968();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_248030958();
  (*(v4 + 8))(v10, v3);
  v21 = OBJC_IVAR___DTProcessorTraceRecorder_state;
  v22 = *(v2 + OBJC_IVAR___DTProcessorTraceRecorder_state);
  if (v22 != 2)
  {
LABEL_6:
    if (v22 == 3 && *(v2 + OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording))
    {
      v24 = hwtrace_live_recording_stop();
      if (!v24)
      {
        *(v2 + v21) = 4;
        goto LABEL_15;
      }

      v25 = v24;
      v26 = sub_248030988();
      v27 = sub_248030C88();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_14;
      }

      v28 = swift_slowAlloc();
      *v28 = 67109120;
      *(v28 + 4) = v25;
      _os_log_impl(&dword_247F67000, v26, v27, "Failed to stop recording: %d", v28, 8u);
      v29 = v28;
    }

    else
    {
      v26 = sub_248030988();
      v30 = sub_248030C88();
      if (!os_log_type_enabled(v26, v30))
      {
LABEL_14:

        sub_24801C0A4();
        swift_allocError();
        *v32 = 4;
        swift_willThrow();
        goto LABEL_15;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_247F67000, v26, v30, "Failed to stop recording", v31, 2u);
      v29 = v31;
    }

    MEMORY[0x24C1C47E0](v29, -1, -1);
    goto LABEL_14;
  }

  ProcessorTraceRecorder.pauseRecording()();
  if (!v23)
  {
    v22 = *(v2 + v21);
    goto LABEL_6;
  }

LABEL_15:
  sub_24801BD00(v2, v20, "stop");
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProcessorTraceRecorder.pauseRecording()()
{
  v2 = v0;
  v3 = sub_2480308F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v33 - v9;
  sub_2480308E8();
  v11 = sub_248030918();
  v12 = sub_248030CE8();
  if (sub_248030D28())
  {
    v13 = swift_slowAlloc();
    v33[1] = v1;
    v14 = v13;
    *v13 = 0;
    v15 = sub_2480308D8();
    _os_signpost_emit_with_name_impl(&dword_247F67000, v11, v12, v15, "pause", "", v14, 2u);
    v16 = v14;
    v2 = v0;
    MEMORY[0x24C1C47E0](v16, -1, -1);
  }

  (*(v4 + 16))(v8, v10, v3);
  v17 = sub_248030968();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_248030958();
  (*(v4 + 8))(v10, v3);
  if (*(v2 + OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording))
  {
    v21 = hwtrace_live_recording_pause();
    if (!v21)
    {
      *(v2 + OBJC_IVAR___DTProcessorTraceRecorder_state) = 3;
      goto LABEL_12;
    }

    v22 = v21;
    v23 = sub_248030988();
    v24 = sub_248030C88();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 67109120;
      *(v25 + 1) = v22;
      v26 = "Failed to pause recording: %d";
      v27 = v24;
      v28 = v23;
      v29 = v25;
      v30 = 8;
LABEL_9:
      _os_log_impl(&dword_247F67000, v28, v27, v26, v29, v30);
      MEMORY[0x24C1C47E0](v25, -1, -1);
    }
  }

  else
  {
    v23 = sub_248030988();
    v31 = sub_248030C88();
    if (os_log_type_enabled(v23, v31))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "Failed to pause recording. currentLiveRecording is nil.";
      v27 = v31;
      v28 = v23;
      v29 = v25;
      v30 = 2;
      goto LABEL_9;
    }
  }

  sub_24801C0A4();
  swift_allocError();
  *v32 = 2;
  swift_willThrow();
LABEL_12:
  sub_24801BD00(v2, v20, "pause");
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProcessorTraceRecorder.unpauseRecording()()
{
  v2 = v0;
  v3 = sub_2480308F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v25 - v9;
  sub_2480308E8();
  v11 = sub_248030918();
  v12 = sub_248030CE8();
  if (sub_248030D28())
  {
    v13 = swift_slowAlloc();
    v25[1] = v1;
    v14 = v13;
    *v13 = 0;
    v15 = sub_2480308D8();
    _os_signpost_emit_with_name_impl(&dword_247F67000, v11, v12, v15, "unpause", "", v14, 2u);
    MEMORY[0x24C1C47E0](v14, -1, -1);
  }

  (*(v4 + 16))(v8, v10, v3);
  v16 = sub_248030968();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_248030958();
  (*(v4 + 8))(v10, v3);
  v20 = OBJC_IVAR___DTProcessorTraceRecorder_state;
  if (*(v2 + OBJC_IVAR___DTProcessorTraceRecorder_state) == 3 && *(v2 + OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording))
  {
    hwtrace_live_recording_resume();
    *(v2 + v20) = 2;
  }

  else
  {
    v21 = sub_248030988();
    v22 = sub_248030C88();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_247F67000, v21, v22, "Failed to unpause recording", v23, 2u);
      MEMORY[0x24C1C47E0](v23, -1, -1);
    }

    sub_24801C0A4();
    swift_allocError();
    *v24 = 3;
    swift_willThrow();
  }

  sub_24801BD00(v2, v19, "unpause");
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProcessorTraceRecorder.saveRecording(fd:)(Swift::Int32 fd)
{
  v99 = *MEMORY[0x277D85DE8];
  v3 = sub_2480308F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v81 - v9;
  sub_2480308E8();
  v89 = v1;
  v11 = sub_248030918();
  v12 = sub_248030CE8();
  if (sub_248030D28())
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_2480308D8();
    _os_signpost_emit_with_name_impl(&dword_247F67000, v11, v12, v14, "save", "", v13, 2u);
    MEMORY[0x24C1C47E0](v13, -1, -1);
  }

  (*(v4 + 16))(v8, v10, v3);
  v15 = sub_248030968();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_248030958();
  (*(v4 + 8))(v10, v3);
  if (fd < 0)
  {
    v20 = v89;
    v30 = sub_248030988();
    v31 = sub_248030C88();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 67109120;
      *(v32 + 1) = fd;
      v33 = "Invalid file descriptor %d";
      v34 = v31;
      v35 = v30;
      v36 = v32;
      v37 = 8;
LABEL_15:
      _os_log_impl(&dword_247F67000, v35, v34, v33, v36, v37);
      MEMORY[0x24C1C47E0](v32, -1, -1);
    }

LABEL_16:

    sub_24801C0A4();
    swift_allocError();
    *v39 = 6;
    swift_willThrow();
LABEL_23:
    sub_24801BD00(v20, v18, "save");

    goto LABEL_24;
  }

  v19 = ktrace_file_create_fd();
  v20 = v89;
  if (!v19)
  {
    v30 = sub_248030988();
    v38 = sub_248030C88();
    if (os_log_type_enabled(v30, v38))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "Can't create ktrace file";
      v34 = v38;
      v35 = v30;
      v36 = v32;
      v37 = 2;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v21 = OBJC_IVAR___DTProcessorTraceRecorder_state;
  if (*(v89 + OBJC_IVAR___DTProcessorTraceRecorder_state) != 4)
  {
    ProcessorTraceRecorder.stopRecording()();
    if (v40)
    {
      goto LABEL_22;
    }

    v88 = 0;
    if (*(v20 + v21) != 4)
    {
      goto LABEL_19;
    }
  }

  v22 = OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording;
  if (!*(v20 + OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording))
  {
LABEL_19:
    v41 = sub_248030988();
    v42 = sub_248030C88();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_247F67000, v41, v42, "Failed to save the recording", v43, 2u);
      MEMORY[0x24C1C47E0](v43, -1, -1);
    }

    sub_24801C0A4();
    swift_allocError();
    *v44 = 6;
    swift_willThrow();
    goto LABEL_22;
  }

  v23 = hwtrace_live_recording_postprocess_options_init();
  hwtrace_live_recording_postprocess_options_set_ktrace_session();
  v24 = hwtrace_live_recording_postprocess();
  if (v24)
  {
    v25 = v24;
    v26 = sub_248030988();
    v27 = sub_248030C88();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 67109120;
      *(v28 + 4) = v25;
      _os_log_impl(&dword_247F67000, v26, v27, "Failed to postprocess recording: %d", v28, 8u);
      MEMORY[0x24C1C47E0](v28, -1, -1);
    }

    sub_24801C0A4();
    swift_allocError();
    *v29 = 5;
    swift_willThrow();
    hwtrace_live_recording_postprocess_options_deinit();
    goto LABEL_22;
  }

  v87 = v23;
  hwtrace_live_recording_finalize_postprocessing();
  v98 = 0;
  v46 = hwtrace_recording_init_from_live_recording();
  if (v46 || (v51 = v98) == 0)
  {
    v47 = sub_248030988();
    v48 = sub_248030C88();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 67109120;
      *(v49 + 4) = v46;
      _os_log_impl(&dword_247F67000, v47, v48, "Failed to init recording from live recording: %d", v49, 8u);
      MEMORY[0x24C1C47E0](v49, -1, -1);
    }

    sub_24801C0A4();
    swift_allocError();
    *v50 = 6;
    swift_willThrow();
    goto LABEL_29;
  }

  v20 = v89;
  v52 = *(*(v89 + OBJC_IVAR___DTProcessorTraceRecorder_configuration) + OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_copyImagesOnSave);
  v83 = *(v89 + OBJC_IVAR___DTProcessorTraceRecorder_configuration);
  if (v52 > 1)
  {
    options_init = hwtrace_load_options_init();
    if (options_init)
    {
      v61 = options_init;
      v97 = 0;
      if (!hwtrace_trace_init_from_recording())
      {
        v81[0] = v61;
        v81[1] = v51;
        hwtrace_trace_topology();
        v92 = 0;
        v96 = 0;
        hwtrace_topology_systems();
        v68 = v96;
        if (v96 && v92)
        {
          v82 = &v96[v92];
          do
          {
            v84 = v68;
            v69 = *v68;
            v91 = 0;
            v95 = 0;
            hwtrace_system_tasks();
            v70 = v95;
            if (v95 && v91)
            {
              v85 = 0;
              v71 = &v95[v91];
              v86 = v71;
              do
              {
                v72 = *v70;
                v90 = 0;
                v94 = 0;
                hwtrace_task_threads();
                v73 = v94;
                if (v94)
                {
                  if (v90)
                  {
                    v74 = &v94[v90];
                    while (2)
                    {
                      while (1)
                      {
                        v75 = *v73++;
                        v93 = 0;
                        v76 = hwtrace_cursor_init_from_thread();
                        if (v93 && v76 == 0)
                        {
                          break;
                        }

                        if (v73 == v74)
                        {
                          v79 = 0;
                          goto LABEL_64;
                        }
                      }

                      do
                      {
                        hwtrace_cursor_range();
                        v78 = hwtrace_range_terminator();
                        v79 = v78 == 1;
                        if (v78 == 1)
                        {
                          v85 = 1;
                          goto LABEL_64;
                        }
                      }

                      while (!hwtrace_cursor_next_range());
                      if (v73 != v74)
                      {
                        continue;
                      }

                      break;
                    }

LABEL_64:
                    v71 = v86;
                  }

                  else
                  {
                    v79 = 0;
                  }
                }

                else
                {
                  v79 = 0;
                }

                ++v70;
              }

              while (v70 != v71 && !v79);
              v80 = v85;
            }

            else
            {
              v80 = 0;
            }

            v68 = v84 + 1;
          }

          while (v84 + 1 != v82 && (v80 & 1) == 0);
        }

        hwtrace_trace_deinit();
        hwtrace_load_options_deinit();
        goto LABEL_32;
      }

      sub_24801C0A4();
      swift_allocError();
      *v62 = 7;
      swift_willThrow();
      hwtrace_load_options_deinit();
      hwtrace_recording_deinit();
      hwtrace_live_recording_postprocess_options_deinit();
    }

    else
    {
      sub_24801C0A4();
      swift_allocError();
      *v67 = 7;
      swift_willThrow();
      hwtrace_recording_deinit();
      hwtrace_live_recording_postprocess_options_deinit();
    }

LABEL_22:
    ktrace_file_close();
    goto LABEL_23;
  }

LABEL_32:
  hwtrace_recording_save_options_init();
  hwtrace_recording_save_options_set_ktrace_file();
  hwtrace_recording_save_options_set_port_mode();
  v53 = *(v83 + OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_decodeOnSave);
  hwtrace_recording_save_options_set_decode_trace();
  hwtrace_recording_save_options_set_decode_compression();
  v54 = hwtrace_recording_save();
  if (v54)
  {
    v55 = v54;
    v56 = sub_248030988();
    v57 = sub_248030C88();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 67109120;
      *(v58 + 4) = v55;
      _os_log_impl(&dword_247F67000, v56, v57, "Failed to save recording: %d", v58, 8u);
      MEMORY[0x24C1C47E0](v58, -1, -1);
    }

    sub_24801C0A4();
    swift_allocError();
    *v59 = 6;
    swift_willThrow();
    hwtrace_recording_save_options_deinit();
LABEL_29:
    hwtrace_recording_deinit();
    hwtrace_live_recording_postprocess_options_deinit();
    ktrace_file_close();
    v20 = v89;
    goto LABEL_23;
  }

  hwtrace_live_recording_deinit();
  v63 = v89;
  *(v89 + v22) = 0;
  *(v63 + v21) = 0;
  v64 = sub_248030988();
  v65 = sub_248030C68();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_247F67000, v64, v65, "Successfully saved recording to tracev3 file.", v66, 2u);
    MEMORY[0x24C1C47E0](v66, -1, -1);
  }

  hwtrace_recording_save_options_deinit();
  hwtrace_recording_deinit();
  hwtrace_live_recording_postprocess_options_deinit();
  ktrace_file_close();
  sub_24801BD00(v89, v18, "save");

LABEL_24:
  v45 = *MEMORY[0x277D85DE8];
}

uint64_t static ProcessorTraceRecorder.recordingVersionString.getter()
{
  v0 = hwtrace_version_info();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_248030BA8();
  MEMORY[0x24C1C47E0](v1, -1, -1);
  return v2;
}

id ProcessorTraceRecorder.init(configuration:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_2480309A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording] = 0;
  v1[OBJC_IVAR___DTProcessorTraceRecorder_state] = 0;
  v9 = OBJC_IVAR___DTProcessorTraceRecorder_logger;
  if (qword_27EE83A18 != -1)
  {
    swift_once();
  }

  v10 = sub_248006DF0(v4, qword_27EE85A60);
  v11 = *(v5 + 16);
  v11(&v1[v9], v10, v4);
  v11(v8, v10, v4);
  sub_248030908();
  *&v1[OBJC_IVAR___DTProcessorTraceRecorder_configuration] = a1;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

id ProcessorTraceRecorder.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording])
  {
    hwtrace_live_recording_deinit();
  }

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

NSObject *sub_24801B41C()
{
  v15 = *MEMORY[0x277D85DE8];
  if (hwtrace_live_topology())
  {
    v12 = v0;
    hwtrace_live_recording_options_init();
    v14 = 0;
    hwtrace_live_topology_systems();
    hwtrace_live_recording_options_set_session_policy();
    v13 = 0;
    v1 = hwtrace_live_recording_init_with_options();
    v2 = v13;
    if (v13)
    {
      *(v12 + OBJC_IVAR___DTProcessorTraceRecorder_state) = 1;
      hwtrace_live_recording_options_deinit();
    }

    else
    {
      v6 = v1;
      v2 = sub_248030988();
      v7 = sub_248030C88();
      if (os_log_type_enabled(v2, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 67109120;
        *(v8 + 4) = v6;
        _os_log_impl(&dword_247F67000, v2, v7, "Failed to initialize recording: %d", v8, 8u);
        MEMORY[0x24C1C47E0](v8, -1, -1);
      }

      sub_24801C0A4();
      swift_allocError();
      *v9 = 0;
      swift_willThrow();
      hwtrace_live_recording_options_deinit();
    }
  }

  else
  {
    v3 = sub_248030988();
    v2 = sub_248030C88();
    if (os_log_type_enabled(v3, v2))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_247F67000, v3, v2, "Failed to initialize hwtrace_live_topology.", v4, 2u);
      MEMORY[0x24C1C47E0](v4, -1, -1);
    }

    sub_24801C0A4();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
  }

  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_24801BC7C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

uint64_t sub_24801BD00(uint64_t a1, uint64_t a2, const char *a3)
{
  v20 = a3;
  v3 = sub_248030938();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2480308F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_248030918();
  sub_248030948();
  v14 = sub_248030CD8();
  if (sub_248030D28())
  {

    sub_248030978();

    if ((*(v4 + 88))(v7, v3) == *MEMORY[0x277D85B00])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v7, v3);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_2480308D8();
    _os_signpost_emit_with_name_impl(&dword_247F67000, v13, v14, v17, v20, v15, v16, 2u);
    MEMORY[0x24C1C47E0](v16, -1, -1);
  }

  return (*(v9 + 8))(v12, v8);
}

id ProcessorTraceRecorder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_24801C0A4()
{
  result = qword_27EE83EA8;
  if (!qword_27EE83EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83EA8);
  }

  return result;
}

uint64_t _s24DVTInstrumentsFoundation22ProcessorTraceRecorderC22supportsVABufferForXNUSbvgZ_0()
{
  v2 = *MEMORY[0x277D85DE8];
  result = hwtrace_live_topology();
  if (result)
  {
    hwtrace_live_topology_systems();
    result = 0;
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t type metadata accessor for ProcessorTraceRecorder()
{
  result = qword_27EE83EB0;
  if (!qword_27EE83EB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24801C264()
{
  result = sub_2480309A8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_248030928();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProcessorTraceRecorder.RecordingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProcessorTraceRecorder.RecordingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProcessorTraceRecorder.ProcessorTraceRecorderError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProcessorTraceRecorder.ProcessorTraceRecorderError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24801C628()
{
  result = qword_27EE83EC0;
  if (!qword_27EE83EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83EC0);
  }

  return result;
}

unint64_t sub_24801C680()
{
  result = qword_27EE83EC8;
  if (!qword_27EE83EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83EC8);
  }

  return result;
}

void sub_24801C7C8(char a1@<W0>, uint64_t a2@<X8>)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = sub_248030808();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_248030778();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24801CB50(a1, v14);
  if (!v2)
  {
    v23[1] = 0;
    sub_2480307F8();
    sub_2480307E8();
    sub_2480306F8();

    v15 = [objc_opt_self() defaultManager];
    v23[0] = a2;
    v16 = sub_2480306E8();
    v24[0] = 0;
    v17 = [v15 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:v24];

    if (v17)
    {
      v18 = *(v6 + 8);
      v19 = v24[0];
      v18(v9, v5);
      (*(v11 + 8))(v14, v10);
    }

    else
    {
      v20 = v24[0];
      sub_2480306B8();

      swift_willThrow();
      v21 = *(v11 + 8);
      v21(v23[0], v10);
      (*(v6 + 8))(v9, v5);
      v21(v14, v10);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24801CA88()
{
  v0 = sub_2480309A8();
  sub_248008A94(v0, qword_27EE83ED0);
  v1 = sub_248006DF0(v0, qword_27EE83ED0);
  if (qword_27EE83A00 != -1)
  {
    swift_once();
  }

  v2 = sub_248006DF0(v0, qword_27EE85A48);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_24801CB50(char a1@<W0>, char *a2@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = sub_248030778();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() defaultManager];
  v10 = [v9 temporaryDirectory];
  sub_248030728();

  sub_2480306F8();
  v11 = *(v5 + 8);
  v11(v8, v4);
  v12 = &unk_24803D000;
  v13 = MEMORY[0x277D837D0];
  if (a1)
  {
    v41 = 1;
    sub_248030748();
    v14 = sub_248030B28();

    v15 = [v9 fileExistsAtPath:v14 isDirectory:&v41];

    v16 = sub_248030C78();
    if (v15)
    {
      if (qword_27EE839F8 != -1)
      {
        swift_once();
      }

      sub_2480308C8();
      v13 = MEMORY[0x277D837D0];
    }

    else
    {
      v39 = v16;
      if (qword_27EE839F8 != -1)
      {
        swift_once();
      }

      v38 = sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
      v17 = swift_allocObject();
      v37 = xmmword_24803DE50;
      *(v17 + 16) = xmmword_24803DE50;
      v18 = sub_248030748();
      v20 = v19;
      *(v17 + 56) = MEMORY[0x277D837D0];
      v36 = sub_24800A52C();
      *(v17 + 64) = v36;
      *(v17 + 32) = v18;
      *(v17 + 40) = v20;
      sub_2480308C8();

      v21 = sub_2480306E8();
      v40 = 0;
      LODWORD(v17) = [v9 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:&v40];

      if (!v17)
      {
        v34 = v40;
        sub_2480306B8();

        swift_willThrow();
        v11(a2, v4);
        goto LABEL_14;
      }

      v22 = v40;
      sub_248030C78();
      v23 = swift_allocObject();
      *(v23 + 16) = v37;
      v24 = sub_248030748();
      v25 = MEMORY[0x277D837D0];
      v26 = v36;
      *(v23 + 56) = MEMORY[0x277D837D0];
      *(v23 + 64) = v26;
      *(v23 + 32) = v24;
      *(v23 + 40) = v27;
      sub_2480308C8();

      v13 = v25;
    }

    v12 = &unk_24803D000;
  }

  v28 = v13;
  sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v29 = swift_allocObject();
  *(v29 + 16) = v12[229];
  v30 = sub_248030748();
  v32 = v31;
  *(v29 + 56) = v28;
  *(v29 + 64) = sub_24800A52C();
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  sub_2480308C8();

LABEL_14:
  v33 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24801D070@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v90 = *MEMORY[0x277D85DE8];
  v3 = sub_248030808();
  v82 = *(v3 - 8);
  v83 = v3;
  v4 = *(v82 + 64);
  MEMORY[0x28223BE20](v3);
  v81 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_248030778();
  v84 = *(v6 - 8);
  v85 = v6;
  v7 = *(v84 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v71 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v71 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v86 = &v71 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v71 - v19;
  v21 = a1[1];
  v78 = *a1;
  v79 = v21;
  v22 = a1[3];
  v23 = *(a1 + 32);
  v88 = a1[2];
  v89 = v22;

  MEMORY[0x24C1C17F0](46, 0xE100000000000000);
  if (v23)
  {
    v24 = 0x67616B6361706C6DLL;
  }

  else
  {
    v24 = 0x6C65646F6D6C6DLL;
  }

  if (v23)
  {
    v25 = 0xE900000000000065;
  }

  else
  {
    v25 = 0xE700000000000000;
  }

  MEMORY[0x24C1C17F0](v24, v25);

  v26 = v88;
  v27 = v89;
  v28 = v20;
  v29 = v87;
  sub_24801CB50(1, v20);
  if (v29)
  {
  }

  else
  {
    v74 = v26;
    v75 = 0;
    v87 = v27;
    v77 = v16;
    v76 = v23;
    v72 = v13;
    v73 = v10;
    v31 = v81;
    sub_2480307F8();
    sub_2480307E8();
    sub_2480306F8();

    v32 = [objc_opt_self() defaultManager];
    v33 = sub_2480306E8();
    v88 = 0;
    v34 = [v32 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:&v88];

    if (v34)
    {
      v35 = v77;
      v36 = *(v84 + 8);
      v37 = v88;
      v38 = v85;
      v36(v86, v85);
      v36(v28, v38);
      v39 = v80;
      (*(v82 + 32))(v80, v31, v83);
      v40 = type metadata accessor for ModelLocation();
      v41 = (v39 + *(v40 + 20));
      v42 = v75;
      v43 = v87;
      *v41 = v74;
      v41[1] = v43;
      *(v39 + *(v40 + 24)) = v76;
      sub_248029190(v35);
      if (v42)
      {
        result = sub_248023178(v39);
      }

      else
      {
        v87 = v36;
        sub_248030C78();
        if (qword_27EE839F8 != -1)
        {
          swift_once();
        }

        sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_24803DE50;
        v48 = sub_248030748();
        v50 = v49;
        *(v47 + 56) = MEMORY[0x277D837D0];
        *(v47 + 64) = sub_24800A52C();
        *(v47 + 32) = v48;
        *(v47 + 40) = v50;
        sub_2480308C8();

        if (v76)
        {
          v51 = v72;
          sub_248030718();
          sub_248030708();
          sub_2480307C8();
          v52 = v85;
          if (qword_27EE83A20 != -1)
          {
            swift_once();
          }

          v53 = sub_2480309A8();
          sub_248006DF0(v53, qword_27EE83ED0);
          v54 = sub_248030988();
          v55 = sub_248030C98();
          v56 = os_log_type_enabled(v54, v55);
          v60 = v87;
          if (v56)
          {
            v57 = swift_slowAlloc();
            *v57 = 0;
            _os_log_impl(&dword_247F67000, v54, v55, "successfully wrote archive file to disk", v57, 2u);
            v58 = v57;
            v52 = v85;
            MEMORY[0x24C1C47E0](v58, -1, -1);
          }

          v59 = v73;
          sub_248021F60(v73, v77);
          v61 = sub_248030988();
          v62 = sub_248030C98();
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            *v63 = 0;
            _os_log_impl(&dword_247F67000, v61, v62, "successfully decompressed archive file", v63, 2u);
            v64 = v63;
            v52 = v85;
            MEMORY[0x24C1C47E0](v64, -1, -1);
          }

          v60(v59, v52);
          v60(v51, v52);
        }

        else
        {
          sub_2480307C8();
          v52 = v85;
          v60 = v87;
        }

        if (qword_27EE83A20 != -1)
        {
          swift_once();
        }

        v65 = sub_2480309A8();
        sub_248006DF0(v65, qword_27EE83ED0);
        v66 = sub_248030988();
        v67 = sub_248030C98();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 0;
          _os_log_impl(&dword_247F67000, v66, v67, "successfully wrote model to disk", v68, 2u);
          v69 = v68;
          v52 = v85;
          MEMORY[0x24C1C47E0](v69, -1, -1);
        }

        result = (v60)(v77, v52);
      }
    }

    else
    {
      v44 = v88;

      sub_2480306B8();

      swift_willThrow();
      v45 = v85;
      v46 = *(v84 + 8);
      v46(v86, v85);
      (*(v82 + 8))(v31, v83);
      result = (v46)(v20, v45);
    }
  }

  v70 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24801D93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v89 = a3;
  v101[2] = *MEMORY[0x277D85DE8];
  v100 = sub_248030778();
  v6 = *(v100 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v100);
  v86 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v99 = &v83 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v83 - v12;
  v97 = sub_2480306C8();
  v14 = *(v97 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v97);
  v96 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = objc_opt_self();
  v17 = [v90 defaultManager];
  v18 = a2;
  sub_248030738();
  v19 = sub_248030B28();

  v101[0] = 0;
  v20 = [v17 contentsOfDirectoryAtPath:v19 error:v101];

  v21 = v101[0];
  if (v20)
  {
    v98 = v13;
    v22 = sub_248030BE8();
    v23 = v21;

    MEMORY[0x28223BE20](v24);
    *(&v83 - 2) = v18;
    v25 = sub_24801ECCC(sub_248022E70, (&v83 - 4), v22);

    MEMORY[0x28223BE20](v26);
    *(&v83 - 2) = a1;
    v101[0] = sub_24801EF10(sub_248022E90, (&v83 - 4), v25);

    sub_24801F7CC(v101);
    v27 = v3;
    if (!v3)
    {

      v28 = v101[0];
      v101[0] = sub_2480307E8();
      v101[1] = v29;
      v31 = v96;
      v30 = v97;
      (*(v14 + 104))(v96, *MEMORY[0x277CC91D8], v97);
      sub_2480219D0();
      sub_248030768();
      (*(v14 + 8))(v31, v30);

      LODWORD(v14) = sub_248030C78();
      if (qword_27EE839F8 != -1)
      {
        goto LABEL_26;
      }

      while (1)
      {
        v94 = qword_27EE85A40;
        v88 = sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
        v32 = swift_allocObject();
        v33 = v32;
        v93 = xmmword_24803DE50;
        *(v32 + 16) = xmmword_24803DE50;
        v34 = v28;
        v35 = *(v28 + 16);
        v36 = MEMORY[0x277D84F90];
        v91 = v6;
        v92 = v34;
        if (v35)
        {
          v84 = v32;
          v85 = v14;
          v87 = v27;
          v101[0] = MEMORY[0x277D84F90];
          sub_248021088(0, v35, 0);
          v36 = v101[0];
          v38 = *(v6 + 16);
          v37 = v6 + 16;
          v39 = v34 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
          v95 = *(v37 + 56);
          v96 = v38;
          v97 = v37;
          v40 = (v37 - 8);
          do
          {
            v42 = v99;
            v41 = v100;
            (v96)(v99, v39, v100);
            v43 = sub_248030738();
            v45 = v44;
            (*v40)(v42, v41);
            v101[0] = v36;
            v47 = v36[2];
            v46 = v36[3];
            if (v47 >= v46 >> 1)
            {
              sub_248021088((v46 > 1), v47 + 1, 1);
              v36 = v101[0];
            }

            v36[2] = v47 + 1;
            v48 = &v36[2 * v47];
            v48[4] = v43;
            v48[5] = v45;
            v39 += v95;
            --v35;
          }

          while (v35);
          v6 = v91;
          v27 = v87;
          v33 = v84;
        }

        v101[0] = v36;
        sub_2480078E4(&qword_27EE83F10, &qword_24803EC40);
        sub_248022EB0(&qword_27EE83F18, &qword_27EE83F10, &qword_24803EC40);
        v49 = sub_248030B08();
        v51 = v50;

        v33[7] = MEMORY[0x277D837D0];
        v52 = sub_24800A52C();
        v33[8] = v52;
        v33[4] = v49;
        v33[5] = v51;
        LODWORD(v14) = v94;
        sub_2480308C8();

        sub_248030C78();
        v53 = swift_allocObject();
        *(v53 + 16) = v93;
        v54 = sub_248030738();
        *(v53 + 56) = MEMORY[0x277D837D0];
        *(v53 + 64) = v52;
        v97 = v52;
        *(v53 + 32) = v54;
        *(v53 + 40) = v55;
        sub_2480308C8();

        v56 = v92;
        v99 = *(v92 + 16);
        if (v99)
        {
          break;
        }

LABEL_15:
        v87 = v27;
        sub_248030C78();
        LODWORD(v14) = v88;
        v63 = swift_allocObject();
        *(v63 + 16) = v93;
        v64 = sub_248030738();
        v65 = v97;
        *(v63 + 56) = MEMORY[0x277D837D0];
        *(v63 + 64) = v65;
        *(v63 + 32) = v64;
        *(v63 + 40) = v66;
        sub_2480308C8();

        if (!v99)
        {
LABEL_20:

          goto LABEL_23;
        }

        v28 = 0;
        v67 = v6;
        v6 += 16;
        v68 = (v67 + 8);
        v27 = v86;
        v69 = v100;
        while (v28 < *(v56 + 16))
        {
          (*(v91 + 16))(v27, v56 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v28, v69);
          sub_248030C78();
          v70 = swift_allocObject();
          *(v70 + 16) = v93;
          v71 = sub_248030738();
          v72 = v97;
          *(v70 + 56) = MEMORY[0x277D837D0];
          *(v70 + 64) = v72;
          *(v70 + 32) = v71;
          *(v70 + 40) = v73;
          sub_2480308C8();

          v74 = [v90 defaultManager];
          v75 = sub_2480306E8();
          v101[0] = 0;
          LODWORD(v70) = [v74 removeItemAtURL:v75 error:v101];

          if (!v70)
          {
            v80 = v101[0];
            sub_2480306B8();

            swift_willThrow();

            v81 = *v68;
            (*v68)(v27, v69);
            result = v81(v89, v69);
            goto LABEL_23;
          }

          ++v28;
          v76 = *v68;
          v77 = v101[0];
          v76(v27, v69);
          v56 = v92;
          if (v99 == v28)
          {
            goto LABEL_20;
          }
        }

LABEL_25:
        __break(1u);
LABEL_26:
        swift_once();
      }

      v57 = 0;
      v28 = v6 + 16;
      v58 = (v6 + 8);
      while (1)
      {
        if (v57 >= *(v56 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        v59 = v56 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v57;
        v14 = v6;
        v60 = *(v6 + 16);
        v61 = v98;
        v62 = v100;
        v60(v98, v59, v100);
        sub_24801F1E0(v61, 104857600);
        if (v27)
        {
          break;
        }

        ++v57;
        (*v58)(v61, v62);
        v6 = v14;
        if (v99 == v57)
        {
          goto LABEL_15;
        }
      }

      (*v58)(v61, v62);
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v79 = v101[0];
    sub_2480306B8();

    result = swift_willThrow();
LABEL_23:
    v82 = *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t sub_24801E320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2480306C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_248030778();
  v34 = *(v37 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x28223BE20](v37);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248030718();
  v35 = a2;
  v36 = a3;
  (*(v9 + 104))(v12, *MEMORY[0x277CC91D8], v8);
  sub_2480219D0();
  v16 = MEMORY[0x277D837D0];
  v33 = a4;
  sub_248030768();
  (*(v9 + 8))(v12, v8);
  sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v17 = swift_allocObject();
  v31 = xmmword_24803DE50;
  *(v17 + 16) = xmmword_24803DE50;
  v18 = sub_248030738();
  v20 = v19;
  *(v17 + 56) = v16;
  v21 = sub_24800A52C();
  *(v17 + 64) = v21;
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  sub_2480308C8();

  v23 = v32;
  v22 = v33;
  sub_248021F60(a1, v33);
  if (v23)
  {
    v24 = *(v34 + 8);
    v25 = v22;
    v26 = v37;
    v24(v25, v37);
    return (v24)(v15, v26);
  }

  else
  {
    sub_248030C78();
    v28 = swift_allocObject();
    *(v28 + 16) = v31;
    v29 = sub_248030738();
    *(v28 + 56) = MEMORY[0x277D837D0];
    *(v28 + 64) = v21;
    *(v28 + 32) = v29;
    *(v28 + 40) = v30;
    sub_2480308C8();

    return (*(v34 + 8))(v15, v37);
  }
}

uint64_t sub_24801E6A8@<X0>(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v6 = sub_2480306C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_248030778();
  v37 = *(v11 - 8);
  v38 = v11;
  v12 = *(v37 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248030718();
  v39[0] = a1;
  v39[1] = a2;
  (*(v7 + 104))(v10, *MEMORY[0x277CC91D8], v6);
  sub_2480219D0();
  v36 = a3;
  sub_248030768();
  (*(v7 + 8))(v10, v6);
  sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  v15 = qword_27EE85A40;
  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v16 = swift_allocObject();
  v34 = xmmword_24803DE50;
  *(v16 + 16) = xmmword_24803DE50;
  v17 = sub_248030738();
  v19 = v18;
  *(v16 + 56) = MEMORY[0x277D837D0];
  v20 = sub_24800A52C();
  *(v16 + 64) = v20;
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  v35 = v15;
  sub_2480308C8();

  v21 = [objc_opt_self() defaultManager];
  v22 = sub_2480306E8();
  v23 = v36;
  v24 = sub_2480306E8();
  v39[0] = 0;
  LOBYTE(v19) = [v21 moveItemAtURL:v22 toURL:v24 error:v39];

  if (v19)
  {
    v25 = v39[0];
    sub_248030C78();
    v26 = swift_allocObject();
    *(v26 + 16) = v34;
    v27 = sub_248030738();
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = v20;
    *(v26 + 32) = v27;
    *(v26 + 40) = v28;
    sub_2480308C8();

    result = (*(v37 + 8))(v14, v38);
  }

  else
  {
    v30 = v39[0];
    sub_2480306B8();

    swift_willThrow();
    v31 = v38;
    v32 = *(v37 + 8);
    v32(v23, v38);
    result = (v32)(v14, v31);
  }

  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24801EAD0()
{
  v3 = sub_2480307E8();
  MEMORY[0x24C1C17F0](45, 0xE100000000000000);
  v0 = sub_248030EC8();
  MEMORY[0x24C1C17F0](v0);

  MEMORY[0x24C1C17F0](1600548703, 0xE400000000000000);
  v1 = sub_248030EC8();
  MEMORY[0x24C1C17F0](v1);

  return v3;
}

uint64_t sub_24801EB9C(void *a1)
{
  v2 = sub_2480306C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277CC91D8], v2);
  sub_2480219D0();
  sub_248030768();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_24801ECCC(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = sub_248030778();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v18);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v22 = MEMORY[0x277D84F90];
  sub_2480210A8(0, v10, 0);
  v11 = v22;
  v17 = v6 + 32;
  for (i = (a3 + 40); ; i += 2)
  {
    v13 = *i;
    v21[0] = *(i - 1);
    v21[1] = v13;

    v19(v21);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v22 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_2480210A8(v14 > 1, v15 + 1, 1);
      v11 = v22;
    }

    *(v11 + 16) = v15 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v18);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24801EE98()
{
  sub_2480306D8();
  sub_2480307E8();
  v0 = sub_248030BC8();

  return v0 & 1;
}

uint64_t sub_24801EF10(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = sub_248030778();
  v7 = *(*(v40 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x277D84F90];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2480210A8(0, *(v24 + 16) + 1, 1);
          v24 = v41;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_2480210A8(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        *(v24 + 16) = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
LABEL_14:

    return v38;
  }

  return result;
}

void sub_24801F1E0(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24803DE50;
  v3 = sub_248030738();
  v5 = v4;
  *(v2 + 56) = MEMORY[0x277D837D0];
  v6 = sub_24800A52C();
  *(v2 + 64) = v6;
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  sub_2480308C8();

  v7 = objc_allocWithZone(MEMORY[0x277CBEAE0]);
  v8 = sub_2480306E8();
  v9 = [v7 initWithURL_];

  if (!v9)
  {
    goto LABEL_33;
  }

  [v9 open];
  v10 = swift_slowAlloc();
  sub_248030C78();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24803DE50;
  v12 = [v9 hasBytesAvailable];
  v13 = 0x7365747942206F4ELL;
  if (v12)
  {
    v13 = 0x7365747942;
  }

  v14 = 0xE800000000000000;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = v6;
  if (v12)
  {
    v14 = 0xE500000000000000;
  }

  *(v11 + 32) = v13;
  *(v11 + 40) = v14;
  sub_2480308C8();
  v15 = a2;
  v16 = &selRef_cleanup;

  if (![v9 hasBytesAvailable])
  {
LABEL_32:
    [v9 close];
    MEMORY[0x24C1C47E0](v10, -1, -1);

LABEL_33:
    v31 = *MEMORY[0x277D85DE8];
    return;
  }

  while (1)
  {
    v17 = [v9 read:v10 maxLength:v15];
    if (!v17)
    {
      goto LABEL_11;
    }

    v18 = v17;
    v35 = xmmword_24803EBE0;
    sub_248030798();
    v19 = objc_allocWithZone(MEMORY[0x277CBEB78]);
    v20 = sub_2480306E8();
    v21 = [v19 initWithURL:v20 append:1];

    if (v21)
    {
      break;
    }

    sub_2480081DC(v35, *(&v35 + 1));
LABEL_11:
    if (([v9 v16[15]] & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  [v21 open];
  v23 = *(&v35 + 1);
  v22 = v35;
  v24 = *(&v35 + 1) >> 62;
  if ((*(&v35 + 1) >> 62) > 1)
  {
    if (v24 == 2)
    {
      v25 = *(v35 + 16);
      v32 = *(v35 + 24);
      v26 = sub_248030668();
      if (v26)
      {
        v27 = sub_248030688();
        if (__OFSUB__(v25, v27))
        {
          goto LABEL_37;
        }

        v26 += v25 - v27;
      }

      if (__OFSUB__(v32, v25))
      {
        goto LABEL_35;
      }

      sub_248030678();
      if (!v26)
      {
        goto LABEL_40;
      }

      goto LABEL_28;
    }

    *(v34 + 6) = 0;
    v34[0] = 0;
LABEL_30:
    [v21 write:v34 maxLength:v18];
LABEL_31:
    [v21 close];

    sub_2480081DC(v22, v23);
    sub_2480081DC(0, 0xC000000000000000);
    v16 = &selRef_cleanup;
    goto LABEL_11;
  }

  if (!v24)
  {
    v34[0] = v35;
    LODWORD(v34[1]) = DWORD2(v35);
    WORD2(v34[1]) = WORD6(v35);
    goto LABEL_30;
  }

  if (v35 > v35 >> 32)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  v28 = sub_248030668();
  if (v28)
  {
    v29 = v28;
    v30 = sub_248030688();
    if (__OFSUB__(v22, v30))
    {
      goto LABEL_36;
    }

    v26 = v22 - v30 + v29;
    sub_248030678();
    if (!v26)
    {
      goto LABEL_39;
    }

LABEL_28:
    [v21 write:v26 maxLength:{v18, v32}];
    v15 = a2;
    goto LABEL_31;
  }

  sub_248030678();
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

char *sub_24801F6C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2480078E4(&qword_27EE83F28, &qword_24803EC50);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_24801F7CC(void **a1)
{
  v2 = *(sub_248030778() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2480213AC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_24801F874(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_24801F874(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_248030EB8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_248030778();
        v6 = sub_248030C08();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_248030778() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24801FCAC(v8, v9, a1, v4);
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
    return sub_24801F9A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24801F9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_248030778();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v49 = &v35 - v13;
  result = MEMORY[0x28223BE20](v12);
  v48 = &v35 - v16;
  v37 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v46 = *(v15 + 16);
    v47 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v43 = (v15 + 32);
    v44 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v42 = -v18;
    v21 = a1 - a3;
    v36 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v40 = v20;
    v41 = a3;
    v38 = v22;
    v39 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v46;
      v46(v48, v22, v8);
      v25(v49, v24, v8);
      v26 = sub_2480306D8();
      v28 = v27;
      if (v26 == sub_2480306D8() && v28 == v29)
      {

        v23 = *v19;
        (*v19)(v49, v8);
        result = (v23)(v48, v8);
LABEL_5:
        a3 = v41 + 1;
        v20 = v40 + v36;
        v21 = v39 - 1;
        v22 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_6;
      }

      v30 = sub_248030EE8();

      v31 = *v19;
      (*v19)(v49, v8);
      result = (v31)(v48, v8);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v24, v33, v8);
      v24 += v42;
      v22 += v42;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24801FCAC(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_248030778();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v139 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v150 = &v129 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v155 = &v129 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v154 = &v129 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v147 = &v129 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v146 = &v129 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v134 = &v129 - v24;
  result = MEMORY[0x28223BE20](v23);
  v133 = &v129 - v27;
  v28 = *(a3 + 1);
  v144 = v26;
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_103:
    v32 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (result)
    {
LABEL_105:
      v156 = v30;
      v123 = *(v30 + 16);
      if (v123 >= 2)
      {
        while (1)
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v30 + 16 * v123);
          a3 = v30;
          v127 = *(v30 + 16 * (v123 - 1) + 32);
          v30 = *(v30 + 16 * (v123 - 1) + 40);
          sub_248020868(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v30], v32);
          if (v6)
          {
          }

          if (v30 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_248020F90(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v30;
          v156 = a3;
          result = sub_248020F04(v123 - 1);
          v30 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
          if (v123 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_248020F90(v30);
    v30 = result;
    goto LABEL_105;
  }

  v130 = a4;
  v29 = 0;
  v152 = v26 + 16;
  v153 = (v26 + 8);
  v151 = (v26 + 32);
  v30 = MEMORY[0x277D84F90];
  v136 = a3;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v138 = v29;
    if (v29 + 1 < v28)
    {
      v142 = v28;
      v131 = v30;
      v33 = *a3;
      v34 = *(v144 + 72);
      v5 = v29 + 1;
      v35 = &v33[v34 * v32];
      v36 = *(v144 + 16);
      v36(v133, v35, v9);
      v145 = v34;
      v141 = v36;
      v36(v134, &v33[v34 * v31], v9);
      v32 = sub_2480306D8();
      v38 = v37;
      v39 = sub_2480306D8();
      v132 = v6;
      if (v32 == v39 && v38 == v40)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_248030EE8();
      }

      v41 = *v153;
      (*v153)(v134, v9);
      v140 = v41;
      result = (v41)(v133, v9);
      v42 = (v138 + 2);
      v43 = v145 * (v138 + 2);
      v44 = &v33[v43];
      v45 = v145 * v5;
      v46 = &v33[v145 * v5];
      do
      {
        a3 = v42;
        v49 = v5;
        v6 = v45;
        v30 = v43;
        if (v42 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v42;
        v50 = v141;
        (v141)(v146, v44, v9);
        v50(v147, v46, v9);
        v51 = sub_2480306D8();
        v53 = v52;
        if (v51 == sub_2480306D8() && v53 == v54)
        {
          v47 = 0;
        }

        else
        {
          v47 = sub_248030EE8();
        }

        a3 = v149;

        v32 = v140;
        v140(v147, v9);
        result = (v32)(v146, v9);
        v48 = v143 ^ v47;
        v42 = a3 + 1;
        v44 += v145;
        v46 += v145;
        v49 = v148;
        v5 = v148 + 1;
        v45 = v6 + v145;
        v43 = v30 + v145;
      }

      while ((v48 & 1) == 0);
      if (v143)
      {
        v31 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v55 = v138 * v145;
          v56 = v138;
          do
          {
            if (v56 != v49)
            {
              v58 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v49;
              v149 = *v151;
              (v149)(v139, v58 + v55, v9);
              if (v55 < v6 || v58 + v55 >= (v58 + v30))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v149)(v58 + v6, v139, v9);
              v31 = v138;
              v49 = v5;
            }

            ++v56;
            v6 -= v145;
            v30 -= v145;
            v55 += v145;
          }

          while (v56 < v49--);
        }

        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
      }

      else
      {
        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
      }
    }

    v59 = *(a3 + 1);
    if (v32 < v59)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_131;
      }

      if (v32 - v31 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v32 < v31)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24801F6C8(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v77 = *(v30 + 16);
    v76 = *(v30 + 24);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      result = sub_24801F6C8((v76 > 1), v77 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v78;
    v79 = v30 + 16 * v77;
    *(v79 + 32) = v31;
    *(v79 + 40) = v32;
    v80 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v32;
    if (v77)
    {
      while (1)
      {
        v32 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v81 = *(v30 + 32);
          v82 = *(v30 + 40);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_72:
          if (v84)
          {
            goto LABEL_119;
          }

          v97 = (v30 + 16 * v78);
          v99 = *v97;
          v98 = v97[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_122;
          }

          v103 = (v30 + 32 + 16 * v32);
          v105 = *v103;
          v104 = v103[1];
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_126;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v32 = v78 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v107 = (v30 + 16 * v78);
        v109 = *v107;
        v108 = v107[1];
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_86:
        if (v102)
        {
          goto LABEL_121;
        }

        v110 = v30 + 16 * v32;
        v112 = *(v110 + 32);
        v111 = *(v110 + 40);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_124;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_93:
        v118 = v32 - 1;
        if (v32 - 1 >= v78)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_134;
        }

        v119 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v30;
        v120 = *(v30 + 32 + 16 * v118);
        v121 = *(v30 + 32 + 16 * v32);
        v30 = *(v30 + 32 + 16 * v32 + 8);
        sub_248020868(&v119[*(v144 + 72) * v120], &v119[*(v144 + 72) * v121], &v119[*(v144 + 72) * v30], v80);
        if (v6)
        {
        }

        if (v30 < v120)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_248020F90(a3);
        }

        if (v118 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v122 = &a3[16 * v118];
        *(v122 + 4) = v120;
        *(v122 + 5) = v30;
        v156 = a3;
        result = sub_248020F04(v32);
        v30 = v156;
        v78 = *(v156 + 16);
        a3 = v5;
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = v30 + 32 + 16 * v78;
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_117;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_118;
      }

      v92 = (v30 + 16 * v78);
      v94 = *v92;
      v93 = v92[1];
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_120;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_123;
      }

      if (v96 >= v88)
      {
        v114 = (v30 + 32 + 16 * v32);
        v116 = *v114;
        v115 = v114[1];
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_127;
        }

        if (v83 < v117)
        {
          v32 = v78 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v28 = *(a3 + 1);
    v29 = v145;
    if (v145 >= v28)
    {
      goto LABEL_103;
    }
  }

  v60 = (v31 + v130);
  if (__OFADD__(v31, v130))
  {
    goto LABEL_133;
  }

  if (v60 >= v59)
  {
    v60 = *(a3 + 1);
  }

  if (v60 < v31)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v32 == v60)
  {
    goto LABEL_52;
  }

  v131 = v30;
  v132 = v6;
  v61 = *a3;
  v62 = *(v144 + 72);
  v63 = *(v144 + 16);
  v64 = *a3 + v62 * (v32 - 1);
  v148 = -v62;
  v149 = v61;
  v65 = v31 - v32;
  v137 = v62;
  v66 = &v61[v32 * v62];
  v140 = v60;
LABEL_43:
  v145 = v32;
  v141 = v66;
  v142 = v65;
  v143 = v64;
  v68 = v64;
  while (1)
  {
    v63(v154, v66, v9);
    (v63)(v155, v68);
    v5 = sub_2480306D8();
    v70 = v69;
    if (v5 == sub_2480306D8() && v70 == v71)
    {

      v67 = *v153;
      (*v153)(v155, v9);
      v67(v154, v9);
LABEL_42:
      v32 = v145 + 1;
      v64 = v143 + v137;
      v65 = v142 - 1;
      v66 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v32 = v140;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_248030EE8();

    v72 = *v153;
    (*v153)(v155, v9);
    result = (v72)(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v73 = v150;
    v5 = v151;
    v74 = *v151;
    (*v151)(v150, v66, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v74)(v68, v73, v9);
    v68 += v148;
    v66 += v148;
    if (__CFADD__(v65++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}