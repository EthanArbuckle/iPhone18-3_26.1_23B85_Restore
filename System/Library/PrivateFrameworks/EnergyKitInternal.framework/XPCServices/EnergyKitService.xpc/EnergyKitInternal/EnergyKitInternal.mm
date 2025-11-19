int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_1000A3538();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_autoreleasePoolPush();
  sub_10004ABF8();
  objc_autoreleasePoolPop(v8);
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v9 = sub_100001E38(v3, qword_1000C96B8);
  (*(v4 + 16))(v7, v9, v3);
  v10 = sub_1000A3518();
  v11 = sub_1000A3CB8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "*** EnergyKitService LAUNCH ***", v12, 2u);
  }

  (*(v4 + 8))(v7, v3);
  v13 = [objc_opt_self() serviceListener];
  type metadata accessor for CombinedServiceListener();
  v14 = swift_allocObject();
  v15 = [objc_allocWithZone(type metadata accessor for CombinedServiceDelegate()) init];
  *(v14 + 16) = v15;
  *(v14 + 24) = v13;
  [v13 setDelegate:v15];
  qword_1000C95E8 = v14;
  [v13 resume];
  return 0;
}

uint64_t sub_100001E38(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

BOOL sub_100001E8C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_100001F10(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void type metadata accessor for CFError()
{
  if (!qword_1000C75A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000C75A0);
    }
  }
}

uint64_t sub_100001FCC()
{
  v1 = *(v0 + 48);
  v2 = sub_1000A3A78();
  v3 = [v1 valueForEntitlement:v2];

  if (v3)
  {
    sub_1000A3DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  *(v0 + 16) = v7;
  *(v0 + 32) = v8;
  if (*(v0 + 40))
  {
    if (swift_dynamicCast() && (*(v0 + 64) & 1) != 0)
    {
      if (qword_1000C7550 != -1)
      {
        swift_once();
      }

      v4 = qword_1000C95F0;
      *(v0 + 56) = qword_1000C95F0;

      return _swift_task_switch(sub_100002164, v4, 0);
    }
  }

  else
  {
    sub_1000026F4(v0 + 16);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100002164()
{
  *(*(v0 + 56) + 144) = 1;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000021EC()
{
  v1 = *(v0 + 48);
  v2 = sub_1000A3A78();
  v3 = [v1 valueForEntitlement:v2];

  if (v3)
  {
    sub_1000A3DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  *(v0 + 16) = v7;
  *(v0 + 32) = v8;
  if (*(v0 + 40))
  {
    if (swift_dynamicCast() && (*(v0 + 72) & 1) != 0)
    {
      if (qword_1000C7550 != -1)
      {
        swift_once();
      }

      v4 = qword_1000C95F0;
      *(v0 + 56) = qword_1000C95F0;

      return _swift_task_switch(sub_100002384, v4, 0);
    }
  }

  else
  {
    sub_1000026F4(v0 + 16);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100002384()
{
  *(*(v0 + 56) + 144) = 1;

  return _swift_task_switch(sub_1000023F4, 0, 0);
}

uint64_t sub_1000023F4()
{
  v1 = qword_1000C95F0;
  *(v0 + 64) = qword_1000C95F0;

  return _swift_task_switch(sub_10000246C, v1, 0);
}

uint64_t sub_10000246C()
{
  *(*(v0 + 64) + 145) = 1;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000024F4()
{
  v1 = *(v0 + 48);
  v2 = sub_1000A3A78();
  v3 = [v1 valueForEntitlement:v2];

  if (v3)
  {
    sub_1000A3DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  *(v0 + 16) = v7;
  *(v0 + 32) = v8;
  if (*(v0 + 40))
  {
    if (swift_dynamicCast() && (*(v0 + 64) & 1) != 0)
    {
      if (qword_1000C7550 != -1)
      {
        swift_once();
      }

      v4 = qword_1000C95F0;
      *(v0 + 56) = qword_1000C95F0;

      return _swift_task_switch(sub_10000268C, v4, 0);
    }
  }

  else
  {
    sub_1000026F4(v0 + 16);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10000268C()
{
  *(*(v0 + 56) + 146) = 1;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000026F4(uint64_t a1)
{
  v2 = sub_10000275C(&qword_1000C7880, &qword_1000AB8A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000275C(uint64_t *a1, uint64_t *a2)
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

double sub_1000027A4()
{
  type metadata accessor for ApplicationIdentifiers();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 143) = 0;
  result = 0.0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  qword_1000C95F0 = v0;
  return result;
}

uint64_t sub_1000027EC(__SecTask *a1)
{
  error = 0;
  v3 = sub_1000A3A78();
  v4 = SecTaskCopyValueForEntitlement(a1, v3, &error);

  v5 = error;
  if (error)
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v6 = sub_1000A3538();
    sub_100001E38(v6, qword_1000C96B8);
    v7 = sub_1000A3518();
    v8 = sub_1000A3CC8();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_14;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    type metadata accessor for CFError();
    sub_1000033E4();
    swift_allocError();
    *v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "[ApplicationIdentifiers] Failed to extract application id.\n%@", v9, 0xCu);
    sub_10000343C(v10);

    goto LABEL_13;
  }

  if (v4)
  {
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      v13 = *(v1 + 120);
      *(v1 + 112) = v18;
      *(v1 + 120) = v19;

      return v18;
    }
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v15 = sub_1000A3538();
  sub_100001E38(v15, qword_1000C96B8);
  v7 = sub_1000A3518();
  v16 = sub_1000A3CC8();
  if (os_log_type_enabled(v7, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v7, v16, "[ApplicationIdentifiers] Failed to extract application id as string", v17, 2u);
LABEL_13:
  }

LABEL_14:

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_100002AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = v4[15];
  if (v10)
  {
    v11 = v4[14];
    v12 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v12 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v13 = v4[15];

      return v11;
    }
  }

  sub_1000032CC();
  v14 = sub_100003154(a1, a2, a3, a4);
  v16 = v14;
  if (!v14)
  {
    goto LABEL_7;
  }

  v19 = [v14 bundleIdentifier];
  if (!v19)
  {

LABEL_7:
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v15 = sub_1000A3538();
    sub_100001E38(v15, qword_1000C96B8);
    v16 = sub_1000A3518();
    v17 = sub_1000A3CC8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to get BundleRecord and identifier", v18, 2u);
    }

    goto LABEL_19;
  }

  v20 = v19;
  v21 = sub_1000A3A88();
  v23 = v22;

  v24 = v5[17];
  v5[16] = v21;
  v5[17] = v23;

  v25 = objc_allocWithZone(LSApplicationExtensionRecord);
  v26 = sub_100003318();
  v38 = v26;
  if (v26)
  {
    v39 = [v26 extensionPointRecord];
    v40 = [v39 identifier];

    v41 = sub_1000A3A88();
    v43 = v42;

    if (v41 == 0xD00000000000001DLL && 0x80000001000A5570 == v43)
    {

LABEL_33:
      if (qword_1000C7570 != -1)
      {
        swift_once();
      }

      v45 = sub_1000A3538();
      sub_100001E38(v45, qword_1000C96B8);
      v46 = sub_1000A3518();
      v47 = sub_1000A3CB8();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "Called from widget extension", v48, 2u);
      }

      v49 = [v38 containingBundleRecord];
      if (v49)
      {
        v50 = v49;
        v51 = [v49 applicationIdentifier];

        if (v51)
        {
          v11 = sub_1000A3A88();
          v53 = v52;

          v54 = [v38 containingBundleRecord];
          if (v54)
          {
            v55 = v54;
            v64 = [v54 bundleIdentifier];

            if (v64)
            {
              v56 = sub_1000A3A88();
              v58 = v57;

              v59 = v5[15];
              v5[14] = v11;
              v5[15] = v53;

              v60 = v5[17];
              v5[16] = v56;
              v5[17] = v58;

              return v11;
            }
          }
        }
      }

      v61 = sub_1000A3518();
      v62 = sub_1000A3CC8();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v61, v62, "Failed to get parent for widget", v63, 2u);
      }

      goto LABEL_19;
    }

    v44 = sub_1000A3F48();

    if (v44)
    {
      goto LABEL_33;
    }
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v27 = sub_1000A3538();
  sub_100001E38(v27, qword_1000C96B8);
  v28 = sub_1000A3518();
  v29 = sub_1000A3CC8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Not a widget extension", v30, 2u);
  }

LABEL_19:
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v31 = SecTaskCreateWithAuditToken(0, &token);
  if (v31)
  {
    v32 = v31;
    v11 = sub_1000027EC(v31);
  }

  else
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v33 = sub_1000A3538();
    sub_100001E38(v33, qword_1000C96B8);
    v34 = sub_1000A3518();
    v35 = sub_1000A3CC8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Unable to create SecTask from XPC connection", v36, 2u);
    }

    return 0;
  }

  return v11;
}

id sub_100003154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:&v9];
  if (v4)
  {
    v5 = v9;
  }

  else
  {
    v6 = v9;
    sub_1000A2358();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_10000325C()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_1000032CC()
{
  result = qword_1000C7730;
  if (!qword_1000C7730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C7730);
  }

  return result;
}

id sub_100003318()
{
  v1 = sub_1000A3A78();

  v6 = 0;
  v2 = [v0 initWithBundleIdentifier:v1 error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    sub_1000A2358();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_1000033E4()
{
  result = qword_1000C7738;
  if (!qword_1000C7738)
  {
    type metadata accessor for CFError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C7738);
  }

  return result;
}

uint64_t sub_10000343C(uint64_t a1)
{
  v2 = sub_10000275C(&unk_1000C7740, &qword_1000AB610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000034A4()
{
  v0 = sub_10000EDB8(&off_1000BDD48);
  result = swift_arrayDestroy();
  qword_1000C7750 = v0;
  return result;
}

uint64_t sub_1000034F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100003534(int a1, const char *a2)
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v4 = sub_1000A3538();
  sub_100001E38(v4, qword_1000C96B8);
  oslog = sub_1000A3518();
  v5 = sub_1000A3CA8();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a1;
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 8u);
  }
}

uint64_t sub_100003634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100003658, 0, 0);
}

uint64_t sub_100003658()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = qword_1000C95F0;
  *(v0 + 40) = qword_1000C95F0;

  [v1 auditToken];
  *(v0 + 48) = v4;
  *(v0 + 64) = v5;

  return _swift_task_switch(sub_100003724, v2, 0);
}

uint64_t sub_100003724()
{
  v1 = v0[5];
  sub_100002AD0(v0[6], v0[7], v0[8], v0[9]);

  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1000037D8;
  v3 = v0[2];

  return sub_100001FAC();
}

uint64_t sub_1000037D8()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 88) = v4;
  *v4 = v3;
  v4[1] = sub_100003918;
  v5 = *(v1 + 16);

  return sub_1000021CC();
}

uint64_t sub_100003918()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 96) = v4;
  *v4 = v3;
  v4[1] = sub_100003A58;
  v5 = *(v1 + 16);

  return sub_1000024D4();
}

uint64_t sub_100003A58()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return _swift_task_switch(sub_100003B54, 0, 0);
}

uint64_t sub_100003B54()
{
  v1 = v0[4];
  *(v0[3] + OBJC_IVAR____TtC16EnergyKitService23CombinedServiceDelegate_isInitialized) = 1;
  dispatch_group_leave(v1);
  v2 = v0[1];

  return v2();
}

uint64_t sub_100003CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_100003CD8, 0, 0);
}

uint64_t sub_100003CD8()
{
  v36 = v0;
  if (sub_100041830(v0[3], v0[4], *(v0[7] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v1 = v0[4];
    v2 = sub_1000A3538();
    sub_100001E38(v2, qword_1000C96B8);

    v3 = sub_1000A3518();
    v4 = sub_1000A3CB8();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[3];
      v5 = v0[4];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v35[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1000954AC(v6, v5, v35);
      _os_log_impl(&_mh_execute_header, v3, v4, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v7, 0xCu);
      sub_10000F7B8(v8);
    }

    v34 = (v0[5] + *v0[5]);
    v9 = *(v0[5] + 4);
    v10 = swift_task_alloc();
    v0[8] = v10;
    *v10 = v0;
    v11 = sub_10000428C;
LABEL_13:
    v10[1] = v11;
    v21 = v0[6];

    return v34(v0 + 2);
  }

  if (sub_100017DF8(*(v0[7] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v12 = v0[4];
    v13 = sub_1000A3538();
    sub_100001E38(v13, qword_1000C96B8);

    v14 = sub_1000A3518();
    v15 = sub_1000A3CB8();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = v0[3];
      v16 = v0[4];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1000954AC(v17, v16, v35);
      _os_log_impl(&_mh_execute_header, v14, v15, "[TCC-Proxy] Method '%s' authorized - forwarding", v18, 0xCu);
      sub_10000F7B8(v19);
    }

    v34 = (v0[5] + *v0[5]);
    v20 = *(v0[5] + 4);
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v11 = sub_1000043D4;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v23 = v0[4];
  v24 = sub_1000A3538();
  sub_100001E38(v24, qword_1000C96B8);

  v25 = sub_1000A3518();
  v26 = sub_1000A3CC8();

  if (os_log_type_enabled(v25, v26))
  {
    v28 = v0[3];
    v27 = v0[4];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v35[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_1000954AC(v28, v27, v35);
    _os_log_impl(&_mh_execute_header, v25, v26, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v29, 0xCu);
    sub_10000F7B8(v30);
  }

  v31 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v31 - 8) + 104))(v32, enum case for EnergyKitError.permissionDenied(_:), v31);
  swift_willThrow();
  v33 = v0[1];

  return v33();
}

uint64_t sub_10000428C()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1000043BC;
  }

  else
  {
    v3 = sub_1000043A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000043D4()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1000044E8;
  }

  else
  {
    v3 = sub_100015448;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100004500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[26] = a2;
  return _swift_task_switch(sub_100004528, 0, 0);
}

uint64_t sub_100004528()
{
  v37 = v0;
  if (sub_100041830(v0[26], v0[27], *(v0[28] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v1 = v0[27];
    v2 = sub_1000A3538();
    sub_100001E38(v2, qword_1000C96B8);

    v3 = sub_1000A3518();
    v4 = sub_1000A3CB8();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[26];
      v5 = v0[27];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v36[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1000954AC(v6, v5, v36);
      _os_log_impl(&_mh_execute_header, v3, v4, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v7, 0xCu);
      sub_10000F7B8(v8);
    }

    v9 = v0 + 10;
    v10 = v0[30];
    v11 = *(v0[29] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v0[10] = v0;
    v0[11] = sub_100004B14;
    v12 = swift_continuation_init();
    v0[25] = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    v0[22] = v12;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v13 = &unk_1000BE0B0;
LABEL_13:
    v0[20] = sub_100033DAC;
    v0[21] = v13;
    [v11 setMockOptionsWithOptions:v10 completionHandler:v0 + 18];

    return _swift_continuation_await(v9);
  }

  if (sub_100017DF8(*(v0[28] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v14 = v0[27];
    v15 = sub_1000A3538();
    sub_100001E38(v15, qword_1000C96B8);

    v16 = sub_1000A3518();
    v17 = sub_1000A3CB8();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = v0[26];
      v18 = v0[27];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1000954AC(v19, v18, v36);
      _os_log_impl(&_mh_execute_header, v16, v17, "[TCC-Proxy] Method '%s' authorized - forwarding", v20, 0xCu);
      sub_10000F7B8(v21);
    }

    v9 = v0 + 2;
    v10 = v0[30];
    v11 = *(v0[29] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v0[2] = v0;
    v0[3] = sub_100004C58;
    v22 = swift_continuation_init();
    v0[25] = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    v0[22] = v22;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v13 = &unk_1000BE088;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v23 = v0[27];
  v24 = sub_1000A3538();
  sub_100001E38(v24, qword_1000C96B8);

  v25 = sub_1000A3518();
  v26 = sub_1000A3CC8();

  if (os_log_type_enabled(v25, v26))
  {
    v28 = v0[26];
    v27 = v0[27];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_1000954AC(v28, v27, v36);
    _os_log_impl(&_mh_execute_header, v25, v26, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v29, 0xCu);
    sub_10000F7B8(v30);
  }

  v31 = v0[29];
  v32 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v32 - 8) + 104))(v33, enum case for EnergyKitError.permissionDenied(_:), v32);
  swift_willThrow();

  v34 = v0[1];

  return v34();
}

uint64_t sub_100004B14()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100004BF4, 0, 0);
}

uint64_t sub_100004BF4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100004C58()
{
  v2 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10001544C, 0, 0);
}

uint64_t sub_100004D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[26] = a2;
  return _swift_task_switch(sub_100004D60, 0, 0);
}

uint64_t sub_100004D60()
{
  v38 = v0;
  if (sub_100041830(v0[26], v0[27], *(v0[28] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v1 = v0[27];
    v2 = sub_1000A3538();
    sub_100001E38(v2, qword_1000C96B8);

    v3 = sub_1000A3518();
    v4 = sub_1000A3CB8();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[26];
      v5 = v0[27];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v37[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1000954AC(v6, v5, v37);
      _os_log_impl(&_mh_execute_header, v3, v4, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v7, 0xCu);
      sub_10000F7B8(v8);
    }

    v9 = v0 + 10;
    v10 = v0[30];
    v11 = *(v0[29] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v0[10] = v0;
    v0[11] = sub_100005350;
    v12 = swift_continuation_init();
    v0[25] = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    v0[22] = v12;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v13 = &unk_1000BDF20;
LABEL_13:
    v0[20] = sub_100033DAC;
    v0[21] = v13;
    [v11 setUpEKSandboxWithSandboxExtension:v10 completionHandler:v0 + 18];

    return _swift_continuation_await(v9);
  }

  if (sub_100017DF8(*(v0[28] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v14 = v0[27];
    v15 = sub_1000A3538();
    sub_100001E38(v15, qword_1000C96B8);

    v16 = sub_1000A3518();
    v17 = sub_1000A3CB8();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = v0[26];
      v18 = v0[27];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1000954AC(v19, v18, v37);
      _os_log_impl(&_mh_execute_header, v16, v17, "[TCC-Proxy] Method '%s' authorized - forwarding", v20, 0xCu);
      sub_10000F7B8(v21);
    }

    v9 = v0 + 2;
    v10 = v0[30];
    v11 = *(v0[29] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v0[2] = v0;
    v0[3] = sub_100005498;
    v22 = swift_continuation_init();
    v0[25] = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    v0[22] = v22;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v13 = &unk_1000BDEF8;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v23 = v0[27];
  v24 = sub_1000A3538();
  sub_100001E38(v24, qword_1000C96B8);

  v25 = sub_1000A3518();
  v26 = sub_1000A3CC8();

  if (os_log_type_enabled(v25, v26))
  {
    v28 = v0[26];
    v27 = v0[27];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_1000954AC(v28, v27, v37);
    _os_log_impl(&_mh_execute_header, v25, v26, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v29, 0xCu);
    sub_10000F7B8(v30);
  }

  v32 = v0[29];
  v31 = v0[30];
  v33 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v33 - 8) + 104))(v34, enum case for EnergyKitError.permissionDenied(_:), v33);
  swift_willThrow();

  v35 = v0[1];

  return v35();
}

uint64_t sub_100005350()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100005430, 0, 0);
}

uint64_t sub_100005430()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100005498()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10001543C, 0, 0);
}

