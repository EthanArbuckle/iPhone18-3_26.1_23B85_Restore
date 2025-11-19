uint64_t sub_10001B77C()
{
  v63 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 296);
  v3 = *(v0 + 176);
  v4 = *(v0 + 288);
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 352);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Ignoring error clearing local database: %{public}@", v8, 0xCu);
    sub_10000D620(v9, &unk_1000AB7D0, &qword_100085510);
  }

  v11 = *(v0 + 352);
  v12 = *(v0 + 336);
  v13 = *(v0 + 304);
  v14 = *(v0 + 176);
  v15 = *(v0 + 128);
  v16 = *(v0 + 136);

  v13(v14, v15);
  sub_100031DC0();

  v17 = *(v0 + 328);
  *(v0 + 368) = v17;
  if (*(v0 + 416))
  {
    if (v17 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_6;
      }
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v18 = *(v0 + 152);
      *(v0 + 376) = type metadata accessor for XPCServer();
      *(v0 + 384) = sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer);
      static LoggedObject.logger.getter();

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();

      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 152);
      v24 = *(v0 + 128);
      v23 = *(v0 + 136);
      if (v21)
      {
        v60 = *(v0 + 152);
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v62 = v26;
        *v25 = 136446210;
        sub_10001C4A8();
        v27 = Array.description.getter();
        v29 = sub_100035120(v27, v28, &v62);

        *(v25 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v19, v20, "Deleting home zones: %{public}s", v25, 0xCu);
        sub_10000D330(v26);

        v30 = *(v23 + 8);
        v30(v60, v24);
      }

      else
      {

        v30 = *(v23 + 8);
        v30(v22, v24);
      }

      *(v0 + 392) = v30;
      v39 = swift_task_alloc();
      *(v0 + 400) = v39;
      *v39 = v0;
      v39[1] = sub_10001BD80;
      v40 = *(v0 + 72);
      v41 = *(v0 + 80);

      return sub_100067F30(v17, v40, v41);
    }

    v32 = (v0 + 160);
    v43 = *(v0 + 160);

    type metadata accessor for XPCServer();
    sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer);
    static LoggedObject.logger.getter();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    v44 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 136);
    if (v44)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = "No home zones to delete";
      goto LABEL_17;
    }
  }

  else
  {
    v32 = (v0 + 168);
    v31 = *(v0 + 168);

    type metadata accessor for XPCServer();
    sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer);
    static LoggedObject.logger.getter();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 136);
    if (v35)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = "Not deleting any cloud zones";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v33, v34, v38, v37, 2u);
    }
  }

  v45 = *v32;
  v46 = *(v36 + 8);
  v47 = *(v0 + 224);
  v48 = *(v0 + 232);
  v50 = *(v0 + 192);
  v49 = *(v0 + 200);
  v52 = *(v0 + 176);
  v51 = *(v0 + 184);
  v54 = *(v0 + 160);
  v53 = *(v0 + 168);
  v55 = *(v0 + 152);
  v57 = *(v0 + 144);
  v58 = *(v0 + 120);
  v59 = *(v0 + 112);
  v61 = *(v0 + 104);
  v46(v45, *(v0 + 128));

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_10001BD80()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v7 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v4 = sub_10001C054;
  }

  else
  {
    v5 = *(v2 + 368);

    v4 = sub_10001BE9C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001BE9C()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 144);
  v3 = *(v0 + 376);
  static LoggedObject.logger.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v21 = *(v0 + 136);
  if (v6)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Finished clearing events", v7, 2u);
  }

  v8 = *(v0 + 224);
  v9 = *(v0 + 232);
  v11 = *(v0 + 192);
  v10 = *(v0 + 200);
  v13 = *(v0 + 176);
  v12 = *(v0 + 184);
  v15 = *(v0 + 160);
  v14 = *(v0 + 168);
  v20 = *(v0 + 120);
  v18 = *(v0 + 152);
  v19 = *(v0 + 112);
  v22 = *(v0 + 104);
  (*(v0 + 392))(*(v0 + 144), *(v0 + 128));

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10001C054()
{
  v1 = v0[46];

  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[22];
  v6 = v0[23];
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[18];
  v11 = v0[19];
  v14 = v0[15];
  v15 = v0[14];
  v16 = v0[13];
  v17 = v0[51];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10001C164(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_10001C188, 0, 0);
}

uint64_t sub_10001C188()
{
  v12 = v0;
  type metadata accessor for Configuration();
  v1 = static Configuration.cloudKitContainer.getter();
  v2 = [v1 privateCloudDatabase];
  *(v0 + 32) = v2;

  v3 = objc_allocWithZone(CKOperationGroup);
  v4 = v2;
  v5 = [v3 init];
  *(v0 + 40) = v5;
  v11 = v5;
  sub_100068834(&v11, v4, 25);

  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_10001C2C4;
  v7 = *(v0 + 64);
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);

  return sub_100019758(v9, v7, v8, v4, v5);
}

uint64_t sub_10001C2C4()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_10001C440;
  }

  else
  {
    v3 = sub_10001C3D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001C3D8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001C440()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);
  v3 = *(v0 + 56);

  return v2();
}

unint64_t sub_10001C4A8()
{
  result = qword_1000AC3A0;
  if (!qword_1000AC3A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000AC3A0);
  }

  return result;
}

uint64_t sub_10001C4F4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  sub_10000D330(v0 + 6);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10001C544(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000D130;

  return sub_100018CC0(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_10001C608(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AB3C0, &qword_100086268);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001C678()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  if (v2)
  {
  }

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001C6CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001DBDC;

  return sub_1000187B8(a1, v4, v5, v6, v7, v8);
}

id sub_10001C794(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

uint64_t sub_10001C7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  v4 = type metadata accessor for UUID();
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v6 = *(v5 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_10001C8EC, 0, 0);
}

void sub_10001C8EC()
{
  v47 = v0;
  v0[4] = &_swiftEmptyDictionarySingleton;
  v1 = v0[17];
  v2 = v0[13];
  v3 = *(v2 + 16);
  sub_10000CED0(&qword_1000AB3E0, &qword_1000862B0);
  Dictionary.reserveCapacity(_:)(v3);
  v4 = v2 + 56;
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v2 + 56);
  v8 = v0[4];
  v9 = (63 - v6) >> 6;
  v44 = v1;
  v45 = v2;
  v40 = (v1 + 40);

  v10 = 0;
  v41 = v9;
  v42 = v2 + 56;
  v43 = v0;
  while (1)
  {
    v0[26] = v8;
    if (!v7)
    {
      break;
    }

    v11 = v10;
LABEL_11:
    v13 = v0[24];
    v12 = v0[25];
    v14 = v0[16];
    v15 = *(v44 + 72);
    (*(v44 + 16))(v12, *(v45 + 48) + v15 * (__clz(__rbit64(v7)) | (v11 << 6)), v14);
    v16 = static EventRecord.energyKitZoneID(forHomeIdentifier:)();
    v17 = *(v44 + 32);
    v17(v13, v12, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v8;
    v19 = sub_10007B79C(v16);
    v21 = v8[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return;
    }

    v25 = v20;
    if (v8[3] >= v24)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = v19;
        sub_10007F3F8();
        v19 = v31;
        v8 = v46;
      }
    }

    else
    {
      sub_10007C9F4(v24, isUniquelyReferenced_nonNull_native);
      v8 = v46;
      v19 = sub_10007B79C(v16);
      if ((v25 & 1) != (v26 & 1))
      {
        sub_10001C4A8();

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }
    }

    v7 &= v7 - 1;
    v0 = v43;
    v27 = v43[24];
    v28 = v43[16];
    if (v25)
    {
      (*v40)(v8[7] + v19 * v15, v27, v28);
    }

    else
    {
      v8[(v19 >> 6) + 8] |= 1 << v19;
      *(v8[6] + 8 * v19) = v16;
      v17(v8[7] + v19 * v15, v27, v28);
      v29 = v8[2];
      v23 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v23)
      {
        goto LABEL_32;
      }

      v8[2] = v30;
    }

    v10 = v11;
    v9 = v41;
    v4 = v42;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v11 >= v9)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  v32 = v0[13];
  v0[4] = v8;

  v0[5] = &_swiftEmptyDictionarySingleton;
  v33 = *(v45 + 16);
  v0[27] = sub_10000CED0(&qword_1000AB3D0, &qword_100086288);
  Dictionary.reserveCapacity(_:)(v33);
  v34 = v8[2];
  if (!v34)
  {
    goto LABEL_23;
  }

  v35 = sub_100032B4C(v8[2], 0);
  v36 = sub_1000334AC(&v46, v35 + 4, v34, v8);

  sub_1000123C4();
  if (v36 != v34)
  {
    __break(1u);
LABEL_23:
    v35 = &_swiftEmptyArrayStorage;
  }

  v0[28] = v35;
  v37 = swift_task_alloc();
  v0[29] = v37;
  *v37 = v0;
  v37[1] = sub_10001CD04;
  v38 = v0[14];
  v39 = v0[15];

  sub_100067F30(v35, v38, v39);
}

uint64_t sub_10001CD04()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v7 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = sub_10001CEEC;
  }

  else
  {
    v5 = *(v2 + 224);

    v4 = sub_10001CE20;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001CE20()
{
  v1 = v0[26];

  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[5];

  v11 = v0[1];

  return v11(v10);
}

void sub_10001CEEC()
{
  v1 = v0[30];
  v2 = v0[28];

  v0[6] = v1;
  v3 = v0 + 6;
  swift_errorRetain();
  sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  v152 = v0 + 5;
  v153 = v0;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v4 = v0[27];
    v5 = v0[17];
    v6 = v0[13];
    v7 = v0[6];

    Dictionary.reserveCapacity(_:)(*(v6 + 16));
    v8 = -1;
    v9 = -1 << *(v6 + 32);
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v10 = v8 & *(v6 + 56);
    v144 = (63 - v9) >> 6;
    v147 = (v5 + 8);

    v11 = 0;
    while (v10)
    {
      v14 = v0[13];
LABEL_16:
      v16 = v0[30];
      v18 = v0[18];
      v17 = v0[19];
      v19 = v0[16];
      v20 = v0[17];
      v21 = *(v20 + 72);
      v151 = *(v20 + 16);
      v151(v17, *(v14 + 48) + v21 * (__clz(__rbit64(v10)) | (v11 << 6)), v19);
      (*(v20 + 32))(v18, v17, v19);
      swift_errorRetain();
      v22 = v0[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = sub_10007B6C4(v18);
      v26 = v22[2];
      v27 = (v25 & 1) == 0;
      v28 = __OFADD__(v26, v27);
      v29 = v26 + v27;
      if (v28)
      {
        goto LABEL_85;
      }

      v30 = v25;
      if (v22[3] >= v29)
      {
        v33 = v152;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v40 = v24;
          sub_10007F178();
          v24 = v40;
        }
      }

      else
      {
        v31 = v153[18];
        sub_10007C614(v29, isUniquelyReferenced_nonNull_native);
        v24 = sub_10007B6C4(v31);
        if ((v30 & 1) != (v32 & 1))
        {
          goto LABEL_79;
        }

        v33 = v152;
      }

      v10 &= v10 - 1;
      v34 = v153[30];
      v35 = v153[18];
      v36 = v153[16];
      if (v30)
      {
        v12 = v22[7];
        v13 = *(v12 + 8 * v24);
        *(v12 + 8 * v24) = v34;

        (*v147)(v35, v36);
      }

      else
      {
        v22[(v24 >> 6) + 8] |= 1 << v24;
        v37 = v24;
        v151(v22[6] + v24 * v21, v35, v36);
        *(v22[7] + 8 * v37) = v34;
        (*v147)(v35, v36);
        v38 = v22[2];
        v28 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v28)
        {
          goto LABEL_86;
        }

        v22[2] = v39;
      }

      *v33 = v22;
      v0 = v153;
    }

    while (1)
    {
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v15 >= v144)
      {
        v41 = v0[30];
        v42 = v0[26];
        v43 = v0[13];

        goto LABEL_26;
      }

      v14 = v0[13];
      v10 = *(v14 + 8 * v15 + 56);
      ++v11;
      if (v10)
      {
        v11 = v15;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v150 = v0[2];
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      sub_10001D9EC(v150, 1);
      goto LABEL_5;
    }

    v88 = v0[27];
    v141 = v0[26];
    v89 = v0[17];
    Dictionary.reserveCapacity(_:)(*(v150 + 16));
    v90 = v150 + 64;
    v91 = -1;
    v92 = -1 << *(v150 + 32);
    if (-v92 < 64)
    {
      v91 = ~(-1 << -v92);
    }

    v93 = v91 & *(v150 + 64);
    v94 = (63 - v92) >> 6;
    v140 = (v89 + 8);

    v95 = 0;
    v143 = v94;
    if (!v93)
    {
LABEL_53:
      while (1)
      {
        v96 = v95 + 1;
        if (__OFADD__(v95, 1))
        {
          goto LABEL_83;
        }

        if (v96 >= v94)
        {
          v133 = v0[30];
          v134 = v0[26];
          sub_10001D9EC(v150, 2);

          v135 = v0[6];

          goto LABEL_26;
        }

        v93 = *(v90 + 8 * v96);
        ++v95;
        if (v93)
        {
          goto LABEL_56;
        }
      }
    }

    while (1)
    {
      v96 = v95;
LABEL_56:
      v97 = __clz(__rbit64(v93));
      v93 &= v93 - 1;
      v98 = (v96 << 9) | (8 * v97);
      v99 = *(*(v150 + 48) + v98);
      v100 = *(*(v150 + 56) + v98);
      v3[1] = v100;
      swift_errorRetain();
      v149 = v100;
      swift_errorRetain();
      type metadata accessor for CKError(0);
      v101 = v99;
      v146 = v101;
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_63;
      }

      v102 = v3[2];
      v3[3] = v102;
      sub_10001DA10(&qword_1000AAEA8, type metadata accessor for CKError);
      _BridgedStoredNSError.code.getter();
      if (v3[4] == 26)
      {

LABEL_61:
        v95 = v96;
        v94 = v143;
        if (!v93)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v3[5] = v102;
        _BridgedStoredNSError.code.getter();

        v101 = v146;
        if (v3[6] == 28)
        {

          goto LABEL_61;
        }

LABEL_63:
        if (!*(v0[26] + 16))
        {
          goto LABEL_88;
        }

        v103 = sub_10007B79C(v101);
        if ((v104 & 1) == 0)
        {
          goto LABEL_89;
        }

        v106 = v0[20];
        v105 = v0[21];
        v107 = v0[16];
        v108 = v0[17];
        v109 = v0;
        v110 = *(v108 + 16);
        v111 = *(v108 + 72);
        v110(v105, *(v141 + 56) + v111 * v103, v107);
        v110(v106, v105, v107);
        swift_errorRetain();
        v112 = v109[5];
        v113 = swift_isUniquelyReferenced_nonNull_native();
        v114 = sub_10007B6C4(v106);
        v116 = v112[2];
        v117 = (v115 & 1) == 0;
        v28 = __OFADD__(v116, v117);
        v118 = v116 + v117;
        if (v28)
        {
          goto LABEL_90;
        }

        v119 = v115;
        if (v112[3] >= v118)
        {
          if ((v113 & 1) == 0)
          {
            v132 = v114;
            sub_10007F178();
            v114 = v132;
          }
        }

        else
        {
          v120 = v153[20];
          sub_10007C614(v118, v113);
          v114 = sub_10007B6C4(v120);
          if ((v119 & 1) != (v121 & 1))
          {
            goto LABEL_79;
          }
        }

        v122 = v153[20];
        v142 = v153[21];
        v123 = v153[16];
        if (v119)
        {
          v124 = v112[7];
          v125 = *(v124 + 8 * v114);
          *(v124 + 8 * v114) = v149;

          v126 = *v140;
          (*v140)(v122, v123);
          v126(v142, v123);
        }

        else
        {
          v112[(v114 >> 6) + 8] |= 1 << v114;
          v127 = v112[6] + v114 * v111;
          v128 = v114;
          v110(v127, v122, v123);
          *(v112[7] + 8 * v128) = v149;

          v129 = *v140;
          (*v140)(v122, v123);
          v129(v142, v123);
          v130 = v112[2];
          v28 = __OFADD__(v130, 1);
          v131 = v130 + 1;
          if (v28)
          {
            goto LABEL_92;
          }

          v112[2] = v131;
        }

        v0 = v153;
        *v152 = v112;
        v95 = v96;
        v90 = v150 + 64;
        v94 = v143;
        if (!v93)
        {
          goto LABEL_53;
        }
      }
    }
  }

  v54 = v0[30];
  v55 = v0[27];
  v56 = v0[17];
  v57 = v0[13];

  Dictionary.reserveCapacity(_:)(*(v57 + 16));
  v58 = -1;
  v59 = -1 << *(v57 + 32);
  if (-v59 < 64)
  {
    v58 = ~(-1 << -v59);
  }

  v60 = v58 & *(v57 + 56);
  v61 = (63 - v59) >> 6;
  v145 = (v56 + 8);

  v62 = 0;
  while (v60)
  {
    v65 = v0[13];
LABEL_40:
    v68 = v0[22];
    v67 = v0[23];
    v69 = v0[16];
    v70 = v0[17];
    v71 = *(v70 + 72);
    v148 = *(v70 + 16);
    v148(v67, *(v65 + 48) + v71 * (__clz(__rbit64(v60)) | (v62 << 6)), v69);
    (*(v70 + 32))(v68, v67, v69);
    sub_10001DA58(v150, 0);
    v72 = v0[5];
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v74 = sub_10007B6C4(v68);
    v76 = v72[2];
    v77 = (v75 & 1) == 0;
    v28 = __OFADD__(v76, v77);
    v78 = v76 + v77;
    if (v28)
    {
      goto LABEL_87;
    }

    v79 = v75;
    if (v72[3] >= v78)
    {
      if ((v73 & 1) == 0)
      {
        v87 = v74;
        sub_10007F178();
        v74 = v87;
      }
    }

    else
    {
      v80 = v153[22];
      sub_10007C614(v78, v73);
      v74 = sub_10007B6C4(v80);
      if ((v79 & 1) != (v81 & 1))
      {
LABEL_79:
        v139 = v153[16];

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }
    }

    v60 &= v60 - 1;
    v82 = v153[22];
    v83 = v153[16];
    if (v79)
    {
      v63 = v72[7];
      v64 = *(v63 + 8 * v74);
      *(v63 + 8 * v74) = v150;

      (*v145)(v82, v83);
    }

    else
    {
      v72[(v74 >> 6) + 8] |= 1 << v74;
      v84 = v74;
      v148(v72[6] + v74 * v71, v82, v83);
      *(v72[7] + 8 * v84) = v150;
      (*v145)(v82, v83);
      v85 = v72[2];
      v28 = __OFADD__(v85, 1);
      v86 = v85 + 1;
      if (v28)
      {
        goto LABEL_91;
      }

      v72[2] = v86;
    }

    v0 = v153;
    *v152 = v72;
  }

  while (1)
  {
    v66 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      break;
    }

    if (v66 >= v61)
    {
      v136 = v0[26];
      v137 = v0[13];
      sub_10001D9EC(v150, 0);

      v138 = v0[6];

LABEL_26:

      v45 = v0[24];
      v44 = v0[25];
      v47 = v0[22];
      v46 = v0[23];
      v49 = v0[20];
      v48 = v0[21];
      v51 = v0[18];
      v50 = v0[19];
      v52 = v0[5];

      v53 = v0[1];

      v53(v52);
      return;
    }

    v65 = v0[13];
    v60 = *(v65 + 8 * v66 + 56);
    ++v62;
    if (v60)
    {
      v62 = v66;
      goto LABEL_40;
    }
  }

LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
}

uint64_t sub_10001D9EC(uint64_t a1, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return result;
}

uint64_t sub_10001DA10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001DA58(uint64_t a1, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
  }

  if (!a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_10001DA7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001DAEC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001DB24(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000D130;

  return sub_100019398(a1, v5);
}

Swift::Int sub_10001DBF4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10001DC68()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

BOOL sub_10001DCFC(void *a1, uint64_t *a2)
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

void *sub_10001DD2C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10001DD58@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10001DE44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10001E5A4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10001DE84()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_10001DEDC()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_10001DEE8()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

unint64_t sub_10001DF0C()
{
  v1 = [v0 resources];
  v2 = [v0 resources] & 2 | v1 & 1;
  v3 = [v0 resources] & 4;
  v4 = v2 | v3 | [v0 resources] & 8;
  return v4 | [v0 resources] & 0x10;
}

id sub_10001DF94(char a1)
{
  if (a1)
  {
    if ((a1 & 2) != 0)
    {
      v2 = 3;
      if ((a1 & 4) != 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = 1;
      if ((a1 & 4) != 0)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    if ((a1 & 2) == 0)
    {
      v2 = 0;
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v2 = 2;
    if ((a1 & 4) != 0)
    {
LABEL_4:
      v2 |= 4uLL;
    }
  }

LABEL_5:
  if ((a1 & 8) != 0)
  {
    v2 |= 8uLL;
    if ((a1 & 0x10) == 0)
    {
      return [v1 setResources:v2];
    }

    goto LABEL_7;
  }

  if ((a1 & 0x10) != 0)
  {
LABEL_7:
    v2 |= 0x10uLL;
  }

  return [v1 setResources:v2];
}

uint64_t sub_10001DFF8()
{
  v1 = [*v0 identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_10001E0BC()
{
  result = [*v0 priority];
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__n128 sub_10001E1BC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10001E1E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_10001E228(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EventUploadScheduledWaitOutcome(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventUploadScheduledWaitOutcome(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001E3F0()
{
  result = qword_1000AB3E8;
  if (!qword_1000AB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB3E8);
  }

  return result;
}

unint64_t sub_10001E448()
{
  result = qword_1000AB3F0;
  if (!qword_1000AB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB3F0);
  }

  return result;
}

unint64_t sub_10001E4A0()
{
  result = qword_1000AB3F8;
  if (!qword_1000AB3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB3F8);
  }

  return result;
}

unint64_t sub_10001E4F8()
{
  result = qword_1000AB400;
  if (!qword_1000AB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB400);
  }

  return result;
}

unint64_t sub_10001E550()
{
  result = qword_1000AB408;
  if (!qword_1000AB408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB408);
  }

  return result;
}

uint64_t sub_10001E5A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_10001E5E0()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10001E6A0, 0, 0);
}

uint64_t sub_10001E6A0()
{
  v1 = v0[2];
  sub_10001ECF8();
  v2 = v0[2];
  if (*v2)
  {
    v3 = swift_task_alloc();
    v0[6] = v3;
    *(v3 + 16) = v2;
    v4 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_10001E8F8;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v5, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_100086600, v3, &type metadata for () + 8);
  }

  else
  {
    v6 = v0[5];
    type metadata accessor for DiagnosticFileCollector();
    sub_100022F0C(&qword_1000AB410, type metadata accessor for DiagnosticFileCollector);
    static LoggedObject.logger.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[4];
    v10 = v0[5];
    v12 = v0[3];
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Consent was not provided to collect sensitive info, bailing out", v13, 2u);
    }

    (*(v11 + 8))(v10, v12);
    v14 = v0[5];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_10001E8F8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_10001EA78;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_10001EA14;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001EA14()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001EA78()
{
  v1 = v0[6];

  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

void sub_10001EAE4(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = [*a1 defaultConfiguration];
  if (!v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v4;
  [v4 setContainer:a2];

  v6 = [v3 defaultConfiguration];
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  [v6 setQualityOfService:25];

  v23[2] = 0;
  v23[3] = 0xE000000000000000;
  v23[0] = 47;
  v23[1] = 0xE100000000000000;
  __chkstk_darwin(v8);
  v22[2] = v23;
  v10 = sub_100022238(0x7FFFFFFFFFFFFFFFLL, 1, sub_10000D4EC, v22, 0xD000000000000029, v9 | 0x8000000000000000, v9);
  if (v10[2])
  {
    v11 = v10[4];
    v12 = v10[5];
    v13 = v10[6];
    v14 = v10[7];

    v15 = static String._fromSubstring(_:)();
    v17 = v16;

    v18._countAndFlagsBits = v15;
    v18._object = v17;
    String.append(_:)(v18);

    v19._countAndFlagsBits = 46;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v23[0] = type metadata accessor for DiagnosticFileCollector();
    sub_10000CED0(&qword_1000AB448, &qword_100086698);
    v20._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v20);

    v21 = String._bridgeToObjectiveC()();

    [v3 setName:v21];

    return;
  }

LABEL_7:

  __break(1u);
}

void sub_10001ECF8()
{
  v1 = v0;
  v2 = type metadata accessor for DiagnosticFileCollector();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v52 - v7;
  v9 = type metadata accessor for Logger();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v52 - v14;
  v16 = [objc_opt_self() defaultManager];
  v60 = 0;
  v56 = *(v2 + 24);
  URL.absoluteString.getter();
  v17 = String._bridgeToObjectiveC()();

  v18 = [v16 fileExistsAtPath:v17 isDirectory:&v60];

  v55 = v16;
  if (v18)
  {
    v53 = v6;
    sub_100022F0C(&qword_1000AB410, type metadata accessor for DiagnosticFileCollector);
    static LoggedObject.logger.getter();
    v54 = v1;
    sub_100021AF0(v1, v8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v61 = v52;
      *v21 = 136315394;
      swift_beginAccess();
      if (v60)
      {
        v22 = 0x726F746365726964;
      }

      else
      {
        v22 = 1701603686;
      }

      if (v60)
      {
        v23 = 0xE900000000000079;
      }

      else
      {
        v23 = 0xE400000000000000;
      }

      v24 = sub_100035120(v22, v23, &v61);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      v25 = *(v2 + 24);
      type metadata accessor for URL();
      sub_100022F0C(&qword_1000AAD60, &type metadata accessor for URL);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      sub_100013DA4(v8);
      v29 = sub_100035120(v26, v28, &v61);

      *(v21 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v19, v20, "Removing %s at '%s'", v21, 0x16u);
      swift_arrayDestroy();

      v16 = v55;
    }

    else
    {

      sub_100013DA4(v8);
    }

    (*(v57 + 8))(v15, v58);
    v1 = v54;
    URL._bridgeToObjectiveC()(v56);
    v31 = v30;
    v61 = 0;
    v32 = [v16 removeItemAtURL:v30 error:&v61];

    v33 = v61;
    if (!v32)
    {
      goto LABEL_18;
    }

    v34 = v61;
    v6 = v53;
  }

  sub_100022F0C(&qword_1000AB410, type metadata accessor for DiagnosticFileCollector);
  static LoggedObject.logger.getter();
  sub_100021AF0(v1, v6);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = v6;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v54 = v1;
    v40 = v39;
    v61 = v39;
    *v38 = 136315138;
    v41 = *(v2 + 24);
    type metadata accessor for URL();
    sub_100022F0C(&qword_1000AAD60, &type metadata accessor for URL);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    sub_100013DA4(v37);
    v45 = sub_100035120(v42, v44, &v61);

    *(v38 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v35, v36, "Creating diagnostic directory at '%s'", v38, 0xCu);
    sub_10000D330(v40);
  }

  else
  {

    sub_100013DA4(v6);
  }

  (*(v57 + 8))(v13, v58);
  URL._bridgeToObjectiveC()(v56);
  v47 = v46;
  v61 = 0;
  v16 = v55;
  v48 = [v55 createDirectoryAtURL:v46 withIntermediateDirectories:1 attributes:0 error:&v61];

  v33 = v61;
  if ((v48 & 1) == 0)
  {
LABEL_18:
    v50 = v33;
    v51 = _convertNSErrorToError(_:)();

    v59 = v51;
    swift_willThrow();
    goto LABEL_19;
  }

  v49 = v61;
LABEL_19:
}

uint64_t type metadata accessor for DiagnosticFileCollector()
{
  result = qword_1000AB4C8;
  if (!qword_1000AB4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001F3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = *(type metadata accessor for DiagnosticFileCollector() - 8);
  v3[4] = v4;
  v3[5] = *(v4 + 64);
  v3[6] = swift_task_alloc();
  v5 = *(*(sub_10000CED0(&qword_1000AAD30, &qword_100085540) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_10001F4D0, 0, 0);
}

uint64_t sub_10001F4D0()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = type metadata accessor for TaskPriority();
  v13 = *(*(v6 - 8) + 56);
  v13(v1, 1, 1, v6);
  sub_100021AF0(v5, v2);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_100021B58(v2, v8 + v7);
  sub_10002003C(v1, &unk_100086618, v8);
  sub_100021CAC(v1);
  v13(v1, 1, 1, v6);
  sub_100021AF0(v5, v2);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  sub_100021B58(v2, v9 + v7);
  sub_10002003C(v1, &unk_100086628, v9);
  sub_100021CAC(v1);
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_10001F6D8;
  v11 = v0[2];

  return sub_100020618(0, 0);
}

uint64_t sub_10001F6D8()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10001F80C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000D130;

  return sub_10001F89C();
}

uint64_t sub_10001F89C()
{
  v1[2] = v0;
  v2 = type metadata accessor for CloudKitExporter();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v1[8] = *(v6 + 64);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10001F9C0, 0, 0);
}

uint64_t sub_10001F9C0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v18 = v0[5];
  v5 = v0[2];
  v6 = type metadata accessor for DiagnosticFileCollector();
  v7 = *(v6 + 24);
  v8 = swift_allocObject();
  v0[10] = v8;
  *(v8 + 16) = 0;
  *(v8 + 24) = &_swiftEmptyArrayStorage;
  (*(v4 + 16))(v1, v5 + v7, v3);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  v0[11] = v11;
  (*(v4 + 32))(v11 + v9, v1, v3);
  *(v11 + v10) = v8;
  v12 = *(v5 + *(v6 + 32));
  type metadata accessor for Configuration();

  v13 = v12;
  static Configuration.cloudKitContainer.getter();
  CloudKitExporter.init(outputStreamFactory:operationGroup:container:)();
  v14 = async function pointer to CloudKitExporter.start()[1];
  v15 = swift_task_alloc();
  v0[12] = v15;
  *v15 = v0;
  v15[1] = sub_10001FB90;
  v16 = v0[5];

  return CloudKitExporter.start()();
}

uint64_t sub_10001FB90()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_10001FF8C;
  }

  else
  {
    v3 = sub_10001FCA4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001FCA4()
{
  v1 = v0[10];
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 24);
  v0[14] = v2;

  os_unfair_lock_unlock((v1 + 16));
  v3 = swift_task_alloc();
  v0[15] = v3;
  *(v3 + 16) = v2;
  v4 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_10001FDA8;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10001FDA8()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v5 = *v0;

  return _swift_task_switch(sub_10001FEDC, 0, 0);
}

uint64_t sub_10001FEDC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10001FF8C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];
  v8 = v0[13];

  return v7();
}

uint64_t sub_10002003C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v20 - v9;
  sub_10001DA7C(a1, v20 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100021CAC(v10);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = dispatch thunk of Actor.unownedExecutor.getter();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_10002020C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for URL();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v4[5] = *(v6 + 64);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000202D4, 0, 0);
}

uint64_t sub_1000202D4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = *(v5 + 8);
  v7 = type metadata accessor for DiagnosticFileCollector();
  (*(v4 + 16))(v1, v5 + *(v7 + 24), v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v0[7] = v9;
  *(v9 + 16) = v6;
  (*(v4 + 32))(v9 + v8, v1, v3);
  v10 = async function pointer to NSPersistentStoreCoordinator.perform<A>(_:)[1];
  v6;
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_10002042C;

  return NSPersistentStoreCoordinator.perform<A>(_:)();
}

uint64_t sub_10002042C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1000205AC;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_100020548;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100020548()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000205AC()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_100020618(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return _swift_task_switch(sub_1000206AC, v4, v6);
}

uint64_t sub_1000206AC()
{
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  if (ThrowingTaskGroup.isEmpty.getter())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = async function pointer to ThrowingTaskGroup.next(isolation:)[1];
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    v5 = sub_10000CED0(&qword_1000AB418, &qword_100086640);
    *v4 = v0;
    v4[1] = sub_1000207E4;
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);

    return ThrowingTaskGroup.next(isolation:)(v0 + 96, v8, v6, v5);
  }
}

uint64_t sub_1000207E4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = sub_100020A30;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = sub_100020900;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100020900()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = *(v0 + 56);
    if (ThrowingTaskGroup.isEmpty.getter())
    {
      if (v2)
      {
        swift_willThrow();
      }

      v4 = *(v0 + 8);

      return v4();
    }

    *(v0 + 72) = v2;
  }

  v6 = async function pointer to ThrowingTaskGroup.next(isolation:)[1];
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v8 = sub_10000CED0(&qword_1000AB418, &qword_100086640);
  *v7 = v0;
  v7[1] = sub_1000207E4;
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 16);

  return ThrowingTaskGroup.next(isolation:)(v0 + 96, v11, v9, v8);
}

uint64_t sub_100020A30()
{
  v1 = v0[11];
  if (v0[9])
  {
    v2 = v0[11];

    v1 = v0[9];
  }

  v3 = v0[7];
  v4 = v0[8];
  if (ThrowingTaskGroup.isEmpty.getter())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v5 = v0[1];

    return v5();
  }

  else
  {
    v0[9] = v1;
    v7 = async function pointer to ThrowingTaskGroup.next(isolation:)[1];
    v8 = swift_task_alloc();
    v0[10] = v8;
    v9 = sub_10000CED0(&qword_1000AB418, &qword_100086640);
    *v8 = v0;
    v8[1] = sub_1000207E4;
    v10 = v0[3];
    v11 = v0[4];
    v12 = v0[2];

    return ThrowingTaskGroup.next(isolation:)(v0 + 12, v12, v10, v9);
  }
}

