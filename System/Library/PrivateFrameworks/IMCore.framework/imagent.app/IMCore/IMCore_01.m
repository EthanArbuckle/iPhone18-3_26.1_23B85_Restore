char *sub_100042400(uint64_t a1, _BYTE *a2)
{
  v4 = sub_100054094();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  a2[OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_didReceiveUninstallSignal] = 0;
  a2[OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_didReceiveInstallSignal] = 0;
  a2[OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_didPerformStartupTasks] = 0;
  v12 = &a2[OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_delegate];
  *v12 = a1;
  v12[1] = &off_1000829A0;
  v13 = type metadata accessor for ApplicationWorkspaceObserver();
  v32.receiver = a2;
  v32.super_class = v13;

  v14 = objc_msgSendSuper2(&v32, "init");
  v15 = sub_1000407E8();
  v16 = (*(*a1 + 88))();

  v17 = sub_1000338D8();
  v18 = *(v5 + 16);
  if ((v16 & 1) != 0 || (v15 & 1) == 0)
  {
    v18(v11, v17, v4);
    v22 = sub_100054074();
    v23 = sub_100054254();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Deferring until after first unlock", v24, 2u);
    }

    (*(v5 + 8))(v11, v4);
    v25 = [objc_opt_self() sharedInstance];
    [v25 addListener:v14];

    if (v15)
    {
    }

    else
    {
      v26 = *&v14[OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_delegate];
      v27 = *&v14[OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_delegate + 8];
      ObjectType = swift_getObjectType();
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = *(v27 + 56);

      v30(sub_100044250, v29, ObjectType, v27);
    }
  }

  else
  {
    v18(v9, v17, v4);
    v19 = sub_100054074();
    v20 = sub_100054254();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "We don't have to wait for any startup tasks - performing launch tasks now", v21, 2u);
    }

    (*(v5 + 8))(v9, v4);
    sub_100040BCC(v15 & 1);
  }

  return v14;
}

char *sub_1000427C4(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100054094();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  a2[OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_didReceiveUninstallSignal] = 0;
  a2[OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_didReceiveInstallSignal] = 0;
  a2[OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_didPerformStartupTasks] = 0;
  v16 = &a2[OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_delegate];
  *v16 = a1;
  v16[1] = a4;
  v17 = type metadata accessor for ApplicationWorkspaceObserver();
  v36.receiver = a2;
  v36.super_class = v17;
  swift_unknownObjectRetain();
  v18 = objc_msgSendSuper2(&v36, "init");
  v19 = sub_1000407E8();
  v20 = (*(a4 + 16))(a3, a4);
  swift_unknownObjectRelease();
  v21 = sub_1000338D8();
  v22 = *(v9 + 16);
  if ((v20 & 1) != 0 || (v19 & 1) == 0)
  {
    v22(v15, v21, v8);
    v26 = sub_100054074();
    v27 = sub_100054254();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Deferring until after first unlock", v28, 2u);
    }

    (*(v9 + 8))(v15, v8);
    v29 = [objc_opt_self() sharedInstance];
    [v29 addListener:v18];

    if (v19)
    {
    }

    else
    {
      v30 = *&v18[OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_delegate];
      v31 = *&v18[OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_delegate + 8];
      ObjectType = swift_getObjectType();
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = *(v31 + 56);

      v34(sub_100042BA8, v33, ObjectType, v31);
    }
  }

  else
  {
    v22(v13, v21, v8);
    v23 = sub_100054074();
    v24 = sub_100054254();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "We don't have to wait for any startup tasks - performing launch tasks now", v25, 2u);
    }

    (*(v9 + 8))(v13, v8);
    sub_100040BCC(v19 & 1);
  }

  return v18;
}

uint64_t sub_100042BB0()
{
  v1 = sub_100054094();
  v0[21] = v1;
  v2 = *(v1 - 8);
  v0[22] = v2;
  v3 = *(v2 + 64) + 15;
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  v4 = sub_100053DF4();
  v0[28] = v4;
  v5 = *(v4 - 8);
  v0[29] = v5;
  v6 = *(v5 + 64) + 15;
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();

  return _swift_task_switch(sub_100042D3C, 0, 0);
}

uint64_t sub_100042D3C()
{
  v1 = v0[32];
  v0[33] = [objc_opt_self() defaultManager];
  v2 = IMCachesDirectoryURL();
  sub_100053DC4();

  sub_100040160();
  v3 = *(v0[29] + 8);
  v3(v0[32], v0[28]);
  v0[34] = 0;
  v0[35] = v3;
  v0[36] = objc_opt_self();
  sub_100054214();
  v0[37] = sub_100054204();
  v5 = sub_1000541E4();

  return _swift_task_switch(sub_100042FDC, v5, v4);
}

uint64_t sub_100042FDC()
{
  v2 = v0[36];
  v1 = v0[37];

  v0[38] = [v2 allServiceSessions];

  return _swift_task_switch(sub_10004308C, 0, 0);
}

uint64_t sub_10004308C()
{
  v1 = v0[38];
  sub_10003AA94(0, &qword_10008AF30, IMDServiceSession_ptr);
  v2 = sub_1000541B4();
  v0[39] = v2;

  if (v2 >> 62)
  {
    v3 = sub_1000543B4();
    v0[40] = v3;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[40] = v3;
    if (v3)
    {
LABEL_3:
      if (v3 < 1)
      {
        __break(1u);
      }

      v0[41] = 0;
      v4 = v0[39];
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = sub_100054344();
      }

      else
      {
        v5 = *(v4 + 32);
      }

      v6 = v5;
      v0[42] = v5;
      v7 = v0[27];
      v8 = v0[21];
      v9 = v0[22];
      v10 = sub_1000338D8();
      (*(v9 + 16))(v7, v10, v8);
      v11 = v6;
      v12 = sub_100054074();
      v13 = sub_100054264();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        *(v14 + 4) = v11;
        *v15 = v11;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v12, v13, "Requesting %@ to delete data", v14, 0xCu);
        sub_100036BF0(v15, &unk_10008ACF0, &unk_10005EC10);
      }

      v17 = v0[27];
      v18 = v0[21];
      v19 = v0[22];

      (*(v19 + 8))(v17, v18);
      v0[2] = v0;
      v0[3] = sub_100043430;
      v20 = swift_continuation_init();
      v0[17] = sub_1000334C8(&qword_10008AF38, qword_10005EC40);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_100040580;
      v0[13] = &unk_100082A48;
      v0[14] = v20;
      [v11 deleteAllDataWithCompletionHandler:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }
  }

  sub_100054054();
  v21 = async function pointer to static SyncCoordinator.clearSyncStoreWhenSafe()[1];
  v22 = swift_task_alloc();
  v0[43] = v22;
  *v22 = v0;
  v22[1] = sub_10004388C;

  return static SyncCoordinator.clearSyncStoreWhenSafe()();
}

uint64_t sub_100043430()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10004353C, 0, 0);
}

uint64_t sub_10004353C()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 320);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 312);

    sub_100054054();
    v4 = async function pointer to static SyncCoordinator.clearSyncStoreWhenSafe()[1];
    v5 = swift_task_alloc();
    *(v0 + 344) = v5;
    *v5 = v0;
    v5[1] = sub_10004388C;

    return static SyncCoordinator.clearSyncStoreWhenSafe()();
  }

  else
  {
    v6 = *(v0 + 328) + 1;
    *(v0 + 328) = v6;
    v7 = *(v0 + 312);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = sub_100054344();
    }

    else
    {
      v8 = *(v7 + 8 * v6 + 32);
    }

    v9 = v8;
    *(v0 + 336) = v8;
    v10 = *(v0 + 216);
    v11 = *(v0 + 168);
    v12 = *(v0 + 176);
    v13 = sub_1000338D8();
    (*(v12 + 16))(v10, v13, v11);
    v14 = v9;
    v15 = sub_100054074();
    v16 = sub_100054264();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "Requesting %@ to delete data", v17, 0xCu);
      sub_100036BF0(v18, &unk_10008ACF0, &unk_10005EC10);
    }

    v20 = *(v0 + 216);
    v21 = *(v0 + 168);
    v22 = *(v0 + 176);

    (*(v22 + 8))(v20, v21);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100043430;
    v23 = swift_continuation_init();
    *(v0 + 136) = sub_1000334C8(&qword_10008AF38, qword_10005EC40);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100040580;
    *(v0 + 104) = &unk_100082A48;
    *(v0 + 112) = v23;
    [v14 deleteAllDataWithCompletionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_10004388C()
{
  v1 = *(*v0 + 344);
  v3 = *v0;

  return _swift_task_switch(sub_1000439B4, 0, 0);
}

uint64_t sub_1000439B4()
{
  v90 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  [objc_msgSend(objc_opt_self() "synchronousDatabase")];
  swift_unknownObjectRelease();
  v6 = IMSMSDirectoryURL();
  sub_100053DC4();

  sub_100053DB4(v7);
  v9 = v8;
  v1(v3, v4);
  *(v0 + 160) = 0;
  v10 = [v2 contentsOfDirectoryAtURL:v9 includingPropertiesForKeys:0 options:0 error:v0 + 160];

  v11 = *(v0 + 160);
  if (v10)
  {
    v12 = *(v0 + 224);
    v13 = sub_1000541B4();
    v14 = v11;

    v15 = *(v13 + 16);
    if (v15)
    {
      v16 = v0 + 144;
      v17 = *(v0 + 232);
      v18 = *(v0 + 176);
      v19 = *(v17 + 16);
      v17 += 16;
      v88 = v19;
      v20 = v13 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
      v87 = *(v17 + 56);
      v76 = (v18 + 8);
      v77 = (v18 + 16);
      v21 = *(v0 + 272);
      v19(*(v0 + 240), v20, *(v0 + 224));
      while (1)
      {
        v22 = sub_100053DE4();
        v24 = v23;
        *(v0 + 144) = v22;
        *(v0 + 152) = v23;
        v25 = swift_task_alloc();
        *(v25 + 16) = v16;
        v26 = sub_1000422FC(sub_1000441E8, v25, &_swiftEmptyArrayStorage);

        if (v26)
        {
          (*(v0 + 280))(*(v0 + 240), *(v0 + 224));
        }

        else
        {
          v27 = *(v0 + 264);
          sub_100040160();
          v28 = *(v0 + 168);
          if (v21)
          {
            v29 = *(v0 + 184);
            v30 = sub_1000338D8();
            (*v77)(v29, v30, v28);

            swift_errorRetain();
            v31 = sub_100054074();
            v32 = sub_100054264();

            log = v31;
            v33 = os_log_type_enabled(v31, v32);
            v34 = *(v0 + 280);
            v83 = *(v0 + 224);
            v85 = *(v0 + 240);
            v35 = *(v0 + 168);
            v78 = v35;
            v79 = *(v0 + 184);
            if (v33)
            {
              v36 = swift_slowAlloc();
              v75 = v34;
              v37 = swift_slowAlloc();
              v38 = swift_slowAlloc();
              v89[0] = v38;
              *v36 = 136315394;
              v39 = sub_100002F9C(v22, v24, v89);

              *(v36 + 4) = v39;
              *(v36 + 12) = 2112;
              swift_errorRetain();
              v40 = _swift_stdlib_bridgeErrorToNSError();
              *(v36 + 14) = v40;
              *v37 = v40;
              _os_log_impl(&_mh_execute_header, log, v32, "Error deleting file at %s: %@", v36, 0x16u);
              sub_100036BF0(v37, &unk_10008ACF0, &unk_10005EC10);

              sub_1000031D0(v38);
              v16 = v0 + 144;

              (*v76)(v79, v78);
              v75(v85, v83);
            }

            else
            {

              (*v76)(v79, v78);
              v34(v85, v83);
            }

            v21 = 0;
          }

          else
          {
            v41 = *(v0 + 208);
            v42 = sub_1000338D8();
            (*v77)(v41, v42, v28);

            v43 = sub_100054074();
            v44 = sub_100054254();

            v45 = os_log_type_enabled(v43, v44);
            v46 = *(v0 + 280);
            v47 = *(v0 + 240);
            v48 = *(v0 + 208);
            v49 = *(v0 + 168);
            v84 = v49;
            v86 = *(v0 + 224);
            if (v45)
            {
              loga = *(v0 + 280);
              v50 = swift_slowAlloc();
              v80 = v47;
              v51 = swift_slowAlloc();
              v89[0] = v51;
              *v50 = 136315138;
              v52 = sub_100002F9C(v22, v24, v89);

              *(v50 + 4) = v52;
              _os_log_impl(&_mh_execute_header, v43, v44, "Deleted file: %s", v50, 0xCu);
              sub_1000031D0(v51);

              (*v76)(v48, v84);
              (loga)(v80, v86);
            }

            else
            {

              (*v76)(v48, v84);
              v46(v47, v86);
            }

            v21 = 0;
            v16 = v0 + 144;
          }
        }

        v20 += v87;
        if (!--v15)
        {
          break;
        }

        v88(*(v0 + 240), v20, *(v0 + 224));
      }
    }

    else
    {
    }
  }

  else
  {
    v53 = *(v0 + 192);
    v54 = *(v0 + 168);
    v55 = *(v0 + 176);
    v56 = v11;
    sub_100053DA4();

    swift_willThrow();
    v57 = sub_1000338D8();
    (*(v55 + 16))(v53, v57, v54);
    swift_errorRetain();
    v58 = sub_100054074();
    v59 = sub_100054264();

    v60 = os_log_type_enabled(v58, v59);
    v61 = *(v0 + 264);
    if (v60)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138412290;
      swift_errorRetain();
      v64 = _swift_stdlib_bridgeErrorToNSError();
      *(v62 + 4) = v64;
      *v63 = v64;
      _os_log_impl(&_mh_execute_header, v58, v59, "Failed to fetch contents of directory with error: %@", v62, 0xCu);
      sub_100036BF0(v63, &unk_10008ACF0, &unk_10005EC10);
    }

    else
    {
    }

    (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));
  }

  v66 = *(v0 + 248);
  v65 = *(v0 + 256);
  v67 = *(v0 + 240);
  v69 = *(v0 + 208);
  v68 = *(v0 + 216);
  v71 = *(v0 + 192);
  v70 = *(v0 + 200);
  v72 = *(v0 + 184);

  v73 = *(v0 + 8);

  return v73();
}