void sub_100005578(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  if (sub_100041830(a1, a2, *(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v12 = sub_1000A3538();
    sub_100001E38(v12, qword_1000C96B8);

    v13 = sub_1000A3518();
    v14 = sub_1000A3CB8();

    if (os_log_type_enabled(v13, v14))
    {
      v40 = a6;
      v15 = a4;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v34 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1000954AC(a1, a2, &v34);
      _os_log_impl(&_mh_execute_header, v13, v14, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v16, 0xCu);
      sub_10000F7B8(v17);

      a4 = v15;
      a6 = v40;
    }

    v18 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v38 = a5;
    v39 = a6;
    v34 = _NSConcreteStackBlock;
    v35 = 1107296256;
    v19 = &unk_1000BECE0;
LABEL_13:
    v36 = sub_100015434;
    v37 = v19;
    v26 = _Block_copy(&v34);

    [v18 energyVenuesWithReply:{v26, v34, v35}];
    _Block_release(v26);

    return;
  }

  if (sub_100017DF8(*(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v20 = sub_1000A3538();
    sub_100001E38(v20, qword_1000C96B8);

    v21 = sub_1000A3518();
    v22 = sub_1000A3CB8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v40 = a6;
      v24 = a4;
      v25 = swift_slowAlloc();
      v34 = v25;
      *v23 = 136315138;
      *(v23 + 4) = sub_1000954AC(a1, a2, &v34);
      _os_log_impl(&_mh_execute_header, v21, v22, "[TCC-Proxy] Method '%s' authorized - forwarding", v23, 0xCu);
      sub_10000F7B8(v25);
      a4 = v24;
      a6 = v40;
    }

    v18 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v38 = a5;
    v39 = a6;
    v34 = _NSConcreteStackBlock;
    v35 = 1107296256;
    v19 = &unk_1000BECB8;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v27 = sub_1000A3538();
  sub_100001E38(v27, qword_1000C96B8);

  v28 = sub_1000A3518();
  v29 = sub_1000A3CC8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1000954AC(a1, a2, &v34);
    _os_log_impl(&_mh_execute_header, v28, v29, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v30, 0xCu);
    sub_10000F7B8(v31);
  }

  v32 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v32 - 8) + 104))(v33, enum case for EnergyKitError.permissionDenied(_:), v32);
  swift_willThrow();
}

void sub_100005AC8(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  if (sub_100041830(a1, a2, *(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v12 = sub_1000A3538();
    sub_100001E38(v12, qword_1000C96B8);

    v13 = sub_1000A3518();
    v14 = sub_1000A3CB8();

    if (os_log_type_enabled(v13, v14))
    {
      v40 = a6;
      v15 = a4;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v34 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1000954AC(a1, a2, &v34);
      _os_log_impl(&_mh_execute_header, v13, v14, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v16, 0xCu);
      sub_10000F7B8(v17);

      a4 = v15;
      a6 = v40;
    }

    v18 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v38 = a5;
    v39 = a6;
    v34 = _NSConcreteStackBlock;
    v35 = 1107296256;
    v19 = &unk_1000BEBF0;
LABEL_13:
    v36 = sub_100008AE8;
    v37 = v19;
    v26 = _Block_copy(&v34);

    [v18 createFirstHomeWithReply:{v26, v34, v35}];
    _Block_release(v26);

    return;
  }

  if (sub_100017DF8(*(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v20 = sub_1000A3538();
    sub_100001E38(v20, qword_1000C96B8);

    v21 = sub_1000A3518();
    v22 = sub_1000A3CB8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v40 = a6;
      v24 = a4;
      v25 = swift_slowAlloc();
      v34 = v25;
      *v23 = 136315138;
      *(v23 + 4) = sub_1000954AC(a1, a2, &v34);
      _os_log_impl(&_mh_execute_header, v21, v22, "[TCC-Proxy] Method '%s' authorized - forwarding", v23, 0xCu);
      sub_10000F7B8(v25);
      a4 = v24;
      a6 = v40;
    }

    v18 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v38 = a5;
    v39 = a6;
    v34 = _NSConcreteStackBlock;
    v35 = 1107296256;
    v19 = &unk_1000BEBC8;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v27 = sub_1000A3538();
  sub_100001E38(v27, qword_1000C96B8);

  v28 = sub_1000A3518();
  v29 = sub_1000A3CC8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1000954AC(a1, a2, &v34);
    _os_log_impl(&_mh_execute_header, v28, v29, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v30, 0xCu);
    sub_10000F7B8(v31);
  }

  v32 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v32 - 8) + 104))(v33, enum case for EnergyKitError.permissionDenied(_:), v32);
  swift_willThrow();
}

void sub_100006018(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (sub_100041830(a1, a2, *(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v46 = a6;
    v14 = sub_1000A3538();
    sub_100001E38(v14, qword_1000C96B8);

    v15 = sub_1000A3518();
    v16 = sub_1000A3CB8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      v18 = a4;
      v19 = a5;
      v20 = aBlock;
      *v17 = 136315138;
      *(v17 + 4) = sub_1000954AC(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v15, v16, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v17, 0xCu);
      sub_10000F7B8(v20);
      a5 = v19;
      a4 = v18;
    }

    v21 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v44 = v46;
    v45 = a7;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v22 = &unk_1000BEA88;
LABEL_13:
    v42 = sub_1000034F0;
    v43 = v22;
    v30 = _Block_copy(&aBlock);

    [v21 setUpSandboxWithSandboxExtension:a5 reply:v30];
    _Block_release(v30);

    goto LABEL_19;
  }

  if (sub_100017DF8(*(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v46 = a6;
    v23 = sub_1000A3538();
    sub_100001E38(v23, qword_1000C96B8);

    v24 = sub_1000A3518();
    v25 = sub_1000A3CB8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      v27 = a4;
      v28 = a5;
      v29 = aBlock;
      *v26 = 136315138;
      *(v26 + 4) = sub_1000954AC(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v24, v25, "[TCC-Proxy] Method '%s' authorized - forwarding", v26, 0xCu);
      sub_10000F7B8(v29);
      a5 = v28;
      a4 = v27;
    }

    v21 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v44 = v46;
    v45 = a7;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v22 = &unk_1000BEA60;
    goto LABEL_13;
  }

  v31 = a4;
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v32 = sub_1000A3538();
  sub_100001E38(v32, qword_1000C96B8);

  v33 = sub_1000A3518();
  v34 = sub_1000A3CC8();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = a5;
    v37 = swift_slowAlloc();
    aBlock = v37;
    *v35 = 136315138;
    *(v35 + 4) = sub_1000954AC(a1, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v33, v34, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v35, 0xCu);
    sub_10000F7B8(v37);
    a5 = v36;
  }

  v38 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v38 - 8) + 104))(v39, enum case for EnergyKitError.permissionDenied(_:), v38);
  swift_willThrow();

LABEL_19:
}

void sub_10000658C(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8, uint64_t a9)
{
  if (sub_100041830(a1, a2, *(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    v50 = a4;
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v42 = a7;
    v18 = sub_1000A3538();
    sub_100001E38(v18, qword_1000C96B8);

    v19 = sub_1000A3518();
    v20 = sub_1000A3CB8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      v22 = aBlock;
      *v21 = 136315138;
      *(v21 + 4) = sub_1000954AC(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v19, v20, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v21, 0xCu);
      sub_10000F7B8(v22);
    }

    a4 = v50;
    v23 = *&v50[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v48 = a5;
    v49 = a6;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_100008944;
    v47 = v42;
    v24 = _Block_copy(&aBlock);

    [v23 *a8];
LABEL_13:
    _Block_release(v24);

    return;
  }

  if (sub_100017DF8(*(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    v43 = a5;
    v50 = v9;
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v25 = a9;
    v26 = sub_1000A3538();
    sub_100001E38(v26, qword_1000C96B8);

    v27 = sub_1000A3518();
    v28 = sub_1000A3CB8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = a8;
      v31 = a4;
      v32 = swift_slowAlloc();
      aBlock = v32;
      *v29 = 136315138;
      *(v29 + 4) = sub_1000954AC(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v27, v28, "[TCC-Proxy] Method '%s' authorized - forwarding", v29, 0xCu);
      sub_10000F7B8(v32);
      a4 = v31;
      a8 = v30;
      v25 = a9;
    }

    v33 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v48 = v43;
    v49 = a6;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_100008944;
    v47 = v25;
    v24 = _Block_copy(&aBlock);

    [v33 *a8];
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v34 = sub_1000A3538();
  sub_100001E38(v34, qword_1000C96B8);

  v35 = sub_1000A3518();
  v36 = sub_1000A3CC8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = a4;
    v39 = swift_slowAlloc();
    aBlock = v39;
    *v37 = 136315138;
    *(v37 + 4) = sub_1000954AC(a1, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v35, v36, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v37, 0xCu);
    sub_10000F7B8(v39);
    a4 = v38;
  }

  v40 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v40 - 8) + 104))(v41, enum case for EnergyKitError.permissionDenied(_:), v40);
  swift_willThrow();
}

void sub_100006B28(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  if (sub_100041830(a1, a2, *(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    v50 = a7;
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v16 = sub_1000A3538();
    sub_100001E38(v16, qword_1000C96B8);

    v17 = sub_1000A3518();
    v18 = sub_1000A3CB8();

    if (os_log_type_enabled(v17, v18))
    {
      v42 = a4;
      v19 = a5;
      v20 = swift_slowAlloc();
      v21 = a6;
      v22 = swift_slowAlloc();
      aBlock = v22;
      *v20 = 136315138;
      *(v20 + 4) = sub_1000954AC(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v17, v18, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v20, 0xCu);
      sub_10000F7B8(v22);
      a6 = v21;

      a5 = v19;
      a4 = v42;
    }

    v23 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v48 = v50;
    v49 = a8;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v24 = &unk_1000BE948;
LABEL_13:
    v46 = sub_100009914;
    v47 = v24;
    v32 = _Block_copy(&aBlock);

    [v23 gridIDWithLocation:a5 sandboxExtension:a6 reply:v32];
    _Block_release(v32);

    return;
  }

  if (sub_100017DF8(*(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    v50 = a7;
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v25 = sub_1000A3538();
    sub_100001E38(v25, qword_1000C96B8);

    v26 = sub_1000A3518();
    v27 = sub_1000A3CB8();

    if (os_log_type_enabled(v26, v27))
    {
      v43 = a4;
      v28 = a5;
      v29 = swift_slowAlloc();
      v30 = a6;
      v31 = swift_slowAlloc();
      aBlock = v31;
      *v29 = 136315138;
      *(v29 + 4) = sub_1000954AC(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v26, v27, "[TCC-Proxy] Method '%s' authorized - forwarding", v29, 0xCu);
      sub_10000F7B8(v31);
      a6 = v30;

      a5 = v28;
      a4 = v43;
    }

    v23 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v48 = v50;
    v49 = a8;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v24 = &unk_1000BE920;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v33 = sub_1000A3538();
  sub_100001E38(v33, qword_1000C96B8);

  v34 = sub_1000A3518();
  v35 = sub_1000A3CC8();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    v37 = a4;
    v38 = a5;
    v39 = aBlock;
    *v36 = 136315138;
    *(v36 + 4) = sub_1000954AC(a1, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v34, v35, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v36, 0xCu);
    sub_10000F7B8(v39);
    a5 = v38;
    a4 = v37;
  }

  v40 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v40 - 8) + 104))(v41, enum case for EnergyKitError.permissionDenied(_:), v40);
  swift_willThrow();
}

void sub_1000070C0(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v47 = a6;
  if (sub_100041830(a1, a2, *(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    v39 = a8;
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v15 = sub_1000A3538();
    sub_100001E38(v15, qword_1000C96B8);

    v16 = sub_1000A3518();
    v17 = sub_1000A3CB8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = a5;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1000954AC(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v16, v17, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v19, 0xCu);
      sub_10000F7B8(v20);

      a5 = v18;
    }

    v21 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v22 = sub_1000A3A78();
    v45 = v39;
    v46 = a9;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v23 = &unk_1000BE880;
LABEL_13:
    v43 = sub_100015434;
    v44 = v23;
    v30 = _Block_copy(&aBlock);

    [v21 electricityGuidanceWithQuery:a5 gridID:v22 reply:v30];
    _Block_release(v30);

    return;
  }

  if (sub_100017DF8(*(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    v40 = a8;
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v24 = sub_1000A3538();
    sub_100001E38(v24, qword_1000C96B8);

    v25 = sub_1000A3518();
    v26 = sub_1000A3CB8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = a5;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1000954AC(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v25, v26, "[TCC-Proxy] Method '%s' authorized - forwarding", v28, 0xCu);
      sub_10000F7B8(v29);

      a5 = v27;
    }

    v21 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v22 = sub_1000A3A78();
    v45 = v40;
    v46 = a9;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v23 = &unk_1000BE858;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v31 = sub_1000A3538();
  sub_100001E38(v31, qword_1000C96B8);

  v32 = sub_1000A3518();
  v33 = sub_1000A3CC8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = a5;
    v36 = swift_slowAlloc();
    aBlock = v36;
    *v34 = 136315138;
    *(v34 + 4) = sub_1000954AC(a1, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v32, v33, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v34, 0xCu);
    sub_10000F7B8(v36);
    a5 = v35;
  }

  v37 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v37 - 8) + 104))(v38, enum case for EnergyKitError.permissionDenied(_:), v37);
  swift_willThrow();
}

void sub_100007694(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, void *a5, void *a6, void *a7, int a8, uint64_t a9, uint64_t a10)
{
  LODWORD(v53) = a8;
  v17 = a10;
  if (sub_100041830(a1, a2, *(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v18 = sub_1000A3538();
    sub_100001E38(v18, qword_1000C96B8);

    v19 = sub_1000A3518();
    v20 = sub_1000A3CB8();

    if (os_log_type_enabled(v19, v20))
    {
      v44 = a6;
      v21 = a5;
      v22 = swift_slowAlloc();
      v23 = a7;
      v24 = swift_slowAlloc();
      aBlock = v24;
      *v22 = 136315138;
      *(v22 + 4) = sub_1000954AC(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v19, v20, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v22, 0xCu);
      sub_10000F7B8(v24);
      a7 = v23;
      v17 = a10;

      a5 = v21;
      a6 = v44;
    }

    v25 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v51 = a9;
    v52 = v17;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v26 = &unk_1000BE808;
LABEL_13:
    v49 = sub_1000034F0;
    v50 = v26;
    v34 = _Block_copy(&aBlock);

    [v25 batchedWholeHomeInsightsWithRequest:a5 endpoint:a6 ekSandboxExtension:a7 wholeHomeOptimization:v53 & 1 completion:v34];
    _Block_release(v34);

    return;
  }

  if (sub_100017DF8(*(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v27 = sub_1000A3538();
    sub_100001E38(v27, qword_1000C96B8);

    v28 = sub_1000A3518();
    v29 = sub_1000A3CB8();

    if (os_log_type_enabled(v28, v29))
    {
      v45 = a6;
      v30 = a5;
      v31 = swift_slowAlloc();
      v32 = a7;
      v33 = swift_slowAlloc();
      aBlock = v33;
      *v31 = 136315138;
      *(v31 + 4) = sub_1000954AC(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v28, v29, "[TCC-Proxy] Method '%s' authorized - forwarding", v31, 0xCu);
      sub_10000F7B8(v33);
      a7 = v32;
      v17 = a10;

      a5 = v30;
      a6 = v45;
    }

    v25 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v51 = a9;
    v52 = v17;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v26 = &unk_1000BE7E0;
    goto LABEL_13;
  }

  v53 = a10;
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v35 = sub_1000A3538();
  sub_100001E38(v35, qword_1000C96B8);

  v36 = sub_1000A3518();
  v37 = sub_1000A3CC8();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v46 = a4;
    v39 = a6;
    v40 = a5;
    v41 = swift_slowAlloc();
    aBlock = v41;
    *v38 = 136315138;
    *(v38 + 4) = sub_1000954AC(a1, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v36, v37, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v38, 0xCu);
    sub_10000F7B8(v41);
    a5 = v40;
    a6 = v39;
    a4 = v46;
  }

  v42 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v42 - 8) + 104))(v43, enum case for EnergyKitError.permissionDenied(_:), v42);
  swift_willThrow();
}

void sub_100007C54(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v52 = a8;
  v16 = a9;
  if (sub_100041830(a1, a2, *(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v17 = sub_1000A3538();
    sub_100001E38(v17, qword_1000C96B8);

    v18 = sub_1000A3518();
    v19 = sub_1000A3CB8();

    if (os_log_type_enabled(v18, v19))
    {
      v43 = a6;
      v20 = a5;
      v21 = swift_slowAlloc();
      v22 = a7;
      v23 = swift_slowAlloc();
      aBlock = v23;
      *v21 = 136315138;
      *(v21 + 4) = sub_1000954AC(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v18, v19, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v21, 0xCu);
      sub_10000F7B8(v23);
      a7 = v22;
      v16 = a9;

      a5 = v20;
      a6 = v43;
    }

    v24 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v50 = v52;
    v51 = v16;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_1000034F0;
    v49 = &unk_1000BE790;
    v25 = _Block_copy(&aBlock);

    [v24 batchedDeviceInsightsWithRequest:a5 endpoint:a6 ekSandboxExtension:a7 completion:v25];
LABEL_13:
    _Block_release(v25);

    return;
  }

  if (sub_100017DF8(*(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v26 = sub_1000A3538();
    sub_100001E38(v26, qword_1000C96B8);

    v27 = sub_1000A3518();
    v28 = sub_1000A3CB8();

    if (os_log_type_enabled(v27, v28))
    {
      v44 = a6;
      v29 = a5;
      v30 = swift_slowAlloc();
      v31 = a7;
      v32 = swift_slowAlloc();
      aBlock = v32;
      *v30 = 136315138;
      *(v30 + 4) = sub_1000954AC(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v27, v28, "[TCC-Proxy] Method '%s' authorized - forwarding", v30, 0xCu);
      sub_10000F7B8(v32);
      a7 = v31;
      v16 = a9;

      a5 = v29;
      a6 = v44;
    }

    v33 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v50 = v52;
    v51 = v16;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_1000034F0;
    v49 = &unk_1000BE768;
    v25 = _Block_copy(&aBlock);

    [v33 batchedDeviceInsightsWithRequest:a5 endpoint:a6 ekSandboxExtension:a7 completion:v25];
    goto LABEL_13;
  }

  v52 = a9;
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v34 = sub_1000A3538();
  sub_100001E38(v34, qword_1000C96B8);

  v35 = sub_1000A3518();
  v36 = sub_1000A3CC8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v45 = a4;
    v38 = a6;
    v39 = a5;
    v40 = swift_slowAlloc();
    aBlock = v40;
    *v37 = 136315138;
    *(v37 + 4) = sub_1000954AC(a1, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v35, v36, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v37, 0xCu);
    sub_10000F7B8(v40);
    a5 = v39;
    a6 = v38;
    a4 = v45;
  }

  v41 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v41 - 8) + 104))(v42, enum case for EnergyKitError.permissionDenied(_:), v41);
  swift_willThrow();
}