uint64_t sub_100020B6C@<X0>(void *a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = CKDatabaseScopeString();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = String.lowercased()();

  v10._countAndFlagsBits = 95;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11 = [a1 zoneID];
  v12 = [v11 zoneName];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x6E6F736A2ELL;
  v17._object = 0xE500000000000000;
  String.append(_:)(v17);
  URL.appendingPathComponent(_:)();

  v18 = type metadata accessor for AsyncFileOutputStream();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = AsyncFileOutputStream.init(url:)();
  os_unfair_lock_lock((a2 + 16));

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v23 = *((*(a2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  os_unfair_lock_unlock((a2 + 16));
  a3[3] = v18;
  result = sub_100022F0C(&qword_1000AB440, &type metadata accessor for AsyncFileOutputStream);
  a3[4] = result;
  *a3 = v21;
  return result;
}

uint64_t sub_100020DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v4 = *(*(sub_10000CED0(&qword_1000AAD30, &qword_100085540) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100020E60, 0, 0);
}

uint64_t sub_100020E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[10];
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v23 = v3[10];
    }

    a1 = _CocoaArrayWrapper.endIndex.getter();
    v5 = a1;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_20:
    v24 = async function pointer to TaskGroup.awaitAllRemainingTasks(isolation:)[1];
    v25 = swift_task_alloc();
    v3[13] = v25;
    a3 = sub_10000CED0(&qword_1000AB438, &qword_100086690);
    *v25 = v3;
    v25[1] = sub_1000211EC;
    v26 = v3[9];
    a1 = 0;
    a2 = 0;

    return TaskGroup.awaitAllRemainingTasks(isolation:)(a1, a2, a3);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v30 = *v3[9];
    v29 = v4 & 0xC000000000000001;
    v28 = v3[10] + 32;
    while (1)
    {
      if (v29)
      {
        v9 = v3[10];
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v28 + 8 * v6);
      }

      v12 = v3[11];
      v11 = v3[12];
      v13 = type metadata accessor for TaskPriority();
      v14 = *(v13 - 8);
      (*(v14 + 56))(v11, 1, 1, v13);
      v15 = swift_allocObject();
      v15[2] = 0;
      v16 = v15 + 2;
      v15[3] = 0;
      v15[4] = v10;
      sub_10001DA7C(v11, v12);
      LODWORD(v12) = (*(v14 + 48))(v12, 1, v13);

      v17 = v3[11];
      if (v12 == 1)
      {
        sub_100021CAC(v3[11]);
        if (!*v16)
        {
          goto LABEL_14;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v14 + 8))(v17, v13);
        if (!*v16)
        {
LABEL_14:
          v19 = 0;
          v21 = 0;
          goto LABEL_15;
        }
      }

      v18 = v15[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v19 = dispatch thunk of Actor.unownedExecutor.getter();
      v21 = v20;
      swift_unknownObjectRelease();
LABEL_15:
      v22 = swift_allocObject();
      *(v22 + 16) = &unk_100086680;
      *(v22 + 24) = v15;

      if (v21 | v19)
      {
        v7 = v3 + 2;
        v3[2] = 0;
        v3[3] = 0;
        v3[4] = v19;
        v3[5] = v21;
      }

      else
      {
        v7 = 0;
      }

      ++v6;
      v8 = v3[12];
      v3[6] = 1;
      v3[7] = v7;
      v3[8] = v30;
      swift_task_create();

      sub_100021CAC(v8);
      if (v5 == v6)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
  return TaskGroup.awaitAllRemainingTasks(isolation:)(a1, a2, a3);
}

uint64_t sub_1000211EC()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100021318()
{
  v1 = async function pointer to AsyncFileOutputStream.closeAsync()[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_10000D130;

  return AsyncFileOutputStream.closeAsync()();
}

void sub_1000213AC(void *a1, _BYTE *a2)
{
  v58 = a2;
  v3 = type metadata accessor for NSPersistentStore.StoreType();
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  __chkstk_darwin(v3);
  v6 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Logger();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  __chkstk_darwin(v7);
  v10 = &v52[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for URL();
  v65 = *(v11 - 8);
  v12 = *(v65 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v52[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v13);
  v18 = &v52[-v17];
  v19 = __chkstk_darwin(v16);
  v64 = &v52[-v20];
  v21 = __chkstk_darwin(v19);
  v23 = &v52[-v22];
  __chkstk_darwin(v21);
  v63 = &v52[-v24];
  v25 = [a1 persistentStores];
  sub_10000D544(0, &qword_1000AB420, NSPersistentStore_ptr);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  if (!(v26 >> 62))
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_12:

    __break(1u);
    goto LABEL_13;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_12;
  }

LABEL_3:
  v57 = v6;
  if ((v27 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_15;
  }

  v28 = *(v27 + 32);
LABEL_6:
  v29 = v28;

  v30 = [v29 URL];

  if (!v30)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v56 = a1;

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v65;
  v32 = v63;
  (*(v65 + 32))(v63, v23, v11);
  URL.lastPathComponent.getter();
  v33 = v64;
  URL.appendingPathComponent(_:)();

  type metadata accessor for DiagnosticFileCollector();
  sub_100022F0C(&qword_1000AB410, type metadata accessor for DiagnosticFileCollector);
  static LoggedObject.logger.getter();
  v34 = *(v31 + 16);
  v34(v18, v32, v11);
  v34(v15, v33, v11);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v54 = v35;
    v38 = v37;
    v55 = swift_slowAlloc();
    v66 = v55;
    *v38 = 136315394;
    sub_100022F0C(&qword_1000AAD60, &type metadata accessor for URL);
    v58 = v10;
    v53 = v36;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    v42 = *(v31 + 8);
    v42(v18, v11);
    v43 = sub_100035120(v39, v41, &v66);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2080;
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v45;
    v42(v15, v11);
    v47 = sub_100035120(v44, v46, &v66);

    *(v38 + 14) = v47;
    v48 = v54;
    _os_log_impl(&_mh_execute_header, v54, v53, "Copying '%s' to '%s'", v38, 0x16u);
    swift_arrayDestroy();

    (*(v59 + 8))(v58, v60);
  }

  else
  {

    v42 = *(v31 + 8);
    v42(v15, v11);
    v42(v18, v11);
    (*(v59 + 8))(v10, v60);
  }

  v49 = v57;
  static NSPersistentStore.StoreType.sqlite.getter();
  v51 = v63;
  v50 = v64;
  NSPersistentStoreCoordinator.replacePersistentStore(at:destinationOptions:withPersistentStoreFrom:sourceOptions:type:)();
  (*(v61 + 8))(v49, v62);
  v42(v50, v11);
  v42(v51, v11);
}

uint64_t sub_100021A40(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000D130;

  return sub_10001F3D4(a1, a2, v6);
}

uint64_t sub_100021AF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiagnosticFileCollector();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100021B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiagnosticFileCollector();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100021BBC()
{
  v2 = *(type metadata accessor for DiagnosticFileCollector() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001DBDC;

  return sub_10001F80C();
}

uint64_t sub_100021CAC(uint64_t a1)
{
  v2 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100021D14()
{
  v1 = (type metadata accessor for DiagnosticFileCollector() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = v1[8];
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100021E24(uint64_t a1)
{
  v4 = *(type metadata accessor for DiagnosticFileCollector() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001DBDC;

  return sub_10002020C(a1, v6, v7, v1 + v5);
}

uint64_t sub_100021F14()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100022048(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100022140;

  return v7(a1);
}

uint64_t sub_100022140()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_100022238@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_100022724(0, 1, 1, &_swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_100022724((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = &_swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_100022724(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_100022724(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_100022724((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_1000225F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CED0(&qword_1000AB7C0, &qword_100086BF0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100022724(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CED0(&qword_1000AB450, &unk_1000866A0);
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
    v10 = &_swiftEmptyArrayStorage;
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

size_t sub_100022880(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000CED0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100022A5C()
{
  v1 = sub_10000CED0(&qword_1000AB428, &qword_100086650);
  sub_10003197C(v1);
  v2 = sub_10000CED0(&qword_1000AB430, &qword_100086658);
  sub_10003197C(v2);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022AD0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100022B28()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100022BC4@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100020B6C(a1, v6, a2);
}

uint64_t sub_100022C78(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000D130;

  return sub_100020DB8(a1, a2, v6);
}

uint64_t sub_100022D28()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100022D68()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001DBDC;

  return sub_100021318();
}

uint64_t sub_100022E1C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022E54(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001DBDC;

  return sub_100022048(a1, v5);
}

uint64_t sub_100022F0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100022F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002302C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000230D0()
{
  result = sub_10000D544(319, &qword_1000AB4D8, NSPersistentStoreCoordinator_ptr);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      result = sub_10000D544(319, &qword_1000AB4E0, CKContainer_ptr);
      if (v3 <= 0x3F)
      {
        result = sub_10000D544(319, &unk_1000AB4E8, CKOperationGroup_ptr);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000231C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;

  sub_100080ECC(0, 0, v7, &unk_100086760, v9);
}

uint64_t sub_1000232E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v6 = type metadata accessor for Logger();
  v5[3] = v6;
  v7 = *(v6 - 8);
  v5[4] = v7;
  v8 = *(v7 + 64) + 15;
  v5[5] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[6] = v9;
  *v9 = v5;
  v9[1] = sub_1000233D0;

  return sub_1000032B8();
}

uint64_t sub_1000233D0()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1000234E0, v2, 0);
}

uint64_t sub_1000234E0()
{
  v1 = *(v0 + 16);
  sub_100014C0C();

  return _swift_task_switch(sub_100023548, 0, 0);
}

void sub_100023548()
{
  v1 = v0[5];
  sub_100024CB0();
  static LoggedObject.logger.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Exiting after handling SIGTERM", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  (*(v6 + 8))(v5, v7);
  exit(0);
}

int main(int argc, const char **argv, const char **envp)
{
  swift_task_create();
  swift_task_getMainExecutor();
  swift_job_run();
  result = swift_task_asyncMainDrainQueue();
  __break(1u);
  return result;
}

uint64_t sub_100023694()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10002374C;

  return sub_1000240B8();
}

uint64_t sub_10002374C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100023888, v5, v4);
}

void sub_100023888()
{
  v1 = *(v0 + 24);

  exit(0);
}

void *sub_1000238C0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v58 = a7;
  v57 = a6;
  v56 = a5;
  v60 = a4;
  v63 = a3;
  v62 = a2;
  v12 = *a10;
  v59 = sub_10000CED0(&qword_1000AAD48, &qword_100085568);
  v13 = *(v59 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v59);
  v16 = &v55 - v15;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000CED0(&qword_1000AAFF0, &qword_100085C70);
  v72[3] = v22;
  v72[4] = swift_getOpaqueTypeConformance2();
  v23 = sub_10000CF2C(v72);
  (*(*(v22 - 8) + 32))(v23, a1, v22);
  v71[3] = sub_100024E54();
  v71[4] = &off_1000A2D48;
  v71[0] = a8;
  swift_defaultActor_initialize();
  *(a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_server) = 0;
  *(a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_isCoreDataSetUp) = 0;
  *(a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_isCloudKitLoggedIn) = 1;
  *(a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_didRecordProcessLaunchMetrics) = 0;
  *(a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_accountChangedListener) = 0;
  sub_100024EA0(&unk_1000AAD10);
  sub_100024EA0(&qword_1000AAD08);
  v61 = v12;
  static LoggedObject<>.logger.getter();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Initialized", v26, 2u);
  }

  v27 = (*(v18 + 8))(v21, v17);
  v70 = 0;
  __chkstk_darwin(v27);
  *(&v55 - 2) = &v70;
  sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  Future.init(closure:)();
  (*(v13 + 32))(a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_completion, v16, v59);
  result = v70;
  if (v70)
  {
    *(a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_promise) = v70;
    v59 = result;

    sub_100001D18();
    sub_10000D2CC(v72, a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_features);
    v29 = a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_accountStore;
    *(v29 + 3) = &type metadata for MainDriver.AccountStore;
    *(v29 + 4) = &off_1000A2060;
    v30 = v62;
    *(a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_notificationCenter) = v62;
    v31 = v63;
    *(a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_cloudKitContainer) = v63;
    v32 = OBJC_IVAR____TtC11homeeventsd10MainDriver_storageDirectory;
    v33 = type metadata accessor for URL();
    v34 = *(v33 - 8);
    (*(v34 + 16))(a10 + v32, v60, v33);
    v35 = (a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_localDatabaseName);
    v36 = v57;
    *v35 = v56;
    v35[1] = v36;
    v37 = OBJC_IVAR____TtC11homeeventsd10MainDriver_scheduler;
    sub_10000D2CC(v71, a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_scheduler);
    v38 = OBJC_IVAR____TtC11homeeventsd10MainDriver_maxCloudKitRecordsPerOperation;
    *(a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_maxCloudKitRecordsPerOperation) = a9;
    v39 = v58;
    sub_100024EEC(v58, &v64);
    if (*(&v65 + 1))
    {
      sub_1000111BC(&v64, &v67);
      v40 = v30;
      v41 = v31;
    }

    else
    {
      v68 = type metadata accessor for FileBackedBooleanFlag();
      v69 = &off_1000A2B38;
      sub_10000CF2C(&v67);
      v42 = v30;
      v43 = v31;
      URL.appendingPathComponent(_:)();
      if (*(&v65 + 1))
      {
        sub_10000D620(&v64, &qword_1000AB538, &qword_100086768);
      }
    }

    sub_1000111BC(&v67, a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_resetFlag);
    v44 = sub_100001FC8();
    v45 = objc_allocWithZone(NSPersistentContainer);
    v46 = v44;
    v47 = v39;
    v48 = String._bridgeToObjectiveC()();
    v49 = [v45 initWithName:v48 managedObjectModel:v46];

    sub_10000D2CC(v72, &v67);
    sub_100024F5C(a10 + v37, &v64);
    v50 = *(a10 + v38);
    type metadata accessor for EventUploadTask();
    v51 = swift_allocObject();
    v52 = v49;
    swift_defaultActor_initialize();

    sub_10000D620(v47, &qword_1000AB538, &qword_100086768);
    (*(v34 + 8))(v60, v33);
    sub_10000D330(v71);
    sub_10000D330(v72);
    *(v51 + 208) = 0;
    *(v51 + 216) = 0;
    *(v51 + 224) = 0x4000000000000000;
    swift_weakInit();
    *(v51 + 240) = 0;
    sub_1000111BC(&v67, v51 + 112);
    v53 = v65;
    *(v51 + 152) = v64;
    *(v51 + 168) = v53;
    *(v51 + 184) = v66;
    *(v51 + 192) = v52;
    *(v51 + 200) = v50;
    v54 = (a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_localStorageProperties);
    *v54 = v52;
    v54[1] = v51;

    return a10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000240B8()
{
  v1 = sub_10000CED0(&qword_1000AAD48, &qword_100085568);
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(type metadata accessor for URL() - 8) + 64) + 15;
  v0[5] = swift_task_alloc();
  v5 = sub_10000CED0(&qword_1000AAFF0, &qword_100085C70);
  v0[6] = v5;
  v6 = *(v5 - 8);
  v0[7] = v6;
  v7 = *(v6 + 64) + 15;
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v0[10] = v8;
  v9 = *(v8 - 8);
  v0[11] = v9;
  v10 = *(v9 + 64) + 15;
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v0[15] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[16] = v12;
  v0[17] = v11;

  return _swift_task_switch(sub_1000242C8, v12, v11);
}

uint64_t sub_1000242C8()
{
  v31 = v0;
  v1 = v0[14];
  v0[18] = sub_100024CB0();
  static LoggedObject.logger.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting", v4, 2u);
  }

  v5 = v0[14];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  v9 = v0[7];
  v27 = v0[8];
  v28 = v0[6];
  v10 = v0[5];
  v24 = v10;

  (*(v6 + 8))(v5, v7);
  sub_100035774();
  type metadata accessor for Configuration();
  static Configuration.defaultFeaturesDataSource.getter();
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v26 = [objc_opt_self() defaultCenter];
  v25 = static Configuration.cloudKitContainer.getter();
  v11 = type metadata accessor for MainDriver();
  sub_1000019C8(v10);
  v12 = static Configuration.persistentStoreName.getter();
  v14 = v13;
  v15 = [objc_opt_self() sharedScheduler];
  v16 = static Constants.maxCloudKitRecordsPerOperation.getter();
  v17 = *(v11 + 48);
  v18 = *(v11 + 52);
  v19 = swift_allocObject();
  (*(v9 + 16))(v27, v8, v28);
  v20 = sub_1000238C0(v27, v26, v25, v24, v12, v14, v29, v15, v16, v19);
  v0[19] = v20;
  (*(v9 + 8))(v8, v28);
  type metadata accessor for SignalHandler();
  v21 = swift_allocObject();
  v0[20] = v21;
  swift_defaultActor_initialize();
  *(v21 + 112) = &_swiftEmptyDictionarySingleton;
  v22 = swift_allocObject();
  v0[21] = v22;
  *(v22 + 16) = v20;
  *(v22 + 24) = v21;

  return _swift_task_switch(sub_100024594, v21, 0);
}

uint64_t sub_100024594()
{
  v1 = v0[20];
  sub_100014518(15, sub_100024D44, v0[21]);

  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_100024658;
  v3 = v0[19];
  v4 = v0[4];

  return sub_100002634(v4);
}

uint64_t sub_100024658()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *v0;

  v4 = async function pointer to Future.result.getter[1];
  v5 = swift_task_alloc();
  v1[23] = v5;
  *v5 = v3;
  v5[1] = sub_1000247B0;
  v6 = v1[4];
  v7 = v1[2];

  return Future.result.getter();
}

uint64_t sub_1000247B0()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;
  *(*v1 + 192) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 136);
  v9 = *(v2 + 128);
  if (v0)
  {
    v10 = sub_100024B5C;
  }

  else
  {
    v10 = sub_100024948;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_100024964()
{
  v1 = v0[20];
  sub_100014C0C();
  v2 = v0[16];
  v3 = v0[17];

  return _swift_task_switch(sub_1000249C8, v2, v3);
}

uint64_t sub_1000249C8()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[13];

  static LoggedObject.logger.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[19];
  v7 = v0[20];
  if (v6)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Exiting", v9, 2u);
  }

  else
  {
    v10 = v0[19];
  }

  v11 = v0[14];
  v12 = v0[12];
  v13 = v0[9];
  v14 = v0[8];
  v16 = v0[4];
  v15 = v0[5];
  (*(v0[11] + 8))(v0[13], v0[10]);

  v17 = v0[1];

  return v17();
}

void sub_100024B5C()
{
  v1 = v0[24];
  v2 = v0[18];
  v3 = v0[12];
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[24];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "MainDriver threw error: %@", v7, 0xCu);
    sub_10000D620(v8, &unk_1000AB7D0, &qword_100085510);
  }

  v11 = v0[11];
  v10 = v0[12];
  v12 = v0[10];

  (*(v11 + 8))(v10, v12);
  exit(1);
}

unint64_t sub_100024CB0()
{
  result = qword_1000AB528;
  if (!qword_1000AB528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB528);
  }

  return result;
}

uint64_t sub_100024D04()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100024D4C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100024D94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000D130;

  return sub_1000232E0(a1, v4, v5, v7, v6);
}

unint64_t sub_100024E54()
{
  result = qword_1000AB530;
  if (!qword_1000AB530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000AB530);
  }

  return result;
}

uint64_t sub_100024EA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MainDriver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100024EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AB538, &qword_100086768);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024FC8(uint64_t a1)
{
  v2 = v1;
  swift_weakAssign();
  sub_10000D2CC((v2 + 14), v23);
  v4 = v2[24];
  v5 = v2[25];
  v6 = type metadata accessor for CoreDataDatabase();
  v7 = swift_allocObject();
  *(v7 + 16) = [v4 newBackgroundContext];
  *(v7 + 24) = v5;
  *(v7 + 32) = 0;
  v8 = *(a1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_cloudKitContainer);
  type metadata accessor for LubyRackoffEncryptionKey();
  type metadata accessor for UUID();
  type metadata accessor for Configuration();
  v9 = v8;
  static Configuration.encryptionKeyWriteCacheSeconds.getter();
  sub_100029E90(&unk_1000AC310, 255, &type metadata accessor for UUID);
  asyncCache<A, B>(of:withKeysOf:expirationDuration:)();
  v10 = static Configuration.cloudKitRecordDateCoalescingWindowSeconds.getter();
  v21[3] = v6;
  v21[4] = &off_1000A42B8;
  v21[0] = v7;
  type metadata accessor for EventUploader();
  v11 = swift_allocObject();
  v12 = sub_10001116C(v21, v6);
  v13 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v21[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v11[10] = v6;
  v11[11] = &off_1000A42B8;
  v11[7] = v17;
  sub_1000111BC(v23, (v11 + 2));
  v11[12] = v9;
  sub_1000111BC(&v22, (v11 + 13));
  v11[20] = v10;
  v11[21] = v5;
  v11[18] = 0;
  v11[19] = 0;
  sub_10000D330(v21);
  v18 = v2[26];
  v2[26] = v11;

  sub_100047DB4(0xD000000000000036, 0x8000000100089130, sub_100029ED8, v2);
  sub_100047DB4(0xD00000000000003CLL, 0x80000001000891D0, sub_100029ED8, v2);
  sub_100047DB4(0xD000000000000044, 0x8000000100089210, sub_100029ED8, v2);
}

uint64_t sub_1000252A4()
{
  sub_10000D330((v0 + 112));
  sub_10000D5CC(v0 + 152);

  v1 = *(v0 + 208);

  swift_weakDestroy();

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100025328()
{
  type metadata accessor for EventUploadTask();
  sub_100029E90(&qword_1000AB6A0, v0, type metadata accessor for EventUploadTask);

  return static LoggedObject<>.logger.getter();
}

uint64_t sub_1000253B0()
{
  type metadata accessor for EventUploadTask();

  return static LoggedObject.logCategory.getter();
}

uint64_t sub_1000253E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_100029EE0(a1, v14);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = a2;
  v10 = v14[1];
  *(v9 + 40) = v14[0];
  *(v9 + 56) = v10;
  *(v9 + 72) = v15;

  v11 = sub_1000611E8(0, 0, v7, &unk_100086858, v9);
  sub_10000D620(v7, &qword_1000AAD30, &qword_100085540);
  return v11;
}

uint64_t sub_100025544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10000D130;

  return sub_1000255E0(a5);
}

uint64_t sub_1000255E0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  v3 = type metadata accessor for CancellationError();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000257D8, v1, 0);
}