uint64_t sub_1000441E8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100054424() & 1;
  }
}

uint64_t sub_10004425C()
{
  v0 = sub_100054094();
  sub_10003398C(v0, qword_10008C1E8);
  sub_100002F64(v0, qword_10008C1E8);
  sub_100054064();
  return sub_100054084();
}

uint64_t sub_1000442CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  sub_100054214();
  v6[21] = sub_100054204();
  v8 = sub_1000541E4();
  v6[22] = v8;
  v6[23] = v7;

  return _swift_task_switch(sub_100044368, v8, v7);
}

uint64_t sub_100044368()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_10004447C;
  v2 = swift_continuation_init();
  v0[17] = sub_1000334C8(&qword_10008AF20, &qword_10005EC30);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10003FC2C;
  v0[13] = &unk_100082B38;
  v0[14] = v2;
  [v1 runWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10004447C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 192) = v3;
  v4 = *(v1 + 184);
  v5 = *(v1 + 176);
  if (v3)
  {
    v6 = sub_10004461C;
  }

  else
  {
    v6 = sub_1000445AC;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1000445AC()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  v3(0);
  v4 = v0[1];

  return v4();
}

uint64_t sub_10004461C()
{
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];

  swift_willThrow();
  swift_errorRetain();
  v4(v1);

  v5 = v0[1];

  return v5();
}

void sub_100044790(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_100053D94();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

Swift::Void __swiftcall IMDaemonAutomationRequestHandler.updateOffGridSummaryOnChat(withGUID:pendingMessageCount:)(Swift::String withGUID, Swift::Int pendingMessageCount)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = sub_100054154();
  v5 = [v3 existingChatWithGUID:v4];

  if (v5)
  {
    [v5 updatePendingIncomingSatelliteMessageCount:pendingMessageCount];
  }
}

void IMDaemonAutomationRequestHandler.relayMessageGUID(_:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = objc_opt_self();
  v5 = [v4 sharedInstance];
  v6 = sub_100054154();
  v15 = [v5 messageWithGUID:v6];

  if (!v15)
  {
    a3();
    return;
  }

  v7 = [v4 sharedInstance];
  v8 = sub_100054154();
  v9 = [v7 existingChatForMessageGUID:v8];

  if (v9)
  {
    v10 = [objc_opt_self() sharedInstance];
    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = v10;
    v12 = v15;
    v15 = v9;
    v13 = [v12 service];
    v14 = [v11 relayMessageToPeers:v12 forChat:v15 serviceName:v13 reflectOnly:1 requiredCapabilities:0];

    (a3)(v14);
  }

  else
  {
    (a3)(0);
  }
}

Swift::Void __swiftcall IMDaemonAutomationRequestHandler.relayMessageGUIDSent(_:onService:interworked:)(Swift::String _, Swift::String onService, Swift::Bool interworked)
{
  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    v6 = sub_100054154();
    v7 = sub_100054154();
    [v5 messageSent:v6 onService:v7 compatibilityService:0 wasInterworked:interworked];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall IMDaemonAutomationRequestHandler.simulateAppDeletion()()
{
  v0 = type metadata accessor for ApplicationWorkspaceObserver();
  v1 = (*(v0 + 112))();
  (*((swift_isaMask & *v1) + 0xE0))();
}

Swift::Void __swiftcall IMDaemonAutomationRequestHandler.simulateAppInstallation()()
{
  v0 = type metadata accessor for ApplicationWorkspaceObserver();
  v1 = (*(v0 + 112))();
  (*((swift_isaMask & *v1) + 0xD8))();
}

uint64_t IMDaemonAutomationRequestHandler.resetTranscriptBackgroundForAllChats(completion:)(void (*a1)(uint64_t))
{
  v2 = swift_allocObject();
  *(v2 + 16) = &_swiftEmptyArrayStorage;
  v3 = [objc_opt_self() sharedInstance];
  v8[4] = sub_1000460EC;
  v8[5] = v2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100045660;
  v8[3] = &unk_100082A98;
  v4 = _Block_copy(v8);

  [v3 enumerateBatchedChatsFilteredUsingPredicate:0 block:v4];
  _Block_release(v4);

  swift_beginAccess();
  v5 = *(v2 + 16);

  a1(v6);
}

id sub_1000453FC(void *a1, uint64_t a2)
{
  result = [a1 transcriptBackgroundProperties];
  if (result)
  {

    result = [a1 guid];
    if (result)
    {
      v5 = result;
      v6 = sub_100054164();
      v8 = v7;

      swift_beginAccess();
      v9 = *(a2 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 16) = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_100045740(0, *(v9 + 2) + 1, 1, v9);
        *(a2 + 16) = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_100045740((v11 > 1), v12 + 1, 1, v9);
      }

      *(v9 + 2) = v12 + 1;
      v13 = &v9[16 * v12];
      *(v13 + 4) = v6;
      *(v13 + 5) = v8;
      *(a2 + 16) = v9;
      swift_endAccess();
      if (qword_10008C1E0 != -1)
      {
        swift_once();
      }

      v14 = sub_100054094();
      sub_100002F64(v14, qword_10008C1E8);

      v15 = sub_100054074();
      v16 = sub_100054254();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v20 = v18;
        *v17 = 136315138;
        v19 = sub_100002F9C(v6, v8, &v20);

        *(v17 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v15, v16, "Resetting transcript background properties on chat: %s", v17, 0xCu);
        sub_1000031D0(v18);
      }

      else
      {
      }

      return [a1 updateTranscriptBackgroundProperties:0];
    }
  }

  return result;
}

void sub_100045660(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

char *sub_100045740(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000334C8(&qword_10008B078, &unk_10005ED58);
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
    v10 = &_swiftEmptyArrayStorage;
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

void _sSo32IMDaemonAutomationRequestHandlerC7imagentE16simulateMessages_13configuration10completionySaySo18IMSimulatedMessageCG_So0jK13ConfigurationCSgys5Error_pSgctF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000334C8(&unk_10008AD00, &qword_10005E910);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = objc_allocWithZone(IMDBatchMessageSimulator);
  sub_10004626C();
  isa = sub_1000541A4().super.isa;
  v13 = [v11 initWithMessages:isa configuration:a2];

  v14 = sub_100054244();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  sub_100054214();
  v15 = v13;

  v16 = sub_100054204();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  v17[5] = a3;
  v17[6] = a4;
  sub_1000363C0(0, 0, v10, &unk_10005ED70, v17);
}

void _sSo32IMDaemonAutomationRequestHandlerC7imagentE46simulateReceivedPendingSatelliteMessageForChat8withGUIDySS_tF_0()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_100054154();
  v5 = [v0 existingChatWithGUID:v1];

  if (v5)
  {
    v2 = [v5 pendingIncomingSatelliteMessageCount];
    v3 = v2 - 1;
    if (__OFSUB__(v2, 1))
    {
      __break(1u);
    }

    else
    {
      v4 = v3 & ~(v3 >> 63);
      [v5 updateIsDownloadingPendingSatelliteMessages:v3 > 0];
      [v5 updatePendingIncomingSatelliteMessageCount:v4];
    }
  }
}

void _sSo32IMDaemonAutomationRequestHandlerC7imagentE017simulateDowngradeC06fromID0H7Service02toJ014expirationDateySS_S2S10Foundation0M0VtF_0()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    v2 = sub_100054154();
    v10 = [v1 anySessionForServiceName:v2];

    if (v10)
    {
      v3 = v10;
      v4 = sub_100054154();
      isa = sub_100053E24().super.isa;
      v6 = sub_100054154();
      [v3 downgradeRequestedForHandleID:v4 expirationDate:isa preferredService:v6];
    }

    v7 = [objc_opt_self() sharedProvider];
    if (v7)
    {
      v8 = [v7 broadcasterForChatListeners];
      swift_unknownObjectRelease();
      v9 = sub_100054154();
      [v8 serviceSwitchRequestReceivedForChatWithIdentifier:v9];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100045C9C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = objc_opt_self();
  v5 = [v4 sharedInstance];
  v6 = sub_100054154();
  v16 = [v5 messageWithGUID:v6];

  if (v16)
  {
    v7 = [v4 sharedInstance];
    v8 = sub_100054154();
    v9 = [v7 existingChatForMessageGUID:v8];

    if (v9)
    {
      v10 = [objc_opt_self() sharedInstance];
      if (!v10)
      {
        _Block_release(a3);
        __break(1u);
        return;
      }

      v11 = v10;
      v12 = v16;
      v16 = v9;
      v13 = [v12 service];
      v14 = [v11 relayMessageToPeers:v12 forChat:v16 serviceName:v13 reflectOnly:1 requiredCapabilities:0];

      (a3)[2](a3, v14);
    }

    else
    {
      a3[2](a3, 0);
    }
  }

  else
  {
    v15 = a3[2];

    v15(a3, 0);
  }
}

void _sSo32IMDaemonAutomationRequestHandlerC7imagentE46simulateMessageDeliveryControllerDidFlushCache12forRemoteURI04fromO04guidySS_S2StF_0()
{
  v0 = [objc_opt_self() sharedAccountController];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 anySessionForServiceName:IMServiceNameiMessage];

    if (v2)
    {
      v3 = v2;
      v4 = sub_100054154();
      v5 = sub_100054154();
      oslog = sub_100054154();
      [v3 _automation_messageDeliveryControllerDidFlushCacheForRemoteURI:v4 fromURI:v5 guid:oslog];
    }

    else
    {
      if (qword_10008C1E0 != -1)
      {
        swift_once();
      }

      v6 = sub_100054094();
      sub_100002F64(v6, qword_10008C1E8);
      oslog = sub_100054074();
      v7 = sub_100054264();
      if (os_log_type_enabled(oslog, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v11 = v9;
        *v8 = 136315138;
        *(v8 + 4) = sub_100002F9C(0xD00000000000004ALL, 0x8000000100064D70, &v11);
        _os_log_impl(&_mh_execute_header, oslog, v7, "Could not find session for iMessage service in %s. Aborting simulation.", v8, 0xCu);
        sub_1000031D0(v9);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000460F4(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = &_swiftEmptyArrayStorage;
  v3 = [objc_opt_self() sharedInstance];
  v7[4] = sub_100046388;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100045660;
  v7[3] = &unk_100082AC0;
  v4 = _Block_copy(v7);

  [v3 enumerateBatchedChatsFilteredUsingPredicate:0 block:v4];
  _Block_release(v4);

  swift_beginAccess();
  v5 = *(v2 + 16);

  isa = sub_1000541A4().super.isa;
  (*(a1 + 16))(a1, isa);
}

unint64_t sub_10004626C()
{
  result = qword_10008B070;
  if (!qword_10008B070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10008B070);
  }

  return result;
}

uint64_t sub_1000462C0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000333B0;

  return sub_1000442CC(v5, v6, v7, v2, v3, v4);
}

uint64_t IMDaemonChatRequestHandler.loadChats(withPinningIdentifier:reply:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = objc_opt_self();
  v5 = [v4 sharedInstance];
  v6 = sub_100054154();
  isa = [v5 existingChatsWithPinningIdentifier:v6];

  if (!isa)
  {
    sub_10003AA94(0, &qword_10008B0E0, IMDChat_ptr);
    sub_1000541B4();
    isa = sub_1000541A4().super.isa;
  }

  v8 = [v4 sharedInstance];
  v9 = [v8 _chatInfoForChats:isa];

  sub_1000334C8(&qword_10008B0E8, &qword_10005EE00);
  v10 = sub_1000541B4();

  a3(v10);
}

uint64_t IMDaemonChatRequestHandler.loadAnyChatsContainingHandleIDs(in:reply:)(void *a1, void (*a2)(uint64_t))
{
  isUniquelyReferenced_nonNull_native = sub_10004729C(&_swiftEmptyArrayStorage);
  v4 = [objc_opt_self() sharedAccountController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 accounts];

    if (!v6)
    {
      goto LABEL_47;
    }

    sub_10003AA94(0, &qword_10008B0F0, IMDAccount_ptr);
    v7 = sub_1000541B4();

    v8 = a1[2];
    if (v8)
    {
      if (v7 >> 62)
      {
        goto LABEL_43;
      }

      v46 = v7 & 0xFFFFFFFFFFFFFF8;
      v51 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
      v9 = 0;
      v43 = v8;
      v44 = a1 + 4;
      v47 = v7;
      v48 = v7 & 0xC000000000000001;
      while (1)
      {
        if (v9 == v8)
        {
          goto LABEL_42;
        }

        if (v51)
        {
          break;
        }

LABEL_8:
        v9 = (v9 + 1);
        if (v9 == v8)
        {
          goto LABEL_33;
        }
      }

      v45 = v9;
      v10 = &v44[2 * v9];
      a1 = v10[1];
      v50 = *v10;
      v49 = objc_opt_self();

      v11 = 0;
      while (1)
      {
        if (v48)
        {
          v12 = sub_100054344();
        }

        else
        {
          if (v11 >= *(v46 + 16))
          {
            goto LABEL_40;
          }

          v12 = *(v7 + 8 * v11 + 32);
        }

        a1 = v12;
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          v46 = v7 & 0xFFFFFFFFFFFFFF8;
          v51 = sub_1000543B4();
          goto LABEL_6;
        }

        v14 = [v49 sharedInstance];
        v15 = sub_100054154();
        v8 = [v14 existingChatForID:v15 account:a1];

        if (v8)
        {
          break;
        }

LABEL_13:
        ++v11;
        if (v13 == v51)
        {

          v8 = v43;
          v9 = v45;
          goto LABEL_8;
        }
      }

      v16 = [v8 guid];
      if (!v16)
      {
        goto LABEL_45;
      }

      v17 = v16;
      v7 = sub_100054164();
      v19 = v18;

      v20 = v8;
      v8 = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v8;
      v22 = sub_10003DD70(v7, v19);
      v23 = v8[2];
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        goto LABEL_39;
      }

      v26 = v21;
      if (v8[3] < v25)
      {
        sub_100046B24(v25, isUniquelyReferenced_nonNull_native);
        v8 = v52;
        v27 = sub_10003DD70(v7, v19);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_48;
        }

        v22 = v27;
        if ((v26 & 1) == 0)
        {
          goto LABEL_30;
        }

LABEL_28:

        isUniquelyReferenced_nonNull_native = v52;
        v29 = v52[7];
        v8 = *(v29 + 8 * v22);
        *(v29 + 8 * v22) = v20;

LABEL_32:
        v7 = v47;
        goto LABEL_13;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if (v21)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v8 = &v52;
        sub_100046DC8();
        if (v26)
        {
          goto LABEL_28;
        }
      }

