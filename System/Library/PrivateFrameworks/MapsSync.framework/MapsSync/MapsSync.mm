id sub_1000017A8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, void *, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  a6(v15, a3, a4);

  __swift_project_boxed_opaque_existential_0(v15, v15[3]);
  v13 = sub_100029418();
  __swift_destroy_boxed_opaque_existential_0(v15);

  return v13;
}

id sub_1000018B0(id result, id a2)
{
  if ((v2[OBJC_IVAR____TtC9mapssyncd40MapsSyncStoreServerRequestHandlingPolicy_mapsInstalled] & 1) == 0)
  {
    sub_10000A05C();
    swift_allocError();
    *v12 = 5;
    return swift_willThrow();
  }

  if (!a2)
  {
    __break(1u);
    goto LABEL_38;
  }

  v4 = v2;
  v5 = result;
  result = [a2 entitlements];
  if (!result)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v6 = result;
  v7 = sub_100028F38();

  v39 = 0xD000000000000016;
  v40 = 0x800000010002C8E0;
  sub_100029348();
  if (!*(v7 + 16) || (v8 = sub_10000243C(&v41), (v9 & 1) == 0))
  {

    sub_100001EB8(&v41);
    goto LABEL_11;
  }

  sub_100002480(*(v7 + 56) + 32 * v8, v43);
  sub_100001EB8(&v41);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v41 = 0;
    v38.receiver = v4;
    v38.super_class = type metadata accessor for MapsSyncStoreServerRequestHandlingPolicy();
    v13 = objc_msgSendSuper2(&v38, "processRequest:fromClientWithContext:error:", v5, a2, &v41);
LABEL_12:
    v14 = v13;
    v15 = v41;
    if (v14)
    {
      sub_1000292D8();
      return swift_unknownObjectRelease();
    }

    v16 = v15;
    sub_100028C78();

    return swift_willThrow();
  }

  v36 = v39;
  v39 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046738, &unk_10002AFA0);
  v41 = sub_1000292B8();
  v42 = v10;
  v43[0] = 0xD000000000000011;
  v43[1] = 0x800000010002C900;
  sub_100001FC0();
  v11 = sub_1000292C8();

  if (v11)
  {

    goto LABEL_11;
  }

  if (v5)
  {
    v17 = [v5 requestType];
    if (v17 == 7)
    {
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = v28;
        v41 = 0;
        v42 = 0xE000000000000000;
        v30 = v5;
        sub_100029388(25);

        v41 = v36;
        v42 = v40;
        v46._countAndFlagsBits = 0x6E6974656C656420;
        v46._object = 0xED0000203E2D2067;
        sub_100028FE8(v46);
        v31 = [v29 fetchRequest];
        v22 = [v31 entityName];

        if (v22)
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      }
    }

    else
    {
      if (v17 != 2)
      {
        if (v17 != 1)
        {
          goto LABEL_36;
        }

        objc_opt_self();
        v18 = swift_dynamicCastObjCClass();
        if (!v18)
        {
          goto LABEL_36;
        }

        v19 = v18;
        v41 = 0;
        v42 = 0xE000000000000000;
        v20 = v5;
        sub_100029388(27);

        v41 = v36;
        v42 = v40;
        v44._countAndFlagsBits = 0x7473657571657220;
        v44._object = 0xEF203E2D20676E69;
        sub_100028FE8(v44);
        v21 = [v19 entityName];
        if (v21)
        {
          v22 = v21;
LABEL_29:
          v32 = sub_100028F88();
          v34 = v33;

LABEL_31:
          v47._countAndFlagsBits = v32;
          v47._object = v34;
          sub_100028FE8(v47);

          v35._countAndFlagsBits = 0x737463656A626F20;
          v35._object = 0xE800000000000000;
LABEL_35:
          sub_100028FE8(v35);
          _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v41, v42);

          goto LABEL_36;
        }

LABEL_30:
        v32 = 0x6E776F6E6B6E55;
        v34 = 0xE700000000000000;
        goto LABEL_31;
      }

      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        v24 = v23;
        v41 = 0;
        v42 = 0xE000000000000000;
        v25 = v5;
        sub_100029388(25);

        v41 = v36;
        v42 = v40;
        v45._countAndFlagsBits = 0x20676E6976617320;
        v45._object = 0xEB00000000203E2DLL;
        sub_100028FE8(v45);
        v26 = [v24 insertedObjects];
        if (v26)
        {
          sub_100003E20(0, &qword_100046740, NSManagedObject_ptr);
          sub_10000A0B0();
          v27 = sub_100029108();

          if ((v27 & 0xC000000000000001) != 0)
          {
            v26 = sub_100029318();
          }

          else
          {
            v26 = *(v27 + 16);
          }
        }

        v43[0] = v26;
        v48._countAndFlagsBits = sub_100029408();
        sub_100028FE8(v48);

        v35._countAndFlagsBits = 0x287463656A626F20;
        v35._object = 0xEA00000000002973;
        goto LABEL_35;
      }
    }

LABEL_36:

    v41 = 0;
    v37.receiver = v4;
    v37.super_class = type metadata accessor for MapsSyncStoreServerRequestHandlingPolicy();
    v13 = objc_msgSendSuper2(&v37, "processRequest:fromClientWithContext:error:", v5, a2, &v41);
    goto LABEL_12;
  }

LABEL_39:
  __break(1u);
  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100001FC0()
{
  result = qword_100047310;
  if (!qword_100047310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047310);
  }

  return result;
}

uint64_t _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = 0;
    v6 = 7;
    if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
    {
      v6 = 11;
    }

    v7 = v6 | (v4 << 16);
    v17 = 4 * v4;
    while (1)
    {
      v8 = sub_100028FD8();
      v10 = (v9 & 1) != 0 ? v7 : v8;
      if (v10 >> 14 < v5)
      {
        break;
      }

      sub_100029008();
      v11 = sub_100028FB8();
      v13 = v12;

      sub_100029138();
      if (qword_100046258 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_10002AD50;
      *(v14 + 56) = &type metadata for String;
      *(v14 + 64) = sub_1000022C4();
      *(v14 + 32) = v11;
      *(v14 + 40) = v13;
      sub_100028DE8();

      v5 = v10 >> 14;
      if (v10 >> 14 == v17)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  sub_100029138();
  if (qword_100046258 != -1)
  {
LABEL_20:
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10002AD50;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_1000022C4();
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;

  sub_100028DE8();
}

unint64_t sub_1000022C4()
{
  result = qword_100046300;
  if (!qword_100046300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046300);
  }

  return result;
}

unint64_t sub_100002318(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000023E0(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100029338();
      sub_100001EB8(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10000243C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100029328(*(v2 + 40));

  return sub_100002318(a1, v4);
}

uint64_t sub_100002480(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100002604(void *a1, uint64_t a2)
{
  v9 = 0;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for MapsSyncStoreServerRequestHandlingPolicy();
  v5 = objc_msgSendSuper2(&v8, "processFaultForObjectWithID:fromClientWithContext:error:", a1, a2, &v9);
  v6 = v9;
  if (v5)
  {
    sub_1000292D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = v6;
    sub_100028C78();

    swift_willThrow();
  }

  sub_1000026F0(a1);
}

void sub_1000026F0(void *a1)
{
  if (GEOConfigGetBOOL())
  {
    if (a1)
    {
      v2 = [a1 persistentStore];
      if (v2)
      {
        v3 = v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046720, &qword_10002AF90);
        v4 = swift_allocObject();
        *(v4 + 16) = xmmword_10002AD50;
        *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046728, &qword_10002AF98);
        *(v4 + 32) = a1;
        v5 = a1;
        isa = sub_100029038().super.isa;

        [v3 _mapsSyncDidUnregisterObjectsWithIDs_112229675:isa];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1000029A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100002A08(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000034F8;

  return sub_100002AC0(a1, v5);
}

uint64_t sub_100002AC0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000036E8;

  return v7(a1);
}

uint64_t sub_100002BB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000034F8;

  return sub_100002C84(a1, v4, v5, v7);
}

uint64_t sub_100002C84(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1000034FC;

  return v8();
}

uint64_t sub_100002D6C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000034F8;

  return sub_100002E2C(v2, v3, v5);
}

uint64_t sub_100002E2C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000034F8;

  return v7();
}

uint64_t sub_100002F14(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000032B4;

  return sub_100003068();
}

uint64_t sub_100002FBC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000034F8;

  return sub_100002F14(v2, v3);
}

uint64_t sub_100003088()
{
  v1 = v0[22];
  v2 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService__accountStatus;
  v0[23] = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService__accountStatus;
  swift_beginAccess();
  v3 = *(v1 + v2);

  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));

  if (v4)
  {
    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    v8 = objc_allocWithZone(CKContainerID);
    v9 = sub_100028F78();
    v10 = [v8 initWithContainerIdentifier:v9 environment:1];
    v0[24] = v10;

    v11 = [objc_allocWithZone(CKContainer) initWithContainerID:v10];
    v0[25] = v11;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_10000BEEC;
    v12 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046B30, &qword_10002B310);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10000C290;
    v0[13] = &block_descriptor_53;
    v0[14] = v12;
    [v11 accountInfoWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_1000032B4(uint64_t a1)
{
  v3 = *(*v2 + 32);
  v4 = *v2;
  *(v4 + 40) = a1;

  if (v1)
  {
    v5 = *(v4 + 24);

    v6 = sub_100028C68();

    (*(v5 + 16))(v5, 0, v6);

    _Block_release(*(v4 + 24));
    v7 = *(v4 + 8);

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_100003438, 0, 0);
  }
}

