unint64_t sub_100032A00()
{
  result = qword_1000AB798;
  if (!qword_1000AB798)
  {
    sub_100003988(&qword_1000AB7A0, qword_100086AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB798);
  }

  return result;
}

unint64_t sub_100032A68()
{
  result = qword_1000AB7A8;
  if (!qword_1000AB7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB7A8);
  }

  return result;
}

void *sub_100032ABC(uint64_t a1, uint64_t a2)
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

  sub_10000CED0(&qword_1000AB7C8, &qword_100086BF8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_100032B4C(uint64_t a1, uint64_t a2)
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

  sub_10000CED0(&qword_1000AADA0, &qword_100085590);
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

void *sub_100032BD4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_10000CED0(&qword_1000AB7C8, &qword_100086BF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000CED0(&unk_1000AB050, &unk_100085CF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100032D1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CED0(&qword_1000AB7F8, &qword_100086C18);
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
    v10 = _swiftEmptyArrayStorage;
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

size_t sub_100032EA4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_100033080(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CED0(&qword_1000AADB8, &qword_1000855A0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10003318C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CED0(&unk_1000AB7E0, &unk_100086C00);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_100033298(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100033324(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_100033338(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        v24 = v20;
        goto LABEL_23;
      }

      v11 += 3;

      v21 = v20;
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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1000334AC(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
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

unint64_t sub_100033614(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000A1BE0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100033660()
{
  result = qword_1000AB7B0;
  if (!qword_1000AB7B0)
  {
    type metadata accessor for EventUploadSubtaskLogEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB7B0);
  }

  return result;
}

uint64_t sub_1000336B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10000D130;

  return sub_100033750(a3);
}

uint64_t sub_100033750(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v2[24] = *v1;
  v3 = sub_10000CED0(&qword_1000AB800, &qword_100086C38);
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v5 = *(v4 + 64) + 15;
  v2[27] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[28] = v6;
  v7 = *(v6 - 8);
  v2[29] = v7;
  v8 = *(v7 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v9 = type metadata accessor for DigestRecord.Encoding();
  v2[33] = v9;
  v10 = *(v9 - 8);
  v2[34] = v10;
  v11 = *(v10 + 64) + 15;
  v2[35] = swift_task_alloc();
  v12 = *(*(type metadata accessor for DigestRecord.Metadata() - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v13 = type metadata accessor for URL();
  v2[37] = v13;
  v14 = *(v13 - 8);
  v2[38] = v14;
  v15 = *(v14 + 64) + 15;
  v2[39] = swift_task_alloc();
  v16 = type metadata accessor for DigestRecord();
  v2[40] = v16;
  v17 = *(v16 - 8);
  v2[41] = v17;
  v18 = *(v17 + 64) + 15;
  v2[42] = swift_task_alloc();
  v19 = type metadata accessor for Date();
  v2[43] = v19;
  v20 = *(v19 - 8);
  v2[44] = v20;
  v21 = *(v20 + 64) + 15;
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v22 = type metadata accessor for UUID();
  v2[47] = v22;
  v23 = *(v22 - 8);
  v2[48] = v23;
  v24 = *(v23 + 64) + 15;
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v25 = *(*(sub_10000CED0(&qword_1000AB6D0, &qword_1000869F0) - 8) + 64) + 15;
  v2[52] = swift_task_alloc();
  v26 = _s15DefaultDelegateC14DigestMetadataVMa(0);
  v2[53] = v26;
  v27 = *(v26 - 8);
  v2[54] = v27;
  v28 = *(v27 + 64) + 15;
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();

  return _swift_task_switch(sub_100033B74, v1, 0);
}

uint64_t sub_100033B74()
{
  v70 = v0;
  static Task<>.checkCancellation()();
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v3 = *(v0 + 416);
  v4 = *(v0 + 184);
  v5 = OBJC_IVAR____TtCC11homeeventsd21EventDigestController15DefaultDelegate_digestMetadata;
  swift_beginAccess();
  sub_100034FD8(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000D620(*(v0 + 416), &qword_1000AB6D0, &qword_1000869F0);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    v7 = *(v0 + 448);
    v8 = *(v0 + 424);
    v9 = *(v0 + 408);
    v67 = *(v0 + 400);
    v10 = *(v0 + 384);
    v11 = *(v0 + 368);
    v52 = *(v0 + 376);
    v12 = *(v0 + 352);
    v54 = *(v0 + 392);
    v55 = *(v0 + 360);
    v50 = *(v0 + 344);
    v60 = *(v0 + 336);
    v64 = *(v0 + 312);
    v51 = *(v0 + 304);
    v53 = *(v0 + 296);
    v56 = *(v0 + 288);
    v57 = *(v0 + 272);
    v58 = *(v0 + 264);
    v59 = *(v0 + 280);
    v13 = *(v0 + 184);
    v61 = *(v0 + 192);
    v62 = *(v0 + 256);
    sub_100035048(*(v0 + 416), v7);
    v14 = v13 + OBJC_IVAR____TtCC11homeeventsd21EventDigestController15DefaultDelegate_configuration;
    v49 = _s15DefaultDelegateC13ConfigurationVMa(0);
    v15 = v49[5];
    DateInterval.start.getter();
    v16 = *(v7 + *(v8 + 24));
    swift_bridgeObjectRetain_n();
    static DigestRecord.recordIdentifier(homeIdentifier:date:categories:)();

    (*(v12 + 8))(v11, v50);
    v17 = *(v10 + 16);
    v17(v67, v9, v52);
    (*(v51 + 16))(v64, v14 + v49[7], v53);
    v17(v54, v14 + v15, v52);
    DateInterval.start.getter();
    DateInterval.end.getter();
    v18 = *(v7 + *(v8 + 20));
    DigestRecord.Metadata.init(home:start:end:categories:count:)();
    (*(v57 + 16))(v59, v14 + v49[11], v58);
    DigestRecord.init(identifier:fileURL:metadata:encoding:tags:)();
    type metadata accessor for Configuration();
    v19 = v49[13];
    v20 = static Configuration.zoneName(forHomeIdentifier:target:)();
    v22 = v21;
    sub_10000D544(0, &qword_1000AC3A0, CKRecordZoneID_ptr);
    v23._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23._object = v24;
    v25._countAndFlagsBits = v20;
    v25._object = v22;
    v26.super.isa = CKRecordZoneID.init(zoneName:ownerName:)(v25, v23).super.isa;
    *(v0 + 456) = v26;
    isa = DigestRecord.toCKRecord(zoneID:)(v26).super.isa;
    *(v0 + 464) = isa;
    v28 = [(objc_class *)isa recordID];
    v29 = [v28 recordName];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    *(v0 + 472) = v30;
    *(v0 + 480) = v32;
    *(v0 + 488) = sub_10003572C(&qword_1000AAFE0, _s15DefaultDelegateCMa);
    *(v0 + 496) = sub_10003572C(&qword_1000AAFE8, _s15DefaultDelegateCMa);
    static LoggedObject<>.logger.getter();

    v33 = isa;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 256);
    v39 = *(v0 + 224);
    v38 = *(v0 + 232);
    v68 = v33;
    if (v36)
    {
      v65 = *(v0 + 224);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v63 = v37;
      v42 = swift_slowAlloc();
      v69 = v42;
      *v40 = 136446466;
      *(v40 + 4) = sub_100035120(v30, v32, &v69);
      *(v40 + 12) = 2112;
      *(v40 + 14) = v33;
      *v41 = v33;
      v43 = v33;
      _os_log_impl(&_mh_execute_header, v34, v35, "Saving digest %{public}s: %@", v40, 0x16u);
      sub_10000D620(v41, &unk_1000AB7D0, &qword_100085510);

      sub_10000D330(v42);

      v44 = *(v38 + 8);
      v44(v63, v65);
    }

    else
    {

      v44 = *(v38 + 8);
      v44(v37, v39);
    }

    *(v0 + 504) = v44;
    v45 = *(v0 + 208);
    v46 = *(v0 + 216);
    v47 = *(v0 + 200);
    v66 = *(v0 + 176);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 168;
    *(v0 + 24) = sub_100034394;
    swift_continuation_init();
    *(v0 + 136) = v47;
    v48 = sub_10000CF2C((v0 + 112));
    sub_10000D544(0, &qword_1000AB808, CKRecord_ptr);
    sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
    CheckedContinuation.init(continuation:function:)();
    (*(v45 + 32))(v48, v46, v47);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100034C2C;
    *(v0 + 104) = &unk_1000A2B10;
    [v66 saveRecord:v68 completionHandler:v0 + 80];
    (*(v45 + 8))(v48, v47);

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_100034394()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 512) = v3;
  v4 = *(v1 + 184);
  if (v3)
  {
    v5 = sub_1000348C0;
  }

  else
  {
    v5 = sub_1000344B4;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000344B4()
{
  v65 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 496);
  v3 = *(v0 + 480);
  v5 = *(v0 + 440);
  v4 = *(v0 + 448);
  v6 = *(v0 + 248);
  v7 = *(v0 + 192);

  static LoggedObject<>.logger.getter();
  sub_1000356C8(v4, v5);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  log = v8;
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 504);
  v12 = *(v0 + 480);
  if (v10)
  {
    v13 = *(v0 + 472);
    v14 = *(v0 + 440);
    v57 = *(v0 + 408);
    v60 = *(v0 + 448);
    v15 = *(v0 + 384);
    v16 = *(v0 + 328);
    v51 = *(v0 + 336);
    v54 = *(v0 + 376);
    v47 = *(v0 + 464);
    v48 = *(v0 + 320);
    v43 = *(v0 + 232);
    v44 = *(v0 + 456);
    v45 = *(v0 + 224);
    v46 = *(v0 + 248);
    v17 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v17 = 136446466;
    v18 = sub_100035120(v13, v12, &v64);

    *(v17 + 4) = v18;
    *(v17 + 12) = 2082;
    type metadata accessor for DateInterval();
    sub_10003572C(&qword_1000AB6E0, &type metadata accessor for DateInterval);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_1000350C4(v14);
    v22 = sub_100035120(v19, v21, &v64);

    *(v17 + 14) = v22;
    _os_log_impl(&_mh_execute_header, log, v9, "Successfully saved digest %{public}s covering %{public}s", v17, 0x16u);
    swift_arrayDestroy();

    v11(v46, v45);
    (*(v16 + 8))(v51, v48);
    (*(v15 + 8))(v57, v54);
  }

  else
  {
    v23 = *(v0 + 464);
    v24 = *(v0 + 440);
    v58 = *(v0 + 408);
    v60 = *(v0 + 448);
    v25 = *(v0 + 384);
    v52 = *(v0 + 336);
    v55 = *(v0 + 376);
    v26 = *(v0 + 504);
    v27 = *(v0 + 328);
    v49 = *(v0 + 320);
    v28 = *(v0 + 248);
    v29 = *(v0 + 224);
    v30 = *(v0 + 232);

    sub_1000350C4(v24);
    v26(v28, v29);
    (*(v27 + 8))(v52, v49);
    (*(v25 + 8))(v58, v55);
  }

  sub_1000350C4(v60);
  v32 = *(v0 + 440);
  v31 = *(v0 + 448);
  v34 = *(v0 + 408);
  v33 = *(v0 + 416);
  v36 = *(v0 + 392);
  v35 = *(v0 + 400);
  v38 = *(v0 + 360);
  v37 = *(v0 + 368);
  v39 = *(v0 + 336);
  v40 = *(v0 + 312);
  v50 = *(v0 + 288);
  v53 = *(v0 + 280);
  v56 = *(v0 + 256);
  v59 = *(v0 + 248);
  v61 = *(v0 + 240);
  loga = *(v0 + 216);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1000348C0()
{
  v56 = v0;
  v1 = v0[64];
  v3 = v0[61];
  v2 = v0[62];
  v4 = v0[60];
  v5 = v0[30];
  v6 = v0[24];
  swift_willThrow();
  static LoggedObject<>.logger.getter();

  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[64];
    v10 = v0[59];
    v11 = v0[60];
    v12 = v0[29];
    v50 = v0[30];
    v52 = v0[63];
    v48 = v0[28];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v55 = v15;
    *v13 = 136446466;
    v16 = sub_100035120(v10, v11, &v55);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to save digest %{public}s: %@)", v13, 0x16u);
    sub_10000D620(v14, &unk_1000AB7D0, &qword_100085510);

    sub_10000D330(v15);

    v52(v50, v48);
  }

  else
  {
    v18 = v0[63];
    v19 = v0[60];
    v21 = v0[29];
    v20 = v0[30];
    v22 = v0[28];

    v18(v20, v22);
  }

  v23 = v0[64];
  v25 = v0[57];
  v24 = v0[58];
  v53 = v0[56];
  v26 = v0[51];
  v27 = v0[47];
  v28 = v0[48];
  v29 = v0[41];
  v30 = v0[42];
  v31 = v0[40];
  swift_willThrow();

  (*(v29 + 8))(v30, v31);
  (*(v28 + 8))(v26, v27);
  sub_1000350C4(v53);
  v54 = v0[64];
  v33 = v0[55];
  v32 = v0[56];
  v35 = v0[51];
  v34 = v0[52];
  v37 = v0[49];
  v36 = v0[50];
  v38 = v0[45];
  v39 = v0[46];
  v40 = v0[42];
  v41 = v0[39];
  v44 = v0[36];
  v45 = v0[35];
  v46 = v0[32];
  v47 = v0[31];
  v49 = v0[30];
  v51 = v0[27];

  v42 = v0[1];

  return v42();
}

void sub_100034C2C(uint64_t a1, void *a2, void *a3)
{
  sub_10000D224((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_10000CED0(&qword_1000AB800, &qword_100086C38);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_10000CED0(&qword_1000AB800, &qword_100086C38);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100034CDC()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_100034CFC, v2, 0);
}

uint64_t sub_100034CFC()
{
  static Task<>.checkCancellation()();
  v1 = *(v0 + 16);
  v2 = v1 + *(_s15DefaultDelegateC13ConfigurationVMa(0) + 24);
  v3 = async function pointer to DatabaseConfiguration.configure<A, B>(isolatedTo:body:)[1];
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  v5 = _s15DefaultDelegateCMa(0);
  v6 = sub_10003572C(&qword_1000AAFE8, _s15DefaultDelegateCMa);
  *v4 = v0;
  v4[1] = sub_100034E7C;
  v7 = *(v0 + 16);

  return DatabaseConfiguration.configure<A, B>(isolatedTo:body:)(v6, v7, &unk_100086C28, 0, v5, &type metadata for () + 8, v6);
}

uint64_t sub_100034E7C()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_100034FC0;
  }

  else
  {
    v6 = sub_100034FA8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100034FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AB6D0, &qword_1000869F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100035048(uint64_t a1, uint64_t a2)
{
  v4 = _s15DefaultDelegateC14DigestMetadataVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000350C4(uint64_t a1)
{
  v2 = _s15DefaultDelegateC14DigestMetadataVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100035120(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000351EC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_10000CFA0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000D330(v11);
  return v7;
}

unint64_t sub_1000351EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000352F8(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_1000352F8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100035344(a1, a2);
  sub_100035474(&off_1000A1AD8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100035344(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100035560(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100035560(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_100035474(uint64_t result)
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

  result = sub_1000355D4(result, v12, 1, v3);
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

void *sub_100035560(uint64_t a1, uint64_t a2)
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

  sub_10000CED0(&qword_1000AB810, &qword_100086C40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000355D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CED0(&qword_1000AB810, &qword_100086C40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1000356C8(uint64_t a1, uint64_t a2)
{
  v4 = _s15DefaultDelegateC14DigestMetadataVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003572C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100035774()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1 && (static String._unconditionallyBridgeFromObjectiveC(_:)(), v1, String.utf8CString.getter(), v2 = _set_user_dir_suffix(), , v2))
  {
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000358C4(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for Logger();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100035984, 0, 0);
}

uint64_t sub_100035984()
{
  v1 = v0[8];
  if (v0[9])
  {
    v2 = sub_10000D224(v1, v1[3]);

    v4 = sub_1000195BC(v3);
    v0[13] = v4;

    v5 = *v2;
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_100035AC4;

    return sub_100077E7C(v4);
  }

  else
  {
    v8 = *sub_10000D224(v1, v1[3]);
    v9 = swift_task_alloc();
    v0[15] = v9;
    *v9 = v0;
    v9[1] = sub_100035D64;

    return sub_10007257C();
  }
}

uint64_t sub_100035AC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[14];
  v6 = v3[13];
  v7 = *v2;

  if (v1)
  {
    v8 = v4[12];

    v9 = v7[1];

    return v9();
  }

  else
  {

    return _swift_task_switch(sub_100035C34, 0, 0);
  }
}

uint64_t sub_100035C34()
{
  v1 = v0[3];
  v2 = v0[12];
  type metadata accessor for XPCServer();
  sub_10000E874();
  static LoggedObject.logger.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Done clearing %ld event(s) from the local database", v5, 0xCu);
  }

  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[10];

  (*(v7 + 8))(v6, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100035D64(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[15];
  v6 = *v2;

  if (v1)
  {
    v7 = v4[12];

    v8 = v6[1];

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_100035EB8, 0, 0);
  }
}

uint64_t sub_100035EB8()
{
  v1 = v0[6];
  v2 = v0[12];
  type metadata accessor for XPCServer();
  sub_10000E874();
  static LoggedObject.logger.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Done clearing %ld event(s) from the local database", v5, 0xCu);
  }

  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[10];

  (*(v7 + 8))(v6, v8);

  v9 = v0[1];

  return v9();
}

id sub_100035FE8()
{
  v0 = type metadata accessor for CocoaError.Code();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  v13 = 0;
  v9 = [v5 removeItemAtURL:v7 error:&v13];

  if (v9)
  {
    return v13;
  }

  v11 = v13;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_errorRetain();
  static CocoaError.fileNoSuchFile.getter();
  sub_100036300();
  v12 = static _ErrorCodeProtocol.~= infix(_:_:)();

  result = (*(v1 + 8))(v4, v0);
  if (v12)
  {
  }

  return result;
}

id sub_1000361B4(char a1)
{
  v3 = type metadata accessor for CocoaError.Code();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    return sub_100035FE8();
  }

  result = Data.write(to:options:)();
  if (v1)
  {
    swift_errorRetain();
    static CocoaError.fileWriteFileExists.getter();
    sub_100036300();
    v9 = static _ErrorCodeProtocol.~= infix(_:_:)();

    result = (*(v4 + 8))(v7, v3);
    if (v9)
    {
    }
  }

  return result;
}

unint64_t sub_100036300()
{
  result = qword_1000AAD58;
  if (!qword_1000AAD58)
  {
    type metadata accessor for CocoaError.Code();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AAD58);
  }

  return result;
}

uint64_t sub_10003636C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000363EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for FileBackedBooleanFlag()
{
  result = qword_1000AB870;
  if (!qword_1000AB870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000364A8()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100036514(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for PendingEventData();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v22 = _swiftEmptyArrayStorage;
  sub_10003E6F8(0, v11, 0);
  v12 = v22;
  v13 = *(type metadata accessor for EventRecord.DecodedEvent() - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v19 = *(v13 + 72);
  while (1)
  {
    v20(v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = v12[2];
    v15 = v12[3];
    if (v16 >= v15 >> 1)
    {
      sub_10003E6F8(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    v12[2] = v16 + 1;
    sub_10003FB74(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16);
    v14 += v19;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000366FC(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v26 = a2;
  v24 = type metadata accessor for EventRecord.DecodedEvent();
  v27 = *(v24 - 8);
  v7 = *(v27 + 64);
  __chkstk_darwin(v24);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a4;
  v10 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v31 = _swiftEmptyArrayStorage;
  sub_10003E718(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v29 = v4;
    v12 = 0;
    v11 = v31;
    v13 = v28;
    if (v28 <= a3)
    {
      v13 = a3;
    }

    v22 = v13 - a3 + 1;
    v23 = v27 + 32;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_17;
      }

      v30 = a3 + v12;
      v15 = v9;
      v16 = v29;
      v25(&v30);
      v29 = v16;
      if (v16)
      {
        goto LABEL_22;
      }

      v31 = v11;
      v18 = v11[2];
      v17 = v11[3];
      if (v18 >= v17 >> 1)
      {
        sub_10003E718(v17 > 1, v18 + 1, 1);
        v11 = v31;
      }

      v11[2] = v18 + 1;
      v19 = v11 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v18;
      v9 = v15;
      (*(v27 + 32))(v19, v15, v24);
      if (v28 < a3)
      {
        goto LABEL_18;
      }

      if (v22 == ++v12)
      {
        goto LABEL_19;
      }

      if (v14 == v10)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

void *sub_100036934(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    v6 = _HashTable.startBucket.getter();
    v7 = *(v1 + 36);
    result = sub_10000D544(0, &qword_1000AC3A0, CKRecordZoneID_ptr);
    v8 = 0;
    v29 = v1 + 72;
    v30 = v7;
    v31 = v2;
    v32 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v33 = v8;
      v7 = v4;
      v11 = (*(v1 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      v14 = *(*(v1 + 56) + 8 * v6);
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      swift_bridgeObjectRetain_n();

      v18._countAndFlagsBits = v12;
      v18._object = v13;
      v19._countAndFlagsBits = v15;
      v19._object = v17;
      isa = CKRecordZoneID.init(zoneName:ownerName:)(v18, v19).super.isa;
      [objc_allocWithZone(CKRecordZone) initWithZoneID:isa];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v21 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v32;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v9 = 1 << *(v32 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v22 = *(v7 + 8 * v10);
      if ((v22 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v4 = v7;
      LODWORD(v7) = v30;
      if (v30 != *(v32 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v6 & 0x3F));
      if (v23)
      {
        v9 = __clz(__rbit64(v23)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v10 << 6;
        v25 = v10 + 1;
        v26 = (v29 + 8 * v10);
        while (v25 < (v9 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_10002BC80(v6, v30, 0);
            v9 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_10002BC80(v6, v30, 0);
      }

LABEL_4:
      v8 = v33 + 1;
      v6 = v9;
      if (v33 + 1 == v31)
      {
        return _swiftEmptyArrayStorage;
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

void *sub_100036BFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10003E758(0, v1, 0);
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v24 = *(a1 + 36);
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v23 = *v10;
    v12 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];

    if (v12 >= v13 >> 1)
    {
      result = sub_10003E758((v13 > 1), v12 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v12 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v12];
    v14[4] = v23;
    v14[5] = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v3 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_10002BC80(v6, v24, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_10002BC80(v6, v24, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_100036E40(void (*a1)(__int128 *__return_ptr, __int128 *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_10003E778(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    for (i = (a3 + 32); ; ++i)
    {
      v16 = *i;
      sub_10003F994(v16, *(&v16 + 1));
      a1(&v17, &v16, &v15);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_10000D37C(v16, *(&v16 + 1));
      v10 = v17;
      v18 = v6;
      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        v14 = v17;
        sub_10003E778((v11 > 1), v12 + 1, 1);
        v10 = v14;
        v6 = v18;
      }

      v6[2] = v12 + 1;
      *&v6[2 * v12 + 4] = v10;
      if (!--v5)
      {
        return v6;
      }
    }

    sub_10000D37C(v16, *(&v16 + 1));
  }

  return v6;
}

void *sub_100036F7C(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v15 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = *(type metadata accessor for PendingEventData() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v14, v10, &v13);
      if (v4)
      {
        break;
      }

      v4 = 0;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = v15[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += v11;
      if (!--v6)
      {
        return v15;
      }
    }
  }

  return result;
}

uint64_t sub_1000370C8(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = *(*(sub_10000CED0(&qword_1000AAD30, &qword_100085540) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for PendingEventData();
  v2[19] = v4;
  v5 = *(v4 - 8);
  v2[20] = v5;
  v6 = *(v5 + 64) + 15;
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_1000371C0, 0, 0);
}

uint64_t sub_1000371C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *(v5 + 128);
  v7 = *(v6 + 16);
  if (!v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(*(v5 + 136) + 56) < v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = *(v5 + 152);
  v8 = *(v5 + 160);
  a1 = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(a1 + *(v9 + 40));
  if (v10 == 2)
  {
LABEL_13:
    __break(1u);
    return Task.value.getter(a1, a2, a3, a4, a5);
  }

  v11 = *(v8 + 72);
  v12 = (0xFFFF00010000uLL >> (16 * v10));
  v13 = v7 + 1;
  while (--v13)
  {
    v14 = a1 + v11;
    v15 = *(v5 + 168);
    sub_100037660(a1, v15);
    v16 = *(v15 + *(v9 + 40));
    sub_1000376C4(v15);
    a1 = v14;
    if (v12 != (0xFFFF00010000uLL >> (16 * v16)))
    {
      __break(1u);
      break;
    }
  }

  v18 = *(v5 + 136);
  v17 = *(v5 + 144);
  v19 = *(v5 + 128);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  sub_100037DBC(v18, v5 + 16);
  v21 = swift_allocObject();
  v22 = *(v5 + 48);
  *(v21 + 88) = *(v5 + 64);
  v23 = *(v5 + 96);
  *(v21 + 104) = *(v5 + 80);
  *(v21 + 120) = v23;
  v24 = *(v5 + 32);
  *(v21 + 40) = *(v5 + 16);
  *(v21 + 56) = v24;
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v19;
  *(v21 + 136) = *(v5 + 112);
  *(v21 + 72) = v22;

  v25 = sub_10004E154(0, 0, v17, &unk_100086CE8, v21);
  *(v5 + 176) = v25;
  v26 = async function pointer to Task.value.getter[1];
  v27 = swift_task_alloc();
  *(v5 + 184) = v27;
  v28 = sub_10000CED0(&qword_1000AB8A8, &unk_100086CF0);
  a4 = sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  *v27 = v5;
  v27[1] = sub_100037430;
  a5 = &protocol self-conformance witness table for Error;
  a1 = v5 + 120;
  a2 = v25;
  a3 = v28;

  return Task.value.getter(a1, a2, a3, a4, a5);
}

uint64_t sub_100037430()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v6 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_1000375D8;
  }

  else
  {
    v4 = sub_100037560;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100037560()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[15];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1000375D8()
{
  v1 = v0[21];
  v2 = v0[18];

  v3 = v0[1];
  v4 = v0[24];

  return v3();
}

uint64_t sub_100037660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingEventData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000376C4(uint64_t a1)
{
  v2 = type metadata accessor for PendingEventData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100037720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = type metadata accessor for Logger();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000377FC, 0, 0);
}

uint64_t sub_1000377FC()
{
  v1 = v0[12];
  v2 = v0[6];
  v0[13] = sub_1000386C4();
  static LoggedObject.logger.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[6];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "Beginning upload of %ld record(s)", v7, 0xCu);
  }

  else
  {
    v8 = v0[6];
  }

  v9 = v0[12];
  v10 = v0[8];
  v11 = v0[9];
  v12 = *(v11 + 8);
  v0[14] = v12;
  v0[15] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v9, v10);
  v13 = swift_task_alloc();
  v0[16] = v13;
  *v13 = v0;
  v13[1] = sub_100037984;
  v14 = v0[6];
  v15 = v0[7];

  return sub_100037F0C(v14);
}

uint64_t sub_100037984(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[16];
  v8 = *v2;
  v4[17] = v1;

  if (v1)
  {
    v6 = sub_100037C08;
  }

  else
  {
    v6 = sub_100037AA0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100037AA0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 48);
  static LoggedObject.logger.getter();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v7 + 16);

    _os_log_impl(&_mh_execute_header, v4, v5, "Upload of %ld record(s) completed", v8, 0xCu);
  }

  else
  {
    v9 = *(v0 + 48);
  }

  v10 = *(v0 + 24);
  v11 = *(v0 + 120);
  v12 = *(v0 + 96);
  v13 = *(v0 + 80);
  v14 = *(v0 + 40);
  (*(v0 + 112))(*(v0 + 88), *(v0 + 64));
  *v14 = v10;

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100037C08()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[10];
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to upload all records: %{public}@", v7, 0xCu);
    sub_10000D620(v8, &unk_1000AB7D0, &qword_100085510);
  }

  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  v14 = v0[11];
  v13 = v0[12];
  v15 = v0[10];
  v16 = v0[8];

  v12(v15, v16);
  swift_willThrow();

  v17 = v0[1];
  v18 = v0[17];

  return v17();
}

uint64_t sub_100037DF4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_10000D330((v0 + 40));

  sub_10000D330((v0 + 104));

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_100037E4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000D130;

  return sub_100037720(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_100037F0C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for DatabaseConfiguration();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  Scope = type metadata accessor for QueryScope();
  v2[9] = Scope;
  v7 = *(Scope - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100038028, 0, 0);
}

uint64_t sub_100038028()
{
  v0[2] = &_swiftEmptyDictionarySingleton;
  v1 = sub_10003C094(v0[4], v0 + 2);
  v0[12] = v1;
  if (v1[2])
  {
    v2 = *(v0[5] + 40);
    v3 = [v2 defaultConfiguration];
    if (v3)
    {
      v7 = v3;
      v8 = [v3 container];
      v0[13] = v8;

      if (!v8)
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      if (v1[2])
      {
        v9 = type metadata accessor for PendingEventData();
        v10 = *(v9 - 8);
        v11 = *(v9 + 40);
        if (!*(v1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11))
        {
          v12 = &enum case for QueryScope.owned(_:);
LABEL_13:
          v20 = v0[10];
          v19 = v0[11];
          v22 = v0[8];
          v21 = v0[9];
          v23 = v0[6];
          v24 = v0[7];
          v35 = v23;
          v36 = v0[5];
          (*(v20 + 104))(v19, *v12, v21);
          v25 = sub_10000CED0(&qword_1000AB8B8, &qword_100086D10);
          v26 = *(v25 + 48);
          v27 = *(v25 + 64);
          *v22 = v8;
          (*(v20 + 16))(&v22[v26], v19, v21);
          *&v22[v27] = v2;
          (*(v24 + 104))(v22, enum case for DatabaseConfiguration.unconfigured(_:), v35);
          v28 = v0[2];
          v0[14] = v28;
          v29 = swift_task_alloc();
          v0[15] = v29;
          v29[2] = v36;
          v29[3] = v28;
          v29[4] = v1;
          v30 = async function pointer to DatabaseConfiguration.configure<A>(_:)[1];
          v31 = v8;
          v32 = v2;
          v33 = swift_task_alloc();
          v0[16] = v33;
          v6 = sub_10000CED0(&qword_1000AB8A8, &unk_100086CF0);
          *v33 = v0;
          v33[1] = sub_1000383D0;
          v34 = v0[8];
          v4 = &unk_100086D20;
          v3 = v0 + 3;
          v5 = v29;

          return DatabaseConfiguration.configure<A>(_:)(v3, v4, v5, v6);
        }

        if (*(v1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11) == 1)
        {
          v12 = &enum case for QueryScope.shared(_:);
          goto LABEL_13;
        }

        return _assertionFailure(_:_:file:line:flags:)();
      }

      __break(1u);
    }

    __break(1u);
    return DatabaseConfiguration.configure<A>(_:)(v3, v4, v5, v6);
  }

  v13 = sub_100080BA0(_swiftEmptyArrayStorage);
  v14 = v0[11];
  v15 = v0[8];
  v16 = v0[2];

  v17 = v0[1];

  return v17(v13);
}

uint64_t sub_1000383D0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 120);
  v6 = *(v2 + 96);

  if (v0)
  {
    v7 = sub_1000385F4;
  }

  else
  {
    v7 = sub_100038520;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100038520()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 88);
  v8 = *(v0 + 64);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_1000385F4()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);

  v8 = *(v0 + 8);
  v9 = *(v0 + 136);

  return v8();
}

unint64_t sub_1000386C4()
{
  result = qword_1000AB8B0;
  if (!qword_1000AB8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB8B0);
  }

  return result;
}

uint64_t sub_100038718(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000387E8, 0, 0);
}

uint64_t sub_1000387E8()
{
  v1 = v0[8];
  v2 = v0[2];
  v0[9] = sub_1000386C4();
  static LoggedObject.logger.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[2];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    if (v6 >> 62)
    {
      v0[2];
      v20 = v7;
      v8 = _CocoaArrayWrapper.endIndex.getter();
      v7 = v20;
    }

    else
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v0[2];
    *(v7 + 4) = v8;
    v10 = v7;

    _os_log_impl(&_mh_execute_header, v3, v4, "Beginning CloudKit upload of %ld record(s)", v10, 0xCu);
  }

  else
  {
    v11 = v0[2];
  }

  v12 = v0[8];
  v13 = v0[5];
  v14 = v0[6];
  v15 = *(v14 + 8);
  v0[10] = v15;
  v0[11] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v12, v13);
  v16 = async function pointer to CKDatabase.modifyRecords(saving:deleting:savePolicy:atomically:)[1];
  v17 = swift_task_alloc();
  v0[12] = v17;
  *v17 = v0;
  v17[1] = sub_1000389BC;
  v18 = v0[2];
  v19 = v0[3];

  return CKDatabase.modifyRecords(saving:deleting:savePolicy:atomically:)(v18, _swiftEmptyArrayStorage, 2, 0);
}

uint64_t sub_1000389BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100038CC0, 0, 0);
  }

  else
  {

    v4[14] = a1;
    v7 = swift_task_alloc();
    v4[15] = v7;
    *v7 = v6;
    v7[1] = sub_100038B64;
    v8 = v4[3];
    v9 = v4[4];
    v10 = v4[2];

    return sub_100038E60(v10, v8, a1);
  }
}

uint64_t sub_100038B64(uint64_t a1)
{
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v9 = *v1;

  v7 = *(v9 + 8);

  return v7(a1);
}

uint64_t sub_100038CC0()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[7];
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Upload operation failed: %{public}@", v7, 0xCu);
    sub_10000D620(v8, &unk_1000AB7D0, &qword_100085510);
  }

  v10 = v0[13];
  v12 = v0[10];
  v11 = v0[11];
  v14 = v0[7];
  v13 = v0[8];
  v15 = v0[5];

  v12(v14, v15);
  swift_willThrow();

  v16 = v0[1];
  v17 = v0[13];

  return v16();
}

uint64_t sub_100038E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = type metadata accessor for Logger();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v8 = *(*(sub_10000CED0(&qword_1000AB6B8, &qword_100086D40) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v4[19] = v9;
  v10 = *(v9 - 8);
  v4[20] = v10;
  v11 = *(v10 + 64) + 15;
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_100038FD0, 0, 0);
}

unint64_t sub_100038FD0()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[14];
  v4 = v0[11];
  v121 = v0[12];
  v5 = v0[9];
  v6 = *(v4 + 16);
  sub_10000CED0(&qword_1000AB8C0, &qword_100086D48);
  sub_10003F94C(&unk_1000AC310, &type metadata accessor for UUID);
  v0[2] = Dictionary.init(minimumCapacity:)();
  v133 = v0 + 2;
  v7 = v4 + 64;
  v8 = -1;
  v9 = -1 << *(v4 + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v4 + 64);
  v11 = (63 - v9) >> 6;
  v130 = (v2 + 48);
  v128 = (v3 + 8);
  v129 = (v2 + 32);
  v132 = v5 & 0xFFFFFFFFFFFFFF8;
  v123 = v5 + 32;
  v124 = v5 & 0xC000000000000001;
  v120 = v2;
  v126 = (v2 + 8);
  v131 = v4;

  v134 = 0;
  v12 = 0;
  v13 = &_swiftEmptyDictionarySingleton;
  v119 = v5 >> 62;
  v127 = v4 + 64;
  v125 = v11;
  while (2)
  {
    v0[22] = v134;
    v0[23] = v13;
    if (v10)
    {
      v136 = v13;
      goto LABEL_13;
    }

    do
    {
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_72:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

      if (v16 >= v11)
      {
        v106 = v0[11];

        if (v13[2])
        {
          v107 = swift_task_alloc();
          v0[24] = v107;
          *v107 = v0;
          v107[1] = sub_100039CA0;
          v108 = v0[12];
          v109 = v0[10];

          return sub_100039E74(v13, v109, v133);
        }

        else
        {

          v110 = v0[21];
          v112 = v0[17];
          v111 = v0[18];
          v114 = v0[15];
          v113 = v0[16];
          sub_10003FB64(v0[22]);
          v115 = v0[2];

          v116 = v0[1];

          return v116(v115);
        }
      }

      v10 = *(v7 + 8 * v16);
      ++v12;
    }

    while (!v10);
    v136 = v13;
    v12 = v16;
LABEL_13:
    v18 = v0[18];
    v17 = v0[19];
    v19 = __clz(__rbit64(v10)) | (v12 << 6);
    v20 = *(*(v131 + 48) + 8 * v19);
    v21 = *(v131 + 56) + 16 * v19;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = v20;
    v137 = v22;
    sub_10003EA88(v22, v23);
    v25 = [v24 recordName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();

    result = (*v130)(v18, 1, v17);
    if (result != 1)
    {
      (*v129)(v0[21], v0[18], v0[19]);
      if (v23)
      {
        v27 = v22;
        if (*(v121 + 48))
        {
          swift_errorRetain();
          goto LABEL_44;
        }

        v0[3] = v22;
        sub_10003EA88(v22, 1);
        swift_errorRetain();
        sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
        type metadata accessor for CKError(0);
        if (swift_dynamicCast())
        {
          v48 = v0[4];
          v0[5] = v48;
          sub_10003F94C(&qword_1000AAEA8, type metadata accessor for CKError);
          _BridgedStoredNSError.code.getter();
          if (v0[6] == 26 || (v0[7] = v48, _BridgedStoredNSError.code.getter(), v0[8] == 28))
          {
            v49 = v0[16];
            sub_1000386C4();
            static LoggedObject.logger.getter();
            v50 = v24;
            v51 = v48;
            v52 = Logger.logObject.getter();
            v53 = static os_log_type_t.info.getter();
            v122 = v50;

            if (os_log_type_enabled(v52, v53))
            {
              v54 = swift_slowAlloc();
              v55 = swift_slowAlloc();
              *v54 = 138543618;
              *(v54 + 4) = v122;
              *v55 = v122;
              *(v54 + 12) = 2114;
              v56 = v122;
              v57 = v51;
              v58 = _swift_stdlib_bridgeErrorToNSError();
              *(v54 + 14) = v58;
              v55[1] = v58;
              _os_log_impl(&_mh_execute_header, v52, v53, "Will retry upload for record %{public}@ that failed with missing zone error: %{public}@", v54, 0x16u);
              sub_10000CED0(&unk_1000AB7D0, &qword_100085510);
              swift_arrayDestroy();
            }

            v118 = v51;
            v59 = v0[16];
            v60 = v0[13];

            (*v128)(v59, v60);
            if (v119)
            {
              v61 = _CocoaArrayWrapper.endIndex.getter();
              if (v61)
              {
                goto LABEL_30;
              }
            }

            else
            {
              v61 = *(v132 + 16);
              if (v61)
              {
LABEL_30:
                v62 = 0;
                while (1)
                {
                  if (v124)
                  {
                    v68 = v0[9];
                    v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (v62 >= *(v132 + 16))
                    {
                      goto LABEL_76;
                    }

                    v63 = *(v123 + 8 * v62);
                  }

                  v64 = v63;
                  v65 = v62 + 1;
                  if (__OFADD__(v62, 1))
                  {
                    goto LABEL_77;
                  }

                  sub_10000D544(0, &qword_1000AB070, NSObject_ptr);
                  v66 = [v64 recordID];
                  v67 = static NSObject.== infix(_:_:)();

                  if (v67)
                  {
                    break;
                  }

                  ++v62;
                  if (v65 == v61)
                  {
                    goto LABEL_59;
                  }
                }

                v87 = [v122 zoneID];
                v88 = [v87 zoneName];

                v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v91 = v90;

                v92 = v91;
                sub_10003FB64(v134);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v135 = v89;
                v95 = sub_10007B4E8(v89, v91);
                v96 = v136[2];
                v97 = (v94 & 1) == 0;
                result = v96 + v97;
                if (__OFADD__(v96, v97))
                {
                  goto LABEL_81;
                }

                v98 = v94;
                if (v136[3] >= result)
                {
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    if ((v94 & 1) == 0)
                    {
                      goto LABEL_61;
                    }
                  }

                  else
                  {
                    sub_10007F8E4();
                    if ((v98 & 1) == 0)
                    {
                      goto LABEL_61;
                    }
                  }
                }

                else
                {
                  sub_10007D120(result, isUniquelyReferenced_nonNull_native);
                  v99 = sub_10007B4E8(v135, v91);
                  if ((v98 & 1) != (v100 & 1))
                  {
                    goto LABEL_72;
                  }

                  v95 = v99;
                  if ((v98 & 1) == 0)
                  {
LABEL_61:
                    v101 = v136;
                    sub_10007EDFC(v95, v135, v92, _swiftEmptyArrayStorage, v136);
                    goto LABEL_62;
                  }
                }

                v101 = v136;
LABEL_62:
                v103 = (v101[7] + 8 * v95);
                v104 = v64;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                v27 = v137;
                if (*((*v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v105 = *((*v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v134 = sub_100039E64;
                goto LABEL_47;
              }
            }

LABEL_59:

            v27 = v137;
LABEL_47:
            v84 = v0[21];
            v85 = v0[2];
            v86 = swift_isUniquelyReferenced_nonNull_native();
            sub_10007EA28(v27, v84, v86);

            sub_10003EA94(v27, 1);
            v0[2] = v85;
LABEL_6:
            v11 = v125;
            v13 = v136;
            v10 &= v10 - 1;
            (*v126)(v0[21], v0[19]);
            v7 = v127;
            continue;
          }

          v27 = v22;
        }

LABEL_44:
        v74 = v0[15];
        sub_1000386C4();
        static LoggedObject.logger.getter();
        v75 = v24;
        sub_10003EA88(v27, 1);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();

        sub_10003EA94(v27, 1);
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          *v78 = 138543618;
          *(v78 + 4) = v75;
          *v79 = v75;
          *(v78 + 12) = 2114;
          v80 = v75;
          sub_10003EA88(v27, 1);
          v81 = _swift_stdlib_bridgeErrorToNSError();
          *(v78 + 14) = v81;
          v79[1] = v81;
          _os_log_impl(&_mh_execute_header, v76, v77, "Upload for record %{public}@ failed: %{public}@", v78, 0x16u);
          sub_10000CED0(&unk_1000AB7D0, &qword_100085510);
          swift_arrayDestroy();
        }

        v82 = v0[15];
        v83 = v0[13];

        (*v128)(v82, v83);
        goto LABEL_47;
      }

      v28 = v0[17];
      sub_1000386C4();
      static LoggedObject.logger.getter();
      v29 = v24;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138543362;
        *(v32 + 4) = v29;
        *v33 = v29;
        v34 = v29;
        _os_log_impl(&_mh_execute_header, v30, v31, "Upload for record %{public}@ succeeded", v32, 0xCu);
        sub_10000D620(v33, &unk_1000AB7D0, &qword_100085510);
      }

      v35 = v0[21];
      v36 = v0[17];
      v37 = v0[13];

      (*v128)(v36, v37);
      v38 = v0[2];
      v39 = swift_isUniquelyReferenced_nonNull_native();
      result = sub_10007B6C4(v35);
      v41 = v38[2];
      v42 = (v40 & 1) == 0;
      v43 = __OFADD__(v41, v42);
      v44 = v41 + v42;
      if (v43)
      {
        __break(1u);
      }

      else
      {
        v45 = v40;
        if (v38[3] < v44)
        {
          v46 = v0[21];
          sub_10007CD40(v44, v39);
          result = sub_10007B6C4(v46);
          if ((v45 & 1) != (v47 & 1))
          {
            v117 = v0[19];
            goto LABEL_72;
          }

LABEL_40:
          if ((v45 & 1) == 0)
          {
            goto LABEL_41;
          }

LABEL_4:
          v14 = v38[7];
          v15 = *(v14 + 8 * result);
          *(v14 + 8 * result) = 0;

LABEL_5:
          sub_10003EA94(v137, 0);

          *v133 = v38;
          goto LABEL_6;
        }

        if (v39)
        {
          goto LABEL_40;
        }

        v102 = result;
        sub_10007F664();
        result = v102;
        if (v45)
        {
          goto LABEL_4;
        }

LABEL_41:
        v69 = v0[21];
        v70 = v0[19];
        v38[(result >> 6) + 8] |= 1 << result;
        v71 = result;
        result = (*(v120 + 16))(v38[6] + *(v120 + 72) * result, v69, v70);
        *(v38[7] + 8 * v71) = 0;
        v72 = v38[2];
        v43 = __OFADD__(v72, 1);
        v73 = v72 + 1;
        if (!v43)
        {
          v38[2] = v73;
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_81:
      __break(1u);
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_100039CA0()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return _swift_task_switch(sub_100039DB8, 0, 0);
}

uint64_t sub_100039DB8()
{
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  sub_10003FB64(v0[22]);
  v6 = v0[2];

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_100039E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for Logger();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100039F5C, 0, 0);
}

uint64_t sub_100039F5C()
{
  v25 = v0;
  v1 = v0[12];
  v2 = v0[3];
  v0[13] = sub_1000386C4();
  static LoggedObject.logger.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  v7 = v0[7];
  v8 = v0[8];
  if (v5)
  {
    v23 = v0[7];
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136446210;
    sub_100036BFC(v9);
    v12 = Array.description.getter();
    v22 = v6;
    v14 = v13;

    v15 = sub_100035120(v12, v14, &v24);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Attempting to create zones: %{public}s", v10, 0xCu);
    sub_10000D330(v11);

    v16 = *(v8 + 8);
    v16(v22, v23);
  }

  else
  {

    v16 = *(v8 + 8);
    v16(v6, v7);
  }

  v0[14] = v16;
  v17 = sub_100036934(v0[3]);
  v0[15] = v17;
  v18 = async function pointer to CKDatabase.modifyRecordZones(saving:deleting:)[1];
  v19 = swift_task_alloc();
  v0[16] = v19;
  *v19 = v0;
  v19[1] = sub_10003A1A4;
  v20 = v0[4];

  return CKDatabase.modifyRecordZones(saving:deleting:)(v17, _swiftEmptyArrayStorage);
}

uint64_t sub_10003A1A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v5 = *(*v2 + 120);
  v8 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v6 = sub_10003AA2C;
  }

  else
  {

    v6 = sub_10003A2EC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10003A2EC()
{
  v1 = 0;
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v2 = *(v0 + 136);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v65 = *(v0 + 136);
  v7 = -1 << *(v65 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v61 = *(v0 + 24);
  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v64 = *(v0 + 64) + 8;
  while (v8)
  {
LABEL_11:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = v11 | (v1 << 6);
    v13 = *(*(v65 + 48) + 8 * v12);
    v14 = *(v65 + 56) + 16 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = v13;
    v18 = *(v0 + 104);
    if (v16 == 1)
    {
      v19 = *(v0 + 88);
      sub_10003EA88(v15, 1);
      static LoggedObject.logger.getter();
      v20 = v17;
      sub_10003EA88(v15, 1);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      sub_10003EA94(v15, 1);
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = v15;
        v25 = swift_slowAlloc();
        *v23 = 138543618;
        *(v23 + 4) = v20;
        *v25 = v20;
        *(v23 + 12) = 2114;
        v62 = v20;
        v26 = v24;
        v0 = v60;
        sub_10003EA88(v26, 1);
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 14) = v27;
        v25[1] = v27;
        _os_log_impl(&_mh_execute_header, v21, v22, "Failed to create zone %{public}@: %{public}@", v23, 0x16u);
        sub_10000CED0(&unk_1000AB7D0, &qword_100085510);
        swift_arrayDestroy();

        sub_10003EA94(v26, 1);
      }

      else
      {

        sub_10003EA94(v15, 1);
      }

      (*(v0 + 112))(*(v0 + 88), *(v0 + 56));
    }

    else
    {
      v28 = v15;
      v29 = *(v0 + 80);
      v63 = v28;
      sub_10003EA88(v28, 0);
      static LoggedObject.logger.getter();
      v30 = v17;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138543362;
        *(v33 + 4) = v30;
        *v34 = v30;
        v35 = v30;
        _os_log_impl(&_mh_execute_header, v31, v32, "Successfully created zone %{public}@", v33, 0xCu);
        sub_10000D620(v34, &unk_1000AB7D0, &qword_100085510);
      }

      v36 = *(v0 + 112);
      v37 = *(v0 + 80);
      v38 = *(v0 + 56);

      v36(v37, v38);
      v39 = [v30 zoneName];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      if (*(v61 + 16))
      {
        v43 = *(v0 + 24);
        v44 = sub_10007B4E8(v40, v42);
        v46 = v45;

        if (v46)
        {
          v47 = *(*(v61 + 56) + 8 * v44);

          sub_10003ABE8(v48);

          sub_10003EA94(v63, 0);
        }

        else
        {
          sub_10003EA94(v63, 0);
        }
      }

      else
      {
        sub_10003EA94(v63, 0);
      }
    }
  }

  while (1)
  {
    v10 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_27:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_23;
      }

      goto LABEL_28;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v10);
    ++v1;
    if (v8)
    {
      v1 = v10;
      goto LABEL_11;
    }
  }

  v49 = *(v0 + 136);

  v9 = *(v0 + 16);
  *(v0 + 152) = v9;
  if (v9 >> 62)
  {
    goto LABEL_27;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_23:
    v50 = swift_task_alloc();
    *(v0 + 160) = v50;
    *v50 = v0;
    v50[1] = sub_10003A890;
    v51 = *(v0 + 40);
    v52 = *(v0 + 48);
    v53 = *(v0 + 32);

    return sub_10003ACD8(v9, v53, v51);
  }

LABEL_28:

  v56 = *(v0 + 88);
  v55 = *(v0 + 96);
  v58 = *(v0 + 72);
  v57 = *(v0 + 80);

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_10003A890()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return _swift_task_switch(sub_10003A9A8, 0, 0);
}

uint64_t sub_10003A9A8()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10003AA2C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  v3 = *(v0 + 72);
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 144);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to create zones: %{public}@", v8, 0xCu);
    sub_10000D620(v9, &unk_1000AB7D0, &qword_100085510);
  }

  else
  {
    v11 = *(v0 + 144);
  }

  v12 = *(v0 + 64) + 8;
  (*(v0 + 112))(*(v0 + 72), *(v0 + 56));
  v14 = *(v0 + 88);
  v13 = *(v0 + 96);
  v16 = *(v0 + 72);
  v15 = *(v0 + 80);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10003ABE8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_10003E798(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10003E8C0(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10003ACD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_10000CED0(&qword_1000AB6B8, &qword_100086D40) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_10003AE54, 0, 0);
}

uint64_t sub_10003AE54()
{
  v1 = v0[14];
  v0[15] = sub_1000386C4();
  static LoggedObject.logger.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to upload records again", v4, 2u);
  }

  v5 = v0[14];
  v6 = v0[9];
  v7 = v0[10];

  v8 = *(v7 + 8);
  v0[16] = v8;
  v8(v5, v6);
  v9 = async function pointer to CKDatabase.modifyRecords(saving:deleting:savePolicy:atomically:)[1];
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_10003AFBC;
  v11 = v0[2];
  v12 = v0[3];

  return CKDatabase.modifyRecords(saving:deleting:savePolicy:atomically:)(v11, _swiftEmptyArrayStorage, 0, 1);
}

uint64_t sub_10003AFBC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v7 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v5 = sub_10003B708;
  }

  else
  {

    v5 = sub_10003B0DC;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_10003B0DC()
{
  v1 = 0;
  v2 = v0[18];
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v81 = v0[18];
  v7 = -1 << *(v81 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v0[7];
  v9 = v6 & v3;
  v10 = (63 - v7) >> 6;
  v79 = (v8 + 32);
  v80 = (v8 + 48);
  v74 = v8;
  v77 = (v8 + 8);
  v78 = v0[10] + 8;
  v75 = v10;
  v76 = v4;
  while (v9)
  {
LABEL_11:
    v15 = v0[5];
    v16 = v0[6];
    v17 = __clz(__rbit64(v9)) | (v1 << 6);
    v18 = *(*(v81 + 48) + 8 * v17);
    v19 = *(v81 + 56) + 16 * v17;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = v18;
    v82 = v20;
    sub_10003EA88(v20, v21);
    v23 = [v22 recordName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();

    if ((*v80)(v15, 1, v16) == 1)
    {
      goto LABEL_38;
    }

    (*v79)(v0[8], v0[5], v0[6]);
    v24 = v0[15];
    if (!v21)
    {
      v33 = v0[13];
      static LoggedObject.logger.getter();
      v34 = v22;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138543362;
        *(v37 + 4) = v34;
        *v38 = v34;
        v39 = v34;
        _os_log_impl(&_mh_execute_header, v35, v36, "Retried upload for record %{public}@ succeeded", v37, 0xCu);
        sub_10000D620(v38, &unk_1000AB7D0, &qword_100085510);
      }

      v40 = v0[16];
      v41 = v0[13];
      v43 = v0[8];
      v42 = v0[9];
      v44 = v0[4];

      v40(v41, v42);
      v45 = *v44;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = *v44;
      v83 = *v44;
      v49 = sub_10007B6C4(v43);
      v50 = v47[2];
      v51 = (v48 & 1) == 0;
      v52 = v50 + v51;
      if (__OFADD__(v50, v51))
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }

      v53 = v48;
      if (v47[3] >= v52)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v48 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          sub_10007F664();
          v47 = v83;
          if ((v53 & 1) == 0)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        v54 = v0[8];
        sub_10007CD40(v52, isUniquelyReferenced_nonNull_native);
        v47 = v83;
        v55 = sub_10007B6C4(v54);
        if ((v53 & 1) != (v56 & 1))
        {
          v73 = v0[6];

          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          return;
        }

        v49 = v55;
        if ((v53 & 1) == 0)
        {
LABEL_26:
          v59 = v0[8];
          v60 = v0[6];
          v47[(v49 >> 6) + 8] |= 1 << v49;
          (*(v74 + 16))(v47[6] + *(v74 + 72) * v49, v59, v60);
          *(v47[7] + 8 * v49) = 0;
          v61 = v47[2];
          v62 = __OFADD__(v61, 1);
          v63 = v61 + 1;
          if (v62)
          {
            goto LABEL_37;
          }

          v47[2] = v63;
          goto LABEL_28;
        }
      }

      v57 = v47[7];
      v58 = *(v57 + 8 * v49);
      *(v57 + 8 * v49) = 0;

LABEL_28:
      v64 = v0[4];
      sub_10003EA94(v82, 0);

      *v64 = v47;
      goto LABEL_5;
    }

    v25 = v0[12];
    static LoggedObject.logger.getter();
    v26 = v22;
    sub_10003EA88(v20, 1);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    sub_10003EA94(v20, 1);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138543618;
      *(v29 + 4) = v26;
      *v30 = v26;
      *(v29 + 12) = 2114;
      v31 = v26;
      sub_10003EA88(v82, 1);
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v32;
      v30[1] = v32;
      _os_log_impl(&_mh_execute_header, v27, v28, "Retried upload for record %{public}@ failed: %{public}@", v29, 0x16u);
      sub_10000CED0(&unk_1000AB7D0, &qword_100085510);
      swift_arrayDestroy();
    }

    v11 = v0[16];
    v12 = v0[12];
    v13 = v0[9];

    sub_10003EA94(v82, 1);
    v11(v12, v13);
LABEL_5:
    v10 = v75;
    v4 = v76;
    v9 &= v9 - 1;
    (*v77)(v0[8], v0[6]);
  }

  while (1)
  {
    v14 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v14 >= v10)
    {
      break;
    }

    v9 = *(v4 + 8 * v14);
    ++v1;
    if (v9)
    {
      v1 = v14;
      goto LABEL_11;
    }
  }

  v65 = v0[18];

  v67 = v0[13];
  v66 = v0[14];
  v69 = v0[11];
  v68 = v0[12];
  v70 = v0[8];
  v71 = v0[5];

  v72 = v0[1];

  v72();
}

uint64_t sub_10003B708()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  v3 = *(v0 + 88);
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 152);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Retried upload operation failed: %{public}@", v8, 0xCu);
    sub_10000D620(v9, &unk_1000AB7D0, &qword_100085510);
  }

  else
  {
    v11 = *(v0 + 152);
  }

  v12 = *(v0 + 80) + 8;
  (*(v0 + 128))(*(v0 + 88), *(v0 + 72));
  v14 = *(v0 + 104);
  v13 = *(v0 + 112);
  v16 = *(v0 + 88);
  v15 = *(v0 + 96);
  v17 = *(v0 + 64);
  v18 = *(v0 + 40);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t *sub_10003B8DC@<X0>(uint64_t *result@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = *result;
  v6 = result[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_14;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    if (__OFSUB__(v9, v8))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v9 - v8 <= 2)
    {
LABEL_13:
      if (v8 != v9)
      {
        goto LABEL_15;
      }

LABEL_14:
      result = sub_10003F994(v5, v6);
LABEL_18:
      *a3 = v5;
      a3[1] = v6;
      return result;
    }

    __break(1u);
  }

  else if (!v7)
  {
    if (BYTE6(v6) <= 2uLL)
    {
      if (!BYTE6(v6))
      {
        goto LABEL_14;
      }

LABEL_15:
      result = static LubyRackoffEncryption.encrypt(tag:withKey:)();
      if (v3)
      {
        *a2 = v3;
        return result;
      }

      v5 = result;
      v6 = v11;
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v5) - v5 <= 2)
  {
    v8 = v5;
    v9 = v5 >> 32;
    goto LABEL_13;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_10003B9C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a3;
  v5 = type metadata accessor for PendingEventData();
  v74 = *(v5 - 8);
  v6 = *(v74 + 64);
  v7 = __chkstk_darwin(v5);
  v68 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v64 - v9;
  v11 = type metadata accessor for Logger();
  v72 = *(v11 - 8);
  v73 = v11;
  v12 = *(v72 + 64);
  __chkstk_darwin(v11);
  v76 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v66 = *(v14 - 8);
  v67 = v14;
  v15 = *(v66 + 64);
  __chkstk_darwin(v14);
  v65 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Configuration.TargetCloudKitZone();
  v70 = *(v17 - 8);
  v71 = v17;
  v18 = *(v70 + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v69 = &v64 - v22;
  v23 = sub_10000CED0(&qword_1000AB8F8, &qword_100086D78);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v64 - v25;
  v27 = type metadata accessor for EventRecord.DataType();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a1 + *(v5 + 28));
  EventRecord.DataType.init(rawValue:)();
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    v33 = v5;
    sub_10000D620(v26, &qword_1000AB8F8, &qword_100086D78);
    sub_1000386C4();
    static LoggedObject.logger.getter();
    sub_100037660(a1, v10);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v77 = v37;
      *v36 = 136315138;
      sub_100037660(v10, v68);
      v38 = String.init<A>(describing:)();
      v40 = v39;
      sub_1000376C4(v10);
      v41 = sub_100035120(v38, v40, &v77);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "Unknown data type, skipping: %s", v36, 0xCu);
      sub_10000D330(v37);

      (*(v72 + 8))(v76, v73);
      v42 = v33;
      v43 = 1;
      v45 = v74;
      v44 = v75;
    }

    else
    {

      sub_1000376C4(v10);
      (*(v72 + 8))(v76, v73);
      v43 = 1;
      v45 = v74;
      v44 = v75;
      v42 = v33;
    }

    return (*(v45 + 56))(v44, v43, 1, v42);
  }

  (*(v28 + 32))(v31, v26, v27);
  v73 = v5;
  v46 = *(v5 + 20);
  EventRecord.DataType.targetCKRecordZone.getter();
  v47 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = *a2;
  v49 = v77;
  *a2 = 0x8000000000000000;
  v76 = a1;
  v72 = v46;
  v51 = sub_10007B6C4(a1 + v46);
  v52 = *(v49 + 16);
  v53 = (v50 & 1) == 0;
  v54 = v52 + v53;
  if (__OFADD__(v52, v53))
  {
    __break(1u);
    goto LABEL_15;
  }

  LOBYTE(a1) = v50;
  if (*(v49 + 24) >= v54)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

LABEL_15:
    sub_10007FA54();
    v49 = v77;
    goto LABEL_10;
  }

  sub_10007D3C8(v54, isUniquelyReferenced_nonNull_native);
  v49 = v77;
  v55 = sub_10007B6C4(&v76[v72]);
  if ((a1 & 1) == (v56 & 1))
  {
    v51 = v55;
LABEL_10:
    v45 = v74;
    v57 = *a2;
    *a2 = v49;

    v58 = *a2;
    v59 = v76;
    if ((a1 & 1) == 0)
    {
      v60 = v65;
      (*(v66 + 16))(v65, &v76[v72], v67);
      sub_10007ED44(v51, v60, &_swiftEmptySetSingleton, v58);
    }

    v61 = v58[7] + 8 * v51;
    v62 = v69;
    sub_10002F8A4(v69, v21);
    (*(v70 + 8))(v62, v71);
    (*(v28 + 8))(v31, v27);
    v44 = v75;
    sub_100037660(v59, v75);
    v43 = 0;
    v42 = v73;
    return (*(v45 + 56))(v44, v43, 1, v42);
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10003C094(uint64_t a1, uint64_t *a2)
{
  v5 = sub_10000CED0(&qword_1000AB918, &qword_100086D98);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for PendingEventData();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v28 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v27 = &v24 - v14;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return _swiftEmptyArrayStorage;
  }

  v16 = *(v13 + 72);
  v24 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = a1 + v24;
  v18 = (v13 + 48);
  v19 = _swiftEmptyArrayStorage;
  v25 = v9;
  v26 = a2;
  while (1)
  {
    sub_10003B9C4(v17, a2, v8);
    if (v2)
    {
      break;
    }

    if ((*v18)(v8, 1, v9) == 1)
    {
      sub_10000D620(v8, &qword_1000AB918, &qword_100086D98);
    }

    else
    {
      v20 = v27;
      sub_10003FB74(v8, v27);
      sub_10003FB74(v20, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1000226FC(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_1000226FC(v21 > 1, v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_10003FB74(v28, v19 + v24 + v22 * v16);
      v9 = v25;
      a2 = v26;
    }

    v17 += v16;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

uint64_t sub_10003C31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = type metadata accessor for Date();
  v5[16] = v6;
  v7 = *(v6 - 8);
  v5[17] = v7;
  v8 = *(v7 + 64) + 15;
  v5[18] = swift_task_alloc();
  v9 = type metadata accessor for DatabaseConfiguration();
  v5[19] = v9;
  v10 = *(v9 - 8);
  v5[20] = v10;
  v11 = *(v10 + 64) + 15;
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_10003C440, 0, 0);
}

uint64_t sub_10003C440()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 96);
  *v1 = v6;
  (*(v2 + 104))(v1, enum case for DatabaseConfiguration.configured(_:), v3);
  sub_10000D2CC(v4 + 64, v0 + 16);
  v7 = *(v4 + 48);
  v8 = type metadata accessor for TagEncryptionKeyController();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  *(v0 + 176) = v11;
  (*(v2 + 32))(v11 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_database, v1, v3);
  sub_10001122C((v0 + 16), v11 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_cache);
  v12 = v11 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_qualityOfService;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v11 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_preventZoneCreation) = v7;
  v13 = v6;

  v15 = sub_100017A78(v14);
  *(v0 + 184) = v15;
  v16 = swift_task_alloc();
  *(v0 + 192) = v16;
  *v16 = v0;
  v16[1] = sub_10003C5D8;

  return sub_10003FCD8(v15);
}

uint64_t sub_10003C5D8(uint64_t a1)
{
  v3 = *(*v2 + 192);
  v4 = *v2;
  v4[25] = a1;
  v4[26] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10003CC38, 0, 0);
  }

  else
  {
    v5 = v4[23];

    v6 = swift_task_alloc();
    v4[27] = v6;
    *v6 = v4;
    v6[1] = sub_10003C754;
    v8 = v4[13];
    v7 = v4[14];
    v9 = v4[12];

    return sub_10003CDE8(v9, v7);
  }
}

uint64_t sub_10003C754(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v7 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v5 = sub_10003CCB8;
  }

  else
  {
    v5 = sub_10003C868;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10003C868()
{
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  v1 = *(v0 + 224);
  v21 = *(v0 + 232);
  v2 = *(v0 + 200);
  v3 = *(v0 + 144);
  v4 = *(v0 + 120);
  static Date.now.getter();
  v5 = swift_task_alloc();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v0 + 64;
  v5[5] = v0 + 80;
  v5[6] = v0 + 56;
  v5[7] = v0 + 72;
  v5[8] = v3;
  v6 = sub_100036F7C(sub_10003EA50, v5, v4);
  *(v0 + 240) = v6;
  v7 = *(v0 + 224);
  v8 = *(v0 + 200);
  if (v21)
  {
    v9 = *(v0 + 176);
    v11 = *(v0 + 136);
    v10 = *(v0 + 144);
    v12 = *(v0 + 128);

    (*(v11 + 8))(v10, v12);
    v13 = *(v0 + 168);
    v14 = *(v0 + 144);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = v6;

    v18 = swift_task_alloc();
    *(v0 + 248) = v18;
    *v18 = v0;
    v18[1] = sub_10003CA58;
    v19 = *(v0 + 96);
    v20 = *(v0 + 104);

    return sub_100038718(v17, v19);
  }
}

uint64_t sub_10003CA58(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v7 = sub_10003CD3C;
  }

  else
  {
    v8 = *(v4 + 240);

    *(v4 + 264) = a1;
    v7 = sub_10003CB88;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10003CB88()
{
  v1 = v0[33];
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  v7 = v0[11];

  *v7 = v1;
  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10003CC38()
{
  v2 = v0[22];
  v1 = v0[23];

  v3 = v0[26];
  v4 = v0[21];
  v5 = v0[18];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10003CCB8()
{
  v1 = v0[25];
  v2 = v0[22];

  v3 = v0[29];
  v4 = v0[21];
  v5 = v0[18];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10003CD3C()
{
  v1 = v0[30];
  v2 = v0[22];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];

  (*(v4 + 8))(v3, v5);
  v6 = v0[32];
  v7 = v0[21];
  v8 = v0[18];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10003CDE8(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for Configuration.TargetCloudKitZone();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v9 = *(*(sub_10000CED0(&qword_1000AB900, &qword_100086D80) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10003CF6C, 0, 0);
}

uint64_t sub_10003CF6C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v3 = *(v2 + 16);
  sub_10000CED0(&qword_1000AB908, &qword_100086D88);
  sub_10003F94C(&unk_1000AC310, &type metadata accessor for UUID);
  v67 = Dictionary.init(minimumCapacity:)();
  v4 = *(v2 + 32);
  *(v0 + 248) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v2 + 64);

  v12 = 0;
  v13 = &qword_1000AB910;
  if (v7)
  {
    while (1)
    {
      v14 = *(v0 + 40);
LABEL_14:
      v20 = *(v0 + 112);
      v19 = *(v0 + 120);
      v22 = *(v0 + 88);
      v21 = *(v0 + 96);
      v68 = (v7 - 1) & v7;
      v23 = __clz(__rbit64(v7)) | (v12 << 6);
      (*(v21 + 16))(v20, *(v14 + 48) + *(v21 + 72) * v23, v22);
      v24 = *(*(v14 + 56) + 8 * v23);
      v25 = sub_10000CED0(v13, &qword_100086D90);
      v26 = v13;
      v27 = *(v25 + 48);
      (*(v21 + 32))(v19, v20, v22);
      *(v19 + v27) = v24;
      v13 = v26;
      (*(*(v25 - 8) + 56))(v19, 0, 1, v25);

      v28 = v68;
      v17 = v12;
LABEL_15:
      *(v0 + 136) = v28;
      *(v0 + 144) = v17;
      v29 = *(v0 + 128);
      sub_10003FAF4(*(v0 + 120), v29);
      v30 = sub_10000CED0(v13, &qword_100086D90);
      if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
      {
        v47 = *(v0 + 112);
        v46 = *(v0 + 120);
        v48 = *(v0 + 104);
        v50 = *(v0 + 72);
        v49 = *(v0 + 80);
        v51 = *(v0 + 64);
        v52 = *(v0 + 40);
        v53 = *(v0 + 128);

        sub_10003FB64(0);

        v54 = *(v0 + 8);

        return v54(v67);
      }

      v32 = *(v0 + 96);
      v31 = *(v0 + 104);
      v33 = *(v0 + 88);
      v34 = *(*(v0 + 128) + *(v30 + 48));
      *(v0 + 152) = v34;
      (*(v32 + 32))(v31);
      v35 = *(v34 + 32);
      *(v0 + 249) = v35;
      v36 = -1 << v35;
      v37 = *(v34 + 56);
      v38 = -v36 < 64 ? ~(-1 << -v36) : -1;
      *(v0 + 168) = 0;
      *(v0 + 176) = v67;
      *(v0 + 160) = v67;
      v39 = v38 & v37;
      if (v39)
      {
        break;
      }

      v40 = 0;
      v41 = ((63 - v36) >> 6) - 1;
      v42 = *(v0 + 152);
      while (v41 != v40)
      {
        v43 = v40 + 1;
        v39 = *(v42 + 8 * v40++ + 64);
        if (v39)
        {
          goto LABEL_31;
        }
      }

      (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

      v7 = *(v0 + 136);
      v12 = *(v0 + 144);
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v43 = 0;
    v42 = *(v0 + 152);
LABEL_31:
    *(v0 + 184) = v39;
    *(v0 + 192) = v43;
    v56 = *(v0 + 72);
    v57 = *(v0 + 80);
    v58 = *(v0 + 48);
    v59 = *(v0 + 56);
    v60 = __clz(__rbit64(v39)) | (v43 << 6);
    v61 = *(v42 + 48);
    v62 = *(v59 + 72);
    *(v0 + 200) = v62;
    v63 = v61 + v62 * v60;
    v64 = *(v59 + 16);
    *(v0 + 208) = v64;
    *(v0 + 216) = (v59 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v64(v57, v63, v58);
    (*(v59 + 32))(v56, v57, v58);
    v65 = async function pointer to static SharedZoneLookup.zoneID(for:homeIdentifier:target:BOOL:)[1];
    v66 = swift_task_alloc();
    *(v0 + 224) = v66;
    *v66 = v0;
    v66[1] = sub_10003D4AC;
    v9 = *(v0 + 104);
    v10 = *(v0 + 72);
    v8 = *(v0 + 32);
    v11 = 1;
  }

  else
  {
LABEL_6:
    v15 = ((1 << *(v0 + 248)) + 63) >> 6;
    if (v15 <= (v12 + 1))
    {
      v16 = v12 + 1;
    }

    else
    {
      v16 = ((1 << *(v0 + 248)) + 63) >> 6;
    }

    v17 = v16 - 1;
    while (1)
    {
      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        v44 = *(v0 + 120);
        v45 = sub_10000CED0(v13, &qword_100086D90);
        (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
        v28 = 0;
        goto LABEL_15;
      }

      v14 = *(v0 + 40);
      v7 = *(v14 + 8 * v18 + 64);
      ++v12;
      if (v7)
      {
        v12 = v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return static SharedZoneLookup.zoneID(for:homeIdentifier:target:BOOL:)(v8, v9, v10, v11);
}

uint64_t sub_10003D4AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 224);
  v7 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v5 = sub_10003DD98;
  }

  else
  {
    v5 = sub_10003D5C0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10003D5C0()
{
  v3 = *(v0 + 216);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v6 = *(v0 + 104);
  v7 = (v0 + 48);
  (*(v0 + 208))(*(v0 + 64), *(v0 + 72), *(v0 + 48));
  sub_10003FB64(v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 16) = v4;
  v10 = sub_10007B6C4(v6);
  v11 = v4[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  LOBYTE(v1) = v9;
  v4 = *(v0 + 160);
  if (v4[3] >= v13)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10007FCDC();
      v4 = *(v0 + 16);
    }
  }

  else
  {
    v14 = *(v0 + 104);
    sub_10007D7BC(v13, isUniquelyReferenced_nonNull_native);
    v4 = *(v0 + 16);
    v15 = sub_10007B6C4(v14);
    if ((v1 & 1) != (v16 & 1))
    {
      v7 = (v0 + 88);
LABEL_14:
      v34 = *v7;

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

    v10 = v15;
  }

  if ((v1 & 1) == 0)
  {
    v18 = *(v0 + 96);
    v17 = *(v0 + 104);
    v19 = *(v0 + 88);
    v4[(v10 >> 6) + 8] |= 1 << v10;
    v13 = (*(v18 + 16))(v4[6] + *(v18 + 72) * v10, v17, v19);
    *(v4[7] + 8 * v10) = &_swiftEmptyDictionarySingleton;
    v20 = v4[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
LABEL_55:
      __break(1u);
LABEL_56:
      v111 = v13;
      sub_10007FA68();
      v13 = v111;
      goto LABEL_18;
    }

    v4[2] = v22;
  }

  v1 = *(v0 + 64);
  v2 = v4[7];
  v23 = *(v0 + 232);
  v24 = *(v2 + 8 * v10);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v2 + 8 * v10);
  *(v0 + 24) = v26;
  *(v2 + 8 * v10) = 0x8000000000000000;
  v13 = sub_10007B7E0(v1);
  v28 = *(v26 + 16);
  v29 = (v27 & 1) == 0;
  v21 = __OFADD__(v28, v29);
  v30 = v28 + v29;
  if (v21)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  LOBYTE(v1) = v27;
  if (*(v26 + 24) >= v30)
  {
    if (v25)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

  v31 = *(v0 + 64);
  sub_10007D3DC(v30, v25);
  v32 = *(v0 + 24);
  v13 = sub_10007B7E0(v31);
  if ((v1 & 1) != (v33 & 1))
  {
    goto LABEL_14;
  }

LABEL_18:
  v112 = v4;
  v36 = *(v0 + 24);
  v37 = *(v0 + 232);
  if (v1)
  {
    v38 = *(v0 + 56);
    v39 = *(v0 + 64);
    v40 = *(v0 + 48);
    v41 = v36[7];
    v42 = *(v41 + 8 * v13);
    *(v41 + 8 * v13) = v37;

    v1 = *(v38 + 8);
    (v1)(v39, v40);
  }

  else
  {
    v44 = *(v0 + 208);
    v43 = *(v0 + 216);
    v45 = *(v0 + 200);
    v46 = *(v0 + 56);
    v47 = *(v0 + 64);
    v48 = *(v0 + 48);
    v36[(v13 >> 6) + 8] |= 1 << v13;
    v49 = v13;
    v44(v36[6] + v45 * v13, v47, v48);
    *(v36[7] + 8 * v49) = v37;
    v1 = *(v46 + 8);
    v50 = (v1)(v47, v48);
    v54 = v36[2];
    v21 = __OFADD__(v54, 1);
    v55 = v54 + 1;
    if (v21)
    {
      __break(1u);
      return static SharedZoneLookup.zoneID(for:homeIdentifier:target:BOOL:)(v50, v51, v52, v53);
    }

    v36[2] = v55;
  }

  v56 = *(v0 + 232);
  v57 = *(v0 + 72);
  v58 = *(v0 + 48);
  v59 = *(v0 + 56) + 8;
  v60 = *(v2 + 8 * v10);
  *(v2 + 8 * v10) = v36;

  v13 = (v1)(v57, v58);
  v62 = *(v0 + 184);
  v61 = *(v0 + 192);
  v4 = v112;
  *(v0 + 168) = sub_10003E604;
  *(v0 + 176) = v112;
  *(v0 + 160) = v112;
  v63 = (v62 - 1) & v62;
  if (v63)
  {
LABEL_23:
    *(v0 + 184) = v63;
    *(v0 + 192) = v61;
    v64 = *(v0 + 72);
    v65 = *(v0 + 80);
    v66 = *(v0 + 48);
    v67 = *(v0 + 56);
    v68 = __clz(__rbit64(v63)) | (v61 << 6);
    v69 = *(*(v0 + 152) + 48);
    v70 = *(v67 + 72);
    *(v0 + 200) = v70;
    v71 = v69 + v70 * v68;
    v72 = *(v67 + 16);
    *(v0 + 208) = v72;
    *(v0 + 216) = (v67 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v72(v65, v71, v66);
    (*(v67 + 32))(v64, v65, v66);
    v73 = async function pointer to static SharedZoneLookup.zoneID(for:homeIdentifier:target:BOOL:)[1];
    v74 = swift_task_alloc();
    *(v0 + 224) = v74;
    *v74 = v0;
    v74[1] = sub_10003D4AC;
    v51 = *(v0 + 104);
    v52 = *(v0 + 72);
    v50 = *(v0 + 32);
    v53 = 1;

    return static SharedZoneLookup.zoneID(for:homeIdentifier:target:BOOL:)(v50, v51, v52, v53);
  }

  v10 = &qword_100086D90;
  while (1)
  {
    while (1)
    {
      v21 = __OFADD__(v61++, 1);
      if (v21)
      {
        goto LABEL_52;
      }

      if (v61 >= (((1 << *(v0 + 249)) + 63) >> 6))
      {
        break;
      }

      v63 = *(*(v0 + 152) + 8 * v61 + 56);
      if (v63)
      {
        goto LABEL_23;
      }
    }

    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v75 = *(v0 + 136);
    v76 = *(v0 + 144);
    if (!v75)
    {
      v78 = ((1 << *(v0 + 248)) + 63) >> 6;
      if (v78 <= v76 + 1)
      {
        v79 = v76 + 1;
      }

      else
      {
        v79 = ((1 << *(v0 + 248)) + 63) >> 6;
      }

      v1 = v79 - 1;
      while (1)
      {
        v80 = v76 + 1;
        if (__OFADD__(v76, 1))
        {
          break;
        }

        if (v80 >= v78)
        {
          v100 = *(v0 + 120);
          v101 = sub_10000CED0(&qword_1000AB910, &qword_100086D90);
          (*(*(v101 - 8) + 56))(v100, 1, 1, v101);
          v90 = 0;
          goto LABEL_41;
        }

        v77 = *(v0 + 40);
        v75 = *(v77 + 8 * v80 + 64);
        ++v76;
        if (v75)
        {
          v76 = v80;
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v77 = *(v0 + 40);
LABEL_40:
    v82 = *(v0 + 112);
    v81 = *(v0 + 120);
    v83 = *(v0 + 88);
    v84 = *(v0 + 96);
    v113 = (v75 - 1) & v75;
    v85 = __clz(__rbit64(v75)) | (v76 << 6);
    (*(v84 + 16))(v82, *(v77 + 48) + *(v84 + 72) * v85, v83);
    v86 = *(*(v77 + 56) + 8 * v85);
    v10 = &qword_100086D90;
    v87 = sub_10000CED0(&qword_1000AB910, &qword_100086D90);
    v88 = *(v87 + 48);
    v89 = *(v84 + 32);
    v2 = v84 + 32;
    v89(v81, v82, v83);
    *(v81 + v88) = v86;
    (*(*(v87 - 8) + 56))(v81, 0, 1, v87);

    v4 = v112;
    v90 = v113;
    v1 = v76;
LABEL_41:
    *(v0 + 136) = v90;
    *(v0 + 144) = v1;
    v1 = *(v0 + 128);
    sub_10003FAF4(*(v0 + 120), v1);
    v91 = sub_10000CED0(&qword_1000AB910, &qword_100086D90);
    if ((*(*(v91 - 8) + 48))(v1, 1, v91) == 1)
    {
      break;
    }

    v93 = *(v0 + 96);
    v92 = *(v0 + 104);
    v94 = *(v0 + 88);
    v95 = *(*(v0 + 128) + *(v91 + 48));
    *(v0 + 152) = v95;
    v13 = (*(v93 + 32))(v92);
    v61 = 0;
    v96 = *(v95 + 32);
    *(v0 + 249) = v96;
    v97 = 1 << v96;
    v98 = *(v95 + 56);
    if (v97 < 64)
    {
      v99 = ~(-1 << v97);
    }

    else
    {
      v99 = -1;
    }

    *(v0 + 168) = sub_10003E604;
    *(v0 + 176) = v4;
    *(v0 + 160) = v4;
    v63 = v99 & v98;
    if (v63)
    {
      goto LABEL_23;
    }
  }

  v103 = *(v0 + 112);
  v102 = *(v0 + 120);
  v104 = *(v0 + 104);
  v106 = *(v0 + 72);
  v105 = *(v0 + 80);
  v107 = *(v0 + 64);
  v108 = *(v0 + 40);
  v109 = *(v0 + 128);

  sub_10003FB64(sub_10003E604);

  v110 = *(v0 + 8);

  return v110(v4);
}

uint64_t sub_10003DD98()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v14 = v0[16];
  v15 = v0[15];
  v4 = v0[13];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[9];
  v16 = v0[14];
  v17 = v0[10];
  v8 = v0[7];
  v18 = v0[8];
  v9 = v0[5];
  v10 = v0[6];

  (*(v8 + 8))(v7, v10);
  (*(v5 + 8))(v4, v6);

  sub_10003FB64(v2);

  v11 = v0[1];
  v12 = v0[30];

  return v11();
}

void sub_10003DEC8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, char **a10)
{
  v83 = a3;
  v80 = a7;
  v81 = a8;
  v78 = a5;
  v79 = a6;
  v77 = a4;
  v82 = a2;
  v75 = a9;
  v11 = type metadata accessor for PendingEventData();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v73 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v72 = &v72 - v15;
  v74 = type metadata accessor for Logger();
  v76 = *(v74 - 8);
  v16 = *(v76 + 64);
  v17 = __chkstk_darwin(v74);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v72 - v20;
  v22 = type metadata accessor for EventRecord.DataType();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + *(v11 + 28));
  (*(v23 + 104))(v26, enum case for EventRecord.DataType.fakeEvent(_:), v22);
  v28 = EventRecord.DataType.rawValue.getter();
  (*(v23 + 8))(v26, v22);
  v29 = v84;
  v30 = sub_10003F318(a1, v82, v83);
  if (v29)
  {
    *a10 = v29;
    return;
  }

  v31 = v78;
  v32 = v79;
  v33 = v80;
  v83 = 0;
  v84 = v19;
  v34 = v76;
  v82 = v30;
  if (v27 == v28)
  {
    v35 = v84;
    if (__OFADD__(*v77, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    v36 = v76;
    ++*v77;
    v30 = [v30 size];
    v34 = *v31;
    v32 = (*v31 + v30 / 1000);
    if (!__OFADD__(*v31, v30 / 1000))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v37 = v32;
  v38 = *v32;
  v39 = __OFADD__(v38, 1);
  v40 = v38 + 1;
  v35 = v84;
  if (v39)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v36 = v34;
  *v37 = v40;
  v41 = [v30 size];
  v32 = (*v33 + v41 / 1000);
  if (__OFADD__(*v33, v41 / 1000))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v31 = v33;
LABEL_11:
  *v31 = v32;
  v42 = *(v11 + 24);
  Date.timeIntervalSince(_:)();
  v44 = 0.0;
  if (v43 <= 0.0)
  {
    v44 = v43;
    if (v43 >= 2592000.0)
    {
      sub_1000386C4();
      v58 = v21;
      static LoggedObject.logger.getter();
      v59 = v72;
      sub_100037660(a1, v72);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = v36;
        v64 = v59;
        v65 = swift_slowAlloc();
        v85 = v65;
        *v62 = 136446210;
        type metadata accessor for UUID();
        sub_10003F94C(&qword_1000AB0D8, &type metadata accessor for UUID);
        v66 = dispatch thunk of CustomStringConvertible.description.getter();
        v68 = v67;
        sub_1000376C4(v64);
        v69 = sub_100035120(v66, v68, &v85);

        *(v62 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v60, v61, "Event %{public}s happened more than 30 days ago, setting immediate expiration time", v62, 0xCu);
        sub_10000D330(v65);

        (*(v63 + 8))(v58, v74);
      }

      else
      {

        sub_1000376C4(v59);
        (*(v36 + 8))(v58, v74);
      }

      goto LABEL_22;
    }
  }

  v45 = 2592000.0 - v44;
  sub_1000386C4();
  static LoggedObject.logger.getter();
  v46 = v73;
  sub_100037660(a1, v73);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v47, v48))
  {

    sub_1000376C4(v46);
    (*(v36 + 8))(v35, v74);
LABEL_22:
    v56 = v75;
    goto LABEL_23;
  }

  v49 = v36;
  v50 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  v85 = v51;
  *v50 = 136315394;
  type metadata accessor for UUID();
  sub_10003F94C(&qword_1000AB0D8, &type metadata accessor for UUID);
  v52 = dispatch thunk of CustomStringConvertible.description.getter();
  v54 = v53;
  sub_1000376C4(v46);
  v55 = sub_100035120(v52, v54, &v85);

  *(v50 + 4) = v55;
  *(v50 + 12) = 2048;
  v56 = v75;
  if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v45 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v57 = v74;
  if (v45 < 9.22337204e18)
  {
    *(v50 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v47, v48, "Event %s will use expiration time %ld", v50, 0x16u);
    sub_10000D330(v51);

    (*(v49 + 8))(v84, v57);
LABEL_23:
    isa = Double._bridgeToObjectiveC()().super.super.isa;
    v71 = v82;
    [v82 setExpirationAfterTimeInterval:isa];

    *v56 = v71;
    return;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_10003E614(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10001DBDC;

  return sub_10003C31C(a1, a2, v6, v7, v8);
}

char *sub_10003E6D8(char *a1, int64_t a2, char a3)
{
  result = sub_100032D1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10003E6F8(size_t a1, int64_t a2, char a3)
{
  result = sub_100032E2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10003E718(size_t a1, int64_t a2, char a3)
{
  result = sub_100032E54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10003E738(size_t a1, int64_t a2, char a3)
{
  result = sub_100032E7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003E758(char *a1, int64_t a2, char a3)
{
  result = sub_100033080(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003E778(char *a1, int64_t a2, char a3)
{
  result = sub_10003318C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10003E798(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

void (*sub_10003E838(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10003E8B8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10003E8C0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10003EAA0();
          for (i = 0; i != v6; ++i)
          {
            sub_10000CED0(&qword_1000AB8C8, &unk_100086D60);
            v9 = sub_10003E838(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000D544(0, &qword_1000AB808, CKRecord_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10003EA88(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_10003EA94(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_10003EAA0()
{
  result = qword_1000AB8D0;
  if (!qword_1000AB8D0)
  {
    sub_100003988(&qword_1000AB8C8, &unk_100086D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB8D0);
  }

  return result;
}

uint64_t sub_10003EB04(uint64_t result)
{
  v1 = 300 * result;
  if ((result * 300) >> 64 != (300 * result) >> 63)
  {
    __break(1u);
    goto LABEL_17;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (HIDWORD(v1) > 0x18)
  {
    return 7;
  }

  if (v1 >> 31 > 4)
  {
    return 6;
  }

  if (v1 >> 30)
  {
    return 5;
  }

  if (v1 >> 22 > 0x18)
  {
    return 4;
  }

  v2 = v1 >> 21;
  v3 = v1 >= 0x100000;
  v4 = 1;
  if (v3)
  {
    v4 = 2;
  }

  if (v2 <= 4)
  {
    return v4;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_10003EB90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration.TargetCloudKitZone();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000CED0(&qword_1000AB8F8, &qword_100086D78);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for EventRecord.DataType();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PendingEventData();
  v19 = *(a1 + *(v18 + 28));
  EventRecord.DataType.init(rawValue:)();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000D620(v12, &qword_1000AB8F8, &qword_100086D78);
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    if (*(a2 + 16))
    {
      v20 = sub_10007B6C4(a1 + *(v18 + 20));
      if (v21)
      {
        v22 = *(*(a2 + 56) + 8 * v20);

        EventRecord.DataType.targetCKRecordZone.getter();
        if (*(v22 + 16))
        {
          v23 = sub_10007B7E0(v8);
          if (v24)
          {
            v25 = *(v5 + 8);
            v26 = *(*(v22 + 56) + 8 * v23);
            v25(v8, v4);

            (*(v14 + 8))(v17, v13);
            return v26;
          }
        }

        (*(v5 + 8))(v8, v4);
      }
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Class sub_10003EEE4(uint64_t a1, uint64_t a2)
{
  v42 = type metadata accessor for EventRecord.Field();
  v47 = *(v42 - 8);
  v4 = *(v47 + 64);
  __chkstk_darwin(v42);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecordType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  v12 = sub_10003EB90(a1, a2);
  sub_10000D544(0, &qword_1000AB8F0, CKRecordID_ptr);
  v13 = UUID.uuidString.getter();
  v15 = v14;
  v44.super.isa = v12;
  v16._countAndFlagsBits = v13;
  v16._object = v15;
  isa = CKRecordID.init(recordName:zoneID:)(v16, v44).super.isa;
  sub_10000D544(0, &qword_1000AB808, CKRecord_ptr);
  static EventRecord.recordType.getter();
  v18 = RecordType.rawValue.getter();
  v20 = v19;
  (*(v8 + 8))(v11, v7);
  v43.super.isa = isa;
  v21._countAndFlagsBits = v18;
  v21._object = v20;
  v45 = CKRecord.init(recordType:recordID:)(v21, v43).super.isa;
  v22 = v47;
  v23 = v47 + 104;
  v24 = *(v47 + 104);
  v25 = v42;
  v24(v6, enum case for EventRecord.Field.date(_:), v42);
  v40[3] = v23;
  static EventRecord.fieldKey(_:)();
  v26 = *(v22 + 8);
  v47 = v22 + 8;
  v26(v6, v25);
  v41 = type metadata accessor for PendingEventData();
  v27 = *(v41 + 24);
  v28 = type metadata accessor for Date();
  v49 = v28;
  v50 = &protocol witness table for Date;
  v29 = sub_10000CF2C(v48);
  (*(*(v28 - 8) + 16))(v29, v46 + v27, v28);
  v30 = v45;
  CKRecordKeyValueSetting.subscript.setter();
  v31 = [(objc_class *)v30 encryptedValues];
  v40[2] = swift_getObjectType();
  v24(v6, enum case for EventRecord.Field.data(_:), v25);
  v40[1] = static EventRecord.fieldKey(_:)();
  v32 = v26;
  v26(v6, v25);
  v33 = v41;
  v34 = v46;
  v35 = (v46 + *(v41 + 32));
  v36 = *v35;
  v37 = v35[1];
  v49 = &type metadata for Data;
  v50 = &protocol witness table for Data;
  v48[0] = v36;
  v48[1] = v37;
  sub_10003F994(v36, v37);
  CKRecordKeyValueSetting.subscript.setter();
  v24(v6, enum case for EventRecord.Field.dataType(_:), v25);
  static EventRecord.fieldKey(_:)();
  v32(v6, v25);
  v38 = *(v34 + *(v33 + 28));
  v49 = &type metadata for Int64;
  v50 = &protocol witness table for Int64;
  v48[0] = v38;
  CKRecordKeyValueSetting.subscript.setter();

  swift_unknownObjectRelease();
  return v45;
}

uint64_t sub_10003F318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for EventRecord.Field();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000CED0(&qword_1000AB8D8, &qword_100086FE0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v47 - v17;
  v50 = sub_10003EEE4(a1, a3);
  v54 = v3;
  if (!a2)
  {
    (*(v8 + 104))(v11, enum case for EventRecord.Field.tags(_:), v7);
    v18 = static EventRecord.fieldKey(_:)();
    (*(v8 + 8))(v11, v7);
    v32 = *(a1 + *(type metadata accessor for PendingEventData() + 36));
    v33 = *(v32 + 16);
    if (!v33)
    {
      v36 = _swiftEmptyArrayStorage;
      goto LABEL_30;
    }

    v34 = 0;
    v35 = v32 + 32;
    v48 = v33 - 1;
    v36 = _swiftEmptyArrayStorage;
    while (1)
    {
      v37 = v34;
      while (1)
      {
        if (v37 >= *(v32 + 16))
        {
          __break(1u);
          goto LABEL_33;
        }

        v38 = *(v35 + 16 * v37);
        v39 = *(v35 + 16 * v37 + 8);
        v40 = v39 >> 62;
        if ((v39 >> 62) > 1)
        {
          break;
        }

        if (v40)
        {
          if (v38 == v38 >> 32)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if ((v39 & 0xFF000000000000) == 0)
          {
            goto LABEL_22;
          }

          sub_10000D37C(*(v35 + 16 * v37), v39);
        }

LABEL_19:
        if (v33 == ++v37)
        {
          goto LABEL_30;
        }
      }

      if (v40 != 2)
      {
        goto LABEL_22;
      }

      if (*(v38 + 16) != *(v38 + 24))
      {
        goto LABEL_19;
      }

LABEL_21:
      v49 = *(v35 + 16 * v37);
      sub_10003F994(v49, v39);
      v38 = v49;
LABEL_22:
      v49 = v38;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10003E778(0, v36[2] + 1, 1);
        v36 = v51;
      }

      v43 = v36[2];
      v42 = v36[3];
      v44 = v49;
      if (v43 >= v42 >> 1)
      {
        sub_10003E778((v42 > 1), v43 + 1, 1);
        v44 = v49;
        v36 = v51;
      }

      v34 = v37 + 1;
      v36[2] = v43 + 1;
      *&v36[2 * v43 + 4] = v44;
      if (v48 == v37)
      {
LABEL_30:
        v52 = sub_10000CED0(&qword_1000AB8E0, &qword_100086D70);
        v53 = sub_10003F9E8();
        v51 = v36;
        sub_10000D544(0, &qword_1000AB808, CKRecord_ptr);
        v31 = v50;
        CKRecordKeyValueSetting.subscript.setter();
        return v31;
      }
    }
  }

  *&v49 = a1;
  if (!*(a2 + 16) || (v48 = type metadata accessor for PendingEventData(), v19 = sub_10007B6C4(v49 + *(v48 + 20)), (v20 & 1) == 0))
  {
LABEL_33:
    v46 = type metadata accessor for LubyRackoffEncryptionKey();
    result = (*(*(v46 - 8) + 56))(v18, 1, 1, v46);
    __break(1u);
    goto LABEL_34;
  }

  v21 = v19;
  v22 = *(a2 + 56);
  v23 = type metadata accessor for LubyRackoffEncryptionKey();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v18, v22 + *(v24 + 72) * v21, v23);
  (*(v24 + 56))(v18, 0, 1, v23);
  (*(v8 + 104))(v11, enum case for EventRecord.Field.tags(_:), v7);
  v47 = static EventRecord.fieldKey(_:)();
  (*(v8 + 8))(v11, v7);
  sub_10003FA64(v18, v16);
  result = (*(v24 + 48))(v16, 1, v23);
  if (result == 1)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v26 = *(v49 + *(v48 + 36));
  __chkstk_darwin(result);
  *(&v47 - 2) = v27;
  *(&v47 - 1) = v16;
  v28 = v54;
  v30 = sub_100036E40(sub_10003FAD4, (&v47 - 4), v29);
  if (v28)
  {
    sub_10000D620(v18, &qword_1000AB8D8, &qword_100086FE0);

    v31 = v50;

    (*(v24 + 8))(v16, v23);
  }

  else
  {
    v45 = v30;
    (*(v24 + 8))(v16, v23);
    v52 = sub_10000CED0(&qword_1000AB8E0, &qword_100086D70);
    v53 = sub_10003F9E8();
    v51 = v45;
    sub_10000D544(0, &qword_1000AB808, CKRecord_ptr);
    v31 = v50;
    CKRecordKeyValueSetting.subscript.setter();
    sub_10000D620(v18, &qword_1000AB8D8, &qword_100086FE0);
  }

  return v31;
}

uint64_t sub_10003F94C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003F994(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10003F9E8()
{
  result = qword_1000AB8E8;
  if (!qword_1000AB8E8)
  {
    sub_100003988(&qword_1000AB8E0, &qword_100086D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB8E8);
  }

  return result;
}

uint64_t sub_10003FA64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AB8D8, &qword_100086FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_10003FAD4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  return sub_10003B8DC(a1, a2, a3);
}

uint64_t sub_10003FAF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AB900, &qword_100086D80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003FB64(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10003FB74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingEventData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_10003FBD8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10003FC18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_10003FC64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003FCD8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = type metadata accessor for Logger();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10003FDC0, 0, 0);
}

uint64_t sub_10003FDC0()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[3];
  sub_1000471F0(&qword_1000AB9F0, type metadata accessor for TagEncryptionKeyController);
  static LoggedObject.logger.getter();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];
  if (v6)
  {
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    type metadata accessor for UUID();
    sub_1000471F0(&unk_1000AC310, &type metadata accessor for UUID);
    v13 = Set.description.getter();
    v15 = sub_100035120(v13, v14, &v24);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Ensuring encryption keys for homes with identifiers: %s", v11, 0xCu);
    sub_10000D330(v12);
  }

  (*(v8 + 8))(v7, v9);
  v16 = v0[5];
  v17 = sub_10000CED0(&qword_1000ABA08, &qword_100086F98);
  v18 = swift_task_alloc();
  v0[9] = v18;
  *(v18 + 16) = *(v0 + 3);
  *(v18 + 32) = v16;
  v19 = sub_10000CED0(&qword_1000ABA10, &qword_100086FB0);
  v20 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v21 = swift_task_alloc();
  v0[10] = v21;
  *v21 = v0;
  v21[1] = sub_100040090;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v17, v19, 0, 0, &unk_100086FA8, v18, v17);
}

uint64_t sub_100040090()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_100040218;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1000401AC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000401AC()
{
  v1 = v0[8];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_100040218()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_100040284()
{
  v1 = OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_database;
  v2 = type metadata accessor for DatabaseConfiguration();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000D330((v0 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_cache));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TagEncryptionKeyController()
{
  result = qword_1000AB948;
  if (!qword_1000AB948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100040384()
{
  result = type metadata accessor for DatabaseConfiguration();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100040430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = type metadata accessor for LubyRackoffEncryptionKey();
  v5[16] = v6;
  v7 = *(v6 - 8);
  v5[17] = v7;
  v8 = *(v7 + 64) + 15;
  v5[18] = swift_task_alloc();
  v9 = *(*(sub_10000CED0(&qword_1000ABA18, &qword_100086FB8) - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v10 = sub_10000CED0(&qword_1000ABA20, &unk_100086FC0);
  v5[20] = v10;
  v11 = *(v10 - 8);
  v5[21] = v11;
  v12 = *(v11 + 64) + 15;
  v5[22] = swift_task_alloc();
  v13 = *(*(sub_10000CED0(&qword_1000AAD30, &qword_100085540) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v5[25] = v14;
  v15 = *(v14 - 8);
  v5[26] = v15;
  v5[27] = *(v15 + 64);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_100040658, 0, 0);
}

uint64_t sub_100040658()
{
  v1 = *(v0 + 104);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 104) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v45 = *(v0 + 104);
  v46 = *(v0 + 208);
  v42 = *(v0 + 216) + 7;

  v14 = 0;
  v43 = v8;
  v44 = v3;
  while (v7)
  {
LABEL_10:
    v17 = *(v0 + 232);
    v18 = *(v0 + 240);
    v19 = *(v0 + 192);
    v20 = *(v0 + 200);
    v48 = v19;
    v21 = *(v0 + 112);
    v50 = *(v0 + 120);
    v51 = *(v0 + 184);
    (*(v46 + 16))(v18, *(v45 + 48) + *(v46 + 72) * (__clz(__rbit64(v7)) | (v14 << 6)), v20);
    v22 = type metadata accessor for TaskPriority();
    v47 = *(v22 - 8);
    (*(v47 + 56))(v19, 1, 1, v22);
    v23 = *(v46 + 32);
    v23(v17, v18, v20);
    v24 = (*(v46 + 80) + 40) & ~*(v46 + 80);
    v25 = swift_allocObject();
    v25[2] = 0;
    v49 = v25 + 2;
    v25[3] = 0;
    v25[4] = v21;
    v23(v25 + v24, v17, v20);
    *(v25 + ((v42 + v24) & 0xFFFFFFFFFFFFFFF8)) = v50;
    sub_10001DA7C(v48, v51);
    LODWORD(v24) = (*(v47 + 48))(v51, 1, v22);

    v26 = *(v0 + 184);
    if (v24 == 1)
    {
      sub_10000D620(*(v0 + 184), &qword_1000AAD30, &qword_100085540);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v47 + 8))(v26, v22);
    }

    if (*v49)
    {
      v27 = v25[3];
      v28 = *v49;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v29 = dispatch thunk of Actor.unownedExecutor.getter();
      v31 = v30;
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v32 = **(v0 + 96);

    sub_10000CED0(&qword_1000ABA08, &qword_100086F98);
    v33 = v31 | v29;
    if (v31 | v29)
    {
      v33 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v29;
      *(v0 + 40) = v31;
    }

    v15 = *(v0 + 192);
    v7 &= v7 - 1;
    *(v0 + 48) = 1;
    *(v0 + 56) = v33;
    *(v0 + 64) = v32;
    swift_task_create();

    v9 = sub_10000D620(v15, &qword_1000AAD30, &qword_100085540);
    v8 = v43;
    v3 = v44;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v9, v10, v11, v12, v13);
    }

    if (v16 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v16);
    ++v14;
    if (v7)
    {
      v14 = v16;
      goto LABEL_10;
    }
  }

  v34 = *(v0 + 176);
  v36 = *(v0 + 96);
  v35 = *(v0 + 104);

  v37 = *v36;
  *(v0 + 248) = sub_10000CED0(&qword_1000ABA08, &qword_100086F98);
  sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  ThrowingTaskGroup.makeAsyncIterator()();
  *(v0 + 256) = &_swiftEmptyDictionarySingleton;
  v38 = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v39 = swift_task_alloc();
  *(v0 + 264) = v39;
  *v39 = v0;
  v39[1] = sub_100040AD4;
  v40 = *(v0 + 176);
  v9 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = v0 + 72;
  v10 = 0;
  v11 = 0;

  return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v9, v10, v11, v12, v13);
}

uint64_t sub_100040AD4()
{
  v2 = *(*v1 + 264);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_100040FBC;
  }

  else
  {
    v3 = sub_100040BE4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100040BE4()
{
  v1 = v0[31];
  v2 = v0[19];
  v3 = (*(*(v1 - 8) + 48))(v2, 1, v1);
  v4 = v0[32];
  if (v3 == 1)
  {
    v6 = v0[29];
    v5 = v0[30];
    v7 = v0[28];
    v9 = v0[23];
    v8 = v0[24];
    v48 = v0[18];
    v10 = v0[11];
    (*(v0[21] + 8))(v0[22], v0[20]);
    *v10 = v4;

    v11 = v0[1];

    return v11();
  }

  v13 = v0[28];
  v15 = v0[17];
  v14 = v0[18];
  v16 = v0[16];
  v17 = *(v1 + 48);
  (*(v0[26] + 32))(v13, v2, v0[25]);
  v18 = *(v15 + 32);
  v18(v14, v2 + v17, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[10] = v4;
  v20 = sub_10007B6C4(v13);
  v25 = *(v4 + 16);
  v26 = (v21 & 1) == 0;
  v27 = __OFADD__(v25, v26);
  v28 = v25 + v26;
  if (v27)
  {
    __break(1u);
    goto LABEL_22;
  }

  v29 = v21;
  if (*(v0[32] + 24) >= v28)
  {
    v49 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = v20;
      sub_10007FF68();
      v20 = v34;
    }

    goto LABEL_14;
  }

  v30 = v0[28];
  sub_10007DBB0(v28, isUniquelyReferenced_nonNull_native);
  v31 = v0[10];
  v20 = sub_10007B6C4(v30);
  if ((v29 & 1) == (v32 & 1))
  {
    v49 = v18;
LABEL_14:
    v35 = v0[10];
    v36 = v0[28];
    v37 = v0[25];
    v38 = v0[26];
    v40 = v0[17];
    v39 = v0[18];
    v41 = v0[16];
    if (v29)
    {
      (*(v40 + 40))(v35[7] + *(v40 + 72) * v20, v0[18], v0[16]);
      (*(v38 + 8))(v36, v37);
      goto LABEL_18;
    }

    v35[(v20 >> 6) + 8] |= 1 << v20;
    v42 = v20;
    (*(v38 + 16))(v35[6] + *(v38 + 72) * v20, v36, v37);
    v49(v35[7] + *(v40 + 72) * v42, v39, v41);
    v20 = (*(v38 + 8))(v36, v37);
    v43 = v35[2];
    v27 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (!v27)
    {
      v35[2] = v44;
LABEL_18:
      v0[32] = v35;
      v45 = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
      v46 = swift_task_alloc();
      v0[33] = v46;
      *v46 = v0;
      v46[1] = sub_100040AD4;
      v47 = v0[22];
      v20 = v0[19];
      v23 = v0[20];
      v24 = v0 + 9;
      v21 = 0;
      v22 = 0;

      return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v20, v21, v22, v23, v24);
    }

LABEL_22:
    __break(1u);
    return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v20, v21, v22, v23, v24);
  }

  v33 = v0[25];

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_100040FBC()
{
  v1 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[19];
  v8 = v0[18];
  (*(v0[21] + 8))(v0[22], v0[20]);

  v9 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000410B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = type metadata accessor for UUID();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v6[14] = v10;
  v11 = *(v10 - 8);
  v6[15] = v11;
  v12 = *(v11 + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v13 = *(*(sub_10000CED0(&qword_1000AB8D8, &qword_100086FE0) - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v14 = type metadata accessor for LubyRackoffEncryptionKey();
  v6[24] = v14;
  v15 = *(v14 - 8);
  v6[25] = v15;
  v16 = *(v15 + 64) + 15;
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();

  return _swift_task_switch(sub_10004130C, 0, 0);
}

uint64_t sub_10004130C()
{
  static Task<>.checkCancellation()();
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_cache;
  v0[30] = OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_cache;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  sub_10000D224((v1 + v2), v3);
  v5 = async function pointer to dispatch thunk of AsyncCache.subscript.getter[1];
  v6 = swift_task_alloc();
  v0[31] = v6;
  *v6 = v0;
  v6[1] = sub_100041508;
  v7 = v0[23];
  v8 = v0[4];

  return dispatch thunk of AsyncCache.subscript.getter(v7, v8, v3, v4);
}

uint64_t sub_100041508()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return _swift_task_switch(sub_100041604, 0, 0);
}

uint64_t sub_100041604()
{
  v58 = v0;
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = *(v2 + 48);
  v0[32] = v4;
  v0[33] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_10000D620(v3, &qword_1000AB8D8, &qword_100086FE0);
    v5 = swift_task_alloc();
    v0[34] = v5;
    *v5 = v0;
    v5[1] = sub_100041AB0;
    v6 = v0[22];
    v8 = v0[3];
    v7 = v0[4];

    return sub_1000435B4(v6, v7);
  }

  else
  {
    v10 = v0[20];
    v11 = v0[13];
    v12 = v0[6];
    v13 = v0[7];
    v15 = v0[4];
    v14 = v0[5];
    v56 = *(v2 + 32);
    v56(v0[29], v3, v1);
    sub_1000471F0(&qword_1000AB9F0, type metadata accessor for TagEncryptionKeyController);
    static LoggedObject.logger.getter();
    v54 = *(v13 + 16);
    v54(v11, v15, v12);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[20];
    v21 = v0[14];
    v20 = v0[15];
    v22 = v0[13];
    v24 = v0[6];
    v23 = v0[7];
    if (v18)
    {
      v52 = v0[14];
      v25 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v57 = v50;
      *v25 = 136315138;
      sub_1000471F0(&qword_1000AB0D8, &type metadata accessor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v19;
      v28 = v27;
      (*(v23 + 8))(v22, v24);
      v29 = sub_100035120(v26, v28, &v57);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v16, v17, "Returning cached encryption key for home: %s", v25, 0xCu);
      sub_10000D330(v50);

      (*(v20 + 8))(v48, v52);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
      (*(v20 + 8))(v19, v21);
    }

    v30 = v0[6];
    v31 = v0[4];
    v32 = v0[2];
    v33 = *(sub_10000CED0(&qword_1000ABA08, &qword_100086F98) + 48);
    v54(v32, v31, v30);
    v34 = v0[28];
    v35 = v0[26];
    v36 = v0[27];
    v37 = v0[23];
    v39 = v0[21];
    v38 = v0[22];
    v41 = v0[20];
    v42 = v0[19];
    v43 = v0[18];
    v44 = v0[17];
    v45 = v0[16];
    v46 = v0[13];
    v47 = v0[12];
    v49 = v0[11];
    v51 = v0[10];
    v53 = v0[9];
    v55 = v0[8];
    v56(v32 + v33, v0[29], v0[24]);

    v40 = v0[1];

    return v40();
  }
}

uint64_t sub_100041AB0()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_1000431D0;
  }

  else
  {
    v3 = sub_100041BC4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100041BC4()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  if ((*(v0 + 256))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 280);
    sub_10000D620(v3, &qword_1000AB8D8, &qword_100086FE0);
    static Task<>.checkCancellation()();
    if (v4)
    {
      v6 = *(v0 + 224);
      v5 = *(v0 + 232);
      v8 = *(v0 + 208);
      v7 = *(v0 + 216);
      v9 = *(v0 + 176);
      v10 = *(v0 + 184);
      v12 = *(v0 + 160);
      v11 = *(v0 + 168);
      v13 = *(v0 + 152);
      v33 = *(v0 + 144);
      v34 = *(v0 + 136);
      v35 = *(v0 + 128);
      v36 = *(v0 + 104);
      v37 = *(v0 + 96);
      v38 = *(v0 + 88);
      v39 = *(v0 + 80);
      v40 = *(v0 + 72);
      v41 = *(v0 + 64);

      v14 = *(v0 + 8);

      return v14();
    }

    else
    {
      v26 = *(v0 + 80);
      UUID.init()();
      v27 = swift_task_alloc();
      *(v0 + 312) = v27;
      *v27 = v0;
      v27[1] = sub_100042354;
      v28 = *(v0 + 216);
      v30 = *(v0 + 80);
      v29 = *(v0 + 88);
      v32 = *(v0 + 24);
      v31 = *(v0 + 32);

      return sub_100044108(v29, v28, v31, v30);
    }
  }

  else
  {
    v16 = *(v0 + 224);
    v17 = *(v0 + 200);
    v18 = (*(v0 + 24) + *(v0 + 240));
    v19 = *(v17 + 32);
    *(v0 + 288) = v19;
    *(v0 + 296) = (v17 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v19(v16, v3, v2);
    v20 = v18[3];
    v21 = v18[4];
    sub_10000D224(v18, v20);
    v22 = async function pointer to dispatch thunk of AsyncCache.set(_:key:)[1];
    v23 = swift_task_alloc();
    *(v0 + 304) = v23;
    *v23 = v0;
    v23[1] = sub_100041EB0;
    v24 = *(v0 + 224);
    v25 = *(v0 + 32);

    return dispatch thunk of AsyncCache.set(_:key:)(v24, v25, v20, v21);
  }
}

uint64_t sub_100041EB0()
{
  v1 = *(*v0 + 304);
  v3 = *v0;

  return _swift_task_switch(sub_100041FAC, 0, 0);
}

uint64_t sub_100041FAC()
{
  v50 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 96);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  sub_1000471F0(&qword_1000AB9F0, type metadata accessor for TagEncryptionKeyController);
  static LoggedObject.logger.getter();
  v47 = *(v4 + 16);
  v47(v2, v6, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 152);
  v12 = *(v0 + 112);
  v11 = *(v0 + 120);
  v13 = *(v0 + 96);
  v15 = *(v0 + 48);
  v14 = *(v0 + 56);
  if (v9)
  {
    v45 = *(v0 + 112);
    v16 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v49 = v43;
    *v16 = 136315138;
    sub_1000471F0(&qword_1000AB0D8, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v10;
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = sub_100035120(v17, v19, &v49);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "Reusing existing encryption key for home: %s", v16, 0xCu);
    sub_10000D330(v43);

    (*(v11 + 8))(v41, v45);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
  }

  v21 = *(v0 + 48);
  v22 = *(v0 + 32);
  v23 = *(v0 + 16);
  v24 = *(sub_10000CED0(&qword_1000ABA08, &qword_100086F98) + 48);
  v47(v23, v22, v21);
  v25 = *(v0 + 296);
  v26 = *(v0 + 232);
  v27 = *(v0 + 208);
  v28 = *(v0 + 216);
  v29 = *(v0 + 184);
  v31 = *(v0 + 168);
  v30 = *(v0 + 176);
  v34 = *(v0 + 160);
  v35 = *(v0 + 152);
  v36 = *(v0 + 144);
  v37 = *(v0 + 136);
  v38 = *(v0 + 128);
  v39 = *(v0 + 104);
  v40 = *(v0 + 96);
  v42 = *(v0 + 88);
  v44 = *(v0 + 80);
  v46 = *(v0 + 72);
  v48 = *(v0 + 64);
  (*(v0 + 288))(v23 + v24, *(v0 + 224), *(v0 + 192));

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_100042354()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *v1;
  v2[40] = v0;

  v8 = *(v5 + 8);
  v2[41] = v8;
  v2[42] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  if (v0)
  {
    v9 = sub_100043314;
  }

  else
  {
    v8(v2[11], v2[6]);
    v9 = sub_1000424F0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000424F0()
{
  v1 = v0[40];
  static Task<>.checkCancellation()();
  if (v1)
  {
    (*(v0[25] + 8))(v0[27], v0[24]);
    v3 = v0[28];
    v2 = v0[29];
    v5 = v0[26];
    v4 = v0[27];
    v6 = v0[22];
    v7 = v0[23];
    v9 = v0[20];
    v8 = v0[21];
    v10 = v0[19];
    v17 = v0[18];
    v18 = v0[17];
    v19 = v0[16];
    v20 = v0[13];
    v21 = v0[12];
    v22 = v0[11];
    v23 = v0[10];
    v24 = v0[9];
    v25 = v0[8];

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    v0[43] = v13;
    *v13 = v0;
    v13[1] = sub_1000426D4;
    v14 = v0[21];
    v16 = v0[3];
    v15 = v0[4];

    return sub_1000435B4(v14, v15);
  }
}

uint64_t sub_1000426D4()
{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_100043458;
  }

  else
  {
    v3 = sub_1000427E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000427E8()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  if ((*(v0 + 256))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 144);
    v5 = *(v0 + 40);
    sub_10000D620(v3, &qword_1000AB8D8, &qword_100086FE0);
    sub_1000471F0(&qword_1000AB9F0, type metadata accessor for TagEncryptionKeyController);
    static LoggedObject.logger.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Query failed to return key we just created, using it anyway", v8, 2u);
    }

    v9 = *(v0 + 200);
    v10 = *(v0 + 144);
    v11 = *(v0 + 112);
    v12 = *(v0 + 120);
    v13 = *(v0 + 48);
    v14 = *(v0 + 56);
    v15 = *(v0 + 32);
    v16 = *(v0 + 16);

    (*(v12 + 8))(v10, v11);
    v17 = *(sub_10000CED0(&qword_1000ABA08, &qword_100086F98) + 48);
    (*(v14 + 16))(v16, v15, v13);
    v19 = *(v0 + 224);
    v18 = *(v0 + 232);
    v20 = *(v0 + 208);
    v21 = *(v0 + 184);
    v22 = *(v0 + 176);
    v35 = *(v0 + 168);
    v36 = *(v0 + 160);
    v37 = *(v0 + 152);
    v38 = *(v0 + 144);
    v39 = *(v0 + 136);
    v40 = *(v0 + 128);
    v41 = *(v0 + 104);
    v42 = *(v0 + 96);
    v43 = *(v0 + 88);
    v44 = *(v0 + 80);
    v45 = *(v0 + 72);
    v46 = *(v0 + 64);
    (*(v9 + 32))(v16 + v17, *(v0 + 216), *(v0 + 192));

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v26 = *(v0 + 200);
    v25 = *(v0 + 208);
    v27 = (*(v0 + 24) + *(v0 + 240));
    v28 = *(v26 + 32);
    *(v0 + 360) = v28;
    *(v0 + 368) = (v26 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v28(v25, v3, v2);
    v29 = v27[3];
    v30 = v27[4];
    sub_10000D224(v27, v29);
    v31 = async function pointer to dispatch thunk of AsyncCache.set(_:key:)[1];
    v32 = swift_task_alloc();
    *(v0 + 376) = v32;
    *v32 = v0;
    v32[1] = sub_100042B88;
    v33 = *(v0 + 208);
    v34 = *(v0 + 32);

    return dispatch thunk of AsyncCache.set(_:key:)(v33, v34, v29, v30);
  }
}

uint64_t sub_100042B88()
{
  v1 = *(*v0 + 376);
  v3 = *v0;

  return _swift_task_switch(sub_100042C84, 0, 0);
}

uint64_t sub_100042C84()
{
  v72 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 56);
  v4 = static LubyRackoffEncryptionKey.== infix(_:_:)();
  sub_1000471F0(&qword_1000AB9F0, type metadata accessor for TagEncryptionKeyController);
  v5 = (v3 + 16);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);
  if (v4)
  {
    v9 = *(v0 + 136);
    v10 = *(v0 + 72);
    v11 = *(v0 + 40);
    static LoggedObject.logger.getter();
    v12 = *v5;
    (*v5)(v10, v8, v7);
    v13 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v13, v57);
    v59 = *(v0 + 328);
    v61 = *(v0 + 336);
    v15 = *(v0 + 216);
    v16 = *(v0 + 192);
    v17 = *(v0 + 200);
    v18 = *(v0 + 112);
    v19 = *(v0 + 120);
    v64 = v18;
    v66 = *(v0 + 136);
    v20 = *(v0 + 72);
    v21 = *(v0 + 48);
    if (v14)
    {
      v69 = v12;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v71 = v23;
      *v22 = 141558275;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      sub_1000471F0(&qword_1000AB0D8, &type metadata accessor for UUID);
      v53 = v16;
      v55 = v15;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v59(v20, v21);
      v27 = sub_100035120(v24, v26, &v71);

      *(v22 + 14) = v27;
      v28 = "Using newly-created encryption key for home: %{private,mask.hash}s";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v13, v57, v28, v22, 0x16u);
      sub_10000D330(v23);

      v12 = v69;

      (*(v19 + 8))(v66, v64);
      (*(v17 + 8))(v55, v53);
      goto LABEL_8;
    }
  }

  else
  {
    v29 = *(v0 + 128);
    v30 = *(v0 + 64);
    v31 = *(v0 + 40);
    static LoggedObject.logger.getter();
    v12 = *v5;
    (*v5)(v30, v8, v7);
    v13 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    v32 = os_log_type_enabled(v13, v57);
    v59 = *(v0 + 328);
    v62 = *(v0 + 336);
    v15 = *(v0 + 216);
    v16 = *(v0 + 192);
    v17 = *(v0 + 200);
    v19 = *(v0 + 120);
    v33 = *(v0 + 112);
    v64 = v33;
    v66 = *(v0 + 128);
    v20 = *(v0 + 64);
    v21 = *(v0 + 48);
    if (v32)
    {
      v69 = v12;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v71 = v23;
      *v22 = 141558275;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      sub_1000471F0(&qword_1000AB0D8, &type metadata accessor for UUID);
      v53 = v16;
      v55 = v15;
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      v59(v20, v21);
      v37 = sub_100035120(v34, v36, &v71);

      *(v22 + 14) = v37;
      v28 = "Using encryption key just created by another device for home: %{private,mask.hash}s";
      goto LABEL_6;
    }
  }

  v59(v20, v21);
  (*(v19 + 8))(v66, v64);
  (*(v17 + 8))(v15, v16);
LABEL_8:
  v38 = *(v0 + 48);
  v39 = *(v0 + 32);
  v40 = *(v0 + 16);
  v41 = *(sub_10000CED0(&qword_1000ABA08, &qword_100086F98) + 48);
  v12(v40, v39, v38);
  v42 = *(v0 + 368);
  v44 = *(v0 + 224);
  v43 = *(v0 + 232);
  v45 = *(v0 + 216);
  v46 = *(v0 + 184);
  v48 = *(v0 + 168);
  v47 = *(v0 + 176);
  v51 = *(v0 + 160);
  v52 = *(v0 + 152);
  v54 = *(v0 + 144);
  v56 = *(v0 + 136);
  v58 = *(v0 + 128);
  v60 = *(v0 + 104);
  v63 = *(v0 + 96);
  v65 = *(v0 + 88);
  v67 = *(v0 + 80);
  v68 = *(v0 + 72);
  v70 = *(v0 + 64);
  (*(v0 + 360))(v40 + v41, *(v0 + 208), *(v0 + 192));

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_1000431D0()
{
  v21 = v0[35];
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[22];
  v6 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v10 = v0[18];
  v9 = v0[19];
  v13 = v0[17];
  v14 = v0[16];
  v15 = v0[13];
  v16 = v0[12];
  v17 = v0[11];
  v18 = v0[10];
  v19 = v0[9];
  v20 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100043314()
{
  v21 = v0[40];
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[22];
  v6 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v10 = v0[18];
  v9 = v0[19];
  v13 = v0[17];
  v14 = v0[16];
  v15 = v0[13];
  v16 = v0[12];
  v17 = v0[11];
  v18 = v0[10];
  v19 = v0[9];
  v20 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100043458()
{
  (*(v0[25] + 8))(v0[27], v0[24]);
  v21 = v0[44];
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[22];
  v6 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v10 = v0[18];
  v9 = v0[19];
  v13 = v0[17];
  v14 = v0[16];
  v15 = v0[13];
  v16 = v0[12];
  v17 = v0[11];
  v18 = v0[10];
  v19 = v0[9];
  v20 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000435B4(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v3[20] = *v2;
  v4 = type metadata accessor for Logger();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  v7 = type metadata accessor for EncryptionKeyRecord.KeyType();
  v3[24] = v7;
  v8 = *(v7 - 8);
  v3[25] = v8;
  v9 = *(v8 + 64) + 15;
  v3[26] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v3[27] = v10;
  v11 = *(v10 - 8);
  v3[28] = v11;
  v12 = *(v11 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v13 = type metadata accessor for DatabaseConfiguration();
  v3[32] = v13;
  v14 = *(v13 - 8);
  v3[33] = v14;
  v15 = *(v14 + 64) + 15;
  v3[34] = swift_task_alloc();
  v16 = type metadata accessor for EncryptionKeyQuery();
  v3[35] = v16;
  v17 = *(v16 - 8);
  v3[36] = v17;
  v18 = *(v17 + 64) + 15;
  v3[37] = swift_task_alloc();

  return _swift_task_switch(sub_100043828, 0, 0);
}

uint64_t sub_100043828()
{
  v1 = v0[37];
  v2 = v0[31];
  v3 = v0[30];
  v4 = v0[27];
  v5 = v0[28];
  v6 = v0[18];
  v7 = v0[19];
  (*(v0[33] + 16))(v0[34], v7 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_database, v0[32]);
  v8 = *(v5 + 16);
  v0[38] = v8;
  v0[39] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v6, v4);
  v9 = *(v7 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_qualityOfService);
  v10 = *(v7 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_qualityOfService + 8);
  UUID.init()();
  EncryptionKeyQuery.init(database:homeIdentifier:queryIdentifier:resultsLimit:qualityOfService:)();
  v11 = async function pointer to EncryptionKeyQuery.fetchKeys()[1];
  v12 = swift_task_alloc();
  v0[40] = v12;
  *v12 = v0;
  v12[1] = sub_100043974;
  v13 = v0[37];

  return EncryptionKeyQuery.fetchKeys()();
}

uint64_t sub_100043974(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 320);
  v7 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v1;

  if (v1)
  {
    v5 = sub_100044030;
  }

  else
  {
    v5 = sub_100043A88;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100043A88()
{
  v55 = v0;
  v1 = v0[41];
  if (*(v1 + 16))
  {
    v3 = v0[25];
    v2 = v0[26];
    v4 = v0[24];
    sub_10000D2CC(v1 + 32, (v0 + 2));

    sub_10000D224(v0 + 2, v0[5]);
    swift_getDynamicType();
    v5 = v0[6];
    dispatch thunk of static EncryptionKey.recordKeyType.getter();
    if ((*(v3 + 88))(v2, v4) == enum case for EncryptionKeyRecord.KeyType.tagsLubyRackoff(_:))
    {
      v6 = v0[17];
      (*(v0[36] + 8))(v0[37], v0[35]);
      sub_1000111BC(v0 + 1, (v0 + 12));
      sub_10000CED0(&qword_1000ABA28, &qword_100086FF0);
      v7 = type metadata accessor for LubyRackoffEncryptionKey();
      v8 = swift_dynamicCast();
      (*(*(v7 - 8) + 56))(v6, v8 ^ 1u, 1, v7);
      goto LABEL_10;
    }

    v10 = v0[38];
    v9 = v0[39];
    v11 = v0[29];
    v12 = v0[27];
    v13 = v0[23];
    v14 = v0[20];
    v15 = v0[18];
    sub_1000471F0(&qword_1000AB9F0, type metadata accessor for TagEncryptionKeyController);
    static LoggedObject.logger.getter();
    v10(v11, v15, v12);
    sub_10000D2CC((v0 + 2), (v0 + 7));
    v16 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v16, v52);
    v19 = v0[36];
    v18 = v0[37];
    v20 = v0[35];
    v22 = v0[28];
    v21 = v0[29];
    v23 = v0[27];
    v25 = v0[22];
    v24 = v0[23];
    v53 = v0[21];
    if (v17)
    {
      v51 = v0[23];
      v26 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v26 = 141558531;
      *(v26 + 4) = 1752392040;
      *(v26 + 12) = 2081;
      sub_1000471F0(&qword_1000AB0D8, &type metadata accessor for UUID);
      v49 = v20;
      v50 = v18;
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      (*(v22 + 8))(v21, v23);
      v30 = sub_100035120(v27, v29, &v54);

      *(v26 + 14) = v30;
      *(v26 + 22) = 2080;
      v31 = v0[10];
      sub_10000D224(v0 + 7, v31);
      v32 = *(v31 - 8);
      v33 = *(v32 + 64) + 15;
      swift_task_alloc();
      (*(v32 + 16))();
      v34 = String.init<A>(describing:)();
      v36 = v35;

      sub_10000D330(v0 + 7);
      v37 = sub_100035120(v34, v36, &v54);

      *(v26 + 24) = v37;
      _os_log_impl(&_mh_execute_header, v16, v52, "Encryption key for home %{private,mask.hash}s is unknown type: %s", v26, 0x20u);
      swift_arrayDestroy();

      (*(v25 + 8))(v51, v53);
      sub_10000D330(v0 + 2);
      (*(v19 + 8))(v50, v49);
    }

    else
    {

      (*(v22 + 8))(v21, v23);
      (*(v25 + 8))(v24, v53);
      sub_10000D330(v0 + 2);
      (*(v19 + 8))(v18, v20);
      sub_10000D330(v0 + 7);
    }

    (*(v0[25] + 8))(v0[26], v0[24]);
  }

  else
  {
    (*(v0[36] + 8))(v0[37], v0[35]);
  }

  v38 = v0[17];
  v39 = type metadata accessor for LubyRackoffEncryptionKey();
  (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
LABEL_10:
  v40 = v0[37];
  v41 = v0[34];
  v43 = v0[30];
  v42 = v0[31];
  v44 = v0[29];
  v45 = v0[26];
  v46 = v0[23];

  v47 = v0[1];

  return v47();
}

uint64_t sub_100044030()
{
  v1 = v0[34];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v5 = v0[26];
  v6 = v0[23];
  (*(v0[36] + 8))(v0[37], v0[35]);

  v7 = v0[1];
  v8 = v0[42];

  return v7();
}

uint64_t sub_100044108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *v4;
  return _swift_task_switch(sub_100044158, 0, 0);
}

uint64_t sub_100044158()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v8 = *(v0 + 32);
  LubyRackoffEncryptionKey.init()();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v8;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v5 = async function pointer to DatabaseConfiguration.configure<A>(_:)[1];
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_100044260;

  return DatabaseConfiguration.configure<A>(_:)(v6, &unk_100086F78, v4, &type metadata for () + 8);
}

uint64_t sub_100044260()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_10004441C;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_10004437C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10004437C()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 16))(v2, v1, v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_10004441C()
{
  v1 = v0[8];
  v2 = v0[3];

  v3 = type metadata accessor for LubyRackoffEncryptionKey();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

uint64_t sub_1000444BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[69] = a7;
  v7[68] = a6;
  v7[67] = a5;
  v7[66] = a4;
  v7[65] = a3;
  v7[64] = a2;
  v8 = sub_10000CED0(&qword_1000AB9E8, &unk_100086F80);
  v7[70] = v8;
  v9 = *(v8 - 8);
  v7[71] = v9;
  v10 = *(v9 + 64) + 15;
  v7[72] = swift_task_alloc();
  v11 = sub_10000CED0(&qword_1000AB800, &qword_100086C38);
  v7[73] = v11;
  v12 = *(v11 - 8);
  v7[74] = v12;
  v13 = *(v12 + 64) + 15;
  v7[75] = swift_task_alloc();
  v14 = *(*(type metadata accessor for Date() - 8) + 64) + 15;
  v7[76] = swift_task_alloc();
  v15 = type metadata accessor for EncryptionKeyRecord();
  v7[77] = v15;
  v16 = *(v15 - 8);
  v7[78] = v16;
  v17 = *(v16 + 64) + 15;
  v7[79] = swift_task_alloc();
  v18 = type metadata accessor for Configuration.TargetCloudKitZone();
  v7[80] = v18;
  v19 = *(v18 - 8);
  v7[81] = v19;
  v20 = *(v19 + 64) + 15;
  v7[82] = swift_task_alloc();
  v21 = type metadata accessor for UUID();
  v7[83] = v21;
  v22 = *(v21 - 8);
  v7[84] = v22;
  v23 = *(v22 + 64) + 15;
  v7[85] = swift_task_alloc();
  v7[86] = swift_task_alloc();
  v7[87] = swift_task_alloc();
  v7[88] = swift_task_alloc();
  v7[89] = swift_task_alloc();
  v7[90] = swift_task_alloc();
  v7[91] = swift_task_alloc();
  v24 = type metadata accessor for Logger();
  v7[92] = v24;
  v25 = *(v24 - 8);
  v7[93] = v25;
  v26 = *(v25 + 64) + 15;
  v7[94] = swift_task_alloc();
  v7[95] = swift_task_alloc();
  v7[96] = swift_task_alloc();
  v7[97] = swift_task_alloc();

  return _swift_task_switch(sub_10004480C, 0, 0);
}

uint64_t sub_10004480C()
{
  v42 = v0;
  v1 = v0[97];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[84];
  v5 = v0[83];
  v6 = v0[69];
  v7 = v0[66];
  v8 = v0[65];
  v0[98] = sub_1000471F0(&qword_1000AB9F0, type metadata accessor for TagEncryptionKeyController);
  static LoggedObject.logger.getter();
  v9 = *(v4 + 16);
  v0[99] = v9;
  v0[100] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v8, v5);
  v9(v3, v7, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[97];
  v14 = v0[93];
  v15 = v0[92];
  v16 = v0[91];
  v17 = v0[90];
  v18 = v0[84];
  v19 = v0[83];
  if (v12)
  {
    v40 = v0[92];
    v20 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v20 = 136315394;
    sub_1000471F0(&qword_1000AB0D8, &type metadata accessor for UUID);
    log = v10;
    v39 = v14;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v11;
    v23 = v22;
    v24 = *(v18 + 8);
    v24(v16, v19);
    v25 = sub_100035120(v21, v23, &v41);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v24(v17, v19);
    v29 = sub_100035120(v26, v28, &v41);

    *(v20 + 14) = v29;
    _os_log_impl(&_mh_execute_header, log, v37, "Saving encryption key for home %s: %s", v20, 0x16u);
    swift_arrayDestroy();

    (*(v39 + 8))(v13, v40);
  }

  else
  {

    v30 = *(v18 + 8);
    v30(v17, v19);
    v30(v16, v19);
    (*(v14 + 8))(v13, v15);
  }

  (*(v0[81] + 104))(v0[82], enum case for Configuration.TargetCloudKitZone.default(_:), v0[80]);
  v31 = async function pointer to static SharedZoneLookup.zoneID(for:homeIdentifier:target:BOOL:)[1];
  v32 = swift_task_alloc();
  v0[101] = v32;
  *v32 = v0;
  v32[1] = sub_100044BCC;
  v33 = v0[82];
  v34 = v0[65];
  v35 = v0[64];

  return static SharedZoneLookup.zoneID(for:homeIdentifier:target:BOOL:)(v35, v34, v33, 1);
}

uint64_t sub_100044BCC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 808);
  v6 = *v2;
  v4[102] = a1;
  v4[103] = v1;

  (*(v3[81] + 8))(v3[82], v3[80]);
  if (v1)
  {
    v7 = sub_100045560;
  }

  else
  {
    v7 = sub_100044D40;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100044D40()
{
  v1 = v0;
  v2.super.isa = v0[102];
  v3 = v0[100];
  v20 = v0 + 2;
  v21 = v0 + 55;
  v4 = v0[99];
  v5 = v0[89];
  v6 = v0[83];
  v7 = v0[79];
  v8 = v0[78];
  v9 = v0[77];
  v10 = v0[76];
  v23 = v0[75];
  v11 = v0[74];
  v22 = v1[73];
  v12 = v1[67];
  v24 = v1[64];
  v4(v5, v1[66], v6);
  v13 = type metadata accessor for LubyRackoffEncryptionKey();
  v1[53] = v13;
  v1[54] = sub_1000471F0(&qword_1000AB9F8, &type metadata accessor for LubyRackoffEncryptionKey);
  v14 = sub_10000CF2C(v1 + 50);
  (*(*(v13 - 8) + 16))(v14, v12, v13);
  static Date.now.getter();
  EncryptionKeyRecord.init(identifier:key:effectiveDate:)();
  isa = EncryptionKeyRecord.toCKRecord(zoneID:)(v2).super.isa;
  v1[104] = isa;
  (*(v8 + 8))(v7, v9);
  v1[2] = v1;
  v1[7] = v21;
  v1[3] = sub_100045050;
  swift_continuation_init();
  v1[33] = v22;
  v16 = sub_10000CF2C(v1 + 30);
  v1[105] = sub_10000D544(0, &qword_1000AB808, CKRecord_ptr);
  v1[106] = sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  CheckedContinuation.init(continuation:function:)();
  v17 = *(v11 + 32);
  v1[107] = v17;
  v1[108] = (v11 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v17(v16, v23, v22);
  v1[26] = _NSConcreteStackBlock;
  v1[27] = 1107296256;
  v1[28] = sub_100034C2C;
  v1[29] = &unk_1000A2CA8;
  [v24 saveRecord:isa completionHandler:?];
  v18 = *(v11 + 8);
  v1[109] = v18;
  v1[110] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v16, v22);

  return _swift_continuation_await(v20);
}

uint64_t sub_100045050()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 888) = v2;
  if (v2)
  {
    v3 = sub_100045E9C;
  }

  else
  {
    v3 = sub_100045160;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100045160()
{
  v57 = v0;

  v1 = *(v0 + 800);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  v4 = *(v0 + 760);
  v5 = *(v0 + 696);
  v6 = *(v0 + 688);
  v7 = *(v0 + 664);
  v8 = *(v0 + 528);
  v9 = *(v0 + 520);
  v10 = *(v0 + 552);
  static LoggedObject.logger.getter();
  v2(v5, v9, v7);
  v2(v6, v8, v7);
  v11 = Logger.logObject.getter();
  v54 = static os_log_type_t.info.getter();
  v12 = os_log_type_enabled(v11, v54);
  v13 = *(v0 + 816);
  v14 = *(v0 + 760);
  v15 = *(v0 + 744);
  v16 = *(v0 + 736);
  v17 = *(v0 + 696);
  v18 = *(v0 + 688);
  v19 = *(v0 + 672);
  v20 = *(v0 + 664);
  if (v12)
  {
    v50 = *(v0 + 832);
    v52 = *(v0 + 736);
    v21 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v21 = 141558531;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    sub_1000471F0(&qword_1000AB0D8, &type metadata accessor for UUID);
    log = v11;
    v47 = v15;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v13;
    v24 = v23;
    v25 = *(v19 + 8);
    v25(v17, v20);
    v26 = sub_100035120(v22, v24, &v56);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2082;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v25(v18, v20);
    v30 = sub_100035120(v27, v29, &v56);

    *(v21 + 24) = v30;
    _os_log_impl(&_mh_execute_header, log, v54, "Successfully saved encryption key for home %{private,mask.hash}s: %{public}s", v21, 0x20u);
    swift_arrayDestroy();

    (*(v47 + 8))(v14, v52);
  }

  else
  {

    v31 = *(v19 + 8);
    v31(v18, v20);
    v31(v17, v20);
    (*(v15 + 8))(v14, v16);
  }

  v32 = *(v0 + 776);
  v33 = *(v0 + 768);
  v34 = *(v0 + 760);
  v35 = *(v0 + 752);
  v36 = *(v0 + 728);
  v37 = *(v0 + 720);
  v38 = *(v0 + 712);
  v39 = *(v0 + 704);
  v40 = *(v0 + 696);
  v41 = *(v0 + 688);
  v46 = *(v0 + 680);
  v48 = *(v0 + 656);
  v49 = *(v0 + 632);
  v51 = *(v0 + 608);
  v53 = *(v0 + 600);
  v55 = *(v0 + 576);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_100045560()
{
  v19 = v0[103];
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[95];
  v4 = v0[94];
  v5 = v0[91];
  v6 = v0[90];
  v7 = v0[89];
  v8 = v0[88];
  v9 = v0[87];
  v10 = v0[86];
  v13 = v0[85];
  v14 = v0[82];
  v15 = v0[79];
  v16 = v0[76];
  v17 = v0[75];
  v18 = v0[72];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000456AC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 912) = v2;
  if (v2)
  {
    v3 = sub_100046704;
  }

  else
  {
    v3 = sub_1000457BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000457BC()
{
  v1 = *(v0 + 904);
  v12 = *(v0 + 872);
  v13 = *(v0 + 880);
  v8 = *(v0 + 856);
  v9 = *(v0 + 864);
  v2 = *(v0 + 848);
  v3 = *(v0 + 840);
  v4 = *(v0 + 600);
  v5 = *(v0 + 584);
  v10 = *(v0 + 512);
  v11 = *(v0 + 832);

  *(v0 + 144) = v0;
  *(v0 + 184) = v0 + 504;
  *(v0 + 152) = sub_10004597C;
  swift_continuation_init();
  *(v0 + 392) = v5;
  v6 = sub_10000CF2C((v0 + 368));
  CheckedContinuation.init(continuation:function:)();
  v8(v6, v4, v5);
  *(v0 + 336) = _NSConcreteStackBlock;
  *(v0 + 344) = 1107296256;
  *(v0 + 352) = sub_100034C2C;
  *(v0 + 360) = &unk_1000A2CF8;
  [v10 saveRecord:v11 completionHandler:v0 + 336];
  v12(v6, v5);

  return _swift_continuation_await(v0 + 144);
}

uint64_t sub_10004597C()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 920) = v2;
  if (v2)
  {
    v3 = sub_100046AFC;
  }

  else
  {
    v3 = sub_100045A8C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100045A8C()
{
  v58 = v0;

  v1 = *(v0 + 448);

  v2 = *(v0 + 800);
  v3 = *(v0 + 792);
  v4 = *(v0 + 784);
  v5 = *(v0 + 760);
  v6 = *(v0 + 696);
  v7 = *(v0 + 688);
  v8 = *(v0 + 664);
  v9 = *(v0 + 528);
  v10 = *(v0 + 520);
  v11 = *(v0 + 552);
  static LoggedObject.logger.getter();
  v3(v6, v10, v8);
  v3(v7, v9, v8);
  v12 = Logger.logObject.getter();
  v55 = static os_log_type_t.info.getter();
  v13 = os_log_type_enabled(v12, v55);
  v14 = *(v0 + 816);
  v15 = *(v0 + 760);
  v16 = *(v0 + 744);
  v17 = *(v0 + 736);
  v18 = *(v0 + 696);
  v19 = *(v0 + 688);
  v20 = *(v0 + 672);
  v21 = *(v0 + 664);
  if (v13)
  {
    v51 = *(v0 + 832);
    v53 = *(v0 + 736);
    v22 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v22 = 141558531;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    sub_1000471F0(&qword_1000AB0D8, &type metadata accessor for UUID);
    log = v12;
    v48 = v16;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v14;
    v25 = v24;
    v26 = *(v20 + 8);
    v26(v18, v21);
    v27 = sub_100035120(v23, v25, &v57);

    *(v22 + 14) = v27;
    *(v22 + 22) = 2082;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v26(v19, v21);
    v31 = sub_100035120(v28, v30, &v57);

    *(v22 + 24) = v31;
    _os_log_impl(&_mh_execute_header, log, v55, "Successfully saved encryption key for home %{private,mask.hash}s: %{public}s", v22, 0x20u);
    swift_arrayDestroy();

    (*(v48 + 8))(v15, v53);
  }

  else
  {

    v32 = *(v20 + 8);
    v32(v19, v21);
    v32(v18, v21);
    (*(v16 + 8))(v15, v17);
  }

  v33 = *(v0 + 776);
  v34 = *(v0 + 768);
  v35 = *(v0 + 760);
  v36 = *(v0 + 752);
  v37 = *(v0 + 728);
  v38 = *(v0 + 720);
  v39 = *(v0 + 712);
  v40 = *(v0 + 704);
  v41 = *(v0 + 696);
  v42 = *(v0 + 688);
  v47 = *(v0 + 680);
  v49 = *(v0 + 656);
  v50 = *(v0 + 632);
  v52 = *(v0 + 608);
  v54 = *(v0 + 600);
  v56 = *(v0 + 576);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_100045E9C()
{
  v89 = v0;
  v1 = v0[111];
  v2 = v0[106];
  swift_willThrow();
  v0[56] = v1;
  swift_errorRetain();
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v3 = v0[68];
    v4 = v0[57];
    v0[112] = v4;
    if ((*(v3 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_preventZoneCreation) & 1) == 0)
    {
      v0[58] = v4;
      sub_1000471F0(&qword_1000AAEA8, type metadata accessor for CKError);
      _BridgedStoredNSError.code.getter();
      if (v0[59] == 28 || (v0[60] = v4, _BridgedStoredNSError.code.getter(), v0[61] == 26))
      {
        v44 = v0[111];
        v45 = v0[100];
        v46 = v0[99];
        v47 = v0[98];
        v48 = v0[94];
        v49 = v0[85];
        v50 = v0[83];
        v51 = v0[69];
        v52 = v0[65];

        static LoggedObject.logger.getter();
        v46(v49, v52, v50);
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.info.getter();
        v55 = os_log_type_enabled(v53, v54);
        v56 = v0[94];
        v57 = v0[93];
        v58 = v0[92];
        v59 = v0[85];
        v60 = v0[84];
        v61 = v0[83];
        if (v55)
        {
          v86 = v0[92];
          v62 = swift_slowAlloc();
          v84 = v54;
          v63 = swift_slowAlloc();
          v88[0] = v63;
          *v62 = 141558275;
          *(v62 + 4) = 1752392040;
          *(v62 + 12) = 2081;
          sub_1000471F0(&qword_1000AB0D8, &type metadata accessor for UUID);
          v64 = dispatch thunk of CustomStringConvertible.description.getter();
          v81 = v56;
          v66 = v65;
          (*(v60 + 8))(v59, v61);
          v67 = sub_100035120(v64, v66, v88);

          *(v62 + 14) = v67;
          _os_log_impl(&_mh_execute_header, v53, v84, "Zone does not exist for home %{private,mask.hash}s, will create", v62, 0x16u);
          sub_10000D330(v63);

          (*(v57 + 8))(v81, v86);
        }

        else
        {

          (*(v60 + 8))(v59, v61);
          (*(v57 + 8))(v56, v58);
        }

        v68 = v0[72];
        v69 = v0[71];
        v70 = v0[70];
        v85 = v0[106];
        v87 = v0[64];
        v71 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v0[102]];
        v0[113] = v71;
        v0[10] = v0;
        v0[15] = v0 + 62;
        v0[11] = sub_1000456AC;
        swift_continuation_init();
        v0[41] = v70;
        v72 = sub_10000CF2C(v0 + 38);
        sub_10000D544(0, &qword_1000ABA00, CKRecordZone_ptr);
        CheckedContinuation.init(continuation:function:)();
        (*(v69 + 32))(v72, v68, v70);
        v0[34] = _NSConcreteStackBlock;
        v0[35] = 1107296256;
        v0[36] = sub_100046EEC;
        v0[37] = &unk_1000A2CD0;
        [v87 saveRecordZone:v71 completionHandler:v0 + 34];
        (*(v69 + 8))(v72, v70);

        return _swift_continuation_await(v0 + 10);
      }
    }
  }

  v5 = v0[111];
  v6 = v0[100];
  v7 = v0[99];
  v8 = v0[98];
  v9 = v0[96];
  v10 = v0[88];
  v11 = v0[83];
  v12 = v0[69];
  v13 = v0[65];
  v14 = v0[56];

  swift_errorRetain();

  static LoggedObject.logger.getter();
  v7(v10, v13, v11);
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[96];
  v19 = v0[93];
  v20 = v0[92];
  v21 = v0[88];
  v22 = v0[84];
  v23 = v0[83];
  if (v17)
  {
    v82 = v0[92];
    v24 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v88[0] = v79;
    *v24 = 141558531;
    *(v24 + 4) = 1752392040;
    *(v24 + 12) = 2081;
    sub_1000471F0(&qword_1000AB0D8, &type metadata accessor for UUID);
    v77 = v18;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v22 + 8))(v21, v23);
    v28 = sub_100035120(v25, v27, v88);

    *(v24 + 14) = v28;
    *(v24 + 22) = 2114;
    swift_errorRetain();
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 24) = v29;
    *v75 = v29;
    _os_log_impl(&_mh_execute_header, v15, v16, "Failed to save encryption key for home %{private,mask.hash}s: %{public}@", v24, 0x20u);
    sub_10000D620(v75, &unk_1000AB7D0, &qword_100085510);

    sub_10000D330(v79);

    (*(v19 + 8))(v77, v82);
  }

  else
  {

    (*(v22 + 8))(v21, v23);
    (*(v19 + 8))(v18, v20);
  }

  v30 = v0[104];
  v31 = v0[102];
  swift_willThrow();

  v32 = v0[97];
  v33 = v0[96];
  v34 = v0[95];
  v35 = v0[94];
  v36 = v0[91];
  v37 = v0[90];
  v38 = v0[89];
  v39 = v0[88];
  v40 = v0[87];
  v41 = v0[86];
  v73 = v0[85];
  v74 = v0[82];
  v76 = v0[79];
  v78 = v0[76];
  v80 = v0[75];
  v83 = v0[72];

  v42 = v0[1];

  return v42();
}

uint64_t sub_100046704()
{
  v54 = v0;
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[112];
  swift_willThrow();

  v4 = v0[114];
  v5 = v0[100];
  v6 = v0[99];
  v7 = v0[98];
  v8 = v0[96];
  v9 = v0[88];
  v10 = v0[83];
  v11 = v0[69];
  v12 = v0[65];
  v13 = v0[56];

  swift_errorRetain();

  static LoggedObject.logger.getter();
  v6(v9, v12, v10);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[96];
  v18 = v0[93];
  v19 = v0[92];
  v20 = v0[88];
  v21 = v0[84];
  v22 = v0[83];
  if (v16)
  {
    v51 = v0[92];
    v23 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v53 = v49;
    *v23 = 141558531;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2081;
    sub_1000471F0(&qword_1000AB0D8, &type metadata accessor for UUID);
    v47 = v17;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v21 + 8))(v20, v22);
    v27 = sub_100035120(v24, v26, &v53);

    *(v23 + 14) = v27;
    *(v23 + 22) = 2114;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 24) = v28;
    *v45 = v28;
    _os_log_impl(&_mh_execute_header, v14, v15, "Failed to save encryption key for home %{private,mask.hash}s: %{public}@", v23, 0x20u);
    sub_10000D620(v45, &unk_1000AB7D0, &qword_100085510);

    sub_10000D330(v49);

    (*(v18 + 8))(v47, v51);
  }

  else
  {

    (*(v21 + 8))(v20, v22);
    (*(v18 + 8))(v17, v19);
  }

  v29 = v0[104];
  v30 = v0[102];
  swift_willThrow();

  v31 = v0[97];
  v32 = v0[96];
  v33 = v0[95];
  v34 = v0[94];
  v35 = v0[91];
  v36 = v0[90];
  v37 = v0[89];
  v38 = v0[88];
  v39 = v0[87];
  v40 = v0[86];
  v43 = v0[85];
  v44 = v0[82];
  v46 = v0[79];
  v48 = v0[76];
  v50 = v0[75];
  v52 = v0[72];

  v41 = v0[1];

  return v41();
}

uint64_t sub_100046AFC()
{
  v53 = v0;
  v1 = v0[115];
  v2 = v0[112];
  swift_willThrow();

  v3 = v0[115];
  v4 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[96];
  v8 = v0[88];
  v9 = v0[83];
  v10 = v0[69];
  v11 = v0[65];
  v12 = v0[56];

  swift_errorRetain();

  static LoggedObject.logger.getter();
  v5(v8, v11, v9);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[96];
  v17 = v0[93];
  v18 = v0[92];
  v19 = v0[88];
  v20 = v0[84];
  v21 = v0[83];
  if (v15)
  {
    v50 = v0[92];
    v22 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v52 = v48;
    *v22 = 141558531;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    sub_1000471F0(&qword_1000AB0D8, &type metadata accessor for UUID);
    v46 = v16;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v20 + 8))(v19, v21);
    v26 = sub_100035120(v23, v25, &v52);

    *(v22 + 14) = v26;
    *(v22 + 22) = 2114;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 24) = v27;
    *v44 = v27;
    _os_log_impl(&_mh_execute_header, v13, v14, "Failed to save encryption key for home %{private,mask.hash}s: %{public}@", v22, 0x20u);
    sub_10000D620(v44, &unk_1000AB7D0, &qword_100085510);

    sub_10000D330(v48);

    (*(v17 + 8))(v46, v50);
  }

  else
  {

    (*(v20 + 8))(v19, v21);
    (*(v17 + 8))(v16, v18);
  }

  v28 = v0[104];
  v29 = v0[102];
  swift_willThrow();

  v30 = v0[97];
  v31 = v0[96];
  v32 = v0[95];
  v33 = v0[94];
  v34 = v0[91];
  v35 = v0[90];
  v36 = v0[89];
  v37 = v0[88];
  v38 = v0[87];
  v39 = v0[86];
  v42 = v0[85];
  v43 = v0[82];
  v45 = v0[79];
  v47 = v0[76];
  v49 = v0[75];
  v51 = v0[72];

  v40 = v0[1];

  return v40();
}

void sub_100046EEC(uint64_t a1, void *a2, void *a3)
{
  sub_10000D224((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_10000CED0(&qword_1000AB9E8, &unk_100086F80);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_10000CED0(&qword_1000AB9E8, &unk_100086F80);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100046F9C()
{
  result = static EncryptionKeyQuery.logCategory.getter();
  qword_1000AC460 = result;
  *algn_1000AC468 = v1;
  return result;
}

uint64_t sub_100046FC0()
{
  if (qword_1000AAA50 != -1)
  {
    swift_once();
  }

  v0 = qword_1000AC460;

  return v0;
}

uint64_t sub_100047028(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10001DBDC;

  return sub_1000444BC(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_10004712C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10001DBDC;

  return sub_100040430(a1, a2, v6, v7, v8);
}

uint64_t sub_1000471F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100047238()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100047310(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000D130;

  return sub_1000410B0(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_100047450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for Logger();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v8 = type metadata accessor for EventWriterScope();
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_10004757C, 0, 0);
}

uint64_t sub_10004757C()
{
  v1 = *(v0 + 40);
  (*(*(v0 + 96) + 104))(*(v0 + 104), enum case for EventWriterScope.owned(_:), *(v0 + 88));
  if (v1 < 1)
  {
    v18 = *(v0 + 40);
    v19 = type metadata accessor for HomeKitEventsError();
    sub_100047D4C(&qword_1000ABA30, &type metadata accessor for HomeKitEventsError);
    swift_allocError();
    v21 = v20;
    _StringGuts.grow(_:)(35);

    *(v0 + 16) = v18;
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    *v21 = 0xD000000000000021;
    v21[1] = 0x80000001000895C0;
    (*(*(v19 - 8) + 104))(v21, enum case for HomeKitEventsError.unexpected(_:), v19);
    swift_willThrow();
    v23 = *(v0 + 80);
    v24 = *(v0 + 72);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    v2 = *(v0 + 80);
    *(v0 + 112) = type metadata accessor for XPCServer();
    *(v0 + 120) = sub_100047D4C(&qword_1000AAFD8, type metadata accessor for XPCServer);
    static LoggedObject.logger.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 40);
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v3, v4, "Creating %ld fake event(s)", v6, 0xCu);
    }

    v7 = *(v0 + 80);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    v10 = *(v0 + 40);
    v26 = *(v0 + 24);

    v11 = *(v9 + 8);
    *(v0 + 128) = v11;
    *(v0 + 136) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v8);
    v12 = swift_task_alloc();
    *(v12 + 16) = v26;
    v13 = sub_1000366FC(sub_100047D94, v12, 0, v10);
    *(v0 + 144) = v13;

    v14 = swift_task_alloc();
    *(v0 + 152) = v14;
    *v14 = v0;
    v14[1] = sub_10004793C;
    v15 = *(v0 + 104);
    v16 = *(v0 + 48);

    return sub_10002869C(v13, v15);
  }
}

uint64_t sub_10004793C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  v2[20] = v0;

  v5 = v2[18];

  if (v0)
  {
    v2[21] = v0;
    v6 = sub_100047B10;
  }

  else
  {
    v6 = sub_100047BAC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100047A74()
{
  v1 = v0[10];
  v2 = v0[9];
  (*(v0[12] + 8))(v0[13], v0[11]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100047B10()
{
  v1 = v0[21];
  v2 = v0[10];
  v3 = v0[9];
  (*(v0[12] + 8))(v0[13], v0[11]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100047BAC()
{
  v1 = v0[15];
  v2 = v0[9];
  v3 = v0[14];
  static LoggedObject.logger.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Requesting background upload of events to CloudKit database", v6, 2u);
  }

  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[9];
  v11 = v0[6];
  v10 = v0[7];

  v8(v9, v10);

  return _swift_task_switch(sub_100047CB8, v11, 0);
}

uint64_t sub_100047CB8()
{
  v1 = v0[20];
  v2 = v0[6];
  sub_100028B58(0, 1);
  if (v1)
  {
    v0[21] = v1;
    v3 = sub_100047B10;
  }

  else
  {
    v3 = sub_100047A74;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100047D4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100047DB4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v38 = a4;
  v9 = type metadata accessor for Logger();
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  v11 = __chkstk_darwin(v9);
  v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v36 = &v35 - v14;
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  sub_10004A0AC();
  static LoggedObject.logger.getter();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  v19 = os_log_type_enabled(v17, v18);
  v40 = v9;
  v41 = a1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = a3;
    v22 = swift_slowAlloc();
    v43[0] = v22;
    *v20 = 136315138;
    *(v20 + 4) = sub_100035120(v41, a2, v43);
    _os_log_impl(&_mh_execute_header, v17, v18, "Attempting to register launch handler associated with identifier %s", v20, 0xCu);
    sub_10000D330(v22);
    a3 = v21;

    a1 = v41;
    v23 = v42;
  }

  else
  {

    v23 = v42;
  }

  v39 = *(v23 + 8);
  v39(v16, v9);
  v24 = swift_allocObject();
  v24[2] = a1;
  v24[3] = a2;
  v25 = v38;
  v24[4] = a3;
  v24[5] = v25;
  v26 = v5[3];
  v27 = v5[4];
  sub_10000D224(v5, v26);
  v28 = *(v27 + 8);

  v28(a1, a2, sub_10004A198, v24, v26, v27);
  v29 = v36;
  static LoggedObject.logger.getter();

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v43[0] = v33;
    *v32 = 136446210;
    *(v32 + 4) = sub_100035120(v41, a2, v43);
    _os_log_impl(&_mh_execute_header, v30, v31, "Successfully registered launch handler associated with identifier %{public}s", v32, 0xCu);
    sub_10000D330(v33);
  }

  return (v39)(v29, v40);
}

uint64_t sub_10004827C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v71 = *(v4 - 8);
  v72 = v4;
  v5 = *(v71 + 64);
  v6 = __chkstk_darwin(v4);
  v67 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v66 = &v65 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v65 - v11;
  v13 = __chkstk_darwin(v10);
  v68 = &v65 - v14;
  __chkstk_darwin(v13);
  v16 = &v65 - v15;
  v17 = a1[3];
  v18 = a1[4];
  sub_10000D224(a1, v17);
  v19 = (*(v18 + 8))(v17, v18);
  v21 = v20;
  v22 = v1[3];
  v23 = v1[4];
  sub_10000D224(v2, v2[3]);
  v24 = *(v23 + 24);
  v70 = v19;
  v25 = v24(v19, v21, v22, v23);
  sub_10004A0AC();
  if (v25)
  {
    static LoggedObject.logger.getter();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v73 = v29;
      *v28 = 136446210;
      v30 = sub_100035120(v70, v21, &v73);

      *(v28 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "Declining to submit task request associated with identifier %{public}s because another request is already scheduled, but not yet completed", v28, 0xCu);
      sub_10000D330(v29);
    }

    else
    {
    }

    (*(v71 + 8))(v12, v72);
LABEL_20:
    sub_100029038();
    swift_allocError();
    *v63 = 2;
    return swift_willThrow();
  }

  static LoggedObject.logger.getter();

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v73 = v34;
    *v33 = 136446210;
    *(v33 + 4) = sub_100035120(v70, v21, &v73);
    _os_log_impl(&_mh_execute_header, v31, v32, "Attempting to submit task request associated with identifier %{public}s", v33, 0xCu);
    sub_10000D330(v34);
  }

  v35 = *(v71 + 8);
  v35(v16, v72);
  v36 = v2[3];
  v37 = v2[4];
  sub_10000D224(v2, v36);
  v38 = v69;
  (*(v37 + 16))(a1, v36, v37);
  if (v38)
  {
    type metadata accessor for Code(0);
    v73 = 5;
    swift_errorRetain();
    sub_10004A100();
    v39 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v39)
    {

      v40 = v66;
      static LoggedObject.logger.getter();

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v73 = v44;
        *v43 = 136446210;
        v45 = sub_100035120(v70, v21, &v73);

        *(v43 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v41, v42, "Attempted to submit request for %{public}s even though another request was already pending", v43, 0xCu);
        sub_10000D330(v44);
      }

      else
      {
      }

      v35(v40, v72);
      goto LABEL_20;
    }

    v53 = v67;
    static LoggedObject.logger.getter();

    swift_errorRetain();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v73 = v58;
      *v56 = 136446466;
      v59 = v35;
      v60 = sub_100035120(v70, v21, &v73);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2114;
      swift_errorRetain();
      v61 = _swift_stdlib_bridgeErrorToNSError();
      *(v56 + 14) = v61;
      *v57 = v61;
      _os_log_impl(&_mh_execute_header, v54, v55, "Received unknown error while attempting to submit task request associated with identifier %{public}s: %{public}@", v56, 0x16u);
      sub_10000F32C(v57);

      sub_10000D330(v58);

      v59(v67, v72);
    }

    else
    {

      v35(v53, v72);
    }

    sub_100029038();
    swift_allocError();
    *v64 = 0;
    swift_willThrow();
  }

  else
  {
    v46 = v68;
    static LoggedObject.logger.getter();

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v73 = v50;
      *v49 = 136446210;
      v51 = sub_100035120(v70, v21, &v73);

      *(v49 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v47, v48, "Successfully submitted task request associated with identifier %{public}s", v49, 0xCu);
      sub_10000D330(v50);

      v52 = v68;
    }

    else
    {

      v52 = v46;
    }

    return (v35)(v52, v72);
  }
}

uint64_t sub_100048B24(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v10 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v34 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D2CC(a1, v37);
  sub_10004A0AC();
  static LoggedObject.logger.getter();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v34 = a5;
    v22 = v21;
    v23 = swift_slowAlloc();
    v35 = v13;
    v36 = v23;
    v24 = a4;
    v25 = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_100035120(a2, a3, &v36);
    _os_log_impl(&_mh_execute_header, v19, v20, "Beginning execution of task associated with identifier %{public}s", v22, 0xCu);
    sub_10000D330(v25);
    a4 = v24;
    v13 = v35;
  }

  (*(v15 + 8))(v18, v14);
  v26 = a4(v37);
  v27 = swift_allocObject();
  v27[2] = a2;
  v27[3] = a3;
  v27[4] = v26;
  v28 = v38;
  v29 = v39;
  sub_10001116C(v37, v38);
  v30 = *(v29 + 24);

  v30(sub_10004A1E4, v27, v28, v29);
  v31 = type metadata accessor for TaskPriority();
  (*(*(v31 - 8) + 56))(v13, 1, 1, v31);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v26;
  v32[5] = a2;
  v32[6] = a3;

  sub_100080ECC(0, 0, v13, &unk_1000870D8, v32);

  return sub_10004A300(v37);
}

void sub_100048EA4(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004A0AC();
  static LoggedObject.logger.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_100035120(a1, a2, &v14);
    _os_log_impl(&_mh_execute_header, v9, v10, "System scheduler is expiring the task run associated with identifier %{public}s", v11, 0xCu);
    sub_10000D330(v12);
  }

  (*(v5 + 8))(v8, v4);
  sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  Task.cancel()();
}

uint64_t sub_10004909C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v8 = type metadata accessor for CancellationError();
  v6[7] = v8;
  v9 = *(v8 - 8);
  v6[8] = v9;
  v10 = *(v9 + 64) + 15;
  v6[9] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v6[10] = v11;
  v12 = *(v11 - 8);
  v6[11] = v12;
  v13 = *(v12 + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v14 = async function pointer to Task.result.getter[1];
  v15 = swift_task_alloc();
  v6[15] = v15;
  v16 = sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  v6[16] = v16;
  *v15 = v6;
  v15[1] = sub_100049240;

  return Task.result.getter(v6 + 2, a4, &type metadata for () + 8, v16, &protocol self-conformance witness table for Error);
}

uint64_t sub_100049240()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(sub_10004933C, 0, 0);
}