LABEL_30:
      isUniquelyReferenced_nonNull_native = v52;
      v52[(v22 >> 6) + 8] |= 1 << v22;
      v30 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v22);
      *v30 = v7;
      v30[1] = v19;
      *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v22) = v20;

      v31 = *(isUniquelyReferenced_nonNull_native + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_41;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v33;
      goto LABEL_32;
    }

LABEL_33:

    v34 = [objc_opt_self() sharedInstance];
    v35 = *(isUniquelyReferenced_nonNull_native + 16);
    if (!v35 || (v36 = sub_100047088(*(isUniquelyReferenced_nonNull_native + 16), 0), v37 = sub_100046F34(&v52, v36 + 4, v35, isUniquelyReferenced_nonNull_native), , sub_1000473A0(), v37 == v35))
    {
      sub_10003AA94(0, &qword_10008B0E0, IMDChat_ptr);
      isa = sub_1000541A4().super.isa;

      v39 = [v34 _chatInfoForChats:isa];

      sub_1000334C8(&qword_10008B0E8, &qword_10005EE00);
      v40 = sub_1000541B4();

      a2(v40);
    }

    __break(1u);
LABEL_45:
    __break(1u);
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_100054454();
  __break(1u);
  return result;
}

uint64_t sub_100046B24(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000334C8(&qword_10008B0F8, &qword_10005EE08);
  v39 = a2;
  result = sub_1000543D4();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_100054474();
      sub_100054184();
      result = sub_100054484();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

id sub_100046DC8()
{
  v1 = v0;
  sub_1000334C8(&qword_10008B0F8, &qword_10005EE08);
  v2 = *v0;
  v3 = sub_1000543C4();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_100046F34(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_100047088(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000334C8(&qword_10008B100, qword_10005F3D0);
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

void sub_100047110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  v5 = [v4 sharedInstance];
  v6 = sub_100054154();
  isa = [v5 existingChatsWithPinningIdentifier:v6];

  if (!isa)
  {
    sub_10003AA94(0, &qword_10008B0E0, IMDChat_ptr);
    sub_1000541B4();
    isa = sub_1000541A4().super.isa;
  }

  v8 = [v4 sharedInstance];
  v9 = [v8 _chatInfoForChats:isa];

  sub_1000334C8(&qword_10008B0E8, &qword_10005EE00);
  sub_1000541B4();

  v10 = sub_1000541A4().super.isa;
  (*(a3 + 16))(a3, v10);
}

unint64_t sub_10004729C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000334C8(&qword_10008B0F8, &qword_10005EE08);
    v3 = sub_1000543E4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10003DD70(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_1000473A8(unint64_t a1, void (**a2)(void, void))
{
  v3 = sub_10004729C(&_swiftEmptyArrayStorage);
  v4 = [objc_opt_self() sharedAccountController];
  if (!v4)
  {
LABEL_46:
    _Block_release(a2);
    __break(1u);
LABEL_47:
    _Block_release(a2);
    __break(1u);
LABEL_48:
    _Block_release(a2);
    sub_100054454();
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v4 accounts];

  if (!v6)
  {
    goto LABEL_47;
  }

  sub_10003AA94(0, &qword_10008B0F0, IMDAccount_ptr);
  isUniquelyReferenced_nonNull_native = sub_1000541B4();

  v8 = *(a1 + 16);
  if (v8)
  {
    if (isUniquelyReferenced_nonNull_native >> 62)
    {
      goto LABEL_44;
    }

    v44 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    for (i = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000543B4())
    {
      v9 = 0;
      v41 = v8;
      v42 = a1 + 32;
      v45 = isUniquelyReferenced_nonNull_native;
      v46 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      while (v9 != v8)
      {
        if (i)
        {
          v43 = v9;
          v10 = (v42 + 16 * v9);
          v8 = v10[1];
          v48 = *v10;
          v47 = objc_opt_self();

          v11 = 0;
          while (1)
          {
            if (v46)
            {
              v12 = sub_100054344();
            }

            else
            {
              if (v11 >= *(v44 + 16))
              {
                goto LABEL_41;
              }

              v12 = *(isUniquelyReferenced_nonNull_native + 8 * v11 + 32);
            }

            v13 = v12;
            a1 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              __break(1u);
LABEL_40:
              __break(1u);
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
              goto LABEL_43;
            }

            v8 = [v47 sharedInstance];
            v14 = sub_100054154();
            v15 = [v8 existingChatForID:v14 account:v13];

            if (v15)
            {
              break;
            }

LABEL_13:
            ++v11;
            if (a1 == i)
            {

              v8 = v41;
              v9 = v43;
              goto LABEL_8;
            }
          }

          v16 = [v15 guid];
          if (!v16)
          {
            _Block_release(a2);
            __break(1u);
            goto LABEL_46;
          }

          v17 = v16;
          v18 = sub_100054164();
          v8 = v19;

          v20 = v15;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v51 = v3;
          v22 = sub_10003DD70(v18, v8);
          v23 = v3[2];
          v24 = (v21 & 1) == 0;
          v25 = v23 + v24;
          if (__OFADD__(v23, v24))
          {
            goto LABEL_40;
          }

          v26 = v21;
          if (v3[3] >= v25)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v21 & 1) == 0)
              {
                goto LABEL_30;
              }
            }

            else
            {
              sub_100046DC8();
              if ((v26 & 1) == 0)
              {
                goto LABEL_30;
              }
            }
          }

          else
          {
            sub_100046B24(v25, isUniquelyReferenced_nonNull_native);
            v27 = sub_10003DD70(v18, v8);
            if ((v26 & 1) != (v28 & 1))
            {
              goto LABEL_48;
            }

            v22 = v27;
            if ((v26 & 1) == 0)
            {
LABEL_30:
              v3 = v51;
              v51[(v22 >> 6) + 8] |= 1 << v22;
              v30 = (v3[6] + 16 * v22);
              *v30 = v18;
              v30[1] = v8;
              *(v3[7] + 8 * v22) = v20;

              v31 = v3[2];
              v32 = __OFADD__(v31, 1);
              v33 = v31 + 1;
              if (v32)
              {
                goto LABEL_42;
              }

              v3[2] = v33;
              goto LABEL_32;
            }
          }

          v3 = v51;
          v29 = v51[7];
          v8 = *(v29 + 8 * v22);
          *(v29 + 8 * v22) = v20;

LABEL_32:
          isUniquelyReferenced_nonNull_native = v45;
          goto LABEL_13;
        }

LABEL_8:
        v9 = v9 + 1;
        if (v9 == v8)
        {
          goto LABEL_33;
        }
      }

LABEL_43:
      __break(1u);
LABEL_44:
      v44 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    }
  }

LABEL_33:

  v34 = [objc_opt_self() sharedInstance];
  v35 = v3[2];
  if (v35)
  {
    v36 = sub_100047088(v3[2], 0);
    v37 = sub_100046F34(&v51, v36 + 4, v35, v3);

    sub_1000473A0();
    if (v37 != v35)
    {
      __break(1u);
    }
  }

  sub_10003AA94(0, &qword_10008B0E0, IMDChat_ptr);
  isa = sub_1000541A4().super.isa;

  v39 = [v34 _chatInfoForChats:isa];

  sub_1000334C8(&qword_10008B0E8, &qword_10005EE00);
  sub_1000541B4();

  v50 = sub_1000541A4().super.isa;
  (a2)[2](a2, v50);
}