uint64_t sub_100003438()
{
  if ([*(v0 + 40) deviceToDeviceEncryptionAvailability])
  {
    v1 = [*(v0 + 40) hasValidCredentials];
  }

  else
  {
    v1 = 0;
  }

  v2 = *(v0 + 40);
  v3 = *(v0 + 24);

  (*(v3 + 16))(v3, v1, 0);
  _Block_release(*(v0 + 24));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000034FC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000035F0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroy_60Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t objectdestroy_56Tm()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000376C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000037A4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000037E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003828()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003860()
{
  v1 = *(v0 + 32);

  sub_100006E48(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1000038A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100003914()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100003974()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  if (v2 >> 60 != 15)
  {
    sub_1000110C8(*(v0 + 32), v2);
  }

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000039E4()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003A24()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003A5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003A94()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003AD4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003B4C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003B8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000473B8, &qword_10002BF80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100003E20(0, &qword_100046270, OS_dispatch_source_ptr);
  sub_100003E20(0, &qword_100046278, OS_dispatch_queue_ptr);
  v3 = sub_100029188();
  v4 = sub_1000291B8();

  qword_100047418 = v4;
  v5 = objc_autoreleasePoolPush();
  sub_100003E68();
  objc_autoreleasePoolPop(v5);
  v6 = [objc_opt_self() mainRunLoop];
  [v6 run];

  return 0;
}

uint64_t sub_100003E20(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_100003E68()
{
  v0 = sub_100028EA8();
  v22 = *(v0 - 8);
  v23 = v0;
  v1 = *(v22 + 64);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100028EC8();
  v4 = *(v21 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v21);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004304();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = (v9 + 16);
  swift_getObjectType();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  v28 = sub_100006D78;
  v29 = v11;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v19 = &v26;
  v26 = sub_100005AF0;
  v27 = &block_descriptor;
  v12 = _Block_copy(&aBlock);
  v20 = v8;

  sub_100028EB8();
  sub_100004508();
  sub_1000291C8();
  _Block_release(v12);
  (*(v22 + 8))(v3, v23);
  (*(v4 + 8))(v7, v21);

  sub_1000291E8();
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    sub_100029148();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10002AD50;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_1000022C4();
    *(v18 + 32) = 0xD00000000000001ALL;
    *(v18 + 40) = 0x800000010002C3E0;
    sub_100028DE8();

    exit(1);
  }

  sub_1000045E0();
  sub_100003E20(0, &qword_100046278, OS_dispatch_queue_ptr);
  v13 = sub_100029188();
  v28 = sub_100004DBC;
  v29 = 0;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_1000052CC;
  v27 = &block_descriptor_6;
  v14 = _Block_copy(&aBlock);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", v13, v14);
  _Block_release(v14);

  type metadata accessor for MapsSyncDaemon();
  swift_allocObject();
  v15 = sub_10000874C();
  swift_beginAccess();
  v16 = *v10;
  *v10 = v15;

  if (*v10)
  {
    v17 = *v10;

    sub_100004AE0(sub_10000487C, 0);
  }
}

id sub_100004304()
{
  result = [objc_opt_self() sharedPlatform];
  if (result)
  {
    v1 = result;
    v2 = [result isInternalInstall];

    if (v2 && (v3 = GeoServicesConfig_MapssyncdTapewormEnabled[1], GEOConfigGetBOOL()))
    {
      v4 = GeoServicesConfig_MapssyncdTapewormTimerIntervalMs[1];
      GEOConfigGetUint64();
      v5 = GeoServicesConfig_MapssyncdTapewormInstructionCount[1];
      GEOConfigGetUint64();
      GEOGetApproximateTapewormIterations();
      return GEOInsertTapewormOnDispatchTimer();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000043C8(uint64_t a1, uint64_t a2)
{
  sub_100029148();
  if (qword_100046258 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002AD50;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_1000022C4();
  *(v4 + 32) = 0xD00000000000001ALL;
  *(v4 + 40) = 0x800000010002C5A0;
  sub_100028DE8();

  swift_beginAccess();
  v5 = *(a1 + 16);
  *(a1 + 16) = 0;

  if (a2)
  {
    sub_100003E20(0, &qword_100046270, OS_dispatch_source_ptr);
    sub_1000291D8();
  }

  exit(0);
}

uint64_t sub_100004508()
{
  sub_100028EA8();
  sub_100006DA4(&qword_100046308, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046310, &qword_10002AD70);
  sub_100006DEC(&qword_100046318, &qword_100046310, &qword_10002AD70);
  return sub_1000292E8();
}

void sub_1000045E0()
{
  v0 = [objc_opt_self() sharedManager];
  if (!v0)
  {
    __break(1u);
    return;
  }

  v1 = v0;
  v2 = [v0 isSharedIPad];

  if ((v2 & 1) == 0)
  {
    v3 = [objc_opt_self() currentPersona];
    if (v3)
    {
      v10 = v3;
      v4 = [objc_opt_self() personaAttributesForPersonaType:0];
      if (v4)
      {
        v9 = v4;
        if (([v10 isPersonalPersona] & 1) == 0)
        {
          v5 = [v9 userPersonaUniqueString];
          v6 = [v10 generateAndRestorePersonaContextWithPersonaUniqueString:v5];

          if (v6)
          {
            sub_100029388(27);

            swift_getErrorValue();
            v12._countAndFlagsBits = sub_100029488();
            sub_100028FE8(v12);

            sub_100029148();
            if (qword_100046258 != -1)
            {
              swift_once();
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
            v7 = swift_allocObject();
            *(v7 + 16) = xmmword_10002AD50;
            *(v7 + 56) = &type metadata for String;
            *(v7 + 64) = sub_1000022C4();
            *(v7 + 32) = 0xD000000000000019;
            *(v7 + 40) = 0x800000010002C580;
            sub_100028DE8();

            return;
          }
        }

        v8 = v9;
      }

      else
      {
        v8 = v10;
      }
    }
  }
}

uint64_t sub_10000487C(uint64_t *a1)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *a1;
    sub_100029388(28);
    v6._object = 0x800000010002C4C0;
    v6._countAndFlagsBits = 0xD00000000000001ALL;
    sub_100028FE8(v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
    sub_1000293C8();
    sub_100029148();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10002AD50;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_1000022C4();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    sub_100028DE8();

    exit(1);
  }

  sub_100029148();
  if (qword_100046258 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10002AD50;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_1000022C4();
  *(v1 + 32) = 0xD00000000000001FLL;
  *(v1 + 40) = 0x800000010002C4E0;
  sub_100028DE8();
}

uint64_t sub_100004AE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100028EA8();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100028EC8();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + 48);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_100006D98;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005AF0;
  aBlock[3] = &block_descriptor_12;
  v16 = _Block_copy(aBlock);
  v17 = v14;

  sub_100028EB8();
  v22 = &_swiftEmptyArrayStorage;
  sub_100006DA4(&qword_100046308, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046310, &qword_10002AD70);
  sub_100006DEC(&qword_100046318, &qword_100046310, &qword_10002AD70);
  sub_1000292E8();
  sub_100029198();
  _Block_release(v16);

  (*(v21 + 8))(v9, v6);
  (*(v10 + 8))(v13, v20);
}

char *sub_100004DBC(void *a1)
{
  result = xpc_dictionary_get_string(a1, _xpc_event_key_name);
  if (result)
  {
    result = xpc_dictionary_get_dictionary(a1, "UserInfo");
    if (result)
    {
      v3 = result;
      v4 = xpc_dictionary_get_array(result, "bundleIDs");
      if (v4)
      {
        v5 = v4;
        v6 = xpc_dictionary_get_BOOL(v3, "isPlaceholder");
        v20 = &_swiftEmptySetSingleton;
        v7 = swift_allocObject();
        *(v7 + 16) = &v20;
        v8 = swift_allocObject();
        *(v8 + 16) = sub_100006F20;
        *(v8 + 24) = v7;
        v18 = sub_100006F28;
        v19 = v8;
        aBlock = _NSConcreteStackBlock;
        v15 = 1107296256;
        v16 = sub_1000051C8;
        v17 = &block_descriptor_47;
        v9 = _Block_copy(&aBlock);

        xpc_array_apply(v5, v9);
        _Block_release(v9);
        LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

        if (v9)
        {
          __break(1u);
        }

        else
        {
          v13 = 0;
          v10 = swift_allocObject();
          *(v10 + 16) = &v13;
          v11 = swift_allocObject();
          *(v11 + 16) = sub_100006F54;
          *(v11 + 24) = v10;
          v18 = sub_100007040;
          v19 = v11;
          aBlock = _NSConcreteStackBlock;
          v15 = 1107296256;
          v16 = sub_1000051C8;
          v17 = &block_descriptor_57;
          v12 = _Block_copy(&aBlock);

          xpc_array_apply(v5, v12);
          _Block_release(v12);
          LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

          if ((v12 & 1) == 0)
          {
            if (v6 || (v13 & 1) == 0)
            {
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

LABEL_14:
            aBlock = 0;
            v15 = 0xE000000000000000;
            sub_100029388(39);

            aBlock = 0xD000000000000025;
            v15 = 0x800000010002C550;
            v22._countAndFlagsBits = sub_100028FF8();
            sub_100028FE8(v22);

            _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(aBlock, v15);

            exit(0);
          }
        }

        __break(1u);
        goto LABEL_14;
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10000516C(int a1, xpc_object_t xstring)
{
  if (xpc_string_get_string_ptr(xstring))
  {
    v2 = sub_100028FF8();
    sub_100027D44(&v5, v2, v3);
  }

  return 1;
}

uint64_t sub_1000051C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t sub_100005220(int a1, xpc_object_t xstring, _BYTE *a3)
{
  if (xpc_string_get_string_ptr(xstring))
  {
    if (sub_100028FF8() == 0x6C7070612E6D6F63 && v4 == 0xEE007370614D2E65)
    {

LABEL_6:
      result = 0;
      *a3 = 1;
      return result;
    }

    v5 = sub_100029428();

    if (v5)
    {
      goto LABEL_6;
    }
  }

  return 1;
}

uint64_t sub_1000052CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t variable initialization expression of MapsSyncDaemon.dispatchQueue()
{
  v10 = sub_100029178();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100029158();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_100028EC8();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_100003E20(0, &qword_100046278, OS_dispatch_queue_ptr);
  sub_100028EB8();
  v11 = &_swiftEmptyArrayStorage;
  sub_100006DA4(&qword_100046280, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046288, &unk_10002AD60);
  sub_100006DEC(&qword_100046290, &qword_100046288, &unk_10002AD60);
  sub_1000292E8();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  return sub_1000291A8();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100005640(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100028EF8();
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  __chkstk_darwin(v6);
  v31 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_100029388(29);

  v37 = 0x626179727465525BLL;
  v38 = 0xEB000000003A656CLL;
  v36 = type metadata accessor for MapsSyncDaemon();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046320, &qword_10002AD78);
  v39._countAndFlagsBits = sub_100028F98();
  sub_100028FE8(v39);

  v40._object = 0x800000010002C440;
  v40._countAndFlagsBits = 0xD000000000000010;
  sub_100028FE8(v40);
  v10 = v37;
  v9 = v38;
  v11 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v11 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    sub_100029138();
    if (qword_100046258 != -1)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v28 = a2;
  v29 = a3;
  v30 = a1;
  v12 = 0;
  v13 = 7;
  if (((v38 >> 60) & ((v37 & 0x800000000000000) == 0)) != 0)
  {
    v13 = 11;
  }

  a2 = v13 | (v11 << 16);
  v35 = 4 * v11;
  v34 = xmmword_10002AD50;
  do
  {
    v14 = sub_100028FD8();
    if (v15)
    {
      a1 = a2;
    }

    else
    {
      a1 = v14;
    }

    if (a1 >> 14 < v12)
    {
      __break(1u);
      goto LABEL_20;
    }

    sub_100029008();
    v16 = sub_100028FB8();
    a3 = v17;

    sub_100029138();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v18 = swift_allocObject();
    *(v18 + 16) = v34;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_1000022C4();
    *(v18 + 32) = v16;
    *(v18 + 40) = a3;
    sub_100028DE8();

    v12 = a1 >> 14;
  }

  while (a1 >> 14 != v35);
  a3 = v29;
  a1 = v30;
  a2 = v28;
  while (1)
  {

    v20 = *(a1 + 24);
    v21 = *(a1 + 48);
    v23 = v31;
    v22 = v32;
    *v31 = v21;
    v9 = v33;
    (*(v22 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v33);
    v24 = v21;
    LOBYTE(v21) = sub_100028F18();
    (*(v22 + 8))(v23, v9);
    if (v21)
    {
      break;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10002AD50;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_1000022C4();
    *(v19 + 32) = v10;
    *(v19 + 40) = v9;
    sub_100028DE8();
  }

  v25 = swift_allocObject();
  v25[2] = a1;
  v25[3] = 1;
  v25[4] = a2;
  v25[5] = a3;
  v25[6] = v20;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_100006E40;
  *(v26 + 24) = v25;

  sub_100007214(sub_100006E44, v26);
}

uint64_t sub_100005AF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100005B34(unint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, double a7)
{
  v70 = a6;
  v72 = sub_100028EE8();
  v69 = *(v72 - 8);
  v13 = *(v69 + 64);
  v14 = __chkstk_darwin(v72);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v68 = &v61 - v17;
  v18 = sub_100028EA8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100028EC8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    v44 = *(a3 + 48);
    v80 = 0;
    *&v71 = v26;
    v67 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = swift_allocObject();
    *(v45 + 16) = a4;
    *(v45 + 24) = a5;
    *(v45 + 32) = v70;
    *(v45 + 40) = a1;
    *(v45 + 48) = v80;
    v78 = sub_100006E54;
    v79 = v45;
    aBlock = _NSConcreteStackBlock;
    v75 = 1107296256;
    v76 = sub_100005AF0;
    v77 = &block_descriptor_24;
    v46 = _Block_copy(&aBlock);
    v47 = v44;

    sub_100028EB8();
    v73 = &_swiftEmptyArrayStorage;
    sub_100006DA4(&qword_100046308, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046310, &qword_10002AD70);
    sub_100006DEC(&qword_100046318, &qword_100046310, &qword_10002AD70);
    sub_1000292E8();
    v48 = v67;
    sub_100029198();
    _Block_release(v46);

    (*(v19 + 8))(v22, v18);
    (*(v24 + 8))(v48, v71);
  }

  v64 = v18;
  v65 = v22;
  v29 = v70;
  v63 = a1;
  v66 = a5;
  v30 = *(a3 + 16);
  if (v30 < 1 || v30 > a4)
  {
    v49 = *(a3 + 48);
    *&v71 = v26;
    v63 = v24;
    v50 = v28;
    v62 = v49;
    sub_100028ED8();
    v51 = v68;
    sub_100028F08();
    v69 = *(v69 + 8);
    (v69)(v16, v72);
    v52 = swift_allocObject();
    *(v52 + 16) = a3;
    *(v52 + 24) = a7;
    v53 = v66;
    *(v52 + 32) = a4;
    *(v52 + 40) = v53;
    *(v52 + 48) = v29;
    v78 = sub_100006E64;
    v79 = v52;
    aBlock = _NSConcreteStackBlock;
    v75 = 1107296256;
    v76 = sub_100005AF0;
    v77 = &block_descriptor_30;
    v54 = _Block_copy(&aBlock);

    sub_100028EB8();
    v73 = &_swiftEmptyArrayStorage;
    sub_100006DA4(&qword_100046308, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046310, &qword_10002AD70);
    sub_100006DEC(&qword_100046318, &qword_100046310, &qword_10002AD70);
    v55 = v64;
    v56 = v65;
    sub_1000292E8();
    v57 = v62;
    sub_100029168();
    _Block_release(v54);

    (*(v19 + 8))(v56, v55);
    (*(v63 + 8))(v50, v71);
    (v69)(v51, v72);
  }

  aBlock = 0;
  v75 = 0xE000000000000000;
  sub_100029388(46);

  aBlock = 0x626179727465525BLL;
  v75 = 0xEB000000003A656CLL;
  v73 = type metadata accessor for MapsSyncDaemon();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046320, &qword_10002AD78);
  v81._countAndFlagsBits = sub_100028F98();
  sub_100028FE8(v81);

  v82._object = 0x800000010002C460;
  v82._countAndFlagsBits = 0xD00000000000001DLL;
  sub_100028FE8(v82);
  v73 = *(a3 + 16);
  v83._countAndFlagsBits = sub_100029408();
  sub_100028FE8(v83);

  v84._countAndFlagsBits = 11817;
  v84._object = 0xE200000000000000;
  sub_100028FE8(v84);
  v31 = aBlock;
  v32 = v75;
  v33 = HIBYTE(v75) & 0xF;
  if ((v75 & 0x2000000000000000) == 0)
  {
    v33 = aBlock & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
    v34 = 0;
    v35 = 7;
    if (((v75 >> 60) & ((aBlock & 0x800000000000000) == 0)) != 0)
    {
      v35 = 11;
    }

    v36 = v35 | (v33 << 16);
    v72 = 4 * v33;
    v71 = xmmword_10002AD50;
    while (1)
    {
      v37 = sub_100028FD8();
      v39 = (v38 & 1) != 0 ? v36 : v37;
      if (v39 >> 14 < v34)
      {
        break;
      }

      sub_100029008();
      v40 = sub_100028FB8();
      v42 = v41;

      sub_100029138();
      if (qword_100046258 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
      v43 = swift_allocObject();
      *(v43 + 16) = v71;
      *(v43 + 56) = &type metadata for String;
      *(v43 + 64) = sub_1000022C4();
      *(v43 + 32) = v40;
      *(v43 + 40) = v42;
      sub_100028DE8();

      v34 = v39 >> 14;
      if (v39 >> 14 == v72)
      {
        v59 = v66;
        v34 = v63;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    sub_100029138();
    v34 = v63;
    if (qword_100046258 == -1)
    {
      goto LABEL_22;
    }
  }

  swift_once();
LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_10002AD50;
  *(v60 + 56) = &type metadata for String;
  *(v60 + 64) = sub_1000022C4();
  *(v60 + 32) = v31;
  *(v60 + 40) = v32;
  sub_100028DE8();
  v59 = v66;
LABEL_23:

  aBlock = v34;
  LOBYTE(v75) = 1;
  sub_100006E78(v34, 1);
  v59(&aBlock);
  return sub_100006E48(v34, 1);
}

uint64_t sub_100006470(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, double a5)
{
  v10 = sub_100028EF8();
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  __chkstk_darwin(v10);
  v37 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 40) * a5 >= *(a1 + 32))
  {
    v13 = *(a1 + 32);
  }

  else
  {
    v13 = *(a1 + 40) * a5;
  }

  v43 = 0;
  v44 = 0xE000000000000000;
  sub_100029388(62);
  v45._countAndFlagsBits = 0x626179727465525BLL;
  v45._object = 0xEB000000003A656CLL;
  sub_100028FE8(v45);
  v42 = type metadata accessor for MapsSyncDaemon();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046320, &qword_10002AD78);
  v46._countAndFlagsBits = sub_100028F98();
  sub_100028FE8(v46);

  v47._object = 0x800000010002C480;
  v47._countAndFlagsBits = 0xD000000000000015;
  sub_100028FE8(v47);
  v39 = a2;
  v42 = a2;
  v48._countAndFlagsBits = sub_100029408();
  sub_100028FE8(v48);

  v49._countAndFlagsBits = 0x7972746552202E29;
  v49._object = 0xEF206E6920676E69;
  sub_100028FE8(v49);
  sub_1000290F8();
  v50._countAndFlagsBits = 0x73646E6F63657320;
  v50._object = 0xE90000000000002ELL;
  sub_100028FE8(v50);
  v15 = v43;
  v14 = v44;
  v16 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v16 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    sub_100029138();
    if (qword_100046258 != -1)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  v33 = v10;
  v34 = a3;
  v35 = a4;
  v36 = a1;
  v17 = 0;
  v18 = 7;
  if (((v44 >> 60) & ((v43 & 0x800000000000000) == 0)) != 0)
  {
    v18 = 11;
  }

  v10 = v18 | (v16 << 16);
  v41 = 4 * v16;
  v40 = xmmword_10002AD50;
  do
  {
    v19 = sub_100028FD8();
    if (v20)
    {
      a1 = v10;
    }

    else
    {
      a1 = v19;
    }

    a3 = a1 >> 14;
    if (a1 >> 14 < v17)
    {
      __break(1u);
      goto LABEL_24;
    }

    sub_100029008();
    v21 = sub_100028FB8();
    a4 = v22;

    sub_100029138();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v23 = swift_allocObject();
    *(v23 + 16) = v40;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_1000022C4();
    *(v23 + 32) = v21;
    *(v23 + 40) = a4;
    sub_100028DE8();

    v17 = a1 >> 14;
  }

  while (a3 != v41);
  a4 = v35;
  a1 = v36;
  v10 = v33;
  a3 = v34;
  while (1)
  {

    v14 = v39 + 1;
    if (!__OFADD__(v39, 1))
    {
      break;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
LABEL_19:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_10002AD50;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = sub_1000022C4();
    *(v24 + 32) = v15;
    *(v24 + 40) = v14;
    sub_100028DE8();
  }

  v25 = *(a1 + 48);
  v27 = v37;
  v26 = v38;
  *v37 = v25;
  (*(v26 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v10);
  v28 = v25;
  LOBYTE(v25) = sub_100028F18();
  (*(v26 + 8))(v27, v10);
  if ((v25 & 1) == 0)
  {
    goto LABEL_25;
  }

  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = v14;
  *(v29 + 32) = a3;
  *(v29 + 40) = a4;
  *(v29 + 48) = v13;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_10000705C;
  *(v30 + 24) = v29;

  sub_100007214(sub_100007060, v30);
}

uint64_t sub_1000069D0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, char a5)
{
  v18 = a5 & 1;
  v17 = a4;
  sub_100029388(45);

  type metadata accessor for MapsSyncDaemon();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046320, &qword_10002AD78);
  v19._countAndFlagsBits = sub_100028F98();
  sub_100028FE8(v19);

  v20._object = 0x800000010002C4A0;
  v20._countAndFlagsBits = 0xD000000000000013;
  sub_100028FE8(v20);
  v21._countAndFlagsBits = sub_100029408();
  sub_100028FE8(v21);

  v22._countAndFlagsBits = 0x74706D6574746120;
  v22._object = 0xEB000000002E2973;
  sub_100028FE8(v22);
  v16 = a2;
  v6 = 0;
  while (1)
  {
    v7 = sub_100028FD8();
    v9 = (v8 & 1) != 0 ? 720903 : v7;
    if (v9 >> 14 < v6)
    {
      break;
    }

    sub_100029008();
    v10 = sub_100028FB8();
    v12 = v11;

    a2 = sub_100029138();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10002AD50;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_1000022C4();
    *(v13 + 32) = v10;
    *(v13 + 40) = v12;
    sub_100028DE8();

    v6 = v9 >> 14;
    if (v9 >> 14 == 44)
    {
      a2 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  swift_once();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10002AD50;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_1000022C4();
  *(v14 + 32) = 0x626179727465525BLL;
  *(v14 + 40) = 0xEB000000003A656CLL;
  sub_100028DE8();
LABEL_10:

  return a2(&v17);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100006DEC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006E48(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100006E78(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100006EE0(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_100006F28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_100006F6C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100006F8C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_100006FDC(uint64_t a1, unint64_t *a2)
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

id sub_1000070BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedHistoryTransitItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100007120@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedCollection();
  result = sub_100029398();
  *a1 = result;
  return result;
}

id sub_1000071BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedHistorySearchItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100007214(void (*a1)(void), uint64_t a2)
{
  v123 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046750, qword_10002B660);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v107 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v107 - v13;
  __chkstk_darwin(v12);
  v16 = &v107 - v15;
  v17 = sub_100028D08();
  v121 = *(v17 - 8);
  v18 = *(v121 + 64);
  v19 = __chkstk_darwin(v17);
  v117 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v118 = &v107 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v107 - v24;
  __chkstk_darwin(v23);
  v122 = &v107 - v26;
  v27 = [objc_opt_self() sharedObject];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 canAccessFilesWithProtection:3];

    if ((v29 & 1) == 0)
    {
      _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD00000000000002CLL, 0x800000010002CAA0);
      sub_10000A05C();
      v47 = swift_allocError();
      *v48 = 6;
LABEL_13:
      (v123)(v47, 1);

      return;
    }
  }

  v119 = a2;
  v120 = v17;
  v30 = [objc_opt_self() mainBundle];
  v31 = sub_100028F78();
  v32 = sub_100028F78();
  v33 = [v30 URLForResource:v31 withExtension:v32];

  if (!v33)
  {
    sub_100029148();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_10002AD50;
    *(v49 + 56) = &type metadata for String;
    *(v49 + 64) = sub_1000022C4();
    *(v49 + 32) = 0xD00000000000001BLL;
    *(v49 + 40) = 0x800000010002C920;
    sub_100028DE8();

    sub_10000A05C();
    v47 = swift_allocError();
    *v50 = 4;
    goto LABEL_13;
  }

  v116 = v2;
  sub_100028CE8();

  v34 = v121;
  v35 = *(v121 + 32);
  v36 = v25;
  v37 = v120;
  v35(v122, v36, v120);
  v38 = objc_allocWithZone(NSManagedObjectModel);
  sub_100028CB8(v39);
  v41 = v40;
  v42 = [v38 initWithContentsOfURL:v40];

  if (v42)
  {
    v115 = v8;
    type metadata accessor for MapsSyncUtil();
    sub_100011FCC(0, v16);
    v43 = *(v34 + 48);
    if (v43(v16, 1, v37) == 1)
    {
      v44 = v42;
      sub_10000A118(v16);
      sub_100029148();
      if (qword_100046258 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_10002AD50;
      *(v45 + 56) = &type metadata for String;
      *(v45 + 64) = sub_1000022C4();
      *(v45 + 32) = 0xD00000000000001FLL;
      *(v45 + 40) = 0x800000010002C960;
      sub_100028DE8();

      sub_10000A05C();
      swift_allocError();
      *v46 = 4;
      v123();

      (*(v121 + 8))(v122, v120);
    }

    else
    {
      v114 = v42;
      v53 = v118;
      v35(v118, v16, v37);
      sub_100011FCC(1, v14);
      if (v43(v14, 1, v37) == 1)
      {
        sub_10000A118(v14);
        sub_100029148();
        if (qword_100046258 != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_10002AD50;
        *(v54 + 56) = &type metadata for String;
        *(v54 + 64) = sub_1000022C4();
        *(v54 + 32) = 0xD000000000000025;
        *(v54 + 40) = 0x800000010002C980;
        sub_100028DE8();

        sub_10000A05C();
        swift_allocError();
        *v55 = 4;
        v123();

        v56 = v120;
        v57 = *(v121 + 8);
        v57(v118, v120);
      }

      else
      {
        v35(v117, v14, v37);
        v58 = sub_100008A4C();
        v59 = objc_allocWithZone(NSPersistentCloudKitContainer);
        v113 = v43;
        v60 = v59;
        v61 = v53;
        v62 = sub_100028F78();
        v63 = [v60 initWithName:v62];

        sub_1000090F4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046758, &qword_10002BEB0);
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_10002AEB0;
        *(v64 + 32) = v58;
        sub_100003E20(0, &qword_100046760, NSPersistentStoreDescription_ptr);
        v65 = v63;
        v112 = v58;
        isa = sub_100029038().super.isa;

        v111 = v65;
        [v65 setPersistentStoreDescriptions:isa];

        v67 = v121;
        v110 = *(v121 + 16);
        v110(v11, v61, v37);
        v109 = *(v67 + 56);
        v109(v11, 0, 1, v37);
        v68 = v114;
        sub_100008CD0(0xD00000000000001DLL, 0x800000010002C9B0);
        v108 = type metadata accessor for MapsSyncStoreServerRequestHandlingPolicy();
        v69 = [objc_allocWithZone(v108) init];
        LODWORD(v62) = v113(v11, 1, v37);
        v71 = v68;
        v72 = 0;
        if (v62 != 1)
        {
          sub_100028CB8(v70);
          v72 = v73;
          (*(v121 + 8))(v11, v120);
        }

        v74 = objc_allocWithZone(NSXPCStoreServer);
        v75 = sub_100028F28().super.isa;

        v76 = [v74 initForStoreWithURL:v72 usingModel:v71 options:v75 policy:v69];

        v114 = v76;
        v77 = v115;
        if (v76)
        {
          v78 = v120;
          v110(v115, v117, v120);
          v109(v77, 0, 1, v78);
          sub_100008CD0(0xD00000000000001DLL, 0x800000010002CA00);
          v79 = [objc_allocWithZone(v108) init];
          v80 = v113(v77, 1, v78);
          v82 = v111;
          if (v80 == 1)
          {
            v83 = 0;
          }

          else
          {
            sub_100028CB8(v81);
            v83 = v87;
            (*(v121 + 8))(v77, v78);
          }

          v88 = v116;
          v89 = objc_allocWithZone(NSXPCStoreServer);
          v90 = sub_100028F28().super.isa;

          v91 = [v89 initForStoreWithURL:v83 usingModel:v71 options:v90 policy:v79];

          if (v91)
          {
            v92 = v114;
            [v114 setDelegate:v88];
            [v91 setDelegate:v88];
            v93 = sub_100028040("LoadStore", 9, 2u, 1);
            v94 = swift_allocObject();
            v94[2] = v93;
            v94[3] = v88;
            v95 = v123;
            v94[4] = v82;
            v94[5] = v95;
            v94[6] = v119;
            v94[7] = v92;
            v94[8] = v91;
            aBlock[4] = sub_10000A180;
            aBlock[5] = v94;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_10000854C;
            aBlock[3] = &block_descriptor_0;
            v96 = _Block_copy(aBlock);
            v97 = v82;
            v98 = v92;
            v99 = v91;

            [v97 loadPersistentStoresWithCompletionHandler:v96];

            _Block_release(v96);

            v100 = v120;
            v101 = *(v121 + 8);
            v101(v117, v120);
            v101(v118, v100);
            v101(v122, v100);
            v102 = v88[9];
            v88[9] = v97;

            v103 = v88[7];
            v88[7] = v92;

            v104 = v88[8];
            v88[8] = v91;

            return;
          }

          sub_100029148();
          if (qword_100046258 != -1)
          {
            swift_once();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
          v105 = swift_allocObject();
          *(v105 + 16) = xmmword_10002AD50;
          *(v105 + 56) = &type metadata for String;
          *(v105 + 64) = sub_1000022C4();
          *(v105 + 32) = 0xD000000000000029;
          *(v105 + 40) = 0x800000010002CA20;
          sub_100028DE8();

          sub_10000A05C();
          swift_allocError();
          *v106 = 4;
          v123();
        }

        else
        {

          v84 = v111;
          sub_100029148();
          if (qword_100046258 != -1)
          {
            swift_once();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
          v85 = swift_allocObject();
          *(v85 + 16) = xmmword_10002AD50;
          *(v85 + 56) = &type metadata for String;
          *(v85 + 64) = sub_1000022C4();
          *(v85 + 32) = 0xD000000000000023;
          *(v85 + 40) = 0x800000010002C9D0;
          sub_100028DE8();

          sub_10000A05C();
          swift_allocError();
          *v86 = 4;
          v123();
        }

        v56 = v120;
        v57 = *(v121 + 8);
        v57(v117, v120);
        v57(v118, v56);
      }

      v57(v122, v56);
    }
  }

  else
  {
    sub_100029148();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_10002AD50;
    *(v51 + 56) = &type metadata for String;
    *(v51 + 64) = sub_1000022C4();
    *(v51 + 32) = 0xD000000000000014;
    *(v51 + 40) = 0x800000010002C940;
    sub_100028DE8();

    sub_10000A05C();
    swift_allocError();
    *v52 = 4;
    v123();

    (*(v34 + 8))(v122, v37);
  }
}

void sub_10000836C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t, uint64_t), uint64_t a7, void *a8, void *a9)
{
  sub_1000285E4("LoadStore", 9, 2u, a3, 1);
  if (a2)
  {
    swift_errorRetain();
    v15 = sub_100028C68();
    sub_10000994C(v15, a1, a5);

    swift_errorRetain();
    a6(a2, 1);
  }

  else
  {
    [a8 startListening];
    [a9 startListening];
    type metadata accessor for MapsSyncDaemonPeriodicActivityHandler();
    swift_allocObject();
    v16 = a5;
    v17 = sub_100026E80(v16);
    v18 = *(a4 + 88);
    *(a4 + 88) = v17;

    v19 = objc_allocWithZone(type metadata accessor for MapsSyncDaemonService());
    v20 = sub_10000B1CC(v16);
    v21 = *(a4 + 80);
    *(a4 + 80) = v20;

    v22 = *(a4 + 88);
    if (v22)
    {
      v23 = *(a4 + 80);
      v24 = *(v22 + 32);
      *(v22 + 32) = v23;
    }

    v25 = *(a4 + 80);
    if (v25)
    {
      v26 = *&v25[OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_activityHandler];
      *&v25[OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_activityHandler] = *(a4 + 88);
      v27 = v25;
    }
  }
}

void sub_10000854C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

Swift::String __swiftcall MapsSyncDaemon.identifier(for:)(NSXPCConnection a1)
{
  v1 = 0x636E79537370614DLL;
  v2 = 0xEC0000004350582DLL;
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t MapsSyncDaemon.deinit()
{
  v1 = *(v0 + 88);

  return v0;
}

uint64_t MapsSyncDaemon.__deallocating_deinit()
{
  v1 = *(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t sub_10000874C()
{
  v10[0] = sub_100029178();
  v1 = *(v10[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v10[0]);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100029158();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = sub_100028EC8();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  *(v0 + 16) = 5;
  *(v0 + 24) = xmmword_10002AEC0;
  *(v0 + 40) = 0x3FF8000000000000;
  sub_100003E20(0, &qword_100046278, OS_dispatch_queue_ptr);
  sub_100028EB8();
  v10[1] = &_swiftEmptyArrayStorage;
  sub_10000A23C(&qword_100046280, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046288, &unk_10002AD60);
  sub_10000A284();
  sub_1000292E8();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10[0]);
  *(v0 + 48) = sub_1000291A8();
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  return v0;
}

id sub_100008A18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncStoreServerRequestHandlingPolicy();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100008A4C()
{
  v0 = objc_allocWithZone(NSPersistentStoreDescription);
  sub_100028CB8(v1);
  v3 = v2;
  v4 = [v0 initWithURL:v2];

  [v4 setType:NSSQLiteStoreType];
  [v4 setOption:NSFileProtectionNone forKey:NSPersistentStoreFileProtectionKey];
  sub_100003E20(0, &qword_100046788, NSNumber_ptr);
  isa = sub_100029268(1).super.super.isa;
  [v4 setOption:isa forKey:NSPersistentStoreRemoteChangeNotificationPostOptionKey];

  v6 = sub_100029268(1).super.super.isa;
  [v4 setOption:v6 forKey:NSPersistentHistoryTrackingKey];

  v7 = sub_100029268(1).super.super.isa;
  [v4 setOption:v7 forKey:NSPersistentStoreServiceConfigurationOptionKey];

  v8 = sub_100028F78();
  [v4 setConfiguration:v8];

  v9 = objc_allocWithZone(NSCloudKitMirroringDelegateOptions);
  v10 = sub_100028F78();
  v11 = [v9 initWithContainerIdentifier:v10];

  v12 = sub_100028F78();
  [v11 setApsConnectionMachServiceName:v12];

  [v11 setUseDeviceToDeviceEncryption:1];
  [v11 setAutomaticallyScheduleImportAndExportOperations:1];
  v13 = sub_100029278(0x200000).super.super.isa;
  [v11 setOperationMemoryThresholdBytes:v13];

  v14 = [objc_allocWithZone(NSCloudKitMirroringDelegate) initWithOptions:v11];
  [v4 setMirroringDelegate:v14];

  return v4;
}

unint64_t sub_100008CD0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1000472B0, &unk_10002BE70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10002AED0;
  sub_100028F88();
  sub_100029348();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  sub_100028F88();
  sub_100029348();
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  sub_100028F88();
  sub_100029348();
  *(inited + 240) = &type metadata for Bool;
  *(inited + 216) = 1;
  sub_100028F88();
  sub_100029348();
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = 1;
  sub_100028F88();
  sub_100029348();
  *(inited + 384) = &type metadata for String;
  *(inited + 360) = a1;
  *(inited + 368) = a2;

  v5 = sub_100026B8C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046778, &unk_10002AFE0);
  swift_arrayDestroy();
  return v5;
}

id sub_100008E90(void *a1)
{
  sub_100029388(25);

  v17[0] = 0xD000000000000017;
  v17[1] = 0x800000010002CBA0;
  v2 = [a1 description];
  v3 = sub_100028F88();
  v5 = v4;

  v19._countAndFlagsBits = v3;
  v19._object = v5;
  sub_100028FE8(v19);

  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD000000000000017, 0x800000010002CBA0);

  v6.super.super.isa = sub_100029078().super.super.isa;
  if (!_kCFURLIsExcludedFromCloudBackupKey)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_100028F88();
  v7 = sub_100028F78();

  v17[0] = 0;
  v8 = [a1 setResourceValue:v6.super.super.isa forKey:v7 error:v17];

  if (v8)
  {
    v9 = v17[0];
  }

  else
  {
    v10 = v17[0];
    sub_100028C78();

    swift_willThrow();
  }

  v11.super.super.isa = sub_100029078().super.super.isa;
  if (!_kCFURLIsExcludedFromUnencryptedBackupKey)
  {
LABEL_12:
    __break(1u);
  }

  sub_100028F88();
  v12 = sub_100028F78();

  v17[0] = 0;
  v13 = [a1 setResourceValue:v11.super.super.isa forKey:v12 error:v17];

  v14 = v17[0];
  if (v13)
  {

    return v14;
  }

  else
  {
    v16 = v17[0];
    sub_100028C78();

    swift_willThrow();
  }
}

uint64_t sub_1000090F4()
{
  v0 = sub_100028D08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_100029388(47);

  v9 = 0xD00000000000002DLL;
  v10 = 0x800000010002CB70;
  sub_10000A23C(&qword_100046780, &type metadata accessor for URL);
  v11._countAndFlagsBits = sub_100029408();
  sub_100028FE8(v11);

  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v9, v10);

  sub_100028CD8();
  sub_100028CB8(v5);
  v7 = v6;
  sub_100008E90(v6);

  return (*(v1 + 8))(v4, v0);
}

void sub_100009280(uint64_t a1, void *a2)
{
  v4 = sub_100028D08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v53 - v10;
  v12 = [a2 persistentStoreCoordinator];
  sub_100028CB8(v13);
  v15 = v14;
  v68 = 0;
  v16 = [v12 destroyPersistentStoreAtURL:v14 withType:NSSQLiteStoreType options:0 error:&v68];

  v17 = v68;
  if (v16)
  {

    v18 = v17;
  }

  else
  {
    v65 = v11;
    v66 = v68;
    v19 = v68;
    v20 = sub_100028C78();

    swift_willThrow();
    v68 = 0;
    v69 = 0xE000000000000000;
    sub_100029388(36);

    v68 = 0xD000000000000022;
    v69 = 0x800000010002CB00;
    v67 = v20;
    v53[1] = v20;
    swift_errorRetain();
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
    v71._countAndFlagsBits = sub_100028F98();
    sub_100028FE8(v71);

    v21 = v68;
    v22 = v69;
    sub_100029148();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    v23 = static OS_os_log.MapsSync;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v24 = swift_allocObject();
    v58 = xmmword_10002AD50;
    *(v24 + 16) = xmmword_10002AD50;
    *(v24 + 56) = &type metadata for String;
    v57 = sub_1000022C4();
    *(v24 + 64) = v57;
    *(v24 + 32) = v21;
    *(v24 + 40) = v22;
    v60 = v23;
    sub_100028DE8();

    v25 = sub_100028CA8();
    v64 = v25;
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046770, &unk_10002AFD0);
    v28 = a1;
    v29 = *(v5 + 72);
    v30 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v66 = (2 * v29);
    v53[0] = swift_allocObject();
    v31 = v53[0] + v30;
    v62 = *(v5 + 16);
    v63 = v28;
    v62(v53[0] + v30, v28, v4);
    v32 = v65;
    sub_100028CD8();
    v68 = v25;
    v69 = v27;

    v72._countAndFlagsBits = 1818326829;
    v72._object = 0xE400000000000000;
    sub_100028FE8(v72);
    v54 = v31;
    sub_100028CC8();

    v33 = *(v5 + 8);
    v33(v32, v4);
    sub_100028CD8();
    v68 = v64;
    v69 = v27;

    v73._countAndFlagsBits = 1835561773;
    v73._object = 0xE400000000000000;
    sub_100028FE8(v73);

    sub_100028CC8();

    v34 = v32;
    v35 = v62;
    v64 = (v5 + 8);
    v65 = v33;
    v33(v34, v4);
    v66 = [objc_opt_self() defaultManager];
    v55 = "yPersistentStore: ";
    v56 = v5 + 16;
    v36 = 3;
    v37 = v54;
    do
    {
      v35(v9, v37, v4);
      sub_100028CF8();
      v39 = sub_100028F78();

      v40 = [v66 fileExistsAtPath:v39];

      if (v40)
      {
        sub_100028CB8(v41);
        v43 = v42;
        v68 = 0;
        v44 = [v66 removeItemAtURL:v42 error:&v68];

        if (v44)
        {
          v38 = v68;
        }

        else
        {
          v45 = v68;
          v46 = sub_100028C78();

          swift_willThrow();
          v68 = 0;
          v69 = 0xE000000000000000;
          sub_100029388(52);
          v74._countAndFlagsBits = 0xD000000000000032;
          v74._object = (v55 | 0x8000000000000000);
          sub_100028FE8(v74);
          v63 = v46;
          v67 = v46;
          swift_errorRetain();
          v75._countAndFlagsBits = sub_100028F98();
          sub_100028FE8(v75);

          v47 = v29;
          v48 = v4;
          v50 = v68;
          v49 = v69;
          sub_100029148();
          v51 = swift_allocObject();
          *(v51 + 16) = v58;
          v52 = v57;
          *(v51 + 56) = &type metadata for String;
          *(v51 + 64) = v52;
          *(v51 + 32) = v50;
          *(v51 + 40) = v49;
          v4 = v48;
          v29 = v47;
          v35 = v62;
          sub_100028DE8();
        }
      }

      v65(v9, v4);
      v37 += v29;
      --v36;
    }

    while (v36);

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }
}

uint64_t sub_10000994C(void *a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046750, qword_10002B660);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v40 - v11;
  v13 = sub_100028D08();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    return sub_10000A118(v12);
  }

  v18 = [a2 URL];
  if (v18)
  {
    v19 = v18;
    sub_100028CE8();

    (*(v14 + 56))(v10, 0, 1, v13);
  }

  else
  {
    (*(v14 + 56))(v10, 1, 1, v13);
  }

  sub_10000A1CC(v10, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_10000A118(v12);
  }

  (*(v14 + 32))(v17, v12, v13);
  if (a1)
  {
    v21 = [a1 domain];
    v22 = sub_100028F88();
    v24 = v23;

    v40[0] = a1;
    v25 = [a1 code];
    if (sub_100028F88() == v22 && v26 == v24)
    {
    }

    else
    {
      v27 = sub_100029428();

      if ((v27 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    if (v25 == 256)
    {
      goto LABEL_34;
    }

LABEL_14:
    if (sub_100028F88() == v22 && v28 == v24)
    {
    }

    else
    {
      v29 = sub_100029428();

      if ((v29 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if (v25 == 259)
    {
      goto LABEL_34;
    }

LABEL_19:
    if (sub_100028F88() == v22 && v30 == v24)
    {
    }

    else
    {
      v31 = sub_100029428();

      if ((v31 & 1) == 0)
      {
LABEL_24:
        if (sub_100028F88() == v22 && v32 == v24)
        {
        }

        else
        {
          v33 = sub_100029428();

          if ((v33 & 1) == 0)
          {
LABEL_29:
            if (sub_100028F88() == v22 && v34 == v24)
            {
            }

            else
            {
              v35 = sub_100029428();

              if ((v35 & 1) == 0)
              {
                goto LABEL_37;
              }
            }

            if (v25 == 14)
            {
              goto LABEL_34;
            }

LABEL_37:

            v41 = 0;
            v42 = 0xE000000000000000;
            sub_100029388(42);

            v41 = 0xD000000000000028;
            v42 = 0x800000010002CAD0;
            v40[1] = v40[0];
            v36 = v40[0];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046768, &unk_10002AFC0);
            v43._countAndFlagsBits = sub_100028F98();
            sub_100028FE8(v43);

            v37 = v41;
            v38 = v42;
            sub_100029148();
            if (qword_100046258 != -1)
            {
              swift_once();
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
            v39 = swift_allocObject();
            *(v39 + 16) = xmmword_10002AD50;
            *(v39 + 56) = &type metadata for String;
            *(v39 + 64) = sub_1000022C4();
            *(v39 + 32) = v37;
            *(v39 + 40) = v38;
            sub_100028DE8();
            goto LABEL_35;
          }
        }

        if (v25 != 26)
        {
          goto LABEL_29;
        }

LABEL_34:
        sub_100009280(v17, a3);
LABEL_35:

        return (*(v14 + 8))(v17, v13);
      }
    }

    if (v25 == 11)
    {
      goto LABEL_34;
    }

    goto LABEL_24;
  }

  return (*(v14 + 8))(v17, v13);
}

uint64_t _s9mapssyncd14MapsSyncDaemonC19willPerformRecovery8forError4fromSbs0I0_pSg_So33NSXPCStoreServerConnectionContextCSgtF_0()
{
  sub_100029388(20);

  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046790, &qword_10002B3D0);
  v2._countAndFlagsBits = sub_100028F98();
  sub_100028FE8(v2);

  sub_100029148();
  if (qword_100046258 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10002AD50;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_1000022C4();
  *(v0 + 32) = 0xD000000000000012;
  *(v0 + 40) = 0x800000010002CC00;
  sub_100028DE8();

  return 0;
}

unint64_t sub_10000A05C()
{
  result = qword_100046730;
  if (!qword_100046730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046730);
  }

  return result;
}

unint64_t sub_10000A0B0()
{
  result = qword_100046748;
  if (!qword_100046748)
  {
    sub_100003E20(255, &qword_100046740, NSManagedObject_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046748);
  }

  return result;
}

uint64_t sub_10000A118(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046750, qword_10002B660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A1CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046750, qword_10002B660);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A23C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000A284()
{
  result = qword_100046290;
  if (!qword_100046290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100046288, &unk_10002AD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046290);
  }

  return result;
}

id sub_10000A340()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedIncidentReport();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000A3F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedMixinMapItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000A448@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedVehicle();
  result = sub_100029398();
  *a1 = result;
  return result;
}

uint64_t sub_10000A48C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedIncidentReport();
  result = sub_100029398();
  *a1 = result;
  return result;
}

uint64_t sub_10000A4D0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedCachedUserReview();
  result = sub_100029398();
  *a1 = result;
  return result;
}

id sub_10000A56C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedReviewedPlace();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000A5C4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedRAPRecord();
  result = sub_100029398();
  *a1 = result;
  return result;
}

id sub_10000A660()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedAnalyticsIdentifier();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000A710()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedHistoryEvDirectionsItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000A7C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedHistoryPlaceItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000A870()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedVehicle();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000A8C8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedAnonymousCredential();
  result = sub_100029398();
  *a1 = result;
  return result;
}

id sub_10000A964()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedAnonymousCredential();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000A9BC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AD0, &qword_10002B2D8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v37 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v38 = &v37 - v8;
  v39 = sub_100028D98();
  v9 = *(v39 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v39);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v40 = &v37 - v14;
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_100029388(27);
  v44 = v1;
  type metadata accessor for CKContainerEventState();

  v45._countAndFlagsBits = sub_100028F98();
  sub_100028FE8(v45);

  v46._countAndFlagsBits = 8250;
  v46._object = 0xE200000000000000;
  sub_100028FE8(v46);
  v44 = [a1 type];
  type metadata accessor for EventType(0);
  sub_1000293C8();
  v47._countAndFlagsBits = 0x203A746E65766520;
  v47._object = 0xE800000000000000;
  sub_100028FE8(v47);
  v15 = [a1 description];
  v16 = sub_100028F88();
  v18 = v17;

  v48._countAndFlagsBits = v16;
  v48._object = v18;
  sub_100028FE8(v48);

  v49._countAndFlagsBits = 0x3A726F727265202CLL;
  v49._object = 0xE900000000000020;
  sub_100028FE8(v49);
  v19 = [a1 error];
  v44 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046790, &qword_10002B3D0);
  v20 = sub_1000292B8();
  v22 = v21;

  v50._countAndFlagsBits = v20;
  v50._object = v22;
  sub_100028FE8(v50);

  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v42, v43);

  v23 = [a1 error];
  swift_beginAccess();
  v44 = v23;
  v24 = v2[3];
  v41 = &v44;
  swift_errorRetain();
  os_unfair_lock_lock((v24 + 24));
  sub_10001168C((v24 + 16));
  os_unfair_lock_unlock((v24 + 24));

  swift_endAccess();
  swift_beginAccess();
  v25 = v2[4];
  os_unfair_lock_lock((v25 + 20));
  *(v25 + 16) = 1;
  os_unfair_lock_unlock((v25 + 20));
  swift_endAccess();
  result = [a1 endDate];
  if (result)
  {
    v27 = result;
    sub_100028D78();

    v29 = v39;
    v28 = v40;
    (*(v9 + 32))(v40, v13, v39);
    swift_beginAccess();
    v30 = v2[4];
    os_unfair_lock_lock((v30 + 20));
    *(v30 + 16) = 0;
    os_unfair_lock_unlock((v30 + 20));
    swift_endAccess();
    if ([a1 succeeded])
    {
      v31 = v38;
      (*(v9 + 16))(v38, v28, v29);
      (*(v9 + 56))(v31, 0, 1, v29);
      v32 = v37;
      sub_100011330(v31, v37, &unk_100046AD0, &qword_10002B2D8);
      v33 = swift_beginAccess();
      v34 = v2[2];
      __chkstk_darwin(v33);
      *(&v37 - 2) = v32;
      v35 = *(*v34 + class metadata base offset for ManagedBuffer + 16);
      v36 = (*(*v34 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((v34 + v36));
      sub_1000116D8(v34 + v35);
      v28 = v40;
      os_unfair_lock_unlock((v34 + v36));
      sub_1000029A8(v32, &unk_100046AD0, &qword_10002B2D8);
      swift_endAccess();
      sub_1000029A8(v31, &unk_100046AD0, &qword_10002B2D8);
    }

    return (*(v9 + 8))(v28, v29);
  }

  return result;
}

uint64_t sub_10000AF48()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

void *sub_10000AFB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AD0, &qword_10002B2D8);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  v8 = sub_100028D98();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_100011330(v7, v5, &unk_100046AD0, &qword_10002B2D8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046B58, &qword_10002B3E0);
  v10 = *(v9 + 52);
  v11 = (*(v9 + 48) + 3) & 0x1FFFFFFFCLL;
  v12 = swift_allocObject();
  *(v12 + ((*(*v12 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1000029A8(v7, &unk_100046AD0, &qword_10002B2D8);
  sub_100011010(v5, v12 + *(*v12 + class metadata base offset for ManagedBuffer + 16));
  v0[2] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046B60, &qword_10002B3E8);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = 0;
  v0[3] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046B68, &qword_10002B3F0);
  v14 = swift_allocObject();
  *(v14 + 20) = 0;
  *(v14 + 16) = 0;
  v0[4] = v14;
  return v0;
}

char *sub_10000B1CC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_kSyncDateSetupThreshold;
  GEOConfigGetDouble();
  *&v2[v4] = v5;
  v6 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_kInitialSyncCheckEnabled;
  v2[v6] = GEOConfigGetBOOL();
  v7 = &v2[OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_kOSVersionKey];
  *v7 = 0x6F6973726576736FLL;
  v7[1] = 0xE90000000000006ELL;
  v8 = &v2[OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_kLastSyncDateKey];
  strcpy(&v2[OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_kLastSyncDateKey], "lastsyncdate");
  v8[13] = 0;
  *(v8 + 7) = -5120;
  *&v2[OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_activityHandler] = 0;
  v9 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService__accountStatus;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046B50, &qword_10002B3D8);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  *&v2[v9] = v10;
  v11 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_setupState;
  type metadata accessor for CKContainerEventState();
  v12 = swift_allocObject();
  sub_10000AFB4();
  *&v2[v11] = v12;
  v13 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_importState;
  v14 = swift_allocObject();
  sub_10000AFB4();
  *&v2[v13] = v14;
  v15 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_exportState;
  v16 = swift_allocObject();
  sub_10000AFB4();
  *&v2[v15] = v16;
  v17 = objc_allocWithZone(NSXPCListener);
  v18 = sub_100028F78();
  v19 = [v17 initWithMachServiceName:v18];

  *&v2[OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_listener] = v19;
  v20 = [a1 newBackgroundContext];
  *&v2[OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_moc] = v20;
  [v20 setAutomaticallyMergesChangesFromParent:1];
  v29.receiver = v2;
  v29.super_class = type metadata accessor for MapsSyncDaemonService();
  v21 = objc_msgSendSuper2(&v29, "init");
  v22 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_listener;
  v23 = *&v21[OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_listener];
  v24 = v21;
  [v23 setDelegate:v24];
  [*&v21[v22] resume];
  v25 = objc_opt_self();
  v26 = [v25 defaultCenter];
  [v26 addObserver:v24 selector:"cloudKitContainerEventWithNotification:" name:NSPersistentCloudKitContainerEventChangedNotification object:0];

  v27 = [v25 defaultCenter];
  [v27 addObserver:v24 selector:"cloudKitAccountChangedWithNotification:" name:CKAccountChangedNotification object:0];

  return v24;
}

void sub_10000B4C0(void *a1)
{
  v2 = v1;
  v3 = [a1 userInfo];
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  v5 = sub_100028F38();

  sub_100028F88();
  sub_100029348();
  if (!*(v5 + 16) || (v6 = sub_10000243C(&v21), (v7 & 1) == 0))
  {

    sub_100001EB8(&v21);
LABEL_11:
    v23 = 0u;
    v24 = 0u;
    goto LABEL_12;
  }

  sub_100002480(*(v5 + 56) + 32 * v6, &v23);
  sub_100001EB8(&v21);

  if (!*(&v24 + 1))
  {
LABEL_12:
    sub_1000029A8(&v23, &qword_100047350, &qword_10002B2E0);
    return;
  }

  sub_100003E20(0, &qword_100046B38, NSPersistentCloudKitContainerEvent_ptr);
  if (swift_dynamicCast())
  {
    v8 = v21;
    v9 = [v21 type];
    if (v9 == 2)
    {
      v10 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_exportState;
      goto LABEL_16;
    }

    if (v9 == 1)
    {
      v10 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_importState;
      goto LABEL_16;
    }

    if (!v9)
    {
      v10 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_setupState;
LABEL_16:
      v11 = *&v2[v10];

      sub_10000A9BC(v8);

      return;
    }

    v21 = 0;
    v22 = 0xE000000000000000;
    sub_100029388(25);
    v12 = v2;
    v13 = [v12 description];
    v14 = sub_100028F88();
    v16 = v15;

    v21 = v14;
    v22 = v16;
    v25._object = 0x800000010002D600;
    v25._countAndFlagsBits = 0xD000000000000014;
    sub_100028FE8(v25);
    v17 = [v8 description];
    v18 = sub_100028F88();
    v20 = v19;

    v26._countAndFlagsBits = v18;
    v26._object = v20;
    sub_100028FE8(v26);

    v27._countAndFlagsBits = 41;
    v27._object = 0xE100000000000000;
    sub_100028FE8(v27);
    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v21, v22);
  }
}

uint64_t sub_10000B7EC()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService__accountStatus;
    swift_beginAccess();
    v0[11] = 0;
    v5 = *&v3[v4];
    *(swift_task_alloc() + 16) = v0 + 11;
    os_unfair_lock_lock((v5 + 24));
    sub_100011750((v5 + 16));
    os_unfair_lock_unlock((v5 + 24));

    swift_endAccess();
  }

  v6 = v0[12];
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  v0[13] = v7;
  if (v7)
  {
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_10000B998;

    return sub_100003068();
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10000B998(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;

  v7 = *(v4 + 104);
  if (v1)
  {
  }

  else
  {
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_10000BAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046B40, &qword_10002B318);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100011330(a3, v27 - v11, &unk_100046B40, &qword_10002B318);
  v13 = sub_1000290C8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000029A8(v12, &unk_100046B40, &qword_10002B318);
  }

  else
  {
    sub_1000290B8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_100029088();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_100028FA8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1000029A8(a3, &unk_100046B40, &qword_10002B318);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000029A8(a3, &unk_100046B40, &qword_10002B318);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10000BEEC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_10000C218;
  }

  else
  {
    v3 = sub_10000BFFC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000BFFC()
{
  v2 = v0 + 21;
  v1 = v0[21];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[23];

  sub_100029388(22);
  v6 = v4;
  v7 = [v6 description];
  v8 = sub_100028F88();
  v10 = v9;

  v22._object = 0x800000010002D5E0;
  v22._countAndFlagsBits = 0xD000000000000012;
  sub_100028FE8(v22);
  v11 = [v1 description];
  v12 = sub_100028F88();
  v14 = v13;

  v23._countAndFlagsBits = v12;
  v23._object = v14;
  sub_100028FE8(v23);

  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v8, v10);

  swift_beginAccess();
  *v2 = v1;
  v15 = *&v4[v5];
  *(swift_task_alloc() + 16) = v2;
  v16 = v1;
  os_unfair_lock_lock((v15 + 24));
  sub_10001123C((v15 + 16));
  v17 = *(v20 + 192);
  os_unfair_lock_unlock((v15 + 24));

  swift_endAccess();
  v18 = *(v20 + 8);

  return v18(v16);
}

uint64_t sub_10000C218()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[26];

  return v4();
}

uint64_t sub_10000C290(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10000C368(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_moc];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100011218;
  *(v7 + 24) = v6;
  v12[4] = sub_100011748;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100015128;
  v12[3] = &block_descriptor_50;
  v8 = _Block_copy(v12);
  v9 = v2;

  [v5 performBlockAndWait:v8];
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000C4E0(uint64_t a1, void (*a2)(char *, unint64_t, void), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AD0, &qword_10002B2D8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v40 - v8;
  v10 = objc_allocWithZone(NSFetchRequest);
  v11 = sub_100028F78();
  v12 = [v10 initWithEntityName:v11];

  v13 = *(a1 + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_moc);
  type metadata accessor for MapsSyncManagedAnalyticsIdentifier();
  v18 = sub_100029238();
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_100029388(19);

  v47 = 0xD000000000000036;
  v48 = 0x800000010002D570;
  if (v18 >> 62)
  {
    v19 = sub_1000293D8();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = a3;
  v49 = v19;
  v50._countAndFlagsBits = sub_100029408();
  sub_100028FE8(v50);

  v51._countAndFlagsBits = 1935960352;
  v51._object = 0xE400000000000000;
  sub_100028FE8(v51);
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v47, v48);

  v45 = a2;
  if (v18 >> 62)
  {
    v20 = sub_1000293D8();
  }

  else
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = a1;
  v43 = v12;
  v46 = v9;
  if (v20)
  {
    v21 = 0;
    v22 = v18 & 0xC000000000000001;
    v23 = &_swiftEmptyArrayStorage;
    do
    {
      v24 = v21;
      while (1)
      {
        if (v22)
        {
          v25 = sub_1000293B8();
        }

        else
        {
          if (v24 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v25 = *(v18 + 8 * v24 + 32);
        }

        v26 = v25;
        v21 = (v24 + 1);
        if (__OFADD__(v24, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
          swift_once();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_10002AD50;
          *(v14 + 56) = &type metadata for String;
          *(v14 + 64) = sub_1000022C4();
          *(v14 + 32) = v21;
          *(v14 + 40) = &stru_100042FF8.attr;
          sub_100028DE8();

          v15 = sub_100028D98();
          (*(*(v15 - 8) + 56))(v22, 1, 1, v15);
          sub_10000A05C();
          v16 = swift_allocError();
          *v17 = 1;
          (v24)(&_swiftEmptyArrayStorage, v22, v16);

          return sub_1000029A8(v22, &unk_100046AD0, &qword_10002B2D8);
        }

        v27 = [v25 data];
        if (v27)
        {
          break;
        }

        ++v24;
        if (v21 == v20)
        {
          goto LABEL_24;
        }
      }

      v28 = v27;
      v29 = sub_100028D28();
      v41 = v30;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_100010C2C(0, *(v23 + 2) + 1, 1, v23);
      }

      v32 = *(v23 + 2);
      v31 = *(v23 + 3);
      if (v32 >= v31 >> 1)
      {
        v23 = sub_100010C2C((v31 > 1), v32 + 1, 1, v23);
      }

      *(v23 + 2) = v32 + 1;
      v33 = &v23[16 * v32];
      v34 = v41;
      *(v33 + 4) = v29;
      *(v33 + 5) = v34;
    }

    while (v21 != v20);
  }

  else
  {
    v23 = &_swiftEmptyArrayStorage;
  }

LABEL_24:

  v35 = *(v42 + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_importState);
  swift_beginAccess();
  v36 = *(v35 + 16);
  v37 = *(*v36 + class metadata base offset for ManagedBuffer + 16);
  v38 = (*(*v36 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v36 + v38));
  v22 = v46;
  sub_100011330(v36 + v37, v46, &unk_100046AD0, &qword_10002B2D8);
  os_unfair_lock_unlock((v36 + v38));

  v45(v23, v22, 0);

  return sub_1000029A8(v22, &unk_100046AD0, &qword_10002B2D8);
}

void sub_10000CB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AD0, &qword_10002B2D8) - 8) + 64);
  v9 = __chkstk_darwin(a1);
  v11 = &v17 - v10;
  if (v9)
  {
    v12.super.isa = sub_100029038().super.isa;
  }

  else
  {
    v12.super.isa = 0;
  }

  sub_100011330(a2, v11, &unk_100046AD0, &qword_10002B2D8);
  v13 = sub_100028D98();
  v14 = *(v13 - 8);
  isa = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    isa = sub_100028D48().super.isa;
    (*(v14 + 8))(v11, v13);
  }

  if (a3)
  {
    v16 = sub_100028C68();
  }

  else
  {
    v16 = 0;
  }

  (*(a4 + 16))(a4, v12.super.isa, isa, v16);
}

