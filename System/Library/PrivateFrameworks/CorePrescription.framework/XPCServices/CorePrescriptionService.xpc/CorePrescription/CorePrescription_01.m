uint64_t sub_10001ADD8()
{
  v60 = v0;
  v1 = v0[8];
  swift_defaultActor_initialize();
  v1[23] = 0;
  v0[7] = *v1;
  v2 = v0 + 7;
  sub_100006940(&qword_1000B7B40, &qword_100084F60);
  v3 = sub_100081338();
  v5 = v4;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  v6 = sub_100081018();
  v0[17] = sub_100016240(v6, qword_1000B7A58);

  v7 = sub_100080FF8();
  v8 = sub_1000815B8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v59[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1000597A8(v3, v5, v59);
    _os_log_impl(&_mh_execute_header, v7, v8, "Swift %s starting", v9, 0xCu);
    sub_1000068F4(v10);
  }

  v11 = systemBootTime();
  if (v11)
  {
    v12 = v0[15];
    v13 = v11;
    sub_100080D78();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v16 = v0[15];
  v15 = v0[16];
  v17 = v0[14];
  v18 = sub_100080D98();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v16, v14, 1, v18);
  sub_100022C34(v16, v15);
  sub_10001A8DC(v15, v17, &unk_1000B88B0, &qword_100086A40);
  v20 = sub_100080FF8();
  v21 = sub_1000815C8();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v0[14];
  if (v22)
  {
    v24 = v0[13];
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v59[0] = v26;
    *v25 = 136315138;
    sub_10001A8DC(v23, v24, &unk_1000B88B0, &qword_100086A40);
    v27 = (*(v19 + 48))(v24, 1, v18);
    v28 = v0[13];
    if (v27 == 1)
    {
      sub_10001A80C(v0[13], &unk_1000B88B0, &qword_100086A40);
      v29 = 0xE900000000000029;
      v30 = 0x6E776F6E6B6E7528;
    }

    else
    {
      v30 = sub_100080D38();
      v29 = v31;
      (*(v19 + 8))(v28, v18);
    }

    sub_10001A80C(v0[14], &unk_1000B88B0, &qword_100086A40);
    v32 = sub_1000597A8(v30, v29, v59);

    *(v25 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v20, v21, "System boot time: %s", v25, 0xCu);
    sub_1000068F4(v26);

    v2 = v0 + 7;
  }

  else
  {

    sub_10001A80C(v23, &unk_1000B88B0, &qword_100086A40);
  }

  v33 = sub_100080FF8();
  v34 = sub_1000815C8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Starting service initialization", v35, 2u);
  }

  v37 = v0[11];
  v36 = v0[12];
  v38 = v0[10];

  v39 = type metadata accessor for CalibrationDataDownloaderImpl();
  v40 = swift_allocObject();
  swift_defaultActor_initialize();
  v40[16] = 0x3FD3333333333333;
  v40[17] = 5;
  sub_1000812F8();
  v41 = sub_1000812C8();
  v43 = v42;
  (*(v37 + 8))(v36, v38);
  if (v43 >> 60 == 15)
  {
    __break(1u);
  }

  v44 = v0[8];

  v40[14] = v41;
  v40[15] = v43;
  *(v44 + 112) = v40;
  v45 = (v44 + 112);
  v45[3] = v39;
  v45[4] = &off_1000AA698;
  type metadata accessor for AppClipCodeTranscoder();
  v45[7] = swift_allocObject();
  bzero(v2 + 15, 0x500uLL);
  uname((v2 + 15));
  v46 = sub_100081368();
  if (v47)
  {
    v48 = v46;
  }

  else
  {
    v48 = 0x6E776F6E6B6E55;
  }

  if (v47)
  {
    v49 = v47;
  }

  else
  {
    v49 = 0xE700000000000000;
  }

  type metadata accessor for HealthDataProvider();
  swift_allocObject();

  v45[6] = sub_100063B54(v48, v49);
  v50 = objc_allocWithZone(KeychainAccess);
  v51 = sub_100081288();

  v52 = [v50 initWithDeviceModel:v51];

  v45[5] = v52;
  type metadata accessor for DataStore();
  v53 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v53 + 120) = 0;
  *(v53 + 112) = [objc_opt_self() sharedInstance];
  sub_100022CA4(v45, (v2 - 5));
  v54 = type metadata accessor for TimestampGeneratorImpl();
  v55 = swift_allocObject();
  v59[3] = v54;
  v59[4] = &off_1000AC1F8;
  v59[0] = v55;
  type metadata accessor for DataManager();
  swift_allocObject();
  v56 = sub_100046458(v53, v2 - 5, v59);
  v0[18] = 0;
  v57 = v0[8];
  *(v57 + 176) = v56;

  return _swift_task_switch(sub_10001B6E4, v57, 0);
}

uint64_t sub_10001B6E4()
{
  v0[19] = *(v0[8] + 176);

  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_10001B7BC;

  return sub_10003EF30();
}

uint64_t sub_10001B7BC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v2;

  v6 = *(v3 + 152);
  v7 = *(v3 + 64);

  sub_100022D08();
  swift_getObjectType();
  v9 = sub_1000814D8();
  if (v2)
  {
    v10 = sub_10001BAB0;
  }

  else
  {
    v10 = sub_10001B950;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_10001B950()
{
  v1 = v0[17];
  v2 = sub_100080FF8();
  v3 = sub_1000815C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished service initialization", v4, 2u);
  }

  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];

  sub_10001A80C(v5, &unk_1000B88B0, &qword_100086A40);

  v10 = v0[1];
  v11 = v0[8];

  return v10(v11);
}

uint64_t sub_10001BAB0()
{
  v1 = v0[21];
  v2 = v0[17];
  swift_errorRetain();
  v3 = sub_100080FF8();
  v4 = sub_1000815D8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Service initialization failed: %@", v5, 0xCu);
    sub_10001A80C(v6, &qword_1000B83B0, &qword_100084EC0);
  }

  v8 = v0[18];
  v9 = v0[16];

  swift_willThrow();
  sub_10001A80C(v9, &unk_1000B88B0, &qword_100086A40);
  if (v8)
  {
    v11 = v0[8];
    v10 = v0[9];
    sub_1000068F4((v11 + 112));

    v12 = *(v11 + 160);

    v13 = *(v11 + 168);

    v14 = *(v11 + 184);

    swift_defaultActor_destroy();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v0[8];
  }

  v17 = v0[15];
  v16 = v0[16];
  v19 = v0[13];
  v18 = v0[14];
  v20 = v0[12];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10001BCF4()
{
  v1 = [objc_opt_self() defaultStore];
  v0[20] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10001BE38;
    v3 = swift_continuation_init();
    v0[17] = sub_100006940(&qword_1000B7BA0, qword_100085068);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100022510;
    v0[13] = &unk_1000AA808;
    v0[14] = v3;
    [v2 aa_primaryAppleAccountWithCompletion:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_10001BE38()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 168) = v3;
  v4 = *(v1 + 152);
  if (v3)
  {
    v5 = sub_10001C0F8;
  }

  else
  {
    v5 = sub_10001BF58;
  }

  return _swift_task_switch(v5, v4, 0);
}

id sub_10001BF58()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    result = [v1 username];
    if (result)
    {
      v3 = result;
      type metadata accessor for Encryption();
      sub_1000812B8();

      v4 = static Encryption.SHA1Hash(text:)();
      v6 = v5;

      result = [v1 aa_firstName];
      if (result)
      {
        v7 = result;
        v8 = sub_1000812B8();
        v10 = v9;

        v11 = *(v0 + 8);

        return v11(v4, v6, v8, v10);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_10001A110();
  swift_allocError();
  *v12 = 7;
  swift_willThrow();
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10001C0F8()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[21];
  v4 = v0[1];

  return v4();
}

uint64_t sub_10001C168()
{
  *(v1 + 24) = v0;

  return _swift_task_switch(sub_10001C1F8, v0, 0);
}

uint64_t sub_10001C1F8()
{
  v1 = *(v0[3] + 152);
  v0[2] = 0;
  v2 = [v1 deleteAllASAKeysWithError:v0 + 2];
  v3 = v0[2];
  if (v2)
  {
    v8 = v0[1];
    v4 = v3;
    v5 = v8;
  }

  else
  {
    v6 = v3;
    sub_100080C38();

    swift_willThrow();
    v5 = v0[1];
  }

  return v5();
}

uint64_t sub_10001C300(double a1)
{
  *(v2 + 32) = v1;
  *(v2 + 24) = a1;
  *(v2 + 40) = *v1;
  return _swift_task_switch(sub_10001C34C, v1, 0);
}

uint64_t sub_10001C34C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = sub_100006940(&qword_1000B7B78, &qword_100084FF0);
  v5 = sub_100006940(&qword_1000B7B80, &qword_100084FF8);
  v6 = sub_100022D08();
  v7 = swift_task_alloc();
  v0[6] = v7;
  v7[2] = v1;
  v7[3] = v3;
  v7[4] = v2;
  v8 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_10001C48C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v4, v5, v1, v6, &unk_100085008, v7, v4);
}

uint64_t sub_10001C48C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return _swift_task_switch(sub_10001C5B8, v3, 0);
}

uint64_t sub_10001C5B8()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000817A8())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        sub_1000816A8();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      sub_100081468();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v6 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1000814A8();
      }

      sub_1000814C8();
      ++v3;
      if (v5 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v7 = *(v0 + 8);

  return v7(_swiftEmptyArrayStorage);
}

uint64_t sub_10001C738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 304) = a4;
  *(v5 + 296) = a5;
  *(v5 + 280) = a2;
  *(v5 + 288) = a3;
  *(v5 + 272) = a1;
  v7 = *(*(sub_100006940(&qword_1000B7A10, &qword_100084E70) - 8) + 64) + 15;
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = swift_task_alloc();

  return _swift_task_switch(sub_10001C808, a3, 0);
}

uint64_t sub_10001C808()
{
  v1 = *(v0[36] + 152);
  v0[2] = v0;
  v0[7] = v0 + 32;
  v0[3] = sub_10001C928;
  v2 = swift_continuation_init();
  v0[17] = sub_100006940(&qword_1000B7B88, &qword_100085010);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10001D81C;
  v0[13] = &unk_1000AA740;
  v0[14] = v2;
  [v1 fetchASAKeysWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001C928()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 344) = v3;
  v4 = *(v1 + 288);
  if (v3)
  {
    v5 = sub_10001D65C;
  }

  else
  {
    v5 = sub_10001CA48;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10001CA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 256);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v27 = *(v3 + 256);
    }

    v28 = *(v3 + 256);
    v5 = sub_1000817A8();
    v4 = v28;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_19:

    *(v3 + 352) = *(*(v3 + 288) + 160);
    v5 = sub_10001CDE8;
    v4 = 0;
    a3 = 0;

    return _swift_task_switch(v5, v4, a3);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v31 = v4 & 0xC000000000000001;
    v32 = v5;
    v30 = **(v3 + 280);
    v33 = v4;
    while (1)
    {
      v34 = v6;
      if (v31)
      {
        v8 = sub_1000816A8();
      }

      else
      {
        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v11 = *(v3 + 328);
      v10 = *(v3 + 336);
      v12 = *(v3 + 304);
      v13 = *(v3 + 296);
      v14 = *(v3 + 288);
      v15 = sub_100081538();
      v16 = *(v15 - 8);
      (*(v16 + 56))(v10, 1, 1, v15);
      v17 = swift_allocObject();
      v17[2] = 0;
      v18 = v17 + 2;
      v17[3] = 0;
      v17[4] = v14;
      v17[5] = v9;
      v17[6] = v13;
      v17[7] = v12;
      sub_10001A8DC(v10, v11, &qword_1000B7A10, &qword_100084E70);
      LODWORD(v10) = (*(v16 + 48))(v11, 1, v15);

      v19 = v9;
      v20 = *(v3 + 328);
      if (v10 == 1)
      {
        sub_10001A80C(*(v3 + 328), &qword_1000B7A10, &qword_100084E70);
        if (!*v18)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_100081528();
        (*(v16 + 8))(v20, v15);
        if (!*v18)
        {
LABEL_13:
          v22 = 0;
          v24 = 0;
          goto LABEL_14;
        }
      }

      v21 = v17[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v22 = sub_1000814D8();
      v24 = v23;
      swift_unknownObjectRelease();
LABEL_14:
      v25 = swift_allocObject();
      *(v25 + 16) = &unk_100085048;
      *(v25 + 24) = v17;

      sub_100006940(&qword_1000B7B78, &qword_100084FF0);
      v26 = v24 | v22;
      if (v24 | v22)
      {
        v26 = v3 + 176;
        *(v3 + 176) = 0;
        *(v3 + 184) = 0;
        *(v3 + 192) = v22;
        *(v3 + 200) = v24;
      }

      v6 = v34 + 1;
      v7 = *(v3 + 336);
      *(v3 + 232) = 1;
      *(v3 + 240) = v26;
      *(v3 + 248) = v30;
      swift_task_create();

      sub_10001A80C(v7, &qword_1000B7A10, &qword_100084E70);
      v4 = v33;
      if (v32 == v34 + 1)
      {
        goto LABEL_19;
      }
    }
  }

  __break(1u);
  return _swift_task_switch(v5, v4, a3);
}

uint64_t sub_10001CDE8()
{
  v1 = v0[44];
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v0[45] = v2;
  v4 = swift_task_alloc();
  v0[46] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];

  v6 = swift_task_alloc();
  v0[47] = v6;
  v7 = sub_100006940(&qword_1000B7B90, &qword_100085018);
  *v6 = v0;
  v6[1] = sub_10001CF10;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 33, 0, 0, 0xD000000000000013, 0x8000000100093080, sub_100022F60, v4, v7);
}