void IMDaemonAccountsRequestHandler.calculateReachability(with:responseHandler:)(void *a1, void *a2)
{
  v78 = a2;
  v4 = sub_100054094();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = [v9 sharedAccountController];
  if (!v10)
  {
    goto LABEL_33;
  }

  v11 = v10;
  v12 = [a1 accountID];
  if (!v12)
  {
    sub_100054164();
    v12 = sub_100054154();
  }

  v13 = [v11 accountForAccountID:v12];

  if (v13)
  {
    v14 = [v13 session];

    if (v14)
    {
      goto LABEL_10;
    }
  }

  v15 = [v9 sharedAccountController];
  if (!v15)
  {
    goto LABEL_34;
  }

  v16 = v15;
  v17 = [a1 serviceName];
  if (!v17)
  {
    sub_100054164();
    v17 = sub_100054154();
  }

  v14 = [v16 anySessionForServiceName:v17];

  if (v14)
  {
LABEL_10:
    v18 = v5;
    v19 = sub_100002F40();
    (*(v5 + 16))(v8, v19, v4);
    v20 = a1;
    v21 = v2;
    v22 = sub_100054074();
    v23 = sub_100054254();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v77 = v8;
      v25 = v24;
      v75 = swift_slowAlloc();
      v79 = v75;
      *v25 = 136315650;
      v26 = [v20 requestID];
      v27 = sub_100054164();
      v76 = v4;
      v29 = v28;

      v30 = sub_100002F9C(v27, v29, &v79);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      v31 = [v20 serviceName];
      v32 = sub_100054164();
      v34 = v33;

      v35 = sub_100002F9C(v32, v34, &v79);

      *(v25 + 14) = v35;
      *(v25 + 22) = 2080;
      sub_10003AA94(0, &qword_10008AAC8, off_100080B08);
      sub_1000485E8();
      ClientRequestHandling<>.client.getter();
      v36 = sub_100053E84();
      v38 = v37;

      v39 = sub_100002F9C(v36, v38, &v79);
      v40 = v78;

      *(v25 + 24) = v39;
      _os_log_impl(&_mh_execute_header, v22, v23, "Initiating reachability query for %s on service %s for %s", v25, 0x20u);
      swift_arrayDestroy();

      (*(v18 + 8))(v77, v76);
    }

    else
    {

      (*(v18 + 8))(v8, v4);
      v40 = v78;
    }

    [v14 calculateReachabilityWithRequest:v20 responseHandler:v40];

    return;
  }

  v41 = [a1 handleIDs];
  v42 = sub_1000541B4();

  v76 = a1;
  v43 = [a1 serviceName];
  sub_100054164();

  v44 = sub_1000484E4(&_swiftEmptyArrayStorage);
  v45 = *(v42 + 16);
  v75 = v42;
  if (!v45)
  {
LABEL_28:
    v69 = objc_allocWithZone(IMServiceReachabilityResult);
    v70 = sub_100054154();
    sub_10003AA94(0, &qword_10008B168, IMServiceReachabilityHandleResult_ptr);
    isa = sub_100054114().super.isa;

    LOBYTE(v73) = 0;
    v77 = [v69 initWithService:v70 error:2 handleResults:isa isFinal:0 allAreReachable:0 allSupportEncryption:0 didCheckServer:v73];

    [v78 reachabilityRequest:v76 updatedWithResult:v77];
    v72 = v77;

    return;
  }

  v46 = (v42 + 40);
  while (1)
  {
    v49 = *(v46 - 1);
    v50 = *v46;
    v51 = objc_allocWithZone(IMServiceReachabilityHandleResult);

    v52 = sub_100054154();
    v53 = sub_100054154();
    v54 = [v51 initWithHandleID:v52 service:v53 isReachable:0 supportsEncryption:0];

    v55 = v54;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v44;
    v57 = sub_10003DD70(v49, v50);
    v59 = v44[2];
    v60 = (v58 & 1) == 0;
    v61 = __OFADD__(v59, v60);
    v62 = v59 + v60;
    if (v61)
    {
      break;
    }

    v63 = v58;
    if (v44[3] < v62)
    {
      sub_1000480D4(v62, isUniquelyReferenced_nonNull_native);
      v44 = v79;
      v57 = sub_10003DD70(v49, v50);
      if ((v63 & 1) != (v64 & 1))
      {
        goto LABEL_35;
      }

LABEL_23:
      if (v63)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v68 = v57;
    sub_100048378();
    v57 = v68;
    v44 = v79;
    if (v63)
    {
LABEL_16:
      v47 = v44[7];
      v48 = *(v47 + 8 * v57);
      *(v47 + 8 * v57) = v55;

      goto LABEL_17;
    }

LABEL_24:
    v44[(v57 >> 6) + 8] |= 1 << v57;
    v65 = (v44[6] + 16 * v57);
    *v65 = v49;
    v65[1] = v50;
    *(v44[7] + 8 * v57) = v55;

    v66 = v44[2];
    v61 = __OFADD__(v66, 1);
    v67 = v66 + 1;
    if (v61)
    {
      goto LABEL_32;
    }

    v44[2] = v67;
LABEL_17:
    v46 += 2;
    if (!--v45)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  sub_100054454();
  __break(1u);
}

uint64_t sub_1000480D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000334C8(&qword_10008B170, qword_10005EEA0);
  v39 = a2;
  result = sub_1000543D4();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_100054474();
      sub_100054184();
      result = sub_100054484();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

id sub_100048378()
{
  v1 = v0;
  sub_1000334C8(&qword_10008B170, qword_10005EEA0);
  v2 = *v0;
  v3 = sub_1000543C4();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

unint64_t sub_1000484E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000334C8(&qword_10008B170, qword_10005EEA0);
    v3 = sub_1000543E4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10003DD70(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000485E8()
{
  result = qword_10008AAD0;
  if (!qword_10008AAD0)
  {
    sub_10003AA94(255, &qword_10008AAC8, off_100080B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008AAD0);
  }

  return result;
}

void _sSo26IMDaemonChatRequestHandlerC7imagentE012closeSessionB2ID_10identifier21didDeleteConversation5style7accountySS_SSSbSo11IMChatStyleVSStF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unint64_t a8)
{
  v29 = a5;
  v30 = a6;
  v10 = sub_100054094();
  v27 = *(v10 - 8);
  v28 = v10;
  v11 = *(v27 + 64);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() sharedInstance];
  if (v14)
  {
    v15 = v14;
    v16 = sub_100054154();
    v17 = [v15 sessionForAccount:v16];

    if (v17)
    {
      v18 = sub_100054154();
      v28 = sub_100054154();
      [v17 closeSessionChatID:v18 identifier:v28 didDeleteConversation:v29 & 1 style:v30];

      v19 = v28;
    }

    else
    {
      v20 = sub_100033728();
      v22 = v27;
      v21 = v28;
      (*(v27 + 16))(v13, v20, v28);

      v23 = sub_100054074();
      v24 = sub_100054264();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v31 = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_100002F9C(a7, a8, &v31);
        _os_log_impl(&_mh_execute_header, v23, v24, "No session for account: %s -- can't close session.", v25, 0xCu);
        sub_1000031D0(v26);
      }

      (*(v22 + 8))(v13, v21);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000489F8()
{
  type metadata accessor for BIALockdownModeHandler();
  result = swift_initStaticObject();
  qword_10008B7A8 = result;
  return result;
}

uint64_t *sub_100048A24()
{
  if (qword_10008C480 != -1)
  {
    swift_once();
  }

  return &qword_10008B7A8;
}

void sub_100048A74(void *a1, void *a2)
{
  v4 = sub_100054094();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v33 - v11;
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  v15 = sub_100002F40();
  v16 = v5[2];
  v35 = v15;
  v36 = v16;
  (v16)(v14);
  v17 = a1;
  v18 = sub_100054074();
  v19 = sub_100054274();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34 = a2;
    v21 = v20;
    *v20 = 67109632;
    v20[1] = [v17 success];
    *(v21 + 4) = 2048;
    *(v21 + 10) = [v17 state];
    *(v21 + 9) = 2048;
    *(v21 + 5) = [v17 error];

    _os_log_impl(&_mh_execute_header, v18, v19, "retrieveFeatureToggleState:for: returned result.success %{BOOL}d result.state %lu result.error %lu", v21, 0x1Cu);
    a2 = v34;
  }

  else
  {

    v18 = v17;
  }

  v22 = v5[1];
  v22(v14, v4);
  if ([v17 success])
  {
    if ([v17 state]== 1)
    {
      v36(v12, v35, v4);
      v23 = sub_100054074();
      v24 = sub_100054274();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "LockdownMode is enabled. Sending a message to IDS Server to disable BIA", v25, 2u);
      }

      v22(v12, v4);
      v26 = sub_100054154();
      v27 = [objc_opt_self() optionsWithFeatureID:v26 state:2];

      aBlock[4] = sub_100048F3C;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10004AEB8;
      aBlock[3] = &unk_100082CA0;
      v28 = _Block_copy(aBlock);
      [a2 updateFeatureToggleStateWithOptions:v27 completion:v28];
      _Block_release(v28);
    }

    else
    {
      v36(v9, v35, v4);
      v29 = sub_100054074();
      v30 = sub_100054274();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        aBlock[0] = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_100002F9C(0xD00000000000001CLL, 0x8000000100064E80, aBlock);
        _os_log_impl(&_mh_execute_header, v29, v30, "%s No action required.", v31, 0xCu);
        sub_1000031D0(v32);
      }

      v22(v9, v4);
    }
  }
}

void sub_100048F3C(void *a1)
{
  v2 = sub_100054094();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = sub_100002F40();
  v11 = v3[2];
  v11(v9, v10, v2);
  v12 = a1;
  v13 = sub_100054074();
  v14 = sub_100054274();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = v7;
    v16 = v15;
    *v15 = 67109376;
    v15[1] = [v12 success];
    *(v16 + 4) = 2048;
    *(v16 + 10) = [v12 error];

    _os_log_impl(&_mh_execute_header, v13, v14, "updateFeatureToggleState:with: LDM is enabled. returned result.success %{BOOL}d result.error %lu", v16, 0x12u);
    v7 = v26;
  }

  else
  {

    v13 = v12;
  }

  v17 = v3[1];
  v17(v9, v2);
  if ([v12 error])
  {
    v11(v7, v10, v2);
    v18 = v12;
    v19 = sub_100054074();
    v20 = sub_100054264();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = [v18 error];

      _os_log_impl(&_mh_execute_header, v19, v20, "Error when updateFeatureToggleState:with: LDM is enabled. Error code: %lu", v21, 0xCu);
    }

    else
    {

      v19 = v18;
    }

    v17(v7, v2);
  }

  else
  {
    v22 = [objc_opt_self() messagesAppDomain];
    if (v22)
    {
      v23 = v22;
      v24 = sub_100054154();
      [v23 setBool:1 forKey:v24];
    }
  }
}

void sub_100049270(void *a1, void *a2)
{
  v4 = sub_100054094();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v33 - v11;
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  v15 = sub_100002F40();
  v16 = v5[2];
  v35 = v15;
  v36 = v16;
  (v16)(v14);
  v17 = a1;
  v18 = sub_100054074();
  v19 = sub_100054274();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34 = a2;
    v21 = v20;
    *v20 = 67109632;
    v20[1] = [v17 success];
    *(v21 + 4) = 2048;
    *(v21 + 10) = [v17 state];
    *(v21 + 9) = 2048;
    *(v21 + 5) = [v17 error];

    _os_log_impl(&_mh_execute_header, v18, v19, "retrieveFeatureToggleState:for: returned result.success %{BOOL}d result.state %lu result.error %lu", v21, 0x1Cu);
    a2 = v34;
  }

  else
  {

    v18 = v17;
  }

  v22 = v5[1];
  v22(v14, v4);
  if ([v17 success])
  {
    if ([v17 state]== 2)
    {
      v36(v12, v35, v4);
      v23 = sub_100054074();
      v24 = sub_100054274();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "LockdownMode is disabled. Sending a message to IDS Server to enable BIA", v25, 2u);
      }

      v22(v12, v4);
      v26 = sub_100054154();
      v27 = [objc_opt_self() optionsWithFeatureID:v26 state:1];

      aBlock[4] = sub_100049738;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10004AEB8;
      aBlock[3] = &unk_100082CC8;
      v28 = _Block_copy(aBlock);
      [a2 updateFeatureToggleStateWithOptions:v27 completion:v28];
      _Block_release(v28);
    }

    else
    {
      v36(v9, v35, v4);
      v29 = sub_100054074();
      v30 = sub_100054274();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        aBlock[0] = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_100002F9C(0xD00000000000001CLL, 0x8000000100064E80, aBlock);
        _os_log_impl(&_mh_execute_header, v29, v30, "%s BIA is enabled. No action required.", v31, 0xCu);
        sub_1000031D0(v32);
      }

      v22(v9, v4);
    }
  }
}

void sub_100049738(void *a1)
{
  v2 = sub_100054094();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = sub_100002F40();
  v11 = v3[2];
  v11(v9, v10, v2);
  v12 = a1;
  v13 = sub_100054074();
  v14 = sub_100054274();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = v7;
    v16 = v15;
    *v15 = 67109376;
    v15[1] = [v12 success];
    *(v16 + 4) = 2048;
    *(v16 + 10) = [v12 error];

    _os_log_impl(&_mh_execute_header, v13, v14, "updateFeatureToggleState:with: when LDM disabled returned result.success %{BOOL}d result.error %lu", v16, 0x12u);
    v7 = v26;
  }

  else
  {

    v13 = v12;
  }

  v17 = v3[1];
  v17(v9, v2);
  if ([v12 error])
  {
    v11(v7, v10, v2);
    v18 = v12;
    v19 = sub_100054074();
    v20 = sub_100054264();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = [v18 error];

      _os_log_impl(&_mh_execute_header, v19, v20, "Error when updateFeatureToggleState:with: LDM is disabled. Error code: %lu", v21, 0xCu);
    }

    else
    {

      v19 = v18;
    }

    v17(v7, v2);
  }

  else
  {
    v22 = [objc_opt_self() messagesAppDomain];
    if (v22)
    {
      v23 = v22;
      v24 = sub_100054154();
      [v23 removeObjectForKey:v24];
    }
  }
}

uint64_t sub_100049A68()
{
  v0 = sub_1000540A4();
  v41 = *(v0 - 8);
  v42 = v0;
  v1 = *(v41 + 64);
  __chkstk_darwin(v0);
  v40 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000540D4();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  __chkstk_darwin(v3);
  v37 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000540B4();
  v6 = *(v36 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v36);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100054094();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002F40();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_100054074();
  v17 = sub_100054274();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_100002F9C(0xD000000000000024, 0x8000000100064E20, &aBlock);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_100002F9C(0xD00000000000001ALL, 0x8000000100064DE0, &aBlock);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s called for task %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  (*(v11 + 8))(v14, v10);
  v19 = [objc_opt_self() sharedScheduler];
  v20 = sub_100054154();
  v48 = sub_10004A750;
  v49 = v35[1];
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_10004AEB8;
  v47 = &unk_100082B60;
  v21 = _Block_copy(&aBlock);

  [v19 registerForTaskWithIdentifier:v20 usingQueue:0 launchHandler:v21];
  _Block_release(v21);

  v22 = objc_allocWithZone(BGNonRepeatingSystemTaskRequest);
  v23 = sub_100054154();
  v24 = [v22 initWithIdentifier:v23];

  v25 = v24;
  [v25 setRequiresNetworkConnectivity:1];
  [v25 setRequiresExternalPower:0];
  [v25 setScheduleAfter:60.0];
  [v25 setTrySchedulingBefore:600.0];
  [v25 setPriority:2];

  sub_10004A820();
  v26 = v36;
  (*(v6 + 104))(v9, enum case for DispatchQoS.QoSClass.background(_:), v36);
  v27 = sub_1000542B4();
  (*(v6 + 8))(v9, v26);
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  v48 = sub_10004A86C;
  v49 = v28;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_10003AAE0;
  v47 = &unk_100082BB0;
  v29 = _Block_copy(&aBlock);
  v30 = v25;
  v31 = v37;
  sub_1000540C4();
  v43 = &_swiftEmptyArrayStorage;
  sub_10003A990();
  sub_1000334C8(&qword_10008AA20, &unk_10005E860);
  sub_10003A9E8();
  v32 = v40;
  v33 = v42;
  sub_1000542F4();
  sub_1000542A4();
  _Block_release(v29);

  (*(v41 + 8))(v32, v33);
  (*(v38 + 8))(v31, v39);
}