uint64_t sub_10000CCEC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *&v5[OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_moc];
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v5;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a4;
  v12[7] = a5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10001111C;
  *(v13 + 24) = v12;
  v18[4] = sub_10001112C;
  v18[5] = v13;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100015128;
  v18[3] = &block_descriptor_1;
  v14 = _Block_copy(v18);

  v15 = v5;
  sub_10001114C(a1, a2);

  [v11 performBlockAndWait:v14];
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_10000CE90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t a6)
{
  v44 = a6;
  v41[1] = a3;
  v42 = a4;
  v43 = sub_100028DD8();
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v43);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100028D98();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &unk_100046000;
  if (a1)
  {
    v41[0] = a5;
    type metadata accessor for MapsSyncManagedAnalyticsIdentifier();
    v19 = [swift_getObjCClassFromMetadata() fetchRequest];
    sub_100003E20(0, &qword_100046B10, NSPredicate_ptr);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10002AD50;
    *(v20 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046B18, &qword_10002B300);
    *(v20 + 64) = sub_1000111B4();
    *(v20 + 32) = a1;

    v21 = sub_100029118();
    [v19 setPredicate:v21];

    v22 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v19];
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_100029388(18);

    v46 = 0xD000000000000046;
    v47 = 0x800000010002D4D0;
    v45 = *(a1 + 16);
    v48._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v48);

    v49._countAndFlagsBits = 1935960352;
    v49._object = 0xE400000000000000;
    sub_100028FE8(v49);
    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v46, v47);

    v23 = *(a2 + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_moc);
    v46 = 0;
    v24 = [v23 executeRequest:v22 error:&v46];
    if (!v24)
    {
      v36 = v46;
      v35 = sub_100028C78();

      swift_willThrow();
      a5 = v41[0];
      goto LABEL_10;
    }

    v25 = v24;
    v26 = v46;

    a5 = v41[0];
    v18 = &unk_100046000;
  }

  type metadata accessor for MapsSyncManagedAnalyticsIdentifier();
  v27 = *(a2 + v18[321]);
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:v27];
  isa = 0;
  if (v42 >> 60 != 15)
  {
    isa = sub_100028D18().super.isa;
  }

  [v19 setData:isa];

  sub_100028D88();
  v29 = sub_100028D48().super.isa;
  v30 = *(v14 + 8);
  v30(v17, v13);
  [v19 setCreateTime:v29];

  sub_100028D88();
  v31 = sub_100028D48().super.isa;
  v30(v17, v13);
  [v19 setModificationTime:v31];

  sub_100028DC8();
  v32 = sub_100028DB8().super.isa;
  (*(v9 + 8))(v12, v43);
  [v19 setIdentifier:v32];

  [v19 setPositionIndex:0];
  v46 = 0;
  if ([v27 save:&v46])
  {
    v33 = v46;
    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD000000000000049, 0x800000010002D480);
    (a5)(0);

    return;
  }

  v34 = v46;
  v35 = sub_100028C78();

  swift_willThrow();
