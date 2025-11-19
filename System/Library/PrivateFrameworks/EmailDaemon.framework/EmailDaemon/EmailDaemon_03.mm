unint64_t sub_1000CF2B4()
{
  v2 = qword_100185248;
  if (!qword_100185248)
  {
    type metadata accessor for DirectoryEnumerationOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100185248);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000CF334(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1000CF3DC()
{
  v2 = qword_100185250;
  if (!qword_100185250)
  {
    type metadata accessor for URLResourceKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100185250);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000CF45C()
{
  v2 = qword_100185258;
  if (!qword_100185258)
  {
    sub_1000CDD64(&qword_100185220, &qword_10013EE60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100185258);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for URLFileProtection()
{
  v4 = qword_1001852A0;
  if (!qword_1001852A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1001852A0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1000CF57C()
{
  v2 = qword_100185268;
  if (!qword_100185268)
  {
    type metadata accessor for URLFileProtection();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100185268);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000CF5FC()
{
  v2 = qword_100185270;
  if (!qword_100185270)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100185270);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000CF684(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1000CF7EC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t type metadata accessor for FileProtectionClassMigrator()
{
  v2 = qword_100185BB0[0];
  if (!qword_100185BB0[0])
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, qword_100185BB0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1000CFA94()
{
  v2 = qword_1001852B8;
  if (!qword_1001852B8)
  {
    type metadata accessor for URLResourceKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1001852B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000CFB2C()
{
  v2 = qword_1001852C0;
  if (!qword_1001852C0)
  {
    type metadata accessor for URLResourceKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1001852C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000CFBC4()
{
  v2 = qword_1001852C8;
  if (!qword_1001852C8)
  {
    type metadata accessor for DirectoryEnumerationOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1001852C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000CFC74()
{
  v2 = qword_1001852D0;
  if (!qword_1001852D0)
  {
    type metadata accessor for URLFileProtection();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1001852D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000CFD0C()
{
  v2 = qword_1001852D8;
  if (!qword_1001852D8)
  {
    type metadata accessor for URLFileProtection();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1001852D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000CFDA4()
{
  v2 = qword_1001852E0;
  if (!qword_1001852E0)
  {
    type metadata accessor for URLFileProtection();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1001852E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000CFE3C()
{
  v2 = qword_1001852E8;
  if (!qword_1001852E8)
  {
    type metadata accessor for URLResourceKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1001852E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000CFED4()
{
  v2 = qword_1001852F0;
  if (!qword_1001852F0)
  {
    type metadata accessor for DirectoryEnumerationOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1001852F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000CFF6C()
{
  v2 = qword_1001852F8;
  if (!qword_1001852F8)
  {
    type metadata accessor for DirectoryEnumerationOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1001852F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000D0004()
{
  v2 = qword_100186540[0];
  if (!qword_100186540[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_100186540);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000D0080()
{
  v2 = qword_100185300;
  if (!qword_100185300)
  {
    type metadata accessor for DirectoryEnumerationOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100185300);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000D0100()
{
  v2 = qword_100185308;
  if (!qword_100185308)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100185308);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000D0178()
{
  v2 = qword_100185310;
  if (!qword_100185310)
  {
    type metadata accessor for URLResourceKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100185310);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000D01F8()
{
  v2 = qword_100185318;
  if (!qword_100185318)
  {
    type metadata accessor for URLFileProtection();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100185318);
    return WitnessTable;
  }

  return v2;
}

void *sub_1000D0278(const void *a1, void *a2)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1000CDBD4(&qword_100185138, &qword_10013EE18);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_1000D03A0()
{
  v2 = qword_100185320;
  if (!qword_100185320)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_100185320);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1000D040C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1000D0470(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_1000D04E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000CDFFC();
}

uint64_t sub_1000D051C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1000D0580(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

void sub_1000D0618(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a2 + 40);
  v4 = 138412546;
  v5 = a1;
  v6 = 2048;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Got error %@ updating badge to %ld", &v4, 0x16u);
}

void sub_1000D06E0()
{
  sub_100005F80();
  sub_100005F68(v1, v2, v3, 3.8521e-34);
  sub_10000E360(&_mh_execute_header, "%p Error occurred during autofetch: %{public}@", v4, v5);
}

void sub_1000D0724()
{
  sub_100005F80();
  v2 = v1;
  sub_100005F68(v1, v3, v4, 5.8382e-34);
  sub_10000E360(&_mh_execute_header, "[Autofetch Error] account=%{public}@ error=%{public}@", v5, v6);
}

void sub_1000D0770()
{
  sub_100005F80();
  sub_100005F68(v1, v2, v3, 3.8521e-34);
  sub_10000E360(&_mh_execute_header, "Activity %p did finish with error: %{public}@", v4, v5);
}

void sub_1000D0824(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_100005FAC(&_mh_execute_header, a3, a3, "File protection class migration failed with error: %{public}@", a2);
}

void sub_1000D0874(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_100005FAC(&_mh_execute_header, a3, a3, "#Network Error occurred during autofetch but was suppressed intentionally.\n%{public}@", a2);
}

void sub_1000D0908(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v3 = 138412290;
  v4 = a1;
  sub_100005FAC(&_mh_execute_header, a2, a3, "Connection error: %@", &v3);
}

void sub_1000D0978(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v3 = 138412290;
  v4 = a1;
  sub_100005FAC(&_mh_execute_header, a2, a3, "Removing app failed with error: %@", &v3);
}

void sub_1000D09E8(char a1, char a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1 & 1;
  v4 = 1024;
  v5 = a2 & 1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "WARNING: Snapshot invalidation is disabled. This should only be used for testing purposes. isClientRunningTests=%{BOOL}d forceDisable=%{BOOL}d", v3, 0xEu);
}

void sub_1000D0A78(uint64_t a1)
{
  if (a1)
  {
    sub_1000D0EC0(a1);
    v2 = *(a1 + 96);
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v2);
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;

    v5 = *(a1 + 8);
    v6 = dispatch_time(0, 200000000);
    dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
    v7 = *(a1 + 8);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000D0F20;
    handler[3] = &unk_100156400;
    handler[4] = a1;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(*(a1 + 8));
  }
}

double sub_1000D0B88(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"MailPCPollIntervalOverride", kCFPreferencesAnyApplication, 0);
  if (AppIntegerValue < 1)
  {
    return *(a1 + 20);
  }

  v3 = AppIntegerValue;
  v4 = +[DaemonFetchController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 134217984;
    v7 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "overriding periodic fetch interval: %ld seconds", &v6, 0xCu);
  }

  return v3;
}

void sub_1000D0E88(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v3));

  _Unwind_Resume(a1);
}

void sub_1000D0EC0(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(a1 + 8);
      *(a1 + 8) = 0;
    }
  }
}

void sub_1000D0F20(uint64_t a1)
{
  sub_100012DF4(*(a1 + 32));
  v2 = *(a1 + 32);

  sub_1000D0EC0(v2);
}

void sub_1000D1078(NSObject **a1, id *a2, void *a3, void *a4)
{
  v8 = dispatch_time(0, 500000000);
  v9 = a1[12];
  *a2 = _NSConcreteStackBlock;
  a2[1] = 3221225472;
  a2[2] = sub_1000132F8;
  a2[3] = &unk_1001563D8;
  a2[4] = a1;
  a2[5] = a3;
  v10 = a3;
  dispatch_after(v8, v9, a2);
}

void sub_1000D1140(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "resetPushState failed: %{public}@", buf, 0xCu);
}

void sub_1000D1198(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Scheduling fetch for %@ new accounts", buf, 0xCu);
}

void sub_1000D1234(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4[0] = 67109378;
  v4[1] = v2;
  v5 = 2112;
  v6 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Re-trying performFetchOfType:%i uids for %@", v4, 0x12u);
}

void sub_1000D1334(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Favorites Failed to create FavoriteItem_Account dictionary representation for %@", &v2, 0xCu);
}

void sub_1000D13D4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Favorites Failed to create FavoriteItem_Inbox dictionary representation for %@", &v2, 0xCu);
}

void sub_1000D172C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  sub_10001C908(v16, v17, v18, v19, v20, v21, v22, v23);

  _Unwind_Resume(a1);
}

void sub_1000D1C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_10001C8A4(v22, v23, v24, v25, v26, v27);

  _Unwind_Resume(a1);
}

void sub_1000D1D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_10001C8A4(v23, v24, v25, v26, v27, v28);

  _Unwind_Resume(a1);
}

void sub_1000D1EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_10001C8A4(v22, v23, v24, v25, v26, v27);

  _Unwind_Resume(a1);
}

void sub_1000D1FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_10001C8A4(v23, v24, v25, v26, v27, v28);

  _Unwind_Resume(a1);
}

void sub_1000D2074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_10001C854(a1, a2, a3, a4, a5, a6);

  _Unwind_Resume(v20);
}

void sub_1000D2120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_10001C854(a1, a2, a3, a4, a5, a6);

  _Unwind_Resume(v20);
}

void sub_1000D21CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_10001C854(a1, a2, a3, a4, a5, a6);

  _Unwind_Resume(v20);
}

void sub_1000D2278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_10001C854(a1, a2, a3, a4, a5, a6);

  _Unwind_Resume(v20);
}

void sub_1000D2360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_10001C854(a1, a2, a3, a4, a5, a6);

  _Unwind_Resume(v20);
}

void sub_1000D239C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "invalidateVisibleItems %@", &v2, 0xCu);
}

void sub_1000D2414(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100024EB4;
    v5[3] = &unk_1001563D8;
    v6 = v3;
    v7 = a1;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

void sub_1000D24B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = WeakRetained[14];
  }

  [WeakRetained synchronize];
  if ([*(a1 + 32) count])
  {
    v4 = *(a1 + 32);
  }

  else
  {
    if (v3)
    {
      v5 = v3[14];
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = [v6 dictionaryRepresentation];
    v4 = [v7 allKeys];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D25F8;
  block[3] = &unk_100157098;
  block[4] = v3;
  v10 = v4;
  v11 = *(a1 + 48);
  v8 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000D25F8(uint64_t a1)
{
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 120);
  }

  else
  {
    v3 = 0;
  }

  [v3 lock];
  v69 = [*(a1 + 40) copy];
  v74 = +[NSMutableDictionary dictionary];
  v75 = a1;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v69;
  v4 = [obj countByEnumeratingWithState:&v86 objects:v97 count:16];
  if (v4)
  {
    v5 = *v87;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v87 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v86 + 1) + 8 * i);
        if ([v7 length] == 36)
        {
          v8 = *(v75 + 32);
          if (v8)
          {
            v8 = v8[14];
          }

          v9 = v8;
          v10 = [v9 objectForKey:v7];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v74 setObject:v10 forKey:v7];
          }

          else if (!v10 && *(v75 + 48) != 3)
          {
            v11 = +[NSNull null];
            [v74 setObject:v11 forKey:v7];
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v86 objects:v97 count:16];
    }

    while (v4);
  }

  v12 = sub_10001EB38();
  v13 = "ontactStore";
  if (sub_1000260AC(v12))
  {
    v14 = [v74 count];
    v95 = 134217984;
    v96 = v14;
    sub_1000260A0();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
  }

  v20 = v75;
  [*(v75 + 32) mailboxesCollection];
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_100023358;
  v70 = v81[3] = &unk_100157070;
  v82 = v70;
  v83 = 0;
  v84 = *(v75 + 32);
  v85 = &v90;
  [v74 enumerateKeysAndObjectsUsingBlock:v81];
  if (*(v75 + 48) <= 1uLL)
  {
    v21 = sub_10001EB38();
    if (sub_1000260AC(v21))
    {
      v22 = *(v75 + 48);
      v95 = 134217984;
      v96 = v22;
      sub_1000260A0();
      _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v72 = [v70 items];
    v28 = [v72 countByEnumeratingWithState:&v77 objects:v94 count:16];
    if (v28)
    {
      v30 = *v78;
      *&v29 = 138412290;
      v71 = v29;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v78 != v30)
          {
            objc_enumerationMutation(v72);
          }

          v32 = *(*(&v77 + 1) + 8 * j);
          v33 = [v32 syncKey];
          if ([v32 shouldSync])
          {
            v34 = [v74 objectForKey:v33];
            if (v34)
            {
              v35 = [v32 representingMailbox];
              v4 = v35;
              if (v35)
              {
                v13 = MFMailboxUid;
                if (+[MFMailboxUid isStandardizedMailboxUidType:](MFMailboxUid, "isStandardizedMailboxUidType:", [v35 mailboxType]))
                {
                  v13 = [v34 objectForKey:@"mailboxType"];
                  v36 = [v13 integerValue];

                  if (!v36)
                  {
                    v37 = [v34 mutableCopy];
                    v38 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 mailboxType]);
                    [v37 setObject:v38 forKey:@"mailboxType"];

                    v39 = sub_10001EB38();
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                    {
                      v40 = [EFPrivacy partiallyRedactedStringForString:v33];
                      sub_100026084(v40, v41, v42, v43, v44, v45, v46, v47, v69, v70, v71);
                      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Found new Favorite Mailbox to add %@", v48, 0xCu);
                    }

                    v49 = *(v75 + 32);
                    if (v49)
                    {
                      v49 = v49[14];
                    }

                    v50 = v49;
                    v13 = [v32 syncKey];
                    [v50 setObject:v37 forKey:v13];

                    goto LABEL_44;
                  }
                }
              }
            }

            else
            {
              v51 = sub_10001EB38();
              if (sub_1000260AC(v51))
              {
                v52 = [EFPrivacy partiallyRedactedStringForString:v33];
                sub_100026084(v52, v53, v54, v55, v56, v57, v58, v59, v69, v70, v71);
                sub_1000260A0();
                _os_log_impl(v60, v61, v62, "Found new Favorite Mailbox to add %@", v63, 0xCu);
              }

              v13 = v75;
              v4 = sub_100023038(*(v75 + 32), v32);
              v64 = *(v75 + 32);
              if (v64)
              {
                v64 = v64[14];
              }

              v37 = v64;
              [v37 setObject:v4 forKey:v33];
LABEL_44:
            }
          }
        }

        v28 = [v72 countByEnumeratingWithState:&v77 objects:v94 count:16];
      }

      while (v28);
    }

    v20 = v75;
  }

  if (*(v91 + 24) == 1)
  {
    sub_1000217A8(*(v20 + 32), @"_mergeExternalChanges");
  }

  v65 = +[EFScheduler globalAsyncScheduler];
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_1000D2E70;
  v76[3] = &unk_100156400;
  v76[4] = *(v20 + 32);
  [v65 performBlock:v76];

  v66 = *(v75 + 32);
  if (v66)
  {
    v67 = *(v66 + 120);
  }

  else
  {
    v67 = 0;
  }

  [v67 unlock];
  if (*(v91 + 24) == 1)
  {
    v68 = *(v75 + 32);
    if (v68)
    {
      sub_1000D2414(v68, 0);
    }
  }

  _Block_object_dispose(&v90, 8);
}

id sub_1000D2E70(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 112);
  }

  else
  {
    v2 = 0;
  }

  return [v2 synchronize];
}