uint64_t sub_1000257D8()
{
  v38 = v0;
  v1 = v0[30];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v3[3];
  v5 = v3[4];
  sub_10000D224(v3, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v8 = v7;
  v0[31] = v6;
  v0[32] = v7;
  v0[33] = sub_100029E90(&qword_1000AB6B0, v7, type metadata accessor for EventUploadTask);
  v0[34] = sub_100029E90(&qword_1000AB6A0, v9, type metadata accessor for EventUploadTask);
  static LoggedObject<>.logger.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[30];
  v15 = v0[13];
  v14 = v0[14];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v37 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_100035120(v6, v8, &v37);
    _os_log_impl(&_mh_execute_header, v10, v11, "Successfully launched the task associated with identifier %{public}s", v16, 0xCu);
    sub_10000D330(v17);
  }

  v18 = *(v14 + 8);
  v18(v13, v15);
  v0[35] = v18;
  v19 = v0[8];
  v20 = *(v19 + 240);
  if (v20)
  {
    v21 = v20;
    sub_10007A13C(3);

    v22 = *(v19 + 240);
    *(v19 + 240) = 0;
  }

  else
  {
    v22 = [objc_allocWithZone(type metadata accessor for EventUploadScheduledWaitLogEvent()) init];
    sub_10007A13C(2);
  }

  v23 = v0[8];

  Strong = swift_weakLoadStrong();
  v0[36] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100025BA0, Strong, 0);
  }

  else
  {
    v25 = v0[29];
    v26 = v0[9];
    static LoggedObject<>.logger.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[29];
    v31 = v0[13];
    v32 = v0[14];
    if (v29)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "MainDriver unexpectedly nil when trying to submit process launch metrics via background task", v33, 2u);
    }

    v18(v30, v31);
    v34 = swift_task_alloc();
    v0[38] = v34;
    *v34 = v0;
    v34[1] = sub_100025E34;
    v35 = v0[8];

    return sub_10002908C();
  }
}

uint64_t sub_100025BA0()
{
  v1 = v0[36];
  if (*(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_didRecordProcessLaunchMetrics))
  {
    v2 = v0[8];

    return _swift_task_switch(sub_100025D9C, v2, 0);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_didRecordProcessLaunchMetrics) = 1;
    v3 = swift_task_alloc();
    v0[37] = v3;
    *v3 = v0;
    v3[1] = sub_100025C8C;
    v4 = v0[36];

    return sub_100005E6C(0, 0);
  }
}

uint64_t sub_100025C8C()
{
  v1 = *v0;
  v2 = *(*v0 + 296);
  v5 = *v0;

  v3 = *(v1 + 64);

  return _swift_task_switch(sub_100025D9C, v3, 0);
}

uint64_t sub_100025D9C()
{
  v1 = v0[36];

  v2 = swift_task_alloc();
  v0[38] = v2;
  *v2 = v0;
  v2[1] = sub_100025E34;
  v3 = v0[8];

  return sub_10002908C();
}

uint64_t sub_100025E34(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  *(v4 + 312) = v1;

  v7 = *(v4 + 64);
  if (v1)
  {
    v8 = sub_100027670;
  }

  else
  {
    *(v4 + 392) = a1 & 1;
    v8 = sub_100025F74;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100025F74()
{
  v75 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v4 = *(v0 + 72);
  if (v1 == 1)
  {
    v5 = *(v0 + 224);
    v6 = *(v0 + 72);
    static LoggedObject<>.logger.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Successfully uploaded events", v9, 2u);
    }

    v10 = *(v0 + 280);
    v11 = *(v0 + 224);
    v12 = *(v0 + 104);
    v13 = *(v0 + 112);
    v14 = *(v0 + 64);

    v10(v11, v12);
    sub_1000298AC();
  }

  else
  {
    v15 = *(v0 + 216);
    v16 = *(v0 + 72);
    static LoggedObject<>.logger.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 280);
    v21 = *(v0 + 216);
    v22 = *(v0 + 104);
    v23 = *(v0 + 112);
    if (v19)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Declining to start our task because it is already running", v24, 2u);
    }

    v20(v21, v22);
  }

  *(v0 + 393) = 1;
  *(v0 + 328) = 0;
  v25 = *(v0 + 264);
  v26 = *(v0 + 272);
  v27 = *(v0 + 256);
  v28 = *(v0 + 184);
  v29 = *(v0 + 72);
  static LoggedObject<>.logger.getter();

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();

  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 280);
  if (v32)
  {
    v35 = *(v0 + 248);
    v34 = *(v0 + 256);
    v36 = *(v0 + 112);
    v70 = *(v0 + 104);
    v72 = *(v0 + 184);
    v37 = swift_slowAlloc();
    v38 = v1;
    v39 = swift_slowAlloc();
    v74 = v39;
    *v37 = 136446210;
    *(v37 + 4) = sub_100035120(v35, v34, &v74);
    _os_log_impl(&_mh_execute_header, v30, v31, "Marking task associated with identifier %{public}s complete", v37, 0xCu);
    sub_10000D330(v39);
    v1 = v38;

    v41 = v70;
    v40 = v72;
  }

  else
  {
    v42 = *(v0 + 184);
    v43 = *(v0 + 104);
    v44 = *(v0 + 112);

    v40 = v42;
    v41 = v43;
  }

  v33(v40, v41);
  v45 = *(v0 + 56);
  v46 = v45[3];
  v47 = v45[4];
  sub_10000D224(v45, v46);
  (*(v47 + 40))(v46, v47);
  if (v1)
  {
    v50 = *(*(v0 + 64) + 208);
    *(v0 + 336) = v50;
    if (v50)
    {
      v51 = *(v0 + 256);

      v50 = sub_100027024;
      v48 = 0;
      v49 = 0;
    }

    else
    {
      __break(1u);
    }

    return _swift_task_switch(v50, v48, v49);
  }

  else
  {
    v52 = *(v0 + 256);

    v54 = *(v0 + 232);
    v53 = *(v0 + 240);
    v56 = *(v0 + 216);
    v55 = *(v0 + 224);
    v58 = *(v0 + 200);
    v57 = *(v0 + 208);
    v59 = *(v0 + 184);
    v60 = *(v0 + 192);
    v62 = *(v0 + 168);
    v61 = *(v0 + 176);
    v65 = *(v0 + 160);
    v66 = *(v0 + 152);
    v67 = *(v0 + 144);
    v68 = *(v0 + 136);
    v69 = *(v0 + 128);
    v71 = *(v0 + 120);
    v73 = *(v0 + 96);

    v63 = *(v0 + 8);

    return v63();
  }
}

uint64_t sub_1000263F4()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_100026460, v2, 0);
}

uint64_t sub_100026460()
{
  v78 = v0;
  if (v0[40] < 1)
  {
    v22 = v0[33];
    v23 = v0[34];
    v24 = v0[32];
    v25 = v0[24];
    v26 = v0[9];
    static LoggedObject<>.logger.getter();

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();

    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[35];
    v31 = v0[32];
    if (v29)
    {
      v32 = v0[31];
      v75 = v0[24];
      v34 = v0[13];
      v33 = v0[14];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v77[0] = v36;
      *v35 = 136446210;
      v37 = sub_100035120(v32, v31, v77);

      *(v35 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v27, v28, "Marking task associated with identifier %{public}s complete", v35, 0xCu);
      sub_10000D330(v36);

      v38 = v75;
    }

    else
    {
      v48 = v0[24];
      v34 = v0[13];
      v49 = v0[14];
      v50 = v0[32];

      v38 = v48;
    }

    v30(v38, v34);
    v51 = v0[7];
    v52 = v51[3];
    v53 = v51[4];
    sub_10000D224(v51, v52);
    (*(v53 + 40))(v52, v53);
  }

  else
  {
    v1 = v0[48];
    v2 = v0[7];
    v3 = v2[3];
    v4 = v2[4];
    sub_10000D224(v2, v3);
    (*(v4 + 48))(v3, v4, 0.0);
    if (v1)
    {
      v5 = v0[33];
      v6 = v0[34];
      v7 = v0[32];
      v8 = v0[25];
      v9 = v0[9];
      static LoggedObject<>.logger.getter();

      swift_errorRetain();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      v12 = os_log_type_enabled(v10, v11);
      v13 = v0[35];
      v14 = v0[32];
      if (v12)
      {
        v15 = v0[31];
        v70 = v0[14];
        v72 = v0[13];
        v74 = v0[25];
        v16 = v0[35];
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v77[0] = v19;
        *v17 = 136446466;
        v20 = sub_100035120(v15, v14, v77);

        *(v17 + 4) = v20;
        *(v17 + 12) = 2114;
        swift_errorRetain();
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 14) = v21;
        *v18 = v21;
        _os_log_impl(&_mh_execute_header, v10, v11, "Failed to mark the task associated with identifier %{public}s as expired, marking complete and resubmitting: %{public}@", v17, 0x16u);
        sub_10000D620(v18, &unk_1000AB7D0, &qword_100085510);

        sub_10000D330(v19);

        v16(v74, v72);
      }

      else
      {
        v40 = v0[25];
        v41 = v0[13];
        v42 = v0[14];
        v43 = v0[32];

        v13(v40, v41);
      }

      v44 = v0[7];
      v45 = v0[8];
      v46 = v44[3];
      v47 = v44[4];
      sub_10000D224(v44, v46);
      (*(v47 + 40))(v46, v47);
      sub_100028B58(0, 1);
    }

    else
    {
      v39 = v0[32];
    }
  }

  v55 = v0[29];
  v54 = v0[30];
  v57 = v0[27];
  v56 = v0[28];
  v59 = v0[25];
  v58 = v0[26];
  v60 = v0[23];
  v61 = v0[24];
  v63 = v0[21];
  v62 = v0[22];
  v66 = v0[20];
  v67 = v0[19];
  v68 = v0[18];
  v69 = v0[17];
  v71 = v0[16];
  v73 = v0[15];
  v76 = v0[12];

  v64 = v0[1];

  return v64();
}

uint64_t sub_100026A34()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_100026AA0, v2, 0);
}

uint64_t sub_100026AA0()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v4 = *(v0 + 208);
  v5 = *(v0 + 72);
  static LoggedObject<>.logger.getter();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 384);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to check if there are further pending events, assuming there are: %{public}@", v10, 0xCu);
    sub_10000D620(v11, &unk_1000AB7D0, &qword_100085510);
  }

  else
  {
    v13 = *(v0 + 384);
  }

  v14 = *(v0 + 112) + 8;
  (*(v0 + 280))(*(v0 + 208), *(v0 + 104));
  v15 = *(v0 + 56);
  v16 = v15[3];
  v17 = v15[4];
  sub_10000D224(v15, v16);
  (*(v17 + 48))(v16, v17, 0.0);
  v18 = *(v0 + 256);

  v20 = *(v0 + 232);
  v19 = *(v0 + 240);
  v22 = *(v0 + 216);
  v21 = *(v0 + 224);
  v24 = *(v0 + 200);
  v23 = *(v0 + 208);
  v25 = *(v0 + 184);
  v26 = *(v0 + 192);
  v28 = *(v0 + 168);
  v27 = *(v0 + 176);
  v31 = *(v0 + 160);
  v32 = *(v0 + 152);
  v33 = *(v0 + 144);
  v34 = *(v0 + 136);
  v35 = *(v0 + 128);
  v36 = *(v0 + 120);
  v37 = *(v0 + 96);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_100027024()
{
  v1 = *sub_10000D224((*(v0 + 336) + 56), *(*(v0 + 336) + 80));
  v2 = swift_task_alloc();
  *(v0 + 344) = v2;
  *v2 = v0;
  v2[1] = sub_1000270C4;

  return sub_100078894();
}

uint64_t sub_1000270C4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v7 = sub_10002752C;
  }

  else
  {
    *(v4 + 360) = a1;
    v7 = sub_1000271EC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000271EC()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_100027258, v2, 0);
}