uint64_t sub_10001CF10()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v8 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v4 = sub_10001D410;
  }

  else
  {
    v5 = *(v2 + 360);
    v6 = *(v2 + 368);

    v4 = sub_10001D034;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001D034()
{
  v1 = v0[36];
  v0[49] = v0[33];
  return _swift_task_switch(sub_10001D058, v1, 0);
}

uint64_t sub_10001D058()
{
  v1 = *(v0 + 392);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v26 = *(v0 + 392);
    }

    result = sub_1000817A8();
    if (!result)
    {
      goto LABEL_20;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_20;
    }
  }

  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v3 = 0;
  v33 = *(v0 + 392) + 32;
  v34 = **(v0 + 280);
  v35 = v1 & 0xC000000000000001;
  v36 = result;
  do
  {
    v37 = v3;
    if (v35)
    {
      v5 = *(v0 + 392);
      v6 = sub_1000816A8();
    }

    else
    {
      v6 = *(v33 + 8 * v3);
    }

    v7 = v6;
    v9 = *(v0 + 312);
    v8 = *(v0 + 320);
    v10 = *(v0 + 304);
    v11 = *(v0 + 296);
    v12 = *(v0 + 288);
    v13 = sub_100081538();
    v14 = *(v13 - 8);
    (*(v14 + 56))(v8, 1, 1, v13);
    v15 = swift_allocObject();
    v15[2] = 0;
    v16 = v15 + 2;
    v15[3] = 0;
    v15[4] = v7;
    v15[5] = v12;
    v15[6] = v11;
    v15[7] = v10;
    sub_10001A8DC(v8, v9, &qword_1000B7A10, &qword_100084E70);
    LODWORD(v8) = (*(v14 + 48))(v9, 1, v13);

    v17 = v7;
    v18 = *(v0 + 312);
    if (v8 == 1)
    {
      sub_10001A80C(*(v0 + 312), &qword_1000B7A10, &qword_100084E70);
    }

    else
    {
      sub_100081528();
      (*(v14 + 8))(v18, v13);
    }

    if (*v16)
    {
      v19 = v15[3];
      v20 = *v16;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v21 = sub_1000814D8();
      v23 = v22;
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v24 = swift_allocObject();
    *(v24 + 16) = &unk_100085030;
    *(v24 + 24) = v15;

    sub_100006940(&qword_1000B7B78, &qword_100084FF0);
    v25 = v23 | v21;
    if (v23 | v21)
    {
      v25 = v0 + 144;
      *(v0 + 144) = 0;
      *(v0 + 152) = 0;
      *(v0 + 160) = v21;
      *(v0 + 168) = v23;
    }

    v3 = v37 + 1;
    v4 = *(v0 + 320);
    *(v0 + 208) = 1;
    *(v0 + 216) = v25;
    *(v0 + 224) = v34;
    swift_task_create();

    sub_10001A80C(v4, &qword_1000B7A10, &qword_100084E70);
  }

  while (v36 != v37 + 1);
LABEL_20:
  v27 = *(v0 + 392);

  v29 = *(v0 + 328);
  v28 = *(v0 + 336);
  v31 = *(v0 + 312);
  v30 = *(v0 + 320);
  **(v0 + 272) = _swiftEmptyArrayStorage;

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_10001D410()
{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[36];

  return _swift_task_switch(sub_10001D484, v3, 0);
}

uint64_t sub_10001D484()
{
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 384);
  v2 = sub_100081018();
  sub_100016240(v2, qword_1000B7A58);
  swift_errorRetain();
  v3 = sub_100080FF8();
  v4 = sub_1000815D8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 384);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error: %@", v7, 0xCu);
    sub_10001A80C(v8, &qword_1000B83B0, &qword_100084EC0);
  }

  else
  {
  }

  v11 = *(v0 + 328);
  v10 = *(v0 + 336);
  v13 = *(v0 + 312);
  v12 = *(v0 + 320);
  **(v0 + 272) = _swiftEmptyArrayStorage;

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10001D65C()
{
  v1 = v0[43];
  swift_willThrow();
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  v2 = v0[43];
  v3 = sub_100081018();
  sub_100016240(v3, qword_1000B7A58);
  swift_errorRetain();
  v4 = sub_100080FF8();
  v5 = sub_1000815D8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[43];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error: %@", v8, 0xCu);
    sub_10001A80C(v9, &qword_1000B83B0, &qword_100084EC0);
  }

  else
  {
  }

  v0[44] = *(v0[36] + 160);

  return _swift_task_switch(sub_10001CDE8, 0, 0);
}

uint64_t sub_10001D81C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10002329C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100006940(&qword_1000B7910, &unk_100084B20);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10000DC18(0, &qword_1000B7B98, &off_1000A8DF8);
    **(*(v4 + 64) + 40) = sub_100081488();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10001D90C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 152) = a2;
  *(v6 + 136) = a5;
  *(v6 + 144) = a6;
  *(v6 + 128) = a1;
  v7 = sub_100080D98();
  *(v6 + 160) = v7;
  v8 = *(v7 - 8);
  *(v6 + 168) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_10001D9D4, 0, 0);
}

void sub_10001D9D4()
{
  v1 = v0[18];
  sub_10002329C((v0[17] + 112), *(v0[17] + 136));
  v2 = [v1 publicKey];
  v3 = sub_100080CF8();
  v5 = v4;

  v0[23] = v3;
  v0[24] = v5;
  v6 = CloudEnvironmentDefaultVersion.unsafeMutableAddressor();
  countAndFlagsBits = v6->_countAndFlagsBits;
  v0[25] = v6->_object;
  type metadata accessor for CalibrationDataDownloaderImpl();

  v8 = swift_task_alloc();
  v0[26] = v8;
  *v8 = v0;
  v8[1] = sub_10001DB90;
  v9 = v0[19];

  JUMPOUT(0x100019984);
}

uint64_t sub_10001DB90(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v10 = *v2;
  v3[27] = a1;
  v3[28] = v1;

  if (v1)
  {
    v5 = sub_10001E2A4;
  }

  else
  {
    v7 = v3[24];
    v6 = v3[25];
    v8 = v3[23];

    sub_100006A34(v8, v7);
    v5 = sub_10001DCBC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001DCBC()
{
  v1 = *(v0 + 224);
  v2 = (*(v0 + 216) + OBJC_IVAR___CRXCFactoryCalibrationData_acc);
  v3 = *v2;
  v4 = v2[1];
  sub_10000D808(*v2, v4);
  v5 = sub_10001345C(v3, v4, 0);
  if (v1)
  {
    v6 = *(v0 + 216);
    sub_100006A34(v3, v4);
  }

  else
  {
    v7 = v5;
    sub_100006A34(v3, v4);
    v8 = OBJC_IVAR___CRXCAppClipCodePayload_left;
    swift_beginAccess();
    v9 = *&v7[v8];
    if (v9)
    {
      v10 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
      swift_beginAccess();
      v11 = *(v9 + v10);
      v12 = OBJC_IVAR___CRXCAppClipCodePayload_right;
      swift_beginAccess();
      v13 = *&v7[v12];
      if (v13)
      {
        v14 = *(v0 + 216);
        v15 = *(v0 + 176);
        v64 = *(v0 + 168);
        v65 = *(v0 + 160);
        v16 = *(v0 + 144);
        v17 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
        swift_beginAccess();
        v18 = *(v13 + v17);
        v19 = *v2;
        v63 = v2[1];
        v61 = v11;
        v60 = v18;
        v20 = v19;
        sub_10000D808(v19, v63);
        v21 = [v16 name];
        v22 = sub_1000812B8();
        v55 = v23;
        v56 = v22;

        v24 = [v16 creationDate];
        v59 = v15;
        sub_100080D78();

        v25 = v14;
        v58 = v14;
        v26 = &v14[OBJC_IVAR___CRXCFactoryCalibrationData_left];
        v27 = *&v14[OBJC_IVAR___CRXCFactoryCalibrationData_left];
        v28 = *(v26 + 1);
        v29 = *&v25[OBJC_IVAR___CRXCFactoryCalibrationData_right];
        v30 = *&v25[OBJC_IVAR___CRXCFactoryCalibrationData_right + 8];
        v57 = type metadata accessor for CRXCPrescriptionRecord();
        v31 = objc_allocWithZone(v57);
        v32 = &v31[OBJC_IVAR___CRXCPrescriptionRecord_accPayload];
        *v32 = v19;
        v32[1] = v63;
        v33 = &v31[OBJC_IVAR___CRXCPrescriptionRecord_enrollmentName];
        *v33 = v56;
        v33[1] = v55;
        (*(v64 + 16))(&v31[OBJC_IVAR___CRXCPrescriptionRecord_enrollmentDate], v15, v65);
        v34 = &v31[OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData];
        *v34 = v27;
        v34[1] = v28;
        v35 = v28;
        v36 = &v31[OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData];
        v37 = v29;
        *v36 = v29;
        v36[1] = v30;
        *&v31[OBJC_IVAR___CRXCPrescriptionRecord_leftEye] = v61;
        *&v31[OBJC_IVAR___CRXCPrescriptionRecord_rightEye] = v60;
        v38 = v35;
        sub_10001622C(v27, v35);
        sub_10001622C(v37, v30);
        v62 = v61;
        v39 = v60;
        sub_10000D808(v20, v63);
        sub_10001622C(v27, v38);
        sub_10001622C(v37, v30);
        *(v0 + 112) = v31;
        *(v0 + 120) = v57;
        v40 = objc_msgSendSuper2((v0 + 112), "init");

        sub_10001A164(v37, v30);
        sub_10001A164(v27, v38);
        sub_100006A34(v20, v63);
        (*(v64 + 8))(v59, v65);
        goto LABEL_17;
      }
    }

    if (qword_1000B73E0 != -1)
    {
      swift_once();
    }

    v41 = sub_100081018();
    sub_100016240(v41, qword_1000B7A58);
    v42 = sub_100080FF8();
    v43 = sub_1000815D8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Prescription is missing left & right eye RX; ignoring", v44, 2u);
    }

    v6 = *(v0 + 216);

    sub_10001A110();
    swift_allocError();
    *v45 = 6;
    swift_willThrow();
  }

  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  v46 = sub_100081018();
  sub_100016240(v46, qword_1000B7A58);
  swift_errorRetain();
  v47 = sub_100080FF8();
  v48 = sub_1000815D8();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138412290;
    swift_errorRetain();
    v51 = _swift_stdlib_bridgeErrorToNSError();
    *(v49 + 4) = v51;
    *v50 = v51;
    _os_log_impl(&_mh_execute_header, v47, v48, "Error: %@", v49, 0xCu);
    sub_10001A80C(v50, &qword_1000B83B0, &qword_100084EC0);
  }

  else
  {
  }

  v40 = 0;
LABEL_17:
  v52 = *(v0 + 176);
  **(v0 + 128) = v40;

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_10001E2A4()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);

  sub_100006A34(v3, v2);
  v4 = *(v0 + 224);
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  v5 = sub_100081018();
  sub_100016240(v5, qword_1000B7A58);
  swift_errorRetain();
  v6 = sub_100080FF8();
  v7 = sub_1000815D8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error: %@", v8, 0xCu);
    sub_10001A80C(v9, &qword_1000B83B0, &qword_100084EC0);
  }

  else
  {
  }

  v11 = *(v0 + 176);
  **(v0 + 128) = 0;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10001E46C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 200) = a2;
  *(v6 + 184) = a5;
  *(v6 + 192) = a6;
  *(v6 + 176) = a1;
  v7 = sub_100080D98();
  *(v6 + 208) = v7;
  v8 = *(v7 - 8);
  *(v6 + 216) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_10001E534, 0, 0);
}

uint64_t sub_10001E534()
{
  v1 = [*(v0 + 184) metadata];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = sub_100081218();

  v4 = sub_1000812B8();
  if (!*(v3 + 16))
  {

    goto LABEL_7;
  }

  v6 = sub_1000525C4(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_100006888(*(v3 + 56) + 32 * v6, v0 + 16);

  if (swift_dynamicCast())
  {
    v9 = *(v0 + 144);
    v10 = *(v0 + 152);
    *(v0 + 232) = v9;
    *(v0 + 240) = v10;
    v11 = sub_10001345C(v9, v10, 0);
    *(v0 + 248) = v11;
    v19 = v11;
    v20 = OBJC_IVAR___CRXCAppClipCodePayload_left;
    swift_beginAccess();
    v21 = *&v19[v20];
    if (v21)
    {
      v22 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
      swift_beginAccess();
      v23 = *(v21 + v22);
      *(v0 + 256) = v23;
      v24 = OBJC_IVAR___CRXCAppClipCodePayload_right;
      swift_beginAccess();
      v25 = *&v19[v24];
      if (v25)
      {
        v26 = *(v0 + 192);
        v27 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
        swift_beginAccess();
        v28 = *(v25 + v27);
        *(v0 + 264) = v28;
        sub_10002329C((v26 + 112), *(v26 + 136));
        v29 = v23;
        v30 = v28;
        sub_10000D808(v9, v10);
        v31 = CloudEnvironmentDefaultVersion.unsafeMutableAddressor();
        countAndFlagsBits = v31->_countAndFlagsBits;
        *(v0 + 272) = v31->_object;
        type metadata accessor for CalibrationDataDownloaderImpl();

        v33 = swift_task_alloc();
        *(v0 + 280) = v33;
        *v33 = v0;
        v33[1] = sub_10001EB64;
        v34 = *(v0 + 200);

        JUMPOUT(0x100019984);
      }
    }

    if (qword_1000B73E0 != -1)
    {
      swift_once();
    }

    v35 = sub_100081018();
    sub_100016240(v35, qword_1000B7A58);
    v36 = sub_100080FF8();
    v37 = sub_1000815D8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Prescription is missing left & right eye RX; ignoring", v38, 2u);
    }

    sub_100006A34(v9, v10);
    goto LABEL_13;
  }

LABEL_8:
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  v12 = sub_100081018();
  sub_100016240(v12, qword_1000B7A58);
  v13 = sub_100080FF8();
  v14 = sub_1000815D8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Prescription is missing ACC; ignoring", v15, 2u);
  }