LABEL_10:

  v46 = 0;
  v47 = 0xE000000000000000;
  v50._object = 0x800000010002D440;
  v50._countAndFlagsBits = 0xD00000000000003CLL;
  sub_100028FE8(v50);
  v51._countAndFlagsBits = 0x3A64656C69616620;
  v51._object = 0xE900000000000020;
  sub_100028FE8(v51);
  v45 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
  sub_1000293C8();
  v37 = v46;
  v38 = v47;
  sub_100029148();
  if (qword_100046258 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_10002AD50;
  *(v39 + 56) = &type metadata for String;
  *(v39 + 64) = sub_1000022C4();
  *(v39 + 32) = v37;
  *(v39 + 40) = v38;
  sub_100028DE8();

  sub_10000A05C();
  swift_allocError();
  *v40 = 1;
  a5();
}

void sub_10000D680(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_100028C68();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_10000D6E4()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000D774;

  return sub_1000102C4();
}

uint64_t sub_10000D774(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {

    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 56) = a1 & 1;

    return _swift_task_switch(sub_10000D8D0, 0, 0);
  }
}

uint64_t sub_10000D8D0()
{
  if (*(v0 + 56) == 1)
  {
    v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_activityHandler);
    *(v0 + 32) = v1;
    if (v1)
    {

      v2 = swift_task_alloc();
      *(v0 + 40) = v2;
      *v2 = v0;
      v2[1] = sub_10000DAE4;

      return sub_100015150();
    }

    sub_100029148();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_10002AD50;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_1000022C4();
    *(v5 + 32) = 0xD00000000000002BLL;
    *(v5 + 40) = 0x800000010002D400;
    sub_100028DE8();

    sub_10000A05C();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    v4 = *(v0 + 8);
  }

  else
  {
    v4 = *(v0 + 8);
  }

  return v4();
}