uint64_t sub_10004A140()
{
  v0 = sub_100054094();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002F40();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_100054074();
  v7 = sub_100054274();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100002F9C(0xD00000000000001ALL, 0x8000000100064DE0, &v12);
    _os_log_impl(&_mh_execute_header, v6, v7, "The BG system task %s expired.", v8, 0xCu);
    sub_1000031D0(v9);
  }

  return (*(v1 + 8))(v4, v0);
}

void sub_10004A2F4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10004A35C(uint64_t a1)
{
  v2 = sub_100054094();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v27[-v8];
  v10 = [objc_opt_self() sharedScheduler];
  v28 = 0;
  v11 = [v10 submitTaskRequest:a1 error:&v28];

  if (v11)
  {
    v12 = v28;
    v13 = sub_100002F40();
    (*(v3 + 16))(v9, v13, v2);
    v14 = sub_100054074();
    v15 = sub_100054274();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_100002F9C(0xD00000000000001ALL, 0x8000000100064DE0, &v28);
      _os_log_impl(&_mh_execute_header, v14, v15, "Successfully submitted task %s", v16, 0xCu);
      sub_1000031D0(v17);
    }

    return (*(v3 + 8))(v9, v2);
  }

  else
  {
    v19 = v28;
    sub_100053DA4();

    swift_willThrow();
    v20 = sub_100002F40();
    (*(v3 + 16))(v7, v20, v2);
    swift_errorRetain();
    v21 = sub_100054074();
    v22 = sub_100054264();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v23 = 136315394;
      *(v23 + 4) = sub_100002F9C(0xD00000000000001ALL, 0x8000000100064DE0, &v28);
      *(v23 + 12) = 2112;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v26;
      *v24 = v26;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to submit task %s with error: %@", v23, 0x16u);
      sub_100036BF0(v24, &unk_10008ACF0, &unk_10005EC10);

      sub_1000031D0(v25);
    }

    else
    {
    }

    return (*(v3 + 8))(v7, v2);
  }
}

void sub_10004A750(void *a1)
{
  v4[4] = sub_10004A140;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1000356CC;
  v4[3] = &unk_100082BD8;
  v2 = _Block_copy(v4);
  [a1 setExpirationHandler:v2];
  _Block_release(v2);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  sub_10004A898(v3);
}

unint64_t sub_10004A820()
{
  result = qword_10008AA18;
  if (!qword_10008AA18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10008AA18);
  }

  return result;
}

void sub_10004A898(void *a1)
{
  v39 = a1;
  v1 = sub_100054094();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = __chkstk_darwin(v1);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v36 - v6;
  v8 = [objc_opt_self() deviceIsLockedDown];
  v9 = sub_100002F40();
  v37 = v2[2];
  v37(v7, v9, v1);
  v10 = sub_100054074();
  v11 = sub_100054274();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&aBlock = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_100002F9C(0xD00000000000001CLL, 0x8000000100064E80, &aBlock);
    *(v12 + 12) = 1024;
    *(v12 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s called with lockdownModeEnabled %{BOOL}d", v12, 0x12u);
    sub_1000031D0(v13);
  }

  v14 = v2[1];
  v14(v7, v1);
  v15 = IDSServiceNameiMessageForBusiness;
  sub_10004A820();
  v16 = v15;
  v17 = sub_100054294();
  v18 = [objc_allocWithZone(IDSFeatureToggler) initWithService:v16 queue:v17];

  v19 = sub_100054154();
  v20 = [objc_opt_self() optionsWithFeatureID:v19];

  if (v8)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    v42 = sub_10004AE80;
    v43 = v21;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v22 = &unk_100082C78;
LABEL_12:
    *&v41 = sub_10004AEB8;
    *(&v41 + 1) = v22;
    v28 = _Block_copy(&aBlock);
    v29 = v18;

    [v29 retrieveFeatureToggleStateForOptions:v20 completion:v28];
    _Block_release(v28);
    goto LABEL_16;
  }

  v23 = [objc_opt_self() messagesAppDomain];
  if (v23)
  {
    v24 = v23;
    v25 = sub_100054154();
    v26 = [v24 objectForKey:v25];

    if (v26)
    {
      sub_1000542D4();
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
    }

    aBlock = v44;
    v41 = v45;
    if (*(&v45 + 1))
    {
      sub_100036BF0(&aBlock, &qword_10008AA10, &qword_10005E880);
      v27 = swift_allocObject();
      *(v27 + 16) = v18;
      v42 = sub_10004AE78;
      v43 = v27;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v22 = &unk_100082C28;
      goto LABEL_12;
    }
  }

  else
  {
    aBlock = 0u;
    v41 = 0u;
  }

  sub_100036BF0(&aBlock, &qword_10008AA10, &qword_10005E880);
  v30 = v38;
  v37(v38, v9, v1);
  v31 = v30;
  v32 = sub_100054074();
  v33 = sub_100054274();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&aBlock = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_100002F9C(0xD00000000000001CLL, 0x8000000100064E80, &aBlock);
    _os_log_impl(&_mh_execute_header, v32, v33, "%s No action required.", v34, 0xCu);
    sub_1000031D0(v35);
  }

  v14(v31, v1);
LABEL_16:
  [v39 setTaskCompleted];
}

void _sSo26IMDaemonChatRequestHandlerC7imagentE06acceptB17ContainingMessage8withGUIDySS_tF_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_100054094();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v52 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v7);
  v51 = &v48 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v48 - v12;
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  v16 = sub_100002F40();
  v17 = v5[2];
  v53 = v16;
  v54 = v17;
  (v17)(v15);

  v18 = sub_100054074();
  v19 = sub_100054274();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v49 = v5;
    v21 = v20;
    v22 = v4;
    v23 = a1;
    v24 = swift_slowAlloc();
    v55 = v24;
    *v21 = 136315138;
    *(v21 + 4) = sub_100002F9C(v23, a2, &v55);
    _os_log_impl(&_mh_execute_header, v18, v19, "Request to accept chat with messageGUID: %s", v21, 0xCu);
    sub_1000031D0(v24);
    a1 = v23;
    v4 = v22;

    v5 = v49;
  }

  v25 = v5[1];
  v25(v15, v4);
  v26 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v26 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v54(v13, v53, v4);

    v27 = sub_100054074();
    v28 = sub_100054274();

    v29 = os_log_type_enabled(v27, v28);
    v50 = a1;
    if (v29)
    {
      v30 = v4;
      v31 = a1;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v52 = v25;
      v34 = v33;
      v55 = v33;
      *v32 = 136315138;
      v35 = v31;
      v4 = v30;
      *(v32 + 4) = sub_100002F9C(v35, a2, &v55);
      _os_log_impl(&_mh_execute_header, v27, v28, "Accept chat on peer devices with %s", v32, 0xCu);
      sub_1000031D0(v34);
      v25 = v52;

      v36 = v13;
      v37 = v30;
    }

    else
    {

      v36 = v13;
      v37 = v4;
    }

    v25(v36, v37);
    v43 = [objc_opt_self() sharedAccountController];
    if (!v43)
    {
      __break(1u);
      return;
    }

    v44 = v43;
    v45 = sub_100054154();
    v46 = [v44 anySessionForServiceName:v45];

    if (v46)
    {
      v47 = sub_100054154();
      [v46 reflectAcceptChatToPeerDevicesForMessageGUID:v47];

      return;
    }

    v38 = v51;
    v54(v51, v53, v4);
    v39 = sub_100054074();
    v40 = sub_100054264();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = "Could not find session";
      goto LABEL_16;
    }
  }

  else
  {
    v38 = v52;
    v54(v52, v53, v4);
    v39 = sub_100054074();
    LOBYTE(v40) = sub_100054264();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = "No message guid provided";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v39, v40, v42, v41, 2u);
    }
  }

  v25(v38, v4);
}

void IMDaemonAnyRequestHandler.requestSetup(withClientID:capabilities:context:reply:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v7 = v6;
  v45 = a6;
  v46 = a5;
  v11 = sub_100054094();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100002F40();
  (*(v12 + 16))(v15, v16, v11);

  v17 = sub_100054074();
  v18 = sub_100054254();

  v43 = v18;
  v44 = v17;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v42 = v7;
    v20 = v19;
    v41 = swift_slowAlloc();
    v47 = v41;
    *v20 = 136315650;
    *(v20 + 4) = sub_100002F9C(a1, a2, &v47);
    *(v20 + 12) = 2080;
    v21 = IMStringFromClientCapabilities();
    v22 = sub_100054164();
    v40 = v11;
    v23 = a3;
    v24 = v22;
    v26 = v25;

    v27 = sub_100002F9C(v24, v26, &v47);

    *(v20 + 14) = v27;
    *(v20 + 22) = 2080;
    v28 = sub_100054144();
    v30 = sub_100002F9C(v28, v29, &v47);

    *(v20 + 24) = v30;
    v31 = v44;
    _os_log_impl(&_mh_execute_header, v44, v43, "Preparing setup info for %s with %s and context %s", v20, 0x20u);
    swift_arrayDestroy();

    v7 = v42;

    (*(v12 + 8))(v15, v40);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
    v23 = a3;
  }

  v32 = type metadata accessor for ApplicationWorkspaceObserver();
  v33 = (*(v32 + 112))();
  v34 = (*((swift_isaMask & *v33) + 0xD0))();

  if (v34)
  {
    v35 = v23;
  }

  else
  {
    v35 = v23 & 0x1842F8;
  }

  sub_100003434();
  sub_100003480();
  ClientRequestHandling<>.client.getter();
  sub_100053E94();

  isa = sub_100054114().super.isa;
  v37 = [v7 _setupInfoForCapabilities:v35 context:isa];

  v38 = sub_100054134();
  v46(1, v38);

  v39 = [objc_opt_self() sharedInstance];
  [v39 broadcastCloudKitStateAfterFetchingAccountStatus];
}

uint64_t sub_10004B8D0()
{
  v1 = sub_100054094();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  sub_100053E74();
  v0[5] = sub_100053E64();
  sub_100054214();
  v5 = sub_1000541E4();

  return _swift_task_switch(sub_10004B9C0, v5, v4);
}

uint64_t sub_10004B9C0()
{
  v1 = v0[5];

  v2 = type metadata accessor for ApplicationWorkspaceObserver();
  v3 = (*(v2 + 112))();
  v4 = (*((swift_isaMask & *v3) + 0xD0))();

  if (v4)
  {
    v5 = [objc_allocWithZone(IMDiMessageIDSDelegate) init];
  }

  else
  {
    v7 = v0[3];
    v6 = v0[4];
    v8 = v0[2];
    v9 = sub_100002F40();
    (*(v7 + 16))(v6, v9, v8);
    v10 = sub_100054074();
    v11 = sub_100054274();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[3];
    v13 = v0[4];
    v15 = v0[2];
    if (v12)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Messages is not installed, skipping loading the IMDiMessageIDSDelegate", v16, 2u);
    }

    (*(v14 + 8))(v13, v15);
    v5 = 0;
  }

  v17 = v0[4];

  v18 = v0[1];

  return v18(v5);
}

uint64_t sub_10004BB78()
{
  v2 = *(**v0 + 80);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10004BC8C;

  return v6();
}

uint64_t sub_10004BC8C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_10004BDAC()
{
  v1 = sub_100054094();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  sub_100053E74();
  v0[5] = sub_100053E64();
  sub_100054214();
  v5 = sub_1000541E4();

  return _swift_task_switch(sub_10004BE9C, v5, v4);
}

uint64_t sub_10004BE9C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v5 = sub_100002F40();
  (*(v4 + 16))(v2, v5, v3);
  v6 = sub_100054074();
  v7 = sub_100054274();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Loading services", v8, 2u);
  }

  v10 = v0[3];
  v9 = v0[4];
  v11 = v0[2];

  (*(v10 + 8))(v9, v11);
  v12 = sub_100054154();
  v13 = IMPathsForPlugInsWithExtension();

  if (v13)
  {
    v14 = sub_1000541B4();

    v15 = sub_10004C100(v14);

    if (v15)
    {
      v16 = v15[2];
      if (v16)
      {
        v17 = (v15 + 5);
        do
        {
          v18 = *(v17 - 1);
          v19 = *v17;
          v20 = objc_allocWithZone(NSBundle);

          v21 = sub_100054154();

          v22 = [v20 initWithPath:v21];

          if (v22)
          {
            v23 = [objc_opt_self() sharedController];
            [v23 registerSessionClassWithBundle:v22];
          }

          v17 += 2;
          --v16;
        }

        while (v16);
      }
    }
  }

  v24 = v0[4];

  v25 = v0[1];

  return v25();
}