uint64_t sub_100008250(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  if (sub_100041830(a1, a2, *(v3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v7 = sub_1000A3538();
    sub_100001E38(v7, qword_1000C96B8);

    v8 = sub_1000A3518();
    v9 = sub_1000A3CB8();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1000954AC(a1, a2, &v24);
    _os_log_impl(&_mh_execute_header, v8, v9, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v10, 0xCu);
    sub_10000F7B8(v11);

LABEL_11:

LABEL_12:

    return a3();
  }

  if (sub_100017DF8(*(v3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v12 = sub_1000A3538();
    sub_100001E38(v12, qword_1000C96B8);

    v8 = sub_1000A3518();
    v13 = sub_1000A3CB8();

    if (!os_log_type_enabled(v8, v13))
    {
      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1000954AC(a1, a2, &v24);
    _os_log_impl(&_mh_execute_header, v8, v13, "[TCC-Proxy] Method '%s' authorized - forwarding", v14, 0xCu);
    sub_10000F7B8(v15);

    goto LABEL_11;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v17 = sub_1000A3538();
  sub_100001E38(v17, qword_1000C96B8);

  v18 = sub_1000A3518();
  v19 = sub_1000A3CC8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1000954AC(a1, a2, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v20, 0xCu);
    sub_10000F7B8(v21);
  }

  v22 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v22 - 8) + 104))(v23, enum case for EnergyKitError.permissionDenied(_:), v22);
  return swift_willThrow();
}

void sub_1000086AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v10 = *(a1 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
  isa = sub_1000A24D8().super.isa;
  v13[4] = a3;
  v13[5] = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100015434;
  v13[3] = a5;
  v12 = _Block_copy(v13);

  [v10 *a6];
  _Block_release(v12);
}

uint64_t sub_1000087B0(void *a1, uint64_t a2, uint64_t a3, const void *a4, void (*a5)(char *, id, void *))
{
  v8 = sub_1000A2508();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a4);
  sub_1000A24F8();
  _Block_copy(v13);
  v14 = a1;
  a5(v12, v14, v13);
  _Block_release(v13);
  _Block_release(v13);

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100008944(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_100008AE8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_100008CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
  isa = sub_1000A24D8().super.isa;
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100008D94;
  v9[3] = &unk_1000BEB78;
  v8 = _Block_copy(v9);

  [v6 isCostInclusionConfiguredForGuidanceFor:isa reply:v8];
  _Block_release(v8);
}

void sub_100008D94(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_100008FE8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
  isa = sub_1000A24D8().super.isa;
  v11[4] = a4;
  v11[5] = a5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100008AE8;
  v11[3] = &unk_1000BEB28;
  v10 = _Block_copy(v11);

  [v8 configureCostInclusionForGuidanceWithIsIncluded:a2 & 1 for:isa reply:v10];
  _Block_release(v10);
}

void sub_1000092BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
  isa = sub_1000A24D8().super.isa;
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100008AE8;
  v9[3] = &unk_1000BEAD8;
  v8 = _Block_copy(v9);

  [v6 deleteGridIDAppTrackingFor:isa reply:v8];
  _Block_release(v8);
}

void sub_100009824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
  isa = sub_1000A24D8().super.isa;
  v11[4] = a4;
  v11[5] = a5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100009914;
  v11[3] = &unk_1000BE998;
  v10 = _Block_copy(v11);

  [v8 gridIDWithVenue:isa sandboxExtension:a3 reply:v10];
  _Block_release(v10);
}

uint64_t sub_100009914(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1000A3A88();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

void sub_100009C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a1 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
  isa = sub_1000A24D8().super.isa;
  v12 = sub_1000A3A78();
  v14[4] = a6;
  v14[5] = a7;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100015434;
  v14[3] = &unk_1000BE8D0;
  v13 = _Block_copy(v14);

  [v10 electricityGuidanceWithVenue:isa query:a3 gridID:v12 reply:v13];
  _Block_release(v13);
}

void sub_100009DA8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_10000A57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
  isa = sub_1000A24D8().super.isa;
  v13[4] = a5;
  v13[5] = a6;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10000A67C;
  v13[3] = &unk_1000BE718;
  v12 = _Block_copy(v13);

  [v10 submitLoadEventsWithEvents:a2 venue:isa sandboxExtension:a4 reply:v12];
  _Block_release(v12);
}

void sub_10000A67C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_10000A904(uint64_t a1, uint64_t a2)
{
  v3 = *sub_100013C5C((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_1000A3A88();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = *(*(v3 + 64) + 40);
  *v6 = v4;
  v6[1] = v5;

  return _swift_continuation_resume(v3);
}

uint64_t sub_10000AB0C(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = sub_1000A3A88();
  v4[6] = v7;
  v8 = a2;
  v9 = a4;

  return _swift_task_switch(sub_10000ABA8, 0, 0);
}

uint64_t sub_10000ABA8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  v4 = v2;

  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_10000AC84;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);

  return sub_10000F924(0x6628444964697267, 0xEC000000293A726FLL, v8, v8, v6, v7, v9);
}

uint64_t sub_10000AC84(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 56);
  v6 = *(*v3 + 48);
  v7 = *(*v3 + 24);
  v8 = *v3;
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  *(v4 + 80) = v2;

  if (v2)
  {

    v9 = sub_10000AEA8;
  }

  else
  {
    v10 = *(v4 + 48);
    v11 = *(v4 + 16);

    v9 = sub_10000AE00;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10000AE00()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);

  if (v1)
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v1 = sub_1000A3A78();
  }

  v5 = *(v0 + 32);
  (v5)[2](v5, v1);

  _Block_release(v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10000AEA8()
{
  v1 = v0[10];
  v2 = v0[6];
  v4 = v0[2];
  v3 = v0[3];

  v5 = v0[4];
  v5[2](v5, 0);
  _Block_release(v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_10000B0D8(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a2;
  v9 = a4;
  v10 = a1;

  return _swift_task_switch(sub_10000B170, 0, 0);
}

uint64_t sub_10000B170()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = v2;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_10000B240;
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = *(v0 + 16);

  return sub_100010210(0xD000000000000016, 0x80000001000A5BC0, v7, v7, v9, v8);
}

uint64_t sub_10000B240(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 48);
  v6 = *(*v3 + 32);
  v7 = *(*v3 + 24);
  v8 = *(*v3 + 16);
  v11 = *v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[9] = v2;

  if (v2)
  {
    v9 = sub_10000B464;
  }

  else
  {
    v9 = sub_10000B3AC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10000B3AC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);

  if (v1)
  {
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    v1 = sub_1000A3A78();
  }

  v6 = *(v0 + 40);
  (v6)[2](v6, v1);

  _Block_release(v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10000B464()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);

  v4 = *(v0 + 40);
  v4[2](v4, 0);
  _Block_release(v4);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10000B6AC(int a1, __int16 a2, int a3, void *aBlock, void *a5)
{
  *(v5 + 16) = a5;
  *(v5 + 88) = a2;
  *(v5 + 24) = _Block_copy(aBlock);
  *(v5 + 32) = sub_1000A3A88();
  *(v5 + 40) = v7;
  *(v5 + 48) = sub_1000A3A88();
  *(v5 + 56) = v8;
  v9 = a5;

  return _swift_task_switch(sub_10000B754, 0, 0);
}

uint64_t sub_10000B754()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);

  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_10000B84C;
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);
  v9 = *(v0 + 88);
  v12 = *(v0 + 56);

  return sub_100010A1C(0x65636E6164697567, 0xEF293A6574697328, v8, v8, v6, v7, v9, v5);
}

uint64_t sub_10000B84C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 40);
  v7 = *v2;
  v4[9] = v1;

  v8 = v4[7];
  if (v1)
  {

    v9 = sub_10000BA48;
  }

  else
  {
    v10 = v4[5];
    swift_bridgeObjectRelease_n();

    v4[10] = a1;
    v9 = sub_10000B9C0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10000B9C0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);

  (v2)[2](v2, v1, 0);
  _Block_release(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000BA48()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);

  v5 = sub_1000A2348();

  (v4)[2](v4, 0, v5);

  _Block_release(v4);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10000BC94(__int16 a1, int a2, void *aBlock, void *a4)
{
  *(v4 + 16) = a4;
  *(v4 + 72) = a1;
  *(v4 + 24) = _Block_copy(aBlock);
  *(v4 + 32) = sub_1000A3A88();
  *(v4 + 40) = v6;
  v7 = a4;

  return _swift_task_switch(sub_10000BD24, 0, 0);
}

uint64_t sub_10000BD24()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_10000BDF8;
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 72);

  return sub_1000114D8(0xD000000000000010, 0x80000001000A5B50, v6, v6, v7, v4, v5);
}

uint64_t sub_10000BDF8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v8 = sub_10000BFD4;
  }

  else
  {
    v9 = *(v4 + 40);

    *(v4 + 64) = a1;
    v8 = sub_10000BF4C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10000BF4C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);

  (v2)[2](v2, v1, 0);
  _Block_release(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000BFD4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);

  v4 = sub_1000A2348();

  (v3)[2](v3, 0, v4);

  _Block_release(v3);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10000C20C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = sub_1000A3A88();
  v3[5] = v5;
  v6 = a3;

  return _swift_task_switch(sub_10000C298, 0, 0);
}

uint64_t sub_10000C298()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_10000C364;
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  return sub_100011F2C(0x726F662865746973, 0xEA0000000000293ALL, v6, v6, v4, v5);
}

uint64_t sub_10000C364(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v4 + 40);
  if (v1)
  {

    v10 = sub_10000C568;
  }

  else
  {
    v11 = *(v4 + 40);

    *(v4 + 56) = a1;
    v10 = sub_10000C4E0;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10000C4E0()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 24);
  (v2)[2](v2, v1);
  _Block_release(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000C568()
{
  v1 = *(v0 + 24);
  v1[2](v1, 0);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000C5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_10000C60C, 0, 0);
}