uint64_t sub_10000DAE4()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_10000DC5C;
  }

  else
  {
    v3 = sub_10000DBF8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000DBF8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000DC5C()
{
  v1 = v0[4];

  v2 = v0[6];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10000DE34(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10000DEDC;

  return sub_10000D6E4();
}

uint64_t sub_10000DEDC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = sub_100028C68();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_10000E1D4(const void *a1, void *a2)
{
  v2[2] = a2;
  v5 = sub_100028D98();
  v2[3] = v5;
  v6 = *(v5 - 8);
  v2[4] = v6;
  v7 = *(v6 + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = _Block_copy(a1);
  v8 = a2;

  return _swift_task_switch(sub_10000E2B0, 0, 0);
}

uint64_t sub_10000E2B0()
{
  v1 = *(v0 + 16);
  sub_10000E3AC(*(v0 + 40));

  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  isa = sub_100028D48().super.isa;
  (*(v3 + 8))(v2, v4);
  v6 = *(v0 + 48);
  (v6)[2](v6, isa, 0);

  _Block_release(v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10000E3AC@<X0>(char *a1@<X8>)
{
  v197 = a1;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AD0, &qword_10002B2D8);
  v199 = *(v205 - 8);
  v2 = *(v199 + 8);
  v3 = __chkstk_darwin(v205);
  v195 = &v184 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v196 = &v184 - v6;
  v7 = __chkstk_darwin(v5);
  v198 = &v184 - v8;
  v9 = __chkstk_darwin(v7);
  v203 = &v184 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v184 - v12;
  v14 = __chkstk_darwin(v11);
  v207 = &v184 - v15;
  __chkstk_darwin(v14);
  v200 = &v184 - v16;
  v206 = sub_100028D98();
  v209 = *(v206 - 8);
  v17 = *(v209 + 64);
  v18 = __chkstk_darwin(v206);
  v193 = &v184 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v194 = &v184 - v21;
  v22 = __chkstk_darwin(v20);
  v204 = &v184 - v23;
  v24 = __chkstk_darwin(v22);
  v208 = &v184 - v25;
  __chkstk_darwin(v24);
  v201 = &v184 - v26;
  v27 = [objc_opt_self() processInfo];
  v28 = [v27 operatingSystemVersionString];

  v29 = v28;
  v30 = v28;
  v31 = v28;
  if (!v28)
  {
    sub_100028F88();
    v31 = sub_100028F78();

    sub_100028F88();
    v30 = sub_100028F78();

    sub_100028F88();
    v29 = sub_100028F78();
  }

  v213 = v30;
  v214 = v29;
  v32 = sub_100028F88();
  v34 = v33;
  v35 = objc_opt_self();
  v36 = v28;
  v212 = v35;
  v37 = [v35 standardUserDefaults];
  v38 = *(v1 + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_kOSVersionKey + 8);
  v210 = *(v1 + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_kOSVersionKey);
  v211 = v38;
  v39 = sub_100028F78();
  v40 = [v37 objectForKey:v39];

  if (v40)
  {
    sub_1000292D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v218 = 0u;
    v219 = 0u;
  }

  v220 = v218;
  v221 = v219;
  if (!*(&v219 + 1))
  {
    sub_1000029A8(&v220, &qword_100047350, &qword_10002B2E0);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

LABEL_13:
    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD000000000000039, 0x800000010002D2D0);
    v41 = v212;
    v42 = [v212 standardUserDefaults];
    v43 = *(v1 + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_kLastSyncDateKey);
    v44 = *(v1 + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_kLastSyncDateKey + 8);
    v45 = sub_100028F78();
    [v42 setURL:0 forKey:v45];

    v46 = [v41 standardUserDefaults];
    v47 = sub_100028F78();
    [v46 setObject:v31 forKey:v47];

    goto LABEL_14;
  }

  if (v32 != v216 || v34 != v217)
  {
    v60 = sub_100029428();

    if (v60)
    {

      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_14:
  v202 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_setupState;
  v48 = *(v1 + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_setupState);
  swift_beginAccess();
  v49 = *(v48 + 24);

  os_unfair_lock_lock((v49 + 24));
  v50 = *(v49 + 16);
  swift_errorRetain();
  os_unfair_lock_unlock((v49 + 24));

  if (v50)
  {
    goto LABEL_17;
  }

  v51 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_importState;
  v52 = *(v1 + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_importState);
  swift_beginAccess();
  v53 = *(v52 + 24);

  os_unfair_lock_lock((v53 + 24));
  v50 = *(v53 + 16);
  swift_errorRetain();
  os_unfair_lock_unlock((v53 + 24));

  if (v50)
  {
    goto LABEL_17;
  }

  v54 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_exportState;
  v55 = *(v1 + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_exportState);
  swift_beginAccess();
  v56 = *(v55 + 24);

  os_unfair_lock_lock((v56 + 24));
  v50 = *(v56 + 16);
  swift_errorRetain();
  os_unfair_lock_unlock((v56 + 24));

  if (v50)
  {
LABEL_17:

    *&v220 = 0;
    *(&v220 + 1) = 0xE000000000000000;
    sub_100029388(35);
    v222._countAndFlagsBits = 0x636E79537473616CLL;
    v222._object = 0xEE00292865746144;
    sub_100028FE8(v222);
    v223._countAndFlagsBits = 0xD00000000000001FLL;
    v223._object = 0x800000010002D3E0;
    sub_100028FE8(v223);
    *&v218 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
    sub_1000293C8();
    v57 = v220;
    sub_100029148();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_10002AD50;
    *(v58 + 56) = &type metadata for String;
    *(v58 + 64) = sub_1000022C4();
    *(v58 + 32) = v57;
    sub_100028DE8();

    return swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AE0, &unk_10002B2E8);
    v191 = *(v199 + 9);
    v61 = (*(v199 + 80) + 32) & ~*(v199 + 80);
    v186 = swift_allocObject();
    v62 = v186 + v61;
    v188 = v51;
    v63 = *(v1 + v51);
    swift_beginAccess();
    v64 = v54;
    v65 = *(v63 + 16);
    v66 = *(*v65 + class metadata base offset for ManagedBuffer + 16);
    v67 = (*(*v65 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v65 + v67));
    sub_100011330(v65 + v66, v62, &unk_100046AD0, &qword_10002B2D8);
    os_unfair_lock_unlock((v65 + v67));

    v187 = v64;
    v68 = *(v1 + v64);
    swift_beginAccess();
    v69 = *(v68 + 16);
    v70 = *(*v69 + class metadata base offset for ManagedBuffer + 16);
    v71 = (*(*v69 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v69 + v71));
    sub_100011330(v69 + v70, v62 + v191, &unk_100046AD0, &qword_10002B2D8);
    os_unfair_lock_unlock((v69 + v71));

    v192 = v62;
    v72 = v207;
    sub_100011330(v62, v207, &unk_100046AD0, &qword_10002B2D8);
    sub_100011010(v72, v13);
    v74 = v209 + 48;
    v73 = *(v209 + 48);
    v75 = (v209 + 32);
    v76 = v206;
    v77 = v73(v13, 1, v206);
    v189 = (v74 - 16);
    v190 = v74;
    v199 = v73;
    if (v77 == 1)
    {
      sub_1000029A8(v13, &unk_100046AD0, &qword_10002B2D8);
      v78 = _swiftEmptyArrayStorage;
    }

    else
    {
      v79 = *v75;
      (*v75)(v208, v13, v76);
      v78 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_100010D38(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v81 = *(v78 + 2);
      v80 = *(v78 + 3);
      if (v81 >= v80 >> 1)
      {
        v78 = sub_100010D38(v80 > 1, v81 + 1, 1, v78);
      }

      *(v78 + 2) = v81 + 1;
      v75 = v189;
      v79(&v78[((*(v209 + 80) + 32) & ~*(v209 + 80)) + *(v209 + 72) * v81], v208, v76);
    }

    v82 = v207;
    sub_100011330(v192 + v191, v207, &unk_100046AD0, &qword_10002B2D8);
    sub_100011010(v82, v13);
    if (v199(v13, 1, v76) == 1)
    {
      sub_1000029A8(v13, &unk_100046AD0, &qword_10002B2D8);
      v83 = v200;
      v84 = v201;
    }

    else
    {
      v85 = *v75;
      (*v75)(v208, v13, v76);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_100010D38(0, *(v78 + 2) + 1, 1, v78);
      }

      v84 = v201;
      v87 = *(v78 + 2);
      v86 = *(v78 + 3);
      if (v87 >= v86 >> 1)
      {
        v78 = sub_100010D38(v86 > 1, v87 + 1, 1, v78);
      }

      *(v78 + 2) = v87 + 1;
      v75 = v189;
      v85(&v78[((*(v209 + 80) + 32) & ~*(v209 + 80)) + *(v209 + 72) * v87], v208, v76);
      v83 = v200;
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_100010028(v78, v83);

    if (v199(v83, 1, v76) == 1)
    {

      sub_1000029A8(v83, &unk_100046AD0, &qword_10002B2D8);
    }

    else
    {
      v88 = *v75;
      (*v75)(v84, v83, v76);
      v89 = *(v1 + v188);
      swift_beginAccess();
      v90 = *(v89 + 32);

      os_unfair_lock_lock((v90 + 20));
      v91 = *(v90 + 16);
      os_unfair_lock_unlock((v90 + 20));

      if ((v91 & 1) == 0)
      {
        v92 = *(v1 + v187);
        swift_beginAccess();
        v93 = *(v92 + 32);

        os_unfair_lock_lock((v93 + 20));
        v94 = *(v93 + 16);
        os_unfair_lock_unlock((v93 + 20));

        if ((v94 & 1) == 0)
        {

          *&v220 = 0;
          *(&v220 + 1) = 0xE000000000000000;
          v163 = v1;
          sub_100029388(16);

          *&v220 = 0xD00000000000001ALL;
          *(&v220 + 1) = 0x800000010002D3C0;
          sub_100011084(&unk_100046AF0);
          v235._countAndFlagsBits = sub_100029408();
          sub_100028FE8(v235);

          _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v220, *(&v220 + 1));

          v164 = v212;
          v165 = [v212 standardUserDefaults];
          isa = sub_100028D48().super.isa;
          v167 = *(v163 + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_kLastSyncDateKey);
          v168 = *(v163 + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_kLastSyncDateKey + 8);
          v169 = sub_100028F78();
          [v165 setObject:isa forKey:v169];

          v170 = [v164 standardUserDefaults];
          v171 = sub_100028F78();
          v172 = v213;
          [v170 setObject:v213 forKey:v171];

          return (v88)(v197, v84, v76);
        }
      }

      (*(v209 + 8))(v84, v76);
    }

    v95 = [v212 standardUserDefaults];
    v96 = *(v1 + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_kLastSyncDateKey);
    v213 = *(v1 + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_kLastSyncDateKey + 8);
    v97 = sub_100028F78();
    v98 = [v95 objectForKey:v97];

    if (v98)
    {
      sub_1000292D8();
      swift_unknownObjectRelease();
    }

    else
    {
      v218 = 0u;
      v219 = 0u;
    }

    v99 = v203;
    v100 = v198;
    v101 = v199;
    v220 = v218;
    v221 = v219;
    if (*(&v219 + 1))
    {
      v102 = swift_dynamicCast();
      (*(v209 + 56))(v99, v102 ^ 1u, 1, v76);
    }

    else
    {
      sub_1000029A8(&v220, &qword_100047350, &qword_10002B2E0);
      (*(v209 + 56))(v99, 1, 1, v76);
    }

    sub_100011330(v99, v100, &unk_100046AD0, &qword_10002B2D8);
    if (v101(v100, 1, v76) != 1)
    {

      (*v189)(v197, v100, v76);
      *&v220 = 0;
      *(&v220 + 1) = 0xE000000000000000;
      sub_100029388(23);

      *&v220 = 0xD000000000000021;
      *(&v220 + 1) = 0x800000010002D390;
      sub_100011084(&unk_100046AF0);
      v224._countAndFlagsBits = sub_100029408();
      sub_100028FE8(v224);

      _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v220, *(&v220 + 1));

      return sub_1000029A8(v99, &unk_100046AD0, &qword_10002B2D8);
    }

    v208 = v96;
    sub_1000029A8(v100, &unk_100046AD0, &qword_10002B2D8);
    sub_100028D88();
    v103 = *(v1 + v202);
    swift_beginAccess();
    v104 = *(v103 + 16);
    v105 = *(*v104 + class metadata base offset for ManagedBuffer + 16);
    v106 = (*(*v104 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v104 + v106));
    v107 = v104 + v105;
    v108 = v196;
    sub_100011330(v107, v196, &unk_100046AD0, &qword_10002B2D8);
    v109 = (v104 + v106);
    v110 = v108;
    os_unfair_lock_unlock(v109);

    v111 = v206;

    if (v101(v110, 1, v111) == 1)
    {
      v112 = v1;

      sub_1000029A8(v110, &unk_100046AD0, &qword_10002B2D8);
    }

    else
    {
      v113 = *v189;
      v114 = v194;
      (*v189)(v194, v110, v111);
      v115 = *(v1 + v188);
      swift_beginAccess();
      v116 = *(v115 + 32);

      os_unfair_lock_lock((v116 + 20));
      v117 = *(v116 + 16);
      os_unfair_lock_unlock((v116 + 20));

      if (v117)
      {
        goto LABEL_53;
      }

      v118 = *(v1 + v187);
      swift_beginAccess();
      v119 = *(v118 + 32);

      os_unfair_lock_lock((v119 + 20));
      v120 = *(v119 + 16);
      os_unfair_lock_unlock((v119 + 20));

      if (v120)
      {
LABEL_53:
        v112 = v1;
        (*(v209 + 8))(v114, v111);
      }

      else
      {
        v112 = v1;
        v173 = *(v1 + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_kSyncDateSetupThreshold);
        v174 = v193;
        sub_100028D38();
        v175 = sub_100028D58();
        v176 = *(v209 + 8);
        v176(v174, v111);
        if (v175)
        {
          *&v218 = 0;
          *(&v218 + 1) = 0xE000000000000000;
          sub_100029388(40);
          v236._countAndFlagsBits = 0x636E79537473616CLL;
          v236._object = 0xEE00292865746144;
          sub_100028FE8(v236);
          v237._countAndFlagsBits = 0xD000000000000012;
          v237._object = 0x800000010002D350;
          sub_100028FE8(v237);
          sub_100011084(&unk_100046AF0);
          v238._countAndFlagsBits = sub_100029408();
          sub_100028FE8(v238);

          v239._countAndFlagsBits = 0xD000000000000010;
          v239._object = 0x800000010002D370;
          sub_100028FE8(v239);
          sub_1000290F8();
          _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v218, *(&v218 + 1));

          v177 = v212;
          v178 = [v212 standardUserDefaults];
          v179 = sub_100028D48().super.isa;
          v180 = sub_100028F78();
          v213 = v176;
          [v178 setObject:v179 forKey:v180];

          v181 = [v177 standardUserDefaults];
          v182 = sub_100028F78();
          v183 = v214;
          [v181 setObject:v214 forKey:v182];

          v213(v204, v111);
          v113(v197, v194, v111);
          return sub_1000029A8(v203, &unk_100046AD0, &qword_10002B2D8);
        }

        v176(v114, v111);
      }
    }

    *&v218 = 0;
    *(&v218 + 1) = 0xE000000000000000;
    sub_100029388(104);
    v215 = v218;
    v225._countAndFlagsBits = 0x636E79537473616CLL;
    v225._object = 0xEE00292865746144;
    sub_100028FE8(v225);
    v226._object = 0x800000010002D310;
    v226._countAndFlagsBits = 0xD000000000000017;
    sub_100028FE8(v226);
    v121 = *(v112 + v202);
    v122 = v112;
    v185 = v112;
    swift_beginAccess();
    v123 = *(v121 + 16);
    v124 = *(*v123 + class metadata base offset for ManagedBuffer + 16);
    v125 = (*(*v123 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v123 + v125));
    v126 = v195;
    sub_100011330(v123 + v124, v195, &unk_100046AD0, &qword_10002B2D8);
    os_unfair_lock_unlock((v123 + v125));

    v127 = sub_1000292B8();
    v129 = v128;
    sub_1000029A8(v126, &unk_100046AD0, &qword_10002B2D8);
    v227._countAndFlagsBits = v127;
    v227._object = v129;
    sub_100028FE8(v227);

    v228._countAndFlagsBits = 0x726F706D69202C22;
    v228._object = 0xEC00000022203A74;
    sub_100028FE8(v228);
    v130 = *(v122 + v188);
    swift_beginAccess();
    v131 = *(v130 + 16);
    v132 = *(*v131 + class metadata base offset for ManagedBuffer + 16);
    v133 = (*(*v131 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v131 + v133));
    sub_100011330(v131 + v132, v126, &unk_100046AD0, &qword_10002B2D8);
    os_unfair_lock_unlock((v131 + v133));

    v134 = sub_1000292B8();
    v136 = v135;
    sub_1000029A8(v126, &unk_100046AD0, &qword_10002B2D8);
    v229._countAndFlagsBits = v134;
    v229._object = v136;
    sub_100028FE8(v229);

    v230._countAndFlagsBits = 0x726F707865202C22;
    v230._object = 0xEC00000022203A74;
    sub_100028FE8(v230);
    v137 = v185;
    v138 = *(v185 + v187);
    swift_beginAccess();
    v139 = *(v138 + 16);
    v140 = *(*v139 + class metadata base offset for ManagedBuffer + 16);
    v141 = (*(*v139 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v139 + v141));
    sub_100011330(v139 + v140, v126, &unk_100046AD0, &qword_10002B2D8);
    os_unfair_lock_unlock((v139 + v141));

    v142 = sub_1000292B8();
    v144 = v143;
    sub_1000029A8(v126, &unk_100046AD0, &qword_10002B2D8);
    v231._countAndFlagsBits = v142;
    v231._object = v144;
    sub_100028FE8(v231);

    v232._object = 0x800000010002D330;
    v232._countAndFlagsBits = 0xD000000000000017;
    sub_100028FE8(v232);
    v145 = *(v137 + v202);
    swift_beginAccess();
    v146 = *(v145 + 32);

    os_unfair_lock_lock((v146 + 20));
    v147 = *(v146 + 16);
    os_unfair_lock_unlock((v146 + 20));

    if (v147)
    {
      v148._countAndFlagsBits = 1702195828;
    }

    else
    {
      v148._countAndFlagsBits = 0x65736C6166;
    }

    if (v147)
    {
      v149 = 0xE400000000000000;
    }

    else
    {
      v149 = 0xE500000000000000;
    }

    v148._object = v149;
    sub_100028FE8(v148);

    v233._countAndFlagsBits = 0x74726F706D69202CLL;
    v233._object = 0xEA0000000000203ALL;
    sub_100028FE8(v233);
    v150 = *(v137 + v188);
    swift_beginAccess();
    v151 = *(v150 + 32);

    os_unfair_lock_lock((v151 + 20));
    v152 = *(v151 + 16);
    os_unfair_lock_unlock((v151 + 20));

    if (v152)
    {
      v153._countAndFlagsBits = 1702195828;
    }

    else
    {
      v153._countAndFlagsBits = 0x65736C6166;
    }

    if (v152)
    {
      v154 = 0xE400000000000000;
    }

    else
    {
      v154 = 0xE500000000000000;
    }

    v153._object = v154;
    sub_100028FE8(v153);

    v234._countAndFlagsBits = 0x74726F707865202CLL;
    v234._object = 0xEA0000000000203ALL;
    sub_100028FE8(v234);
    v155 = *(v137 + v187);
    swift_beginAccess();
    v156 = *(v155 + 32);

    os_unfair_lock_lock((v156 + 20));
    v157 = *(v156 + 16);
    os_unfair_lock_unlock((v156 + 20));

    if (v157)
    {
      v158._countAndFlagsBits = 1702195828;
    }

    else
    {
      v158._countAndFlagsBits = 0x65736C6166;
    }

    if (v157)
    {
      v159 = 0xE400000000000000;
    }

    else
    {
      v159 = 0xE500000000000000;
    }

    v158._object = v159;
    sub_100028FE8(v158);

    v160 = v215;
    sub_100029148();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v161 = swift_allocObject();
    *(v161 + 16) = xmmword_10002AD50;
    *(v161 + 56) = &type metadata for String;
    *(v161 + 64) = sub_1000022C4();
    *(v161 + 32) = v160;
    sub_100028DE8();

    sub_10000A05C();
    swift_allocError();
    *v162 = 0;
    swift_willThrow();
    (*(v209 + 8))(v204, v206);
    return sub_1000029A8(v203, &unk_100046AD0, &qword_10002B2D8);
  }
}

uint64_t sub_100010028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100028D98();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_100011084(&qword_100046B08);
        v21 = sub_100028F68();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_1000102C4()
{
  v1[2] = v0;
  v2 = sub_100028D98();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  v5[1] = sub_1000103B0;

  return sub_100003068();
}

uint64_t sub_1000103B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v5 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v6 = v3[5];

    v7 = *(v5 + 8);

    return v7(0);
  }

  else
  {

    return _swift_task_switch(sub_100010504, 0, 0);
  }
}

uint64_t sub_100010504()
{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_kInitialSyncCheckEnabled) == 1 && ([*(v0 + 56) deviceToDeviceEncryptionAvailability] & 1) != 0 && objc_msgSend(*(v0 + 56), "hasValidCredentials"))
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 16);
    sub_10000E3AC(*(v0 + 40));
    v3 = *(v0 + 56);
    if (v1)
    {

      v4 = *(v0 + 40);

      v5 = *(v0 + 8);
      v6 = 0;
      goto LABEL_10;
    }

    (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
  }

  else
  {
    sub_100029148();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10002AD50;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_1000022C4();
    *(v7 + 32) = 0xD000000000000043;
    *(v7 + 40) = 0x800000010002D280;
    sub_100028DE8();
  }

  v8 = *(v0 + 40);

  v5 = *(v0 + 8);
  v6 = 1;
LABEL_10:

  return v5(v6);
}

id sub_10001071C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncDaemonService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100010838(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000035F0;

  return v7(a1);
}

uint64_t sub_100010930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046B40, &qword_10002B318) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_100011330(a3, v24 - v10, &unk_100046B40, &qword_10002B318);
  v12 = sub_1000290C8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000029A8(v11, &unk_100046B40, &qword_10002B318);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1000290B8();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_100029088();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_100028FA8() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_1000029A8(a3, &unk_100046B40, &qword_10002B318);

    return v22;
  }

LABEL_8:
  sub_1000029A8(a3, &unk_100046B40, &qword_10002B318);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

char *sub_100010C2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046B28, &qword_10002B308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

size_t sub_100010D38(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046B00, &qword_10002B2F8);
  v10 = *(sub_100028D98() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100028D98() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100010F10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046B70, &qword_10002B3F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

uint64_t sub_100011010(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AD0, &qword_10002B2D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011084(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100028D98();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000110C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001114C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100011160(a1, a2);
  }

  return a1;
}

uint64_t sub_100011160(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1000111B4()
{
  result = qword_100046B20;
  if (!qword_100046B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100046B18, &qword_10002B300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046B20);
  }

  return result;
}

id sub_10001123C(id *a1)
{
  v3 = **(v1 + 16);

  *a1 = v3;
  return v3;
}

uint64_t sub_100011284()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000034FC;

  return sub_10000E1D4(v2, v3);
}

uint64_t sub_100011330(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100011398()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000034F8;

  return sub_10000DE34(v2, v3);
}

uint64_t sub_10001144C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000110C8(a1, a2);
  }

  return a1;
}

uint64_t sub_100011468(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000034F8;

  return sub_10000B7CC(a1, v4, v5, v6);
}

uint64_t sub_10001151C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000034F8;

  return sub_100010838(a1, v5);
}

uint64_t sub_1000115D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000034FC;

  return sub_100010838(a1, v5);
}

uint64_t sub_10001168C(uint64_t *a1)
{
  v3 = **(v1 + 16);
  v4 = *a1;

  *a1 = v3;
  return swift_errorRetain();
}

uint64_t sub_1000116D8(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1000029A8(a1, &unk_100046AD0, &qword_10002B2D8);
  return sub_100011330(v3, a1, &unk_100046AD0, &qword_10002B2D8);
}

id sub_1000117C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedContactHandle();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100011818@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedSharedTripBlockedItem();
  result = sub_100029398();
  *a1 = result;
  return result;
}

id sub_1000118B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedHistoryMarkedLocation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100011964()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedCuratedCollection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100011A14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedHistoryCuratedCollection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100011AC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedVisit();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100011B1C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedVisit();
  result = sub_100029398();
  *a1 = result;
  return result;
}

uint64_t sub_100011B60@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedVisitedLocation();
  result = sub_100029398();
  *a1 = result;
  return result;
}

id sub_100011BFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedVisitedLocation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100011CAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedFavoriteItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100011D5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedCollectionTransitItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100011DB4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100028D08();
  v15 = *(v2 - 8);
  v3 = *(v15 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = [objc_opt_self() defaultManager];
  v10 = sub_100028F78();
  v11 = [v9 containerURLForSecurityApplicationGroupIdentifier:v10];

  if (v11)
  {
    sub_100028CE8();

    (*(v15 + 32))(v8, v6, v2);
    sub_100028CC8();
    (*(v15 + 8))(v8, v2);
    return (*(v15 + 56))(a1, 0, 1, v2);
  }

  else
  {
    v13 = *(v15 + 56);

    return v13(a1, 1, 1, v2);
  }
}