LABEL_13:
  v16 = *(v0 + 224);
  **(v0 + 176) = 0;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10001EB64(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v7 = sub_10001EF50;
  }

  else
  {
    v8 = v4[34];
    v10 = v4[29];
    v9 = v4[30];

    v4[37] = a1;
    sub_100006A34(v10, v9);
    v7 = sub_10001ECA4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10001ECA4()
{
  v1 = *(v0 + 296);
  v31 = *&v1[OBJC_IVAR___CRXCFactoryCalibrationData_left + 8];
  v32 = *&v1[OBJC_IVAR___CRXCFactoryCalibrationData_left];
  v3 = *&v1[OBJC_IVAR___CRXCFactoryCalibrationData_right];
  v2 = *&v1[OBJC_IVAR___CRXCFactoryCalibrationData_right + 8];
  v29 = v2;
  v30 = v3;
  sub_10001622C(v32, v31);
  sub_10001622C(v3, v2);

  v26 = *(v0 + 256);
  v28 = *(v0 + 264);
  v4 = *(v0 + 240);
  v33 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  v7 = *(v0 + 208);
  v8 = *(v0 + 216);
  v9 = *(v0 + 184);
  v10 = [v9 description];
  v25 = sub_1000812B8();
  v12 = v11;

  v13 = [v9 dateIssued];
  sub_100080D78();

  v14 = type metadata accessor for CRXCPrescriptionRecord();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR___CRXCPrescriptionRecord_accPayload];
  *v16 = v6;
  v16[1] = v4;
  v17 = &v15[OBJC_IVAR___CRXCPrescriptionRecord_enrollmentName];
  *v17 = v25;
  v17[1] = v12;
  (*(v8 + 16))(&v15[OBJC_IVAR___CRXCPrescriptionRecord_enrollmentDate], v5, v7);
  v18 = &v15[OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData];
  *v18 = v32;
  v18[1] = v31;
  v19 = &v15[OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData];
  *v19 = v30;
  v19[1] = v29;
  *&v15[OBJC_IVAR___CRXCPrescriptionRecord_leftEye] = v26;
  *&v15[OBJC_IVAR___CRXCPrescriptionRecord_rightEye] = v28;
  v27 = v26;
  v20 = v28;
  sub_10000D808(v6, v4);
  sub_10001622C(v32, v31);
  sub_10001622C(v30, v29);
  *(v0 + 160) = v15;
  *(v0 + 168) = v14;
  v21 = objc_msgSendSuper2((v0 + 160), "init");

  sub_10001A164(v30, v29);
  sub_10001A164(v32, v31);
  sub_100006A34(v6, v4);
  (*(v8 + 8))(v5, v7);
  v22 = *(v0 + 224);
  **(v0 + 176) = v21;

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10001EF50()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);

  sub_100006A34(v2, v3);
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 288);
  v5 = sub_100081018();
  sub_100016240(v5, qword_1000B7A58);
  swift_errorRetain();
  v6 = sub_100080FF8();
  v7 = sub_1000815D8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 288);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error: %@", v10, 0xCu);
    sub_10001A80C(v11, &qword_1000B83B0, &qword_100084EC0);
  }

  else
  {
  }

  v14 = *(v0 + 256);
  v13 = *(v0 + 264);
  v15 = *(v0 + 240);
  v36 = v13;
  v37 = *(v0 + 248);
  v17 = *(v0 + 224);
  v16 = *(v0 + 232);
  v18 = *(v0 + 216);
  v35 = *(v0 + 208);
  v19 = *(v0 + 184);
  v20 = [v19 description];
  v21 = sub_1000812B8();
  v23 = v22;

  v24 = [v19 dateIssued];
  sub_100080D78();

  v25 = type metadata accessor for CRXCPrescriptionRecord();
  v26 = objc_allocWithZone(v25);
  v27 = &v26[OBJC_IVAR___CRXCPrescriptionRecord_accPayload];
  *v27 = v16;
  v27[1] = v15;
  v28 = &v26[OBJC_IVAR___CRXCPrescriptionRecord_enrollmentName];
  *v28 = v21;
  v28[1] = v23;
  (*(v18 + 16))(&v26[OBJC_IVAR___CRXCPrescriptionRecord_enrollmentDate], v17, v35);
  *&v26[OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData] = xmmword_100084890;
  *&v26[OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData] = xmmword_100084890;
  *&v26[OBJC_IVAR___CRXCPrescriptionRecord_leftEye] = v14;
  *&v26[OBJC_IVAR___CRXCPrescriptionRecord_rightEye] = v36;
  v29 = v14;
  v30 = v36;
  sub_10000D808(v16, v15);
  sub_10001622C(0, 0xF000000000000000);
  sub_10001622C(0, 0xF000000000000000);
  *(v0 + 160) = v26;
  *(v0 + 168) = v25;
  v31 = objc_msgSendSuper2((v0 + 160), "init");

  sub_10001A164(0, 0xF000000000000000);
  sub_10001A164(0, 0xF000000000000000);
  sub_100006A34(v16, v15);
  (*(v18 + 8))(v17, v35);
  v32 = *(v0 + 224);
  **(v0 + 176) = v31;

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_10001F2F4(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return _swift_task_switch(sub_10001F384, v1, 0);
}

uint64_t sub_10001F384()
{
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  v0[5] = sub_100016240(v1, qword_1000B7A58);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting all enrollment data", v4, 2u);
  }

  v5 = v0[4];

  v6 = *(v5 + 176);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_10001F50C;
  v8 = v0[3];

  return sub_10003F5C4(v8);
}

uint64_t sub_10001F50C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 32);

    return _swift_task_switch(sub_10001F68C, v7, 0);
  }
}

uint64_t sub_10001F68C()
{
  v1 = v0[5];
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting all vision prescription health records", v4, 2u);
  }

  v5 = v0[4];

  v0[7] = *(v5 + 160);

  return _swift_task_switch(sub_10001F79C, 0, 0);
}

uint64_t sub_10001F79C()
{
  v1 = *(*(v0 + 56) + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_10001F86C;
  v3 = *(v0 + 56);

  return sub_100064534(v1);
}

uint64_t sub_10001F86C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 32);

    return _swift_task_switch(sub_10001F9EC, v7, 0);
  }
}

uint64_t sub_10001F9EC()
{
  v1 = v0[5];
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting all ASA keys", v4, 2u);
  }

  v5 = v0[4];

  v6 = *(v5 + 152);
  v0[2] = 0;
  v7 = [v6 deleteAllASAKeysWithError:v0 + 2];
  v8 = v0[2];
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v10 = v0[5];
    v11 = v8;
    sub_100080C38();

    swift_willThrow();
    swift_errorRetain();
    v12 = sub_100080FF8();
    v13 = sub_1000815D8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to delete ASA Keys: %@", v14, 0xCu);
      sub_10001A80C(v15, &qword_1000B83B0, &qword_100084EC0);
    }

    else
    {
    }
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_10001FC30()
{
  *(v1 + 104) = v0;
  v2 = *(*(sub_100006940(&qword_1000B7A10, &qword_100084E70) - 8) + 64) + 15;
  *(v1 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_10001FCCC, v0, 0);
}

uint64_t sub_10001FCCC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = sub_100081538();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = *(v2 + 184);
  v5 = sub_100022D08();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = v4;
  v6[5] = v2;

  swift_retain_n();
  v7 = sub_1000205B8(0, 0, v1, &unk_100084FA8, v6);
  v0[15] = v7;
  v8 = *(v2 + 184);
  *(v2 + 184) = v7;

  v9 = async function pointer to Task.result.getter[1];
  v10 = swift_task_alloc();
  v0[16] = v10;
  v11 = sub_100006940(&qword_1000B7910, &unk_100084B20);
  v0[17] = v11;
  *v10 = v0;
  v10[1] = sub_10001FE70;

  return Task.result.getter(v0 + 2, v7, &type metadata for Any + 8, v11, &protocol self-conformance witness table for Error);
}

uint64_t sub_10001FE70()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 104);
  v5 = *v0;

  return _swift_task_switch(sub_10001FF9C, v3, 0);
}

uint64_t sub_10001FF9C()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 112);
    *(v0 + 88) = *(v0 + 16);
    swift_willThrowTypedImpl();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 112);
    sub_1000068E4((v0 + 16), (v0 + 56));
    sub_100006940(&qword_1000B7B60, &qword_100084FB8);
    swift_dynamicCast();
    v6 = *(v0 + 96);

    v7 = *(v0 + 8);

    return v7(v6);
  }
}

uint64_t sub_1000200AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  return _swift_task_switch(sub_1000200D0, a5, 0);
}

uint64_t sub_1000200D0()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = async function pointer to Task.result.getter[1];
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    v4 = sub_100006940(&qword_1000B7910, &unk_100084B20);
    *v3 = v0;
    v3[1] = sub_100020234;

    return Task.result.getter(v0 + 16, v1, &type metadata for Any + 8, v4, &protocol self-conformance witness table for Error);
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = -1;
    v5 = *(v0 + 72);
    sub_10001A80C(v0 + 16, &qword_1000B7B68, &qword_100084FC0);
    v6 = *(v5 + 176);
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    *v7 = v0;
    v7[1] = sub_1000203F0;

    return sub_100040A2C();
  }
}

uint64_t sub_100020234()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_100020344, v2, 0);
}

uint64_t sub_100020344()
{
  v1 = *(v0 + 72);
  sub_10001A80C(v0 + 16, &qword_1000B7B68, &qword_100084FC0);
  v2 = *(v1 + 176);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_1000203F0;

  return sub_100040A2C();
}

uint64_t sub_1000203F0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 72);

    return _swift_task_switch(sub_100020534, v7, 0);
  }
}

uint64_t sub_100020534()
{
  v1 = *(v0 + 56);
  v1[3] = sub_100006940(&qword_1000B7B70, &qword_100084FC8);
  *v1 = &_swiftEmptyArrayStorage;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000205B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10001A8DC(a3, v24 - v10, &qword_1000B7A10, &qword_100084E70);
  v12 = sub_100081538();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001A80C(v11, &qword_1000B7A10, &qword_100084E70);
  }

  else
  {
    sub_100081528();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1000814D8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_100081358() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_10001A80C(a3, &qword_1000B7A10, &qword_100084E70);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001A80C(a3, &qword_1000B7A10, &qword_100084E70);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100020864()
{
  *(v1 + 1408) = v0;

  return _swift_task_switch(sub_1000208F4, v0, 0);
}

uint64_t sub_1000208F4()
{
  *(v0 + 1416) = *(*(v0 + 1408) + 160);

  return _swift_task_switch(sub_10002098C, 0, 0);
}

uint64_t sub_10002098C()
{
  v1 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 1424) = v2;
  v3 = sub_100006940(&qword_1000B7B50, &qword_100084F80);
  *v2 = v0;
  v2[1] = sub_100020AA8;
  v4 = *(v0 + 1416);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 72, 0, 0, 0x54636E7953746567, 0xEE00292873656D69, sub_100022D5C, v4, v3);
}

uint64_t sub_100020AA8()
{
  v1 = *(*v0 + 1424);
  v3 = *v0;

  return _swift_task_switch(sub_100020BD0, 0, 0);
}

uint64_t sub_100020BD0()
{
  v1 = *(v0 + 1408);
  *(v0 + 1432) = *(v0 + 72);
  *(v0 + 1369) = *(v0 + 88);

  return _swift_task_switch(sub_100020C70, v1, 0);
}

uint64_t sub_100020C70()
{
  v1 = *(v0 + 1408);
  bzero((v0 + 89), 0x500uLL);
  uname((v0 + 89));
  *(v0 + 1392) = sub_100081368();
  *(v0 + 1400) = v2;
  *(v0 + 1448) = v2;
  *(v0 + 1456) = *(v1 + 176);
  v3 = swift_task_alloc();
  *(v0 + 1464) = v3;
  *v3 = v0;
  v3[1] = sub_100020D60;

  return sub_100043E34(0);
}