uint64_t sub_10000C60C()
{
  v1 = v0[21];
  v2 = *(v0[20] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
  isa = sub_1000A24D8().super.isa;
  v0[22] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10000C74C;
  v4 = swift_continuation_init();
  v0[17] = sub_10000275C(&qword_1000C7858, &qword_1000AB7B0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100015438;
  v0[13] = &unk_1000BE2E0;
  v0[14] = v4;
  [v2 siteWithHomeID:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000C74C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_10000C8C8;
  }

  else
  {
    v3 = sub_10000C85C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000C85C()
{
  v1 = *(v0 + 176);
  **(v0 + 152) = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000C8C8()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_10000C938(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100013C5C((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    sub_10000275C(&qword_1000C7860, &qword_1000AB7B8);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

uint64_t sub_10000CB98(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_1000A2508();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = _Block_copy(a2);
  sub_1000A24F8();
  v9 = a3;

  return _swift_task_switch(sub_10000CC90, 0, 0);
}

uint64_t sub_10000CC90()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_10000CD80;
  v5 = v0[2];

  return sub_100003CB0(0x6D6F682865746973, 0xED0000293A444965, &unk_1000AB7A0, v3);
}

uint64_t sub_10000CD80(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_10000CF70;
  }

  else
  {
    v8 = *(v4 + 56);
    *(v4 + 80) = a1;

    v7 = sub_10000CEB0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10000CEB0()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  (*(v5 + 8))(v3, v4);
  (v2)[2](v2, v1, 0);
  _Block_release(v2);

  v6 = *(v0 + 40);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10000CF70()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 24);

  (*(v5 + 8))(v4, v6);
  v7 = sub_1000A2348();

  (v3)[2](v3, 0, v7);

  _Block_release(v3);
  v8 = *(v0 + 40);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10000D04C(uint64_t a1)
{
  v1 = *sub_100013C5C((a1 + 32), *(a1 + 56));
  **(*(v1 + 64) + 40) = sub_1000A3A18();

  return _swift_continuation_resume(v1);
}

uint64_t sub_10000D260(void *a1, void *aBlock, void *a3, double a4)
{
  *(v4 + 32) = a3;
  *(v4 + 24) = a4;
  *(v4 + 16) = a1;
  *(v4 + 40) = _Block_copy(aBlock);
  v7 = a1;
  v8 = a3;

  return _swift_task_switch(sub_10000D2F4, 0, 0);
}

uint64_t sub_10000D2F4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_10000D3C4;
  v5 = *(v0 + 32);
  v6 = *(v0 + 24);
  v7 = *(v0 + 16);

  return sub_100012808(0x656E287365746973, 0xEC000000293A7261, v5, v5, v7, v6);
}

uint64_t sub_10000D3C4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  if (v1)
  {

    v9 = sub_10000D5E4;
  }

  else
  {
    *(v4 + 56) = a1;
    v9 = sub_10000D528;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10000D528()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);

  isa = sub_1000A3A08().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10000D5E4()
{
  sub_100089C30(&_swiftEmptyArrayStorage);
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  isa = sub_1000A3A08().super.isa;

  (v1)[2](v1, isa);

  _Block_release(v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10000D6AC(uint64_t a1)
{
  v1 = *sub_100013C5C((a1 + 32), *(a1 + 56));
  **(*(v1 + 64) + 40) = sub_1000A3B68();

  return _swift_continuation_resume(v1);
}

uint64_t sub_10000D890(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_10000D908, 0, 0);
}

uint64_t sub_10000D908()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_10000D9BC;
  v3 = *(v0 + 16);

  return sub_100013024(0x7365746973, 0xE500000000000000, v3, v3);
}

uint64_t sub_10000D9BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v1)
  {

    v8 = sub_10000DBB0;
  }

  else
  {
    *(v4 + 40) = a1;
    v8 = sub_10000DB08;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10000DB08()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  isa = sub_1000A3B48().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10000DBB0()
{
  v1 = *(v0 + 24);

  isa = sub_1000A3B48().super.isa;

  (v1)[2](v1, isa);

  _Block_release(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000DDE0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a3;

  return _swift_task_switch(sub_10000DE5C, 0, 0);
}

uint64_t sub_10000DE5C()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_10000DF1C;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_100004500(v2, 0x4F6B636F4D746573, 0xEE00736E6F697470, v3, v3, v4);
}

uint64_t sub_10000DF1C()
{
  v2 = *(*v1 + 40);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_1000153BC;
  }

  else
  {
    v3 = sub_10000E034;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000E034()
{
  v1 = *(v0 + 32);

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000E0AC(uint64_t a1, uint64_t a2)
{
  v3 = *sub_100013C5C((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

uint64_t sub_10000E27C(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_10000E2F4, 0, 0);
}

uint64_t sub_10000E2F4()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_10000E3B8;
  v3 = *(v0 + 16);

  return sub_100013640(0x4F6B636F4D746567, 0xEE00736E6F697470, v3, v3);
}

uint64_t sub_10000E3B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v1)
  {

    v8 = sub_10000E584;
  }

  else
  {
    *(v4 + 40) = a1;
    v8 = sub_10000E504;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10000E504()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  v2[2](v2, v1);
  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000E584()
{
  v1 = *(v0 + 24);

  v1[2](v1, 0);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000E788(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return _swift_task_switch(sub_10000E814, 0, 0);
}

uint64_t sub_10000E814()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_10000E8D8;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);

  return sub_100004D38(v4, 0x534B457055746573, 0xEE00786F62646E61, v5, v5, v6);
}

uint64_t sub_10000E8D8()
{
  v2 = *(*v1 + 40);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_1000153C0;
  }

  else
  {
    v3 = sub_10000E9F0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000E9F0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v0 + 8);

  return v3();
}

id sub_10000EABC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10000EB78()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000153A8;

  return sub_10000E788(v2, v3, v4);
}

uint64_t sub_10000EC2C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000153A8;

  return sub_1000893CC(v2, v3, v5);
}

uint64_t sub_10000ECEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000153A8;

  return sub_1000894B4(a1, v4, v5, v7);
}

Swift::Int sub_10000EDB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000275C(&qword_1000C7888, qword_1000AB8B8);
    v3 = sub_1000A3E78();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1000A3F88();

      sub_1000A3AC8();
      result = sub_1000A3F98();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1000A3F48();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
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
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10000EF20(void *a1)
{
  v2 = v1;
  v4 = (*(*(sub_10000275C(&qword_1000C8240, &qword_1000AB688) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v49 - v5;
  swift_unknownObjectWeakInit();
  v7 = [a1 processIdentifier];
  v8 = sub_1000A3A78();
  v9 = [a1 valueForEntitlement:v8];

  if (v9)
  {
    sub_1000A3DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  aBlock = v56;
  v52 = v57;
  if (*(&v57 + 1))
  {
    if (swift_dynamicCast())
    {
      v10 = v50;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1000026F4(&aBlock);
  }

  v10 = 0;
LABEL_9:
  v11 = sub_1000A3A78();
  v12 = [a1 valueForEntitlement:v11];

  if (v12)
  {
    sub_1000A3DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  aBlock = v56;
  v52 = v57;
  if (*(&v57 + 1))
  {
    if (swift_dynamicCast())
    {
      v13 = v50;
      goto LABEL_17;
    }
  }

  else
  {
    sub_1000026F4(&aBlock);
  }

  v13 = 0;
LABEL_17:
  v14 = sub_1000A3A78();
  v15 = [a1 valueForEntitlement:v14];

  if (v15)
  {
    sub_1000A3DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  aBlock = v56;
  v52 = v57;
  if (*(&v57 + 1))
  {
    if (swift_dynamicCast())
    {
      if (((v10 | v13) & 1) == 0 && (v50 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_31;
    }
  }

  else
  {
    sub_1000026F4(&aBlock);
  }

  if (((v10 | v13) & 1) == 0)
  {
LABEL_24:
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v16 = sub_1000A3538();
    sub_100001E38(v16, qword_1000C96B8);
    v17 = sub_1000A3518();
    v18 = sub_1000A3CC8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v17, v18, "[TCC-Delegate] Connection rejected - PID %d missing entitlements", v19, 8u);
    }

    v20 = 0;
    goto LABEL_42;
  }

LABEL_31:
  [a1 auditToken];
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v21 = sub_1000A3538();
  sub_100001E38(v21, qword_1000C96B8);
  v22 = sub_1000A3518();
  v23 = sub_1000A3CB8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    *(v24 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v22, v23, "[TCC-Delegate] New connection from PID: %d", v24, 8u);
  }

  v25 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP16EnergyKitService16CombinedProtocol_];
  [a1 setExportedInterface:v25];

  Strong = swift_unknownObjectWeakLoadStrong();
  v27 = objc_allocWithZone(type metadata accessor for CombinedService());
  v28 = sub_100017B84();

  v29 = qword_1000C7558;
  v30 = v28;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = qword_1000C7750;
  v32 = type metadata accessor for TCCValidatingProxy();
  v33 = objc_allocWithZone(v32);
  *&v33[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target] = v30;
  *&v33[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection] = a1;
  *&v33[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods] = v31;
  v55.receiver = v33;
  v55.super_class = v32;

  v34 = a1;
  v35 = objc_msgSendSuper2(&v55, "init");
  [v34 setExportedObject:v35];
  v36 = swift_allocObject();
  *(v36 + 16) = v7;
  v53 = sub_100015094;
  v54 = v36;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v52 = sub_1000034F0;
  *(&v52 + 1) = &unk_1000BEDD0;
  v37 = _Block_copy(&aBlock);

  [v34 setInterruptionHandler:v37];
  _Block_release(v37);
  v38 = swift_allocObject();
  *(v38 + 16) = v7;
  v53 = sub_1000150B8;
  v54 = v38;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v52 = sub_1000034F0;
  *(&v52 + 1) = &unk_1000BEE20;
  v39 = _Block_copy(&aBlock);

  [v34 setInvalidationHandler:v39];
  _Block_release(v39);
  if ((*(v2 + OBJC_IVAR____TtC16EnergyKitService23CombinedServiceDelegate_isInitialized) & 1) == 0)
  {
    v40 = dispatch_group_create();
    dispatch_group_enter(v40);
    v41 = sub_1000A3BE8();
    (*(*(v41 - 8) + 56))(v6, 1, 1, v41);
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v42[4] = v34;
    v42[5] = v2;
    v42[6] = v40;
    v43 = v34;
    v44 = v2;
    v45 = v40;
    sub_1000941D8(0, 0, v6, &unk_1000AB8B0, v42);

    sub_1000A3CE8();
  }

  [v34 resume];
  v17 = sub_1000A3518();
  v46 = sub_1000A3CB8();
  if (os_log_type_enabled(v17, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 67109120;
    *(v47 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v17, v46, "[TCC-Delegate] Accepted connection from PID: %d with universal TCC proxy", v47, 8u);

    v20 = 1;
  }

  else
  {

    v20 = 1;
    v17 = v30;
  }

LABEL_42:

  swift_unknownObjectWeakDestroy();
  return v20;
}

unint64_t sub_10000F760()
{
  result = qword_1000C7830;
  if (!qword_1000C7830)
  {
    sub_1000A3598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C7830);
  }

  return result;
}

uint64_t sub_10000F7B8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000F814(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000F878()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000153A8;

  return sub_10000E27C(v2, v3);
}

uint64_t sub_10000F924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[33] = a6;
  v7[34] = a7;
  v7[31] = a4;
  v7[32] = a5;
  v7[29] = a2;
  v7[30] = a3;
  v7[28] = a1;
  return _swift_task_switch(sub_10000F950, 0, 0);
}

uint64_t sub_10000F950()
{
  v42 = v0;
  v1 = v0 + 26;
  if (sub_100041830(v0[28], v0[29], *(v0[30] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v2 = v0[29];
    v3 = sub_1000A3538();
    sub_100001E38(v3, qword_1000C96B8);

    v4 = sub_1000A3518();
    v5 = sub_1000A3CB8();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[28];
      v6 = v0[29];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v41[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1000954AC(v7, v6, v41);
      _os_log_impl(&_mh_execute_header, v4, v5, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v8, 0xCu);
      sub_10000F7B8(v9);
    }

    v10 = v0 + 10;
    v11 = v0[33];
    v12 = v0[34];
    v13 = v0[32];
    v14 = *(v0[31] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v15 = sub_1000A3A78();
    v0[35] = v15;
    v0[10] = v0;
    v0[15] = v1;
    v0[11] = sub_10000FF70;
    v16 = swift_continuation_init();
    v0[25] = sub_10000275C(&qword_1000C7878, &qword_1000AB870);
    v0[22] = v16;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v17 = &unk_1000BE6C8;
LABEL_13:
    v0[20] = sub_10000A904;
    v0[21] = v17;
    [v14 gridIDFor:v15 ekSandboxExtension:v12 completionHandler:v0 + 18];

    return _swift_continuation_await(v10);
  }

  if (sub_100017DF8(*(v0[30] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v18 = v0[29];
    v19 = sub_1000A3538();
    sub_100001E38(v19, qword_1000C96B8);

    v20 = sub_1000A3518();
    v21 = sub_1000A3CB8();

    if (os_log_type_enabled(v20, v21))
    {
      v23 = v0[28];
      v22 = v0[29];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1000954AC(v23, v22, v41);
      _os_log_impl(&_mh_execute_header, v20, v21, "[TCC-Proxy] Method '%s' authorized - forwarding", v24, 0xCu);
      sub_10000F7B8(v25);
    }

    v10 = v0 + 2;
    v26 = v0[33];
    v12 = v0[34];
    v27 = v0[32];
    v14 = *(v0[31] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v15 = sub_1000A3A78();
    v0[36] = v15;
    v0[2] = v0;
    v0[7] = v1;
    v0[3] = sub_1000100C0;
    v28 = swift_continuation_init();
    v0[25] = sub_10000275C(&qword_1000C7878, &qword_1000AB870);
    v0[22] = v28;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v17 = &unk_1000BE6A0;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v29 = v0[29];
  v30 = sub_1000A3538();
  sub_100001E38(v30, qword_1000C96B8);

  v31 = sub_1000A3518();
  v32 = sub_1000A3CC8();

  if (os_log_type_enabled(v31, v32))
  {
    v34 = v0[28];
    v33 = v0[29];
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v41[0] = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1000954AC(v34, v33, v41);
    _os_log_impl(&_mh_execute_header, v31, v32, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v35, 0xCu);
    sub_10000F7B8(v36);
  }

  v37 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v37 - 8) + 104))(v38, enum case for EnergyKitError.permissionDenied(_:), v37);
  swift_willThrow();
  v39 = v0[1];

  return v39();
}

uint64_t sub_10000FF70()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100010050, 0, 0);
}

uint64_t sub_100010050()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_1000100C0()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_1000101A0, 0, 0);
}

uint64_t sub_1000101A0()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_100010210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[32] = a5;
  v6[33] = a6;
  v6[30] = a3;
  v6[31] = a4;
  v6[28] = a1;
  v6[29] = a2;
  return _swift_task_switch(sub_100010238, 0, 0);
}

uint64_t sub_100010238()
{
  v38 = v0;
  v1 = v0 + 26;
  if (sub_100041830(v0[28], v0[29], *(v0[30] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v2 = v0[29];
    v3 = sub_1000A3538();
    sub_100001E38(v3, qword_1000C96B8);

    v4 = sub_1000A3518();
    v5 = sub_1000A3CB8();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[28];
      v6 = v0[29];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v37[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1000954AC(v7, v6, v37);
      _os_log_impl(&_mh_execute_header, v4, v5, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v8, 0xCu);
      sub_10000F7B8(v9);
    }

    v10 = v0 + 10;
    v11 = v0[32];
    v12 = *(v0[31] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v13 = v0[33];
    v0[10] = v0;
    v0[15] = v1;
    v0[11] = sub_100010840;
    v14 = swift_continuation_init();
    v0[25] = sub_10000275C(&qword_1000C7878, &qword_1000AB870);
    v0[22] = v14;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v15 = &unk_1000BE600;
LABEL_13:
    v0[20] = sub_10000A904;
    v0[21] = v15;
    [v12 gridIDWithLocation:v11 ekSandboxExtension:v13 completionHandler:v0 + 18];

    return _swift_continuation_await(v10);
  }

  if (sub_100017DF8(*(v0[30] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v16 = v0[29];
    v17 = sub_1000A3538();
    sub_100001E38(v17, qword_1000C96B8);

    v18 = sub_1000A3518();
    v19 = sub_1000A3CB8();

    if (os_log_type_enabled(v18, v19))
    {
      v21 = v0[28];
      v20 = v0[29];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1000954AC(v21, v20, v37);
      _os_log_impl(&_mh_execute_header, v18, v19, "[TCC-Proxy] Method '%s' authorized - forwarding", v22, 0xCu);
      sub_10000F7B8(v23);
    }

    v10 = v0 + 2;
    v11 = v0[32];
    v12 = *(v0[31] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v13 = v0[33];
    v0[2] = v0;
    v0[7] = v1;
    v0[3] = sub_10001093C;
    v24 = swift_continuation_init();
    v0[25] = sub_10000275C(&qword_1000C7878, &qword_1000AB870);
    v0[22] = v24;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v15 = &unk_1000BE5D8;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v25 = v0[29];
  v26 = sub_1000A3538();
  sub_100001E38(v26, qword_1000C96B8);

  v27 = sub_1000A3518();
  v28 = sub_1000A3CC8();

  if (os_log_type_enabled(v27, v28))
  {
    v30 = v0[28];
    v29 = v0[29];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_1000954AC(v30, v29, v37);
    _os_log_impl(&_mh_execute_header, v27, v28, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v31, 0xCu);
    sub_10000F7B8(v32);
  }

  v33 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v33 - 8) + 104))(v34, enum case for EnergyKitError.permissionDenied(_:), v33);
  swift_willThrow();
  v35 = v0[1];

  return v35();
}

uint64_t sub_100010840()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100010920, 0, 0);
}

uint64_t sub_10001093C()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_1000153B8, 0, 0);
}

uint64_t sub_100010A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8)
{
  *(v8 + 264) = a8;
  *(v8 + 272) = v10;
  *(v8 + 328) = a7;
  *(v8 + 248) = a5;
  *(v8 + 256) = a6;
  *(v8 + 232) = a3;
  *(v8 + 240) = a4;
  *(v8 + 216) = a1;
  *(v8 + 224) = a2;
  return _swift_task_switch(sub_100010A54, 0, 0);
}

uint64_t sub_100010A54()
{
  v48 = v0;
  v1 = v0 + 208;
  if (sub_100041830(*(v0 + 216), *(v0 + 224), *(*(v0 + 232) + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 224);
    v3 = sub_1000A3538();
    sub_100001E38(v3, qword_1000C96B8);

    v4 = sub_1000A3518();
    v5 = sub_1000A3CB8();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 216);
      v6 = *(v0 + 224);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v47[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1000954AC(v7, v6, v47);
      _os_log_impl(&_mh_execute_header, v4, v5, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v8, 0xCu);
      sub_10000F7B8(v9);
    }

    v10 = v0 + 80;
    v12 = *(v0 + 264);
    v11 = *(v0 + 272);
    v13 = *(v0 + 328);
    v14 = *(v0 + 248);
    v15 = *(v0 + 256);
    v16 = *(*(v0 + 240) + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v17 = sub_1000A3A78();
    *(v0 + 280) = v17;
    v18 = sub_1000A3A78();
    *(v0 + 288) = v18;
    *(v0 + 80) = v0;
    *(v0 + 120) = v1;
    *(v0 + 88) = sub_1000110B8;
    v19 = swift_continuation_init();
    *(v0 + 200) = sub_10000275C(&qword_1000C7870, &qword_1000AB818);
    *(v0 + 176) = v19;
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    v20 = &unk_1000BE538;
LABEL_13:
    *(v0 + 160) = sub_100015438;
    *(v0 + 168) = v20;
    [v16 guidanceWithSite:v17 query:v13 gridID:v18 completionHandler:v0 + 144];

    return _swift_continuation_await(v10);
  }

  if (sub_100017DF8(*(*(v0 + 232) + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 224);
    v22 = sub_1000A3538();
    sub_100001E38(v22, qword_1000C96B8);

    v23 = sub_1000A3518();
    v24 = sub_1000A3CB8();

    if (os_log_type_enabled(v23, v24))
    {
      v26 = *(v0 + 216);
      v25 = *(v0 + 224);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v47[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1000954AC(v26, v25, v47);
      _os_log_impl(&_mh_execute_header, v23, v24, "[TCC-Proxy] Method '%s' authorized - forwarding", v27, 0xCu);
      sub_10000F7B8(v28);
    }

    v10 = v0 + 16;
    v30 = *(v0 + 264);
    v29 = *(v0 + 272);
    v13 = *(v0 + 328);
    v31 = *(v0 + 248);
    v32 = *(v0 + 256);
    v16 = *(*(v0 + 240) + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v17 = sub_1000A3A78();
    *(v0 + 304) = v17;
    v18 = sub_1000A3A78();
    *(v0 + 312) = v18;
    *(v0 + 16) = v0;
    *(v0 + 56) = v1;
    *(v0 + 24) = sub_1000112C8;
    v33 = swift_continuation_init();
    *(v0 + 200) = sub_10000275C(&qword_1000C7870, &qword_1000AB818);
    *(v0 + 176) = v33;
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    v20 = &unk_1000BE510;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v34 = *(v0 + 224);
  v35 = sub_1000A3538();
  sub_100001E38(v35, qword_1000C96B8);

  v36 = sub_1000A3518();
  v37 = sub_1000A3CC8();

  if (os_log_type_enabled(v36, v37))
  {
    v39 = *(v0 + 216);
    v38 = *(v0 + 224);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v47[0] = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_1000954AC(v39, v38, v47);
    _os_log_impl(&_mh_execute_header, v36, v37, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v40, 0xCu);
    sub_10000F7B8(v41);
  }

  v42 = *(v0 + 240);
  v43 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v43 - 8) + 104))(v44, enum case for EnergyKitError.permissionDenied(_:), v43);
  swift_willThrow();

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_1000110B8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 296) = v2;
  if (v2)
  {
    v3 = sub_100011240;
  }

  else
  {
    v3 = sub_1000111C8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000111C8()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 208);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100011240()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[30];
  swift_willThrow();

  v5 = v0[37];
  v6 = v0[1];

  return v6();
}

uint64_t sub_1000112C8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  if (v2)
  {
    v3 = sub_100011450;
  }

  else
  {
    v3 = sub_1000113D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000113D8()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 208);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100011450()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[38];
  v4 = v0[30];
  swift_willThrow();

  v5 = v0[40];
  v6 = v0[1];

  return v6();
}

uint64_t sub_1000114D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 248) = a6;
  *(v7 + 256) = a7;
  *(v7 + 296) = a5;
  *(v7 + 232) = a3;
  *(v7 + 240) = a4;
  *(v7 + 216) = a1;
  *(v7 + 224) = a2;
  return _swift_task_switch(sub_100011504, 0, 0);
}

uint64_t sub_100011504()
{
  v43 = v0;
  v1 = v0 + 208;
  if (sub_100041830(*(v0 + 216), *(v0 + 224), *(*(v0 + 232) + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 224);
    v3 = sub_1000A3538();
    sub_100001E38(v3, qword_1000C96B8);

    v4 = sub_1000A3518();
    v5 = sub_1000A3CB8();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 216);
      v6 = *(v0 + 224);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v42[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1000954AC(v7, v6, v42);
      _os_log_impl(&_mh_execute_header, v4, v5, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v8, 0xCu);
      sub_10000F7B8(v9);
    }

    v10 = v0 + 80;
    v11 = *(v0 + 248);
    v12 = *(v0 + 256);
    v13 = *(v0 + 296);
    v14 = *(*(v0 + 240) + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v15 = sub_1000A3A78();
    *(v0 + 264) = v15;
    *(v0 + 80) = v0;
    *(v0 + 120) = v1;
    *(v0 + 88) = sub_100011B34;
    v16 = swift_continuation_init();
    *(v0 + 200) = sub_10000275C(&qword_1000C7870, &qword_1000AB818);
    *(v0 + 176) = v16;
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    v17 = &unk_1000BE470;
LABEL_13:
    *(v0 + 160) = sub_100015438;
    *(v0 + 168) = v17;
    [v14 guidanceWithQuery:v13 gridID:v15 completionHandler:v0 + 144];

    return _swift_continuation_await(v10);
  }

  if (sub_100017DF8(*(*(v0 + 232) + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 224);
    v19 = sub_1000A3538();
    sub_100001E38(v19, qword_1000C96B8);

    v20 = sub_1000A3518();
    v21 = sub_1000A3CB8();

    if (os_log_type_enabled(v20, v21))
    {
      v23 = *(v0 + 216);
      v22 = *(v0 + 224);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v42[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1000954AC(v23, v22, v42);
      _os_log_impl(&_mh_execute_header, v20, v21, "[TCC-Proxy] Method '%s' authorized - forwarding", v24, 0xCu);
      sub_10000F7B8(v25);
    }

    v10 = v0 + 16;
    v26 = *(v0 + 248);
    v27 = *(v0 + 256);
    v13 = *(v0 + 296);
    v14 = *(*(v0 + 240) + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v15 = sub_1000A3A78();
    *(v0 + 280) = v15;
    *(v0 + 16) = v0;
    *(v0 + 56) = v1;
    *(v0 + 24) = sub_100011D30;
    v28 = swift_continuation_init();
    *(v0 + 200) = sub_10000275C(&qword_1000C7870, &qword_1000AB818);
    *(v0 + 176) = v28;
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    v17 = &unk_1000BE448;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 224);
  v30 = sub_1000A3538();
  sub_100001E38(v30, qword_1000C96B8);

  v31 = sub_1000A3518();
  v32 = sub_1000A3CC8();

  if (os_log_type_enabled(v31, v32))
  {
    v34 = *(v0 + 216);
    v33 = *(v0 + 224);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42[0] = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1000954AC(v34, v33, v42);
    _os_log_impl(&_mh_execute_header, v31, v32, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v35, 0xCu);
    sub_10000F7B8(v36);
  }

  v37 = *(v0 + 240);
  v38 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v38 - 8) + 104))(v39, enum case for EnergyKitError.permissionDenied(_:), v38);
  swift_willThrow();

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_100011B34()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = sub_100011CB8;
  }

  else
  {
    v3 = sub_100011C44;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100011C44()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100011CB8()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[30];
  swift_willThrow();

  v4 = v0[34];
  v5 = v0[1];

  return v5();
}

uint64_t sub_100011D30()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = sub_100011EB4;
  }

  else
  {
    v3 = sub_100011E40;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100011E40()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100011EB4()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[30];
  swift_willThrow();

  v4 = v0[36];
  v5 = v0[1];

  return v5();
}

uint64_t sub_100011F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a5;
  v6[32] = a6;
  v6[29] = a3;
  v6[30] = a4;
  v6[27] = a1;
  v6[28] = a2;
  return _swift_task_switch(sub_100011F54, 0, 0);
}

uint64_t sub_100011F54()
{
  v41 = v0;
  v1 = v0 + 26;
  if (sub_100041830(v0[27], v0[28], *(v0[29] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v2 = v0[28];
    v3 = sub_1000A3538();
    sub_100001E38(v3, qword_1000C96B8);

    v4 = sub_1000A3518();
    v5 = sub_1000A3CB8();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[27];
      v6 = v0[28];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v40[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1000954AC(v7, v6, v40);
      _os_log_impl(&_mh_execute_header, v4, v5, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v8, 0xCu);
      sub_10000F7B8(v9);
    }

    v10 = v0 + 10;
    v11 = v0[31];
    v12 = v0[32];
    v13 = *(v0[30] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v14 = sub_1000A3A78();
    v0[33] = v14;
    v0[10] = v0;
    v0[15] = v1;
    v0[11] = sub_100012570;
    v15 = swift_continuation_init();
    v0[25] = sub_10000275C(&qword_1000C7868, &qword_1000AB7E8);
    v0[22] = v15;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v16 = &unk_1000BE3A8;
LABEL_13:
    v0[20] = sub_100086500;
    v0[21] = v16;
    [v13 siteFor:v14 completionHandler:v0 + 18];

    return _swift_continuation_await(v10);
  }

  if (sub_100017DF8(*(v0[29] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v17 = v0[28];
    v18 = sub_1000A3538();
    sub_100001E38(v18, qword_1000C96B8);

    v19 = sub_1000A3518();
    v20 = sub_1000A3CB8();

    if (os_log_type_enabled(v19, v20))
    {
      v22 = v0[27];
      v21 = v0[28];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1000954AC(v22, v21, v40);
      _os_log_impl(&_mh_execute_header, v19, v20, "[TCC-Proxy] Method '%s' authorized - forwarding", v23, 0xCu);
      sub_10000F7B8(v24);
    }

    v10 = v0 + 2;
    v25 = v0[31];
    v26 = v0[32];
    v13 = *(v0[30] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v14 = sub_1000A3A78();
    v0[34] = v14;
    v0[2] = v0;
    v0[7] = v1;
    v0[3] = sub_1000126BC;
    v27 = swift_continuation_init();
    v0[25] = sub_10000275C(&qword_1000C7868, &qword_1000AB7E8);
    v0[22] = v27;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v16 = &unk_1000BE380;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v28 = v0[28];
  v29 = sub_1000A3538();
  sub_100001E38(v29, qword_1000C96B8);

  v30 = sub_1000A3518();
  v31 = sub_1000A3CC8();

  if (os_log_type_enabled(v30, v31))
  {
    v33 = v0[27];
    v32 = v0[28];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40[0] = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_1000954AC(v33, v32, v40);
    _os_log_impl(&_mh_execute_header, v30, v31, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v34, 0xCu);
    sub_10000F7B8(v35);
  }

  v36 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v36 - 8) + 104))(v37, enum case for EnergyKitError.permissionDenied(_:), v36);
  swift_willThrow();
  v38 = v0[1];

  return v38();
}

uint64_t sub_100012570()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100012650, 0, 0);
}

uint64_t sub_100012650()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000126BC()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10001279C, 0, 0);
}

uint64_t sub_10001279C()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100012808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 256) = a6;
  *(v6 + 240) = a4;
  *(v6 + 248) = a5;
  *(v6 + 224) = a2;
  *(v6 + 232) = a3;
  *(v6 + 216) = a1;
  return _swift_task_switch(sub_100012834, 0, 0);
}

uint64_t sub_100012834()
{
  v38 = v0;
  v1 = v0 + 26;
  if (sub_100041830(*(v0 + 27), *(v0 + 28), *(*(v0 + 29) + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 28);
    v3 = sub_1000A3538();
    sub_100001E38(v3, qword_1000C96B8);

    v4 = sub_1000A3518();
    v5 = sub_1000A3CB8();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 27);
      v6 = *(v0 + 28);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v37 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1000954AC(v7, v6, &v37);
      _os_log_impl(&_mh_execute_header, v4, v5, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v8, 0xCu);
      sub_10000F7B8(v9);
    }

    v10 = v0 + 10;
    v11 = *(v0 + 31);
    v12 = *(*(v0 + 30) + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v13 = v0[32];
    *(v0 + 10) = v0;
    *(v0 + 15) = v1;
    *(v0 + 11) = sub_100012E48;
    v14 = swift_continuation_init();
    *(v0 + 25) = sub_10000275C(&qword_1000C7850, &qword_1000AB770);
    *(v0 + 22) = v14;
    *(v0 + 18) = _NSConcreteStackBlock;
    *(v0 + 19) = 1107296256;
    v15 = &unk_1000BE240;
LABEL_13:
    *(v0 + 20) = sub_10000D04C;
    *(v0 + 21) = v15;
    [v12 sitesWithNear:v11 radius:v0 + 18 completionHandler:v13];

    return _swift_continuation_await(v10);
  }

  if (sub_100017DF8(*(*(v0 + 29) + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 28);
    v17 = sub_1000A3538();
    sub_100001E38(v17, qword_1000C96B8);

    v18 = sub_1000A3518();
    v19 = sub_1000A3CB8();

    if (os_log_type_enabled(v18, v19))
    {
      v21 = *(v0 + 27);
      v20 = *(v0 + 28);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1000954AC(v21, v20, &v37);
      _os_log_impl(&_mh_execute_header, v18, v19, "[TCC-Proxy] Method '%s' authorized - forwarding", v22, 0xCu);
      sub_10000F7B8(v23);
    }

    v10 = v0 + 2;
    v11 = *(v0 + 31);
    v12 = *(*(v0 + 30) + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v13 = v0[32];
    *(v0 + 2) = v0;
    *(v0 + 7) = v1;
    *(v0 + 3) = sub_100012F44;
    v24 = swift_continuation_init();
    *(v0 + 25) = sub_10000275C(&qword_1000C7850, &qword_1000AB770);
    *(v0 + 22) = v24;
    *(v0 + 18) = _NSConcreteStackBlock;
    *(v0 + 19) = 1107296256;
    v15 = &unk_1000BE218;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v25 = *(v0 + 28);
  v26 = sub_1000A3538();
  sub_100001E38(v26, qword_1000C96B8);

  v27 = sub_1000A3518();
  v28 = sub_1000A3CC8();

  if (os_log_type_enabled(v27, v28))
  {
    v30 = *(v0 + 27);
    v29 = *(v0 + 28);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37 = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_1000954AC(v30, v29, &v37);
    _os_log_impl(&_mh_execute_header, v27, v28, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v31, 0xCu);
    sub_10000F7B8(v32);
  }

  v33 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v33 - 8) + 104))(v34, enum case for EnergyKitError.permissionDenied(_:), v33);
  swift_willThrow();
  v35 = *(v0 + 1);

  return v35();
}

uint64_t sub_100012E48()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100012F28, 0, 0);
}