uint64_t sub_100011FCC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v37 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046750, qword_10002B660);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v33 - v4;
  v6 = sub_100028D08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v35 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100029128();
  if (qword_100046258 != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.MapsSync;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v11 = swift_allocObject();
  v36 = xmmword_10002AD50;
  *(v11 + 16) = xmmword_10002AD50;
  *(v11 + 56) = &type metadata for String;
  v12 = sub_1000022C4();
  *(v11 + 64) = v12;
  *(v11 + 32) = 0xD00000000000002FLL;
  *(v11 + 40) = 0x800000010002D870;
  sub_100028DE8();

  sub_100011DB4(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000A118(v5);
    sub_100029148();
    v13 = swift_allocObject();
    *(v13 + 16) = v36;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = v12;
    *(v13 + 32) = 0xD000000000000031;
    *(v13 + 40) = 0x800000010002D8B0;
    sub_100028DE8();

LABEL_8:
    v26 = 1;
    v25 = v37;
    return (*(v7 + 56))(v25, v26, 1, v6);
  }

  v33[1] = v10;
  v14 = v35;
  (*(v7 + 32))(v35, v5, v6);
  v15 = [objc_opt_self() defaultManager];
  sub_100028CB8(v16);
  v18 = v17;
  v39 = 0;
  v19 = [v15 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:&v39];

  v20 = v39;
  if (!v19)
  {
    v27 = v20;

    v28 = sub_100028C78();

    swift_willThrow();
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_100029388(45);
    v42._countAndFlagsBits = 0xD000000000000026;
    v42._object = 0x800000010002D8F0;
    sub_100028FE8(v42);
    sub_1000126AC();
    v43._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v43);

    v44._countAndFlagsBits = 8236;
    v44._object = 0xE200000000000000;
    sub_100028FE8(v44);
    v38 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
    sub_1000293C8();
    v45._countAndFlagsBits = 46;
    v45._object = 0xE100000000000000;
    sub_100028FE8(v45);
    v29 = v39;
    v30 = v40;
    sub_100029148();
    v31 = swift_allocObject();
    *(v31 + 16) = v36;
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = v12;
    *(v31 + 32) = v29;
    *(v31 + 40) = v30;
    sub_100028DE8();

    (*(v7 + 8))(v14, v6);
    goto LABEL_8;
  }

  v21 = v37;
  sub_100028CC8();

  v39 = 0;
  v40 = 0xE000000000000000;
  sub_100029388(21);

  v39 = 0xD000000000000013;
  v40 = 0x800000010002D920;
  sub_1000126AC();
  v41._countAndFlagsBits = sub_100029408();
  sub_100028FE8(v41);

  v22 = v39;
  v23 = v40;
  sub_100029128();
  v24 = swift_allocObject();
  *(v24 + 16) = v36;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = v12;
  *(v24 + 32) = v22;
  *(v24 + 40) = v23;
  sub_100028DE8();

  (*(v7 + 8))(v14, v6);
  v25 = v21;
  v26 = 0;
  return (*(v7 + 56))(v25, v26, 1, v6);
}

uint64_t sub_10001264C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1000126AC()
{
  result = qword_100046780;
  if (!qword_100046780)
  {
    sub_100028D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046780);
  }

  return result;
}

id sub_100012704(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100028F78();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_100028C78();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1000127E0()
{
  v0 = sub_100028F78();
  HasEntitlement = BSSelfTaskHasEntitlement();

  if (HasEntitlement)
  {
    v2 = objc_allocWithZone(LSApplicationRecord);
  }

  else
  {
    sub_100029148();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10002AD50;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_1000022C4();
    *(v3 + 32) = 0xD00000000000004BLL;
    *(v3 + 40) = 0x800000010002D9C0;
    sub_100028DE8();
  }

  return 1;
}

uint64_t sub_100012B64@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedFavoriteItem();
  result = sub_100029398();
  *a1 = result;
  return result;
}

id sub_100012C00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedServerEvaluationStatus();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100012CB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedHistoryItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100012D60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedRAPRecord();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100012DB8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedMixinMapItem();
  result = sub_100029398();
  *a1 = result;
  return result;
}

uint64_t sub_100012DFC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedReviewedPlace();
  result = sub_100029398();
  *a1 = result;
  return result;
}

id sub_100012E98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedHistoryDirectionsItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100012F48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedCachedUserReview();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100012FC4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedAnalyticsIdentifier();
  result = sub_100029398();
  *a1 = result;
  return result;
}

double sub_100013008()
{
  result = GEOMapItemEquivalenceDistanceThresholdForPOIDeduplication + 20.0;
  MapsSyncDeduplicationRadiusMeters = GEOMapItemEquivalenceDistanceThresholdForPOIDeduplication + 20.0;
  return result;
}

Swift::Double *MapsSyncDeduplicationRadiusMeters.unsafeMutableAddressor()
{
  if (qword_100046250 != -1)
  {
    swift_once();
  }

  return &MapsSyncDeduplicationRadiusMeters;
}

Swift::Bool __swiftcall MapsSyncIsHostedByMapsSyncDaemon()()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_100028F88();
    v4 = v3;

    if (v2 == 0xD000000000000018 && 0x800000010002C3C0 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_100029428();
    }
  }

  return v1 & 1;
}

Swift::Bool __swiftcall MapsSyncIsHostedByMapsApp()()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = [v1 bundleIdentifier];

  if (!v2)
  {
    sub_100028F88();
    goto LABEL_10;
  }

  v3 = sub_100028F88();
  v5 = v4;

  v6 = sub_100028F88();
  if (!v5)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v3 == v6 && v5 == v7)
  {

LABEL_17:

    goto LABEL_18;
  }

  v9 = sub_100029428();

  if (v9)
  {
    goto LABEL_18;
  }

LABEL_11:
  v10 = [v0 mainBundle];
  v11 = [v10 bundleIdentifier];

  if (!v11)
  {
    return 0;
  }

  v12 = sub_100028F88();
  v14 = v13;

  if (v12 == 0xD000000000000012 && 0x800000010002DD60 == v14)
  {
    goto LABEL_17;
  }

  v15 = sub_100029428();

  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  v17 = objc_opt_self();
  v18 = [v17 processInfo];
  v19 = [v18 processName];

  v20 = sub_100028F88();
  v22 = v21;

  if (v20 == 1936744781 && v22 == 0xE400000000000000)
  {
    goto LABEL_20;
  }

  v23 = sub_100029428();

  if (v23)
  {
    return 1;
  }

  v24 = [v17 processInfo];
  v25 = [v24 processName];

  v26 = sub_100028F88();
  v28 = v27;

  if (v26 == 0x7370614D6F6E614ELL && v28 == 0xE800000000000000)
  {
LABEL_20:

    return 1;
  }

  v29 = sub_100029428();

  return v29 & 1;
}

id MapsSyncCategoryForMapItem(mapItem:)(void *a1)
{
  swift_getObjectType();

  return sub_100013678(a1);
}

id MapsSyncClassTypeForMapItem(mapItem:)(void *a1)
{
  result = [a1 _clientAttributes];
  if (result)
  {
    v2 = result;
    v3 = [result mapsSyncAttributes];

    if (!v3)
    {
      return 0;
    }

    v4 = [v3 mapsSyncObjectType];

    if (!v4)
    {
      return 0;
    }

    sub_100028F88();

    v5 = sub_100028F78();

    v6 = NSClassFromString(v5);

    if (v6)
    {
      return swift_getObjCClassMetadata();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t MapsSyncObjectIdentifierForMapItem(mapItem:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 _clientAttributes];
  if (v3 && (v4 = v3, v5 = [v3 mapsSyncAttributes], v4, v5) && (v6 = objc_msgSend(v5, "mapsSyncIdentifier"), v5, v6))
  {
    sub_100028F88();

    sub_100028DA8();
  }

  else
  {
    v8 = sub_100028DD8();
    v9 = *(*(v8 - 8) + 56);

    return v9(a2, 1, 1, v8);
  }
}

id sub_100013678(void *a1)
{
  v26 = sub_100028C98();
  v23 = *(v26 - 8);
  v2 = *(v23 + 64);
  v3 = __chkstk_darwin(v26);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v22 - v6;
  v32 = &_swiftEmptySetSingleton;
  v8 = [a1 _place];
  v9 = [v8 firstBusiness];

  v10 = [v9 localizedCategories];
  if (!v10)
  {
    sub_100003E20(0, &qword_100046F98, NSMutableArray_ptr);
    v10 = sub_100029248();
  }

  sub_100029258();

  sub_100028C88();
  if (!v31)
  {
LABEL_16:
    (*(v23 + 8))(v7, v26);
    v30 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100047300, &qword_10002BEC0);
    sub_100013A34();
    sub_100001FC0();
    v21 = sub_100029018();

    return v21;
  }

  v11 = sub_100003E20(0, &qword_100046FA8, GEOCategory_ptr);
  v24 = (v23 + 8);
  v25 = v11;
  while (1)
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_6;
    }

    v12 = v7;
    v13 = v28;
    v14 = [v28 localizedNames];
    if (!v14)
    {
      sub_100003E20(0, &qword_100046F98, NSMutableArray_ptr);
      v14 = sub_100029248();
    }

    sub_100029258();

    sub_100028C88();
    if (v29)
    {
      break;
    }

LABEL_5:
    (*v24)(v5, v26);

    v7 = v12;
LABEL_6:
    sub_100028C88();
    if (!v31)
    {
      goto LABEL_16;
    }
  }

  sub_100003E20(0, &qword_100047320, GEOLocalizedName_ptr);
  while ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    sub_100028C88();
    if (!v29)
    {
      goto LABEL_5;
    }
  }

  v15 = v27;
  result = [v27 name];
  if (result)
  {
    v17 = result;
    v18 = sub_100028F88();
    v20 = v19;

    sub_100027D44(&v27, v18, v20);

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_100013A34()
{
  result = qword_100046FA0;
  if (!qword_100046FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_100047300, &qword_10002BEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046FA0);
  }

  return result;
}

id sub_100013AF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedCachedCuratedCollection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100013BA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedCommunityID();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100013C44(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (qword_100046258 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10002AD50;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_1000022C4();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  sub_100028DE8();
}

uint64_t *OS_os_log.MapsSync.unsafeMutableAddressor()
{
  if (qword_100046258 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.MapsSync;
}

uint64_t sub_100013E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1000140D8();
  result = sub_1000292A8();
  *a4 = result;
  return result;
}

uint64_t *OS_os_log.Signpost.unsafeMutableAddressor()
{
  if (qword_100046260 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.Signpost;
}

id sub_100013EDC(void *a1, void **a2)
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

uint64_t sub_100013FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5();
  if (qword_100046258 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10002B870;
  *(v9 + 56) = &type metadata for String;
  v10 = sub_1000022C4();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v10;
  *(v9 + 64) = v10;
  *(v9 + 72) = a3;
  *(v9 + 80) = a4;

  sub_100028DE8();
}

unint64_t sub_1000140D8()
{
  result = qword_100047000;
  if (!qword_100047000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100047000);
  }

  return result;
}

id sub_10001417C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedCollectionItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10001422C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100014284@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedCollectionItem();
  result = sub_100029398();
  *a1 = result;
  return result;
}

uint64_t sub_1000142CC(uint64_t a1)
{
  result = 0xD000000000000010;
  if (a1 > 2)
  {
    if (a1 <= 4)
    {
      if (a1 == 3)
      {
        return 0xD00000000000001BLL;
      }

      return result;
    }

    if (a1 == 5)
    {
      return 0xD000000000000016;
    }

    if (a1 == 6)
    {
      return 0xD00000000000002ALL;
    }

LABEL_16:
    result = sub_100029458();
    __break(1u);
    return result;
  }

  if (!a1)
  {
    return 0xD000000000000015;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ALL;
  }

  if (a1 != 2)
  {
    goto LABEL_16;
  }

  return result;
}

Swift::Int sub_100014434()
{
  v2 = *v0;
  sub_1000294B8();
  sub_100028F58();
  return sub_1000294E8();
}

uint64_t sub_100014498(uint64_t a1, uint64_t a2)
{
  v4 = sub_100014834();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000144E4()
{
  v2 = *v0;
  sub_1000294B8();
  sub_100028F58();
  return sub_1000294E8();
}

unint64_t sub_100014544@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100014658(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100014584(uint64_t a1)
{
  v2 = sub_100014834();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_1000145C0(uint64_t a1)
{
  v2 = sub_100014834();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_100014604(uint64_t a1, uint64_t a2)
{
  v4 = sub_100014834();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

unint64_t sub_100014658(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10001466C()
{
  result = qword_100047058;
  if (!qword_100047058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047058);
  }

  return result;
}

unint64_t sub_1000146C4()
{
  result = qword_100047060;
  if (!qword_100047060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047060);
  }

  return result;
}

unint64_t sub_10001471C()
{
  result = qword_100047068;
  if (!qword_100047068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047068);
  }

  return result;
}

unint64_t sub_100014774()
{
  result = qword_100047070;
  if (!qword_100047070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047070);
  }

  return result;
}

unint64_t sub_1000147CC()
{
  result = qword_100047078;
  if (!qword_100047078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047078);
  }

  return result;
}

unint64_t sub_100014834()
{
  result = qword_100047080;
  if (!qword_100047080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047080);
  }

  return result;
}

uint64_t sub_100014890@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedContactHandle();
  result = sub_100029398();
  *a1 = result;
  return result;
}

id sub_10001492C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedUserRoute();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000149DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedCollectionPlaceItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100014A34@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedUserRoute();
  result = sub_100029398();
  *a1 = result;
  return result;
}

id sub_100014AD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedCollection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100014B28@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedCommunityID();
  result = sub_100029398();
  *a1 = result;
  return result;
}

uint64_t sub_100014B6C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedServerEvaluationStatus();
  result = sub_100029398();
  *a1 = result;
  return result;
}

uint64_t sub_100014BB0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedHistoryItem();
  result = sub_100029398();
  *a1 = result;
  return result;
}

uint64_t sub_100014BF4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedCachedCuratedCollection();
  result = sub_100029398();
  *a1 = result;
  return result;
}

uint64_t sub_100014C38@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedCuratedCollection();
  result = sub_100029398();
  *a1 = result;
  return result;
}

id sub_100014CD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedHistoryRideShareItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100014D2C(uint64_t a1)
{
  v38 = _swiftEmptyArrayStorage;
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  v39 = *(a1 + 24);
  v40 = *(a1 + 40);
  v5 = *(&v39 + 1);
  v4 = v39;
  v6 = v40;
  v7 = *(a1 + 48);
  v41 = v7;
  v37 = v3;
  v31 = *(a1 + 32);
  v32 = *(a1 + 24);
  v36 = v40;
  sub_1000277FC(v2, v1, v3);
  sub_1000277FC(v2, v1, v3);
  sub_100011330(&v39, v35, &qword_100047378, &qword_10002BF10);
  result = sub_100011330(&v41, v35, &qword_100047380, &qword_10002BF18);
  if (v3 & 1) != 0 || (v6)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v33 = v1;
  if (v1 != v5)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v9 = v2;
  if (v2 != v4)
  {
    v12 = v33;
    v34 = v2;
    while (v2 >= v9)
    {
      if (v2 >= v4)
      {
        goto LABEL_28;
      }

      if (v2 < 0)
      {
        goto LABEL_29;
      }

      v13 = 1 << *(v7 + 32);
      if (v2 >= v13)
      {
        goto LABEL_29;
      }

      v14 = v2 >> 6;
      v15 = *(v7 + 56 + 8 * (v2 >> 6));
      if (((v15 >> v2) & 1) == 0)
      {
        goto LABEL_30;
      }

      if (*(v7 + 36) != v5)
      {
        goto LABEL_31;
      }

      v16 = *(v7 + 48) + 16 * v2;
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = v15 & (-2 << (v2 & 0x3F));
      if (v19)
      {
        v2 = __clz(__rbit64(v19)) | v2 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v5;
        v21 = v4;
        v22 = v14 << 6;
        v23 = v14 + 1;
        v24 = (v7 + 64 + 8 * v14);
        while (v23 < (v13 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            v27 = v21;
            sub_1000277FC(v21, v20, 0);
            sub_100027808(v2, v12, 0);
            v28 = __rbit64(v25);
            v4 = v27;
            v2 = __clz(v28) + v22;
            v5 = v20;
            v9 = v34;
            goto LABEL_20;
          }
        }

        v4 = v21;
        v5 = v20;
        sub_1000277FC(v21, v20, 0);
        sub_100027808(v2, v12, 0);
        v2 = v13;
        v9 = v34;
      }

LABEL_20:
      v12 = *(v7 + 36);
      sub_100003E20(0, &qword_100046B10, NSPredicate_ptr);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_10002B870;
      *(v29 + 56) = &type metadata for Int64;
      *(v29 + 64) = &protocol witness table for Int64;
      *(v29 + 32) = v17;
      *(v29 + 96) = &type metadata for Int32;
      *(v29 + 104) = &protocol witness table for Int32;
      *(v29 + 72) = v18;
      sub_100029118();
      sub_100029028();
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100029058();
      }

      result = sub_100029068();
      if (v12 != v5)
      {
        goto LABEL_26;
      }

      if (v2 == v4)
      {
        v10 = v38;
        v11 = v33;
        goto LABEL_25;
      }
    }

    goto LABEL_27;
  }

  v10 = _swiftEmptyArrayStorage;
  v11 = v33;
  v12 = v33;
LABEL_25:
  v30 = v36;
  sub_100027808(v9, v11, v37);
  sub_100027808(v32, v31, v30);

  sub_100027808(v4, v12, 0);
  return v10;
}

uint64_t sub_100015170()
{
  v1 = v0[2];
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD00000000000001ALL, 0x800000010002E490);
  v2 = sub_100021D28(type metadata accessor for MapsSyncManagedCollectionPlaceItem);
  v0[3] = v2;
  v3 = *(v1 + 88);
  v0[4] = v3;
  swift_retain_n();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_100015288;
  v5 = v0[2];

  return sub_10001D690(v2, v3, 0, 0, v5, sub_100026CD8, v5);
}

uint64_t sub_100015288()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_100027CE4;
  }

  else
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);

    v4 = sub_1000153A8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000153A8()
{
  v1 = v0[2];
  v2 = sub_100021D28(type metadata accessor for MapsSyncManagedFavoriteItem);
  v0[7] = v2;
  swift_retain_n();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_10001549C;
  v4 = v0[4];
  v5 = v0[2];

  return sub_10001E608(v2, v4, 0, 0, v5, sub_100026CE0, v5);
}

uint64_t sub_10001549C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_100027CE8;
  }

  else
  {
    v5 = *(v2 + 56);
    v6 = *(v2 + 16);

    v4 = sub_1000155C0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000155C0()
{
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD000000000000023, 0x800000010002E4B0);
  v1 = *(v0 + 8);

  return v1();
}

void sub_100015638()
{
  v1 = [objc_opt_self() sharedScheduler];
  v2 = sub_100028F78();
  v3 = *(v0 + 40);
  v5[4] = sub_1000274B4;
  v6 = v0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100017058;
  v5[3] = &block_descriptor_78;
  v4 = _Block_copy(v5);

  [v1 registerForTaskWithIdentifier:v2 usingQueue:v3 launchHandler:v4];
  _Block_release(v4);
}

void sub_100015758()
{
  v1 = [objc_opt_self() sharedScheduler];
  v2 = sub_100028F78();
  v3 = *(v0 + 40);
  v5[4] = sub_1000273A0;
  v6 = v0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100017058;
  v5[3] = &block_descriptor_66;
  v4 = _Block_copy(v5);

  [v1 registerForTaskWithIdentifier:v2 usingQueue:v3 launchHandler:v4];
  _Block_release(v4);
}

uint64_t sub_100015878()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046750, qword_10002B660);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v42 - v3;
  v5 = sub_100028D08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MapsSyncUtil();
  sub_100011FCC(1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000029A8(v4, &qword_100046750, qword_10002B660);
    return 0;
  }

  (*(v6 + 32))(v9, v4, v5);
  v11 = *(v0 + 16);
  v12 = [v11 persistentStoreCoordinator];
  sub_100028CB8(v13);
  v15 = v14;
  v16 = [v12 persistentStoreForURL:v14];

  if (v16)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1000472B0, &unk_10002BE70);
    inited = swift_initStackObject();
    v42 = xmmword_10002AD50;
    *(inited + 16) = xmmword_10002AD50;
    v45 = sub_100028F88();
    v46 = v18;
    sub_100029348();
    *(inited + 96) = &type metadata for Bool;
    *(inited + 72) = 1;
    sub_100026B8C(inited);
    swift_setDeallocating();
    sub_1000029A8(inited + 32, &qword_100046778, &unk_10002AFE0);
    v19 = [v11 persistentStoreCoordinator];
    v20 = NSSQLiteStoreType;
    v21 = sub_100028F78();
    sub_100028CB8(v22);
    v24 = v23;
    isa = sub_100028F28().super.isa;

    v45 = 0;
    v26 = [v19 addPersistentStoreWithType:v20 configuration:v21 URL:v24 options:isa error:&v45];

    if (!v26)
    {
      v28 = v45;
      v29 = sub_100028C78();

      swift_willThrow();
      v44 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
      sub_100003E20(0, &qword_1000472C8, NSError_ptr);
      swift_dynamicCast();
      v30 = v43;
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_100029388(23);

      v45 = 0xD000000000000011;
      v46 = 0x800000010002E470;
      v31 = [v30 description];
      v32 = sub_100028F88();
      v34 = v33;

      v47._countAndFlagsBits = v32;
      v47._object = v34;
      sub_100028FE8(v47);

      v48._countAndFlagsBits = 8236;
      v48._object = 0xE200000000000000;
      sub_100028FE8(v48);
      v35 = [v30 userInfo];
      sub_100028F38();

      v36 = sub_100028F48();
      v38 = v37;

      v49._countAndFlagsBits = v36;
      v49._object = v38;
      sub_100028FE8(v49);

      v39 = v45;
      v40 = v46;
      sub_100029148();
      if (qword_100046258 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
      v41 = swift_allocObject();
      *(v41 + 16) = v42;
      *(v41 + 56) = &type metadata for String;
      *(v41 + 64) = sub_1000022C4();
      *(v41 + 32) = v39;
      *(v41 + 40) = v40;
      sub_100028DE8();

      (*(v6 + 8))(v9, v5);

      return 0;
    }

    v27 = v45;
  }

  (*(v6 + 8))(v9, v5);
  return 1;
}