void sub_1000D2E88(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v3 = sub_10001EB38();
    if (sub_1000260AC(v3))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      sub_1000260A0();
      _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
    }

    sub_10001F338(*(a1 + 48));
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    sub_1000D2414(v9, 0);
  }
}

void sub_1000D2F5C(uint64_t a1)
{
  v3 = sub_10001EB38();
  if (sub_1000260AC(v3))
  {
    LOWORD(v13) = 0;
    sub_1000260A0();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  sub_10001F338(*(a1 + 32));
  v9 = *(a1 + 32);
  if (v9)
  {
    sub_1000D2414(v9, 0);
  }

  v10 = +[NSNotificationCenter defaultCenter];
  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) userInfo];
  [v10 postNotificationName:@"FavoritesPersistenceFocusDidChangeNotification" object:v11 userInfo:v12];
}

void sub_1000D3044(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a3;
  *(buf + 6) = 2080;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not read %@: %s", buf, 0x16u);
}

void sub_1000D30E0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Favorites Could not find collection for item:%@", &v2, 0xCu);
}

void sub_1000D3158(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "syncing key = %@; value = %@", buf, 0x16u);
}

void sub_1000D31C0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "cannot create item for KV entry (possibly the account does not exist): %@ = %@", &v3, 0x16u);
}