uint64_t sub_100012F44()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100015450, 0, 0);
}

uint64_t sub_100013024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a3;
  v4[30] = a4;
  v4[27] = a1;
  v4[28] = a2;
  return _swift_task_switch(sub_100013048, 0, 0);
}

uint64_t sub_100013048()
{
  v36 = v0;
  v1 = v0 + 26;
  if (sub_100041830(v0[27], v0[28], *(v0[29] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v2 = v0[28];
    v3 = sub_1000A3538();
    sub_100001E38(v3, qword_1000C96B8);

    v4 = sub_1000A3518();
    v5 = sub_1000A3CB8();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[27];
      v6 = v0[28];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v35[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1000954AC(v7, v6, v35);
      _os_log_impl(&_mh_execute_header, v4, v5, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v8, 0xCu);
      sub_10000F7B8(v9);
    }

    v10 = *(v0[30] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v11 = v0 + 10;
    v0[10] = v0;
    v0[15] = v1;
    v0[11] = sub_100012F44;
    v12 = swift_continuation_init();
    v0[25] = sub_10000275C(&qword_1000C7848, &qword_1000AB740);
    v0[22] = v12;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v13 = &unk_1000BE178;
LABEL_13:
    v0[20] = sub_10000D6AC;
    v0[21] = v13;
    [v10 sitesWithCompletionHandler:v0 + 18];

    return _swift_continuation_await(v11);
  }

  if (sub_100017DF8(*(v0[29] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v14 = v0[28];
    v15 = sub_1000A3538();
    sub_100001E38(v15, qword_1000C96B8);

    v16 = sub_1000A3518();
    v17 = sub_1000A3CB8();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = v0[27];
      v18 = v0[28];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1000954AC(v19, v18, v35);
      _os_log_impl(&_mh_execute_header, v16, v17, "[TCC-Proxy] Method '%s' authorized - forwarding", v20, 0xCu);
      sub_10000F7B8(v21);
    }

    v10 = *(v0[30] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v11 = v0 + 2;
    v0[2] = v0;
    v0[7] = v1;
    v0[3] = sub_100012F44;
    v22 = swift_continuation_init();
    v0[25] = sub_10000275C(&qword_1000C7848, &qword_1000AB740);
    v0[22] = v22;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v13 = &unk_1000BE150;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v23 = v0[28];
  v24 = sub_1000A3538();
  sub_100001E38(v24, qword_1000C96B8);

  v25 = sub_1000A3518();
  v26 = sub_1000A3CC8();

  if (os_log_type_enabled(v25, v26))
  {
    v28 = v0[27];
    v27 = v0[28];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v35[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_1000954AC(v28, v27, v35);
    _os_log_impl(&_mh_execute_header, v25, v26, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v29, 0xCu);
    sub_10000F7B8(v30);
  }

  v31 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v31 - 8) + 104))(v32, enum case for EnergyKitError.permissionDenied(_:), v31);
  swift_willThrow();
  v33 = v0[1];

  return v33();
}

uint64_t sub_100013640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a3;
  v4[30] = a4;
  v4[27] = a1;
  v4[28] = a2;
  return _swift_task_switch(sub_100013664, 0, 0);
}

uint64_t sub_100013664()
{
  v36 = v0;
  v1 = v0 + 26;
  if (sub_100041830(v0[27], v0[28], *(v0[29] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v2 = v0[28];
    v3 = sub_1000A3538();
    sub_100001E38(v3, qword_1000C96B8);

    v4 = sub_1000A3518();
    v5 = sub_1000A3CB8();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[27];
      v6 = v0[28];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v35[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1000954AC(v7, v6, v35);
      _os_log_impl(&_mh_execute_header, v4, v5, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v8, 0xCu);
      sub_10000F7B8(v9);
    }

    v10 = *(v0[30] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v11 = v0 + 10;
    v0[10] = v0;
    v0[15] = v1;
    v0[11] = sub_100012F44;
    v12 = swift_continuation_init();
    v0[25] = sub_10000275C(&qword_1000C7840, &qword_1000AB6E8);
    v0[22] = v12;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v13 = &unk_1000BDFE8;
LABEL_13:
    v0[20] = sub_10000E0AC;
    v0[21] = v13;
    [v10 getMockOptionsWithCompletionHandler:v0 + 18];

    return _swift_continuation_await(v11);
  }

  if (sub_100017DF8(*(v0[29] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v14 = v0[28];
    v15 = sub_1000A3538();
    sub_100001E38(v15, qword_1000C96B8);

    v16 = sub_1000A3518();
    v17 = sub_1000A3CB8();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = v0[27];
      v18 = v0[28];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1000954AC(v19, v18, v35);
      _os_log_impl(&_mh_execute_header, v16, v17, "[TCC-Proxy] Method '%s' authorized - forwarding", v20, 0xCu);
      sub_10000F7B8(v21);
    }

    v10 = *(v0[30] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v11 = v0 + 2;
    v0[2] = v0;
    v0[7] = v1;
    v0[3] = sub_100012F44;
    v22 = swift_continuation_init();
    v0[25] = sub_10000275C(&qword_1000C7840, &qword_1000AB6E8);
    v0[22] = v22;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v13 = &unk_1000BDFC0;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v23 = v0[28];
  v24 = sub_1000A3538();
  sub_100001E38(v24, qword_1000C96B8);

  v25 = sub_1000A3518();
  v26 = sub_1000A3CC8();

  if (os_log_type_enabled(v25, v26))
  {
    v28 = v0[27];
    v27 = v0[28];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v35[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_1000954AC(v28, v27, v35);
    _os_log_impl(&_mh_execute_header, v25, v26, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v29, 0xCu);
    sub_10000F7B8(v30);
  }

  v31 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v31 - 8) + 104))(v32, enum case for EnergyKitError.permissionDenied(_:), v31);
  swift_willThrow();
  v33 = v0[1];

  return v33();
}

void *sub_100013C5C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100013CA0()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100013CE0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000153A8;

  return sub_10000DDE0(v2, v3, v4);
}

uint64_t sub_100013D98()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100013DD8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000153A8;

  return sub_10000D890(v2, v3);
}

uint64_t sub_100013E88()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100013ED0()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v5 = *(v0 + 4);
  v4 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000153A8;

  return sub_10000D260(v2, v5, v4, v3);
}

uint64_t sub_100013F94(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  *(swift_allocObject() + 16) = a3;
  _Block_copy(a3);
  if (sub_10007D188())
  {
    __chkstk_darwin("yVenueContainer8@NSError16");
    sub_100008250(0xD000000000000011, v4 | 0x8000000000000000, sub_100015054);
  }

  else
  {
    v5 = sub_1000A3598();
    sub_10000F760();
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for EnergyKitError.locationServicesDenied(_:), v5);
    v7 = sub_1000A2348();
    (a3)[2](a3, 0, v7);
  }
}

uint64_t sub_100014190(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  *(swift_allocObject() + 16) = a3;
  _Block_copy(a3);
  if (sub_10007D188())
  {
    __chkstk_darwin("yVenuesContainer8@NSError16");
    sub_100008250(0xD000000000000014, v4 | 0x8000000000000000, sub_100015024);
  }

  else
  {
    v5 = sub_1000A3598();
    sub_10000F760();
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for EnergyKitError.locationServicesDenied(_:), v5);
    v7 = sub_1000A2348();
    (a3)[2](a3, 0, v7);
  }
}

uint64_t sub_10001438C(void *a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  if (sub_10007D188())
  {
    v5 = a1;

    sub_100005578(0x6556796772656E65, 0xEC0000007365756ELL, v5, v5, sub_10001501C, v4);
  }

  else
  {
    v6 = sub_1000A3598();
    sub_10000F760();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for EnergyKitError.locationServicesDenied(_:), v6);
    v8 = sub_1000A2348();
    (a2)[2](a2, 0, v8);
  }
}

uint64_t sub_10001452C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  *(swift_allocObject() + 16) = a4;
  _Block_copy(a4);
  if (sub_10007D188())
  {
    __chkstk_darwin(v5);
    sub_100008250(0x7628444964697267, 0xEE00293A65756E65, sub_100014F78);
  }

  else
  {
    v6 = sub_1000A3598();
    sub_10000F760();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for EnergyKitError.locationServicesDenied(_:), v6);
    v8 = sub_1000A2348();
    (a4)[2](a4, 0, v8);
  }
}

uint64_t sub_100014738()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000153A8;

  return sub_10000CB98(v2, v3, v4);
}

uint64_t sub_1000147EC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014898;

  return sub_10000C5E8(a1, v5, v4);
}

uint64_t sub_100014898()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10001498C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000149D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000153A8;

  return sub_10000C20C(v2, v3, v4);
}

uint64_t sub_100014A88()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100014AD0()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000153A8;

  return sub_10000BC94(v5, v2, v3, v4);
}

uint64_t sub_100014B94()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100014BE4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000153A8;

  return sub_10000B6AC(v2, v6, v3, v4, v5);
}

uint64_t sub_100014CB4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000153A8;

  return sub_10000B0D8(v2, v3, v5, v4);
}

uint64_t sub_100014D74()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100014DC4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000153A8;

  return sub_10000AB0C(v2, v3, v5, v4);
}

uint64_t sub_100014E84()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100014EC4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014F28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000150DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001512C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014898;

  return sub_100003634(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100015454()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1000154B8()
{
  v0 = sub_1000A2AD8();
  sub_100015578(v0, qword_1000C95F8);
  sub_100001E38(v0, qword_1000C95F8);
  sub_1000155DC();
  return sub_1000A3FA8();
}

uint64_t sub_100015524()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t *sub_100015578(uint64_t a1, uint64_t *a2)
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

unint64_t sub_1000155DC()
{
  result = qword_1000C7A40;
  if (!qword_1000C7A40)
  {
    sub_1000A2AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C7A40);
  }

  return result;
}

uint64_t sub_100015634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v48;
  v8[8] = v49;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_1000A34C8();
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v11 = *(v10 + 64) + 15;
  v8[11] = swift_task_alloc();
  v12 = sub_1000A3498();
  v8[12] = v12;
  v13 = *(v12 - 8);
  v8[13] = v13;
  v14 = *(v13 + 64) + 15;
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v15 = sub_1000A34B8();
  v8[17] = v15;
  v16 = *(v15 - 8);
  v8[18] = v16;
  v17 = *(v16 + 64) + 15;
  v8[19] = swift_task_alloc();
  v18 = sub_1000A22A8();
  v8[20] = v18;
  v19 = *(v18 - 8);
  v8[21] = v19;
  v20 = *(v19 + 64) + 15;
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v21 = sub_1000A3938();
  v8[24] = v21;
  v22 = *(v21 - 8);
  v8[25] = v22;
  v23 = *(v22 + 64) + 15;
  v8[26] = swift_task_alloc();
  v24 = sub_1000A38F8();
  v8[27] = v24;
  v25 = *(v24 - 8);
  v8[28] = v25;
  v26 = *(v25 + 64) + 15;
  v8[29] = swift_task_alloc();
  v27 = sub_1000A3318();
  v8[30] = v27;
  v28 = *(v27 - 8);
  v8[31] = v28;
  v29 = *(v28 + 64) + 15;
  v8[32] = swift_task_alloc();
  v30 = sub_1000A3988();
  v8[33] = v30;
  v31 = *(v30 - 8);
  v8[34] = v31;
  v32 = *(v31 + 64) + 15;
  v8[35] = swift_task_alloc();
  v33 = *(*(sub_10000275C(&qword_1000C7AF0, qword_1000AB9C0) - 8) + 64) + 15;
  v8[36] = swift_task_alloc();
  v34 = sub_1000A25A8();
  v8[37] = v34;
  v35 = *(v34 - 8);
  v8[38] = v35;
  v36 = *(v35 + 64) + 15;
  v8[39] = swift_task_alloc();
  v37 = sub_1000A2518();
  v8[40] = v37;
  v38 = *(v37 - 8);
  v8[41] = v38;
  v39 = *(v38 + 64) + 15;
  v8[42] = swift_task_alloc();
  v40 = sub_1000A2578();
  v8[43] = v40;
  v41 = *(v40 - 8);
  v8[44] = v41;
  v42 = *(v41 + 64) + 15;
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v43 = sub_1000A2508();
  v8[47] = v43;
  v44 = *(v43 - 8);
  v8[48] = v44;
  v45 = *(v44 + 64) + 15;
  v8[49] = swift_task_alloc();

  return _swift_task_switch(sub_100015B64, 0, 0);
}

uint64_t sub_100015B64()
{
  v1 = v0[46];
  v2 = v0[41];
  v3 = v0[42];
  v4 = v0[40];
  v5 = v0[38];
  v6 = v0[36];
  v36 = (v0[48] + 16);
  v37 = v0[37];
  v35 = *v36;
  (*v36)(v0[49], v0[2], v0[47]);
  EventsQueryEngine = type metadata accessor for LoadEventsQueryEngine(0);
  v8 = *(EventsQueryEngine + 48);
  v9 = *(EventsQueryEngine + 52);
  v10 = swift_allocObject();
  v0[50] = v10;
  swift_defaultActor_initialize();
  v11 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_decoder;
  v12 = sub_1000A2338();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v10 + v11) = sub_1000A2328();
  (*(v2 + 104))(v3, enum case for Calendar.Identifier.gregorian(_:), v4);
  sub_1000A2528();
  (*(v2 + 8))(v3, v4);
  sub_1000A2598();
  v15 = (*(v5 + 48))(v6, 1, v37);
  if (v15 == 1)
  {
    __break(1u);
  }

  else
  {
    v18 = v0[49];
    v19 = v0[46];
    v20 = v0[47];
    v21 = v0[44];
    v38 = v0[43];
    v33 = v0[7];
    v34 = v0[8];
    v22 = v0[6];
    v32 = v0[5];
    v23 = v0[3];
    v24 = v0[4];
    (*(v0[38] + 32))(v0[39], v0[36], v0[37]);
    sub_1000A2558();
    v35(v10 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_siteID, v18, v20);
    v25 = (v10 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_appID);
    *v25 = v23;
    v25[1] = v24;
    v26 = (v10 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_deviceID);
    *v26 = v32;
    v26[1] = v22;
    v27 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_calendar;
    v28 = *(v21 + 16);
    v0[51] = v28;
    v0[52] = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v28(v10 + v27, v19, v38);
    *(v10 + 120) = v33;
    *(v10 + 128) = v34;
    v29 = qword_1000C7568;

    v30 = v33;

    if (v29 != -1)
    {
      swift_once();
    }

    v16 = qword_1000C9648;
    v0[53] = qword_1000C9648;
    v15 = sub_100015E10;
    v17 = 0;
  }

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_100015E10()
{
  v1 = *(*(v0 + 424) + 128);
  v2 = sub_10004060C();
  v3 = [v2 newBackgroundContext];
  *(v0 + 432) = v3;
  v4 = sub_1000A3A78();
  [v3 setTransactionAuthor:v4];

  [v3 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v3 setUndoManager:0];
  [v3 setShouldRefreshAfterSave:1];
  [v3 setStalenessInterval:0.0];
  [v3 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_100015F4C, 0, 0);
}

uint64_t sub_100015F4C()
{
  v1 = v0[50];
  v2 = v0[34];
  v3 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[31];
  v13 = v0[30];
  v14 = v0[29];
  v15 = v0[28];
  v16 = v0[27];
  v17 = v0[26];
  v18 = v0[25];
  v19 = v0[24];
  v7 = v0[7];
  *(v1 + 136) = v0[54];
  v8 = sub_1000A3848();
  (*(v2 + 104))(v3, enum case for ElectricityFlowDirection.exported(_:), v4);
  v9 = sub_1000A3978();
  (*(v2 + 8))(v3, v4);
  v10 = &enum case for IntervalBlockPayload.FlowDirection.reverse(_:);
  if (v9 != v8)
  {
    v10 = &enum case for IntervalBlockPayload.FlowDirection.delivered(_:);
  }

  (*(v6 + 104))(v5, *v10, v13);
  v11 = sub_1000A3308();
  (*(v6 + 8))(v5, v13);
  *(v1 + 112) = v11;
  sub_1000A3838();
  sub_1000A38E8();
  (*(v15 + 32))(v1 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_granularity, v14, v16);
  sub_1000A3888();
  sub_1000A3928();
  (*(v18 + 32))(v1 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options, v17, v19);

  return _swift_task_switch(sub_100016138, v1, 0);
}