uint64_t sub_100020D60(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[6] = v2;
  v4[7] = a1;
  v4[8] = v1;
  v5 = v3[183];
  v6 = *v2;
  v4[184] = v1;

  if (v1)
  {
    v7 = v4[176];

    return _swift_task_switch(sub_1000214A0, v7, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v4[185] = v8;
    *v8 = v6;
    v8[1] = sub_100020F24;
    v9 = v4[176];

    return sub_100021688();
  }
}

uint64_t sub_100020F24(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[185];
  v10 = *v3;
  v5[186] = a2;
  v5[187] = v2;

  if (v2)
  {
    v7 = v5[176];
    v8 = sub_10002153C;
  }

  else
  {
    v7 = v5[182];
    v8 = sub_10002107C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10002107C()
{
  v0[188] = *(v0[182] + 328);
  v1 = swift_task_alloc();
  v0[189] = v1;
  *v1 = v0;
  v1[1] = sub_100021148;
  v2 = v0[182];

  return sub_100044500(3);
}

uint64_t sub_100021148(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 1512);
  v13 = *v3;
  *(*v3 + 1520) = v2;

  if (v2)
  {
    v8 = v6[176];
    v9 = sub_1000215D8;
  }

  else
  {
    v10 = v6[3];
    v11 = v6[7];
    v8 = v6[176];
    v6[191] = v6[174];
    v6[192] = a2;
    v6[193] = a1;
    v6[194] = v10;
    v6[195] = v11;
    v9 = sub_1000212C4;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1000212C4()
{
  v1 = *(v0 + 1560);
  v2 = *(v0 + 1552);
  v3 = *(v0 + 1544);
  v4 = *(v0 + 1536);
  v5 = *(v0 + 1504);
  v6 = *(v0 + 1488);
  v7 = *(v0 + 1448);
  v8 = *(v0 + 1369);
  v9 = *(v0 + 1440);
  v10 = *(v0 + 1432);
  if (v7)
  {
    v11 = *(v0 + 1528);
  }

  else
  {
    v11 = 0x6E776F6E6B6E55;
  }

  if (v7)
  {
    v12 = *(v0 + 1448);
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  v13 = type metadata accessor for CRXCSystemStatus();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR___CRXCSystemStatus_healthLastPullTime] = v9;
  *&v14[OBJC_IVAR___CRXCSystemStatus_healthLastPushTime] = v10;
  v14[OBJC_IVAR___CRXCSystemStatus_healthSyncEnabled] = v8;
  v15 = &v14[OBJC_IVAR___CRXCSystemStatus_hardwareModel];
  *v15 = v11;
  v15[1] = v12;
  v14[OBJC_IVAR___CRXCSystemStatus_guestMode] = 0;
  *&v14[OBJC_IVAR___CRXCSystemStatus_dataStoreSchemaVersion] = v1;
  v16 = &v14[OBJC_IVAR___CRXCSystemStatus_currentLocation];
  *v16 = v2;
  v16[1] = v6;
  v17 = &v14[OBJC_IVAR___CRXCSystemStatus_selectedEnrollmentUUID];
  *v17 = 0;
  v17[1] = 0;
  *&v14[OBJC_IVAR___CRXCSystemStatus_lastSharingDataValidationTime] = v5;
  v18 = &v14[OBJC_IVAR___CRXCSystemStatus_prismActivationLocation];
  *v18 = v3;
  v18[1] = v4;
  *(v0 + 1376) = v14;
  *(v0 + 1384) = v13;
  v19 = objc_msgSendSuper2((v0 + 1376), "init");
  v20 = *(v0 + 8);

  return v20(v19);
}

uint64_t sub_1000214A0()
{
  v1 = v0[184];
  if (v0[181])
  {
    v2 = v0[181];
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_10002153C()
{
  v1 = v0[187];
  if (v0[181])
  {
    v2 = v0[181];
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000215D8()
{
  v1 = v0[186];
  if (v0[181])
  {
    v2 = v0[181];
  }

  v3 = v0[190];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000216A4()
{
  v26 = v0;
  v1 = [objc_opt_self() currentEstimates];
  sub_10000DC18(0, &qword_1000B7B58, RDEstimate_ptr);
  v2 = sub_100081488();

  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  v3 = sub_100081018();
  sub_100016240(v3, qword_1000B7A58);

  v4 = sub_100080FF8();
  v5 = sub_1000815C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v6 = 136315138;
    v8 = sub_100081498();
    v10 = sub_1000597A8(v8, v9, &v25);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "estimates: %s", v6, 0xCu);
    sub_1000068F4(v7);
  }

  if (v2 >> 62)
  {
    if (sub_1000817A8() < 2)
    {
      goto LABEL_10;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    goto LABEL_10;
  }

  v11 = sub_100080FF8();
  v12 = sub_1000815B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "More than one potential current country code returned", v13, 2u);
  }

LABEL_10:
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_12;
    }

LABEL_18:

LABEL_20:
    v23 = 0;
    v22 = 0;
    goto LABEL_21;
  }

  result = sub_1000817A8();
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_12:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v15 = sub_1000816A8();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(v2 + 32);
  }

  v16 = v15;

  v17 = [v16 countryCode];
  if (!v17)
  {

    goto LABEL_20;
  }

  v18 = v17;
  v19 = sub_1000812B8();
  v21 = v20;

  v22 = v21;
  v23 = v19;
LABEL_21:
  v24 = *(v0 + 8);

  return v24(v23, v22);
}

uint64_t sub_1000219E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  v6 = sub_100081308();
  v5[20] = v6;
  v7 = *(v6 - 8);
  v5[21] = v7;
  v8 = *(v7 + 64) + 15;
  v5[22] = swift_task_alloc();

  return _swift_task_switch(sub_100021AD8, v4, 0);
}

uint64_t sub_100021AD8()
{
  v1 = *(v0 + 152);
  if (*(v0 + 144))
  {
    v7 = *(v1 + 176);
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    *v8 = v0;
    v8[1] = sub_100021C30;
    v10 = *(v0 + 128);
    v9 = *(v0 + 136);

    return sub_100044894(v10, v9);
  }

  else
  {
    v2 = *(v1 + 176);
    v3 = swift_task_alloc();
    *(v0 + 208) = v3;
    *v3 = v0;
    v3[1] = sub_100022010;
    v5 = *(v0 + 128);
    v4 = *(v0 + 136);

    return sub_100045470(v5, v4);
  }
}

uint64_t sub_100021C30(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  v4[24] = v1;

  v7 = v4[19];
  if (v1)
  {
    v8 = sub_1000223F0;
  }

  else
  {
    v4[25] = a1;
    v8 = sub_100021D98;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100021D98()
{
  v1 = *(v0 + 200);
  *(v0 + 104) = sub_100006940(&unk_1000B8390, &qword_100086040);
  *(v0 + 80) = v1;
  sub_1000068E4((v0 + 80), (v0 + 16));
  v2 = objc_opt_self();
  sub_10002329C((v0 + 16), *(v0 + 40));
  v3 = sub_100081878();
  *(v0 + 112) = 0;
  v4 = [v2 dataWithJSONObject:v3 options:3 error:v0 + 112];
  swift_unknownObjectRelease();
  v5 = *(v0 + 112);
  if (v4)
  {
    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = *(v0 + 160);
    v9 = *(v0 + 120);
    v10 = sub_100080CF8();
    v12 = v11;

    isa = sub_100080CC8().super.isa;
    [v9 writeData:isa];

    sub_1000812F8();
    v14 = sub_1000812C8();
    v16 = v15;
    result = (*(v7 + 8))(v6, v8);
    if (v16 >> 60 == 15)
    {
      __break(1u);
      return result;
    }

    v18 = *(v0 + 176);
    v19 = *(v0 + 120);
    v20 = sub_100080CC8().super.isa;
    sub_10001A164(v14, v16);
    [v19 writeData:v20];
    sub_100006A34(v10, v12);

    sub_1000068F4((v0 + 16));

    v21 = *(v0 + 8);
  }

  else
  {
    v22 = v5;
    sub_100080C38();

    swift_willThrow();
    sub_1000068F4((v0 + 16));
    v23 = *(v0 + 176);

    v21 = *(v0 + 8);
  }

  return v21();
}

uint64_t sub_100022010(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  v4[27] = v1;

  v7 = v4[19];
  if (v1)
  {
    v8 = sub_100022480;
  }

  else
  {
    v4[28] = a1;
    v8 = sub_100022178;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100022178()
{
  v1 = *(v0 + 224);
  *(v0 + 72) = sub_100006940(&unk_1000B8390, &qword_100086040);
  *(v0 + 48) = v1;
  sub_1000068E4((v0 + 48), (v0 + 16));
  v2 = objc_opt_self();
  sub_10002329C((v0 + 16), *(v0 + 40));
  v3 = sub_100081878();
  *(v0 + 112) = 0;
  v4 = [v2 dataWithJSONObject:v3 options:3 error:v0 + 112];
  swift_unknownObjectRelease();
  v5 = *(v0 + 112);
  if (v4)
  {
    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = *(v0 + 160);
    v9 = *(v0 + 120);
    v10 = sub_100080CF8();
    v12 = v11;

    isa = sub_100080CC8().super.isa;
    [v9 writeData:isa];

    sub_1000812F8();
    v14 = sub_1000812C8();
    v16 = v15;
    result = (*(v7 + 8))(v6, v8);
    if (v16 >> 60 == 15)
    {
      __break(1u);
      return result;
    }

    v18 = *(v0 + 176);
    v19 = *(v0 + 120);
    v20 = sub_100080CC8().super.isa;
    sub_10001A164(v14, v16);
    [v19 writeData:v20];
    sub_100006A34(v10, v12);

    sub_1000068F4((v0 + 16));

    v21 = *(v0 + 8);
  }

  else
  {
    v22 = v5;
    sub_100080C38();

    swift_willThrow();
    sub_1000068F4((v0 + 16));
    v23 = *(v0 + 176);

    v21 = *(v0 + 8);
  }

  return v21();
}

uint64_t sub_1000223F0()
{
  v1 = v0[24];
  v2 = v0[22];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100022480()
{
  v1 = v0[27];
  v2 = v0[22];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100022510(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_10002329C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100006940(&qword_1000B7910, &unk_100084B20);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000225E0()
{
  sub_1000068F4((v0 + 112));

  v1 = *(v0 + 160);

  v2 = *(v0 + 168);

  v3 = *(v0 + 176);

  v4 = *(v0 + 184);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100022664(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_100022758;

  return v6(v2 + 16);
}

uint64_t sub_100022758()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100022888()
{
  sub_100081518();
  v0[2] = sub_100081508();
  v2 = sub_1000814D8();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_10002291C, v2, v1);
}

uint64_t sub_10002291C()
{
  v1 = qword_1000B7A50;
  if (qword_1000B7A50)
  {
    v2 = v0[2];

    v3 = v0[1];

    return v3(v1);
  }

  else
  {
    type metadata accessor for CorePrescriptionService();
    swift_allocObject();
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_100022A14;

    return sub_10001AC68();
  }
}

uint64_t sub_100022A14(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = v4[3];
    v8 = v4[4];
    v9 = sub_100022B3C;
  }

  else
  {
    v4[7] = a1;
    v7 = v4[3];
    v8 = v4[4];
    v9 = sub_100022BA0;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100022B3C()
{
  v1 = v0[2];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_100022BA0()
{
  qword_1000B7A50 = v0[7];

  v2 = qword_1000B7A50;
  if (qword_1000B7A50)
  {
    v3 = v0[2];

    v4 = v0[1];

    return v4(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100022C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006940(&unk_1000B88B0, &qword_100086A40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022CA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100022D08()
{
  result = qword_1000B7B48;
  if (!qword_1000B7B48)
  {
    type metadata accessor for CorePrescriptionService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7B48);
  }

  return result;
}

uint64_t sub_100022D64()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100022DAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001A01C;

  return sub_1000200AC(a1, v4, v5, v7, v6);
}

uint64_t sub_100022E6C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v8 = *(v2 + 4);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10001AB70;

  return sub_10001C738(a1, a2, v6, v8, v7);
}

uint64_t sub_100022F6C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100022FB4(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v9 = *(v1 + 7);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001A01C;

  return sub_10001E46C(a1, v8, v4, v5, v6, v7);
}

uint64_t sub_10002308C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000230C4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001AB70;

  return sub_100022664(a1, v5);
}

uint64_t sub_10002317C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000231C4(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v9 = *(v1 + 7);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001AB70;

  return sub_10001D90C(a1, v8, v4, v5, v6, v7);
}

void *sub_10002329C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000232E0(uint64_t a1)
{
  v2 = CloudEnvironmentDefaultVersion.unsafeMutableAddressor();
  countAndFlagsBits = v2->_countAndFlagsBits;
  object = v2->_object;
  if (!a1)
  {
    v12 = v2->_object;

    return 0;
  }

  v5 = *(a1 + 16);
  v6 = v2->_object;

  if (!v5 || (v7 = sub_1000525C4(0x6D6E6F7269766E65, 0xEB00000000746E65), (v8 & 1) == 0) || (sub_100006888(*(a1 + 56) + 32 * v7, v15), (swift_dynamicCast() & 1) == 0))
  {
    v9 = 0;
    if (!*(a1 + 16))
    {
      return v9;
    }

    goto LABEL_11;
  }

  if (v14 == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = v14 == 1;
  }

  if (*(a1 + 16))
  {
LABEL_11:
    v10 = sub_1000525C4(0x6E6F6973726576, 0xE700000000000000);
    if (v11)
    {
      sub_100006888(*(a1 + 56) + 32 * v10, v15);
      if (swift_dynamicCast())
      {
      }
    }
  }

  return v9;
}

void sub_100023440()
{
  v0 = sub_100081018();
  sub_100016278(v0, qword_1000B7BA8);
  sub_100016240(v0, qword_1000B7BA8);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1000812B8();

    type metadata accessor for CorePrescriptionServiceConnection();
    sub_100006940(&qword_1000B7BE8, &qword_100085110);
    sub_100081338();
    sub_100081008();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000236E8(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100023790;

  return sub_10002B42C();
}

uint64_t sub_100023790(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 24);
  v8 = *v2;

  v9 = *(v5 + 16);
  if (v3)
  {
    v10 = sub_100080C28();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1, 0);
  }

  _Block_release(*(v6 + 16));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_100023AAC(void *a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  if (a1)
  {
    v10 = a1;
    v11 = a2;
    v12 = a3;
    v13 = a5;
    v14 = sub_100080CF8();
    v16 = v15;

    v5[4] = v14;
    v5[5] = v16;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    v19 = 0xF000000000000000;
    v5[6] = 0;
    v5[7] = 0xF000000000000000;
    if (a3)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v21 = a3;
  v22 = a5;
  v23 = a2;
  v14 = 0;
  v16 = 0xF000000000000000;
  v5[4] = 0;
  v5[5] = 0xF000000000000000;
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = sub_100080CF8();
  v19 = v18;

  v5[6] = v17;
  v5[7] = v19;
  if (a3)
  {
LABEL_4:
    v20 = sub_100081218();

    goto LABEL_8;
  }

LABEL_7:
  v20 = 0;
LABEL_8:
  v5[8] = v20;
  v24 = swift_task_alloc();
  v5[9] = v24;
  *v24 = v5;
  v24[1] = sub_100023C48;

  return sub_10002BA84(v14, v16, v17, v19, v20);
}

uint64_t sub_100023C48(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 72);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = v5[8];
  v10 = v5[7];
  v11 = v5[6];
  v12 = v5[5];
  v13 = v5[4];
  v14 = v5[3];

  sub_10001A164(v11, v10);
  sub_10001A164(v13, v12);
  if (v3)
  {
    v15 = sub_100080C28();

    (v14)[2](v14, 0, v15);

    _Block_release(v14);
  }

  else
  {
    (v14)[2](v14, a1, 0);
    _Block_release(v14);
  }

  v16 = *(v8 + 8);

  return v16();
}

uint64_t sub_100023FE4(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10002408C;

  return sub_10002C29C();
}

uint64_t sub_10002408C()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_100080C28();

    (v5)[2](v5, 0, 0, v6);

    _Block_release(v5);
  }

  else
  {
    v7 = sub_100081288();
    v8 = sub_100081288();
    (v5)[2](v5, v7, v8, 0);

    _Block_release(v5);
  }

  v9 = *(v4 + 8);

  return v9();
}

uint64_t sub_1000243D4(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10002447C;

  return sub_10002C9D4();
}

uint64_t sub_10002447C(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (v4)
  {
    a2 = sub_100080C28();

    v9 = a2;
LABEL_3:
    v10 = 0;
    goto LABEL_6;
  }

  if (!a2)
  {
    v9 = 0;
    goto LABEL_3;
  }

  v11 = sub_100081288();

  v10 = v11;
  v9 = 0;
  a2 = v11;
LABEL_6:
  v12 = *(v6 + 16);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v8 + 8);

  return v13();
}

uint64_t sub_10002476C(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10003B818;

  return sub_10002D07C();
}

uint64_t sub_100024988(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100024A30;

  return sub_10002D6D4();
}

uint64_t sub_100024A30(char a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = *v4;
  v9 = *(*v4 + 24);
  v10 = *v4;

  if (v5)
  {
    v11 = *(v8 + 16);
    v12 = sub_100080C28();

    (v11)[2](v11, 0, 0, v12);

    _Block_release(v11);
  }

  else
  {
    if (a3)
    {

      v13 = sub_100081288();
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v8 + 16);
    (v14)[2](v14, a1 & 1, v13, 0);

    _Block_release(v14);
  }

  v15 = *(v10 + 8);

  return v15();
}

uint64_t sub_100024D60(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100024E08;

  return sub_10002DD34();
}

uint64_t sub_100024E08(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 24);
  v8 = *v2;

  v9 = *(v5 + 16);
  if (v3)
  {
    v10 = sub_100080C28();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  _Block_release(*(v6 + 16));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1000250F4(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10002519C;

  return sub_10002E394();
}

uint64_t sub_10002519C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *v1;

  if (v2)
  {
    v6 = sub_100080C28();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    type metadata accessor for CRXCEnrollmentBriefRecord();
    isa = sub_100081478().super.isa;

    v8 = isa;
    v7 = 0;
    v6 = isa;
  }

  v10 = *(v3 + 16);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_100025494(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100025540;

  return sub_10002E9EC();
}

uint64_t sub_100025540()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *v1;

  if (v2)
  {
    v6 = sub_100080C28();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    type metadata accessor for CRXCEnrollmentRecord();
    isa = sub_100081478().super.isa;

    v8 = isa;
    v7 = 0;
    v6 = isa;
  }

  v10 = *(v3 + 16);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_10002583C(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10003B68C;

  return sub_10002F044();
}

uint64_t sub_100025A9C(int a1, int a2, int a3, uint64_t a4, int a5, void *aBlock)
{
  v6[2] = _Block_copy(aBlock);
  if (a4)
  {
    sub_1000812B8();
  }

  else
  {
    v8 = 0;
  }

  v6[3] = v8;
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_100025B64;

  return sub_10002F69C();
}

uint64_t sub_100025B64(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v8 = *v2;

  v9 = *(v5 + 16);
  if (v3)
  {
    v10 = sub_100080C28();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_100025EA8(int a1, int a2, int a3, int a4, void *aBlock)
{
  *(v5 + 16) = _Block_copy(aBlock);
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = v5;
  v6[1] = sub_100025F54;

  return sub_10002FCF4();
}

uint64_t sub_100025F54()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *v1;

  if (v2)
  {
    v6 = sub_100080C28();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    type metadata accessor for CRXCNewEnrollmentInfo();
    isa = sub_100081478().super.isa;

    v8 = isa;
    v7 = 0;
    v6 = isa;
  }

  v10 = *(v3 + 16);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_100026258(int a1, int a2, void *aBlock)
{
  *(v3 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_10003B688;

  return sub_10003034C();
}

uint64_t sub_10002648C(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10003B688;

  return sub_1000309A4();
}

uint64_t sub_1000266AC(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10003B688;

  return sub_100030FFC();
}

uint64_t sub_1000268D8(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10003B688;

  return sub_100031654();
}

uint64_t sub_100026AF8(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10003B688;

  return sub_100031CAC();
}

uint64_t sub_100026D28(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10003B688;

  return sub_100032304();
}

uint64_t sub_100026F48(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10003B688;

  return sub_10003295C();
}

uint64_t sub_100027164(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10003B684;

  return sub_100032FB4();
}

uint64_t sub_100027380(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100027428;

  return sub_10003360C();
}

uint64_t sub_100027428()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *v1;

  v7 = *(v3 + 16);
  if (v2)
  {
    v8 = sub_100080C28();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 16));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_100027700(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000277A8;

  return sub_100033C90();
}

uint64_t sub_1000277A8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *v2;

  v8 = *(v5 + 16);
  if (v3)
  {
    v9 = sub_100080C28();

    (v8)[2](v8, 0, v9);

    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_100027A9C(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100027B44;

  return sub_1000342E8();
}

uint64_t sub_100027B44(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 24);
  v9 = *v3;

  if (v4)
  {
    v10 = sub_100080C28();

    v11 = v10;
    v12 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v11 = 0;
    v12 = 0;
    v10 = 0;
  }

  else
  {
    isa = sub_100080CC8().super.isa;
    sub_10001A164(a1, a2);
    v12 = isa;
    v11 = 0;
    v10 = isa;
  }

  v14 = *(v7 + 16);
  (v14)[2](v14, v12, v11);

  _Block_release(v14);
  v15 = *(v9 + 8);

  return v15();
}

uint64_t sub_100027E5C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    v6 = a1;
    v7 = a3;
    v8 = sub_100080CF8();
    v10 = v9;
  }

  else
  {
    v11 = a3;
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  v3[4] = v8;
  v3[5] = v10;
  v12 = swift_task_alloc();
  v3[6] = v12;
  *v12 = v3;
  v12[1] = sub_100027F54;

  return sub_100034940();
}

uint64_t sub_100027F54()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 16);
  v9 = *v1;

  sub_10001A164(v7, v6);
  v10 = *(v3 + 24);
  if (v2)
  {
    v11 = sub_100080C28();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_100028288(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100028330;

  return sub_100034F98();
}

uint64_t sub_100028330()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *v1;

  if (v2)
  {
    v6 = sub_100080C28();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    isa = sub_100081208().super.isa;

    v8 = isa;
    v7 = 0;
    v6 = isa;
  }

  v10 = *(v3 + 16);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_10002863C(int a1, int a2, void *aBlock)
{
  *(v3 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1000277A8;

  return sub_1000355F0();
}

uint64_t sub_100028888(int a1, int a2, int a3, void *aBlock)
{
  *(v4 + 16) = _Block_copy(aBlock);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_10003B688;

  return sub_100035C48();
}

uint64_t sub_100028AB8(const void *a1, double a2)
{
  *(v2 + 16) = _Block_copy(a1);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100028B70;

  return sub_1000362A0(a2);
}

uint64_t sub_100028B70()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *v1;

  if (v2)
  {
    v6 = sub_100080C28();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    type metadata accessor for CRXCPrescriptionRecord();
    isa = sub_100081478().super.isa;

    v8 = isa;
    v7 = 0;
    v6 = isa;
  }

  v10 = *(v3 + 16);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_100028E68(uint64_t a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10003B688;

  return sub_100036944(a1);
}

uint64_t sub_1000290AC(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a4;
  v10 = sub_100080CF8();
  v12 = v11;

  v4[4] = v10;
  v4[5] = v12;
  v13 = swift_task_alloc();
  v4[6] = v13;
  *v13 = v4;
  v13[1] = sub_1000291A4;

  return sub_100036FD4(v10, v12, a2);
}

uint64_t sub_1000291A4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = v5[5];
  v10 = v5[4];
  v11 = v5[3];
  sub_100006A34(v10, v9);
  if (v3)
  {
    v12 = sub_100080C28();

    (v11)[2](v11, 0, v12);

    _Block_release(v11);
  }

  else
  {
    (v11)[2](v11, a1, 0);
    _Block_release(v11);
  }

  v13 = *(v8 + 8);

  return v13();
}

uint64_t sub_1000294F8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000295CC;

  return sub_10003758C(v6);
}

uint64_t sub_1000295CC(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 40);
  v9 = *(*v3 + 24);
  v10 = *(*v3 + 16);
  v11 = *v3;

  if (v4)
  {
    v12 = sub_100080C28();

    v13 = v12;
    v14 = 0;
  }

  else
  {
    isa = sub_100080CC8().super.isa;
    sub_100006A34(a1, a2);
    v14 = isa;
    v13 = 0;
    v12 = isa;
  }

  v16 = *(v7 + 32);
  (v16)[2](v16, v14, v13);

  _Block_release(v16);
  v17 = *(v11 + 8);

  return v17();
}

uint64_t sub_100029934(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, void *aBlock, void *a8)
{
  v8[3] = a4;
  v8[4] = a8;
  v8[2] = a3;
  v8[5] = _Block_copy(aBlock);
  if (a6)
  {
    v16 = a6;
    v17 = a3;
    v18 = a4;
    v19 = a8;
    v20 = sub_100080CF8();
    v22 = v21;
  }

  else
  {
    v23 = a4;
    v24 = a8;
    v25 = a3;
    v20 = 0;
    v22 = 0xF000000000000000;
  }

  v8[6] = v20;
  v8[7] = v22;
  v26 = swift_task_alloc();
  v8[8] = v26;
  *v26 = v8;
  v26[1] = sub_100029A84;

  return sub_100037B50(a1, a2, a3, a4, a5, v20, v22);
}

uint64_t sub_100029A84(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v7 = *v3;
  v9 = *(*v3 + 64);
  v10 = *(*v3 + 32);
  v11 = *v3;

  v12 = *(v7 + 56);
  v13 = *(v7 + 48);
  v14 = *(v7 + 24);

  sub_10001A164(v13, v12);
  if (v4)
  {
    isa = sub_100080C28();

    v16 = isa;
    v17 = 0;
  }

  else
  {
    isa = sub_100080CC8().super.isa;
    sub_100006A34(a1, a2);
    v17 = isa;
    v16 = 0;
  }

  v18 = *(v8 + 40);
  (v18)[2](v18, v17, v16);

  _Block_release(v18);
  v19 = *(v11 + 8);

  return v19();
}

uint64_t sub_100029E28(void *a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  if (a2)
  {
    a2 = sub_1000812B8();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v5[5] = v11;
  v12 = a1;
  v13 = a5;
  v14 = swift_task_alloc();
  v5[6] = v14;
  *v14 = v5;
  v14[1] = sub_100029F3C;

  return sub_100038164(v12, a2, v11, a3);
}

uint64_t sub_100029F3C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  v10 = *(v3 + 32);
  if (v2)
  {
    v11 = sub_100080C28();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_10002A270(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10003B81C;

  return sub_1000387FC();
}

uint64_t sub_10002A48C(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10003B68C;

  return sub_100038E98();
}

uint64_t sub_10002A6A8(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10003B688;

  return sub_100039534();
}

id sub_10002A750()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CorePrescriptionServiceConnection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002A7B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001AB70;

  return sub_10002A6A8(v2);
}

uint64_t sub_10002A85C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10001AB70;

  return v7();
}

uint64_t sub_10002A944()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001AB70;

  return sub_10002A85C(v2, v3, v5);
}

uint64_t sub_10002AA04(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10001A01C;

  return v8();
}

uint64_t sub_10002AAEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AB70;

  return sub_10002AA04(a1, v4, v5, v7);
}

uint64_t sub_10002ABB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_10002AE74(a3, v25 - v11);
  v13 = sub_100081538();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10002AEE4(v12);
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

  sub_100081528();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1000814D8();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_100081358() + 32;
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

    sub_10002AEE4(a3);

    return v23;
  }

LABEL_8:
  sub_10002AEE4(a3);
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

uint64_t sub_10002AE74(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002AEE4(uint64_t a1)
{
  v2 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002AF4C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002B044;

  return v7(a1);
}

uint64_t sub_10002B044()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002B13C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002B174(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001AB70;

  return sub_10002AF4C(a1, v5);
}

uint64_t sub_10002B22C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001A01C;

  return sub_10002AF4C(a1, v5);
}

void sub_10002B2E4()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000013, 0x8000000100093D50, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10002B448()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "checkLensPresence()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_10002B5A8;

  return sub_100022888();
}

uint64_t sub_10002B5A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v9 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v6 = sub_10002B8DC;
    v7 = 0;
  }

  else
  {
    v6 = sub_10002B6C8;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10002B6C8()
{
  v9 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(v0[2], qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD000000000000013, 0x8000000100093D50, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  v5 = v0[4];
  sub_10001A110();
  v0[6] = swift_allocError();
  *v6 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_10002B87C, 0, 0);
}

uint64_t sub_10002B87C()
{
  v1 = *(v0 + 48);
  sub_10002B2E4();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002B8DC()
{
  v1 = *(v0 + 40);
  sub_10002B2E4();
  v2 = *(v0 + 8);

  return v2();
}

void sub_10002B93C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000002ELL, 0x8000000100093D20, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10002BA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_10002BAAC, 0, 0);
}

uint64_t sub_10002BAAC()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchCalibrationData(forACC:orASAKey:options:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_10002BC08;

  return sub_100022888();
}

uint64_t sub_10002BC08(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v9 = *v2;
  *(v4 + 64) = a1;
  *(v4 + 72) = v1;

  if (v1)
  {
    v6 = sub_10002BF58;
    v7 = 0;
  }

  else
  {
    v6 = sub_10002BD28;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10002BD28()
{
  v1 = v0[8];
  v2 = sub_1000232E0(v0[6]);
  v4 = v3;
  v6 = v5;
  v0[10] = v5;
  v7 = *sub_10002329C((v1 + 112), *(v1 + 136));
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_10002BE00;
  v9 = v0[4];
  v10 = v0[5];
  v12 = v0[2];
  v11 = v0[3];

  return sub_100016628(v12, v11, v9, v10, v2, v4, v6);
}

uint64_t sub_10002BE00(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 80);
  v7 = *v2;
  v4[12] = v1;

  v8 = v4[8];
  if (v1)
  {
    v9 = sub_10002C084;
  }

  else
  {
    v4[13] = a1;
    v9 = sub_10002BFB8;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10002BF58()
{
  v1 = *(v0 + 72);
  sub_10002B93C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002BFB8()
{
  v1 = *(v0 + 64);

  return _swift_task_switch(sub_10002C020, 0, 0);
}

uint64_t sub_10002C020()
{
  sub_10002B93C();
  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t sub_10002C084()
{
  v1 = *(v0 + 64);

  return _swift_task_switch(sub_10002C0EC, 0, 0);
}

uint64_t sub_10002C0EC()
{
  v1 = *(v0 + 96);
  sub_10002B93C();
  v2 = *(v0 + 8);

  return v2();
}

void sub_10002C14C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0x6573556863746566, 0xEF29286F666E4972, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10002C2B8()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchUserInfo()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_10002C414;

  return sub_100022888();
}

uint64_t sub_10002C414(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;
  v4[3] = a1;
  v4[4] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10002C6FC, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[5] = v7;
    *v7 = v6;
    v7[1] = sub_10002C594;

    return sub_10001BCD4();
  }
}

uint64_t sub_10002C594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  v12 = *v5;
  v10[6] = v4;

  v13 = v10[3];
  if (v4)
  {
    v14 = v10[3];

    v15 = sub_10002C82C;
    v13 = 0;
  }

  else
  {
    v10[7] = a4;
    v10[8] = a3;
    v10[9] = a2;
    v10[10] = a1;
    v15 = sub_10002C75C;
  }

  return _swift_task_switch(v15, v13, 0);
}

uint64_t sub_10002C6FC()
{
  v1 = *(v0 + 32);
  sub_10002C14C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002C75C()
{
  v1 = *(v0 + 24);

  return _swift_task_switch(sub_10002C7C4, 0, 0);
}

uint64_t sub_10002C7C4()
{
  sub_10002C14C();
  v1 = v0[1];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];

  return v1(v2, v3, v4, v5);
}

uint64_t sub_10002C82C()
{
  v1 = *(v0 + 48);
  sub_10002C14C();
  v2 = *(v0 + 8);

  return v2();
}

void sub_10002C88C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000017, 0x8000000100093D00, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10002C9F0()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "getCurrentCountryCode()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_10002CB4C;

  return sub_100022888();
}

uint64_t sub_10002CB4C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;
  v4[3] = a1;
  v4[4] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10002CE08, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[5] = v7;
    *v7 = v6;
    v7[1] = sub_10002CCCC;

    return sub_100021688();
  }
}

uint64_t sub_10002CCCC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  v8 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {
    v9 = sub_10002CECC;
  }

  else
  {
    v10 = v6[3];

    v6[7] = a2;
    v6[8] = a1;
    v9 = sub_10002CE68;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10002CE08()
{
  v1 = *(v0 + 32);
  sub_10002C88C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002CE68()
{
  sub_10002C88C();
  v1 = v0[1];
  v3 = v0[7];
  v2 = v0[8];

  return v1(v2, v3);
}

uint64_t sub_10002CECC()
{
  v1 = v0[3];

  v2 = v0[6];
  sub_10002C88C();
  v3 = v0[1];

  return v3();
}

void sub_10002CF34()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000001CLL, 0x8000000100093CE0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10002D098()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "getPrismActivationLocation()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_10002D1F8;

  return sub_100022888();
}

uint64_t sub_10002D1F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v9 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v6 = sub_10002D52C;
    v7 = 0;
  }

  else
  {
    v6 = sub_10002D318;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10002D318()
{
  v9 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(v0[2], qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD00000000000001CLL, 0x8000000100093CE0, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  v5 = v0[4];
  sub_10001A110();
  v0[6] = swift_allocError();
  *v6 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_10002D4CC, 0, 0);
}

uint64_t sub_10002D4CC()
{
  v1 = *(v0 + 48);
  sub_10002CF34();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002D52C()
{
  v1 = *(v0 + 40);
  sub_10002CF34();
  v2 = *(v0 + 8);

  return v2();
}

void sub_10002D58C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000001ALL, 0x8000000100093CC0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10002D6F0()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "getPrismActivationStatus()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_10002D850;

  return sub_100022888();
}

uint64_t sub_10002D850(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v9 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v6 = sub_10002DB88;
    v7 = 0;
  }

  else
  {
    v6 = sub_10002D970;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10002D970()
{
  v9 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(v0[2], qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD00000000000001ALL, 0x8000000100093CC0, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  v5 = v0[4];
  sub_10001A110();
  v0[6] = swift_allocError();
  *v6 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_10002DB24, 0, 0);
}

uint64_t sub_10002DB24()
{
  v1 = *(v0 + 48);
  sub_10002D58C();
  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_10002DB88()
{
  v1 = *(v0 + 40);
  sub_10002D58C();
  v2 = *(v0 + 8);

  return v2(0);
}

void sub_10002DBEC()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000017, 0x8000000100093CA0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10002DD50()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "canSkipGazeEnrollment()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_10002DEB0;

  return sub_100022888();
}

uint64_t sub_10002DEB0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v9 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v6 = sub_10002E1E8;
    v7 = 0;
  }

  else
  {
    v6 = sub_10002DFD0;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10002DFD0()
{
  v9 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(v0[2], qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD000000000000017, 0x8000000100093CA0, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  v5 = v0[4];
  sub_10001A110();
  v0[6] = swift_allocError();
  *v6 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_10002E184, 0, 0);
}

uint64_t sub_10002E184()
{
  v1 = *(v0 + 48);
  sub_10002DBEC();
  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_10002E1E8()
{
  v1 = *(v0 + 40);
  sub_10002DBEC();
  v2 = *(v0 + 8);

  return v2(0);
}

void sub_10002E24C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000016, 0x8000000100093C80, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10002E3B0()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "listBriefEnrollments()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_10002E510;

  return sub_100022888();
}

uint64_t sub_10002E510(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v9 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v6 = sub_10002E844;
    v7 = 0;
  }

  else
  {
    v6 = sub_10002E630;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10002E630()
{
  v9 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(v0[2], qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD000000000000017, 0x8000000100093C60, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  v5 = v0[4];
  sub_10001A110();
  v0[6] = swift_allocError();
  *v6 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_10002E7E4, 0, 0);
}

uint64_t sub_10002E7E4()
{
  v1 = *(v0 + 48);
  sub_10002E24C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002E844()
{
  v1 = *(v0 + 40);
  sub_10002E24C();
  v2 = *(v0 + 8);

  return v2();
}

void sub_10002E8A4()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000019, 0x8000000100093C40, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10002EA08()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "listEnrollments(inGroup:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_10002EB68;

  return sub_100022888();
}

uint64_t sub_10002EB68(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v9 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v6 = sub_10002EE9C;
    v7 = 0;
  }

  else
  {
    v6 = sub_10002EC88;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10002EC88()
{
  v9 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(v0[2], qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD00000000000001ALL, 0x8000000100093C20, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  v5 = v0[4];
  sub_10001A110();
  v0[6] = swift_allocError();
  *v6 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_10002EE3C, 0, 0);
}

uint64_t sub_10002EE3C()
{
  v1 = *(v0 + 48);
  sub_10002E8A4();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002EE9C()
{
  v1 = *(v0 + 40);
  sub_10002E8A4();
  v2 = *(v0 + 8);

  return v2();
}

void sub_10002EEFC()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000001ALL, 0x8000000100093C00, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10002F060()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchEnrollment(withUUID:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_10002F1C0;

  return sub_100022888();
}

uint64_t sub_10002F1C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v9 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v6 = sub_10002F4F4;
    v7 = 0;
  }

  else
  {
    v6 = sub_10002F2E0;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10002F2E0()
{
  v9 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(v0[2], qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD00000000000001ALL, 0x8000000100093BE0, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  v5 = v0[4];
  sub_10001A110();
  v0[6] = swift_allocError();
  *v6 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_10002F494, 0, 0);
}

uint64_t sub_10002F494()
{
  v1 = *(v0 + 48);
  sub_10002EEFC();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002F4F4()
{
  v1 = *(v0 + 40);
  sub_10002EEFC();
  v2 = *(v0 + 8);

  return v2();
}

void sub_10002F554()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000003ALL, 0x8000000100093BA0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10002F6B8()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "addEnrollment(_:inGroup:fromSource:assigningUUID:options:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_10002F818;

  return sub_100022888();
}

uint64_t sub_10002F818(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v9 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v6 = sub_10002FB4C;
    v7 = 0;
  }

  else
  {
    v6 = sub_10002F938;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10002F938()
{
  v9 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(v0[2], qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD00000000000003ALL, 0x8000000100093BA0, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  v5 = v0[4];
  sub_10001A110();
  v0[6] = swift_allocError();
  *v6 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_10002FAEC, 0, 0);
}

uint64_t sub_10002FAEC()
{
  v1 = *(v0 + 48);
  sub_10002F554();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002FB4C()
{
  v1 = *(v0 + 40);
  sub_10002F554();
  v2 = *(v0 + 8);

  return v2();
}

void sub_10002FBAC()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000002DLL, 0x8000000100093B70, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10002FD10()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "addEnrollments(_:inGroup:fromSource:options:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_10002FE70;

  return sub_100022888();
}

uint64_t sub_10002FE70(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v9 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v6 = sub_1000301A4;
    v7 = 0;
  }

  else
  {
    v6 = sub_10002FF90;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10002FF90()
{
  v9 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(v0[2], qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD00000000000002DLL, 0x8000000100093B70, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  v5 = v0[4];
  sub_10001A110();
  v0[6] = swift_allocError();
  *v6 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_100030144, 0, 0);
}

uint64_t sub_100030144()
{
  v1 = *(v0 + 48);
  sub_10002FBAC();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000301A4()
{
  v1 = *(v0 + 40);
  sub_10002FBAC();
  v2 = *(v0 + 8);

  return v2();
}

void sub_100030204()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000025, 0x8000000100093B40, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100030368()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "renameEnrollment(withUUID:toNewName:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1000304C8;

  return sub_100022888();
}

uint64_t sub_1000304C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v9 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v6 = sub_1000307FC;
    v7 = 0;
  }

  else
  {
    v6 = sub_1000305E8;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1000305E8()
{
  v9 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(v0[2], qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD000000000000025, 0x8000000100093B40, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  v5 = v0[4];
  sub_10001A110();
  v0[6] = swift_allocError();
  *v6 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_10003079C, 0, 0);
}

uint64_t sub_10003079C()
{
  v1 = *(v0 + 48);
  sub_100030204();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000307FC()
{
  v1 = *(v0 + 40);
  sub_100030204();
  v2 = *(v0 + 8);

  return v2();
}

void sub_10003085C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000001BLL, 0x8000000100093B20, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_1000309C0()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "deleteEnrollment(withUUID:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100030B20;

  return sub_100022888();
}

uint64_t sub_100030B20(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v9 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v6 = sub_100030E54;
    v7 = 0;
  }

  else
  {
    v6 = sub_100030C40;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100030C40()
{
  v9 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(v0[2], qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD00000000000001BLL, 0x8000000100093B20, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  v5 = v0[4];
  sub_10001A110();
  v0[6] = swift_allocError();
  *v6 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_100030DF4, 0, 0);
}

uint64_t sub_100030DF4()
{
  v1 = *(v0 + 48);
  sub_10003085C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100030E54()
{
  v1 = *(v0 + 40);
  sub_10003085C();
  v2 = *(v0 + 8);

  return v2();
}

void sub_100030EB4()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000016, 0x8000000100093B00, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100031018()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "deleteAllEnrollments()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100031178;

  return sub_100022888();
}

uint64_t sub_100031178(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v9 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v6 = sub_1000314AC;
    v7 = 0;
  }

  else
  {
    v6 = sub_100031298;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100031298()
{
  v9 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(v0[2], qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD000000000000016, 0x8000000100093B00, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  v5 = v0[4];
  sub_10001A110();
  v0[6] = swift_allocError();
  *v6 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_10003144C, 0, 0);
}

uint64_t sub_10003144C()
{
  v1 = *(v0 + 48);
  sub_100030EB4();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000314AC()
{
  v1 = *(v0 + 40);
  sub_100030EB4();
  v2 = *(v0 + 8);

  return v2();
}

void sub_10003150C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000001BLL, 0x8000000100093AE0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100031670()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "deleteEnrollments(inGroup:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1000317D0;

  return sub_100022888();
}

uint64_t sub_1000317D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v9 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v6 = sub_100031B04;
    v7 = 0;
  }

  else
  {
    v6 = sub_1000318F0;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1000318F0()
{
  v9 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(v0[2], qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD00000000000001BLL, 0x8000000100093AE0, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  v5 = v0[4];
  sub_10001A110();
  v0[6] = swift_allocError();
  *v6 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_100031AA4, 0, 0);
}

uint64_t sub_100031AA4()
{
  v1 = *(v0 + 48);
  sub_10003150C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100031B04()
{
  v1 = *(v0 + 40);
  sub_10003150C();
  v2 = *(v0 + 8);

  return v2();
}

void sub_100031B64()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000001BLL, 0x8000000100093AC0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100031CC8()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "deleteDemoLensEnrollments()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100031E28;

  return sub_100022888();
}

uint64_t sub_100031E28(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v9 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v6 = sub_10003215C;
    v7 = 0;
  }

  else
  {
    v6 = sub_100031F48;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100031F48()
{
  v9 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(v0[2], qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD00000000000001BLL, 0x8000000100093AC0, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  v5 = v0[4];
  sub_10001A110();
  v0[6] = swift_allocError();
  *v6 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_1000320FC, 0, 0);
}

uint64_t sub_1000320FC()
{
  v1 = *(v0 + 48);
  sub_100031B64();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003215C()
{
  v1 = *(v0 + 40);
  sub_100031B64();
  v2 = *(v0 + 8);

  return v2();
}

void sub_1000321BC()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000001BLL, 0x8000000100093AA0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100032320()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "selectEnrollment(withUUID:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100032480;

  return sub_100022888();
}

uint64_t sub_100032480(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v9 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v6 = sub_1000327B4;
    v7 = 0;
  }

  else
  {
    v6 = sub_1000325A0;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1000325A0()
{
  v9 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(v0[2], qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD00000000000001BLL, 0x8000000100093AA0, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  v5 = v0[4];
  sub_10001A110();
  v0[6] = swift_allocError();
  *v6 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_100032754, 0, 0);
}

uint64_t sub_100032754()
{
  v1 = *(v0 + 48);
  sub_1000321BC();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000327B4()
{
  v1 = *(v0 + 40);
  sub_1000321BC();
  v2 = *(v0 + 8);

  return v2();
}

void sub_100032814()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000001BLL, 0x8000000100093A80, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100032978()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "deselectCurrentEnrollment()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100032AD8;

  return sub_100022888();
}

uint64_t sub_100032AD8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v9 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v6 = sub_100032E0C;
    v7 = 0;
  }

  else
  {
    v6 = sub_100032BF8;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100032BF8()
{
  v9 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(v0[2], qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD00000000000001BLL, 0x8000000100093A80, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  v5 = v0[4];
  sub_10001A110();
  v0[6] = swift_allocError();
  *v6 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_100032DAC, 0, 0);
}

uint64_t sub_100032DAC()
{
  v1 = *(v0 + 48);
  sub_100032814();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100032E0C()
{
  v1 = *(v0 + 40);
  sub_100032814();
  v2 = *(v0 + 8);

  return v2();
}

void sub_100032E6C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000024, 0x8000000100093A50, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100032FD0()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "syncEnrollmentsWithExternalSources()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100033130;

  return sub_100022888();
}

uint64_t sub_100033130(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v9 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v6 = sub_100033464;
    v7 = 0;
  }

  else
  {
    v6 = sub_100033250;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100033250()
{
  v9 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(v0[2], qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD000000000000024, 0x8000000100093A50, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  v5 = v0[4];
  sub_10001A110();
  v0[6] = swift_allocError();
  *v6 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_100033404, 0, 0);
}

uint64_t sub_100033404()
{
  v1 = *(v0 + 48);
  sub_100032E6C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100033464()
{
  v1 = *(v0 + 40);
  sub_100032E6C();
  v2 = *(v0 + 8);

  return v2();
}

void sub_1000334C4()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000012, 0x8000000100093A30, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100033628()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "deleteAllASAKeys()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_100033784;

  return sub_100022888();
}

uint64_t sub_100033784(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;
  v4[3] = a1;
  v4[4] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100033A20, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[5] = v7;
    *v7 = v6;
    v7[1] = sub_100033904;

    return sub_10001C168();
  }
}

uint64_t sub_100033904()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_100033AE0;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_100033A80;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100033A20()
{
  v1 = *(v0 + 32);
  sub_1000334C4();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100033A80()
{
  sub_1000334C4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100033AE0()
{
  v1 = v0[3];

  v2 = v0[6];
  sub_1000334C4();
  v3 = v0[1];

  return v3();
}

void sub_100033B48()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000018, 0x8000000100093A10, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100033CAC()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchPrescriptionState()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100033E0C;

  return sub_100022888();
}

uint64_t sub_100033E0C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v9 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v6 = sub_100034140;
    v7 = 0;
  }

  else
  {
    v6 = sub_100033F2C;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100033F2C()
{
  v9 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(v0[2], qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD000000000000018, 0x8000000100093A10, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  v5 = v0[4];
  sub_10001A110();
  v0[6] = swift_allocError();
  *v6 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_1000340E0, 0, 0);
}

uint64_t sub_1000340E0()
{
  v1 = *(v0 + 48);
  sub_100033B48();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100034140()
{
  v1 = *(v0 + 40);
  sub_100033B48();
  v2 = *(v0 + 8);

  return v2();
}

void sub_1000341A0()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000022, 0x80000001000939E0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100034304()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchActiveComfortAdjustmentData()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100034464;

  return sub_100022888();
}

uint64_t sub_100034464(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v9 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v6 = sub_100034798;
    v7 = 0;
  }

  else
  {
    v6 = sub_100034584;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100034584()
{
  v9 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(v0[2], qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD000000000000022, 0x80000001000939E0, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  v5 = v0[4];
  sub_10001A110();
  v0[6] = swift_allocError();
  *v6 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_100034738, 0, 0);
}

uint64_t sub_100034738()
{
  v1 = *(v0 + 48);
  sub_1000341A0();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100034798()
{
  v1 = *(v0 + 40);
  sub_1000341A0();
  v2 = *(v0 + 8);

  return v2();
}

void sub_1000347F8()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000025, 0x80000001000939B0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10003495C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "updateActiveComfortAdjustmentData(_:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100034ABC;

  return sub_100022888();
}

uint64_t sub_100034ABC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v9 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v6 = sub_100034DF0;
    v7 = 0;
  }

  else
  {
    v6 = sub_100034BDC;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100034BDC()
{
  v9 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(v0[2], qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD000000000000025, 0x80000001000939B0, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  v5 = v0[4];
  sub_10001A110();
  v0[6] = swift_allocError();
  *v6 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_100034D90, 0, 0);
}

uint64_t sub_100034D90()
{
  v1 = *(v0 + 48);
  sub_1000347F8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100034DF0()
{
  v1 = *(v0 + 40);
  sub_1000347F8();
  v2 = *(v0 + 8);

  return v2();
}

void sub_100034E50()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000001CLL, 0x8000000100093990, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100034FB4()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchComfortAdjustmentData()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100035114;

  return sub_100022888();
}

uint64_t sub_100035114(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v9 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v6 = sub_100035448;
    v7 = 0;
  }

  else
  {
    v6 = sub_100035234;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100035234()
{
  v9 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(v0[2], qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD00000000000001CLL, 0x8000000100093990, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  v5 = v0[4];
  sub_10001A110();
  v0[6] = swift_allocError();
  *v6 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_1000353E8, 0, 0);
}

uint64_t sub_1000353E8()
{
  v1 = *(v0 + 48);
  sub_100034E50();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100035448()
{
  v1 = *(v0 + 40);
  sub_100034E50();
  v2 = *(v0 + 8);

  return v2();
}

void sub_1000354A8()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000026, 0x8000000100093960, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10003560C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchPrismCorrection(forUUID:inGroup:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_10003576C;

  return sub_100022888();
}

uint64_t sub_10003576C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v9 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v6 = sub_100035AA0;
    v7 = 0;
  }

  else
  {
    v6 = sub_10003588C;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10003588C()
{
  v9 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(v0[2], qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD000000000000026, 0x8000000100093960, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  v5 = v0[4];
  sub_10001A110();
  v0[6] = swift_allocError();
  *v6 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_100035A40, 0, 0);
}

uint64_t sub_100035A40()
{
  v1 = *(v0 + 48);
  sub_1000354A8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100035AA0()
{
  v1 = *(v0 + 40);
  sub_1000354A8();
  v2 = *(v0 + 8);

  return v2();
}

void sub_100035B00()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000029, 0x8000000100093930, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100035C64()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "updatePrismCorrection(_:forUUID:inGroup:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100035DC4;

  return sub_100022888();
}

uint64_t sub_100035DC4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v9 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v6 = sub_1000360F8;
    v7 = 0;
  }

  else
  {
    v6 = sub_100035EE4;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100035EE4()
{
  v9 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(v0[2], qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD000000000000029, 0x8000000100093930, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  v5 = v0[4];
  sub_10001A110();
  v0[6] = swift_allocError();
  *v6 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_100036098, 0, 0);
}

uint64_t sub_100036098()
{
  v1 = *(v0 + 48);
  sub_100035B00();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000360F8()
{
  v1 = *(v0 + 40);
  sub_100035B00();
  v2 = *(v0 + 8);

  return v2();
}

void sub_100036158()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000026, 0x8000000100093900, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_1000362C0()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchPrescriptionRecords(withTimeout:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_10003641C;

  return sub_100022888();
}

uint64_t sub_10003641C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 3);
  v6 = *v2;
  *(v4 + 4) = a1;
  *(v4 + 5) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000366D0, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v4 + 6) = v7;
    *v7 = v6;
    v7[1] = sub_1000365A0;
    v8 = v4[2];

    return sub_10001C300(v8);
  }
}

uint64_t sub_1000365A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_100036794;
  }

  else
  {
    v8 = *(v4 + 32);

    *(v4 + 64) = a1;
    v7 = sub_100036730;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000366D0()
{
  v1 = *(v0 + 40);
  sub_100036158();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100036730()
{
  sub_100036158();
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_100036794()
{
  v1 = v0[4];

  v2 = v0[7];
  sub_100036158();
  v3 = v0[1];

  return v3();
}

void sub_1000367FC()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000013, 0x80000001000938E0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100036964()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "purgeData(options:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100036AC0;

  return sub_100022888();
}

uint64_t sub_100036AC0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  v4[4] = a1;
  v4[5] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100036D64, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[6] = v7;
    *v7 = v6;
    v7[1] = sub_100036C48;
    v8 = v4[2];

    return sub_10001F2F4(v8);
  }
}

uint64_t sub_100036C48()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_100036E24;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_100036DC4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100036D64()
{
  v1 = *(v0 + 40);
  sub_1000367FC();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100036DC4()
{
  sub_1000367FC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100036E24()
{
  v1 = v0[4];

  v2 = v0[7];
  sub_1000367FC();
  v3 = v0[1];

  return v3();
}

void sub_100036E8C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000002FLL, 0x80000001000938B0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100036FD4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 72) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return _swift_task_switch(sub_100036FF8, 0, 0);
}

uint64_t sub_100036FF8()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "decodeAppClipCodePayload(_:allowUnsupportedRX:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_100037154;

  return sub_100022888();
}

uint64_t sub_100037154(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_100037320;
    v8 = 0;
  }

  else
  {
    *(v4 + 48) = a1;
    v7 = sub_100037288;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100037288()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  *(v0 + 56) = sub_10001345C(*(v0 + 16), *(v0 + 24), *(v0 + 72));
  *(v0 + 64) = v2;

  if (v2)
  {
    v3 = sub_1000373E4;
  }

  else
  {
    v3 = sub_100037380;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100037320()
{
  v1 = *(v0 + 40);
  sub_100036E8C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100037380()
{
  sub_100036E8C();
  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_1000373E4()
{
  v1 = *(v0 + 64);
  sub_100036E8C();
  v2 = *(v0 + 8);

  return v2();
}

void sub_100037444()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000001CLL, 0x8000000100093890, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_1000375AC()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "encodeAppClipCodePayload(_:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100037708;

  return sub_100022888();
}

uint64_t sub_100037708(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v7 = sub_1000378E4;
    v8 = 0;
  }

  else
  {
    *(v4 + 40) = a1;
    v7 = sub_10003783C;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_10003783C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_100014974(v0[2]);
  v5 = v4;
  v0[6] = v1;

  if (v1)
  {
    v6 = sub_1000379A8;
  }

  else
  {
    v0[7] = v5;
    v0[8] = v3;
    v6 = sub_100037944;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000378E4()
{
  v1 = *(v0 + 32);
  sub_100037444();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100037944()
{
  sub_100037444();
  v1 = v0[1];
  v3 = v0[7];
  v2 = v0[8];

  return v1(v2, v3);
}

uint64_t sub_1000379A8()
{
  v1 = *(v0 + 48);
  sub_100037444();
  v2 = *(v0 + 8);

  return v2();
}

void sub_100037A08()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000048, 0x8000000100093840, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100037B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return _swift_task_switch(sub_100037B7C, 0, 0);
}

uint64_t sub_100037B7C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "generateAppClipCodePayload(version:lensType:odRX:osRX:colorCode:secret:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_100037CD8;

  return sub_100022888();
}

uint64_t sub_100037CD8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v9 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 88) = v1;

  if (v1)
  {
    v6 = sub_100037EF8;
    v7 = 0;
  }

  else
  {
    v6 = sub_100037DF8;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100037DF8()
{
  if (*(v0 + 32) == 0)
  {
    v1 = *(v0 + 80);
    sub_10001A110();
    v2 = swift_allocError();
    *v3 = 1;
    swift_willThrow();

LABEL_4:
    *(v0 + 112) = v2;
    v9 = sub_100037FBC;
    goto LABEL_5;
  }

  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = sub_100015288(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v8 = v7;
  v2 = v4;

  if (v4)
  {
    goto LABEL_4;
  }

  *(v0 + 96) = v8;
  *(v0 + 104) = v6;
  v9 = sub_100037F58;
LABEL_5:

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100037EF8()
{
  v1 = *(v0 + 88);
  sub_100037A08();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100037F58()
{
  sub_100037A08();
  v1 = v0[1];
  v3 = v0[12];
  v2 = v0[13];

  return v1(v2, v3);
}

uint64_t sub_100037FBC()
{
  v1 = *(v0 + 112);
  sub_100037A08();
  v2 = *(v0 + 8);

  return v2();
}

void sub_10003801C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000002ALL, 0x8000000100093810, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100038164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100038188, 0, 0);
}

uint64_t sub_100038188()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "dumpDataStore(toFileHandle:table:options:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1000382E4;

  return sub_100022888();
}

uint64_t sub_1000382E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  v4[7] = a1;
  v4[8] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10003858C, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[9] = v7;
    *v7 = v6;
    v7[1] = sub_100038470;
    v8 = v4[4];
    v9 = v4[5];
    v10 = v4[3];
    v11 = v4[2];

    return sub_1000219E4(v11, v10, v8, v9);
  }
}

uint64_t sub_100038470()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_10003864C;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1000385EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10003858C()
{
  v1 = *(v0 + 64);
  sub_10003801C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000385EC()
{
  sub_10003801C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003864C()
{
  v1 = v0[7];

  v2 = v0[10];
  sub_10003801C();
  v3 = v0[1];

  return v3();
}

void sub_1000386B4()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000002CLL, 0x80000001000937E0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100038818()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "validateAndApplySharedLensEnrollmentAssets()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_100038974;

  return sub_100022888();
}

uint64_t sub_100038974(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;
  v4[3] = a1;
  v4[4] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100038C24, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[5] = v7;
    *v7 = v6;
    v7[1] = sub_100038AF4;

    return sub_10001FC30();
  }
}

uint64_t sub_100038AF4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_100038CE8;
  }

  else
  {
    v8 = *(v4 + 24);

    *(v4 + 56) = a1;
    v7 = sub_100038C84;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100038C24()
{
  v1 = *(v0 + 32);
  sub_1000386B4();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100038C84()
{
  sub_1000386B4();
  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_100038CE8()
{
  v1 = v0[3];

  v2 = v0[6];
  sub_1000386B4();
  v3 = v0[1];

  return v3();
}

void sub_100038D50()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000013, 0x80000001000937C0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100038EB4()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchSystemStatus()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_100039010;

  return sub_100022888();
}

uint64_t sub_100039010(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;
  v4[3] = a1;
  v4[4] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000392C0, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[5] = v7;
    *v7 = v6;
    v7[1] = sub_100039190;

    return sub_100020864();
  }
}

uint64_t sub_100039190(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_100039384;
  }

  else
  {
    v8 = *(v4 + 24);

    *(v4 + 56) = a1;
    v7 = sub_100039320;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000392C0()
{
  v1 = *(v0 + 32);
  sub_100038D50();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100039320()
{
  sub_100038D50();
  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_100039384()
{
  v1 = v0[3];

  v2 = v0[6];
  sub_100038D50();
  v3 = v0[1];

  return v3();
}

void sub_1000393EC()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000025, 0x8000000100093790, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100039550()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "migrateExistingRecordsToDataSharing()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1000396B0;

  return sub_100022888();
}

uint64_t sub_1000396B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v9 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v6 = sub_1000399E4;
    v7 = 0;
  }

  else
  {
    v6 = sub_1000397D0;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1000397D0()
{
  v9 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(v0[2], qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD000000000000025, 0x8000000100093790, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  v5 = v0[4];
  sub_10001A110();
  v0[6] = swift_allocError();
  *v6 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_100039984, 0, 0);
}

uint64_t sub_100039984()
{
  v1 = *(v0 + 48);
  sub_1000393EC();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000399E4()
{
  v1 = *(v0 + 40);
  sub_1000393EC();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100039A44()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001AB70;

  return sub_10002A48C(v2);
}

uint64_t sub_100039AF0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001AB70;

  return sub_10002A270(v2);
}

uint64_t sub_100039BA0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10001AB70;

  return sub_100029E28(v2, v3, v4, v5, v6);
}

uint64_t sub_100039C6C()
{
  _Block_release(*(v0 + 64));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100039CC4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_10001AB70;

  return sub_100029934(v2, v3, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100039DB0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001AB70;

  return sub_1000294F8(v2, v3, v4);
}

uint64_t sub_100039E68()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001AB70;

  return sub_1000290AC(v2, v3, v5, v4);
}

uint64_t sub_100039F30()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001AB70;

  return sub_100028E68(v2, v3);
}

uint64_t sub_100039FE4()
{
  v2 = v0[2];
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001AB70;

  return sub_100028AB8(v3, v2);
}

uint64_t sub_10003A098()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003A0E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10001AB70;

  return sub_100028888(v2, v3, v4, v5);
}

uint64_t sub_10003A1B0()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003A1F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001AB70;

  return sub_10002863C(v2, v3, v5);
}

uint64_t sub_10003A2B8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001AB70;

  return sub_100028288(v2);
}

uint64_t sub_10003A364()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001AB70;

  return sub_100027E5C(v2, v3, v4);
}

uint64_t sub_10003A418()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001AB70;

  return sub_100027A9C(v2);
}

uint64_t sub_10003A4C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001A01C;

  return sub_100027700(v2);
}

uint64_t sub_10003A570()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001AB70;

  return sub_100027380(v2);
}

uint64_t sub_10003A61C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001AB70;

  return sub_100027164(v2);
}

uint64_t sub_10003A6C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001AB70;

  return sub_100026F48(v2);
}

uint64_t sub_10003A774()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001AB70;

  return sub_100026D28(v2, v3);
}

uint64_t sub_10003A828()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001AB70;

  return sub_100026AF8(v2);
}

uint64_t sub_10003A8D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001AB70;

  return sub_1000268D8(v2, v3);
}

uint64_t sub_10003A988()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001AB70;

  return sub_1000266AC(v2);
}

uint64_t sub_10003AA34()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001AB70;

  return sub_10002648C(v2, v3);
}