uint64_t sub_100027258()
{
  if (*(v0 + 360) < 1)
  {
    goto LABEL_6;
  }

  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 176);
  v4 = *(v0 + 72);
  static LoggedObject<>.logger.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Found pending events in the local database, scheduling a follow-up task to upload them", v7, 2u);
  }

  v8 = *(v0 + 352);
  v9 = *(v0 + 393);
  v10 = *(v0 + 328);
  v11 = *(v0 + 280);
  v12 = *(v0 + 176);
  v13 = *(v0 + 104);
  v14 = *(v0 + 112);
  v15 = *(v0 + 64);

  v11(v12, v13);
  sub_100028B58(v10, v9);
  if (v8)
  {
    v17 = *(v0 + 232);
    v16 = *(v0 + 240);
    v19 = *(v0 + 216);
    v18 = *(v0 + 224);
    v21 = *(v0 + 200);
    v20 = *(v0 + 208);
    v22 = *(v0 + 184);
    v23 = *(v0 + 192);
    v24 = *(v0 + 176);
    v37 = *(v0 + 168);
    v38 = *(v0 + 160);
    v40 = *(v0 + 152);
    v42 = *(v0 + 144);
    v44 = *(v0 + 136);
    v46 = *(v0 + 128);
    v48 = *(v0 + 120);
    v50 = *(v0 + 96);

    v25 = *(v0 + 8);
  }

  else
  {
LABEL_6:
    v27 = *(v0 + 232);
    v26 = *(v0 + 240);
    v29 = *(v0 + 216);
    v28 = *(v0 + 224);
    v31 = *(v0 + 200);
    v30 = *(v0 + 208);
    v32 = *(v0 + 184);
    v33 = *(v0 + 192);
    v35 = *(v0 + 168);
    v34 = *(v0 + 176);
    v39 = *(v0 + 160);
    v41 = *(v0 + 152);
    v43 = *(v0 + 144);
    v45 = *(v0 + 136);
    v47 = *(v0 + 128);
    v49 = *(v0 + 120);
    v51 = *(v0 + 96);

    v25 = *(v0 + 8);
  }

  return v25();
}

uint64_t sub_10002752C()
{
  v1 = v0[42];

  v21 = v0[44];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v7 = v0[25];
  v6 = v0[26];
  v9 = v0[23];
  v8 = v0[24];
  v11 = v0[21];
  v10 = v0[22];
  v14 = v0[20];
  v15 = v0[19];
  v16 = v0[18];
  v17 = v0[17];
  v18 = v0[16];
  v19 = v0[15];
  v20 = v0[12];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100027670()
{
  v163 = v0;
  *(v0 + 40) = *(v0 + 312);
  swift_errorRetain();
  sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  v1 = swift_dynamicCast();
  v2 = *(v0 + 312);
  if (v1)
  {
    v3 = *(v0 + 312);

    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    if (v5 >> 62)
    {
      if (v5 >> 62 != 1)
      {
        v79 = *(v0 + 264);
        v78 = *(v0 + 272);
        v80 = *(v0 + 136);
        v81 = *(v0 + 32);
        v82 = *(v0 + 64);
        v83 = *(v0 + 72);
        sub_1000298AC();
        static LoggedObject<>.logger.getter();
        swift_errorRetain();
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.error.getter();
        sub_10002A044(*&v4, v5);
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          *v86 = 138543362;
          swift_errorRetain();
          v88 = _swift_stdlib_bridgeErrorToNSError();
          *(v86 + 4) = v88;
          *v87 = v88;
          _os_log_impl(&_mh_execute_header, v84, v85, "Encountered non-recoverable error when attempting to upload events: %{public}@", v86, 0xCu);
          sub_10000D620(v87, &unk_1000AB7D0, &qword_100085510);
        }

        v89 = *(v0 + 280);
        v90 = *(v0 + 136);
        v91 = *(v0 + 104);
        v92 = *(v0 + 112);

        sub_10002A044(*&v4, v5);
        v89(v90, v91);
        v4 = 0.0;
        v27 = 1;
        goto LABEL_45;
      }

      v7 = *(v0 + 64);
      sub_1000298AC();
      v9 = *(v0 + 264);
      v8 = *(v0 + 272);
      v10 = *(v0 + 72);
      if (v5)
      {
        v11 = *(v0 + 144);
        v12 = *(v0 + 64);
        sub_100029A9C();
        v14 = v13;
        v158 = v13;
        static LoggedObject<>.logger.getter();
        swift_errorRetain();
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.error.getter();
        sub_10002A044(*&v4, v5);
        if (!os_log_type_enabled(v15, v16))
        {
LABEL_10:
          v23 = *(v0 + 280);
          v24 = *(v0 + 144);
          v25 = *(v0 + 104);
          v26 = *(v0 + 112);

          sub_10002A044(*&v4, v5);
          v23(v24, v25);
          v27 = 0;
          v4 = v158;
LABEL_45:
          v123 = *(v0 + 40);

          goto LABEL_46;
        }

        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 134218242;
        if ((~*&v158 & 0x7FF0000000000000) != 0)
        {
          if (v14 > -9.22337204e18)
          {
            if (v14 < 9.22337204e18)
            {
              v21 = v18;
              *(v17 + 4) = v14;
              *(v17 + 12) = 2114;
              swift_errorRetain();
              v22 = _swift_stdlib_bridgeErrorToNSError();
              *(v17 + 14) = v22;
              *v21 = v22;
              _os_log_impl(&_mh_execute_header, v15, v16, "Encountered recoverable error that did not include a retry time suggestion, using %ld seconds: %{public}@", v17, 0x16u);
              sub_10000D620(v21, &unk_1000AB7D0, &qword_100085510);

              goto LABEL_10;
            }

            goto LABEL_62;
          }

          goto LABEL_58;
        }

        __break(1u);
        goto LABEL_55;
      }

      v100 = *(v0 + 152);
      v101 = *(v0 + 264);
      v102 = *(v0 + 272);
      v103 = *(v0 + 72);
      static LoggedObject<>.logger.getter();
      swift_errorRetain();
      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.error.getter();
      sub_10002A044(*&v4, v5);
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v106 = 134218242;
        if ((~*&v4 & 0x7FF0000000000000) == 0)
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        if (v4 <= -9.22337204e18)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (v4 >= 9.22337204e18)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v107 = v18;
        *(v106 + 4) = v4;
        *(v106 + 12) = 2114;
        swift_errorRetain();
        v108 = _swift_stdlib_bridgeErrorToNSError();
        *(v106 + 14) = v108;
        *v107 = v108;
        _os_log_impl(&_mh_execute_header, v104, v105, "Encountered recoverable error that includes suggested retry time of %ld seconds: %{public}@", v106, 0x16u);
        sub_10000D620(v107, &unk_1000AB7D0, &qword_100085510);
      }

      v109 = *(v0 + 280);
      v110 = *(v0 + 152);
    }

    else
    {
      v160 = *(v0 + 32);
      v66 = *(v0 + 264);
      v65 = *(v0 + 272);
      v67 = *(v0 + 64);
      v68 = *(v0 + 72);
      if (v5)
      {
        v69 = *(v0 + 160);
        sub_100029A9C();
        v71 = v70;
        v156 = v70;
        static LoggedObject<>.logger.getter();

        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();
        sub_10002A044(*&v4, v5);
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v162 = v18;
          *v74 = 134218242;
          if ((~*&v156 & 0x7FF0000000000000) == 0)
          {
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          if (v71 <= -9.22337204e18)
          {
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          v154 = v18;
          if (v71 >= 9.22337204e18)
          {
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

          v150 = *(v0 + 160);
          v152 = *(v0 + 280);
          v147 = *(v0 + 112);
          v148 = *(v0 + 104);
          *(v74 + 4) = v71;
          *(v74 + 12) = 2082;
          type metadata accessor for UUID();
          sub_100029E90(&unk_1000AC310, 255, &type metadata accessor for UUID);
          v75 = Dictionary.description.getter();
          v77 = sub_100035120(v75, v76, &v162);

          *(v74 + 14) = v77;
          _os_log_impl(&_mh_execute_header, v72, v73, "Encountered some errors that did not include any retry time suggestion, using %ld seconds: %{public}s", v74, 0x16u);
          sub_10000D330(v154);

          sub_10002A044(*&v4, v5);
          v152(v150, v148);
        }

        else
        {
          v117 = *(v0 + 280);
          v118 = *(v0 + 160);
          v119 = *(v0 + 104);
          v120 = *(v0 + 112);

          sub_10002A044(*&v4, v5);
          v117(v118, v119);
        }

        v27 = 0;
        v4 = v156;
        goto LABEL_45;
      }

      v111 = *(v0 + 168);
      sub_1000298AC();
      static LoggedObject<>.logger.getter();

      v104 = Logger.logObject.getter();
      v112 = static os_log_type_t.error.getter();
      sub_10002A044(*&v4, v5);
      if (os_log_type_enabled(v104, v112))
      {
        v113 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v162 = v18;
        *v113 = 134218242;
        if ((~*&v4 & 0x7FF0000000000000) == 0)
        {
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if (v4 <= -9.22337204e18)
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v157 = v18;
        if (v4 >= 9.22337204e18)
        {
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v153 = *(v0 + 168);
        v155 = *(v0 + 280);
        v149 = *(v0 + 112);
        v151 = *(v0 + 104);
        *(v113 + 4) = v4;
        *(v113 + 12) = 2082;
        type metadata accessor for UUID();
        sub_100029E90(&unk_1000AC310, 255, &type metadata accessor for UUID);
        v114 = Dictionary.description.getter();
        v116 = sub_100035120(v114, v115, &v162);

        *(v113 + 14) = v116;
        _os_log_impl(&_mh_execute_header, v104, v112, "Encountered some errors that include suggested retry time of %ld seconds: %{public}s", v113, 0x16u);
        sub_10000D330(v157);

        sub_10002A044(*&v4, v5);
        v155(v153, v151);
LABEL_44:
        v27 = 0;
        goto LABEL_45;
      }

      v109 = *(v0 + 280);
      v110 = *(v0 + 168);
    }

    v121 = *(v0 + 104);
    v122 = *(v0 + 112);

    sub_10002A044(*&v4, v5);
    v109(v110, v121);
    goto LABEL_44;
  }

  v28 = *(v0 + 96);
  v29 = *(v0 + 80);
  v30 = *(v0 + 40);

  *(v0 + 48) = v2;
  swift_errorRetain();
  v31 = swift_dynamicCast();
  v32 = *(v0 + 312);
  v33 = *(v0 + 264);
  v34 = *(v0 + 272);
  if (v31)
  {
    v35 = *(v0 + 256);
    v36 = *(v0 + 128);
    v37 = *(v0 + 72);
    v38 = *(v0 + 312);

    static LoggedObject<>.logger.getter();

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 280);
    if (v41)
    {
      v44 = *(v0 + 248);
      v43 = *(v0 + 256);
      v159 = *(v0 + 128);
      v46 = *(v0 + 104);
      v45 = *(v0 + 112);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v162 = v48;
      *v47 = 136446210;
      *(v47 + 4) = sub_100035120(v44, v43, &v162);
      _os_log_impl(&_mh_execute_header, v39, v40, "The task associated with identifier %{public}s has been canceled", v47, 0xCu);
      sub_10000D330(v48);

      v49 = v159;
    }

    else
    {
      v93 = *(v0 + 128);
      v46 = *(v0 + 104);
      v94 = *(v0 + 112);

      v49 = v93;
    }

    v42(v49, v46);
    v96 = *(v0 + 88);
    v95 = *(v0 + 96);
    v97 = *(v0 + 80);
    v98 = *(v0 + 64);
    sub_1000298AC();
    (*(v96 + 8))(v95, v97);
    v99 = *(v0 + 48);

    v18 = *(v98 + 208);
    *(v0 + 368) = v18;
    if (v18)
    {

      v18 = sub_1000284D4;
      goto LABEL_51;
    }

LABEL_67:
    __break(1u);
    return _swift_task_switch(v18, v19, v20);
  }

  v50 = *(v0 + 120);
  v51 = *(v0 + 72);
  v52 = *(v0 + 48);

  static LoggedObject<>.logger.getter();
  swift_errorRetain();
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = *(v0 + 312);
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v56 = 138543362;
    swift_errorRetain();
    v58 = _swift_stdlib_bridgeErrorToNSError();
    *(v56 + 4) = v58;
    *v57 = v58;
    _os_log_impl(&_mh_execute_header, v53, v54, "Encountered unhandled error when attempting to upload events: %{public}@", v56, 0xCu);
    sub_10000D620(v57, &unk_1000AB7D0, &qword_100085510);
  }

  v59 = *(v0 + 312);
  v60 = *(v0 + 280);
  v62 = *(v0 + 112);
  v61 = *(v0 + 120);
  v63 = *(v0 + 104);
  v64 = *(v0 + 64);

  v60(v61, v63);
  sub_1000298AC();

  v4 = 0.0;
  v27 = 1;
LABEL_46:
  *(v0 + 393) = v27;
  *(v0 + 328) = v4;
  v124 = *(v0 + 264);
  v125 = *(v0 + 272);
  v126 = *(v0 + 256);
  v127 = *(v0 + 184);
  v128 = *(v0 + 72);
  static LoggedObject<>.logger.getter();

  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.info.getter();

  v131 = os_log_type_enabled(v129, v130);
  v132 = *(v0 + 280);
  if (v131)
  {
    v134 = *(v0 + 248);
    v133 = *(v0 + 256);
    v161 = *(v0 + 184);
    v136 = *(v0 + 104);
    v135 = *(v0 + 112);
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v162 = v138;
    *v137 = 136446210;
    *(v137 + 4) = sub_100035120(v134, v133, &v162);
    _os_log_impl(&_mh_execute_header, v129, v130, "Marking task associated with identifier %{public}s complete", v137, 0xCu);
    sub_10000D330(v138);

    v139 = v161;
  }

  else
  {
    v140 = *(v0 + 184);
    v136 = *(v0 + 104);
    v141 = *(v0 + 112);

    v139 = v140;
  }

  v132(v139, v136);
  v142 = *(v0 + 56);
  v143 = v142[3];
  v144 = v142[4];
  sub_10000D224(v142, v143);
  (*(v144 + 40))(v143, v144);
  v18 = *(*(v0 + 64) + 208);
  *(v0 + 336) = v18;
  if (!v18)
  {
    goto LABEL_66;
  }

  v145 = *(v0 + 256);

  v18 = sub_100027024;
LABEL_51:
  v19 = 0;
  v20 = 0;

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_1000284D4()
{
  v1 = *sub_10000D224((*(v0 + 368) + 56), *(*(v0 + 368) + 80));
  v2 = swift_task_alloc();
  *(v0 + 376) = v2;
  *v2 = v0;
  v2[1] = sub_100028574;

  return sub_100078894();
}

uint64_t sub_100028574(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 376);
  v6 = *v2;
  *(*v2 + 384) = v1;

  if (v1)
  {
    v7 = sub_100026A34;
  }

  else
  {
    *(v4 + 320) = a1;
    v7 = sub_1000263F4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10002869C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for EventRecord.DecodedEvent();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100028760, v2, 0);
}

id sub_100028760()
{
  v1 = 0;
  receiver = v0[4].receiver;
  v3 = *(v0[2].receiver + 2);
  do
  {
    v4 = v1;
    if (v3 == v1)
    {
      break;
    }

    super_class = v0[4].super_class;
    v6 = v0[3].super_class;
    receiver[2](super_class, v0[2].receiver + ((*(receiver + 80) + 32) & ~*(receiver + 80)) + receiver[9] * v1++, v6);
    v7 = EventRecord.DecodedEvent.isFake.getter();
    (receiver[1])(super_class, v6);
  }

  while ((v7 & 1) != 0);
  v8 = v0[3].receiver;
  v9 = type metadata accessor for EventUploadSubtaskLogEvent();
  v10 = objc_allocWithZone(v9);
  v11 = OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_metricsManager;
  type metadata accessor for MetricsManager();
  *&v10[v11] = static MetricsManager.sharedInstance.getter();
  v10[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_subtaskType] = 0;
  *&v10[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_numRecords] = v3;
  v10[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_attributedToFakeData] = v3 == v4;
  v0[1].receiver = v10;
  v0[1].super_class = v9;
  result = objc_msgSendSuper2(v0 + 1, "init");
  v0[5].receiver = result;
  v13 = *(v8 + 26);
  v0[5].super_class = v13;
  if (v13)
  {

    v14 = swift_task_alloc();
    v0[6].receiver = v14;
    *v14 = v0;
    v14[1] = sub_100028934;
    v16 = v0[2].receiver;
    v15 = v0[2].super_class;

    return sub_10006B05C(v16, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100028934()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = sub_100028ACC;
  }

  else
  {
    v6 = *(v2 + 88);
    v7 = *(v2 + 48);

    v5 = sub_100028A5C;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100028A5C()
{
  v1 = v0[9];
  v2 = v0[10];
  sub_100031AD8();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100028ACC()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];

  sub_100031DC0();
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[13];

  return v5();
}

void sub_100028B58(uint64_t a1, char a2)
{
  v4 = v2;
  v7 = *v4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = [objc_allocWithZone(type metadata accessor for EventUploadScheduledWaitLogEvent()) init];
  if ((v4[27] & 1) == 0)
  {
    v31 = 1;
    if (a2)
    {
      *&a1 = 0.0;
      v20 = 5.0;
    }

    else
    {
      v31 = 0;
      v20 = *&a1 + 5.0;
    }

    v32 = 0;
    v21 = v31;
    v33[3] = &type metadata for BackgroundSystemTaskRequest;
    v33[4] = &off_1000A24F0;
    v22 = swift_allocObject();
    v33[0] = v22;
    *(v22 + 16) = 0xD000000000000036;
    *(v22 + 24) = 0x8000000100089130;
    *(v22 + 32) = 33554689;
    *(v22 + 40) = 6;
    *(v22 + 48) = v20;
    *(v22 + 56) = 0;
    *(v22 + 64) = *&a1;
    *(v22 + 72) = v21;
    *(v22 + 73) = 0;
    *(v22 + 80) = 0;
    *(v22 + 88) = 1;
    sub_10004827C(v33);
    if (!v3)
    {
      sub_10000D330(v33);
      v26 = v4[30];
      v4[30] = v28;

      return;
    }

    sub_10000D330(v33);
    v30 = v3;
    swift_errorRetain();
    sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
    if (swift_dynamicCast())
    {
      if (v29)
      {
        if (v29 == 2)
        {

          v27 = v28;
          sub_10007A13C(1);
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        return;
      }

      sub_100029038();
      swift_allocError();
      *v23 = 0;
      v24 = v28;
      sub_10007A464();

      swift_allocError();
      *v25 = 0;
      swift_willThrow();
    }

    else
    {
      v24 = v28;
    }

    return;
  }

  sub_100029E90(&qword_1000AB6B0, v13, type metadata accessor for EventUploadTask);
  sub_100029E90(&qword_1000AB6A0, v14, type metadata accessor for EventUploadTask);
  static LoggedObject<>.logger.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33[0] = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_100035120(0xD000000000000036, 0x8000000100089130, v33);
    _os_log_impl(&_mh_execute_header, v15, v16, "Declining to schedule a task associated with identifier %{public}s because our task is currently running", v17, 0xCu);
    sub_10000D330(v18);
  }

  (*(v9 + 8))(v12, v8);
  v19 = v28;
  sub_10007A13C(1);
}

uint64_t sub_100029000()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 89, 7);
}

unint64_t sub_100029038()
{
  result = qword_1000AB6A8;
  if (!qword_1000AB6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB6A8);
  }

  return result;
}