uint64_t sub_100016138()
{
  v16 = v0[51];
  v17 = v0[52];
  v1 = v0[50];
  v2 = v0[48];
  v20 = v0[47];
  v21 = v0[49];
  v3 = v0[45];
  v5 = v0[43];
  v4 = v0[44];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v18 = v0[20];
  v19 = v0[46];
  v9 = v0[7];
  type metadata accessor for InsightBucketBoundaries();
  sub_1000A3868();
  v10 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_granularity;
  v16(v3, v1 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_calendar, v5);
  v11 = v1 + v10;
  v12 = v6;
  sub_10004B42C(v11, v3, 0, v6);
  v13 = *(v4 + 8);
  v13(v3, v5);
  v14 = *(v8 + 8);
  v14(v7, v18);
  v14(v12, v18);
  v13(v19, v5);
  (*(v2 + 8))(v21, v20);

  return _swift_task_switch(sub_1000162B4, 0, 0);
}

uint64_t sub_1000162B4()
{
  v1 = v0[19];
  v2 = v0[16];
  sub_1000A2B58();
  sub_1000A34A8();
  sub_1000A3478();
  v3 = sub_1000A34A8();
  v4 = sub_1000A3D48();
  if (sub_1000A3DB8())
  {
    v5 = v0[16];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_1000A3488();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "StreamProcess", "", v6, 2u);
  }

  v9 = v0[15];
  v8 = v0[16];
  v10 = v0[12];
  v11 = v0[13];

  (*(v11 + 16))(v9, v8, v10);
  v12 = sub_1000A34F8();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v0[55] = sub_1000A34E8();
  v15 = swift_task_alloc();
  v0[56] = v15;
  *v15 = v0;
  v15[1] = sub_100016438;
  v16 = v0[50];

  return sub_1000225B8();
}

uint64_t sub_100016438()
{
  v2 = *(*v1 + 448);
  v5 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = sub_100016844;
  }

  else
  {
    v3 = sub_10001654C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001654C()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 152);
  v3 = *(v0 + 112);
  v4 = *(v0 + 56);
  v5 = sub_1000A34A8();
  sub_1000A34D8();
  v6 = sub_1000A3D38();
  if (sub_1000A3DB8())
  {
    v7 = *(v0 + 440);
    v9 = *(v0 + 80);
    v8 = *(v0 + 88);
    v10 = *(v0 + 72);

    sub_1000A3508();

    if ((*(v9 + 88))(v8, v10) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v11 = 0;
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
      v12 = "granularity: %lu";
      v11 = 1;
    }

    v13 = *(v0 + 112);
    v14 = *(v0 + 56);
    v15 = swift_slowAlloc();
    *v15 = 0;
    *(v15 + 1) = v11;
    *(v15 + 2) = 2048;
    *(v15 + 4) = sub_1000A3838();

    v16 = sub_1000A3488();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v16, "StreamProcess", v12, v15, 0xCu);
  }

  else
  {
  }

  v17 = v5;
  v18 = *(v0 + 440);
  v19 = *(v0 + 400);
  v30 = *(v0 + 392);
  v31 = *(v0 + 368);
  v32 = *(v0 + 360);
  v33 = *(v0 + 336);
  v34 = *(v0 + 312);
  v35 = *(v0 + 288);
  v36 = *(v0 + 280);
  v37 = *(v0 + 256);
  v38 = *(v0 + 232);
  v39 = *(v0 + 208);
  v40 = *(v0 + 184);
  v41 = *(v0 + 176);
  v20 = *(v0 + 144);
  v21 = *(v0 + 152);
  v22 = *(v0 + 128);
  v23 = *(v0 + 136);
  v24 = *(v0 + 112);
  v26 = *(v0 + 96);
  v25 = *(v0 + 104);
  v42 = *(v0 + 120);
  v43 = *(v0 + 88);

  v27 = *(v25 + 8);
  v27(v24, v26);
  v27(v22, v26);
  (*(v20 + 8))(v21, v23);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100016844()
{
  v1 = v0[55];
  v3 = v0[49];
  v2 = v0[50];
  v4 = v0[46];
  v14 = v0[45];
  v15 = v0[42];
  v16 = v0[39];
  v17 = v0[36];
  v18 = v0[35];
  v19 = v0[32];
  v20 = v0[29];
  v21 = v0[26];
  v22 = v0[23];
  v23 = v0[22];
  v5 = v0[18];
  v6 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v24 = v0[15];
  v25 = v0[14];
  v9 = v0[12];
  v10 = v0[13];
  v26 = v0[11];

  (*(v10 + 8))(v8, v9);
  (*(v5 + 8))(v6, v7);

  v11 = v0[1];
  v12 = v0[57];

  return v11();
}

uint64_t sub_100016A00@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100016A94@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100016C94(uint64_t a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100016D48;

  return sub_100017378(a1);
}

uint64_t sub_100016D48()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v3 = *(v5 + 8);

  return v3();
}

void sub_100016E68()
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v0 = sub_1000A3538();
  sub_100001E38(v0, qword_1000C96B8);
  v1 = sub_1000A3518();
  v2 = sub_1000A3CB8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[MockOptions] Taking extended lifetime", v3, 2u);
  }
}

uint64_t sub_1000170BC(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100017164;

  return sub_1000176A4();
}

uint64_t sub_100017164(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v4[2](v4, a1);
  _Block_release(v4);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_10001728C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000172CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014898;

  return sub_1000170BC(v2);
}

uint64_t sub_100017378(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_1000A2AD8();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100017438, 0, 0);
}

uint64_t sub_100017438()
{
  *(v0 + 72) = os_transaction_create();
  sub_100016E68();
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 80) = qword_1000C95F0;

  return _swift_task_switch(sub_100017518, v1, 0);
}

uint64_t sub_100017518()
{
  *(v0 + 88) = *(*(v0 + 80) + 145);

  return _swift_task_switch(sub_100017588, 0, 0);
}

uint64_t sub_100017588()
{
  if (*(v0 + 88))
  {
    if (qword_1000C7560 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    v5 = *(v0 + 40);
    v6 = sub_100001E38(v3, qword_1000C95F8);
    sub_1000A2AB8();
    swift_beginAccess();
    (*(v4 + 40))(v6, v1, v3);
    swift_endAccess();
  }

  else
  {
    v7 = *(v0 + 72);
  }

  swift_unknownObjectRelease();
  v8 = *(v0 + 64);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000176A4()
{
  v1 = sub_1000A2AD8();
  v0[5] = v1;
  v2 = *(v1 - 8);
  v0[6] = v2;
  v3 = *(v2 + 64) + 15;
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_100017760, 0, 0);
}

uint64_t sub_100017760()
{
  *(v0 + 64) = os_transaction_create();
  sub_100016E68();
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 72) = qword_1000C95F0;

  return _swift_task_switch(sub_100017840, v1, 0);
}

uint64_t sub_100017840()
{
  *(v0 + 80) = *(*(v0 + 72) + 145);

  return _swift_task_switch(sub_1000178B0, 0, 0);
}

uint64_t sub_1000178B0()
{
  if (*(v0 + 80) == 1)
  {
    if (qword_1000C7560 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 56);
    v1 = *(v0 + 64);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    v5 = sub_100001E38(v3, qword_1000C95F8);
    swift_beginAccess();
    (*(v4 + 16))(v2, v5, v3);
    v6 = sub_1000A2AC8();
    swift_unknownObjectRelease();
    (*(v4 + 8))(v2, v3);
  }

  else
  {
    v7 = *(v0 + 64);
    swift_unknownObjectRelease();
    v6 = 0;
  }

  v8 = *(v0 + 56);

  v9 = *(v0 + 8);

  return v9(v6);
}

uint64_t sub_1000179E8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100017A28()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000153A8;

  return sub_100016C94(v2, v3);
}

id sub_100017B1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CombinedService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100017B84()
{
  v1 = v0;
  swift_unknownObjectWeakInit();
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v2 = sub_1000A3538();
  sub_100001E38(v2, qword_1000C96B8);
  v3 = sub_1000A3518();
  v4 = sub_1000A3CB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Creating EnergyKitService", v5, 2u);
  }

  swift_unknownObjectWeakAssign();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for CombinedService();
  return objc_msgSendSuper2(&v7, "init");
}

void sub_100017CD0(id a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    [a1 auditToken];
    v4 = v10;
    v5 = v11;
  }

  else
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v6 = sub_1000A3538();
    sub_100001E38(v6, qword_1000C96B8);
    v7 = sub_1000A3518();
    v8 = sub_1000A3CC8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "[AuditTokenValidator] No XPC connection provided", v9, 2u);
    }

    v4 = 0uLL;
    v5 = 0uLL;
  }

  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = a1 == 0;
}

uint64_t sub_100017DF8(void *a1)
{
  v2 = sub_1000A2CF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100017CD0(a1, v24);
  if (v25)
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v7 = sub_1000A3538();
    sub_100001E38(v7, qword_1000C96B8);
    v8 = sub_1000A3518();
    v9 = sub_1000A3CC8();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_7;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "[AuditTokenValidator] Failed to extract audit token";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v8, v9, v11, v10, 2u);

LABEL_7:

    return 0;
  }

  v22 = v24[0];
  v23 = v24[1];
  (*(v3 + 104))(v6, enum case for EnergyKitFeatures.termsAndConditions2025(_:), v2);
  v13 = sub_1000A2CE8();
  result = (*(v3 + 8))(v6, v2);
  if (v13)
  {
    if (!kTCCServiceEnergyKitGuidance)
    {
      __break(1u);
      return result;
    }

    v14 = kTCCServiceEnergyKitGuidance;
    v21[0] = v22;
    v21[1] = v23;
    v15 = TCCAccessCheckAuditToken();

    if (!v15)
    {
      if (qword_1000C7570 != -1)
      {
        swift_once();
      }

      v20 = sub_1000A3538();
      sub_100001E38(v20, qword_1000C96B8);
      v8 = sub_1000A3518();
      v9 = sub_1000A3CC8();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_7;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "[AuditTokenValidator] TCC access denied for connection";
      goto LABEL_6;
    }
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v16 = sub_1000A3538();
  sub_100001E38(v16, qword_1000C96B8);
  v17 = sub_1000A3518();
  v18 = sub_1000A3CB8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "[AuditTokenValidator] TCC access validated for connection", v19, 2u);
  }

  return 1;
}

uint64_t sub_100018150(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000275C(&qword_1000C7D58, &qword_1000ABB20);
  __chkstk_darwin(((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = &v15 - v5;
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v7 = sub_1000A3538();
  sub_100001E38(v7, qword_1000C96B8);
  v8 = sub_1000A3518();
  v9 = sub_1000A3CA8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "[CoreDataInsightStream] Setup coredata insight stream", v10, 2u);
  }

  v11 = sub_10000275C(&unk_1000C7CA0, qword_1000ABAF0);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  v13 = OBJC_IVAR____TtC16EnergyKitService21CoreDataInsightStream_continuation;
  swift_beginAccess();
  sub_10001877C(v6, a2 + v13);
  return swift_endAccess();
}

uint64_t sub_10001833C()
{
  v1 = v0;
  v2 = sub_10000275C(&unk_1000C7CA0, qword_1000ABAF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = &v15 - v4;
  v6 = sub_10000275C(&qword_1000C7D58, &qword_1000ABB20);
  __chkstk_darwin(((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = &v15 - v7;
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v9 = sub_1000A3538();
  sub_100001E38(v9, qword_1000C96B8);
  v10 = sub_1000A3518();
  v11 = sub_1000A3CA8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[CoreDataInsightStream] Marking continuation as finished", v12, 2u);
  }

  v13 = OBJC_IVAR____TtC16EnergyKitService21CoreDataInsightStream_continuation;
  swift_beginAccess();
  sub_1000187EC(v1 + v13, v8);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    return sub_10001885C(v8);
  }

  (*(v3 + 16))(v5, v8, v2);
  sub_10001885C(v8);
  sub_1000A3C08();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1000185A0()
{
  sub_10001885C(v0 + OBJC_IVAR____TtC16EnergyKitService21CoreDataInsightStream_continuation);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for CoreDataInsightStream()
{
  result = qword_1000C7C88;
  if (!qword_1000C7C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100018634()
{
  sub_1000186D0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000186D0()
{
  if (!qword_1000C7C98)
  {
    sub_100018734(&unk_1000C7CA0, qword_1000ABAF0);
    v0 = sub_1000A3DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000C7C98);
    }
  }
}

uint64_t sub_100018734(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10001877C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000275C(&qword_1000C7D58, &qword_1000ABB20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000187EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000275C(&qword_1000C7D58, &qword_1000ABB20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001885C(uint64_t a1)
{
  v2 = sub_10000275C(&qword_1000C7D58, &qword_1000ABB20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000188C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  return _swift_task_switch(sub_1000188E8, 0, 0);
}

uint64_t sub_1000188E8()
{
  if (v0[2])
  {
    v1 = sub_1000A39B8();
  }

  else
  {
    v1 = &_swiftEmptyArrayStorage;
  }

  v0[5] = v1;
  sub_1000A35D8();
  v2 = async function pointer to static SandboxExtension.withResources<A>(resources:_:)[1];
  v3 = swift_task_alloc();
  v0[6] = v3;
  v4 = sub_10000275C(&qword_1000C7D60, &qword_1000ABB40);
  *v3 = v0;
  v3[1] = sub_1000189EC;

  return static SandboxExtension.withResources<A>(resources:_:)(v0 + 7, v1, &unk_1000ABB78, 0, v4);
}

uint64_t sub_1000189EC()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  v5 = *(v2 + 40);
  if (v0)
  {

    v6 = sub_100019FF0;
  }

  else
  {

    v6 = sub_100018B34;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100018B34()
{
  v1 = *(v0 + 32);
  (*(v0 + 24))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100018CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_100018D84;

  return sub_100018EEC();
}

uint64_t sub_100018D84(char a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_100018E84, 0, 0);
}

uint64_t sub_100018E84()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 40));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100018F0C()
{
  v1 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong;
    v5 = sub_100017DF8(v3);
  }

  else
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v6 = sub_1000A3538();
    sub_100001E38(v6, qword_1000C96B8);
    v4 = sub_1000A3518();
    v7 = sub_1000A3CC8();
    if (os_log_type_enabled(v4, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, v7, "[VenueOperations] No XPC connection available for TCC validation", v8, 2u);
    }

    v5 = 0;
  }

  v9 = *(v0 + 8);

  return v9(v5 & 1);
}

uint64_t sub_1000191C8()
{
  if (qword_1000C7578 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C96D0;
  *(v0 + 16) = qword_1000C96D0;

  return _swift_task_switch(sub_100019260, v1, 0);
}

uint64_t sub_100019260()
{
  v1 = *(v0 + 16);
  if (*(v1 + 113))
  {
    return (*(v0 + 8))();
  }

  else
  {
    return _swift_task_switch(sub_100019298, v1, 0);
  }
}

uint64_t sub_100019298()
{
  v1 = *(v0 + 16);
  *(v1 + 113) = 1;
  return _swift_task_switch(sub_1000192BC, v1, 0);
}

uint64_t sub_1000192E4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    v2 = sub_1000193E0;
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    sub_10004ABF8();
    objc_autoreleasePoolPop(v3);
    v4 = *(v0 + 16);
    type metadata accessor for ServiceSandbox();
    sub_10004AB68();

    v2 = sub_1000193B8;
    v1 = v4;
  }

  return _swift_task_switch(v2, v1, 0);
}

uint64_t sub_1000193FC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100019FF8;

  return sub_1000191AC();
}

uint64_t sub_10001948C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10001951C;

  return sub_10001962C();
}

uint64_t sub_10001951C()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = 0;
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100019648()
{
  if (qword_1000C7578 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C96D0;
  *(v0 + 16) = qword_1000C96D0;

  return _swift_task_switch(sub_1000196E0, v1, 0);
}

uint64_t sub_1000196E0()
{
  v1 = *(v0 + 16);
  if (*(v1 + 113))
  {
    return (*(v0 + 8))();
  }

  else
  {
    return _swift_task_switch(sub_100019718, v1, 0);
  }
}

uint64_t sub_100019718()
{
  v1 = *(v0 + 16);
  *(v1 + 113) = 1;
  return _swift_task_switch(sub_10001973C, v1, 0);
}

uint64_t sub_100019764()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    v2 = sub_100019FFC;
  }

  else
  {
    type metadata accessor for ServiceSandbox();
    sub_10004AB68();

    v2 = sub_1000197F8;
  }

  return _swift_task_switch(v2, v1, 0);
}

uint64_t sub_1000199A8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return _swift_task_switch(sub_100019A34, 0, 0);
}

uint64_t sub_100019A34()
{
  if (v0[2])
  {
    v1 = sub_1000A2BF8();
  }

  else
  {
    v1 = &_swiftEmptyArrayStorage;
  }

  v0[5] = v1;
  sub_1000A2BC8();
  v2 = async function pointer to static EKSandboxExtension.withResources<A>(resources:_:)[1];
  v3 = swift_task_alloc();
  v0[6] = v3;
  v4 = sub_10000275C(&qword_1000C7D60, &qword_1000ABB40);
  *v3 = v0;
  v3[1] = sub_100019B38;

  return static EKSandboxExtension.withResources<A>(resources:_:)(v0 + 7, v1, &unk_1000ABB38, 0, v4);
}

uint64_t sub_100019B38()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  v5 = *(v2 + 40);
  if (v0)
  {

    v6 = sub_1000153C0;
  }

  else
  {

    v6 = sub_10000E9F0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100019C80()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100019CC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000153A8;

  return sub_1000199A8(v2, v3, v4);
}

uint64_t sub_100019D80()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019DB8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100019E00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000153A8;

  return sub_100018CF0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100019EC8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100019F18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014898;

  return sub_1000188C4(a1, v4, v5, v6, v7, v9, v8);
}

void sub_10001A004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1000A2348();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_10001A08C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1000A2348();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_10001A0F0(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1000A2348();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_10001A160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_10001A1F8;

  return sub_10001B850(a5);
}

uint64_t sub_10001A1F8(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10001A2F8, 0, 0);
}

uint64_t sub_10001A2F8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  (*(v0 + 16))(v1, 0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10001A3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_10001A440;

  return sub_10001C1F0(a5);
}

uint64_t sub_10001A440(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10002257C, 0, 0);
}

uint64_t sub_10001A57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_10001A60C;

  return sub_10001D968();
}

uint64_t sub_10001A60C(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10001A70C, 0, 0);
}

uint64_t sub_10001A70C()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(v1, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10001A7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_100018D84;

  return sub_10001EE6C();
}

uint64_t sub_10001A89C(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = &v20 - v12;
  v14 = _Block_copy(a3);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = sub_1000A3BE8();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = a6;
  v17[6] = v15;
  v18 = a1;
  sub_1000941D8(0, 0, v13, a7, v17);
}

uint64_t sub_10001A9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_10001AA74;

  return sub_10001F308(a5);
}

uint64_t sub_10001AA74(char a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10001AB74, 0, 0);
}

uint64_t sub_10001AB74()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 40), 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001AC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_10001ACBC;

  return sub_10001FF00(a5, a6);
}

uint64_t sub_10001ACBC()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return _swift_task_switch(sub_1000225B0, 0, 0);
}

uint64_t sub_10001B068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_10001ACBC;

  return sub_100020AE4(a5);
}