uint64_t sub_10003AAE8()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003AB38()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001AB70;

  return sub_100026258(v2, v3, v5);
}

uint64_t sub_10003ABF8()
{
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003AC40()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10001AB70;

  return sub_100025EA8(v2, v3, v4, v5, v7);
}

uint64_t sub_10003AD14()
{
  _Block_release(*(v0 + 56));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10003AD64()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10001AB70;

  return sub_100025A9C(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_10003AE40()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003AE88()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001AB70;

  return sub_10002583C(v2, v3);
}

uint64_t sub_10003AF3C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003AF7C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001AB70;

  return sub_100025494(v2, v3);
}

uint64_t sub_10003B030()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001AB70;

  return sub_1000250F4(v2);
}

uint64_t sub_10003B0DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001AB70;

  return sub_100024D60(v2);
}

uint64_t sub_10003B188()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001AB70;

  return sub_100024988(v2);
}

uint64_t sub_10003B234()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001AB70;

  return sub_10002476C(v2);
}

uint64_t sub_10003B2E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001AB70;

  return sub_1000243D4(v2);
}

uint64_t sub_10003B38C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001AB70;

  return sub_100023FE4(v2);
}

uint64_t sub_10003B438()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003B490()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10001AB70;

  return sub_100023AAC(v2, v3, v4, v5, v6);
}