uint64_t sub_10002908C()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100029180, v0, 0);
}

uint64_t sub_100029180(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v3 + 216);
  *(v2 + 88) = v5;
  if (v5 == 1)
  {
    v6 = *(v2 + 56);
    sub_100029E90(&qword_1000AB6B0, a2, type metadata accessor for EventUploadTask);
    sub_100029E90(&qword_1000AB6A0, v7, type metadata accessor for EventUploadTask);
    static LoggedObject<>.logger.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v2 + 56);
    v12 = *(v2 + 32);
    v13 = *(v2 + 40);
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Upload already running", v14, 2u);
    }

    (*(v13 + 8))(v11, v12);
    v15 = *(v2 + 88);
    v17 = *(v2 + 48);
    v16 = *(v2 + 56);

    v18 = *(v2 + 8);

    return v18((v15 & 1) == 0);
  }

  else
  {
    v20 = *(v2 + 48);
    *(v3 + 216) = 1;
    sub_100029E90(&qword_1000AB6B0, a2, type metadata accessor for EventUploadTask);
    sub_100029E90(&qword_1000AB6A0, v21, type metadata accessor for EventUploadTask);
    static LoggedObject<>.logger.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Upload now running", v24, 2u);
    }

    v26 = *(v2 + 40);
    v25 = *(v2 + 48);
    v27 = *(v2 + 32);
    v28 = *(v2 + 16);

    result = (*(v26 + 8))(v25, v27);
    v29 = *(v28 + 208);
    *(v2 + 64) = v29;
    if (v29)
    {

      v30 = swift_task_alloc();
      *(v2 + 72) = v30;
      *v30 = v2;
      v30[1] = sub_1000294C0;

      return sub_10006A528();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000294C0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_100029668;
  }

  else
  {
    v6 = *(v2 + 64);
    v7 = *(v2 + 16);

    v5 = sub_1000295E8;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000295E8()
{
  v1 = *(v0 + 24);
  sub_1000296FC(*(v0 + 16));
  v2 = *(v0 + 88);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);

  v5 = *(v0 + 8);

  return v5((v2 & 1) == 0);
}

uint64_t sub_100029668()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v5 = v0[2];
  v4 = v0[3];

  sub_1000296FC(v5);

  v6 = v0[1];
  v7 = v0[10];

  return v6(0);
}

uint64_t sub_1000296FC(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 216) = 0;
  sub_100029E90(&qword_1000AB6B0, v7, type metadata accessor for EventUploadTask);
  sub_100029E90(&qword_1000AB6A0, v8, type metadata accessor for EventUploadTask);
  static LoggedObject<>.logger.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Upload no longer running", v11, 2u);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1000298AC()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100029E90(&qword_1000AB6B0, v8, type metadata accessor for EventUploadTask);
  sub_100029E90(&qword_1000AB6A0, v9, type metadata accessor for EventUploadTask);
  static LoggedObject<>.logger.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = 2;
    _os_log_impl(&_mh_execute_header, v10, v11, "Resetting back off time interval to %ld seconds", v12, 0xCu);
  }

  result = (*(v4 + 8))(v7, v3);
  v1[28] = 0x4000000000000000;
  return result;
}