uint64_t sub_10001B150(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v30 = a8;
  v28[1] = a6;
  v10 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v28 - v11;
  v13 = sub_1000A2508();
  v14 = *(v13 - 8);
  v15 = v14;
  v16 = v14[8];
  __chkstk_darwin(v14);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v19 = v28 - v18;
  v20 = _Block_copy(a4);
  sub_1000A24F8();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v22 = sub_1000A3BE8();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  (v15[2])(v17, v19, v13);
  v23 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = a1;
  (v15[4])(&v24[v23], v17, v13);
  v25 = &v24[(v16 + v23 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v25 = v29;
  *(v25 + 1) = v21;
  v26 = a1;

  sub_1000941D8(0, 0, v12, v30, v24);

  return (v15[1])(v19, v13);
}

void sub_10001B3DC(uint64_t a1, const char *a2)
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v3 = sub_1000A3538();
  sub_100001E38(v3, qword_1000C96B8);
  v4 = sub_1000A3518();
  v5 = sub_1000A3CB8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, a2, v6, 2u);
  }
}

uint64_t sub_10001B4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10001B4E4, 0, 0);
}

uint64_t sub_10001B4E4()
{
  if (qword_1000C7590 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_1000C96F8;

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_10001B5B8;

  return sub_100071A9C();
}

uint64_t sub_10001B5B8(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v9 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v6 = sub_10001B750;
  }

  else
  {
    v7 = *(v4 + 32);

    v6 = sub_10001B6E8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10001B6E8()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001B750()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  swift_errorRetain();
  v4(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10001B850(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000A2508();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_1000A3588();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10001B978, 0, 0);
}

uint64_t sub_10001B978()
{
  sub_1000A3AA8();
  v0[10] = os_transaction_create();

  sub_10001B3DC(v1, "[SiteOperations] Taking extended lifetime");
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v2 = sub_1000A3538();
  v0[11] = sub_100001E38(v2, qword_1000C96B8);
  v3 = sub_1000A3518();
  v4 = sub_1000A3CB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Connection established to EnergyKit API", v5, 2u);
  }

  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v6 = qword_1000C95F0;
  v0[12] = qword_1000C95F0;

  return _swift_task_switch(sub_10001BB3C, v6, 0);
}

uint64_t sub_10001BB3C()
{
  *(v0 + 104) = *(*(v0 + 96) + 120);

  return _swift_task_switch(sub_10001BBB4, 0, 0);
}

uint64_t sub_10001BBB4()
{
  if (v0[13])
  {

    v1 = qword_1000C95F0;
    v0[14] = qword_1000C95F0;

    return _swift_task_switch(sub_10001BD10, v1, 0);
  }

  else
  {
    v2 = v0[11];
    v3 = sub_1000A3518();
    v4 = sub_1000A3CC8();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[10];
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[SiteOperations] Invalid application-identifier", v7, 2u);
    }

    swift_unknownObjectRelease();

    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[5];

    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_10001BD10()
{
  *(v0 + 144) = *(*(v0 + 112) + 144);

  return _swift_task_switch(sub_10001BD80, 0, 0);
}

uint64_t sub_10001BD80()
{
  if (*(v0 + 144) == 1)
  {
    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    *(v0 + 120) = qword_1000C96F8;

    v1 = swift_task_alloc();
    *(v0 + 128) = v1;
    *v1 = v0;
    v1[1] = sub_10001BF40;
    v2 = *(v0 + 16);

    return sub_100072524(v2);
  }

  else
  {
    v4 = *(v0 + 88);
    v5 = sub_1000A3518();
    v6 = sub_1000A3CC8();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 80);
    if (v7)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "[SiteOperations] Unauthorized", v9, 2u);
    }

    swift_unknownObjectRelease();

    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v12 = *(v0 + 40);

    v13 = *(v0 + 8);

    return v13(0);
  }
}

uint64_t sub_10001BF40(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_10001C060, 0, 0);
}

uint64_t sub_10001C060()
{
  v1 = v0[17];
  if (v1)
  {
    v2 = v0[9];
    v3 = v0[7];
    v4 = v0[5];
    v18 = v0[6];
    v19 = v0[10];
    v5 = v0[4];
    v16 = v0[3];
    v17 = v0[8];
    v6 = v0[2];
    v7 = [v1 name];
    sub_1000A3A88();

    (*(v5 + 16))(v4, v6, v16);
    sub_1000A3578();
    (*(v3 + 16))(v17, v2, v18);
    v8 = objc_allocWithZone(sub_1000A3958());
    v9 = sub_1000A3948();
    swift_unknownObjectRelease();

    (*(v3 + 8))(v2, v18);
  }

  else
  {
    v10 = v0[10];
    swift_unknownObjectRelease();
    v9 = 0;
  }

  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[5];

  v14 = v0[1];

  return v14(v9);
}

uint64_t sub_10001C1F0(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_1000A3588();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = *(*(sub_10000275C(&qword_1000C92C0, &qword_1000ACB30) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v6 = sub_1000A2508();
  v1[12] = v6;
  v7 = *(v6 - 8);
  v1[13] = v7;
  v8 = *(v7 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v9 = sub_1000A2AD8();
  v1[17] = v9;
  v10 = *(v9 - 8);
  v1[18] = v10;
  v11 = *(v10 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_10001C3DC, 0, 0);
}

uint64_t sub_10001C3DC()
{
  sub_1000A3AA8();
  *(v0 + 168) = os_transaction_create();

  sub_10001B3DC(v1, "[SiteOperations] Taking extended lifetime");
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v2 = qword_1000C95F0;
  *(v0 + 176) = qword_1000C95F0;

  return _swift_task_switch(sub_10001C4E8, v2, 0);
}

uint64_t sub_10001C4E8()
{
  v1 = v0[22];
  v0[23] = *(v1 + 112);
  v0[24] = *(v1 + 120);

  return _swift_task_switch(sub_10001C568, 0, 0);
}

uint64_t sub_10001C568()
{
  if (v0[24])
  {
    v1 = qword_1000C95F0;
    v0[25] = qword_1000C95F0;

    return _swift_task_switch(sub_10001C758, v1, 0);
  }

  else
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v2 = sub_1000A3538();
    sub_100001E38(v2, qword_1000C96B8);
    v3 = sub_1000A3518();
    v4 = sub_1000A3CC8();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[21];
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[SiteOperations] Invalid application-identifier", v7, 2u);
    }

    swift_unknownObjectRelease();

    v9 = v0[19];
    v8 = v0[20];
    v11 = v0[15];
    v10 = v0[16];
    v12 = v0[14];
    v14 = v0[10];
    v13 = v0[11];
    v16 = v0[8];
    v15 = v0[9];

    v17 = v0[1];

    return v17(0);
  }
}

uint64_t sub_10001C758()
{
  *(v0 + 280) = *(*(v0 + 200) + 144);

  return _swift_task_switch(sub_10001C7C8, 0, 0);
}

uint64_t sub_10001C7C8()
{
  if (*(v0 + 280))
  {
    v1 = *(v0 + 184) == 0x6C7070612E6D6F63 && *(v0 + 192) == 0xEF64656D6F682E65;
    if (v1 || (sub_1000A3F48() & 1) != 0 || *(v0 + 184) == 0xD00000000000001CLL && *(v0 + 192) == 0x80000001000A6870)
    {
      v2 = 1;
    }

    else
    {
      v28 = *(v0 + 192);
      v2 = sub_1000A3F48();
      v29 = *(v0 + 192);
    }

    if (sub_1000A2D18())
    {
      if (qword_1000C7560 != -1)
      {
        swift_once();
      }

      v4 = *(v0 + 152);
      v3 = *(v0 + 160);
      v5 = *(v0 + 136);
      v6 = *(v0 + 144);
      v7 = sub_100001E38(v5, qword_1000C95F8);
      swift_beginAccess();
      (*(v6 + 16))(v3, v7, v5);
      sub_1000A2A48();
      sub_100022314(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
      LOBYTE(v7) = sub_1000A3DF8();
      v8 = *(v6 + 8);
      v8(v4, v5);
      v8(v3, v5);
      v2 |= v7;
    }

    *(v0 + 281) = v2 & 1;
    v9 = swift_task_alloc();
    *(v0 + 208) = v9;
    *v9 = v0;
    v9[1] = sub_10001CBA0;

    return (sub_100047590)(0);
  }

  else
  {
    v11 = *(v0 + 192);

    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v12 = sub_1000A3538();
    sub_100001E38(v12, qword_1000C96B8);
    v13 = sub_1000A3518();
    v14 = sub_1000A3CC8();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 168);
    if (v15)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "[SiteOperations] Unauthorized", v17, 2u);
    }

    swift_unknownObjectRelease();

    v19 = *(v0 + 152);
    v18 = *(v0 + 160);
    v21 = *(v0 + 120);
    v20 = *(v0 + 128);
    v22 = *(v0 + 112);
    v24 = *(v0 + 80);
    v23 = *(v0 + 88);
    v26 = *(v0 + 64);
    v25 = *(v0 + 72);

    v27 = *(v0 + 8);

    return v27(0);
  }
}

uint64_t sub_10001CBA0(char a1)
{
  v2 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 282) = a1;

  return _swift_task_switch(sub_10001CCA0, 0, 0);
}

uint64_t sub_10001CCA0()
{
  if ((*(v0 + 282) & 1) != 0 || *(v0 + 281))
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);
    v7 = *(v0 + 88);
    v8 = *(v0 + 40);
    sub_1000A2B08();
    sub_1000A24C8();
    sub_1000A2AF8();

    sub_1000A24B8();

    if ((*(v6 + 48))(v7, 1, v5) == 1)
    {
      v9 = *(v0 + 168);
      v10 = *(v0 + 88);
      swift_unknownObjectRelease();
      sub_100022154(v10, &qword_1000C92C0, &qword_1000ACB30);
      v12 = *(v0 + 152);
      v11 = *(v0 + 160);
      v14 = *(v0 + 120);
      v13 = *(v0 + 128);
      v15 = *(v0 + 112);
      v17 = *(v0 + 80);
      v16 = *(v0 + 88);
      v19 = *(v0 + 64);
      v18 = *(v0 + 72);

      v20 = *(v0 + 8);

      return v20(0);
    }

    else
    {
      (*(*(v0 + 104) + 32))(*(v0 + 128), *(v0 + 88), *(v0 + 96));
      if (qword_1000C7590 != -1)
      {
        swift_once();
      }

      *(v0 + 216) = qword_1000C96F8;

      v21 = swift_task_alloc();
      *(v0 + 224) = v21;
      *v21 = v0;
      v21[1] = sub_10001CFB4;
      v22 = *(v0 + 128);

      return sub_1000716DC(v22);
    }
  }

  else
  {
    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    *(v0 + 240) = qword_1000C96F8;

    v1 = swift_task_alloc();
    *(v0 + 248) = v1;
    *v1 = v0;
    v1[1] = sub_10001D2E0;
    v2 = *(v0 + 80);
    v3 = *(v0 + 40);

    return sub_10006FBE8(v2, v3);
  }
}

uint64_t sub_10001CFB4(uint64_t a1)
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 232) = a1;

  return _swift_task_switch(sub_10001D0D4, 0, 0);
}

uint64_t sub_10001D0D4()
{
  v1 = v0[29];
  v2 = v0[21];
  if (v1)
  {
    v3 = v0[15];
    v4 = v0[13];
    v5 = v0[9];
    v24 = v0[16];
    v21 = v0[12];
    v22 = v0[8];
    v6 = v0[7];
    v23 = v0[6];
    v7 = [v1 name];
    sub_1000A3A88();

    (*(v4 + 16))(v3, v24, v21);
    sub_1000A3578();
    (*(v6 + 16))(v22, v5, v23);
    v8 = objc_allocWithZone(sub_1000A3958());
    v9 = sub_1000A3948();
    swift_unknownObjectRelease();

    (*(v6 + 8))(v5, v23);
    (*(v4 + 8))(v24, v21);
  }

  else
  {
    (*(v0[13] + 8))(v0[16], v0[12]);
    swift_unknownObjectRelease();
    v9 = 0;
  }

  v11 = v0[19];
  v10 = v0[20];
  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[14];
  v16 = v0[10];
  v15 = v0[11];
  v18 = v0[8];
  v17 = v0[9];

  v19 = v0[1];

  return v19(v9);
}

uint64_t sub_10001D2E0()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;

  v5 = *(v2 + 240);
  if (v0)
  {

    v6 = sub_10001D854;
  }

  else
  {

    v6 = sub_10001D428;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10001D428()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  v0[32] = qword_1000C96F8;

  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_10001D528;
  v6 = v0[14];

  return sub_100072524(v6);
}

uint64_t sub_10001D528(uint64_t a1)
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 272) = a1;

  return _swift_task_switch(sub_10001D648, 0, 0);
}

uint64_t sub_10001D648()
{
  v1 = v0[34];
  v2 = v0[21];
  if (v1)
  {
    v3 = v0[15];
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[8];
    v22 = v0[14];
    v23 = v0[9];
    v7 = v0[7];
    v24 = v0[6];
    v8 = [v1 name];
    sub_1000A3A88();

    (*(v4 + 16))(v3, v22, v5);
    sub_1000A3578();
    (*(v7 + 16))(v6, v23, v24);
    v9 = objc_allocWithZone(sub_1000A3958());
    v10 = sub_1000A3948();
    swift_unknownObjectRelease();

    (*(v7 + 8))(v23, v24);
    (*(v4 + 8))(v22, v5);
  }

  else
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
    swift_unknownObjectRelease();
    v10 = 0;
  }

  v12 = v0[19];
  v11 = v0[20];
  v14 = v0[15];
  v13 = v0[16];
  v15 = v0[14];
  v17 = v0[10];
  v16 = v0[11];
  v19 = v0[8];
  v18 = v0[9];

  v20 = v0[1];

  return v20(v10);
}

uint64_t sub_10001D854()
{
  v1 = v0[21];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  swift_unknownObjectRelease();
  (*(v3 + 56))(v4, 1, 1, v2);
  sub_100022154(v4, &qword_1000C92C0, &qword_1000ACB30);
  v6 = v0[19];
  v5 = v0[20];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[14];
  v11 = v0[10];
  v10 = v0[11];
  v13 = v0[8];
  v12 = v0[9];

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_10001D968()
{
  v1 = sub_10000275C(&qword_1000C7D70, &qword_1000ABC10);
  v0[5] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v3 = sub_1000A3588();
  v0[10] = v3;
  v4 = *(v3 - 8);
  v0[11] = v4;
  v5 = *(v4 + 64) + 15;
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v6 = *(*(sub_10000275C(&qword_1000C92C0, &qword_1000ACB30) - 8) + 64) + 15;
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();

  return _swift_task_switch(sub_10001DAD4, 0, 0);
}

uint64_t sub_10001DAD4()
{
  sub_1000A3AA8();
  *(v0 + 128) = os_transaction_create();

  sub_10001B3DC(v1, "[SiteOperations] Taking extended lifetime");
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v2 = qword_1000C95F0;
  *(v0 + 136) = qword_1000C95F0;

  return _swift_task_switch(sub_10001DBE0, v2, 0);
}

uint64_t sub_10001DBE0()
{
  *(v0 + 144) = *(*(v0 + 136) + 120);

  return _swift_task_switch(sub_10001DC58, 0, 0);
}

uint64_t sub_10001DC58()
{
  if (v0[18])
  {

    v1 = swift_task_alloc();
    v0[19] = v1;
    *v1 = v0;
    v1[1] = sub_10001DE94;

    return (sub_1000472A8)(0);
  }

  else
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v3 = sub_1000A3538();
    sub_100001E38(v3, qword_1000C96B8);
    v4 = sub_1000A3518();
    v5 = sub_1000A3CC8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "[SiteOperations] Invalid application-identifier", v6, 2u);
    }

    v7 = v0[16];

    v8 = objc_allocWithZone(sub_1000A39A8());
    v9 = sub_1000A3998();
    swift_unknownObjectRelease();
    v11 = v0[14];
    v10 = v0[15];
    v13 = v0[12];
    v12 = v0[13];
    v15 = v0[8];
    v14 = v0[9];
    v17 = v0[6];
    v16 = v0[7];

    v18 = v0[1];

    return v18(v9);
  }
}

uint64_t sub_10001DE94(char a1)
{
  v2 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 240) = a1;

  return _swift_task_switch(sub_10001DF94, 0, 0);
}

uint64_t sub_10001DF94()
{
  if (*(v0 + 240) == 1)
  {
    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    v1 = qword_1000C96F8;
    *(v0 + 160) = qword_1000C96F8;

    return _swift_task_switch(sub_10001E0EC, v1, 0);
  }

  else
  {
    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    *(v0 + 216) = qword_1000C96F8;

    v2 = swift_task_alloc();
    *(v0 + 224) = v2;
    *v2 = v0;
    v2[1] = sub_10001E988;

    return sub_100074754();
  }
}

uint64_t sub_10001E0EC()
{
  v1 = *(*(v0 + 160) + 152);
  *(v0 + 168) = v1;
  v2 = v1;

  return _swift_task_switch(sub_10001E160, 0, 0);
}

uint64_t sub_10001E160()
{
  v1 = v0[21];
  v2 = swift_task_alloc();
  v0[22] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_10001E250;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10001E250()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return _swift_task_switch(sub_10001E368, 0, 0);
}

uint64_t sub_10001E368()
{
  v1 = *(v0 + 160);

  return _swift_task_switch(sub_10001E3D0, v1, 0);
}

uint64_t sub_10001E3D0()
{
  v1 = v0[20];
  swift_beginAccess();
  v0[24] = *(v1 + 120);

  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_10001E49C;

  return sub_100065D98();
}

uint64_t sub_10001E49C(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = a1;

  return _swift_task_switch(sub_10001E59C, 0, 0);
}

void sub_10001E59C()
{
  v1 = v0;
  v2 = v0[26];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v46 = v1[11];
    v48 = -v3;
    v49 = v1[24];
    v5 = v2 + 40;
    v6 = &_swiftEmptyArrayStorage;
    do
    {
      v47 = v6;
      v7 = (v5 + 16 * v4);
      v8 = v4 + 1;
      while (1)
      {
        if ((v8 - 1) >= *(v2 + 16))
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          return;
        }

        v50 = v8;
        v10 = v1[15];
        v12 = *(v7 - 1);
        v11 = *v7;

        sub_1000A24B8();
        v13 = sub_1000A2508();
        v14 = *(v13 - 8);
        v15 = *(v14 + 48);
        if (v15(v10, 1, v13) == 1)
        {
          goto LABEL_19;
        }

        if (*(v49 + 16))
        {
          v16 = v1[24];
          v17 = sub_100079C54(v1[15]);
          if (v18)
          {
            break;
          }
        }

        v9 = v1[15];

        (*(v14 + 8))(v9, v13);
        v8 = v50 + 1;
        v7 += 2;
        if (v48 + v50 + 1 == 1)
        {
          goto LABEL_15;
        }
      }

      v44 = v1[15];
      v45 = v1[14];
      v19 = *(v14 + 8);
      v20 = *(*(v49 + 56) + 8 * v17);
      v19(v44, v13);
      v43 = v20;
      v21 = [v20 name];
      sub_1000A3A88();
      sub_1000A24B8();
      if (v15(v45, 1, v13) == 1)
      {
        goto LABEL_20;
      }

      v23 = v1[13];
      v22 = v1[14];

      sub_1000A3578();
      v6 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100095150(0, v47[2] + 1, 1, v47);
      }

      v5 = v2 + 40;
      v25 = v6[2];
      v24 = v6[3];
      if (v25 >= v24 >> 1)
      {
        v6 = sub_100095150(v24 > 1, v25 + 1, 1, v6);
      }

      v26 = v1[13];
      v27 = v1[10];

      v6[2] = v25 + 1;
      v28 = v6 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v25;
      v4 = v50;
      (*(v46 + 32))(v28, v26, v27);
    }

    while (v48 + v50);
  }