void sub_1000D328C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Favorites Failed to get outbox predicate: %{public}@", buf, 0xCu);
}

void sub_1000D32E4(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Tried to schedule fetch for type %d more than once.", buf, 8u);
}

void sub_1000D339C(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to mark XPC activity %p as continuing (async).", &v2, 0xCu);
}

void sub_1000D3414(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "There are %u running fetch XPC activities.", v2, 8u);
}

void sub_1000D348C(int a1, uint8_t *buf, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Found %u fetch XPC activities.", buf, 8u);
}

void sub_1000D3558(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Caught exception %@", &v2, 0xCu);
}

void sub_1000D35D0(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Stack trace: %{public}@", buf, 0xCu);
}

void sub_1000D372C(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error writing metadata at: %@ with error: %{public}@", buf, 0x16u);
}

void sub_1000D379C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error serializing metadata: %{public}@", buf, 0xCu);
}

void sub_1000D37F4(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "maild exiting due to xpc error [%s] ", buf, 0xCu);
}

void sub_1000D383C()
{
  sub_100005F80();
  sub_100005F68(v1, v2, v3, 5.778e-34);
  sub_10000E360(&_mh_execute_header, "connection %@ was sent bad message %{public}@", v4, v5);
}

void sub_1000D3880()
{
  sub_100005F80();
  sub_100005F68(v1, v2, v3, 5.778e-34);
  sub_10000E360(&_mh_execute_header, "connection %@ had error %{public}@", v4, v5);
}