uint64_t sub_10003B558()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003B598()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001AB70;

  return sub_1000236E8(v2);
}

uint64_t sub_10003B644()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10003B820()
{
  v0 = sub_100081018();
  sub_100016278(v0, qword_1000B7BF0);
  sub_100016240(v0, qword_1000B7BF0);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1000812B8();

    type metadata accessor for CorePrescriptionServiceDelegate();
    sub_100006940(&qword_1000B7C98, &qword_1000856D8);
    sub_100081338();
    sub_100081008();
  }

  else
  {
    __break(1u);
  }
}

id sub_10003B9B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CorePrescriptionServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10003BA10(void *a1)
{
  v2 = sub_100081288();
  v3 = [a1 valueForEntitlement:v2];

  if (v3)
  {
    sub_100081658();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (*(&v20 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && v18 == 1)
    {
      v4 = [objc_allocWithZone(type metadata accessor for CorePrescriptionServiceConnection()) init];
      v5 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP23CorePrescriptionService31CorePrescriptionServiceProtocol_];
      [a1 setExportedInterface:v5];

      [a1 setExportedObject:v4];
      [a1 resume];

      return 1;
    }
  }

  else
  {
    sub_10000D014(v21);
  }

  [a1 invalidate];
  [a1 auditToken];
  v7 = bundleIDForAuditToken(v21);
  if (v7)
  {
    v8 = v7;
    v9 = sub_1000812B8();
    v11 = v10;
  }

  else
  {
    v11 = 0xE500000000000000;
    v9 = 0x296C696E28;
  }

  if (qword_1000B73F0 != -1)
  {
    swift_once();
  }

  v12 = sub_100081018();
  sub_100016240(v12, qword_1000B7BF0);
  v13 = a1;

  v14 = sub_100080FF8();
  v15 = sub_1000815D8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *&v21[0] = swift_slowAlloc();
    *v16 = 136315650;
    *(v16 + 4) = sub_1000597A8(0xD000000000000031, 0x8000000100093F60, v21);
    *(v16 + 12) = 1024;
    *(v16 + 14) = [v13 processIdentifier];

    *(v16 + 18) = 2080;
    v17 = sub_1000597A8(v9, v11, v21);

    *(v16 + 20) = v17;
    _os_log_impl(&_mh_execute_header, v14, v15, "Missing entitlement: %s, client PID: (%d, client bundle: %s", v16, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
  }

  return 0;
}