unint64_t *sub_10004C100(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = &_swiftEmptyArrayStorage;
  sub_10004C34C(0, v2, 0);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_100003068(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10004C34C((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10004C214()
{
  v2 = *(**v0 + 80);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000333B0;

  return v6();
}

char *sub_10004C34C(char *a1, int64_t a2, char a3)
{
  result = sub_10004C36C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004C36C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000334C8(&qword_10008B078, &unk_10005ED58);
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
    v10 = &_swiftEmptyArrayStorage;
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

void sub_10004C478()
{
  v1 = OBJC_IVAR____TtC7imagent29PersistentTasksRequestHandler_monitors;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_10;
  }

LABEL_6:
  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      v17.receiver = v0;
      v17.super_class = type metadata accessor for PersistentTasksRequestHandler();
      objc_msgSendSuper2(&v17, "dealloc");
      return;
    }

    v5 = *(v2 + 56 + 8 * v8);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = (*(v2 + 48) + ((v8 << 10) | (16 * v9)));
        v12 = *v10;
        v11 = v10[1];
        v13 = objc_opt_self();

        v14 = [v13 sharedInstance];
        v15 = [v14 bgstMessageProcessingController];

        if (v15)
        {
          v16 = sub_100054154();

          [v15 removePersistentTaskExecutorMonitorWithID:v16];

          v7 = v8;
          if (!v5)
          {
            goto LABEL_6;
          }
        }

        else
        {

          v7 = v8;
          if (!v5)
          {
            goto LABEL_6;
          }
        }

LABEL_10:
        v8 = v7;
      }
    }
  }

  __break(1u);
}

void sub_10004C668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 bgstMessageProcessingController];

  if (v11)
  {
    v12 = sub_100054154();
    v14[4] = a5;
    v14[5] = a6;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_10004C7BC;
    v14[3] = &unk_100082DD8;
    v13 = _Block_copy(v14);

    [v11 runExecutorWithTaskLimit:a1 groupName:v12 lane:a4 completionHandler:v13];
    _Block_release(v13);
  }

  else
  {
    a5(1);
  }
}

uint64_t sub_10004C7BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_10004C8B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 bgstMessageProcessingController];

  if (v9)
  {
    v10 = sub_100054154();
    v12[4] = a4;
    v12[5] = a5;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10003AAE0;
    v12[3] = &unk_100082E00;
    v11 = _Block_copy(v12);

    [v9 resumeExecutorWithGroupName:v10 lane:a3 completionHandler:v11];
    _Block_release(v11);
  }

  else
  {
    a4();
  }
}

void sub_10004CA9C(uint64_t a1, Swift::Int a2, Swift::Int a3)
{
  swift_beginAccess();

  sub_10004D7CC(&v9, a2, a3);
  swift_endAccess();

  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 bgstMessageProcessingController];

  if (v7)
  {
    v8 = sub_100054154();
    [v7 addPersistentTaskExecutorMonitor:a1 withID:v8];
  }
}

void sub_10004CC18(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_10004E090(a1, a2);
  swift_endAccess();

  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 bgstMessageProcessingController];

  if (v5)
  {
    v6 = sub_100054154();
    [v5 removePersistentTaskExecutorMonitorWithID:v6];
  }
}

uint64_t sub_10004CE00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000334C8(&unk_10008AD00, &qword_10005E910);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  sub_100054224();
  v8 = sub_100054244();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;

  sub_1000363C0(0, 0, v7, &unk_10005F270, v9);
}

uint64_t sub_10004CF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10004CF38, 0, 0);
}

uint64_t sub_10004CF38()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 bgstMessageProcessingController];
  *(v0 + 32) = v2;

  if (v2)
  {
    v3 = async function pointer to IMDBackgroundMessageProcessingController.ensureSchedulingForWork(refreshingTaskReports:)[1];
    v4 = swift_task_alloc();
    *(v0 + 40) = v4;
    *v4 = v0;
    v4[1] = sub_10004D050;

    return IMDBackgroundMessageProcessingController.ensureSchedulingForWork(refreshingTaskReports:)(1);
  }

  else
  {
    v5 = *(v0 + 24);
    (*(v0 + 16))();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_10004D050()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_10004EA08, 0, 0);
}

uint64_t sub_10004D2A4(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000334C8(&unk_10008AD00, &qword_10005E910);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  sub_100054224();
  v10 = sub_100054244();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;

  sub_1000363C0(0, 0, v9, &unk_10005F280, v11);
}

uint64_t sub_10004D3CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 48) = a4;
  return _swift_task_switch(sub_10004D3F0, 0, 0);
}

uint64_t sub_10004D3F0()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 bgstMessageProcessingController];
  *(v0 + 32) = v2;

  if (v2)
  {
    v3 = async function pointer to IMDBackgroundMessageProcessingController.ensureSchedulingForWork(refreshingTaskReports:)[1];
    v4 = swift_task_alloc();
    *(v0 + 40) = v4;
    *v4 = v0;
    v4[1] = sub_10004D50C;
    v5 = *(v0 + 48);

    return IMDBackgroundMessageProcessingController.ensureSchedulingForWork(refreshingTaskReports:)(v5);
  }

  else
  {
    v6 = *(v0 + 24);
    (*(v0 + 16))();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10004D50C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_10004D620, 0, 0);
}

uint64_t sub_10004D620()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004D7CC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_100054474();
  sub_100054184();
  v9 = sub_100054484();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_100054424() & 1) != 0)
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

    sub_10004DB7C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10004D91C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000334C8(&qword_10008B5C8, &unk_10005F310);
  result = sub_100054324();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_100054474();
      sub_100054184();
      result = sub_100054484();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_10004DB7C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_10004D91C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10004DCFC();
      goto LABEL_16;
    }

    sub_10004DE58(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_100054474();
  sub_100054184();
  result = sub_100054484();
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

      result = sub_100054424();
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
  result = sub_100054444();
  __break(1u);
  return result;
}

void *sub_10004DCFC()
{
  v1 = v0;
  sub_1000334C8(&qword_10008B5C8, &unk_10005F310);
  v2 = *v0;
  v3 = sub_100054314();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_10004DE58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000334C8(&qword_10008B5C8, &unk_10005F310);
  result = sub_100054324();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_100054474();

      sub_100054184();
      result = sub_100054484();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10004E090(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_100054474();
  sub_100054184();
  v7 = sub_100054484();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_100054424() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10004DCFC();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_10004E30C(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_10004E1CC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100036FB4;

  return sub_10004CF18(v4, v5, v6, v2, v3);
}

uint64_t sub_10004E264()
{
  v2 = *(v0 + 32);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100036FB4;

  return sub_10004D3CC(v5, v6, v7, v2, v4, v3);
}

unint64_t sub_10004E30C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_100054304();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_100054474();

        sub_100054184();
        v15 = sub_100054484();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void sub_10004E4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a5;
  v9 = objc_opt_self();
  _Block_copy(a5);
  v10 = [v9 sharedInstance];
  v11 = [v10 bgstMessageProcessingController];

  if (v11)
  {
    v12 = sub_100054154();
    v14[4] = sub_10004E984;
    v14[5] = v8;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_10004C7BC;
    v14[3] = &unk_100082F90;
    v13 = _Block_copy(v14);

    [v11 runExecutorWithTaskLimit:a1 groupName:v12 lane:a4 completionHandler:v13];
    _Block_release(v13);
  }

  else
  {
    a5[2](a5, 1);
  }
}

void sub_10004E694(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  v7 = objc_opt_self();
  _Block_copy(a4);
  v8 = [v7 sharedInstance];
  v9 = [v8 bgstMessageProcessingController];

  if (v9)
  {
    v10 = sub_100054154();
    v12[4] = sub_10004EA04;
    v12[5] = v6;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10003AAE0;
    v12[3] = &unk_100082F40;
    v11 = _Block_copy(v12);

    [v9 resumeExecutorWithGroupName:v10 lane:a3 completionHandler:v11];
    _Block_release(v11);
  }

  else
  {
    a4[2](a4);
  }
}

uint64_t sub_10004E85C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004E89C()
{
  v2 = *(v0 + 32);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000333B0;

  return sub_10004D3CC(v5, v6, v7, v2, v4, v3);
}

uint64_t sub_10004E944()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10004E9AC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_10004EA2C()
{
  v0 = sub_100054094();
  sub_10003398C(v0, qword_10008C7A8);
  sub_100002F64(v0, qword_10008C7A8);
  sub_100054064();
  return sub_100054084();
}

uint64_t IMDaemonChatMessageHistoryRequestHandler.fetchEarliestMessageDateForChats(withGUIDs:completion:)(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = swift_allocObject();
  *(v3 + 16) = &_swiftEmptyDictionarySingleton;
  v4 = *(a1 + 16);
  if (v4)
  {
    v21 = objc_opt_self();
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      sub_100054164();
      v8 = objc_allocWithZone(NSSortDescriptor);

      v9 = sub_100054154();

      v10 = [v8 initWithKey:v9 ascending:1];

      v11 = [v21 synchronousDatabase];
      v12 = sub_100054154();
      sub_1000334C8(&qword_10008B100, qword_10005F3D0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10005F3C0;
      *(v13 + 32) = v10;
      sub_10003AA94(0, &qword_10008B638, NSSortDescriptor_ptr);
      v22 = v10;
      isa = sub_1000541A4().super.isa;

      v15 = swift_allocObject();
      v15[2] = v3;
      v15[3] = v6;
      v15[4] = v7;
      aBlock[4] = sub_100051EAC;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10004F180;
      aBlock[3] = &unk_100083028;
      v16 = _Block_copy(aBlock);

      [v11 fetchMessageRecordsForChatRecordWithGUID:v12 filteredUsingPredicate:0 sortedUsingDescriptors:isa limit:1 completionHandler:v16];
      _Block_release(v16);

      swift_unknownObjectRelease();
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  swift_beginAccess();
  v17 = *(v3 + 16);

  a2(v18);
}

uint64_t sub_10004ED98(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000334C8(&qword_10008B6B0, &qword_10005F470);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v19 = sub_100053E44();
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
    goto LABEL_9;
  }

  result = sub_1000543B4();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v15 = sub_100054344();
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(a1 + 32);
LABEL_6:
    v16 = v15;
    v17 = [v15 date];

    sub_100053E34();
    v18 = sub_100053E44();
    (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
LABEL_9:
    sub_10005382C(v13, v11);
    swift_beginAccess();

    sub_10004EFA8(v11, a3, a4);
    swift_endAccess();
    return sub_100036BF0(v13, &qword_10008B6B0, &qword_10005F470);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004EFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000334C8(&qword_10008B6B0, &qword_10005F470);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_100053E44();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_100036BF0(a1, &qword_10008B6B0, &qword_10005F470);
    sub_1000508E0(a2, a3, v10);

    return sub_100036BF0(v10, &qword_10008B6B0, &qword_10005F470);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_100050FBC(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_10004F180(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_10003AA94(0, &qword_10008B6A8, IMDMessageRecord_ptr);
  v3 = sub_1000541B4();

  v2(v3);
}

uint64_t sub_10004F2B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = sub_100054164();
  v9 = v8;
  v10 = sub_100054164();
  v12 = v11;
  v13 = a1;
  a5(v7, v9, v10, v12);
}

void IMDaemonChatMessageHistoryRequestHandler.updatePluginMessage(withGUID:newPayloadData:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v137 = a5;
  v138 = a6;
  v132 = a3;
  v133 = a4;
  v139 = a1;
  v7 = sub_100054094();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v10 = __chkstk_darwin(v7);
  v12 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v136 = &v128 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v128 - v16;
  v18 = __chkstk_darwin(v15);
  v129 = &v128 - v19;
  v20 = __chkstk_darwin(v18);
  v131 = &v128 - v21;
  v22 = __chkstk_darwin(v20);
  v134 = &v128 - v23;
  v24 = __chkstk_darwin(v22);
  v135 = &v128 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v128 - v27;
  __chkstk_darwin(v26);
  v30 = &v128 - v29;
  v31 = sub_100033848();
  v32 = *(v8 + 2);
  v140 = v31;
  v141 = v32;
  v142 = (v8 + 16);
  (v32)(v30);
  v33 = sub_100054074();
  v34 = sub_100054254();
  v35 = os_log_type_enabled(v33, v34);
  v130 = v17;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = v8;
    v38 = v7;
    v39 = a2;
    v40 = swift_slowAlloc();
    v143 = v40;
    *v36 = 136315138;
    *(v36 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v143);
    _os_log_impl(&_mh_execute_header, v33, v34, "%s called", v36, 0xCu);
    sub_1000031D0(v40);
    a2 = v39;
    v7 = v38;
    v8 = v37;

    v41 = v37;
  }

  else
  {

    v41 = v8;
  }

  v42 = *(v41 + 1);
  v42(v30, v7);
  v43 = objc_opt_self();
  v44 = [v43 sharedInstance];
  v45 = sub_100054154();
  v46 = [v44 messageWithGUID:v45];

  if (v46)
  {
    v47 = [v46 balloonBundleID];
    if (!v47)
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v48 = v47;
    v49 = sub_100054164();
    v51 = v50;

    v52 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v52 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (!v52)
    {
      v77 = v136;
      v141(v136, v140, v7);

      v78 = v46;
      v79 = sub_100054074();
      v80 = sub_100054264();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v142 = v42;
        v83 = v82;
        v143 = swift_slowAlloc();
        *v81 = 136315650;
        *(v81 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v143);
        *(v81 + 12) = 2080;
        *(v81 + 14) = sub_100002F9C(v139, a2, &v143);
        *(v81 + 22) = 2112;
        *(v81 + 24) = v78;
        *v83 = v46;
        v84 = v78;
        _os_log_impl(&_mh_execute_header, v79, v80, "%s Message item for GUID %s is not a plugin message. Bailing. %@", v81, 0x20u);
        sub_100036BF0(v83, &unk_10008ACF0, &unk_10005EC10);

        swift_arrayDestroy();

        v142(v136, v7);
      }

      else
      {

        v42(v77, v7);
      }

      v137(0);
      goto LABEL_39;
    }

    v136 = v8;
    v53 = v42;
    v141(v28, v140, v7);

    v54 = sub_100054074();
    v55 = v7;
    v56 = sub_100054254();

    v57 = os_log_type_enabled(v54, v56);
    v128 = a2;
    if (v57)
    {
      v58 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      *v58 = 136315394;
      *(v58 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v143);
      *(v58 + 12) = 2080;
      *(v58 + 14) = sub_100002F9C(v139, a2, &v143);
      _os_log_impl(&_mh_execute_header, v54, v56, "%s Got message item with GUID %s", v58, 0x16u);
      swift_arrayDestroy();
    }

    v53(v28, v55);
    v59 = v55;
    v60 = v135;
    v61 = [v43 sharedInstance];
    v62 = [v61 chatForMessage:v46];

    if (v62)
    {
      v141(v60, v140, v59);
      v63 = v46;
      v64 = sub_100054074();
      v65 = sub_100054254();

      v66 = os_log_type_enabled(v64, v65);
      v130 = v62;
      v135 = v63;
      if (v66)
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v69 = v59;
        v70 = swift_slowAlloc();
        v143 = v70;
        *v67 = 136315394;
        *(v67 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v143);
        *(v67 + 12) = 2112;
        *(v67 + 14) = v135;
        *v68 = v46;
        v71 = v135;
        _os_log_impl(&_mh_execute_header, v64, v65, "%s Got chat for message item %@", v67, 0x16u);
        sub_100036BF0(v68, &unk_10008ACF0, &unk_10005EC10);
        v63 = v135;

        sub_1000031D0(v70);
        v59 = v69;

        v72 = v60;
        v73 = v69;
      }

      else
      {

        v72 = v60;
        v73 = v59;
      }

      v53(v72, v73);
      isa = sub_100053E04().super.isa;
      [v63 setPayloadData:isa];

      v91 = [v43 sharedInstance];
      v92 = [v91 storeMessage:v63 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:{objc_msgSend(v63, "flags")}];

      v93 = v134;
      v141(v134, v140, v59);
      v94 = v92;
      v95 = sub_100054074();
      v96 = sub_100054254();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = v59;
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v143 = v100;
        *v97 = 136315394;
        *(v97 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v143);
        *(v97 + 12) = 2112;
        *(v97 + 14) = v94;
        *v99 = v94;
        v101 = v94;
        _os_log_impl(&_mh_execute_header, v95, v96, "%s Updated store with new message item %@", v97, 0x16u);
        sub_100036BF0(v99, &unk_10008ACF0, &unk_10005EC10);
        v59 = v98;

        sub_1000031D0(v100);

        v102 = v93;
        v103 = v98;
      }

      else
      {

        v102 = v93;
        v103 = v59;
      }

      v53(v102, v103);
      v104 = v128;
      v105 = v130;
      v106 = [objc_opt_self() sharedProvider];
      if (v106)
      {
        v107 = [v106 broadcasterForChatListeners];
        swift_unknownObjectRelease();
        v108 = [v105 style];
        v109 = v94;
        v110 = [v109 accountID];
        if (v110)
        {
          v111 = v110;

          v112 = [v105 chatIdentifier];
          [v107 account:v111 chat:v112 style:v108 messageUpdated:v109];

          v113 = v131;
          v141(v131, v140, v59);

          v114 = sub_100054074();
          v115 = sub_100054254();

          if (os_log_type_enabled(v114, v115))
          {
            v116 = swift_slowAlloc();
            v143 = swift_slowAlloc();
            *v116 = 136315394;
            *(v116 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v143);
            *(v116 + 12) = 2080;
            *(v116 + 14) = sub_100002F9C(v139, v104, &v143);
            _os_log_impl(&_mh_execute_header, v114, v115, "%s Broadcasted messageUpdated for GUID %s", v116, 0x16u);
            swift_arrayDestroy();

            v117 = v131;
          }

          else
          {

            v117 = v113;
          }

          v53(v117, v59);
          v137(1);

          swift_unknownObjectRelease();
          return;
        }

        goto LABEL_41;
      }

      v118 = v129;
      v141(v129, v140, v59);
      v78 = v94;
      v119 = sub_100054074();
      v120 = sub_100054264();
      if (os_log_type_enabled(v119, v120))
      {
        v142 = v53;
        v121 = v59;
        v122 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        *v122 = 136315394;
        *(v122 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v143);
        *(v122 + 12) = 2080;
        v123 = [v78 guid];

        if (!v123)
        {
LABEL_42:
          __break(1u);
          return;
        }

        v124 = sub_100054164();
        v126 = v125;

        v127 = sub_100002F9C(v124, v126, &v143);

        *(v122 + 14) = v127;
        _os_log_impl(&_mh_execute_header, v119, v120, "%s No broadcaster for message with GUID %s", v122, 0x16u);
        swift_arrayDestroy();

        v142(v129, v121);
      }

      else
      {

        v53(v118, v59);
      }

      v137(0);

LABEL_39:
      return;
    }

    v85 = v130;
    v141(v130, v140, v59);
    v86 = v128;

    v87 = sub_100054074();
    v88 = sub_100054264();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      *v89 = 136315394;
      *(v89 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v143);
      *(v89 + 12) = 2080;
      *(v89 + 14) = sub_100002F9C(v139, v86, &v143);
      _os_log_impl(&_mh_execute_header, v87, v88, "%s No message item for GUID %s", v89, 0x16u);
      swift_arrayDestroy();
    }

    v53(v85, v59);
    v137(0);
  }

  else
  {
    v141(v12, v140, v7);

    v74 = sub_100054074();
    v75 = sub_100054264();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      *v76 = 136315394;
      *(v76 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v143);
      *(v76 + 12) = 2080;
      *(v76 + 14) = sub_100002F9C(v139, a2, &v143);
      _os_log_impl(&_mh_execute_header, v74, v75, "%s No message item for GUID %s", v76, 0x16u);
      swift_arrayDestroy();
    }

    v42(v12, v7);
    v137(0);
  }
}