uint64_t sub_100029A9C()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v24 - v10;
  v12 = v0[28];
  if (v12 + v12 <= 3600.0)
  {
    v13 = v12 + v12;
  }

  else
  {
    v13 = 3600.0;
  }

  v0[28] = v13;
  sub_100029E90(&qword_1000AB6B0, v9, type metadata accessor for EventUploadTask);
  sub_100029E90(&qword_1000AB6A0, v14, type metadata accessor for EventUploadTask);
  if (v13 == v12)
  {
    static LoggedObject<>.logger.getter();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v15, v16))
    {

      return (*(v4 + 8))(v11, v3);
    }

    result = swift_slowAlloc();
    *result = 134217984;
    v18 = v1[28];
    if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v18 > -9.22337204e18)
    {
      if (v18 < 9.22337204e18)
      {
        *(result + 4) = v18;
        v19 = result;

        _os_log_impl(&_mh_execute_header, v15, v16, "Back off time interval staying at %ld seconds", v19, 0xCu);

        return (*(v4 + 8))(v11, v3);
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  static LoggedObject<>.logger.getter();

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v20, v21))
  {

    goto LABEL_20;
  }

  result = swift_slowAlloc();
  *result = 134218240;
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(result + 4) = v12;
  *(result + 12) = 2048;
  v22 = v1[28];
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v22 < 9.22337204e18)
  {
    *(result + 14) = v22;
    v23 = result;

    _os_log_impl(&_mh_execute_header, v20, v21, "Advanced back off time interval from %ld to %ld seconds", v23, 0x16u);

LABEL_20:
    v11 = v8;
    return (*(v4 + 8))(v11, v3);
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_100029E90(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100029F3C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_10000D330(v0 + 5);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100029F84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000D130;

  return sub_100025544(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_10002A044(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return result;
    }
  }

  else if (!v2)
  {
  }
}

uint64_t sub_10002A06C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = a3;
  v32 = a2;
  v4 = type metadata accessor for FakeEvent.State();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000CED0(&qword_1000AB6B8, &qword_100086D40);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v32 - v9;
  v11 = sub_10000CED0(&qword_1000AB6C0, &qword_100086870);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v32 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v19 = __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  v21 = &v32 - v20;
  v22 = type metadata accessor for Date();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  (*(v25 + 16))(&v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (*(v16 + 16))(v21, v32, v15);
  v26 = type metadata accessor for EventCategory();
  v27 = 1;
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  UUID.init()();
  UUID.init()();
  v35 = 0;
  swift_stdlib_random();
  if ((v35 & 0x20000) != 0)
  {
    UUID.init()();
    v27 = 0;
  }

  (*(v16 + 56))(v10, v27, 1, v15);
  sub_10002A430(v33);
  v28 = v34;
  FakeEvent.init(date:homeIdentifier:category:roomIdentifier:roomName:accessoryIdentifier:accessoryName:userIdentifier:state:)();
  v29 = enum case for EventRecord.DecodedEvent.fakeEvent(_:);
  v30 = type metadata accessor for EventRecord.DecodedEvent();
  return (*(*(v30 - 8) + 104))(v28, v29, v30);
}

unint64_t sub_10002A430@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000CED0(&qword_1000AB6C8, qword_100086878);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - v4;
  v6 = static FakeEvent.State.allCases.getter();
  v7 = *(v6 + 16);
  if (v7)
  {
    result = sub_10002A678(v7);
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v9 = result;
      if (result < *(v6 + 16))
      {
        v10 = type metadata accessor for FakeEvent.State();
        v11 = *(v10 - 8);
        (*(v11 + 16))(v5, v6 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9, v10);

        (*(v11 + 56))(v5, 0, 1, v10);
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  v10 = type metadata accessor for FakeEvent.State();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
LABEL_6:
  type metadata accessor for FakeEvent.State();
  v12 = *(v10 - 8);
  result = (*(v12 + 48))(v5, 1, v10);
  if (result != 1)
  {
    return (*(v12 + 32))(a1, v5, v10);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_10002A678(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10002A704(uint64_t a1)
{
  v35 = type metadata accessor for UUID();
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v28 = v1;
    v38 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v10 = result;
    v11 = 0;
    v12 = *(a1 + 36);
    v32 = v3 + 8;
    v33 = v3 + 16;
    v29 = a1 + 64;
    v30 = v3;
    v31 = v12;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_21;
      }

      if (v12 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v36 = v11;
      v12 = v6;
      v15 = *(a1 + 48) + *(v3 + 72) * v10;
      v16 = a1;
      v18 = v34;
      v17 = v35;
      (*(v3 + 16))(v34, v15, v35);
      v37 = static EventRecord.recordZoneID(forHomeIdentifier:)();
      v19 = v18;
      a1 = v16;
      (*(v3 + 8))(v19, v17);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v20 = v38[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v13 = 1 << *(v16 + 32);
      if (v10 >= v13)
      {
        goto LABEL_23;
      }

      v21 = *(v8 + 8 * v14);
      if ((v21 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v6 = v12;
      LODWORD(v12) = v31;
      if (v31 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v10 & 0x3F));
      if (v22)
      {
        v13 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v14 << 6;
        v24 = v14 + 1;
        v25 = (v29 + 8 * v14);
        while (v24 < (v13 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_10002BC80(v10, v31, 0);
            v13 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_10002BC80(v10, v31, 0);
      }

LABEL_4:
      v11 = v36 + 1;
      v10 = v13;
      v3 = v30;
      if (v36 + 1 == v6)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10002A9F8()
{
  type metadata accessor for XPCServer();
  sub_10002BC38(&qword_1000AAFD8, type metadata accessor for XPCServer);
  return static LoggedObject.logger.getter();
}

uint64_t sub_10002AA68(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for SomeEvent();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[14] = v8;
  v9 = *(v8 - 8);
  v1[15] = v9;
  v10 = *(v9 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_10002ABEC, 0, 0);
}

uint64_t sub_10002ABEC()
{
  v45 = v0;
  v1 = v0[7];
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = v0[12];
    v5 = v0[9];
    v44[0] = _swiftEmptyArrayStorage;
    sub_10003E738(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = v1 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v40 = *(v5 + 56);
    v41 = v6;
    v42 = v4;
    v39 = (v5 - 8);
    do
    {
      v8 = v0[13];
      v9 = v0[10];
      v10 = v0[8];
      v41(v9, v7, v10);
      SomeEvent.anyEvent.getter();
      v11 = v0[6];
      sub_10000D224(v0 + 2, v0[5]);
      dispatch thunk of EventProtocol.homeIdentifier.getter();
      sub_10000D330(v0 + 2);
      (*v39)(v9, v10);
      v44[0] = v3;
      v13 = v3[2];
      v12 = v3[3];
      if (v13 >= v12 >> 1)
      {
        sub_10003E738(v12 > 1, v13 + 1, 1);
        v3 = v44[0];
      }

      v14 = v0[13];
      v15 = v0[11];
      v3[2] = v13 + 1;
      (*(v42 + 32))(v3 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v13, v14, v15);
      v7 += v40;
      --v2;
    }

    while (v2);
  }

  v16 = v0[17];
  v17 = sub_1000195BC(v3);

  v0[18] = type metadata accessor for XPCServer();
  v0[19] = sub_10002BC38(&qword_1000AAFD8, type metadata accessor for XPCServer);
  static LoggedObject.logger.getter();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[17];
  v23 = v0[14];
  v22 = v0[15];
  if (v20)
  {
    v24 = v0[11];
    v43 = v0[17];
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v44[0] = v26;
    *v25 = 136315138;
    sub_10002BC38(&unk_1000AC310, &type metadata accessor for UUID);
    v27 = Set.description.getter();
    v29 = sub_100035120(v27, v28, v44);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, "Ensuring zones exist for homes: %s", v25, 0xCu);
    sub_10000D330(v26);

    v30 = *(v22 + 8);
    v30(v43, v23);
  }

  else
  {

    v30 = *(v22 + 8);
    v30(v21, v23);
  }

  v0[20] = v30;
  type metadata accessor for Configuration();
  v31 = static Configuration.cloudKitContainer.getter();
  v32 = [v31 privateCloudDatabase];
  v0[21] = v32;

  v33 = objc_allocWithZone(CKOperationGroup);
  v34 = v32;
  v35 = [v33 init];
  v0[22] = v35;
  v44[0] = v35;
  sub_100068834(v44, v34, 25);

  v36 = sub_10002A704(v17);
  v0[23] = v36;

  v37 = swift_task_alloc();
  v0[24] = v37;
  *v37 = v0;
  v37[1] = sub_10002B060;

  return sub_10006834C(v36, v34, v35);
}

uint64_t sub_10002B060()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 184);

    v5 = sub_10002B228;
  }

  else
  {
    v5 = sub_10002B17C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10002B17C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[13];
  v7 = v0[10];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10002B228()
{
  v1 = v0[25];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[18];
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[25];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unable to ensure that the zones exists: %{public}@", v8, 0xCu);
    sub_10000F32C(v9);
  }

  v11 = v0[25];
  v13 = v0[21];
  v12 = v0[22];
  v14 = v5;
  v15 = v0[20];
  v17 = v0[16];
  v16 = v0[17];
  v18 = v0[14];
  v19 = v0[15];
  v20 = v0[13];
  v24 = v0[10];

  v15(v17, v18);
  swift_willThrow();

  v21 = v0[1];
  v22 = v0[25];

  return v21();
}

uint64_t sub_10002B3F0(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UUID();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10002B518, 0, 0);
}

uint64_t sub_10002B518()
{
  v37 = v0;
  v1 = v0[9];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v0[10] = type metadata accessor for XPCServer();
  v0[11] = sub_10002BC38(&qword_1000AAFD8, type metadata accessor for XPCServer);
  static LoggedObject.logger.getter();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[9];
  v11 = v0[6];
  v10 = v0[7];
  v13 = v0[4];
  v12 = v0[5];
  v14 = v0[3];
  if (v8)
  {
    v35 = v0[6];
    v15 = swift_slowAlloc();
    v33 = v7;
    v16 = swift_slowAlloc();
    v36[0] = v16;
    *v15 = 136315138;
    sub_10002BC38(&qword_1000AB0D8, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v9;
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_100035120(v17, v19, v36);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v33, "Ensuring zone exists for home: %s", v15, 0xCu);
    sub_10000D330(v16);

    v21 = *(v10 + 8);
    v21(v34, v35);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    v21 = *(v10 + 8);
    v21(v9, v11);
  }

  v0[12] = v21;
  v22 = v0[2];
  type metadata accessor for Configuration();
  v23 = static Configuration.cloudKitContainer.getter();
  v24 = [v23 privateCloudDatabase];
  v0[13] = v24;

  v25 = objc_allocWithZone(CKOperationGroup);
  v26 = v24;
  v27 = [v25 init];
  v0[14] = v27;
  v36[0] = v27;
  sub_100068834(v36, v26, -1);

  v28 = static EventRecord.recordZoneID(forHomeIdentifier:)();
  v0[15] = v28;
  sub_10000CED0(&qword_1000AADA0, &qword_100085590);
  v29 = swift_allocObject();
  v0[16] = v29;
  *(v29 + 16) = xmmword_100085340;
  *(v29 + 32) = v28;
  v30 = v28;
  v31 = swift_task_alloc();
  v0[17] = v31;
  *v31 = v0;
  v31[1] = sub_10002B8AC;

  return sub_10006834C(v29, v26, v27);
}

uint64_t sub_10002B8AC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_10002BA68;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_10002B9C8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10002B9C8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10002BA68()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];

  static LoggedObject.logger.getter();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[18];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "Unable to ensure that the zone exists: %{public}@", v9, 0xCu);
    sub_10000F32C(v10);
  }

  v12 = v0[18];
  v14 = v0[14];
  v13 = v0[15];
  v15 = v6;
  v16 = v0[12];
  v17 = v0[13];
  v19 = v0[8];
  v18 = v0[9];
  v20 = v0[6];
  v21 = v0[7];
  v25 = v0[5];

  v16(v19, v20);
  swift_willThrow();

  v22 = v0[1];
  v23 = v0[18];

  return v22();
}

uint64_t sub_10002BC38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002BC80(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

__n128 sub_10002BC98(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10002BCAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10002BCF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10002BD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_10002BE00;

  return sub_10002BF74(a3);
}

uint64_t sub_10002BE00(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v4 + 24);
    *(v4 + 40) = a1 & 1;

    return _swift_task_switch(sub_10002BF50, v9, 0);
  }
}

uint64_t sub_10002BF74(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = *v1;
  v4 = *(*(sub_10000CED0(&qword_1000AB6D0, &qword_1000869F0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for DateInterval();
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v2[17] = v8;
  v9 = *(v8 - 8);
  v2[18] = v9;
  v10 = *(v9 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v2[22] = v11;
  v12 = *(v11 - 8);
  v2[23] = v12;
  v13 = *(v12 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v14 = *(*(sub_10000CED0(&qword_1000AB0C8, &qword_100085F18) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v15 = swift_task_alloc();
  v2[34] = v15;
  v16 = swift_task_alloc();
  v2[35] = v16;
  *v16 = v2;
  v16[1] = sub_10002C268;

  return sub_10002D780(v15, a1);
}

uint64_t sub_10002C268()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_10002D494;
  }

  else
  {
    v6 = sub_10002C394;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10002C394()
{
  v93 = v0;
  v1 = v0[33];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[9] + OBJC_IVAR____TtCC11homeeventsd21EventDigestController15DefaultDelegate_configuration;
  v5 = _s15DefaultDelegateC13ConfigurationVMa(0);
  sub_10002F12C(v4 + *(v5 + 48), v1);
  v6 = *(v3 + 48);
  v7 = v6(v1, 1, v2);
  v8 = v0[33];
  if (v7 == 1)
  {
    v9 = v0[22];
    v10 = v0[27];
    static Date.now.getter();
    if (v6(v8, 1, v9) != 1)
    {
      sub_10002F19C(v0[33]);
    }
  }

  else
  {
    (*(v0[23] + 32))(v0[27], v0[33], v0[22]);
  }

  v11 = v0[32];
  v12 = v0[22];
  sub_10002F12C(v0[34], v11);
  v13 = v6(v11, 1, v12);
  sub_10002F19C(v11);
  if (v13 == 1)
  {
    v87 = v0[34];
    v14 = v0[31];
    v16 = v0[26];
    v15 = v0[27];
    v18 = v0[22];
    v17 = v0[23];
    Date.addingTimeInterval(_:)();
    Date.weeksSinceReferenceDate.getter();
    Date.init(weeksSinceReferenceDate:)();
    (*(v17 + 8))(v16, v18);
    (*(v17 + 56))(v14, 0, 1, v18);
    v13 = 1;
    sub_10002F204(v14, v87, &qword_1000AB0C8, &qword_100085F18);
  }

  v19 = v0[27];
  v20 = Date.weeksSinceReferenceDate.getter();
  v21 = *(v4 + *(v5 + 36));
  v22 = __OFSUB__(v20, v21);
  result = v20 - v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_22;
  }

  v24 = v0[34];
  v25 = v0[30];
  v26 = v0[25];
  v27 = v0[22];
  Date.init(weeksSinceReferenceDate:)();
  sub_10002F12C(v24, v25);
  result = v6(v25, 1, v27);
  if (result == 1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v28 = v0[30];
  v29 = v0[25];
  v30 = v0[22];
  v31 = v0[23];
  sub_100031A80(&qword_1000AB6D8, &type metadata accessor for Date);
  LOBYTE(v29) = dispatch thunk of static Comparable.>= infix(_:_:)();
  v32 = *(v31 + 8);
  v0[37] = v32;
  v0[38] = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v28, v30);
  if (v29)
  {
    v33 = v0[21];
    v34 = v0[10];
    sub_100031A80(&qword_1000AAFE0, _s15DefaultDelegateCMa);
    sub_100031A80(&qword_1000AAFE8, _s15DefaultDelegateCMa);
    static LoggedObject<>.logger.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[34];
    v39 = v0[22];
    if (!v37)
    {
      v59 = v0[27];
      v60 = v0[25];
      v61 = v0[21];
      v62 = v35;
      v64 = v0[17];
      v63 = v0[18];

      (*(v63 + 8))(v61, v64);
      v32(v60, v39);
      v32(v59, v39);
      v49 = v38;
      goto LABEL_18;
    }

    v90 = v36;
    v40 = v0[29];
    v41 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v92 = v88;
    *v41 = 136315138;
    swift_beginAccess();
    sub_10002F12C(v38, v40);
    result = v6(v40, 1, v39);
    if (result != 1)
    {
      v83 = v0[27];
      v85 = v0[34];
      v42 = v0[24];
      v43 = v0[22];
      v79 = v0[21];
      v81 = v0[25];
      v44 = v0[18];
      v77 = v0[17];
      (*(v0[23] + 32))(v42, v0[29], v43);
      sub_100031A80(&qword_1000AB6E8, &type metadata accessor for Date);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      v32(v42, v43);
      v48 = sub_100035120(v45, v47, &v92);

      *(v41 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v35, v90, "Found most recent digest ending at %s, nothing to do", v41, 0xCu);
      sub_10000D330(v88);

      (*(v44 + 8))(v79, v77);
      v32(v81, v43);
      v32(v83, v43);
      v49 = v85;
LABEL_18:
      sub_10002F19C(v49);
      v66 = v0[33];
      v65 = v0[34];
      v68 = v0[31];
      v67 = v0[32];
      v70 = v0[29];
      v69 = v0[30];
      v71 = v0[27];
      v72 = v0[28];
      v74 = v0[25];
      v73 = v0[26];
      v76 = v0[24];
      v78 = v0[21];
      v80 = v0[20];
      v82 = v0[19];
      v84 = v0[16];
      v86 = v0[15];
      v89 = v0[14];
      v91 = v0[11];

      v75 = v0[1];

      return v75(0);
    }

LABEL_24:
    __break(1u);
    return result;
  }

  v50 = v0[28];
  v51 = v0[22];
  sub_10002F12C(v0[34], v50);
  result = v6(v50, 1, v51);
  if (result == 1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v52 = v13 != 1;
  v53 = v0[28];
  v54 = v0[16];
  (*(v0[23] + 16))(v0[26], v0[25], v0[22]);
  DateInterval.init(start:end:)();
  v55 = swift_task_alloc();
  v0[39] = v55;
  *v55 = v0;
  v55[1] = sub_10002CB24;
  v56 = v0[16];
  v57 = v0[8];
  v58 = v0[9];

  return sub_10002DCC0(v57, v56, v52);
}

uint64_t sub_10002CB24(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 312);
  v7 = *v3;
  v5[40] = a1;
  v5[41] = a2;
  v5[42] = v2;

  v8 = v4[9];
  if (v2)
  {
    v9 = sub_10002D5E4;
  }

  else
  {
    v9 = sub_10002CC5C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10002CC5C()
{
  v111 = v0;
  v1 = v0[41];
  if (v1)
  {
    v2 = v0[40];
    v3 = v0[20];
    v4 = v0[16];
    logb = v0[15];
    v5 = v0[12];
    v6 = v0[11];
    v7 = v0[9];
    v8 = *(v0[13] + 16);
    v8(v6, v4, v5);
    v9 = _s15DefaultDelegateC14DigestMetadataVMa(0);
    *(v6 + v9[5]) = v2;
    *(v6 + v9[6]) = v1;
    *(v6 + v9[7]) = _swiftEmptyArrayStorage;
    (*(*(v9 - 1) + 56))(v6, 0, 1, v9);
    v10 = OBJC_IVAR____TtCC11homeeventsd21EventDigestController15DefaultDelegate_digestMetadata;
    swift_beginAccess();

    sub_10002F204(v6, v7 + v10, &qword_1000AB6D0, &qword_1000869F0);
    swift_endAccess();
    sub_100031A80(&qword_1000AAFE0, _s15DefaultDelegateCMa);
    sub_100031A80(&qword_1000AAFE8, _s15DefaultDelegateCMa);
    static LoggedObject<>.logger.getter();
    v8(logb, v4, v5);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    log = v11;
    if (os_log_type_enabled(v11, v12))
    {
      v74 = v12;
      v13 = v0[40];
      v92 = v0[37];
      v96 = v0[38];
      v100 = v0[27];
      v104 = v0[34];
      v84 = v0[22];
      v88 = v0[25];
      v75 = v0[18];
      v76 = v0[17];
      v78 = v0[20];
      v14 = v0[15];
      v81 = v0[16];
      v16 = v0[12];
      v15 = v0[13];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v110 = v18;
      *v17 = 134218242;

      *(v17 + 4) = v13;

      *(v17 + 12) = 2080;
      sub_100031A80(&qword_1000AB6E0, &type metadata accessor for DateInterval);
      v19 = v16;
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      v23 = *(v15 + 8);
      v24 = v14;
      v25 = v19;
      v23(v24, v19);
      v26 = v23;
      v27 = sub_100035120(v20, v22, &v110);

      *(v17 + 14) = v27;
      _os_log_impl(&_mh_execute_header, log, v74, "Digest created with %ld event(s) in range %s", v17, 0x16u);
      sub_10000D330(v18);

      (*(v75 + 8))(v78, v76);
      v26(v81, v25);
      v92(v88, v84);
      v92(v100, v84);
    }

    else
    {
      v53 = v0[37];
      v54 = v0[38];
      v102 = v0[27];
      v104 = v0[34];
      v55 = v0[22];
      v56 = v0[18];
      v86 = v0[17];
      v90 = v0[20];
      v57 = v0[15];
      v94 = v0[16];
      v98 = v0[25];
      v59 = v0[12];
      v58 = v0[13];
      swift_bridgeObjectRelease_n();

      v60 = *(v58 + 8);
      v60(v57, v59);
      (*(v56 + 8))(v90, v86);
      v60(v94, v59);
      v53(v98, v55);
      v53(v102, v55);
    }

    sub_10002F19C(v104);
  }

  else
  {
    v28 = v0[19];
    v29 = v0[16];
    v30 = v0[13];
    v31 = v0[14];
    v32 = v0[12];
    v33 = v0[10];
    sub_100031A80(&qword_1000AAFE0, _s15DefaultDelegateCMa);
    sub_100031A80(&qword_1000AAFE8, _s15DefaultDelegateCMa);
    static LoggedObject<>.logger.getter();
    (*(v30 + 16))(v31, v29, v32);
    v34 = Logger.logObject.getter();
    v85 = static os_log_type_t.info.getter();
    v35 = os_log_type_enabled(v34, v85);
    v37 = v0[37];
    v36 = v0[38];
    v38 = v0[34];
    v39 = v0[27];
    v101 = v0[25];
    v105 = v0[22];
    v40 = v0[18];
    v41 = v0[17];
    v89 = v41;
    v93 = v0[19];
    v97 = v0[16];
    v43 = v0[13];
    v42 = v0[14];
    v44 = v0[12];
    if (v35)
    {
      v82 = v0[37];
      v45 = swift_slowAlloc();
      v79 = v39;
      v46 = swift_slowAlloc();
      v110 = v46;
      *v45 = 136315138;
      sub_100031A80(&qword_1000AB6E0, &type metadata accessor for DateInterval);
      v77 = v38;
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      v50 = *(v43 + 8);
      v50(v42, v44);
      v51 = sub_100035120(v47, v49, &v110);

      *(v45 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v34, v85, "Found no events in range %s, nothing to do", v45, 0xCu);
      sub_10000D330(v46);

      (*(v40 + 8))(v93, v89);
      v50(v97, v44);
      v82(v101, v105);
      v82(v79, v105);
      v52 = v77;
    }

    else
    {

      v61 = *(v43 + 8);
      v61(v42, v44);
      (*(v40 + 8))(v93, v89);
      v61(v97, v44);
      v37(v101, v105);
      v37(v39, v105);
      v52 = v38;
    }

    sub_10002F19C(v52);
    v1 = 0;
  }

  v63 = v0[33];
  v62 = v0[34];
  loga = v1 != 0;
  v65 = v0[31];
  v64 = v0[32];
  v66 = v0[29];
  v67 = v0[30];
  v69 = v0[27];
  v68 = v0[28];
  v71 = v0[25];
  v70 = v0[26];
  v80 = v0[24];
  v83 = v0[21];
  v87 = v0[20];
  v91 = v0[19];
  v95 = v0[16];
  v99 = v0[15];
  v103 = v0[14];
  v106 = v0[11];

  v72 = v0[1];

  return v72(loga);
}

uint64_t sub_10002D494()
{
  v21 = v0[36];
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[29];
  v6 = v0[30];
  v8 = v0[27];
  v7 = v0[28];
  v10 = v0[25];
  v9 = v0[26];
  v13 = v0[24];
  v14 = v0[21];
  v15 = v0[20];
  v16 = v0[19];
  v17 = v0[16];
  v18 = v0[15];
  v19 = v0[14];
  v20 = v0[11];

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_10002D5E4()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[34];
  v4 = v0[27];
  v5 = v0[25];
  v6 = v0[22];
  (*(v0[13] + 8))(v0[16], v0[12]);
  v2(v5, v6);
  v2(v4, v6);
  sub_10002F19C(v3);
  v27 = v0[42];
  v8 = v0[33];
  v7 = v0[34];
  v10 = v0[31];
  v9 = v0[32];
  v11 = v0[29];
  v12 = v0[30];
  v14 = v0[27];
  v13 = v0[28];
  v16 = v0[25];
  v15 = v0[26];
  v19 = v0[24];
  v20 = v0[21];
  v21 = v0[20];
  v22 = v0[19];
  v23 = v0[16];
  v24 = v0[15];
  v25 = v0[14];
  v26 = v0[11];

  v17 = v0[1];

  return v17(0);
}

uint64_t sub_10002D780(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for DatabaseConfiguration();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10002D8A0, v2, 0);
}

uint64_t sub_10002D8A0()
{
  static Task<>.checkCancellation()();
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  **(v0 + 80) = v5;
  (*(v1 + 104))();
  v6 = v4 + OBJC_IVAR____TtCC11homeeventsd21EventDigestController15DefaultDelegate_configuration;
  v7 = _s15DefaultDelegateC13ConfigurationVMa(0);
  v8 = v7[5];
  v9 = v7[13];
  v10 = *(v6 + v7[10]);
  v11 = v5;
  UUID.init()();
  v12 = async function pointer to static EventDigestQuery.fetchMostRecentEndDate(database:homeIdentifier:targetCloudKitZone:queryIdentifier:qualityOfService:)[1];
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v13[1] = sub_10002DA24;
  v14 = *(v0 + 80);
  v15 = *(v0 + 56);
  v16 = *(v0 + 16);

  return static EventDigestQuery.fetchMostRecentEndDate(database:homeIdentifier:targetCloudKitZone:queryIdentifier:qualityOfService:)(v16, v14, v6 + v8, v6 + v9, v15, v10);
}

uint64_t sub_10002DA24()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *(*v1 + 48);
  v9 = *(*v1 + 40);
  v10 = *v1;
  *(*v1 + 96) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v11 = v2[4];

    return _swift_task_switch(sub_10002DC50, v11, 0);
  }

  else
  {
    v12 = v2[10];
    v13 = v2[7];

    v14 = *(v10 + 8);

    return v14();
  }
}

uint64_t sub_10002DC50()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10002DCC0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 304) = a3;
  *(v4 + 56) = a1;
  *(v4 + 80) = *v3;
  v5 = sub_10000CED0(&qword_1000AB6F0, &qword_100086A08);
  *(v4 + 88) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  v7 = sub_10000CED0(&qword_1000AB6F8, &qword_100086A10);
  *(v4 + 104) = v7;
  v8 = *(v7 - 8);
  *(v4 + 112) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  Scope = type metadata accessor for QueryScope();
  *(v4 + 128) = Scope;
  v11 = *(Scope - 8);
  *(v4 + 136) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 144) = swift_task_alloc();
  v13 = type metadata accessor for Configuration.TargetCloudKitZone();
  *(v4 + 152) = v13;
  v14 = *(v13 - 8);
  *(v4 + 160) = v14;
  v15 = *(v14 + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  v16 = *(*(sub_10000CED0(&qword_1000AB6B8, &qword_100086D40) - 8) + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  v17 = type metadata accessor for DateInterval();
  *(v4 + 184) = v17;
  v18 = *(v17 - 8);
  *(v4 + 192) = v18;
  v19 = *(v18 + 64) + 15;
  *(v4 + 200) = swift_task_alloc();
  v20 = type metadata accessor for UUID();
  *(v4 + 208) = v20;
  v21 = *(v20 - 8);
  *(v4 + 216) = v21;
  v22 = *(v21 + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  v23 = type metadata accessor for DatabaseConfiguration();
  *(v4 + 232) = v23;
  v24 = *(v23 - 8);
  *(v4 + 240) = v24;
  v25 = *(v24 + 64) + 15;
  *(v4 + 248) = swift_task_alloc();
  v26 = type metadata accessor for EventQuery();
  *(v4 + 256) = v26;
  v27 = *(v26 - 8);
  *(v4 + 264) = v27;
  v28 = *(v27 + 64) + 15;
  *(v4 + 272) = swift_task_alloc();

  return _swift_task_switch(sub_10002E058, v3, 0);
}

uint64_t sub_10002E058()
{
  static Task<>.checkCancellation()();
  v33 = *(v0 + 272);
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 216);
  v24 = *(v0 + 232);
  v25 = *(v0 + 208);
  v5 = *(v0 + 192);
  v37 = *(v0 + 200);
  v26 = *(v0 + 184);
  v27 = *(v0 + 176);
  v6 = *(v0 + 160);
  v28 = *(v0 + 152);
  v29 = *(v0 + 168);
  v7 = *(v0 + 136);
  v30 = *(v0 + 144);
  v31 = *(v0 + 128);
  v34 = *(v0 + 96);
  v35 = *(v0 + 120);
  v36 = *(v0 + 88);
  v32 = *(v0 + 304);
  v8 = *(v0 + 72) + OBJC_IVAR____TtCC11homeeventsd21EventDigestController15DefaultDelegate_configuration;
  v23 = *(v0 + 64);
  v9 = *(v0 + 56);
  sub_10000D2CC(v8, v0 + 16);
  *v1 = v9;
  (*(v2 + 104))(v1, enum case for DatabaseConfiguration.configured(_:), v24);
  v10 = _s15DefaultDelegateC13ConfigurationVMa(0);
  (*(v4 + 16))(v3, v8 + v10[5], v25);
  (*(v5 + 16))(v37, v23, v26);
  v11 = *(v8 + v10[8]);
  (*(v4 + 56))(v27, 1, 1, v25);
  (*(v6 + 16))(v29, v8 + v10[13], v28);
  v12 = *(v8 + v10[10]);
  (*(v7 + 104))(v30, enum case for QueryScope.owned(_:), v31);

  v13 = v9;
  EventQuery.init(features:database:homeIdentifier:dateInterval:categories:accessoryIdentifier:resultsLimit:maxRecordsPerQuery:dateIntervalStartOpen:dateIntervalEndOpen:scope:targetCloudKitZone:qualityOfService:retainEncodedEvent:)();
  v14 = swift_allocObject();
  *(v0 + 280) = v14;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = &_swiftEmptySetSingleton;
  EventQuery.start()();
  type metadata accessor for SomeEvent();
  sub_100031A38(&qword_1000AB708, &qword_1000AB6F0, &qword_100086A08);

  AsyncCompactMapSequence.init(_:transform:)();
  v15 = v10[7];
  v16 = v10[11];
  v17 = async function pointer to static DigestRecord.encode<A>(events:to:encoding:)[1];
  v18 = swift_task_alloc();
  *(v0 + 288) = v18;
  v19 = sub_100031A38(&qword_1000AB710, &qword_1000AB6F8, &qword_100086A10);
  *v18 = v0;
  v18[1] = sub_10002E498;
  v20 = *(v0 + 120);
  v21 = *(v0 + 104);

  return static DigestRecord.encode<A>(events:to:encoding:)(v20, v8 + v15, v8 + v16, v21, v19);
}

uint64_t sub_10002E498()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_10002E760;
  }

  else
  {
    v6 = sub_10002E5C4;
  }

  return _swift_task_switch(v6, v5, 0);
}

void sub_10002E5C4()
{
  v22 = v0;
  v1 = v0[37];
  v2 = v0[35];
  v3 = v0[10];
  os_unfair_lock_lock((v2 + 16));
  sub_10002EC2C((v2 + 24), v21);
  v4 = v0[35];
  if (v1)
  {

    os_unfair_lock_unlock(v4 + 4);
  }

  else
  {
    v6 = v0[33];
    v5 = v0[34];
    v8 = v0[31];
    v7 = v0[32];
    v9 = v0[28];
    v16 = v0[25];
    v17 = v0[22];
    v18 = v0[21];
    v19 = v0[18];
    v10 = v0[14];
    v11 = v0[15];
    v12 = v0[13];
    v20 = v0[12];
    os_unfair_lock_unlock(v4 + 4);
    (*(v10 + 8))(v11, v12);
    (*(v6 + 8))(v5, v7);

    v13 = v21[0];
    v14 = v21[1];

    v15 = v0[1];

    v15(v13, v14);
  }
}

uint64_t sub_10002E760()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v4 + 8))(v1, v3);

  v5 = v0[37];
  v6 = v0[34];
  v7 = v0[31];
  v8 = v0[28];
  v9 = v0[25];
  v11 = v0[21];
  v10 = v0[22];
  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[12];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10002E880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for EventCategory();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v7 = type metadata accessor for SomeEvent();
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  v10 = type metadata accessor for EventRecord.DataType();
  v3[17] = v10;
  v11 = *(v10 - 8);
  v3[18] = v11;
  v12 = *(v11 + 64) + 15;
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10002EA08, 0, 0);
}