void sub_1000D38C4()
{
  sub_100005F80();
  *v1 = 138412546;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2112;
  *(v1 + 14) = v3;
  sub_10000E360(&_mh_execute_header, "SecTaskCopyValueForEntitlement() failed: %@ (%@)", v4, v5);
}

void sub_1000D3918(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Summary parsing failed: %{public}@", buf, 0xCu);
}

void sub_1000D3978(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error getting loading context event: %{public}@", buf, 0xCu);
}

void sub_1000D3B88(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to create count predicate for favorite item: %@", &v2, 0xCu);
}

void sub_1000D3C58(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_100005FE4(&_mh_execute_header, a2, a3, "Checking for existing autosaves failed with error [%{public}@]", a2);
}

void sub_1000D3CA4(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Removal of autosave failed with error. autosaveID=%@ error=%{public}@", buf, 0x16u);
}

void sub_1000D3D7C(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_100005FE4(&_mh_execute_header, a2, a3, "Autosave could not be performed because the message data is invalid. error=%{public}@", a2);
}

void sub_1000D3DC8(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_100005FE4(&_mh_execute_header, a2, a3, "Autosave could not be performed because message does not have a document identifier header. error=%{public}@", a2);
}

void sub_1000D3EF4(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Message '%@' has no summary. Not modifying notification.", buf, 0xCu);
}