uint64_t sub_100015E78()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100015EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a5;
  v6 = swift_task_alloc();
  *(v5 + 48) = v6;
  *v6 = v5;
  v6[1] = sub_100015F88;

  return sub_100016310();
}

uint64_t sub_100015F88()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_100016120;
  }

  else
  {
    v3 = sub_10001609C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001609C()
{
  [*(v0 + 40) setTaskCompleted];
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD000000000000017, 0x800000010002E6D0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100016120()
{
  v1 = *(v0 + 56);
  sub_100029388(37);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000023;
  v9._object = 0x800000010002E670;
  sub_100028FE8(v9);
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
  sub_1000293C8();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_100029148();
  if (qword_100046258 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10002AD50;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_1000022C4();
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  sub_100028DE8();

  [*(v0 + 40) setTaskCompleted];
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD000000000000017, 0x800000010002E6D0);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100016330()
{
  v1 = v0[8];
  if (*(v1 + 108) == 1)
  {
    sub_10001796C();
    if (sub_1000290E8())
    {
      goto LABEL_16;
    }

    v1 = v0[8];
  }

  if (*(v1 + 107) == 1)
  {
    sub_100017AC4();
    if (sub_1000290E8())
    {
      goto LABEL_16;
    }

    v1 = v0[8];
  }

  if (*(v1 + 109) == 1)
  {
    sub_100017CA0();
    if (sub_1000290E8())
    {
      goto LABEL_16;
    }

    v1 = v0[8];
  }

  v2 = *(v1 + 32);
  v0[9] = v2;
  if (v2)
  {
    v2;
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_10001649C;

    return sub_1000102C4();
  }

  if (*(v1 + 104) == 1)
  {
    sub_100018AB0();
    sub_1000290E8();
  }

LABEL_16:
  v5 = v0[1];

  return v5();
}

uint64_t sub_10001649C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_100016F14;
  }

  else
  {
    *(v4 + 120) = a1 & 1;
    v7 = sub_1000165CC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000165CC()
{
  if (*(v0 + 120) != 1)
  {
    goto LABEL_21;
  }

  v1 = *(v0 + 64);
  if (*(v1 + 106) == 1)
  {
    sub_100017D4C();
    if (sub_1000290E8())
    {
LABEL_7:

LABEL_24:
      v13 = *(v0 + 8);

      return v13();
    }

    v1 = *(v0 + 64);
  }

  if (*(v1 + 105) == 1)
  {
    sub_100017EA4();
    if (sub_1000290E8())
    {
      goto LABEL_7;
    }

    v1 = *(v0 + 64);
  }

  if (*(v1 + 110) == 1)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_1000168D0;
    v3 = *(v0 + 64);

    return sub_100017FFC();
  }

  if (*(v1 + 111) != 1)
  {
    if (*(v1 + 112) == 1)
    {
      v7 = *(v1 + 24);
      v8 = swift_allocObject();
      *(v8 + 16) = sub_100027634;
      *(v8 + 24) = v1;
      *(v0 + 48) = sub_100027D6C;
      *(v0 + 56) = v8;
      *(v0 + 16) = _NSConcreteStackBlock;
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_100015128;
      *(v0 + 40) = &block_descriptor_94;
      v9 = _Block_copy((v0 + 16));
      v10 = *(v0 + 56);

      [v7 performBlockAndWait:v9];
      _Block_release(v9);
      LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

      if (v7)
      {
        __break(1u);
        return result;
      }

      v11 = *(v0 + 72);
      v12 = sub_1000290E8();

      if (v12)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

LABEL_21:

LABEL_22:
    if (*(*(v0 + 64) + 104) == 1)
    {
      sub_100018AB0();
      sub_1000290E8();
    }

    goto LABEL_24;
  }

  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_100016C30;
  v6 = *(v0 + 64);

  return sub_100015150();
}

uint64_t sub_1000168D0()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_100016F90;
  }

  else
  {
    v3 = sub_1000169E4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000169E4()
{
  if (sub_1000290E8())
  {

    goto LABEL_3;
  }

  v3 = *(v0 + 64);
  if (*(v3 + 111) != 1)
  {
    if (*(v3 + 112) == 1)
    {
      v6 = *(v3 + 24);
      v7 = swift_allocObject();
      *(v7 + 16) = sub_100027634;
      *(v7 + 24) = v3;
      *(v0 + 48) = sub_100027D6C;
      *(v0 + 56) = v7;
      *(v0 + 16) = _NSConcreteStackBlock;
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_100015128;
      *(v0 + 40) = &block_descriptor_94;
      v8 = _Block_copy((v0 + 16));
      v9 = *(v0 + 56);

      [v6 performBlockAndWait:v8];
      _Block_release(v8);
      LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

      if (v6)
      {
        __break(1u);
        return result;
      }

      v10 = *(v0 + 72);
      v11 = sub_1000290E8();

      if (v11)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    if (*(*(v0 + 64) + 104) == 1)
    {
      sub_100018AB0();
      sub_1000290E8();
    }

LABEL_3:
    v1 = *(v0 + 8);

    return v1();
  }

  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_100016C30;
  v5 = *(v0 + 64);

  return sub_100015150();
}

uint64_t sub_100016C30()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_100016FF4;
  }

  else
  {
    v3 = sub_100016D44;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100016D44()
{
  if (sub_1000290E8())
  {

    goto LABEL_10;
  }

  v1 = v0[8];
  if (*(v1 + 112) != 1)
  {

LABEL_8:
    if (*(v0[8] + 104) == 1)
    {
      sub_100018AB0();
      sub_1000290E8();
    }

    goto LABEL_10;
  }

  v2 = *(v1 + 24);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100027634;
  *(v3 + 24) = v1;
  v0[6] = sub_100027D6C;
  v0[7] = v3;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100015128;
  v0[5] = &block_descriptor_94;
  v4 = _Block_copy(v0 + 2);
  v5 = v0[7];

  [v2 performBlockAndWait:v4];
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
    return result;
  }

  v7 = v0[9];
  v8 = sub_1000290E8();

  if ((v8 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  v9 = v0[1];

  return v9();
}

uint64_t sub_100016F14()
{
  if (*(*(v0 + 64) + 104) == 1)
  {
    sub_100018AB0();
    sub_1000290E8();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100016F90()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100016FF4()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

void sub_100017058(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1000170C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046B40, &qword_10002B318);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = aBlock - v13;
  v15 = sub_1000290C8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a2;
  v16[5] = a1;

  v17 = a1;
  v18 = sub_10000BAC8(0, 0, v14, a4, v16);
  aBlock[4] = a5;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005AF0;
  aBlock[3] = a6;
  v19 = _Block_copy(aBlock);

  [v17 setExpirationHandler:v19];
  _Block_release(v19);
}

uint64_t sub_10001726C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_10001728C, 0, 0);
}

uint64_t sub_10001728C()
{
  v1 = *(*(v0 + 40) + 32);
  *(v0 + 56) = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_100017394;

    return sub_1000102C4();
  }

  else
  {
    [*(v0 + 48) setTaskCompleted];
    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD00000000000001BLL, 0x800000010002E650);
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100017394(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_1000175D4;
  }

  else
  {
    *(v4 + 88) = a1 & 1;
    v7 = sub_1000174C4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000174C4()
{
  if (*(v0 + 88) == 1 && *(*(v0 + 40) + 111) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 72) = v1;
    *v1 = v0;
    v1[1] = sub_100017660;
    v2 = *(v0 + 40);

    return sub_100015150();
  }

  else
  {

    [*(v0 + 48) setTaskCompleted];
    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD00000000000001BLL, 0x800000010002E650);
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1000175D4()
{
  [*(v0 + 48) setTaskCompleted];
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD00000000000001BLL, 0x800000010002E650);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100017660()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100017774;
  }

  else
  {
    v3 = sub_100027D48;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100017774()
{
  v1 = *(v0 + 80);

  sub_100029388(37);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000023;
  v9._object = 0x800000010002E670;
  sub_100028FE8(v9);
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
  sub_1000293C8();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_100029148();
  if (qword_100046258 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10002AD50;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_1000022C4();
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  sub_100028DE8();

  [*(v0 + 48) setTaskCompleted];
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD00000000000001BLL, 0x800000010002E650);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10001796C()
{
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD00000000000001ALL, 0x800000010002E6F0);
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_10002763C;
  *(v2 + 24) = v0;
  v5[4] = sub_100027D6C;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100015128;
  v5[3] = &block_descriptor_104;
  v3 = _Block_copy(v5);

  [v1 performBlockAndWait:v3];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100017AC4()
{
  aBlock = 0;
  v6 = 0xE000000000000000;
  sub_100029388(55);
  v12._object = 0x800000010002E760;
  v12._countAndFlagsBits = 0xD00000000000002FLL;
  sub_100028FE8(v12);
  v11 = *(v0 + 56);
  v13._countAndFlagsBits = sub_100029408();
  sub_100028FE8(v13);

  v14._countAndFlagsBits = 0x297379616420;
  v14._object = 0xE600000000000000;
  sub_100028FE8(v14);
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0, 0xE000000000000000);

  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_100027644;
  *(v2 + 24) = v0;
  v9 = sub_100027D6C;
  v10 = v2;
  aBlock = _NSConcreteStackBlock;
  v6 = 1107296256;
  v7 = sub_100015128;
  v8 = &block_descriptor_111;
  v3 = _Block_copy(&aBlock);

  [v1 performBlockAndWait:v3];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100017CA0()
{
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD000000000000025, 0x800000010002E870);
  v1 = *(v0 + 24);
  sub_100029218();
}

uint64_t sub_100017D4C()
{
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD00000000000001CLL, 0x800000010002E980);
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_100027814;
  *(v2 + 24) = v0;
  v5[4] = sub_100027D6C;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100015128;
  v5[3] = &block_descriptor_118;
  v3 = _Block_copy(v5);

  [v1 performBlockAndWait:v3];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100017EA4()
{
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD00000000000001ALL, 0x800000010002EA60);
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_100027880;
  *(v2 + 24) = v0;
  v5[4] = sub_100027D6C;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100015128;
  v5[3] = &block_descriptor_125;
  v3 = _Block_copy(v5);

  [v1 performBlockAndWait:v3];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001801C()
{
  v1 = v0[2];
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD000000000000014, 0x800000010002EAA0);
  v2 = sub_10001B9F4(type metadata accessor for MapsSyncManagedCollectionPlaceItem);
  v0[3] = v2;
  v3 = *(v1 + 88);
  v0[4] = v3;
  swift_retain_n();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_100018130;
  v5 = v0[2];

  return sub_10001DB7C(v2, v3, sub_100027888, v1, v5, v5);
}

uint64_t sub_100018130()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_100018904;
  }

  else
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);

    v4 = sub_100018250;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100018250()
{
  v1 = v0[2];
  v2 = sub_10001B9F4(type metadata accessor for MapsSyncManagedHistoryPlaceItem);
  v0[7] = v2;
  swift_retain_n();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_100018340;
  v4 = v0[4];
  v5 = v0[2];

  return sub_10001F5E4(v2, v4, sub_1000278B8, v1, v5, v5);
}

uint64_t sub_100018340()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_10001896C;
  }

  else
  {
    v5 = *(v2 + 56);
    v6 = *(v2 + 16);

    v4 = sub_100018464;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100018464()
{
  v1 = v0[2];
  v2 = sub_10001B9F4(type metadata accessor for MapsSyncManagedFavoriteItem);
  v0[10] = v2;
  swift_retain_n();
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_100018554;
  v4 = v0[4];
  v5 = v0[2];

  return sub_10001EAF4(v2, v4, sub_1000278E8, v1, v5, v5);
}

uint64_t sub_100018554()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1000189D8;
  }

  else
  {
    v5 = *(v2 + 80);
    v6 = *(v2 + 16);

    v4 = sub_100018678;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100018678()
{
  v1 = v0[2];
  v2 = sub_10001B9F4(type metadata accessor for MapsSyncManagedReviewedPlace);
  v0[13] = v2;
  swift_retain_n();
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_100018768;
  v4 = v0[4];
  v5 = v0[2];

  return sub_100020070(v2, v4, sub_100027918, v1, v5, v5);
}

uint64_t sub_100018768()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_100018A44;
  }

  else
  {
    v5 = *(v2 + 104);
    v6 = *(v2 + 16);

    v4 = sub_10001888C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001888C()
{
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD00000000000001DLL, 0x800000010002EAC0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100018904()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = v0[3];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10001896C()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[2];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000189D8()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[2];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100018A44()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[2];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100018AB0()
{
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD00000000000001FLL, 0x800000010002EC70);
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_100027BCC;
  *(v2 + 24) = v0;
  v5[4] = sub_100027D6C;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100015128;
  v5[3] = &block_descriptor_241;
  v3 = _Block_copy(v5);

  [v1 performBlockAndWait:v3];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

void sub_100018C08(uint64_t a1)
{
  v5 = sub_100028D98();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 64);
  if (v10 == 0x8000000000000000)
  {
    __break(1u);
    goto LABEL_21;
  }

  if ((-v10 * 86400) >> 64 != (-86400 * v10) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_100028D68();
  v11 = objc_opt_self();
  isa = sub_100028D48().super.isa;
  v1 = [v11 deleteHistoryBeforeDate:isa];

  [v1 setResultType:0];
  v13 = *(a1 + 24);
  *&v25 = 0;
  v14 = [v13 executeRequest:v1 error:&v25];
  v15 = v25;
  if (!v14)
  {
    v19 = v25;
    v20 = sub_100028C78();

    swift_willThrow();
    *&v25 = 0;
    *(&v25 + 1) = 0xE000000000000000;
    sub_100029388(29);
    v27._object = 0x800000010002EA20;
    v27._countAndFlagsBits = 0xD00000000000001BLL;
    sub_100028FE8(v27);
    *&v23 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
    sub_1000293C8();
    v3 = *(&v25 + 1);
    v2 = v25;
    sub_100029148();
    if (qword_100046258 == -1)
    {
LABEL_8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_10002AD50;
      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = sub_1000022C4();
      *(v21 + 32) = v2;
      *(v21 + 40) = v3;
      sub_100028DE8();

LABEL_9:
      (*(v6 + 8))(v9, v5);
      return;
    }

LABEL_22:
    swift_once();
    goto LABEL_8;
  }

  v16 = v14;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  v18 = v15;
  if (!v17)
  {

    (*(v6 + 8))(v9, v5);
    v25 = 0u;
    v26 = 0u;
LABEL_17:
    sub_1000029A8(&v25, &qword_100047350, &qword_10002B2E0);
    return;
  }

  if ([v17 result])
  {
    sub_1000292D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (!*(&v24 + 1))
  {
    (*(v6 + 8))(v9, v5);

    goto LABEL_17;
  }

  if (swift_dynamicCast())
  {
    if (v23)
    {
      *&v25 = 0;
      *(&v25 + 1) = 0xE000000000000000;
      sub_100029388(57);
      v28._countAndFlagsBits = 0xD000000000000037;
      v28._object = 0x800000010002EC90;
      sub_100028FE8(v28);
      sub_100027BD4(&unk_100046AF0, &type metadata accessor for Date);
      v29._countAndFlagsBits = sub_100029408();
      sub_100028FE8(v29);

      _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v25, *(&v25 + 1));

      goto LABEL_9;
    }

    (*(v6 + 8))(v9, v5);
  }

  else
  {
    (*(v6 + 8))(v9, v5);
  }
}

void sub_100019130(uint64_t a1)
{
  type metadata accessor for MapsSyncManagedMixinMapItem();
  v2 = [swift_getObjCClassFromMetadata() entity];
  v3 = [objc_allocWithZone(NSBatchUpdateRequest) initWithEntity:v2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1000472B0, &unk_10002BE70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10002AD50;
  *&v20 = 0xD000000000000010;
  *(&v20 + 1) = 0x800000010002C720;
  sub_100029348();
  *(inited + 96) = sub_100028D98();
  __swift_allocate_boxed_opaque_existential_0((inited + 72));
  sub_100028D88();
  sub_100026B8C(inited);
  swift_setDeallocating();
  sub_1000029A8(inited + 32, &qword_100046778, &unk_10002AFE0);
  isa = sub_100028F28().super.isa;

  [v3 setPropertiesToUpdate:isa];

  [v3 setResultType:2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046758, &qword_10002BEB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10002BCF0;
  sub_100003E20(0, &qword_100046B10, NSPredicate_ptr);
  *(v6 + 32) = sub_100029118();
  *(v6 + 40) = sub_100029118();
  *(v6 + 48) = sub_100029118();
  *(v6 + 56) = sub_100029118();
  v7 = sub_100029038().super.isa;

  v8 = [objc_opt_self() andPredicateWithSubpredicates:v7];

  [v3 setPredicate:v8];
  v9 = *(a1 + 24);
  *&v20 = 0;
  v10 = [v9 executeRequest:v3 error:&v20];
  v11 = v20;
  if (v10)
  {
    v12 = v10;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    v14 = v11;
    if (v13)
    {
      if ([v13 result])
      {
        sub_1000292D8();
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0u;
        v19 = 0u;
      }

      v20 = v18;
      v21 = v19;
      if (*(&v19 + 1))
      {
        if (swift_dynamicCast())
        {
          *&v20 = 0;
          *(&v20 + 1) = 0xE000000000000000;
          sub_100029388(35);

          strcpy(&v20, "Added date to ");
          HIBYTE(v20) = -18;
          v23._countAndFlagsBits = sub_100029408();
          sub_100028FE8(v23);

          v24._object = 0x800000010002EA40;
          v24._countAndFlagsBits = 0xD000000000000013;
          sub_100028FE8(v24);
          _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v20, *(&v20 + 1));
        }

        else
        {
        }

        return;
      }
    }

    else
    {

      v20 = 0u;
      v21 = 0u;
    }

    sub_1000029A8(&v20, &qword_100047350, &qword_10002B2E0);
    return;
  }

  v15 = v20;
  sub_100028C78();

  swift_willThrow();
  *&v20 = 0;
  *(&v20 + 1) = 0xE000000000000000;
  sub_100029388(29);
  v22._countAndFlagsBits = 0xD00000000000001BLL;
  v22._object = 0x800000010002EA20;
  sub_100028FE8(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
  sub_1000293C8();
  v16 = v20;
  sub_100029148();
  if (qword_100046258 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10002AD50;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_1000022C4();
  *(v17 + 32) = v16;
  sub_100028DE8();
}

void sub_10001973C(uint64_t a1)
{
  type metadata accessor for MapsSyncManagedMixinMapItem();
  v7 = [swift_getObjCClassFromMetadata() fetchRequest];
  v8 = *(a1 + 72);
  if (v8 == 0x8000000000000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  v9 = -v8;
  v10 = -86400 * v8;
  if ((v9 * 86400) >> 64 != v10 >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v1 = v7;
  v11 = [objc_allocWithZone(NSDate) initWithTimeIntervalSinceNow:v10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046758, &qword_10002BEB0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10002BCF0;
  sub_100003E20(0, &qword_100046B10, NSPredicate_ptr);
  *(v12 + 32) = sub_100029118();
  *(v12 + 40) = sub_100029118();
  *(v12 + 48) = sub_100029118();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v13 = swift_allocObject();
  v28 = xmmword_10002AD50;
  *(v13 + 16) = xmmword_10002AD50;
  *(v13 + 56) = sub_100003E20(0, &qword_100047358, NSDate_ptr);
  *(v13 + 64) = sub_10002764C();
  *(v13 + 32) = v11;
  v2 = v11;
  *(v12 + 56) = sub_100029118();
  isa = sub_100029038().super.isa;

  v15 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v1 setPredicate:v15];
  v3 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v1];
  [v3 setResultType:2];
  v16 = *(a1 + 24);
  *&v31 = 0;
  v17 = [v16 executeRequest:v3 error:&v31];
  v18 = v31;
  if (!v17)
  {
    v22 = v31;
    sub_100028C78();

    swift_willThrow();
    *&v31 = 0;
    *(&v31 + 1) = 0xE000000000000000;
    sub_100029388(29);
    v33._countAndFlagsBits = 0xD00000000000001BLL;
    v33._object = 0x800000010002EA20;
    sub_100028FE8(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
    sub_1000293C8();
    v5 = *(&v31 + 1);
    v4 = v31;
    sub_100029148();
    if (qword_100046258 == -1)
    {
LABEL_8:
      v23 = swift_allocObject();
      *(v23 + 16) = v28;
      *(v23 + 56) = &type metadata for String;
      *(v23 + 64) = sub_1000022C4();
      *(v23 + 32) = v4;
      *(v23 + 40) = v5;
      sub_100028DE8();

      return;
    }

LABEL_19:
    swift_once();
    goto LABEL_8;
  }

  v19 = v17;
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  v21 = v18;
  if (!v20)
  {

    v31 = 0u;
    v32 = 0u;
LABEL_15:
    sub_1000029A8(&v31, &qword_100047350, &qword_10002B2E0);
    return;
  }

  if ([v20 result])
  {
    sub_1000292D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31 = v29;
  v32 = v30;
  if (!*(&v30 + 1))
  {

    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    *&v31 = 0;
    *(&v31 + 1) = 0xE000000000000000;
    sub_100029388(41);

    *&v31 = 0x20646574656C6544;
    *(&v31 + 1) = 0xE800000000000000;
    v34._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v34);

    v35._countAndFlagsBits = 0xD00000000000001DLL;
    v35._object = 0x800000010002EA80;
    sub_100028FE8(v35);
    v24 = [v2 description];
    v25 = sub_100028F88();
    v27 = v26;

    v36._countAndFlagsBits = v25;
    v36._object = v27;
    sub_100028FE8(v36);

    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v31, *(&v31 + 1));
  }

  else
  {
  }
}

void sub_100019D6C(uint64_t a1)
{
  type metadata accessor for MapsSyncManagedFavoriteItem();
  v2 = [swift_getObjCClassFromMetadata() entity];
  v3 = [objc_allocWithZone(NSBatchUpdateRequest) initWithEntity:v2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1000472B0, &unk_10002BE70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10002AD50;
  *&v25 = 0x656372756F73;
  *(&v25 + 1) = 0xE600000000000000;
  sub_100029348();
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = 3;
  sub_100026B8C(inited);
  swift_setDeallocating();
  sub_1000029A8(inited + 32, &qword_100046778, &unk_10002AFE0);
  isa = sub_100028F28().super.isa;

  [v3 setPropertiesToUpdate:isa];

  [v3 setResultType:2];
  sub_100003E20(0, &qword_100046B10, NSPredicate_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10002AD50;
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = 1;
  v7 = sub_100029118();
  v8 = sub_100029118();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046758, &qword_10002BEB0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10002BD00;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v10 = v7;
  v11 = v8;
  v12 = sub_100029038().super.isa;

  v13 = [objc_opt_self() andPredicateWithSubpredicates:v12];

  [v3 setPredicate:v13];
  v14 = *(a1 + 24);
  *&v25 = 0;
  v15 = [v14 executeRequest:v3 error:&v25];
  v16 = v25;
  if (v15)
  {
    v17 = v15;
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    v19 = v16;
    if (v18)
    {
      if ([v18 result])
      {
        sub_1000292D8();
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = 0u;
        v24 = 0u;
      }

      v25 = v23;
      v26 = v24;
      if (*(&v24 + 1))
      {
        if (swift_dynamicCast())
        {
          *&v25 = 0;
          *(&v25 + 1) = 0xE000000000000000;
          sub_100029388(35);

          *&v25 = 0xD000000000000012;
          *(&v25 + 1) = 0x800000010002E740;
          v28._countAndFlagsBits = sub_100029408();
          sub_100028FE8(v28);

          v29._countAndFlagsBits = 0x7469726F76614620;
          v29._object = 0xEF736D6574692065;
          sub_100028FE8(v29);
          _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v25, *(&v25 + 1));
        }

        else
        {
        }

        return;
      }
    }

    else
    {

      v25 = 0u;
      v26 = 0u;
    }

    sub_1000029A8(&v25, &qword_100047350, &qword_10002B2E0);
    return;
  }

  v20 = v25;
  sub_100028C78();

  swift_willThrow();
  *&v25 = 0;
  *(&v25 + 1) = 0xE000000000000000;
  sub_100029388(47);
  v27._countAndFlagsBits = 0xD00000000000002DLL;
  v27._object = 0x800000010002E710;
  sub_100028FE8(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
  sub_1000293C8();
  v21 = v25;
  sub_100029148();
  if (qword_100046258 != -1)
  {
    swift_once();
  }

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10002AD50;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_1000022C4();
  *(v22 + 32) = v21;
  sub_100028DE8();
}

void sub_10001A3A0(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 == 0x8000000000000000)
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v2 = -v1;
  v3 = -86400 * v1;
  if ((v2 * 86400) >> 64 != v3 >> 63)
  {
    goto LABEL_17;
  }

  v5 = [objc_allocWithZone(NSDate) initWithTimeIntervalSinceNow:v3];
  sub_100003E20(0, &qword_100046B10, NSPredicate_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10002AD50;
  *(v6 + 56) = sub_100003E20(0, &qword_100047358, NSDate_ptr);
  *(v6 + 64) = sub_10002764C();
  *(v6 + 32) = v5;
  v36 = v5;
  v7 = sub_100029118();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10002AD50;
  *(v8 + 56) = &type metadata for Int;
  *(v8 + 64) = &protocol witness table for Int;
  *(v8 + 32) = 1;
  v9 = sub_100029118();
  v10 = sub_100029118();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046758, &qword_10002BEB0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10002BD10;
  *(v11 + 32) = v7;
  *(v11 + 40) = v9;
  *(v11 + 48) = v10;
  v35 = v7;
  v34 = v9;
  v12 = v10;
  isa = sub_100029038().super.isa;

  v14 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  type metadata accessor for MapsSyncManagedFavoriteItem();
  v15 = [swift_getObjCClassFromMetadata() fetchRequest];
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10002BD00;
  v17 = v14;
  *(v16 + 32) = sub_100029118();
  *(v16 + 40) = v17;
  v18 = objc_allocWithZone(NSCompoundPredicate);
  v19 = v17;
  v20 = sub_100029038().super.isa;

  v21 = [v18 initWithType:1 subpredicates:v20];

  [v15 setPredicate:v21];
  v22 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v15];
  [v22 setResultType:2];
  sub_100029388(34);

  *&v39 = 0xD000000000000020;
  *(&v39 + 1) = 0x800000010002E7D0;
  v23 = [v22 description];
  v24 = sub_100028F88();
  v26 = v25;

  v41._countAndFlagsBits = v24;
  v41._object = v26;
  sub_100028FE8(v41);

  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD000000000000020, 0x800000010002E7D0);

  v27 = *(a1 + 24);
  *&v39 = 0;
  v28 = [v27 executeRequest:v22 error:&v39];
  v29 = v39;
  if (!v28)
  {
    v33 = v39;
    sub_100028C78();

    swift_willThrow();
    *&v39 = 0;
    *(&v39 + 1) = 0xE000000000000000;
    sub_100029388(37);
    v42._countAndFlagsBits = 0xD000000000000023;
    v42._object = 0x800000010002E800;
    sub_100028FE8(v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
    sub_1000293C8();
    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v39, *(&v39 + 1));

    return;
  }

  v30 = v28;
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  v32 = v29;
  if (!v31)
  {

    v39 = 0u;
    v40 = 0u;
LABEL_14:
    sub_1000029A8(&v39, &qword_100047350, &qword_10002B2E0);
    return;
  }

  if ([v31 result])
  {
    sub_1000292D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (!*(&v38 + 1))
  {

    goto LABEL_14;
  }

  if (swift_dynamicCast())
  {
    *&v39 = 0;
    *(&v39 + 1) = 0xE000000000000000;
    sub_100029388(44);

    *&v39 = 0xD000000000000018;
    *(&v39 + 1) = 0x800000010002E830;
    v43._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v43);

    v44._countAndFlagsBits = 0xD000000000000012;
    v44._object = 0x800000010002E850;
    sub_100028FE8(v44);
    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v39, *(&v39 + 1));
  }

  else
  {
  }
}

Swift::Int sub_10001AAF8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1000294B8();
  sub_1000294D8(v1);
  sub_1000294C8(v2);
  return sub_1000294E8();
}

void sub_10001AB58()
{
  v1 = *(v0 + 8);
  sub_1000294D8(*v0);
  sub_1000294C8(v1);
}

Swift::Int sub_10001AB98()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1000294B8();
  sub_1000294D8(v1);
  sub_1000294C8(v2);
  return sub_1000294E8();
}

void sub_10001AC20(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = objc_allocWithZone(NSFetchRequest);
  v7 = sub_100028F78();
  v8 = [v6 initWithEntityName:v7];

  v9 = objc_allocWithZone(NSFetchRequest);
  v10 = sub_100028F78();
  v11 = [v9 initWithEntityName:v10];

  v12 = *(a1 + 24);
  type metadata accessor for MapsSyncManagedCuratedCollection();
  v13 = sub_100029238();
  v14 = v3;
  if (v3)
  {

    return;
  }

  v15 = v13;
  v89 = a1;
  v90 = a2;
  type metadata accessor for MapsSyncManagedHistoryCuratedCollection();
  isUniquelyReferenced_nonNull_native = sub_100029238();
  v84 = v12;
  v87 = v11;
  if (v15 >> 62)
  {
    goto LABEL_40;
  }

  v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v95 = isUniquelyReferenced_nonNull_native;
    v88 = v8;
    v85 = v14;
    if (v17)
    {
      v8 = 0;
      v14 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          isUniquelyReferenced_nonNull_native = sub_1000293B8();
        }

        else
        {
          if (v8 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          isUniquelyReferenced_nonNull_native = *(v15 + 8 * v8 + 32);
        }

        v18 = isUniquelyReferenced_nonNull_native;
        v19 = (v8 + 1);
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v20 = [isUniquelyReferenced_nonNull_native curatedCollectionIdentifier];
        v21 = [v18 resultProviderIdentifier];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_100010F10(0, *(v14 + 2) + 1, 1, v14);
          v14 = isUniquelyReferenced_nonNull_native;
        }

        v23 = *(v14 + 2);
        v22 = *(v14 + 3);
        if (v23 >= v22 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_100010F10((v22 > 1), v23 + 1, 1, v14);
          v14 = isUniquelyReferenced_nonNull_native;
        }

        *(v14 + 2) = v23 + 1;
        v24 = &v14[16 * v23];
        *(v24 + 4) = v20;
        *(v24 + 10) = v21;
        ++v8;
        if (v19 == v17)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v14 = _swiftEmptyArrayStorage;
LABEL_19:

    v25 = *(v14 + 2);
    if (v25)
    {
      v26 = (v14 + 40);
      do
      {
        v27 = *(v26 - 1);
        v28 = *v26;
        v26 += 4;
        sub_1000242C0(&v101, v27, v28);
        --v25;
      }

      while (v25);
    }

    isUniquelyReferenced_nonNull_native = v95;
    if (!(v95 >> 62))
    {
      v29 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v29)
      {
        break;
      }

      goto LABEL_24;
    }

    v29 = sub_1000293D8();
    isUniquelyReferenced_nonNull_native = v95;
    if (!v29)
    {
      break;
    }

LABEL_24:
    v8 = 0;
    v93 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v15 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    v14 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v93)
      {
        isUniquelyReferenced_nonNull_native = sub_1000293B8();
      }

      else
      {
        if (v8 >= *(v15 + 16))
        {
          goto LABEL_39;
        }

        isUniquelyReferenced_nonNull_native = *(isUniquelyReferenced_nonNull_native + 8 * v8 + 32);
      }

      v30 = isUniquelyReferenced_nonNull_native;
      v31 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v32 = [isUniquelyReferenced_nonNull_native curatedCollectionIdentifier];
      v33 = [v30 resultProviderIdentifier];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_100010F10(0, *(v14 + 2) + 1, 1, v14);
      }

      v35 = *(v14 + 2);
      v34 = *(v14 + 3);
      if (v35 >= v34 >> 1)
      {
        v14 = sub_100010F10((v34 > 1), v35 + 1, 1, v14);
      }

      *(v14 + 2) = v35 + 1;
      v36 = &v14[16 * v35];
      *(v36 + 4) = v32;
      *(v36 + 10) = v33;
      ++v8;
      isUniquelyReferenced_nonNull_native = v95;
      if (v31 == v29)
      {
        goto LABEL_43;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    v37 = isUniquelyReferenced_nonNull_native;
    v17 = sub_1000293D8();
    isUniquelyReferenced_nonNull_native = v37;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_43:

  v38 = *(v14 + 2);
  if (v38)
  {
    v39 = (v14 + 40);
    do
    {
      v40 = *(v39 - 1);
      v41 = *v39;
      v39 += 4;
      sub_1000242C0(&v101, v40, v41);
      --v38;
    }

    while (v38);
  }

  v42 = v88;
  if (sub_100015878() & 1) == 0 || (v43 = v85, (sub_1000290E8()))
  {

    return;
  }

  v44 = objc_allocWithZone(NSFetchRequest);
  v45 = sub_100028F78();
  v46 = [v44 initWithEntityName:v45];

  [v46 setResultType:2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046720, &qword_10002AF90);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_10002B870;
  *(v47 + 32) = 0xD00000000000001BLL;
  *(v47 + 40) = 0x800000010002E040;
  *(v47 + 88) = &type metadata for String;
  *(v47 + 56) = &type metadata for String;
  *(v47 + 64) = 0xD000000000000018;
  *(v47 + 72) = 0x800000010002DCA0;
  isa = sub_100029038().super.isa;

  [v46 setPropertiesToFetch:isa];

  sub_100003E20(0, &qword_100047370, NSDictionary_ptr);
  v49 = sub_100029238();
  if (v85)
  {

    return;
  }

  v50 = v49;
  if (v49 >> 62)
  {
    goto LABEL_69;
  }

  v51 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v46; v51; i = v46)
  {
    v52 = 0;
    v53 = v50 & 0xC000000000000001;
    v96 = v50 & 0xFFFFFFFFFFFFFF8;
    v54 = _swiftEmptyArrayStorage;
    v92 = v50;
    v94 = v51;
    while (1)
    {
      if (v53)
      {
        v56 = sub_1000293B8();
      }

      else
      {
        if (v52 >= *(v96 + 16))
        {
          goto LABEL_68;
        }

        v56 = *(v50 + 8 * v52 + 32);
      }

      v57 = v56;
      v46 = (v52 + 1);
      if (__OFADD__(v52, 1))
      {
        break;
      }

      *&v99 = v56;
      v58 = v43;
      sub_10001B810(&v99, &v101);

      if ((BYTE12(v101) & 1) == 0)
      {
        v59 = v101;
        v60 = DWORD2(v101);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_100010F10(0, *(v54 + 2) + 1, 1, v54);
        }

        v62 = *(v54 + 2);
        v61 = *(v54 + 3);
        if (v62 >= v61 >> 1)
        {
          v54 = sub_100010F10((v61 > 1), v62 + 1, 1, v54);
        }

        *(v54 + 2) = v62 + 1;
        v55 = &v54[16 * v62];
        *(v55 + 4) = v59;
        *(v55 + 10) = v60;
        v43 = v58;
        v42 = v88;
        v50 = v92;
        v51 = v94;
      }

      ++v52;
      if (v46 == v51)
      {
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    v51 = sub_1000293D8();
  }

  v54 = _swiftEmptyArrayStorage;
LABEL_71:

  v63 = *(v54 + 2);
  if (v63)
  {
    v64 = (v54 + 40);
    v65 = a3;
    do
    {
      v66 = *(v64 - 1);
      v67 = *v64;
      v64 += 4;
      sub_1000242C0(&v101, v66, v67);
      --v63;
    }

    while (v63);
  }

  else
  {
    v65 = a3;
  }

  v68 = *v65;
  if (*(*v90 + 16) <= *(*v65 + 16) >> 3)
  {
    *&v101 = *v65;

    sub_1000252D4(v72);

    v71 = v101;
  }

  else
  {
    v69 = *v65;

    v71 = sub_1000253D4(v70, v68);
  }

  sub_1000276D4(*(v89 + 88), v71, &v103);

  sub_100014D2C(&v103);
  type metadata accessor for MapsSyncManagedCachedCuratedCollection();
  v73 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_100003E20(0, &qword_100046B10, NSPredicate_ptr);
  v74 = sub_100029038().super.isa;

  v75 = [objc_opt_self() orPredicateWithSubpredicates:v74];

  [v73 setPredicate:v75];
  v76 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v73];
  [v76 setResultType:2];
  *&v101 = 0;
  v77 = [v84 executeRequest:v76 error:&v101];
  v78 = v101;
  if (!v77)
  {
    v82 = v101;
    sub_100028C78();

    swift_willThrow();
    v114 = v103;
    v115 = v104;
    sub_1000029A8(&v114, &qword_100047378, &qword_10002BF10);
    v112 = v105;
    v113 = v106;
    sub_1000029A8(&v112, &qword_100047378, &qword_10002BF10);
    v98 = v107;
    sub_1000029A8(&v98, &qword_100047380, &qword_10002BF18);

    goto LABEL_91;
  }

  v79 = v77;
  objc_opt_self();
  v80 = swift_dynamicCastObjCClass();
  v81 = v78;
  if (!v80)
  {

    v101 = 0u;
    v102 = 0u;
LABEL_89:
    sub_1000029A8(&v101, &qword_100047350, &qword_10002B2E0);
    goto LABEL_90;
  }

  if ([v80 result])
  {
    sub_1000292D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v99 = 0u;
    v100 = 0u;
  }

  v101 = v99;
  v102 = v100;
  if (!*(&v100 + 1))
  {
    goto LABEL_89;
  }

  if (swift_dynamicCast())
  {
    v83 = v99;
    *&v101 = 0;
    *(&v101 + 1) = 0xE000000000000000;
    sub_100029388(41);

    *&v101 = 0x20646567727550;
    *(&v101 + 1) = 0xE700000000000000;
    *&v99 = v83;
    v116._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v116);

    v117._countAndFlagsBits = 0xD000000000000020;
    v117._object = 0x800000010002E900;
    sub_100028FE8(v117);
    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v101, *(&v101 + 1));
  }