void sub_10002EA08()
{
  v1 = v0[19];
  v2 = *(v0[15] + 16);
  v2(v0[16], v0[8], v0[14]);
  EventRecord.DataType.init(someEvent:)();
  if (EventRecord.DataType.isIncludedInDigests.getter())
  {
    v3 = v0[9];
    os_unfair_lock_lock((v3 + 16));
    v4 = *(v3 + 24);
    v5 = __OFADD__(v4, 1);
    v6 = v4 + 1;
    if (v5)
    {
      __break(1u);
      return;
    }

    v7 = v0[18];
    v24 = v0[17];
    v25 = v0[19];
    v27 = v0[14];
    v28 = v0[15];
    v9 = v0[12];
    v8 = v0[13];
    v26 = v2;
    v10 = v0[11];
    v11 = v0[9];
    v21 = v0[10];
    v22 = v0[8];
    v23 = v0[7];
    *(v3 + 24) = v6;
    SomeEvent.anyEvent.getter();
    v12 = v0[6];
    sub_10000D224(v0 + 2, v0[5]);
    dispatch thunk of EventProtocol.category.getter();
    sub_10002F5C4(v8, v9);
    (*(v10 + 8))(v8, v21);
    sub_10000D330(v0 + 2);
    os_unfair_lock_unlock(v11 + 4);
    (*(v7 + 8))(v25, v24);
    v26(v23, v22, v27);
    (*(v28 + 56))(v23, 0, 1, v27);
  }

  else
  {
    v13 = v0[14];
    v14 = v0[15];
    v15 = v0[7];
    (*(v0[18] + 8))(v0[19], v0[17]);
    (*(v14 + 56))(v15, 1, 1, v13);
  }

  v16 = v0[19];
  v17 = v0[16];
  v19 = v0[12];
  v18 = v0[13];

  v20 = v0[1];

  v20();
}

uint64_t sub_10002EC2C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_100031A80(&qword_1000AAFE0, _s15DefaultDelegateCMa);
  sub_100031A80(&qword_1000AAFE8, _s15DefaultDelegateCMa);
  static LoggedObject<>.logger.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Query returned %ld event(s)", v12, 0xCu);
  }

  (*(v5 + 8))(v8, v4);
  if (v9 < 1)
  {
    v9 = 0;
    result = 0;
  }

  else
  {
    v13 = a1[1];
  }

  *a2 = v9;
  a2[1] = result;
  return result;
}

uint64_t sub_10002EE24()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_10002EE44, v2, 0);
}

uint64_t sub_10002EE44()
{
  static Task<>.checkCancellation()();
  v1 = *(v0 + 16);
  v2 = v1 + *(_s15DefaultDelegateC13ConfigurationVMa(0) + 24);
  v3 = async function pointer to DatabaseConfiguration.configure<A, B>(isolatedTo:body:)[1];
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  v5 = _s15DefaultDelegateCMa(0);
  v6 = sub_100031A80(&qword_1000AAFE8, _s15DefaultDelegateCMa);
  *v4 = v0;
  v4[1] = sub_10002EFC8;
  v7 = *(v0 + 16);

  return DatabaseConfiguration.configure<A, B>(isolatedTo:body:)(v0 + 40, v7, &unk_1000869E0, 0, v5, &type metadata for Bool, v6);
}

uint64_t sub_10002EFC8()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_10002F110;
  }

  else
  {
    v6 = sub_10002F0F4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10002F12C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AB0C8, &qword_100085F18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F19C(uint64_t a1)
{
  v2 = sub_10000CED0(&qword_1000AB0C8, &qword_100085F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002F204(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000CED0(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10002F26C()
{
  v1 = *(sub_10000CED0(&qword_1000AB428, &qword_100086650) + 16);
  UnsafeMutablePointer.deinitialize(count:)();
  v2 = *(sub_10000CED0(&qword_1000AB700, &qword_100086A18) + 16);
  UnsafeMutablePointer.deinitialize(count:)();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002F2E4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100031A80(&unk_1000AC310, &type metadata accessor for UUID);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_100031A80(&qword_1000AB730, &type metadata accessor for UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_100030598(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_10002F5C4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for EventCategory();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100031A80(&qword_1000AB718, &type metadata accessor for EventCategory);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_100031A80(&qword_1000AB720, &type metadata accessor for EventCategory);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_100030860(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_10002F8A4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Configuration.TargetCloudKitZone();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100031A80(&qword_1000AB740, &type metadata accessor for Configuration.TargetCloudKitZone);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_100031A80(&qword_1000AC340, &type metadata accessor for Configuration.TargetCloudKitZone);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_100030B28(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_10002FB84(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10000CED0(&qword_1000AB738, &qword_100086A38);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_100031A80(&unk_1000AC310, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_10002FEE0(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for EventCategory();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10000CED0(&qword_1000AB728, &qword_100086A30);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_100031A80(&qword_1000AB718, &type metadata accessor for EventCategory);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_10003023C(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for Configuration.TargetCloudKitZone();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10000CED0(&qword_1000AB748, &qword_100086A40);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_100031A80(&qword_1000AB740, &type metadata accessor for Configuration.TargetCloudKitZone);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_100030598(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10002FB84(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100030DF0(&type metadata accessor for UUID, &qword_1000AB738, &qword_100086A38);
      goto LABEL_12;
    }

    sub_100031028(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_100031A80(&unk_1000AC310, &type metadata accessor for UUID);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_100031A80(&qword_1000AB730, &type metadata accessor for UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100030860(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for EventCategory();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10002FEE0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100030DF0(&type metadata accessor for EventCategory, &qword_1000AB728, &qword_100086A30);
      goto LABEL_12;
    }

    sub_100031344(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_100031A80(&qword_1000AB718, &type metadata accessor for EventCategory);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_100031A80(&qword_1000AB720, &type metadata accessor for EventCategory);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100030B28(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for Configuration.TargetCloudKitZone();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10003023C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100030DF0(&type metadata accessor for Configuration.TargetCloudKitZone, &qword_1000AB748, &qword_100086A40);
      goto LABEL_12;
    }

    sub_100031660(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_100031A80(&qword_1000AB740, &type metadata accessor for Configuration.TargetCloudKitZone);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_100031A80(&qword_1000AC340, &type metadata accessor for Configuration.TargetCloudKitZone);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100030DF0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  sub_10000CED0(a2, a3);
  v12 = *v3;
  v13 = static _SetStorage.copy(original:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

uint64_t sub_100031028(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10000CED0(&qword_1000AB738, &qword_100086A38);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_100031A80(&unk_1000AC310, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100031344(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for EventCategory();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10000CED0(&qword_1000AB728, &qword_100086A30);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_100031A80(&qword_1000AB718, &type metadata accessor for EventCategory);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100031660(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for Configuration.TargetCloudKitZone();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10000CED0(&qword_1000AB748, &qword_100086A40);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_100031A80(&qword_1000AB740, &type metadata accessor for Configuration.TargetCloudKitZone);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_10003198C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000D130;

  return sub_10002E880(a1, a2, v2);
}

uint64_t sub_100031A38(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003988(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100031A80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100031AD8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v0[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_metricsManager];
  MetricsManager.submitLogEvent(_:error:)();
  sub_100033660();
  static LoggedObject.logger.getter();
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v9, v10))
  {
    goto LABEL_7;
  }

  v11 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v28 = v26;
  *v11 = 136446210;
  v12 = sub_10003240C();
  v13 = *(v12 + 16);
  if (!v13)
  {
    v14 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v21 = v11;
  v22 = v10;
  v23 = v3;
  v24 = v2;
  v14 = sub_100032ABC(v13, 0);
  v25 = sub_100033338(&v27, v14 + 4, v13, v12);

  sub_1000123C4();
  if (v25 == v13)
  {
    v3 = v23;
    v2 = v24;
    LOBYTE(v10) = v22;
    v11 = v21;
LABEL_6:
    v27 = v14;
    sub_100011900(&v27);

    sub_10000CED0(&unk_1000AB050, &unk_100085CF0);
    v15 = Array.description.getter();
    v17 = v16;

    v18 = sub_100035120(v15, v17, &v28);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "Submitted EventUploadSubtaskLogEvent: %{public}s", v11, 0xCu);
    sub_10000D330(v26);

LABEL_7:

    return (*(v3 + 8))(v6, v2);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_100031DC0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v0[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_metricsManager];
  MetricsManager.submitLogEvent(_:error:)();
  sub_100033660();
  static LoggedObject.logger.getter();
  v8 = v1;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v9, v10))
  {
    goto LABEL_7;
  }

  v11 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v32 = v30;
  *v11 = 136446466;
  v12 = sub_10003240C();
  v13 = *(v12 + 16);
  if (!v13)
  {
    v14 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v23 = v10;
  v24 = v9;
  v25 = v6;
  v26 = v3;
  v27 = v2;
  v14 = sub_100032ABC(v13, 0);
  v28 = sub_100033338(&v31, v14 + 4, v13, v12);

  sub_1000123C4();
  if (v28 == v13)
  {
    v3 = v26;
    v2 = v27;
    v9 = v24;
    v6 = v25;
    LOBYTE(v10) = v23;
LABEL_6:
    v31 = v14;
    sub_100011900(&v31);

    sub_10000CED0(&unk_1000AB050, &unk_100085CF0);
    v15 = Array.description.getter();
    v17 = v16;

    v18 = sub_100035120(v15, v17, &v32);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v19;
    v20 = v29;
    *v29 = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "Submitted EventUploadSubtaskLogEvent: %{public}s, with error: %{public}@", v11, 0x16u);
    sub_10000F32C(v20);

    sub_10000D330(v30);

LABEL_7:

    return (*(v3 + 8))(v6, v2);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_100032108(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "localDatabaseWrite";
  if (v2 == 1)
  {
    v4 = "localDatabaseWrite";
  }

  else
  {
    v4 = "cloudDatabaseUpload";
  }

  if (*a1)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = "WFTq/xvyNUI=";
  }

  if (*a2 != 1)
  {
    v3 = "cloudDatabaseUpload";
  }

  if (*a2)
  {
    v7 = 0xD000000000000013;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = "WFTq/xvyNUI=";
  }

  if (v5 == v7 && (v6 | 0x8000000000000000) == (v8 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1000321D4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100032268()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000322E8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100032378@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100033614(*a1);
  *a2 = result;
  return result;
}

void sub_1000323A8(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000013;
  v3 = "localDatabaseWrite";
  if (*v1 != 1)
  {
    v3 = "cloudDatabaseUpload";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000012;
    v4 = "WFTq/xvyNUI=";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

unint64_t sub_10003240C()
{
  sub_10000CED0(&unk_1000AB060, &unk_100085D00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100086A80;
  *(inited + 32) = 0x546B736174627573;
  *(inited + 40) = 0xEB00000000657079;
  v2 = v0[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_subtaskType];
  v3 = inited;
  v4 = objc_allocWithZone(NSString);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithString:v5];

  *(v3 + 48) = v6;
  *(v3 + 56) = 0x726F6365526D756ELL;
  *(v3 + 64) = 0xEA00000000007364;
  *(v3 + 72) = [objc_allocWithZone(NSNumber) initWithInteger:*&v0[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_numRecords]];
  strcpy((v3 + 80), "numLocalWrites");
  *(v3 + 95) = -18;
  if (v2)
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v8 = v7 & 1;
  }

  else
  {

    v8 = 1;
  }

  *(v3 + 96) = [objc_allocWithZone(NSNumber) initWithInteger:v8];
  *(v3 + 104) = 0x64756F6C436D756ELL;
  *(v3 + 112) = 0xEF7364616F6C7055;
  if (v2 == 2)
  {
    v9 = "cloudDatabaseUpload";
  }

  else
  {
    v9 = "localDatabaseWrite";
    if (v2 != 1)
    {
      goto LABEL_10;
    }
  }

  if (0x80000001000880F0 == (v9 | 0x8000000000000000))
  {

    v10 = 1;
    goto LABEL_11;
  }

LABEL_10:
  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v10 = v11 & 1;
LABEL_11:
  *(v3 + 120) = [objc_allocWithZone(NSNumber) initWithInteger:v10];
  *(v3 + 128) = 0x6C61636F4C6D756ELL;
  *(v3 + 136) = 0xEF736574656C6544;
  if (v2)
  {
    if (v2 == 1)
    {
      v12 = 0x80000001000880F0;
    }

    else
    {
      v12 = 0x8000000100088110;
    }

    v13 = &_s13HomeKitEvents11EventRecordV8DataTypeO04fakeD0yA2EmFWC_ptr;
    p_name = &XPCServer.Listener.name;
    if (0x8000000100088110 == v12)
    {

      v15 = 1;
      goto LABEL_19;
    }
  }

  else
  {
    v13 = &_s13HomeKitEvents11EventRecordV8DataTypeO04fakeD0yA2EmFWC_ptr;
    p_name = (&XPCServer.Listener + 24);
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v15 = v16 & 1;
LABEL_19:
  *(v3 + 144) = [objc_allocWithZone(v13[89]) p_name[347]];
  *(v3 + 152) = 0xD000000000000014;
  *(v3 + 160) = 0x8000000100088B40;
  *(v3 + 168) = [objc_allocWithZone(v13[89]) initWithBool:v0[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_attributedToFakeData]];
  v17 = sub_1000806CC(v3);
  swift_setDeallocating();
  sub_10000CED0(&qword_1000AB3B0, &qword_100086230);
  swift_arrayDestroy();
  if ([v0 durationMilliseconds] >= 1)
  {
    v18 = [objc_allocWithZone(v13[89]) p_name[347]];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10007E6E4(v18, 0xD000000000000014, 0x80000001000892C0, isUniquelyReferenced_nonNull_native);
  }

  return v17;
}