void sub_1000D3F50(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "message delivery failed with error: %{public}@", buf, 0xCu);
}

void sub_1000D3FE4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Attachments ** Unable to vet security scope URL: %@. Must be a URL inside the placeholder directory.", &v2, 0xCu);
}

void sub_1000D40CC(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Attachments Unable to handle operation code [%lu]", &v2, 0xCu);
}

void sub_1000D4158(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to retrieve free space with error: %{public}@", buf, 0xCu);
}

void sub_1000D41B0()
{
  sub_100064264();
  sub_100064258(v1, v2, 5.8381e-34);
  sub_100005FE4(&_mh_execute_header, v3, v4, "Cannot open application (%{public}@)", v5);
}

void sub_1000D41F4()
{
  sub_100064264();
  sub_100064258(v1, v2, 5.8381e-34);
  sub_100005FE4(&_mh_execute_header, v3, v4, "Failed to archive context. %{public}@", v5);
}

void sub_1000D4238(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Creating user activity of type: %{public}@, content identifier: %{public}@", buf, 0x16u);
}

void sub_1000D42A8()
{
  sub_100064264();
  sub_100064258(v1, v2, 5.8381e-34);
  sub_100005FE4(&_mh_execute_header, v3, v4, "Failed to create user activity data. %{public}@", v5);
}

void sub_1000D42EC()
{
  sub_100064264();
  sub_100064258(v1, v2, 5.8381e-34);
  sub_100005FE4(&_mh_execute_header, v3, v4, "Failed to open compose scene. %{public}@", v5);
}

void sub_1000D4470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1000D44C8(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = 5;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to transition from state %ld to state %ld.", buf, 0x16u);
}

void sub_1000D4564()
{
  sub_10000601C();
  sub_100005F68(v2, v3, v4, 5.778e-34);
  sub_10000E360(&_mh_execute_header, "Error trying to get compresssed xattr to %@: %{public}@", v5, v6);
}

void sub_1000D45AC()
{
  sub_10000601C();
  sub_100005F68(v2, v3, v4, 5.778e-34);
  sub_10000E360(&_mh_execute_header, "Error trying to add compressed xattr to %@: %{public}@", v5, v6);
}