LABEL_15:
  v29 = v1[26];
  v30 = v1[24];

  v31 = v1[16];
  v32 = objc_allocWithZone(sub_1000A39A8());
  v33 = sub_1000A3998();
  swift_unknownObjectRelease();
  v35 = v1[14];
  v34 = v1[15];
  v37 = v1[12];
  v36 = v1[13];
  v39 = v1[8];
  v38 = v1[9];
  v41 = v1[6];
  v40 = v1[7];

  v42 = v1[1];

  v42(v33);
}

uint64_t sub_10001E988(uint64_t a1)
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 232) = a1;

  return _swift_task_switch(sub_10001EAA8, 0, 0);
}

void sub_10001EAA8()
{
  v1 = 0;
  v2 = v0[29];
  v45 = v0[5];
  v46 = v0[11];
  v4 = v2 + 64;
  v3 = *(v2 + 64);
  v47 = v2;
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v3;
  v43 = v0[6] + 8;
  v8 = (63 - v6) >> 6;
  v9 = &_swiftEmptyArrayStorage;
  v44 = v4;
  v42 = v8;
  if (v7)
  {
    while (1)
    {
      v51 = v9;
LABEL_9:
      v50 = v0[12];
      v12 = v0[8];
      v11 = v0[9];
      v52 = v0[7];
      v49 = v0[6];
      v13 = __clz(__rbit64(v7)) | (v1 << 6);
      v14 = *(v47 + 48);
      v15 = sub_1000A2508();
      v16 = *(v15 - 8);
      (*(v16 + 16))(v11, v14 + *(v16 + 72) * v13, v15);
      v17 = (*(v47 + 56) + 16 * v13);
      v19 = *v17;
      v18 = v17[1];
      v20 = (v12 + *(v45 + 48));
      (*(v16 + 32))(v12, v11, v15);
      *v20 = v19;
      v20[1] = v18;
      sub_1000220E4(v12, v52);
      v21 = (v52 + *(v45 + 48));
      v23 = *v21;
      v22 = v21[1];
      sub_1000220E4(v12, v49);
      v24 = *(v43 + *(v45 + 48));

      sub_1000A3578();
      (*(v16 + 8))(v52, v15);
      v9 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100095150(0, v51[2] + 1, 1, v51);
      }

      v26 = v9[2];
      v25 = v9[3];
      v0 = v48;
      if (v26 >= v25 >> 1)
      {
        v9 = sub_100095150(v25 > 1, v26 + 1, 1, v9);
      }

      v7 &= v7 - 1;
      v27 = v48[12];
      v28 = v48[10];
      sub_100022154(v48[8], &qword_1000C7D70, &qword_1000ABC10);
      v9[2] = v26 + 1;
      (*(v46 + 32))(v9 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v26, v27, v28);
      v4 = v44;
      v8 = v42;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v1;
    if (v7)
    {
      v51 = v9;
      v1 = v10;
      goto LABEL_9;
    }
  }

  v29 = v0[29];

  v30 = v0[16];
  v31 = objc_allocWithZone(sub_1000A39A8());
  v32 = sub_1000A3998();
  swift_unknownObjectRelease();
  v34 = v0[14];
  v33 = v0[15];
  v36 = v0[12];
  v35 = v0[13];
  v38 = v0[8];
  v37 = v0[9];
  v40 = v0[6];
  v39 = v0[7];

  v41 = v0[1];

  v41(v32);
}

uint64_t sub_10001EE88()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 16) = qword_1000C95F0;

  return _swift_task_switch(sub_10001EF30, v1, 0);
}

uint64_t sub_10001EF30()
{
  *(v0 + 24) = *(*(v0 + 16) + 120);

  return _swift_task_switch(sub_10001EFA8, 0, 0);
}

uint64_t sub_10001EFA8()
{
  if (v0[3])
  {

    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    v0[4] = qword_1000C96F8;

    v1 = swift_task_alloc();
    v0[5] = v1;
    *v1 = v0;
    v1[1] = sub_10001F17C;

    return sub_100074754();
  }

  else
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v3 = sub_1000A3538();
    sub_100001E38(v3, qword_1000C96B8);
    v4 = sub_1000A3518();
    v5 = sub_1000A3CC8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "[VenueOperations] Invalid application-identifier", v6, 2u);
    }

    v7 = v0[1];

    return v7(0);
  }
}

uint64_t sub_10001F17C(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_10001F29C, 0, 0);
}

uint64_t sub_10001F29C()
{
  v1 = *(*(v0 + 48) + 16);

  v2 = *(v0 + 8);

  return v2(v1 != 0);
}

uint64_t sub_10001F308(uint64_t a1)
{
  v1[7] = a1;
  v2 = *(*(sub_10000275C(&qword_1000C92C0, &qword_1000ACB30) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v3 = sub_1000A2508();
  v1[9] = v3;
  v4 = *(v3 - 8);
  v1[10] = v4;
  v5 = *(v4 + 64) + 15;
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_10001F400, 0, 0);
}

uint64_t sub_10001F400()
{
  sub_1000A3AA8();
  v0[12] = os_transaction_create();

  sub_10001B3DC(v1, "[VenueOperations] Taking extended lifetime");
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v2 = sub_1000A3538();
  v0[13] = sub_100001E38(v2, qword_1000C96B8);
  v3 = sub_1000A3518();
  v4 = sub_1000A3CB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Connection established to EnergyKit API", v5, 2u);
  }

  v6 = sub_1000A2CF8();
  v0[5] = v6;
  v0[6] = sub_100022314(&qword_1000C7D68, &type metadata accessor for EnergyKitFeatures);
  v7 = sub_100021D50(v0 + 2);
  (*(*(v6 - 8) + 104))(v7, enum case for EnergyKitFeatures.costInclusionInGuidanceAPI2025(_:), v6);
  LOBYTE(v6) = sub_1000A25B8();
  sub_10000F7B8(v0 + 2);
  if (v6)
  {
    if (qword_1000C7550 != -1)
    {
      swift_once();
    }

    v8 = qword_1000C95F0;
    v0[14] = qword_1000C95F0;

    return _swift_task_switch(sub_10001F6CC, v8, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v9 = v0[11];
    v10 = v0[8];

    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_10001F6CC()
{
  *(v0 + 120) = *(*(v0 + 112) + 120);

  return _swift_task_switch(sub_10001F744, 0, 0);
}

uint64_t sub_10001F744()
{
  if (v0[15])
  {

    v1 = qword_1000C95F0;
    v0[16] = qword_1000C95F0;

    return _swift_task_switch(sub_10001F898, v1, 0);
  }

  else
  {
    v2 = v0[13];
    v3 = sub_1000A3518();
    v4 = sub_1000A3CC8();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[12];
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[VenueOperations] Invalid application-identifier", v7, 2u);
    }

    swift_unknownObjectRelease();

    v8 = v0[11];
    v9 = v0[8];

    v10 = v0[1];

    return v10(0);
  }
}

uint64_t sub_10001F898()
{
  *(v0 + 160) = *(*(v0 + 128) + 144);

  return _swift_task_switch(sub_10001F908, 0, 0);
}

uint64_t sub_10001F908()
{
  if (*(v0 + 160))
  {
    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    *(v0 + 136) = qword_1000C96F8;

    v1 = swift_task_alloc();
    *(v0 + 144) = v1;
    *v1 = v0;
    v1[1] = sub_10001FABC;
    v3 = *(v0 + 56);
    v2 = *(v0 + 64);

    return sub_10006CFD4(v2, v3);
  }

  else
  {
    v5 = *(v0 + 104);
    v6 = sub_1000A3518();
    v7 = sub_1000A3CC8();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 96);
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "[VenueOperations] missing entitlement", v10, 2u);
    }

    swift_unknownObjectRelease();

    v11 = *(v0 + 88);
    v12 = *(v0 + 64);

    v13 = *(v0 + 8);

    return v13(0);
  }
}

uint64_t sub_10001FABC()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return _swift_task_switch(sub_10001FBD4, 0, 0);
}

uint64_t sub_10001FBD4()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[12];
    swift_unknownObjectRelease();
    sub_100022154(v3, &qword_1000C92C0, &qword_1000ACB30);
    v5 = v0[11];
    v6 = v0[8];

    v7 = v0[1];

    return v7(0);
  }

  else
  {
    (*(v2 + 32))(v0[11], v3, v1);
    if (qword_1000C7588 != -1)
    {
      swift_once();
    }

    v9 = swift_task_alloc();
    v0[19] = v9;
    *v9 = v0;
    v9[1] = sub_10001FD60;
    v10 = v0[11];

    return sub_10004D838(v10);
  }
}

uint64_t sub_10001FD60(char a1)
{
  v2 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 161) = a1;

  return _swift_task_switch(sub_10001FE60, 0, 0);
}

uint64_t sub_10001FE60()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 161);
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);

  v8 = *(v0 + 8);

  return v8(v5);
}

uint64_t sub_10001FF00(char a1, uint64_t a2)
{
  *(v2 + 56) = a2;
  *(v2 + 160) = a1;
  v3 = *(*(sub_10000275C(&qword_1000C92C0, &qword_1000ACB30) - 8) + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  v4 = sub_1000A2508();
  *(v2 + 72) = v4;
  v5 = *(v4 - 8);
  *(v2 + 80) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_10001FFFC, 0, 0);
}

uint64_t sub_10001FFFC()
{
  sub_1000A3AA8();
  v0[12] = os_transaction_create();

  sub_10001B3DC(v1, "[VenueOperations] Taking extended lifetime");
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v2 = sub_1000A3538();
  v0[13] = sub_100001E38(v2, qword_1000C96B8);
  v3 = sub_1000A3518();
  v4 = sub_1000A3CB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Connection established to EnergyKit API", v5, 2u);
  }

  v6 = sub_1000A2CF8();
  v0[5] = v6;
  v0[6] = sub_100022314(&qword_1000C7D68, &type metadata accessor for EnergyKitFeatures);
  v7 = sub_100021D50(v0 + 2);
  (*(*(v6 - 8) + 104))(v7, enum case for EnergyKitFeatures.costInclusionInGuidanceAPI2025(_:), v6);
  LOBYTE(v6) = sub_1000A25B8();
  sub_10000F7B8(v0 + 2);
  if (v6)
  {
    if (qword_1000C7550 != -1)
    {
      swift_once();
    }

    v8 = qword_1000C95F0;
    v0[14] = qword_1000C95F0;

    return _swift_task_switch(sub_1000202C4, v8, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v9 = v0[11];
    v10 = v0[8];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1000202C4()
{
  *(v0 + 120) = *(*(v0 + 112) + 120);

  return _swift_task_switch(sub_10002033C, 0, 0);
}

uint64_t sub_10002033C()
{
  if (v0[15])
  {

    v1 = qword_1000C95F0;
    v0[16] = qword_1000C95F0;

    return _swift_task_switch(sub_10002048C, v1, 0);
  }

  else
  {
    v2 = v0[13];
    v3 = sub_1000A3518();
    v4 = sub_1000A3CC8();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[12];
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[VenueOperations] Invalid application-identifier", v7, 2u);
    }

    swift_unknownObjectRelease();

    v8 = v0[11];
    v9 = v0[8];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10002048C()
{
  *(v0 + 161) = *(*(v0 + 128) + 144);

  return _swift_task_switch(sub_1000204FC, 0, 0);
}

uint64_t sub_1000204FC()
{
  if (*(v0 + 161))
  {
    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    *(v0 + 136) = qword_1000C96F8;

    v1 = swift_task_alloc();
    *(v0 + 144) = v1;
    *v1 = v0;
    v1[1] = sub_1000206AC;
    v3 = *(v0 + 56);
    v2 = *(v0 + 64);

    return sub_10006CFD4(v2, v3);
  }

  else
  {
    v5 = *(v0 + 104);
    v6 = sub_1000A3518();
    v7 = sub_1000A3CC8();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 96);
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "[VenueOperations] missing entitlement", v10, 2u);
    }

    swift_unknownObjectRelease();

    v11 = *(v0 + 88);
    v12 = *(v0 + 64);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1000206AC()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return _swift_task_switch(sub_1000207C4, 0, 0);
}

uint64_t sub_1000207C4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 96);
    swift_unknownObjectRelease();
    sub_100022154(v3, &qword_1000C92C0, &qword_1000ACB30);
    v5 = *(v0 + 88);
    v6 = *(v0 + 64);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    (*(v2 + 32))(*(v0 + 88), v3, v1);
    if (qword_1000C7588 != -1)
    {
      swift_once();
    }

    v9 = swift_task_alloc();
    *(v0 + 152) = v9;
    *v9 = v0;
    v9[1] = sub_100020950;
    v10 = *(v0 + 88);
    v11 = *(v0 + 160);

    return sub_10004F370(v10, v11);
  }
}

uint64_t sub_100020950()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return _swift_task_switch(sub_100020A4C, 0, 0);
}

uint64_t sub_100020A4C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2, v3);
  v5 = v0[11];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100020AE4(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(sub_10000275C(&qword_1000C92C0, &qword_1000ACB30) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_1000A2508();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100020BDC, 0, 0);
}

uint64_t sub_100020BDC()
{
  sub_1000A3AA8();
  v0[7] = os_transaction_create();

  sub_10001B3DC(v1, "[VenueOperations] Taking extended lifetime");
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v2 = sub_1000A3538();
  v0[8] = sub_100001E38(v2, qword_1000C96B8);
  v3 = sub_1000A3518();
  v4 = sub_1000A3CB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Connection established to EnergyKit API", v5, 2u);
  }

  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v6 = qword_1000C95F0;
  v0[9] = qword_1000C95F0;

  return _swift_task_switch(sub_100020DA0, v6, 0);
}

uint64_t sub_100020DA0()
{
  *(v0 + 80) = *(*(v0 + 72) + 120);

  return _swift_task_switch(sub_100020E18, 0, 0);
}

uint64_t sub_100020E18()
{
  if (v0[10])
  {

    v1 = qword_1000C95F0;
    v0[11] = qword_1000C95F0;

    return _swift_task_switch(sub_100020F68, v1, 0);
  }

  else
  {
    v2 = v0[8];
    v3 = sub_1000A3518();
    v4 = sub_1000A3CC8();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[7];
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[VenueOperations] Invalid application-identifier", v7, 2u);
    }

    swift_unknownObjectRelease();

    v8 = v0[6];
    v9 = v0[3];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100020F68()
{
  *(v0 + 120) = *(*(v0 + 88) + 144);

  return _swift_task_switch(sub_100020FD8, 0, 0);
}

uint64_t sub_100020FD8()
{
  if (*(v0 + 120))
  {
    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    *(v0 + 96) = qword_1000C96F8;

    v1 = swift_task_alloc();
    *(v0 + 104) = v1;
    *v1 = v0;
    v1[1] = sub_100021188;
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);

    return sub_10006CFD4(v2, v3);
  }

  else
  {
    v5 = *(v0 + 64);
    v6 = sub_1000A3518();
    v7 = sub_1000A3CC8();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 56);
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "[VenueOperations] missing entitlement", v10, 2u);
    }

    swift_unknownObjectRelease();

    v11 = *(v0 + 48);
    v12 = *(v0 + 24);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_100021188()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_1000212A0, 0, 0);
}

uint64_t sub_1000212A0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[7];
    swift_unknownObjectRelease();
    sub_100022154(v3, &qword_1000C92C0, &qword_1000ACB30);
    v5 = v0[6];
    v6 = v0[3];

    v7 = v0[1];

    return v7();
  }

  else
  {
    (*(v2 + 32))(v0[6], v3, v1);
    if (qword_1000C7588 != -1)
    {
      swift_once();
    }

    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_100021428;
    v10 = v0[6];

    return sub_100050F14(v10);
  }
}

uint64_t sub_100021428()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return _swift_task_switch(sub_100021524, 0, 0);
}

uint64_t sub_100021524()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2, v3);
  v5 = v0[6];
  v6 = v0[3];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000215BC(void (**a1)(void, void))
{
  v2 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = &v17 - v3;
  v5 = sub_1000A2CF8();
  v6 = *(v5 - 8);
  __chkstk_darwin(*(v6 + 64));
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  (*(v6 + 104))(v8, enum case for EnergyKitFeatures.termsAndConditions2025(_:), v5);
  _Block_copy(a1);
  v10 = sub_1000A2CE8();
  (*(v6 + 8))(v8, v5);
  if (v10)
  {
    v11 = sub_1000A3BE8();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = sub_100014FA4;
    v12[5] = v9;

    sub_1000941D8(0, 0, v4, &unk_1000ABB90, v12);
  }

  else
  {
    v13 = sub_1000A3598();
    sub_100022314(&qword_1000C7830, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, enum case for EnergyKitError.venueUnavailable(_:), v13);
    v15 = sub_1000A2348();
    (a1)[2](a1, v15);
  }
}

uint64_t sub_1000218A8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000218E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100021920(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000153A8;

  return sub_10001B4C4(a1, v4, v5, v7, v6);
}

uint64_t sub_1000219E4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000A2508() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1000153A8;

  return sub_10001B068(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_100021B20()
{
  v1 = sub_1000A2508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100021C04(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000A2508() - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000153A8;

  return sub_10001AC1C(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t *sub_100021D50(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100021DB4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000A2508() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1000153A8;

  return sub_10001A9DC(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_100021F0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000153A8;

  return sub_10001A7D0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100021FD4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002201C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000153A8;

  return sub_10001A57C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000220E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000275C(&qword_1000C7D70, &qword_1000ABC10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022154(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000275C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000221D8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000A2508() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1000153A8;

  return sub_10001A3A8(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_100022314(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002235C()
{
  v1 = sub_1000A2508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100022440(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000A2508() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014898;

  return sub_10001A160(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1000225B8()
{
  v1[29] = v0;
  v2 = sub_10000275C(&unk_1000C7CA0, qword_1000ABAF0);
  v1[30] = v2;
  v3 = *(v2 - 8);
  v1[31] = v3;
  v4 = *(v3 + 64) + 15;
  v1[32] = swift_task_alloc();
  v5 = *(*(sub_10000275C(&qword_1000C7D58, &qword_1000ABB20) - 8) + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v6 = *(*(sub_10000275C(&qword_1000C7EB8, &qword_1000ABD48) - 8) + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v7 = sub_1000A32F8();
  v1[37] = v7;
  v8 = *(v7 - 8);
  v1[38] = v8;
  v9 = *(v8 + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v10 = sub_1000A38F8();
  v1[41] = v10;
  v11 = *(v10 - 8);
  v1[42] = v11;
  v12 = *(v11 + 64) + 15;
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v13 = sub_1000A2568();
  v1[45] = v13;
  v14 = *(v13 - 8);
  v1[46] = v14;
  v15 = *(v14 + 64) + 15;
  v1[47] = swift_task_alloc();
  v16 = sub_1000A2578();
  v1[48] = v16;
  v17 = *(v16 - 8);
  v1[49] = v17;
  v18 = *(v17 + 64) + 15;
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v19 = sub_1000A2498();
  v1[53] = v19;
  v20 = *(v19 - 8);
  v1[54] = v20;
  v21 = *(v20 + 64) + 15;
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v22 = sub_1000A22A8();
  v1[69] = v22;
  v23 = *(v22 - 8);
  v1[70] = v23;
  v24 = *(v23 + 64) + 15;
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();

  return _swift_task_switch(sub_100022A3C, v0, 0);
}