uint64_t AccessoryDataFetchEnvironment.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_10003BD98@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 3;
  v4 = __CFADD__(v3, 2);
  v5 = v3 < 0xFFFFFFFFFFFFFFFELL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

unint64_t CorePrescriptionServiceError.errorUserInfo.getter(uint64_t a1)
{
  sub_100006940(&unk_1000B8360, &unk_1000856E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100084830;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  v3 = sub_100081338();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = sub_10003C570(inited);
  swift_setDeallocating();
  sub_10003C6A0(inited + 32);
  v6 = CorePrescriptionServiceError.errorDescription.getter(a1);
  v8 = v7;
  v9 = sub_1000812B8();
  v11 = v10;
  v16 = &type metadata for String;
  *&v15 = v6;
  *(&v15 + 1) = v8;
  sub_1000068E4(&v15, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10003C2FC(v14, v9, v11, isUniquelyReferenced_nonNull_native);

  return v5;
}

uint64_t CorePrescriptionServiceError.errorDescription.getter(uint64_t a1)
{
  if (a1 > 5)
  {
    if (a1 <= 8)
    {
      if (a1 == 6)
      {
        return 0xD000000000000012;
      }

      if (a1 == 7)
      {
        return 0xD000000000000014;
      }

      return 0xD000000000000013;
    }

    switch(a1)
    {
      case 9:
        return 0xD000000000000028;
      case 10:
        return 0xD000000000000011;
      case 11:
        return 0xD000000000000013;
    }

    goto LABEL_24;
  }

  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      return 0x2064696C61766E49;
    }

    if (a1 == 2)
    {
      return 0xD000000000000015;
    }

LABEL_24:
    result = sub_1000818C8();
    __break(1u);
    return result;
  }

  if (a1 == 3)
  {
    return 0xD000000000000010;
  }

  if (a1 == 4)
  {
    return 0xD000000000000011;
  }

  return 0x6C616E7265746E49;
}