void sub_1000D45F4(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#MessageBodyProcessor Failed to wait for message (%@) download with error %{public}@", buf, 0x16u);
}

void sub_1000D4670(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#PurgeableStorage Failed to compute size for %@ with error %{public}@", buf, 0x16u);
}

void sub_1000D4700(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to transition from state %ld to state %ld.", buf, 0x16u);
}

void sub_1000D4758()
{
  sub_10000601C();
  sub_100005F68(v2, v3, v4, 5.778e-34);
  sub_10000E360(&_mh_execute_header, "Error trying to get purgeable xattr to {%@}: %{public}@", v5, v6);
}

void sub_1000D47A0()
{
  sub_10000601C();
  sub_100005F68(v2, v3, v4, 5.778e-34);
  sub_10000E360(&_mh_execute_header, "Error trying to add purgeable xattr to {%@}: %{public}@", v5, v6);
}

void sub_1000D47E8()
{
  sub_10000601C();
  sub_100005F68(v2, v3, v4, 5.778e-34);
  sub_10000E360(&_mh_execute_header, "Error trying to remove purgeable xattr to {%@}: %{public}@", v5, v6);
}

void sub_1000D4830(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a2 = 138543618;
  *(a2 + 4) = a1;
  *(a2 + 12) = 2112;
  *(a2 + 14) = a3;
  sub_10000E360(&_mh_execute_header, "Error %{public}@ attempting to close fts for URL %@", a2, a4);
}

void sub_1000D488C(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  sub_10000E360(&_mh_execute_header, "Error %{public}@ No filesystem representation for URL %@", a3, a4);
}

void sub_1000D48E8(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Invalid Actions. Already moving message to destination: %{public}@.", buf, 0xCu);
}

void sub_1000D4AB0(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Nano Attempt to recover mailboxUid for MFNanoBridgeSettingsAccountSpecificMailbox failed. Account did not return valid mailboxUid for mailboxURL: %@", &v3, 0xCu);
}

void sub_1000D4B2C(uint64_t a1, char a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a2 & 1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Nano Attempt to recover mailboxUid for MFNanoBridgeSettingsAccountSpecificMailbox failed. (Id: %{public}@, Active: %lu)", buf, 0x16u);
}

void sub_1000D4B9C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Nano Unable to decode signature: %{public}@", &v2, 0xCu);
}

void sub_1000D4C14(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "#Nano Posting NotificationCenter Notification Bridge Setting has Changed for key: %@", &v2, 0xCu);
}

void sub_1000D4D14(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#Nano [%{public}@] Did finish loading.", buf, 0xCu);
}

void sub_1000D4D6C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Nano [%{public}@] Did fail loading.", buf, 0xCu);
}

void sub_1000D4DD8(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#Nano Filtering %lu library messages to synced mailboxes.", buf, 0xCu);
}

void sub_1000D4E20(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2114;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Nano MFNanoServerFullMessageLoader: library missing %lu messages - messageIds: %{public}@", buf, 0x16u);
}

void sub_1000D4F28(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 80);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Nano Message from MFNanoServerMessageContentLoader is not a LibraryMessage: %{public}@", &v3, 0xCu);
}

void sub_1000D4FA4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Nano Error retrieving Html Content for Message. %{public}@", buf, 0xCu);
}

void sub_1000D4FFC()
{
  sub_10000601C();
  *v2 = 138543618;
  *(v2 + 4) = v3;
  *(v2 + 12) = 2114;
  *(v2 + 14) = v4;
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#Nano Error retrieving Html Content for Message. %{public}@, %{public}@", v5, 0x16u);
}

void sub_1000D5060()
{
  sub_10000601C();
  *v2 = 138412546;
  *(v2 + 4) = v3;
  *(v2 + 12) = 2112;
  *(v2 + 14) = v4;
  _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "#Nano NanoContent has nil messageId (hasLoadedCompleteBody). Please file bug against 'Mail | watchOS' component! MessageID: %@, ExternalID: %@", v5, 0x16u);
}

void sub_1000D50C4(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Nano Unable to send composed message because requested account is not present on the companion. Account Id: %{public}@, ComposedMessageId: %{public}@", buf, 0x16u);
}

void sub_1000D5134(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#aps-push account %@: failed to register mailboxes for external push notifications", &v2, 0xCu);
}