Swift::Void __swiftcall IMDaemonChatMessageHistoryRequestHandler.updateChats(usingMessageGUIDsAndSummaries:)(Swift::OpaquePointer usingMessageGUIDsAndSummaries)
{
  v1 = [objc_opt_self() sharedInstance];
  sub_10003AA94(0, &qword_10008B640, NSAttributedString_ptr);
  isa = sub_100054114().super.isa;
  [v1 updateChatsUsingMessageGUIDsAndSummaries:isa];
}

Swift::Void __swiftcall IMDaemonChatMessageHistoryRequestHandler.updateChatsUsingMessageGUIDs(withPriority:)(Swift::OpaquePointer withPriority)
{
  v1 = [objc_opt_self() sharedInstance];
  isa = sub_1000541A4().super.isa;
  [v1 updateChatsUsingMessageGUIDsWithPriority:isa];
}

uint64_t sub_1000508E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10003DD70(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000511EC();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_100053E44();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_100050DD0(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_100053E44();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_100050A50(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_100053E44();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_1000334C8(&qword_10008B6B8, &qword_10005F478);
  v46 = a2;
  result = sub_1000543D4();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_100054474();
      sub_100054184();
      result = sub_100054484();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_100050DD0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100054304() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_100054474();

      sub_100054184();
      v13 = sub_100054484();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_100053E44() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100050FBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10003DD70(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1000511EC();
      goto LABEL_7;
    }

    sub_100050A50(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_10003DD70(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_100054454();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_100053E44();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_10005113C(v12, a2, a3, a1, v18);
}

uint64_t sub_10005113C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_100053E44();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_1000511EC()
{
  v1 = v0;
  v36 = sub_100053E44();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000334C8(&qword_10008B6B8, &qword_10005F478);
  v4 = *v0;
  v5 = sub_1000543C4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
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

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
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

void _sSo40IMDaemonChatMessageHistoryRequestHandlerC7imagentE8loadItem8withGUID7queryIDySS_SStF_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v83 = a3;
  v84 = a4;
  v90 = a1;
  v5 = sub_100054094();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v85 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v86 = &v83 - v11;
  v12 = __chkstk_darwin(v10);
  v91 = &v83 - v13;
  v14 = __chkstk_darwin(v12);
  v88 = &v83 - v15;
  __chkstk_darwin(v14);
  v17 = &v83 - v16;
  v18 = sub_100033848();
  v20 = (v6 + 2);
  v19 = v6[2];
  v92 = v18;
  v93 = v19;
  (v19)(v17);

  v21 = sub_100054074();
  v22 = sub_100054254();
  v23 = os_log_type_enabled(v21, v22);
  v89 = v6;
  if (v23)
  {
    v87 = v5;
    v24 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    *v24 = 136315394;
    v25 = a2;
    v26 = [objc_opt_self() currentContext];

    if (!v26)
    {
      __break(1u);
      goto LABEL_26;
    }

    v27 = [v26 listenerID];

    v28 = sub_100054164();
    v30 = v29;

    v31 = sub_100002F9C(v28, v30, &v94);

    *(v24 + 4) = v31;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_100002F9C(v90, v25, &v94);
    _os_log_impl(&_mh_execute_header, v21, v22, "Request from %s to load item with guid: %s", v24, 0x16u);
    swift_arrayDestroy();

    v32 = v89[1];
    v5 = v87;
    v32(v17, v87);
    a2 = v25;
  }

  else
  {

    v32 = v6[1];
    v32(v17, v5);
  }

  v33 = objc_opt_self();
  v34 = [v33 sharedInstance];
  v35 = sub_100054154();
  v36 = [v34 itemWithGUID:v35];

  v37 = [v33 sharedInstance];
  v87 = a2;
  v38 = sub_100054154();
  v39 = [v37 chatForMessageGUID:v38];

  v40 = v88;
  v93(v88, v92, v5);
  v41 = v36;
  v42 = sub_100054074();
  v43 = sub_100054254();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = v32;
    v46 = v5;
    v47 = swift_slowAlloc();
    *v44 = 138412290;
    *(v44 + 4) = v41;
    *v47 = v41;
    v48 = v41;
    _os_log_impl(&_mh_execute_header, v42, v43, "Resulting item: %@", v44, 0xCu);
    sub_100036BF0(v47, &unk_10008ACF0, &unk_10005EC10);
    v5 = v46;
    v32 = v45;
  }

  v49 = v89 + 1;
  v32(v40, v5);
  v93(v91, v92, v5);
  v50 = v39;
  v51 = v39;
  v52 = sub_100054074();
  v53 = sub_100054254();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v89 = v49;
    v55 = v54;
    v56 = swift_slowAlloc();
    v88 = v20;
    v57 = v5;
    v58 = v56;
    *v55 = 138412290;
    *(v55 + 4) = v51;
    *v56 = v50;
    v59 = v51;
    _os_log_impl(&_mh_execute_header, v52, v53, "Resulting chat: %@", v55, 0xCu);
    sub_100036BF0(v58, &unk_10008ACF0, &unk_10005EC10);
    v5 = v57;
  }

  v32(v91, v5);
  if (v41)
  {
    v60 = v41;
    if (v51)
    {
      v61 = [v51 guid];
      if (v61)
      {
        v62 = v61;

        v63 = sub_100054164();
        v65 = v64;

        v66 = [objc_opt_self() currentContext];
        if (v66)
        {
          v67 = v66;
          v68 = [v66 replyProxy];

          if (v68)
          {
            v69 = sub_100054154();
            sub_1000334C8(&qword_10008AA28, &unk_10005E870);
            v70 = swift_allocObject();
            *(v70 + 16) = xmmword_10005E810;
            *(v70 + 56) = &type metadata for String;
            *(v70 + 32) = v63;
            *(v70 + 40) = v65;
            v71 = v60;
            isa = sub_1000541A4().super.isa;

            [v68 itemQuery:v69 finishedWithResult:v71 chatGUIDs:isa];

            swift_unknownObjectRelease();
          }

          else
          {
          }

          return;
        }

LABEL_26:
        __break(1u);
        return;
      }
    }

    v91 = v32;
    v73 = v86;
    v93(v86, v92, v5);
    v74 = v87;

    v75 = sub_100054074();
    v76 = sub_100054264();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v77 = 136315394;
      *(v77 + 4) = sub_100002F9C(0xD00000000000001BLL, 0x80000001000650B0, &v94);
      *(v77 + 12) = 2080;
      *(v77 + 14) = sub_100002F9C(v90, v74, &v94);
      _os_log_impl(&_mh_execute_header, v75, v76, "%s Failed to find chat for GUID %s", v77, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (v91)(v73, v5);
  }

  else
  {
    v78 = v85;
    v93(v85, v92, v5);
    v79 = v87;

    v80 = sub_100054074();
    v81 = sub_100054264();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v82 = 136315394;
      *(v82 + 4) = sub_100002F9C(0xD00000000000001BLL, 0x80000001000650B0, &v94);
      *(v82 + 12) = 2080;
      *(v82 + 14) = sub_100002F9C(v90, v79, &v94);
      _os_log_impl(&_mh_execute_header, v80, v81, "%s Failed to find item with GUID %s", v82, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v32(v78, v5);
  }
}

void sub_100051EB8(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = &_swiftEmptyDictionarySingleton;
  v4 = *(a1 + 16);
  if (v4)
  {
    v20 = objc_opt_self();
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      sub_100054164();
      v8 = objc_allocWithZone(NSSortDescriptor);

      v9 = sub_100054154();

      v10 = [v8 initWithKey:v9 ascending:1];

      v11 = [v20 synchronousDatabase];
      v12 = sub_100054154();
      sub_1000334C8(&qword_10008B100, qword_10005F3D0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10005F3C0;
      *(v13 + 32) = v10;
      sub_10003AA94(0, &qword_10008B638, NSSortDescriptor_ptr);
      v21 = v10;
      isa = sub_1000541A4().super.isa;

      v15 = swift_allocObject();
      v15[2] = v3;
      v15[3] = v6;
      v15[4] = v7;
      aBlock[4] = sub_1000538A0;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10004F180;
      aBlock[3] = &unk_100083078;
      v16 = _Block_copy(aBlock);

      [v11 fetchMessageRecordsForChatRecordWithGUID:v12 filteredUsingPredicate:0 sortedUsingDescriptors:isa limit:1 completionHandler:v16];
      _Block_release(v16);

      swift_unknownObjectRelease();
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  swift_beginAccess();
  v17 = *(v3 + 16);
  sub_100053E44();

  v18 = sub_100054114().super.isa;
  (*(a2 + 16))(a2, v18);
}

void _sSo40IMDaemonChatMessageHistoryRequestHandlerC7imagentE34upgradeCompleteMyMomentLinkToStack04withC4GUID04chatP0ySS_SStF_0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = [objc_opt_self() sharedInstance];
  v9 = sub_100054154();
  v10 = [v8 existingChatWithGUID:v9];

  if (v10)
  {
    v11 = [objc_opt_self() sharedInstance];
    v12 = sub_100054154();
    v13 = [v11 messageWithGUID:v12];

    if (v13)
    {
      oslog = [objc_opt_self() sharedInstance];
      [oslog registerAndAcceptMomentShareForMessage:v13 inChat:v10 resetAssetTransfers:1];

      goto LABEL_9;
    }
  }

  if (qword_10008C7A0 != -1)
  {
    swift_once();
  }

  v14 = sub_100054094();
  sub_100002F64(v14, qword_10008C7A8);

  oslog = sub_100054074();
  v15 = sub_100054264();

  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_100002F9C(a3, a4, &v18);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100002F9C(a1, a2, &v18);
    _os_log_impl(&_mh_execute_header, oslog, v15, "Failed to find chat for chat GUID (%s) or message for message GUID (%s)", v16, 0x16u);
    swift_arrayDestroy();
  }

LABEL_9:
}

void sub_100052478(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v140 = a5;
  v131 = a3;
  v132 = a4;
  v7 = sub_100054094();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v135 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v128 = &v128 - v13;
  v14 = __chkstk_darwin(v12);
  v133 = &v128 - v15;
  v16 = __chkstk_darwin(v14);
  v129 = &v128 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v128 - v19;
  v21 = __chkstk_darwin(v18);
  v138 = &v128 - v22;
  v23 = __chkstk_darwin(v21);
  v130 = &v128 - v24;
  v25 = __chkstk_darwin(v23);
  v136 = &v128 - v26;
  __chkstk_darwin(v25);
  v28 = &v128 - v27;
  v29 = sub_100033848();
  v31 = v8 + 2;
  v30 = v8[2];
  v143 = v29;
  v144 = v30;
  (v30)(v28);
  v32 = sub_100054074();
  v33 = sub_100054254();
  v34 = os_log_type_enabled(v32, v33);
  v142 = v8;
  v137 = v20;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v139 = a2;
    v36 = v8;
    v37 = a1;
    v38 = v35;
    v39 = v7;
    v40 = swift_slowAlloc();
    v145 = v40;
    *v38 = 136315138;
    *(v38 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v145);
    _os_log_impl(&_mh_execute_header, v32, v33, "%s called", v38, 0xCu);
    sub_1000031D0(v40);

    a1 = v37;

    v41 = v36;
    a2 = v139;
    v42 = v39;
    v141 = v41[1];
    v141(v28, v39);
  }

  else
  {

    v42 = v7;
    v141 = v8[1];
    v141(v28, v7);
  }

  v43 = objc_opt_self();
  v44 = [v43 sharedInstance];
  v45 = sub_100054154();
  v46 = [v44 messageWithGUID:v45];

  if (v46)
  {
    v47 = [v46 balloonBundleID];
    if (!v47)
    {
      _Block_release(v140);
      __break(1u);
LABEL_38:
      _Block_release(v140);
      __break(1u);
      goto LABEL_39;
    }

    v48 = v47;
    v49 = sub_100054164();
    v51 = v50;

    v52 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v52 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (!v52)
    {
      v66 = v130;
      (v144)(v130, v143, v42);

      v31 = v46;
      v67 = sub_100054074();
      v68 = sub_100054264();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v144 = v42;
        v71 = v70;
        v145 = swift_slowAlloc();
        *v69 = 136315650;
        *(v69 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v145);
        *(v69 + 12) = 2080;
        *(v69 + 14) = sub_100002F9C(a1, a2, &v145);
        *(v69 + 22) = 2112;
        *(v69 + 24) = v31;
        *v71 = v46;
        v72 = v31;
        _os_log_impl(&_mh_execute_header, v67, v68, "%s Message item for GUID %s is not a plugin message. Bailing. %@", v69, 0x20u);
        sub_100036BF0(v71, &unk_10008ACF0, &unk_10005EC10);

        swift_arrayDestroy();

        v73 = v66;
        v74 = v144;
      }

      else
      {

        v73 = v66;
        v74 = v42;
      }

      v141(v73, v74);
      (*(v140 + 2))(v140, 0);
      goto LABEL_36;
    }

    v136 = a1;
    v53 = v42;
    v54 = v138;
    v144();

    v55 = sub_100054074();
    v56 = sub_100054254();

    v57 = os_log_type_enabled(v55, v56);
    v139 = a2;
    v134 = v31;
    if (v57)
    {
      v58 = a2;
      v59 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      *v59 = 136315394;
      *(v59 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v145);
      *(v59 + 12) = 2080;
      *(v59 + 14) = sub_100002F9C(v136, v58, &v145);
      _os_log_impl(&_mh_execute_header, v55, v56, "%s Got message item with GUID %s", v59, 0x16u);
      swift_arrayDestroy();
      v53 = v42;
    }

    v60 = v42;
    v75 = v141;
    v141(v54, v60);
    v76 = v137;
    v77 = [v43 sharedInstance];
    v78 = [v77 chatForMessage:v46];

    v138 = v78;
    if (v78)
    {
      (v144)(v76, v143, v53);
      v79 = v46;
      v80 = sub_100054074();
      v81 = sub_100054254();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = v53;
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v145 = v85;
        *v82 = 136315394;
        *(v82 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v145);
        *(v82 + 12) = 2112;
        *(v82 + 14) = v79;
        *v84 = v46;
        v86 = v79;
        _os_log_impl(&_mh_execute_header, v80, v81, "%s Got chat for message item %@", v82, 0x16u);
        sub_100036BF0(v84, &unk_10008ACF0, &unk_10005EC10);
        v53 = v83;
        v75 = v141;

        sub_1000031D0(v85);
      }

      v75(v76, v53);
      isa = sub_100053E04().super.isa;
      [v79 setPayloadData:isa];

      v88 = [v43 sharedInstance];
      v89 = [v79 flags];
      v137 = v79;
      v90 = [v88 storeMessage:v79 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:v89];

      v91 = v133;
      (v144)(v133, v143, v53);
      v92 = v90;
      v93 = sub_100054074();
      v94 = sub_100054254();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v145 = v97;
        *v95 = 136315394;
        *(v95 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v145);
        *(v95 + 12) = 2112;
        *(v95 + 14) = v92;
        *v96 = v92;
        v98 = v92;
        _os_log_impl(&_mh_execute_header, v93, v94, "%s Updated store with new message item %@", v95, 0x16u);
        sub_100036BF0(v96, &unk_10008ACF0, &unk_10005EC10);
        v75 = v141;

        sub_1000031D0(v97);
      }

      v75(v91, v53);
      v99 = v138;
      v100 = [objc_opt_self() sharedProvider];
      if (v100)
      {
        v31 = [v100 broadcasterForChatListeners];
        swift_unknownObjectRelease();
        v101 = [v99 style];
        v102 = v92;
        v103 = [v102 accountID];
        if (v103)
        {
          v104 = v103;

          v105 = [v99 chatIdentifier];
          [v31 account:v104 chat:v105 style:v101 messageUpdated:v102];

          (v144)(v135, v143, v53);
          v106 = v139;

          v107 = sub_100054074();
          v108 = sub_100054254();

          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            v145 = swift_slowAlloc();
            *v109 = 136315394;
            *(v109 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v145);
            *(v109 + 12) = 2080;
            *(v109 + 14) = sub_100002F9C(v136, v106, &v145);
            _os_log_impl(&_mh_execute_header, v107, v108, "%s Broadcasted messageUpdated for GUID %s", v109, 0x16u);
            swift_arrayDestroy();
          }

          v75(v135, v53);
          (*(v140 + 2))(v140, 1);

          swift_unknownObjectRelease();
          return;
        }

        goto LABEL_38;
      }

      v117 = v128;
      (v144)(v128, v143, v53);
      v31 = v92;
      v118 = sub_100054074();
      v119 = sub_100054264();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = v53;
        v121 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        *v121 = 136315394;
        *(v121 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v145);
        *(v121 + 12) = 2080;
        v122 = [v31 guid];
        if (!v122)
        {
LABEL_39:
          _Block_release(v140);

          __break(1u);
          return;
        }

        v123 = v122;

        v124 = sub_100054164();
        v126 = v125;

        v127 = sub_100002F9C(v124, v126, &v145);

        *(v121 + 14) = v127;
        _os_log_impl(&_mh_execute_header, v118, v119, "%s No broadcaster for message with GUID %s", v121, 0x16u);
        swift_arrayDestroy();

        v141(v128, v120);
        v99 = v138;
      }

      else
      {

        v75(v117, v53);
      }

      (*(v140 + 2))(v140, 0);

LABEL_36:
      return;
    }

    v110 = v129;
    (v144)(v129, v143, v53);
    v111 = v139;

    v112 = sub_100054074();
    v113 = sub_100054264();

    v114 = os_log_type_enabled(v112, v113);
    v115 = v136;
    if (v114)
    {
      v116 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      *v116 = 136315394;
      *(v116 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v145);
      *(v116 + 12) = 2080;
      *(v116 + 14) = sub_100002F9C(v115, v111, &v145);
      _os_log_impl(&_mh_execute_header, v112, v113, "%s No message item for GUID %s", v116, 0x16u);
      swift_arrayDestroy();
    }

    v75(v110, v53);
    (*(v140 + 2))(v140, 0);
  }

  else
  {
    v61 = v136;
    (v144)(v136, v143, v42);

    v62 = sub_100054074();
    v63 = a2;
    v64 = sub_100054264();

    if (os_log_type_enabled(v62, v64))
    {
      v65 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      *v65 = 136315394;
      *(v65 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v145);
      *(v65 + 12) = 2080;
      *(v65 + 14) = sub_100002F9C(a1, v63, &v145);
      _os_log_impl(&_mh_execute_header, v62, v64, "%s No message item for GUID %s", v65, 0x16u);
      swift_arrayDestroy();
    }

    v141(v61, v42);
    (*(v140 + 2))(v140, 0);
  }
}