LABEL_90:
  [v84 reset];

  v110 = v103;
  v111 = v104;
  sub_1000029A8(&v110, &qword_100047378, &qword_10002BF10);
  v108 = v105;
  v109 = v106;
  sub_1000029A8(&v108, &qword_100047378, &qword_10002BF10);
  v97 = v107;
  sub_1000029A8(&v97, &qword_100047380, &qword_10002BF18);

LABEL_91:
}

uint64_t sub_10001B810@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *&v11 = 0xD00000000000001BLL;
  *(&v11 + 1) = 0x800000010002E040;
  v4 = [*a1 __swift_objectForKeyedSubscript:sub_100029468()];
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_1000292D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v13 = 0u;
  }

  v14 = v11;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    goto LABEL_12;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_13:
    v6 = 0;
    v9 = 0;
    v8 = 1;
    goto LABEL_14;
  }

  v6 = v10;
  *&v12 = 0xD000000000000018;
  *(&v12 + 1) = 0x800000010002DCA0;
  v7 = [v3 __swift_objectForKeyedSubscript:sub_100029468()];
  swift_unknownObjectRelease();
  if (v7)
  {
    sub_1000292D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
LABEL_12:
    result = sub_1000029A8(&v14, &qword_100047350, &qword_10002B2E0);
    goto LABEL_13;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = 0;
  v9 = v10;
LABEL_14:
  *a2 = v6;
  *(a2 + 8) = v9;
  *(a2 + 12) = v8;
  return result;
}

void (*sub_10001B9F4(void (*result)(void)))(void)
{
  v2 = *(v1 + 80);
  if (v2 == 0x8000000000000000)
  {
    __break(1u);
  }

  else
  {
    v3 = -v2;
    v4 = -86400 * v2;
    if ((v3 * 86400) >> 64 == v4 >> 63)
    {
      v5 = result;
      v6 = v1;
      v7 = [objc_allocWithZone(NSDate) initWithTimeIntervalSinceNow:v4];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046758, &qword_10002BEB0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_10002BD00;
      sub_100003E20(0, &qword_100046B10, NSPredicate_ptr);
      *(v8 + 32) = sub_100029118();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_10002AD50;
      *(v9 + 56) = sub_100003E20(0, &qword_100047358, NSDate_ptr);
      *(v9 + 64) = sub_10002764C();
      *(v9 + 32) = v7;
      v10 = v7;
      *(v8 + 40) = sub_100029118();
      v11 = objc_allocWithZone(NSCompoundPredicate);
      isa = sub_100029038().super.isa;

      v13 = [v11 initWithType:2 subpredicates:isa];

      v5(0);
      v14 = [swift_getObjCClassFromMetadata() fetchRequest];
      [v14 setFetchBatchSize:*(v6 + 88)];
      [v14 setPredicate:v13];

      return v14;
    }
  }

  __break(1u);
  return result;
}