void sub_1000D51F0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to set NotificationCenter topics: %@ with error : %@", &v4, 0x16u);
}

void sub_1000D527C()
{
  sub_100005F80();
  sub_1000A4E14(v1, 5.8382e-34, v2, v3);
  *(v4 + 12) = 2114;
  *(v4 + 14) = v5;
  sub_10000E360(&_mh_execute_header, "Failed to replace notification due to VIP change: ID: %{public}@, error: %{public}@", v6, v7);
}

void sub_1000D5410()
{
  sub_100005F80();
  sub_1000A4E14(v1, 5.778e-34, v2, v3);
  *(v4 + 12) = 2112;
  *(v4 + 14) = v5;
  sub_10000E360(&_mh_execute_header, "Could not update summary for RemindMe notification %@, message %@", v6, v7);
}

void sub_1000D5460()
{
  sub_100005F80();
  sub_1000A4E14(v1, 5.778e-34, v2, v3);
  *(v4 + 12) = 2112;
  *(v4 + 14) = v5;
  sub_10000E360(&_mh_execute_header, "Failed to find persisted message, skipping updates for RemindMe notification %@, message %@", v6, v7);
}

void sub_1000D54B0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1000A4E14(a1, 5.8382e-34, a2, a3);
  *(v4 + 12) = 1024;
  *(v4 + 14) = v5;
  _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "notifyContentsAvailable message=%{public}@ -- summary: %u", v6, 0x12u);
}

void sub_1000D5514(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to load body for message: %@", buf, 0xCu);
}

void sub_1000D556C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "we've given up requesting the summary for message=%{public}@. we are posting an empty summary string.", buf, 0xCu);
}

void sub_1000D55C4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a2 + 40) + 16);
  sub_1000A4E14(a1, 5.8382e-34, a2, a3);
  *(v5 + 12) = 2048;
  *(v5 + 14) = v6;
  _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "re-attempting body load for message=%{public}@. attempt number %tu", v7, 0x16u);
}

void sub_1000D5630(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "UPGRADE: Failed to add notification request: %@ with error %@", &v4, 0x16u);
}

void sub_1000D57AC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to find a valid currentAccountIDOfSoundToPlay - autoFetchData=%@", &v2, 0xCu);
}

void sub_1000D5A0C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to find a message for error: %{public}@", buf, 0xCu);
}

void sub_1000D5A8C(void *a1, int a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a2;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#search-manager [%{public}@] Begin %u remote searches", buf, 0x12u);
}

unsigned __int8 *sub_1000D5B34(unsigned __int8 *result, unsigned __int8 a2)
{
  if (result)
  {
    v3 = result;
    [result willChangeValueForKey:@"isExecuting"];
    [v3 willChangeValueForKey:@"isFinished"];
    atomic_store(a2, v3 + 8);
    [v3 didChangeValueForKey:@"isFinished"];

    return [v3 didChangeValueForKey:@"isExecuting"];
  }

  return result;
}

uint64_t sub_1000D5BC0(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

void sub_1000D5BD4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

id *sub_1000D5BEC(id *WeakRetained)
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 9);
    v1 = vars8;
  }

  return WeakRetained;
}

void sub_1000D5C24(void *a1, char *a2, uint64_t a3)
{
  if (a1)
  {
    sub_10000605C(a1, a2, a3, 80);
  }
}

void sub_1000D5C38(void *a1, char *a2, uint64_t a3)
{
  if (a1)
  {
    sub_10000605C(a1, a2, a3, 88);
  }
}

id sub_1000D5C4C(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a2[6];
  }

  else
  {
    v3 = 0;
  }

  return [a2 runForSearchContext:v3];
}

void sub_1000D5C90(char a1, uint64_t a2, os_log_t log)
{
  if (a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a2 + 56);
  }

  v4 = 138543362;
  v5 = v3;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#search-manager [%{public}@] Done", &v4, 0xCu);
}

id sub_1000D5D24(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 64);
  }

  else
  {
    v3 = 0;
  }

  return [v3 setCompletedUnitCount:1];
}

void sub_1000D5D68(uint64_t a1, uint64_t a2, os_log_t log)
{
  if (a1)
  {
    v3 = *(a1 + 56);
  }

  else
  {
    v3 = 0;
  }

  v4 = 138543618;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#search-manager [%{public}@] Failed with error: %@", &v4, 0x16u);
}