void _sSo40IMDaemonChatMessageHistoryRequestHandlerC7imagentE49fetchIncomingPendingMessagesOverSatelliteForChats7withIDs8servicesySaySSG_AGtF_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v4 = *i;
      v6 = objc_opt_self();

      v7 = [v6 sharedAccountController];
      if (!v7)
      {
        break;
      }

      v8 = v7;
      v9 = sub_100054154();

      v10 = [v8 anySessionForServiceName:v9];

      if (v10)
      {
        v11 = [(objc_class *)v10 service];
        v12 = [v11 supportsCapability:IMServiceCapabilityPendingIncomingMessageFetchOverSatellite];

        if (v12)
        {
          isa = sub_1000541A4().super.isa;
          [(objc_class *)v10 fetchIncomingPendingMessagesFromHandlesIDs:isa];

          v10 = isa;
        }
      }

      if (!--v2)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100053798(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000537EC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005382C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000334C8(&qword_10008B6B0, &qword_10005F470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000538A8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No message guid found for message: %@", &v2, 0xCu);
}

void sub_100053920(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [*(a1 + 32) count];
  v6 = 134218242;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to delete %lu attachments from indexes with error: %@", &v6, 0x16u);
}

void sub_1000539D4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No group ID found for chat: %@", &v2, 0xCu);
}

void sub_100053A4C()
{
  sub_10001AC00();
  v1 = "setupInfo";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v0, 0x16u);
}

void sub_100053AE0()
{
  sub_10001AC00();
  v1 = "setupInfo";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v0, 0x16u);
}

void sub_100053C38(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Could not create NSInvocation matching XPC request object. Selector %@ not found in XPC interface.", &v2, 0xCu);
}