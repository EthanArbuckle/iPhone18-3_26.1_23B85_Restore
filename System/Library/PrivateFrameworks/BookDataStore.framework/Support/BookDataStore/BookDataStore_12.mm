uint64_t sub_10017BAD4(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_1001C6938();

    if (v7)
    {
      v8 = sub_10017BC6C();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
  v11 = sub_1001C6798(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = sub_1001C67A8();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100179E34();
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  sub_10017C194(v13);
  result = v20;
  *v10 = v21;
  return result;
}

uint64_t sub_10017BC6C()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_1001C6908();
  v4 = swift_unknownObjectRetain();
  v5 = sub_100178F44(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_1001C6798(v6);
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_1001C67A8();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_10017C194(v9);
  result = sub_1001C67A8();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10017BDD4(unint64_t result)
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

    v9 = sub_1001C68D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v12 = 24 * v6;
        v13 = *(v3 + 40);
        v14 = *(v3 + 48) + 24 * v6;
        v15 = *v14;
        v16 = *(v14 + 8);
        v17 = *(v14 + 16);
        sub_1001C6DF8();

        sub_1001C60E8();
        sub_1001C6E18(v17);
        v18 = sub_1001C6E28();

        v19 = v18 & v7;
        if (v2 >= v10)
        {
          if (v19 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v19 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v19)
        {
LABEL_11:
          v20 = *(v3 + 48);
          v21 = v20 + 24 * v2;
          v22 = (v20 + v12);
          if (24 * v2 < v12 || v21 >= v22 + 24 || v2 != v6)
          {
            v11 = *v22;
            *(v21 + 16) = *(v22 + 2);
            *v21 = v11;
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

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10017BFD0(unint64_t result)
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

    v9 = sub_1001C68D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1001C6DF8();

        sub_1001C60E8();
        v15 = sub_1001C6E28();

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

unint64_t sub_10017C194(unint64_t result)
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

    v9 = sub_1001C68D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_1001C6798(v11);

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

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

void (*sub_10017C334(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1001C69F8();
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
    return sub_10017C3B4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10017C3BC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1001C69F8();
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
    return sub_100183898;
  }

  __break(1u);
  return result;
}

uint64_t sub_10017C43C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10017C530;

  return v6(v2 + 32);
}

uint64_t sub_10017C530()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10017C644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001C5648();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1001C5688();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = sub_100100DE8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_10024B770;
  v14 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_1001C5668();
  v19 = _swiftEmptyArrayStorage;
  sub_1001826B0(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v14);
  (*(v18 + 8))(v7, v4);
  (*(v8 + 8))(v11, v17);
}

uint64_t sub_10017C95C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10009AAEC;

  return sub_100171F04(a1, v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for BDSSyncEngine()
{
  result = qword_100273C90;
  if (!qword_100273C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10017CA8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10017CAA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10009B25C;

  return sub_100176330(a1, v4, v5, v6);
}

void sub_10017CB58(void *a1)
{
  v2 = v1;
  v4 = a1;
  v5 = sub_1001C5128();
  v6 = sub_1001C65B8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_1001874E8(0xD00000000000003CLL, 0x8000000100203DF0, &v15);
    *(v7 + 12) = 2112;
    *(v7 + 14) = v4;
    *v8 = a1;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "BDSSyncEngine - %s. newUserRecordID - %@", v7, 0x16u);
    sub_10008875C(v8, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v9);
  }

  v11 = *(v2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_accountChangedPublisher);
  v15 = a1;
  sub_1001C5178();
  if (a1)
  {
    BDSSyncEngine.reestablishSalt()();
  }

  else
  {
    v12 = sub_1001C5128();
    v13 = sub_1001C65B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "BDSSyncEngine - Skipping salt establishment since no valid account found", v14, 2u);
    }
  }
}

uint64_t sub_10017CD64(uint64_t a1)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_1001C5648();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  __chkstk_darwin(v3);
  v30 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001C5688();
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001C55A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = sub_1001C5128();
  v14 = sub_1001C65B8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1001874E8(0xD00000000000001DLL, 0x8000000100203EC0, aBlock);
    _os_log_impl(&_mh_execute_header, v13, v14, "BDSSyncEngine - %s", v15, 0xCu);
    sub_10008E7BC(v16);
  }

  v17 = *(v2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_updateMetadataPublisher);
  sub_100084528(&qword_10026ED10, &qword_1001F06D8);
  sub_1000885F4(&unk_100273D50, &qword_10026ED10, &qword_1001F06D8);
  sub_1001C5198();
  v18 = *(v2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v11 + 16))(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v10);
  v20 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  (*(v11 + 32))(v21 + v20, &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = sub_10018346C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_10024B5B8;
  v22 = _Block_copy(aBlock);

  sub_1001C5668();
  v33 = _swiftEmptyArrayStorage;
  sub_1001826B0(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  v23 = v30;
  v24 = v32;
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v22);
  (*(v31 + 8))(v23, v24);
  (*(v28 + 8))(v9, v29);
}

void sub_10017D268(void *a1, uint64_t a2)
{
  v4 = sub_1001C64D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for CKDatabase.DatabaseChange.Deletion.Reason.deleted(_:))
  {
    v10 = 0xE700000000000000;
    v11 = 0x646574656C6564;
  }

  else if (v9 == enum case for CKDatabase.DatabaseChange.Deletion.Reason.purged(_:))
  {
    v10 = 0xE600000000000000;
    v11 = 0x646567727570;
  }

  else if (v9 == enum case for CKDatabase.DatabaseChange.Deletion.Reason.encryptedDataReset(_:))
  {
    v11 = 0xD000000000000012;
    v10 = 0x8000000100203F10;
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    v10 = 0xE700000000000000;
    v11 = 0x6E776F6E6B6E75;
  }

  v12 = a1;

  v13 = sub_1001C5128();
  v14 = sub_1001C65B8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_1001874E8(0xD00000000000002ALL, 0x8000000100203EE0, &v20);
    *(v15 + 12) = 2114;
    *(v15 + 14) = v12;
    *v16 = v12;
    *(v15 + 22) = 2082;
    v17 = v12;
    v18 = sub_1001874E8(v11, v10, &v20);

    *(v15 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v13, v14, "BDSSyncEngine - %s: %{public}@, reason=%{public}s", v15, 0x20u);
    sub_10008875C(v16, &unk_1002718E0, &qword_1001F31F0);

    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_10017D590(uint64_t a1)
{
  v3 = sub_1001C64D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001C6508();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  result = __chkstk_darwin(v10);
  v15 = &v59 - v14;
  v16 = *(a1 + 16);
  if (v16)
  {
    v18 = *(v12 + 16);
    v17 = v12 + 16;
    v19 = a1 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v67 = *(v17 + 56);
    v68 = v18;
    v62 = v3;
    v63 = result;
    v60 = v13;
    v61 = (v4 + 8);
    v65 = v17;
    v66 = (v17 - 8);
    v20 = v19;
    v64 = v1;
    v21 = v16;
    v22 = v7;
    v23 = result;
    do
    {
      v68(v15, v20, v23);
      v24 = sub_1001C64F8();
      sub_1001C64E8();
      sub_10017D268(v24, v22);

      (*v61)(v22, v62);
      v25 = *v66;
      (*v66)(v15, v23);
      v20 += v67;
      --v21;
    }

    while (v21);
    v26 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock;
    v27 = v64;
    [*(v64 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock) lock];
    v28 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_validCKZones;
    swift_beginAccess();
    v29 = *(v27 + v28);
    v30 = *(v27 + v26);

    [v30 unlock];
    v69 = _swiftEmptyArrayStorage;
    sub_1001C6A78();
    v31 = v63;
    v32 = v60;
    do
    {
      v68(v32, v19, v31);
      sub_1001C64F8();
      v25(v32, v31);
      sub_1001C6A48();
      v33 = v69[2];
      sub_1001C6A88();
      sub_1001C6A98();
      sub_1001C6A58();
      v19 += v67;
      --v16;
    }

    while (v16);
    v34 = v69;
    v69 = _swiftEmptyArrayStorage;
    if ((v34 & 0x8000000000000000) != 0 || (v34 & 0x4000000000000000) != 0)
    {
      goto LABEL_33;
    }

    for (i = *(v34 + 16); i; i = sub_1001C6B38())
    {
      v36 = 0;
      v65 = i;
      v66 = (v34 + 32);
      v67 = v29 & 0xC000000000000001;
      v68 = (v34 & 0xC000000000000001);
      v37 = v29 & 0xFFFFFFFFFFFFFF8;
      if (v29 < 0)
      {
        v37 = v29;
      }

      v63 = v37;
      v38 = v29 + 56;
      while (1)
      {
        if (v68)
        {
          v40 = sub_1001C69F8();
        }

        else
        {
          if (v36 >= *(v34 + 16))
          {
            goto LABEL_32;
          }

          v40 = v66[v36];
        }

        v41 = v40;
        if (__OFADD__(v36++, 1))
        {
          break;
        }

        if (v67)
        {
          v43 = v40;
          v44 = sub_1001C6938();

          if ((v44 & 1) == 0)
          {

            goto LABEL_13;
          }

LABEL_12:
          sub_1001C6A48();
          v39 = v69[2];
          sub_1001C6A88();
          sub_1001C6A98();
          sub_1001C6A58();
LABEL_13:
          i = v65;
          if (v36 == v65)
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (*(v29 + 16))
          {
            sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
            v45 = sub_1001C6798(*(v29 + 40));
            v46 = -1 << *(v29 + 32);
            v47 = v45 & ~v46;
            if (((*(v38 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
            {
LABEL_26:

              goto LABEL_13;
            }

            v48 = ~v46;
            while (1)
            {
              v49 = *(*(v29 + 48) + 8 * v47);
              v50 = sub_1001C67A8();

              if (v50)
              {
                goto LABEL_12;
              }

              v47 = (v47 + 1) & v48;
              if (((*(v38 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
              {
                goto LABEL_26;
              }
            }
          }

          if (v36 == i)
          {
LABEL_30:
            v51 = v69;
            goto LABEL_35;
          }
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

    v51 = _swiftEmptyArrayStorage;
LABEL_35:

    v52 = sub_1001C5128();
    v53 = sub_1001C65B8();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v69 = v55;
      *v54 = 136446210;
      sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
      v56 = sub_1001C62A8();
      v58 = sub_1001874E8(v56, v57, &v69);

      *(v54 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v52, v53, "BDSSyncEngine - handleZoneMissingOrDeleted: %{public}s", v54, 0xCu);
      sub_10008E7BC(v55);
    }

    sub_100174FE8(v51, 1);
  }

  return result;
}

uint64_t sub_10017DBA8(void *a1)
{
  v2 = v1;
  v4 = sub_1001C5648();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001C5688();
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1;
  v13 = sub_1001C5128();
  v14 = sub_1001C65B8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "BDSSyncEngine - didSave recordZone: %{public}@", v15, 0xCu);
    sub_10008875C(v16, &unk_1002718E0, &qword_1001F31F0);
  }

  v18 = *(v2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v12;
  aBlock[4] = sub_1001835D8;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_10024B658;
  v21 = _Block_copy(aBlock);
  v22 = v12;

  sub_1001C5668();
  v27 = _swiftEmptyArrayStorage;
  sub_1001826B0(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v21);
  (*(v26 + 8))(v7, v4);
  (*(v24 + 8))(v11, v25);
}

void sub_10017DF84(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_1001C5128();
  v5 = sub_1001C65B8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = [v3 recordID];
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "BDSSyncEngine - didSave recordID: %@", v6, 0xCu);
    sub_10008875C(v7, &unk_1002718E0, &qword_1001F31F0);
  }

  v9 = sub_1001C6758();
  v11 = v10;
  v12 = sub_1001C5FE8();
  v13 = *(v2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue);
  __chkstk_darwin(v12);
  sub_100084528(&qword_100273D70, &unk_1001F8750);
  sub_1001C6688();

  if (v20)
  {

    sub_100100DF0(&v19, v21);
    v14 = *sub_10009BB74(v21, v21[3]);
    BDSSyncEnginePipeline.didSave(record:)(v3);
    sub_10008E7BC(v21);
  }

  else
  {
    sub_10008875C(&v19, &qword_100273D70, &unk_1001F8750);

    v15 = sub_1001C5128();
    v16 = sub_1001C6598();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v21[0] = swift_slowAlloc();
      *v17 = 136315394;
      *(v17 + 4) = sub_1001874E8(0xD000000000000016, 0x8000000100204010, v21);
      *(v17 + 12) = 2082;
      v18 = sub_1001874E8(v9, v11, v21);

      *(v17 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "BDSSyncEngine - %s: missing pipeline for %{public}s", v17, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_10017E2B4(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_logger;
  v6 = a1;
  swift_errorRetain();
  v7 = sub_1001C5128();
  v8 = sub_1001C65B8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2112;
    v11 = v6;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "BDSSyncEngine - failedToSaveRecordWith recordID: %@, error: %@", v9, 0x16u);
    sub_100084528(&unk_1002718E0, &qword_1001F31F0);
    swift_arrayDestroy();
  }

  v13 = [v6 recordName];
  v14 = sub_1001C6018();
  v16 = v15;

  v40[0] = 46;
  v40[1] = 0xE100000000000000;
  __chkstk_darwin(v17);
  v35 = v40;
  v18 = sub_1000F55C0(0x7FFFFFFFFFFFFFFFLL, 1, sub_10018387C, &v34, v14, v16, &v37);
  if (v18[2])
  {
    v37 = v5;
    v19 = v18[4];
    v20 = v18[5];
    v21 = v18[6];
    v22 = v18[7];

    v23 = sub_1001C60B8();
    v25 = v24;

    v26 = sub_1001C5FE8();
    v27 = *(v3 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue);
    v28 = __chkstk_darwin(v26);
    v35 = v3;
    v36 = v28;
    sub_100084528(&qword_100273D70, &unk_1001F8750);
    sub_1001C6688();

    if (v39)
    {

      sub_100100DF0(&v38, v40);
      v29 = *sub_10009BB74(v40, v40[3]);
      BDSSyncEnginePipeline.failedToSaveRecordWith(recordID:error:)(v6, a2);
      sub_10008E7BC(v40);
    }

    else
    {
      sub_10008875C(&v38, &qword_100273D70, &unk_1001F8750);

      v30 = sub_1001C5128();
      v31 = sub_1001C6598();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v40[0] = swift_slowAlloc();
        *v32 = 136315394;
        *(v32 + 4) = sub_1001874E8(0xD00000000000002BLL, 0x8000000100203FE0, v40);
        *(v32 + 12) = 2082;
        v33 = sub_1001874E8(v23, v25, v40);

        *(v32 + 14) = v33;
        _os_log_impl(&_mh_execute_header, v30, v31, "BDSSyncEngine - %s: missing pipeline for %{public}s", v32, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10017E6F0(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_1001C5128();
  v5 = sub_1001C65B8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "BDSSyncEngine - didDeleteRecordWith recordID: %@", v6, 0xCu);
    sub_10008875C(v7, &unk_1002718E0, &qword_1001F31F0);
  }

  v9 = [v3 recordName];
  v10 = sub_1001C6018();
  v12 = v11;

  v36[0] = 46;
  v36[1] = 0xE100000000000000;
  __chkstk_darwin(v13);
  v31 = v36;
  v14 = sub_1000F55C0(0x7FFFFFFFFFFFFFFFLL, 1, sub_10018387C, &v30, v10, v12, &v33);
  if (v14[2])
  {
    v15 = v14[4];
    v16 = v14[5];
    v17 = v14[6];
    v18 = v14[7];

    v19 = sub_1001C60B8();
    v21 = v20;

    v22 = sub_1001C5FE8();
    v23 = *(v2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue);
    v24 = __chkstk_darwin(v22);
    v31 = v2;
    v32 = v24;
    sub_100084528(&qword_100273D70, &unk_1001F8750);
    sub_1001C6688();

    if (v35)
    {

      sub_100100DF0(&v34, v36);
      v25 = *sub_10009BB74(v36, v36[3]);
      BDSSyncEnginePipeline.didDeleteRecordWith(recordID:)(v3);
      sub_10008E7BC(v36);
    }

    else
    {
      sub_10008875C(&v34, &qword_100273D70, &unk_1001F8750);

      v26 = sub_1001C5128();
      v27 = sub_1001C6598();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v36[0] = swift_slowAlloc();
        *v28 = 136315394;
        *(v28 + 4) = sub_1001874E8(0xD000000000000022, 0x8000000100203FB0, v36);
        *(v28 + 12) = 2082;
        v29 = sub_1001874E8(v19, v21, v36);

        *(v28 + 14) = v29;
        _os_log_impl(&_mh_execute_header, v26, v27, "BDSSyncEngine - %s: missing pipeline for %{public}s", v28, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10017EAE0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_logger;

  v32 = v1;
  v4 = sub_1001C5128();
  v5 = sub_1001C65B8();

  v29 = v3;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v36[0] = v7;
    *v6 = 136446210;
    v8 = sub_1001C63F8();
    v10 = sub_1001874E8(v8, v9, v36);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "BDSSyncEngine - didCompleteModifyRecordsBatch recordTypes: %{public}s", v6, 0xCu);
    sub_10008E7BC(v7);
  }

  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v30 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue;
  v15 = (v12 + 63) >> 6;

  v17 = 0;
  v31 = a1;
  if (v14)
  {
    while (1)
    {
      v18 = v17;
LABEL_10:
      v19 = (*(a1 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v14)))));
      v20 = *v19;
      v21 = v19[1];

      v22 = sub_1001C5FE8();
      v33 = &v29;
      v23 = *(v32 + v30);
      __chkstk_darwin(v22);
      sub_100084528(&qword_100273D70, &unk_1001F8750);
      sub_1001C6688();

      if (!v35)
      {
        break;
      }

      v14 &= v14 - 1;

      sub_100100DF0(&v34, v36);
      v24 = *sub_10009BB74(v36, v36[3]);
      BDSSyncEnginePipeline.didCompleteModifyRecordsBatch()();
      result = sub_10008E7BC(v36);
      v17 = v18;
      a1 = v31;
      if (!v14)
      {
        goto LABEL_7;
      }
    }

    sub_10008875C(&v34, &qword_100273D70, &unk_1001F8750);

    v25 = sub_1001C5128();
    v26 = sub_1001C6598();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v36[0] = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_1001874E8(0xD00000000000002CLL, 0x8000000100203F50, v36);
      *(v27 + 12) = 2082;
      v28 = sub_1001874E8(v20, v21, v36);

      *(v27 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v25, v26, "BDSSyncEngine - %s: missing pipeline for %{public}s", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_10017EEE8(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_logger;
  v6 = a1;
  swift_errorRetain();
  v7 = sub_1001C5128();
  v8 = sub_1001C65B8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2112;
    v11 = v6;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "BDSSyncEngine - failedToDeleteRecordWith recordID: %@, error: %@", v9, 0x16u);
    sub_100084528(&unk_1002718E0, &qword_1001F31F0);
    swift_arrayDestroy();
  }

  v13 = [v6 recordName];
  v14 = sub_1001C6018();
  v16 = v15;

  v40[0] = 46;
  v40[1] = 0xE100000000000000;
  __chkstk_darwin(v17);
  v35 = v40;
  v18 = sub_1000F55C0(0x7FFFFFFFFFFFFFFFLL, 1, sub_10018387C, &v34, v14, v16, &v37);
  if (v18[2])
  {
    v37 = v5;
    v19 = v18[4];
    v20 = v18[5];
    v21 = v18[6];
    v22 = v18[7];

    v23 = sub_1001C60B8();
    v25 = v24;

    v26 = sub_1001C5FE8();
    v27 = *(v3 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue);
    v28 = __chkstk_darwin(v26);
    v35 = v3;
    v36 = v28;
    sub_100084528(&qword_100273D70, &unk_1001F8750);
    sub_1001C6688();

    if (v39)
    {

      sub_100100DF0(&v38, v40);
      v29 = *sub_10009BB74(v40, v40[3]);
      BDSSyncEnginePipeline.failedToDeleteRecordWith(recordID:error:)(v6, a2);
      sub_10008E7BC(v40);
    }

    else
    {
      sub_10008875C(&v38, &qword_100273D70, &unk_1001F8750);

      v30 = sub_1001C5128();
      v31 = sub_1001C6598();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v40[0] = swift_slowAlloc();
        *v32 = 136315394;
        *(v32 + 4) = sub_1001874E8(0xD00000000000002DLL, 0x8000000100203F80, v40);
        *(v32 + 12) = 2082;
        v33 = sub_1001874E8(v23, v25, v40);

        *(v32 + 14) = v33;
        _os_log_impl(&_mh_execute_header, v30, v31, "BDSSyncEngine - %s: missing pipeline for %{public}s", v32, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10017F324(void *a1)
{
  v2 = v1;
  swift_errorRetain();
  v4 = sub_1001C5128();
  v5 = sub_1001C6598();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27[0] = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_1001874E8(0xD00000000000002CLL, 0x8000000100203DC0, v27);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "BDSSyncEngine - %s. Error - %@", v6, 0x16u);
    sub_10008875C(v7, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v8);
  }

  v10 = sub_1001C4A18();
  v11 = [v10 domain];

  v12 = sub_1001C6018();
  v14 = v13;

  if (v12 == sub_1001C6018() && v14 == v15)
  {
  }

  else
  {
    v17 = sub_1001C6D08();

    if ((v17 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  swift_errorRetain();
  v18 = sub_1001C5128();
  v19 = sub_1001C65A8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v22;
    *v21 = v22;
    _os_log_impl(&_mh_execute_header, v18, v19, "BDSSyncEngineDataSource. Receieved error with NSCocoaErrorDomain - %@", v20, 0xCu);
    sub_10008875C(v21, &unk_1002718E0, &qword_1001F31F0);
  }

LABEL_13:
  type metadata accessor for Code(0);
  v27[0] = 21;
  sub_1001826B0(&qword_10026F000, type metadata accessor for Code);
  if (sub_1001C4998() & 1) != 0 || (v27[0] = 26, (sub_1001C4998()) || (v27[0] = 28, result = sub_1001C4998(), (result))
  {
    v24 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_invalidTokenZoneIDs;
    swift_beginAccess();
    v25 = a1;
    sub_1001C6278();
    if (*((*(v2 + v24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v26 = *((*(v2 + v24) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1001C62B8();
    }

    sub_1001C62E8();
    return swift_endAccess();
  }

  return result;
}

void sub_10017F744(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_1001C5128();
  v5 = sub_1001C65B8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_1001874E8(0xD000000000000027, 0x8000000100204030, &v12);
    *(v6 + 12) = 2114;
    *(v6 + 14) = v3;
    *v7 = v3;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "BDSSyncEngine - %s: zoneID: %{public}@", v6, 0x16u);
    sub_10008875C(v7, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v8);
  }

  v10 = *(v2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_endFetchingChangesPublisher);
  v12 = v3;
  v11 = v3;
  sub_1001C5178();
}

uint64_t sub_10017F8D0()
{
  v1 = v0;
  v2 = sub_1001C5128();
  v3 = sub_1001C65B8();

  v4 = &dword_100273000;
  if (os_log_type_enabled(v2, v3))
  {
    v5 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_1001874E8(0xD000000000000023, 0x8000000100204060, v27);
    *(v5 + 12) = 2082;
    v6 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_invalidTokenZoneIDs;
    swift_beginAccess();
    v7 = *&v1[v6];
    sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);

    v8 = sub_1001C62A8();
    v10 = v9;

    v11 = sub_1001874E8(v8, v10, v27);

    *(v5 + 14) = v11;
    v4 = &dword_100273000;
    _os_log_impl(&_mh_execute_header, v2, v3, "BDSSyncEngine - %s: invalidTokenZoneIDs: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *(v4 + 372);
  swift_beginAccess();
  v13 = *&v1[v12];
  if (!(v13 >> 62))
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  if (v13 < 0)
  {
    v25 = *&v1[v12];
  }

  if (sub_1001C6B38())
  {
LABEL_5:
    v14 = *&v1[v12];

    v15 = sub_1001C5128();
    v16 = sub_1001C65B8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136446210;
      sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
      v19 = sub_1001C62A8();
      v21 = sub_1001874E8(v19, v20, &v26);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "BDSSyncEngine - handleZoneDidReset: %{public}s", v17, 0xCu);
      sub_10008E7BC(v18);
    }

    sub_10017057C();
    BDSSyncEngine.reestablishSalt()();

    v22 = *&v1[v12];
    *&v1[v12] = _swiftEmptyArrayStorage;
  }

LABEL_8:
  v23 = *&v1[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_endFetchingChangesPublisher];
  v26 = 0;
  return sub_1001C5178();
}

uint64_t sub_10017FC08(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_1001C53E8();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = sub_1001C53F8();
  v2[16] = v6;
  v7 = *(v6 - 8);
  v2[17] = v7;
  v8 = *(v7 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v9 = sub_1001C5568();
  v2[20] = v9;
  v10 = *(v9 - 8);
  v2[21] = v10;
  v11 = *(v10 + 64) + 15;
  v2[22] = swift_task_alloc();
  v12 = sub_1001C5588();
  v2[23] = v12;
  v13 = *(v12 - 8);
  v2[24] = v13;
  v14 = *(v13 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v15 = sub_1001C5488();
  v2[27] = v15;
  v16 = *(v15 - 8);
  v2[28] = v16;
  v17 = *(v16 + 64) + 15;
  v2[29] = swift_task_alloc();
  v18 = sub_1001C54D8();
  v2[30] = v18;
  v19 = *(v18 - 8);
  v2[31] = v19;
  v20 = *(v19 + 64) + 15;
  v2[32] = swift_task_alloc();
  v21 = sub_1001C5458();
  v2[33] = v21;
  v22 = *(v21 - 8);
  v2[34] = v22;
  v23 = *(v22 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v24 = sub_1001C6558();
  v2[37] = v24;
  v25 = *(v24 - 8);
  v2[38] = v25;
  v26 = *(v25 + 64) + 15;
  v2[39] = swift_task_alloc();
  v27 = sub_1001C6528();
  v2[40] = v27;
  v28 = *(v27 - 8);
  v2[41] = v28;
  v29 = *(v28 + 64) + 15;
  v2[42] = swift_task_alloc();
  v30 = sub_1001C5538();
  v2[43] = v30;
  v31 = *(v30 - 8);
  v2[44] = v31;
  v32 = *(v31 + 64) + 15;
  v2[45] = swift_task_alloc();
  v33 = sub_1001C64C8();
  v2[46] = v33;
  v34 = *(v33 - 8);
  v2[47] = v34;
  v35 = *(v34 + 64) + 15;
  v2[48] = swift_task_alloc();
  v36 = sub_1001C5508();
  v2[49] = v36;
  v37 = *(v36 - 8);
  v2[50] = v37;
  v38 = *(v37 + 64) + 15;
  v2[51] = swift_task_alloc();
  v39 = sub_1001C55A8();
  v2[52] = v39;
  v40 = *(v39 - 8);
  v2[53] = v40;
  v41 = *(v40 + 64) + 15;
  v2[54] = swift_task_alloc();
  v42 = sub_1001C53A8();
  v2[55] = v42;
  v43 = *(v42 - 8);
  v2[56] = v43;
  v44 = *(v43 + 64) + 15;
  v2[57] = swift_task_alloc();
  v45 = sub_1001C53B8();
  v2[58] = v45;
  v46 = *(v45 - 8);
  v2[59] = v46;
  v47 = *(v46 + 64) + 15;
  v2[60] = swift_task_alloc();
  v48 = sub_1001C53D8();
  v2[61] = v48;
  v49 = *(v48 - 8);
  v2[62] = v49;
  v50 = *(v49 + 64) + 15;
  v2[63] = swift_task_alloc();
  v51 = sub_1001C5598();
  v2[64] = v51;
  v52 = *(v51 - 8);
  v2[65] = v52;
  v53 = *(v52 + 64) + 15;
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();

  return _swift_task_switch(sub_1001802C4, 0, 0);
}

unint64_t sub_1001802C4()
{
  v428 = v0;
  v2 = v0;
  v3 = v0[67];
  v4 = v0[65];
  v5 = v0[64];
  v6 = *(v4 + 16);
  v6(v3, v2[10], v5);
  v7 = (*(v4 + 88))(v3, v5);
  v424 = v2;
  if (v7 == enum case for CKSyncEngine.Event.stateUpdate(_:))
  {
    v8 = v2[67];
    v9 = v2[65];
    v10 = v2[64];
    v11 = v2[57];
    v12 = v2[56];
    v13 = v424[55];
    v14 = v424[54];
    v15 = v424[53];
    v16 = v424[52];
    v17 = v424[11];
    (*(v9 + 96))(v8, v10);
    (*(v12 + 32))(v11, v8, v13);
    sub_1001C5398();
    sub_10017CD64(v14);
    (*(v15 + 8))(v14, v16);
    goto LABEL_3;
  }

  if (v7 == enum case for CKSyncEngine.Event.accountChange(_:))
  {
    v31 = v2[67];
    v32 = v2[65];
    v34 = v2[63];
    v33 = v2[64];
    v35 = v2[61];
    v36 = v2[62];
    v37 = v2;
    v40 = v2 + 59;
    v39 = v2[59];
    v38 = v40[1];
    v41 = v37[58];
    (*(v32 + 96))(v31, v33);
    (*(v36 + 32))(v34, v31, v35);
    sub_1001C53C8();
    v42 = (*(v39 + 88))(v38, v41);
    if (v42 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.signIn(_:))
    {
      v44 = v37[62];
      v43 = v37[63];
      v46 = v37[60];
      v45 = v37[61];
      v47 = v37[11];
      (*(v37[59] + 96))(v46, v37[58]);
      v48 = *v46;
      v49 = v48;
      sub_10017CB58(v48);

      (*(v44 + 8))(v43, v45);
      v2 = v37;
      goto LABEL_5;
    }

    if (v42 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.signOut(_:))
    {
      v2 = v424;
      v74 = v424[62];
      v73 = v424[63];
      v76 = v424[60];
      v75 = v424[61];
      v77 = v424[11];
      (*(v424[59] + 96))(v76, v424[58]);
      v78 = *v76;
      sub_10017CB58(0);

      (*(v74 + 8))(v73, v75);
      goto LABEL_5;
    }

    if (v42 != enum case for CKSyncEngine.Event.AccountChange.ChangeType.switchAccounts(_:))
    {
      v124 = v424[11] + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_logger;
      v125 = sub_1001C5128();
      v126 = sub_1001C6598();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        *v127 = 0;
        _os_log_impl(&_mh_execute_header, v125, v126, "BDSSyncEngine - handleEvent(.accountChange): unknown changeType", v127, 2u);
      }

      v129 = v424[62];
      v128 = v424[63];
      v131 = v424[60];
      v130 = v424[61];
      v132 = v424[59];
      v133 = v424[58];

      (*(v129 + 8))(v128, v130);
      (*(v132 + 8))(v131, v133);
      goto LABEL_4;
    }

    v11 = v424[63];
    v12 = v424[62];
    v13 = v424[61];
    v100 = v424[60];
    v101 = v424[11];
    (*(v424[59] + 96))(v100, v424[58]);
    v102 = *v100;
    v103 = *(v100 + 8);
    v104 = v102;
    v105 = v103;
    sub_10017CB58(v103);

LABEL_3:
    (*(v12 + 8))(v11, v13);
LABEL_4:
    v2 = v424;
    goto LABEL_5;
  }

  if (v7 == enum case for CKSyncEngine.Event.fetchedDatabaseChanges(_:))
  {
    v50 = v2[67];
    v51 = v2[50];
    v52 = v2[51];
    v53 = v2[49];
    (*(v2[65] + 96))(v50, v2[64]);
    (*(v51 + 32))(v52, v50, v53);
    v54 = sub_1001C54E8();
    v55 = *(v54 + 16);
    if (v55)
    {
      v56 = v2[47];
      v57 = v2[11];
      v59 = *(v56 + 16);
      v56 += 16;
      v58 = v59;
      v60 = v54 + ((*(v56 + 64) + 32) & ~*(v56 + 64));
      v61 = *(v56 + 56);
      v418 = (v56 - 8);
      v400 = v61;
      do
      {
        v62 = v424[48];
        v63 = v424[46];
        v58(v62, v60, v63);
        v64 = sub_1001C64B8();
        (*v418)(v62, v63);
        v65 = v64;
        v66 = sub_1001C5128();
        v67 = sub_1001C65B8();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = v58;
          v70 = v57;
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v427[0] = v72;
          *v68 = 136315394;
          *(v68 + 4) = sub_1001874E8(0xD000000000000020, 0x8000000100203E90, v427);
          *(v68 + 12) = 2114;
          *(v68 + 14) = v65;
          *v71 = v65;
          v65 = v65;
          _os_log_impl(&_mh_execute_header, v66, v67, "BDSSyncEngine - %s: %{public}@", v68, 0x16u);
          sub_10008875C(v71, &unk_1002718E0, &qword_1001F31F0);
          v57 = v70;
          v58 = v69;

          sub_10008E7BC(v72);

          v61 = v400;
        }

        v60 += v61;
        --v55;
      }

      while (v55);

      v2 = v424;
    }

    else
    {
    }

    v120 = v2[50];
    v119 = v2[51];
    v121 = v2[49];
    v122 = v2[11];
    v123 = sub_1001C54F8();
    sub_10017D590(v123);

LABEL_41:
    (*(v120 + 8))(v119, v121);
    goto LABEL_5;
  }

  if (v7 == enum case for CKSyncEngine.Event.fetchedRecordZoneChanges(_:))
  {
    v79 = v2[67];
    v80 = v2[44];
    v81 = v2[45];
    v82 = v2[43];
    (*(v2[65] + 96))(v79, v2[64]);
    (*(v80 + 32))(v81, v79, v82);
    v83 = sub_1001C5518();
    v84 = *(v83 + 16);
    v85 = "' is now being tracked";
    if (v84)
    {
      v86 = v2[41];
      v88 = *(v86 + 16);
      v87 = v86 + 16;
      v89 = v83 + ((*(v87 + 64) + 32) & ~*(v87 + 64));
      v412 = v88;
      v397 = *(v87 + 56);
      v401 = *(v2[11] + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_recordChangePublisher);
      do
      {
        v90 = v2[42];
        v91 = v2[40];
        v412(v90, v89, v91);
        v92 = sub_1001C6518();
        (*(v87 - 8))(v90, v91);
        v93 = v92;
        v94 = sub_1001C5128();
        v95 = sub_1001C65B8();

        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v427[0] = v98;
          *v96 = 136315394;
          *(v96 + 4) = sub_1001874E8(0xD000000000000017, 0x8000000100203E70, v427);
          *(v96 + 12) = 2112;
          v99 = [v93 recordID];
          *(v96 + 14) = v99;
          *v97 = v99;
          _os_log_impl(&_mh_execute_header, v94, v95, "BDSSyncEngine - %s: %@", v96, 0x16u);
          sub_10008875C(v97, &unk_1002718E0, &qword_1001F31F0);

          sub_10008E7BC(v98);
          v2 = v424;
        }

        v2[8] = v93;
        sub_1001C5178();

        v89 += v397;
        --v84;
      }

      while (v84);

      v85 = "[State] Item '%s' is now being tracked" + 16;
    }

    else
    {
    }

    v146 = v2[45];
    v147 = sub_1001C5528();
    v148 = *(v147 + 16);
    if (v148)
    {
      v149 = v2[38];
      v151 = *(v149 + 16);
      v149 += 16;
      v150 = v151;
      v152 = v147 + ((*(v149 + 64) + 32) & ~*(v149 + 64));
      v406 = *(v149 + 56);
      v413 = *(v2[11] + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_recordDeletionPublisher);
      v402 = (v149 - 8);
      v390 = *(v85 + 411);
      do
      {
        v153 = v2[39];
        v154 = v2[37];
        v150(v153, v152, v154);
        v155 = sub_1001C6548();
        sub_1001C6538();
        (*v402)(v153, v154);
        v156 = v155;
        v157 = sub_1001C5128();
        v158 = sub_1001C65B8();

        if (os_log_type_enabled(v157, v158))
        {
          v159 = swift_slowAlloc();
          v160 = swift_slowAlloc();
          v161 = v150;
          v162 = swift_slowAlloc();
          v427[0] = v162;
          *v159 = v390;
          *(v159 + 4) = sub_1001874E8(0xD000000000000030, 0x8000000100203E30, v427);
          *(v159 + 12) = 2112;
          *(v159 + 14) = v156;
          *v160 = v156;
          v163 = v156;
          _os_log_impl(&_mh_execute_header, v157, v158, "BDSSyncEngine - %s: %@", v159, 0x16u);
          sub_10008875C(v160, &unk_1002718E0, &qword_1001F31F0);
          v2 = v424;

          sub_10008E7BC(v162);
          v150 = v161;
        }

        v2[9] = v156;
        sub_1001C5178();

        v152 += v406;
        --v148;
      }

      while (v148);
    }

    (*(v2[44] + 8))(v2[45], v2[43]);
    goto LABEL_5;
  }

  if (v7 == enum case for CKSyncEngine.Event.sentDatabaseChanges(_:))
  {
    v106 = v2[67];
    v107 = v2[36];
    v108 = v2[33];
    v109 = v2[34];
    (*(v2[65] + 96))(v106, v2[64]);
    (*(v109 + 32))(v107, v106, v108);
    v110 = sub_1001C5408();
    if (v110 >> 62)
    {
      v249 = sub_1001C6B38();

      if (!v249)
      {
LABEL_93:
        v250 = v2[36];
        v251 = *(sub_1001C5438() + 16);

        if (v251)
        {
          v252 = v2[11];
          (*(v2[34] + 16))(v2[35], v2[36], v2[33]);
          v253 = sub_1001C5128();
          v254 = sub_1001C6598();
          v255 = os_log_type_enabled(v253, v254);
          v257 = v2[34];
          v256 = v2[35];
          v258 = v2[33];
          if (v255)
          {
            v259 = swift_slowAlloc();
            v260 = swift_slowAlloc();
            v427[0] = v260;
            *v259 = 136446210;
            sub_1001C5438();
            sub_1001C5418();
            v261 = sub_1001C62A8();
            v263 = v262;

            (*(v257 + 8))(v256, v258);
            v264 = sub_1001874E8(v261, v263, v427);

            *(v259 + 4) = v264;
            _os_log_impl(&_mh_execute_header, v253, v254, "BDSSyncEngine - failedZoneSaves: %{public}s", v259, 0xCu);
            sub_10008E7BC(v260);
          }

          else
          {

            (*(v257 + 8))(v256, v258);
          }

          v2 = v424;
        }

        v265 = v2[36];
        v266 = sub_1001C5428();
        if (v266 >> 62)
        {
          v285 = sub_1001C6B38();

          if (!v285)
          {
            goto LABEL_114;
          }
        }

        else
        {
          v267 = *((v266 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v267)
          {
LABEL_114:
            v286 = v2[36];
            v287 = *(sub_1001C5448() + 16);

            v288 = v2[36];
            if (v287)
            {
              v289 = v2[11];
              v290 = sub_1001C5448();
              v291 = 0;
              v292 = v290 + 64;
              v421 = v290;
              v293 = -1;
              v294 = -1 << *(v290 + 32);
              if (-v294 < 64)
              {
                v293 = ~(-1 << -v294);
              }

              v138 = v293 & *(v290 + 64);
              v1 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_logger;
              v295 = (63 - v294) >> 6;
              v407 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_logger;
LABEL_119:
              if (v138)
              {
                goto LABEL_124;
              }

              while (1)
              {
                v296 = v291 + 1;
                if (__OFADD__(v291, 1))
                {
                  break;
                }

                if (v296 >= v295)
                {
                  v2 = v424;
                  (*(v424[34] + 8))(v424[36], v424[33]);

                  goto LABEL_5;
                }

                v138 = *(v292 + 8 * v296);
                ++v291;
                if (v138)
                {
                  v291 = v296;
LABEL_124:
                  v297 = (v291 << 9) | (8 * __clz(__rbit64(v138)));
                  v298 = *(*(v421 + 56) + v297);
                  v299 = *(*(v421 + 48) + v297);
                  v300 = v298;
                  v301 = v299;
                  v302 = v300;
                  v303 = sub_1001C5128();
                  v304 = sub_1001C65B8();

                  if (os_log_type_enabled(v303, v304))
                  {
                    v305 = swift_slowAlloc();
                    v306 = swift_slowAlloc();
                    *v305 = 138543618;
                    *(v305 + 4) = v301;
                    *v306 = v301;
                    *(v305 + 12) = 2114;
                    v307 = v301;
                    v308 = v302;
                    v309 = _swift_stdlib_bridgeErrorToNSError();
                    *(v305 + 14) = v309;
                    v306[1] = v309;
                    _os_log_impl(&_mh_execute_header, v303, v304, "BDSSyncEngine - failedToDeleteRecordZoneWith recordZoneID: %{public}@, error: %{public}@", v305, 0x16u);
                    sub_100084528(&unk_1002718E0, &qword_1001F31F0);
                    swift_arrayDestroy();

                    v1 = v407;
                  }

                  v138 &= v138 - 1;

                  goto LABEL_119;
                }
              }

              __break(1u);
              goto LABEL_129;
            }

            (*(v2[34] + 8))(v2[36], v2[33]);
LABEL_5:
            v18 = v2[67];
            v19 = v2[66];
            v20 = v2[63];
            v21 = v2[60];
            v22 = v2[57];
            v23 = v2[54];
            v24 = v2;
            v25 = v2[51];
            v26 = v24[48];
            v27 = v24[45];
            v28 = v24[42];
            v386 = v24[39];
            v387 = v24[36];
            v388 = v24[35];
            v389 = v24[32];
            v392 = v24[29];
            v394 = v24[26];
            v396 = v24[25];
            v399 = v24[22];
            v405 = v24[19];
            v411 = v24[18];
            v417 = v24[15];
            v425 = v24[14];

            v29 = v24[1];

            return v29();
          }
        }

        v268 = v2[36];
        result = sub_1001C5428();
        v269 = result;
        if (result >> 62)
        {
          result = sub_1001C6B38();
          v270 = result;
          if (result)
          {
LABEL_102:
            if (v270 >= 1)
            {
              v271 = 0;
              v272 = v2[11];
              v273 = v269 & 0xC000000000000001;
              do
              {
                if (v273)
                {
                  v274 = sub_1001C69F8();
                }

                else
                {
                  v274 = *(v269 + 8 * v271 + 32);
                }

                v275 = v274;
                v276 = sub_1001C5128();
                v277 = sub_1001C65B8();

                if (os_log_type_enabled(v276, v277))
                {
                  v278 = v273;
                  v279 = v272;
                  v280 = v270;
                  v281 = v269;
                  v282 = swift_slowAlloc();
                  v283 = swift_slowAlloc();
                  *v282 = 138543362;
                  *(v282 + 4) = v275;
                  *v283 = v275;
                  v284 = v275;
                  _os_log_impl(&_mh_execute_header, v276, v277, "BDSSyncEngine - didDeleteRecordZoneWith recordZoneID: %{public}@", v282, 0xCu);
                  sub_10008875C(v283, &unk_1002718E0, &qword_1001F31F0);
                  v2 = v424;

                  v269 = v281;
                  v270 = v280;
                  v272 = v279;
                  v273 = v278;
                }

                ++v271;
              }

              while (v270 != v271);
              goto LABEL_113;
            }

LABEL_165:
            __break(1u);
            goto LABEL_166;
          }
        }

        else
        {
          v270 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v270)
          {
            goto LABEL_102;
          }
        }

LABEL_113:

        goto LABEL_114;
      }
    }

    else
    {
      v111 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v111)
      {
        goto LABEL_93;
      }
    }

    v112 = v2[36];
    result = sub_1001C5408();
    v113 = result;
    if (result >> 62)
    {
      result = sub_1001C6B38();
      v114 = result;
      if (result)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v114 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v114)
      {
LABEL_33:
        if (v114 < 1)
        {
          __break(1u);
          goto LABEL_165;
        }

        for (i = 0; i != v114; ++i)
        {
          if ((v113 & 0xC000000000000001) != 0)
          {
            v116 = sub_1001C69F8();
          }

          else
          {
            v116 = *(v113 + 8 * i + 32);
          }

          v117 = v116;
          v118 = v2[11];
          sub_10017DBA8(v116);
        }
      }
    }

    goto LABEL_93;
  }

  if (v7 != enum case for CKSyncEngine.Event.sentRecordZoneChanges(_:))
  {
    if (v7 == enum case for CKSyncEngine.Event.willFetchChanges(_:))
    {
      v164 = v2[11] + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_logger;
      v165 = sub_1001C5128();
      v166 = sub_1001C65B8();
      if (os_log_type_enabled(v165, v166))
      {
        v167 = swift_slowAlloc();
        *v167 = 0;
        _os_log_impl(&_mh_execute_header, v165, v166, "BDSSyncEngine - willFetchChanges", v167, 2u);
      }

      v168 = v2[67];
      v169 = v2[65];
      v170 = v2[64];

      goto LABEL_66;
    }

    v171 = v2[64];
    if (v7 == enum case for CKSyncEngine.Event.willFetchRecordZoneChanges(_:))
    {
      v172 = v2[67];
      v173 = v2[25];
      v174 = v2[26];
      v175 = v2[23];
      v176 = v2[24];
      v177 = v2[11];
      (*(v2[65] + 96))(v172, v171);
      (*(v176 + 32))(v174, v172, v175);
      (*(v176 + 16))(v173, v174, v175);
      v178 = sub_1001C5128();
      v179 = sub_1001C65B8();
      v180 = os_log_type_enabled(v178, v179);
      v181 = v2[25];
      v182 = v2[26];
      v183 = v2[23];
      v184 = v2[24];
      if (v180)
      {
        v185 = swift_slowAlloc();
        v186 = swift_slowAlloc();
        *v185 = 138543362;
        v187 = sub_1001C5578();
        v188 = *(v184 + 8);
        v188(v181, v183);
        *(v185 + 4) = v187;
        *v186 = v187;
        _os_log_impl(&_mh_execute_header, v178, v179, "BDSSyncEngine - willFetchRecordZoneChanges: %{public}@", v185, 0xCu);
        sub_10008875C(v186, &unk_1002718E0, &qword_1001F31F0);
        v2 = v424;

        v188(v182, v183);
      }

      else
      {

        v201 = *(v184 + 8);
        v201(v181, v183);
        v201(v182, v183);
      }

      goto LABEL_5;
    }

    if (v7 == enum case for CKSyncEngine.Event.didFetchRecordZoneChanges(_:))
    {
      v189 = v2[67];
      v190 = v2[21];
      v191 = v2[22];
      v192 = v2[20];
      (*(v2[65] + 96))(v189, v171);
      (*(v190 + 32))(v191, v189, v192);
      v193 = sub_1001C5548();
      if (v193)
      {
        v194 = v193;
        v195 = v2[22];
        v196 = v2[11];
        v197 = sub_1001C5558();
        v198 = v194;
        sub_10017F324(v197);
      }

      v120 = v2[21];
      v119 = v2[22];
      v121 = v2[20];
      v199 = v2[11];
      v200 = sub_1001C5558();
      sub_10017F744(v200);

      goto LABEL_41;
    }

    if (v7 == enum case for CKSyncEngine.Event.didFetchChanges(_:))
    {
      v168 = v2[67];
      v169 = v2[65];
      v202 = v2[11];
      v170 = v2[64];
      sub_10017F8D0();
LABEL_66:
      (*(v169 + 8))(v168, v170);
      goto LABEL_5;
    }

    if (v7 == enum case for CKSyncEngine.Event.willSendChanges(_:))
    {
      v203 = v2[67];
      v204 = v2[18];
      v205 = v2[19];
      v206 = v2[16];
      v207 = v2[17];
      v208 = v2[11];
      (*(v2[65] + 96))(v203, v171);
      (*(v207 + 32))(v205, v203, v206);
      (*(v207 + 16))(v204, v205, v206);
      v209 = sub_1001C5128();
      v210 = sub_1001C65B8();
      v211 = os_log_type_enabled(v209, v210);
      v212 = v2[18];
      v213 = v2[19];
      v214 = v2[16];
      v215 = v2[17];
      if (v211)
      {
        v216 = swift_slowAlloc();
        v217 = swift_slowAlloc();
        v427[0] = v217;
        *v216 = 136446210;
        sub_1001826B0(&qword_100273D48, &type metadata accessor for CKSyncEngine.Event.WillSendChanges);
        v218 = sub_1001C6CC8();
        v220 = v219;
        v419 = v213;
        v221 = *(v215 + 8);
        v221(v212, v214);
        v222 = sub_1001874E8(v218, v220, v427);

        *(v216 + 4) = v222;
        v223 = "BDSSyncEngine - willSendChanges: %{public}s";
LABEL_83:
        _os_log_impl(&_mh_execute_header, v209, v210, v223, v216, 0xCu);
        sub_10008E7BC(v217);

        v2 = v424;

        v221(v419, v214);
        goto LABEL_5;
      }
    }

    else
    {
      if (v7 != enum case for CKSyncEngine.Event.didSendChanges(_:))
      {
        v236 = v2[11];
        v6(v2[66], v2[10], v2[64]);
        v237 = sub_1001C5128();
        v238 = sub_1001C6598();
        v239 = os_log_type_enabled(v237, v238);
        v240 = v2[66];
        v241 = v2[65];
        v242 = v2[64];
        if (v239)
        {
          v243 = swift_slowAlloc();
          v420 = swift_slowAlloc();
          v427[0] = v420;
          *v243 = 136315138;
          sub_1001826B0(&qword_100273D38, &type metadata accessor for CKSyncEngine.Event);
          v244 = sub_1001C6CC8();
          v246 = v245;
          v247 = *(v241 + 8);
          v247(v240, v242);
          v248 = sub_1001874E8(v244, v246, v427);

          *(v243 + 4) = v248;
          _os_log_impl(&_mh_execute_header, v237, v238, "BDSSyncEngine - handleEvent - unhandled event: %s", v243, 0xCu);
          sub_10008E7BC(v420);
        }

        else
        {

          v247 = *(v241 + 8);
          v247(v240, v242);
        }

        v2 = v424;
        v247(v424[67], v424[64]);
        goto LABEL_5;
      }

      v224 = v2[67];
      v225 = v2[14];
      v226 = v2[15];
      v227 = v2[12];
      v228 = v2[13];
      v229 = v2[11];
      (*(v2[65] + 96))(v224, v171);
      (*(v228 + 32))(v226, v224, v227);
      (*(v228 + 16))(v225, v226, v227);
      v209 = sub_1001C5128();
      v210 = sub_1001C65B8();
      v230 = os_log_type_enabled(v209, v210);
      v212 = v2[14];
      v213 = v2[15];
      v214 = v2[12];
      v215 = v2[13];
      if (v230)
      {
        v216 = swift_slowAlloc();
        v217 = swift_slowAlloc();
        v427[0] = v217;
        *v216 = 136446210;
        sub_1001826B0(&qword_100273D40, &type metadata accessor for CKSyncEngine.Event.DidSendChanges);
        v231 = sub_1001C6CC8();
        v233 = v232;
        v419 = v213;
        v221 = *(v215 + 8);
        v221(v212, v214);
        v234 = sub_1001874E8(v231, v233, v427);

        *(v216 + 4) = v234;
        v223 = "BDSSyncEngine - didSendChanges: %{public}s";
        goto LABEL_83;
      }
    }

    v235 = *(v215 + 8);
    v235(v212, v214);
    v235(v213, v214);
    goto LABEL_5;
  }

  v134 = v2[67];
  v135 = v2[31];
  v136 = v2[32];
  v137 = v2[30];
  (*(v2[65] + 96))(v134, v2[64]);
  (*(v135 + 32))(v136, v134, v137);
  v426 = &_swiftEmptySetSingleton;
  result = sub_1001C54C8();
  v138 = result;
  if (!(result >> 62))
  {
    v139 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v139)
    {
      goto LABEL_130;
    }

    goto LABEL_49;
  }

LABEL_129:
  result = sub_1001C6B38();
  v139 = result;
  if (!result)
  {
    goto LABEL_130;
  }

LABEL_49:
  if (v139 >= 1)
  {
    v140 = 0;
    do
    {
      if ((v138 & 0xC000000000000001) != 0)
      {
        v141 = sub_1001C69F8();
      }

      else
      {
        v141 = *(v138 + 8 * v140 + 32);
      }

      v142 = v141;
      v143 = v424[11];
      ++v140;
      v144 = sub_1001C6758();
      sub_100178A6C(v427, v144, v145);

      sub_10017DF84(v142);
    }

    while (v139 != v140);
LABEL_130:
    v310 = v424;
    v311 = v424[32];

    v312 = sub_1001C5498();
    v313 = *(v312 + 16);
    if (v313)
    {
      v314 = 0;
      v315 = v424[28];
      v316 = *(v315 + 16);
      v315 += 16;
      v395 = v316;
      v317 = v312 + ((*(v315 + 64) + 32) & ~*(v315 + 64));
      v393 = *(v315 + 56);
      v403 = (v424 + 2);
      v391 = (v315 - 8);
      do
      {
        v395(v424[29], v317, v424[27]);
        v318 = sub_1001C5478();
        v319 = [v318 recordID];

        v320 = [v319 recordName];
        v321 = sub_1001C6018();
        v323 = v322;

        v424[2] = 46;
        v424[3] = 0xE100000000000000;
        v324 = swift_task_alloc();
        *(v324 + 16) = v403;
        v325 = sub_1000F55C0(0x7FFFFFFFFFFFFFFFLL, 1, sub_10018344C, v324, v321, v323, v403);

        if (!v325[2])
        {
          goto LABEL_159;
        }

        v326 = v424[29];
        v408 = v424[27];
        v414 = v424[11];
        v327 = v317;
        v328 = v325[4];
        v1 = v325[5];
        v422 = v313;
        v329 = v325[6];
        v330 = v325[7];

        v331 = sub_1001C60B8();
        v333 = v332;

        sub_100178A6C(v427, v331, v333);

        v334 = sub_1001C5468();
        (*v391)(v326, v408);
        sub_10017E2B4(v319, v334);

        v317 = v327 + v393;
        v313 = v422 - 1;
      }

      while (v422 != 1);
    }

    else
    {

      v314 = 0;
    }

    v335 = v424[32];
    result = sub_1001C54B8();
    v1 = result;
    if (result >> 62)
    {
      goto LABEL_162;
    }

    v336 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v423 = 0;
    if (v336)
    {
      goto LABEL_138;
    }

    while (1)
    {
LABEL_146:
      v410 = (v310 + 6);
      v356 = v310[32];

      v357 = sub_1001C54A8();
      v358 = 0;
      v359 = v357 + 64;
      v416 = v357;
      v360 = -1;
      v361 = -1 << *(v357 + 32);
      if (-v361 < 64)
      {
        v360 = ~(-1 << -v361);
      }

      v362 = v360 & *(v357 + 64);
      v363 = (63 - v361) >> 6;
      v398 = v363;
      for (j = v357 + 64; v362; v359 = j)
      {
        v364 = v358;
        v2 = v424;
LABEL_154:
        v365 = (v364 << 9) | (8 * __clz(__rbit64(v362)));
        v366 = *(*(v416 + 56) + v365);
        v1 = *(*(v416 + 48) + v365);
        v310 = v366;
        v367 = [v1 recordName];
        v368 = sub_1001C6018();
        v370 = v369;

        v2[6] = 46;
        v2[7] = 0xE100000000000000;
        v371 = swift_task_alloc();
        *(v371 + 16) = v410;
        v372 = v370;
        v314 = v423;
        v373 = sub_1000F55C0(0x7FFFFFFFFFFFFFFFLL, 1, sub_10018387C, v371, v368, v372, v410);

        if (!v373[2])
        {
          goto LABEL_161;
        }

        v374 = v2[11];
        v362 &= v362 - 1;
        v375 = v373[4];
        v376 = v373[5];
        v377 = v373[6];
        v378 = v373[7];

        v379 = sub_1001C60B8();
        v381 = v380;

        sub_100178A6C(v427, v379, v381);

        v314 = v310;
        sub_10017EEE8(v1, v314);

        v358 = v364;
        v363 = v398;
      }

      v2 = v424;
      while (1)
      {
        v364 = v358 + 1;
        if (__OFADD__(v358, 1))
        {
          break;
        }

        if (v364 >= v363)
        {
          v383 = v424[31];
          v382 = v424[32];
          v384 = v424[30];
          v385 = v424[11];

          sub_10017EAE0(v426);

          (*(v383 + 8))(v382, v384);
          goto LABEL_5;
        }

        v362 = *(v359 + 8 * v364);
        ++v358;
        if (v362)
        {
          goto LABEL_154;
        }
      }

      __break(1u);
LABEL_159:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        result = sub_1001C6B38();
        v336 = result;
        v423 = v314;
        if (!result)
        {
          break;
        }

LABEL_138:
        if (v336 < 1)
        {
          goto LABEL_167;
        }

        v337 = 0;
        v409 = v1 & 0xC000000000000001;
        v415 = (v310 + 4);
        while (1)
        {
          v338 = v409 ? sub_1001C69F8() : *(v1 + 8 * v337 + 32);
          v339 = v338;
          v310 = v423;
          v340 = [v338 recordName];
          v341 = sub_1001C6018();
          v343 = v342;

          v424[4] = 46;
          v424[5] = 0xE100000000000000;
          v344 = swift_task_alloc();
          *(v344 + 16) = v415;
          v345 = v343;
          v314 = v423;
          v346 = sub_1000F55C0(0x7FFFFFFFFFFFFFFFLL, 1, sub_10018387C, v344, v341, v345, v415);

          if (!v346[2])
          {
            break;
          }

          v347 = v424[11];
          ++v337;
          v348 = v346[4];
          v349 = v346[5];
          v350 = v336;
          v351 = v1;
          v352 = v346[6];
          v353 = v346[7];

          v314 = sub_1001C60B8();
          v355 = v354;
          v1 = v351;
          v336 = v350;

          sub_100178A6C(v427, v314, v355);

          sub_10017E6F0(v339);

          if (v350 == v337)
          {
            v310 = v424;
            goto LABEL_146;
          }
        }
      }
    }
  }

LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
  return result;
}

uint64_t sub_1001825D4@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_registeredDataSourceByRecordType;
  swift_beginAccess();
  *a1 = *(v3 + v4);
}

uint64_t sub_100182640(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_100270B80, &unk_1001F3528);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001826B0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001826F8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v22 = 0;
  v23 = a4;
  v20 = a2;
  v21 = a1;
  v4 = 0;
  v24 = a3;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v25 = *(*(v24 + 48) + 8 * v13);
    __chkstk_darwin(a1);
    v19[2] = &v25;
    v15 = v14;
    v16 = sub_1001A9AD0(sub_1001838C0, v19, v23);

    if (v16)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        v18 = v24;

        sub_100156C94(v21, v20, v22, v18);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1001828A0(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;
  v31 = a2;

  if (v4 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26 = &v26;
    v27 = v5;
    __chkstk_darwin(v7);
    v28 = &v26 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v6);
    v29 = 0;
    v30 = v2;
    v5 = 0;
    v10 = *(v2 + 56);
    v2 += 56;
    v9 = v10;
    v11 = 1 << *(v2 - 24);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v6 = (v11 + 63) >> 6;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v17 = v14 | (v5 << 6);
      v32 = *(*(v30 + 48) + 8 * v17);
      __chkstk_darwin(v8);
      *(&v26 - 2) = &v32;
      v19 = v18;
      v20 = sub_1001A9AD0(sub_1001838C0, (&v26 - 4), v31);

      if (v20)
      {
        *&v28[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_100156C94(v28, v27, v29, v30);
          goto LABEL_17;
        }
      }
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v6)
      {
        goto LABEL_16;
      }

      v16 = *(v2 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = v31;

  v22 = sub_100178714(v24, v5, v2, v25);

LABEL_17:

  return v22;
}

Swift::Int sub_100182B60(uint64_t a1, unint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1001828A0(a1, a2);
  }

  v3 = &_swiftEmptySetSingleton;
  v24 = &_swiftEmptySetSingleton;

  sub_1001C68F8();
  v4 = sub_1001C6928();
  if (v4)
  {
    v5 = v4;
    sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
    v6 = v5;
    do
    {
      v22 = v6;
      v7 = swift_dynamicCast();
      v22 = v23;
      __chkstk_darwin(v7);
      v21[2] = &v22;
      v8 = sub_1001A9AD0(sub_1001833C8, v21, a2);
      v9 = v23;
      if (v8)
      {
        v10 = v3[2];
        if (v3[3] <= v10)
        {
          sub_100178468(v10 + 1);
        }

        v3 = v24;
        result = sub_1001C6798(v24[5]);
        v12 = (v3 + 7);
        v13 = -1 << *(v3 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~v3[(v14 >> 6) + 7]) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~v3[(v14 >> 6) + 7])) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v15 == v18;
            if (v15 == v18)
            {
              v15 = 0;
            }

            v17 |= v19;
            v20 = *&v12[8 * v15];
          }

          while (v20 == -1);
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
        }

        *&v12[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        *(v3[6] + 8 * v16) = v9;
        ++v3[2];
      }

      else
      {
      }

      v6 = sub_1001C6928();
    }

    while (v6);
  }

  return v3;
}

uint64_t sub_100182DC4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1001C5648();
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001C5688();
  v23 = *(v10 - 8);
  v24 = v10;
  v11 = *(v23 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = sub_1001C5128();
  v15 = sub_1001C65B8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_1001874E8(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v14, v15, "BDSSyncEngine - updatedSaltWithVersion %{public}s", v16, 0xCu);
    sub_10008E7BC(v17);
  }

  v18 = *(v3 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a1;
  v20[4] = a2;
  aBlock[4] = sub_10018337C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_10024B540;
  v21 = _Block_copy(aBlock);

  sub_1001C5668();
  v26 = _swiftEmptyArrayStorage;
  sub_1001826B0(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v21);
  (*(v25 + 8))(v9, v6);
  (*(v23 + 8))(v13, v24);
}

uint64_t sub_1001831B4()
{
  result = sub_1001C5148();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1001832B4(uint64_t a1, uint64_t a2)
{
  v4 = _s14PricingServiceV12FetchedPriceVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100183318(uint64_t a1, uint64_t a2)
{
  v4 = _s14PricingServiceV12FetchedPriceVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10018337C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_100175F4C();
}

uint64_t sub_100183388()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001833E4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
  return sub_1001C67A8() & 1;
}

uint64_t sub_100183484()
{
  v1 = sub_1001C55A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100183560(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_1001C55A8() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100183604(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10009B25C;

  return sub_100172BF8(a1, v4, v5, v7, v6);
}

uint64_t sub_1001836D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10009B25C;

  return sub_10017C43C(a1, v5);
}

uint64_t sub_100183788(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10009AAEC;

  return sub_10017C43C(a1, v5);
}

uint64_t ReadingHistoryUpdate.days.getter()
{
  v1 = OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days;
  if (*(v0 + OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days))
  {
    v2 = *(v0 + OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days);
  }

  else
  {
    v2 = sub_100185F78(v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

id ReadingHistoryUpdate.coalesce(newerUpdate:)(char *a1)
{
  ObjectType = swift_getObjectType();
  v89 = sub_1001C4CA8();
  v3 = *(v89 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v89);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v81 = &v72 - v8;
  v9 = sub_100084528(&qword_100273D90, &qword_1001F7E40);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v84 = &v72 - v14;
  v73 = v1;
  v74 = a1;
  v15 = &v1[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  v16 = *&v1[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  v75 = &a1[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  v76 = v15;
  v17 = *&a1[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  v18 = *(v17 + 64);
  v79 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v78 = (v19 + 63) >> 6;
  v85 = v3 + 16;
  v86 = v3;
  v87 = (v3 + 32);
  v83 = (v3 + 8);

  v82 = v17;

  v22 = 0;
  v23 = &qword_100273D98;
  v88 = v7;
  v80 = v13;
  while (1)
  {
    if (!v21)
    {
      if (v78 <= v22 + 1)
      {
        v28 = v22 + 1;
      }

      else
      {
        v28 = v78;
      }

      v29 = v28 - 1;
      v30 = v84;
      while (1)
      {
        v27 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v27 >= v78)
        {
          v63 = sub_100084528(&qword_100273D98, &qword_1001F7E48);
          (*(*(v63 - 8) + 56))(v13, 1, 1, v63);
          v21 = 0;
          goto LABEL_16;
        }

        v21 = *(v79 + 8 * v27);
        ++v22;
        if (v21)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v27 = v22;
LABEL_15:
    v31 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v32 = v31 | (v27 << 6);
    v33 = v82;
    v34 = v86;
    (*(v86 + 16))(v81, *(v82 + 48) + *(v86 + 72) * v32, v89);
    v35 = (*(v33 + 56) + 16 * v32);
    v36 = *v35;
    v37 = v35[1];
    v38 = sub_100084528(&qword_100273D98, &qword_1001F7E48);
    v39 = &v80[*(v38 + 48)];
    v40 = *(v34 + 32);
    v41 = v80;
    v40();
    *v39 = v36;
    v39[1] = v37;
    (*(*(v38 - 8) + 56))(v41, 0, 1, v38);
    v42 = v37;
    v13 = v41;
    sub_10009AD9C(v36, v42);
    v29 = v27;
    v30 = v84;
LABEL_16:
    sub_10009AE58(v13, v30, &qword_100273D90, &qword_1001F7E40);
    v43 = sub_100084528(&qword_100273D98, &qword_1001F7E48);
    if ((*(*(v43 - 8) + 48))(v30, 1, v43) == 1)
    {

      v23 = *(v76 + 1);
      v29 = *(v75 + 1);
      if (v29 >= v23)
      {
LABEL_31:
        v68 = ObjectType;
        v69 = objc_allocWithZone(ObjectType);
        *&v69[OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days] = 0;
        v70 = &v69[OBJC_IVAR___BDSReadingHistoryUpdate_value];
        *v70 = v16;
        *(v70 + 1) = v29;
        v91.receiver = v69;
        v91.super_class = v68;
        return objc_msgSendSuper2(&v91, "init");
      }

      LOBYTE(v30) = sub_1001C6598();
      if (qword_10026EBE8 == -1)
      {
LABEL_29:
        v64 = qword_1002711E8;
        if (os_log_type_enabled(qword_1002711E8, v30))
        {
          v65 = v73;
          v66 = v74;
          v67 = swift_slowAlloc();
          *v67 = 134218240;
          *(v67 + 4) = v23;

          *(v67 + 12) = 2048;
          *(v67 + 14) = v29;

          _os_log_impl(&_mh_execute_header, v64, v30, "ReadingHistoryUpdate: coalesce - unexpected editGeneration=%ld, newerUpdate.editGeneration=%ld", v67, 0x16u);
        }

        goto LABEL_31;
      }

LABEL_35:
      swift_once();
      goto LABEL_29;
    }

    v44 = v13;
    v45 = (v30 + *(v43 + 48));
    v47 = *v45;
    v46 = v45[1];
    v48 = v88;
    (*v87)(v88, v30, v89);
    sub_10009AD9C(v47, v46);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = v16;
    v23 = sub_100187AA4(v48);
    v51 = v16[2];
    v52 = (v50 & 1) == 0;
    v53 = v51 + v52;
    if (__OFADD__(v51, v52))
    {
      goto LABEL_33;
    }

    v54 = v50;
    if (v16[3] < v53)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10018AC44();
    }

LABEL_23:
    v13 = v44;
    v16 = v90;
    if (v54)
    {
      v24 = (v90[7] + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      *v24 = v47;
      v24[1] = v46;
      sub_1000887D0(v25, v26);
      sub_1000887D0(v47, v46);
      (*v83)(v88, v89);
    }

    else
    {
      v90[(v23 >> 6) + 8] |= 1 << v23;
      v57 = v86;
      v58 = v88;
      v30 = v89;
      (*(v86 + 16))(v16[6] + *(v86 + 72) * v23, v88, v89);
      v59 = (v16[7] + 16 * v23);
      *v59 = v47;
      v59[1] = v46;
      sub_1000887D0(v47, v46);
      (*(v57 + 8))(v58, v30);
      v60 = v16[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_34;
      }

      v16[2] = v62;
    }

    v22 = v29;
    v23 = &qword_100273D98;
  }

  sub_100188E3C(v53, isUniquelyReferenced_nonNull_native);
  v55 = sub_100187AA4(v88);
  if ((v54 & 1) == (v56 & 1))
  {
    v23 = v55;
    goto LABEL_23;
  }

  result = sub_1001C6D68();
  __break(1u);
  return result;
}

BOOL ReadingHistoryUpdate.hasDelta(from:)(uint64_t a1)
{
  v129 = a1;
  v2 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v128 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v134 = &v109 - v6;
  v127 = type metadata accessor for ReadingHistoryDay(0);
  v7 = *(v127 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v127);
  v112 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v113 = &v109 - v12;
  v13 = __chkstk_darwin(v11);
  v110 = &v109 - v14;
  v15 = __chkstk_darwin(v13);
  v125 = &v109 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v109 - v18;
  __chkstk_darwin(v17);
  v119 = &v109 - v20;
  v21 = sub_1001C4CA8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v111 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v109 = &v109 - v27;
  v28 = __chkstk_darwin(v26);
  v131 = &v109 - v29;
  __chkstk_darwin(v28);
  v117 = &v109 - v30;
  v31 = sub_100084528(&qword_100273DA8, &qword_1001F7E58);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v35 = &v109 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = &v109 - v36;
  v38 = ReadingHistoryUpdate.days.getter();
  v39 = 0;
  v40 = *(v38 + 64);
  v114 = v38 + 64;
  v41 = 1 << *(v38 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & v40;
  v44 = (v41 + 63) >> 6;
  v122 = (v22 + 16);
  v123 = v38;
  v132 = (v22 + 32);
  v133 = v21;
  v120 = v7;
  v121 = v19;
  v126 = (v7 + 48);
  v118 = v22;
  v45 = (v22 + 8);
  v46 = v37;
  v130 = v45;
  v115 = v37;
  v116 = v35;
  if (v43)
  {
    while (1)
    {
      v47 = v39;
LABEL_12:
      v50 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
      v51 = v50 | (v47 << 6);
      v52 = v123;
      v53 = v118;
      (*(v118 + 16))(v117, *(v123 + 48) + *(v118 + 72) * v51, v133);
      v54 = v119;
      sub_10018C0E8(*(v52 + 56) + *(v120 + 72) * v51, v119, type metadata accessor for ReadingHistoryDay);
      v55 = sub_100084528(&unk_100273DB0, &qword_1001F7E60);
      v56 = *(v55 + 48);
      v35 = v116;
      (*(v53 + 32))();
      sub_10018C150(v54, &v35[v56], type metadata accessor for ReadingHistoryDay);
      (*(*(v55 - 8) + 56))(v35, 0, 1, v55);
      v49 = v47;
      v19 = v121;
      v46 = v115;
LABEL_13:
      sub_10009AE58(v35, v46, &qword_100273DA8, &qword_1001F7E58);
      v57 = sub_100084528(&unk_100273DB0, &qword_1001F7E60);
      v58 = (*(*(v57 - 8) + 48))(v46, 1, v57);
      if (v58 == 1)
      {
        break;
      }

      v124 = v58;
      v59 = *(v57 + 48);
      v60 = v131;
      v61 = v133;
      (*v132)(v131, v46, v133);
      sub_10018C150(v46 + v59, v19, type metadata accessor for ReadingHistoryDay);
      v62 = v134;
      ReadingHistoryModel.readingHistoryDay(for:)(v134);
      v63 = v62;
      v64 = v128;
      sub_10018AED0(v63, v128);
      if ((*v126)(v64, 1, v127) == 1)
      {
        sub_10018AF40(v64);
        v68 = sub_1001C65B8();
        if (qword_10026EBE8 != -1)
        {
          swift_once();
        }

        v69 = qword_1002711E8;
        v70 = v111;
        (*v122)(v111, v60, v61);
        v71 = v112;
        sub_10018C0E8(v19, v112, type metadata accessor for ReadingHistoryDay);
        if (os_log_type_enabled(v69, v68))
        {
          v72 = swift_slowAlloc();
          v135[0] = swift_slowAlloc();
          *v72 = 136315394;
          sub_10018C2C8(&qword_100270A80, &type metadata accessor for Date);
          v73 = sub_1001C6CC8();
          v74 = v70;
          v76 = v75;
          v77 = *v130;
          (*v130)(v74, v61);
          v78 = sub_1001874E8(v73, v76, v135);

          *(v72 + 4) = v78;
          *(v72 + 12) = 2080;
          v79 = ReadingHistoryDay.description.getter();
          v81 = v80;
          sub_10018AFA8(v71);
          v82 = sub_1001874E8(v79, v81, v135);

          *(v72 + 14) = v82;
          _os_log_impl(&_mh_execute_header, v69, v68, "ReadingHistoryUpdate: has forward delta for %s - day=%s modelDay=nil", v72, 0x16u);
          swift_arrayDestroy();

          sub_10018AF40(v134);
          sub_10018AFA8(v121);
          v83 = v131;
          v84 = v61;
          goto LABEL_29;
        }

        sub_10018AFA8(v71);
        v107 = *v130;
        (*v130)(v70, v61);
        goto LABEL_32;
      }

      v65 = v64;
      v66 = v125;
      sub_10018C150(v65, v125, type metadata accessor for ReadingHistoryDay);
      sub_10018C2C8(&qword_100273DC0, type metadata accessor for ReadingHistoryDay);
      v1 = v19;
      if (sub_1001C5948())
      {
        v85 = sub_1001C65B8();
        if (qword_10026EBE8 != -1)
        {
          swift_once();
        }

        v86 = qword_1002711E8;
        v87 = v109;
        (*v122)(v109, v60, v61);
        v88 = v110;
        sub_10018C0E8(v19, v110, type metadata accessor for ReadingHistoryDay);
        v89 = v125;
        v90 = v113;
        sub_10018C0E8(v125, v113, type metadata accessor for ReadingHistoryDay);
        if (os_log_type_enabled(v86, v85))
        {
          v91 = v88;
          v92 = swift_slowAlloc();
          v135[0] = swift_slowAlloc();
          *v92 = 136315650;
          sub_10018C2C8(&qword_100270A80, &type metadata accessor for Date);
          v93 = sub_1001C6CC8();
          v94 = v87;
          v96 = v95;
          LODWORD(v132) = v85;
          v77 = *v130;
          (*v130)(v94, v61);
          v97 = sub_1001874E8(v93, v96, v135);

          *(v92 + 4) = v97;
          *(v92 + 12) = 2080;
          v98 = ReadingHistoryDay.description.getter();
          v100 = v99;
          sub_10018AFA8(v91);
          v101 = sub_1001874E8(v98, v100, v135);

          *(v92 + 14) = v101;
          *(v92 + 22) = 2080;
          v102 = v113;
          v103 = ReadingHistoryDay.description.getter();
          v105 = v104;
          sub_10018AFA8(v102);
          v106 = sub_1001874E8(v103, v105, v135);

          *(v92 + 24) = v106;
          _os_log_impl(&_mh_execute_header, v86, v132, "ReadingHistoryUpdate: has forward delta for %s - day=%s modelDay=%s", v92, 0x20u);
          swift_arrayDestroy();

          sub_10018AFA8(v89);
          sub_10018AF40(v134);
          sub_10018AFA8(v121);
          v83 = v131;
          v84 = v133;
LABEL_29:
          v77(v83, v84);
LABEL_33:
          v1 = v124;
          return v1 != 1;
        }

        sub_10018AFA8(v90);
        sub_10018AFA8(v88);
        v107 = *v130;
        (*v130)(v87, v61);
        sub_10018AFA8(v89);
LABEL_32:
        sub_10018AF40(v134);
        sub_10018AFA8(v19);
        v107(v60, v61);
        goto LABEL_33;
      }

      sub_10018AFA8(v66);
      sub_10018AF40(v134);
      sub_10018AFA8(v19);
      (*v130)(v60, v61);
      v39 = v49;
      if (!v43)
      {
        goto LABEL_5;
      }
    }

    v1 = 1;

    sub_1001C65B8();
    if (qword_10026EBE8 != -1)
    {
      goto LABEL_36;
    }
  }

  else
  {
LABEL_5:
    if (v44 <= v39 + 1)
    {
      v48 = v39 + 1;
    }

    else
    {
      v48 = v44;
    }

    v49 = v48 - 1;
    while (1)
    {
      v47 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v47 >= v44)
      {
        v67 = sub_100084528(&unk_100273DB0, &qword_1001F7E60);
        (*(*(v67 - 8) + 56))(v35, 1, 1, v67);
        v43 = 0;
        goto LABEL_13;
      }

      v43 = *(v114 + 8 * v47);
      ++v39;
      if (v43)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_36:
    swift_once();
  }

  sub_1001C5118();
  return v1 != 1;
}

uint64_t sub_100184D44()
{
  if (*v0)
  {
    result = 0x656E654774696465;
  }

  else
  {
    result = 0x6174614473796164;
  }

  *v0;
  return result;
}

uint64_t sub_100184D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6174614473796164 && a2 == 0xE800000000000000;
  if (v6 || (sub_1001C6D08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E654774696465 && a2 == 0xEE006E6F69746172)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1001C6D08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100184E70(uint64_t a1)
{
  v2 = sub_10018B004();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100184EAC(uint64_t a1)
{
  v2 = sub_10018B004();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t _ReadingHistoryUpdateProperties.encode(to:)(void *a1, uint64_t a2)
{
  v5 = sub_100084528(&qword_100273DC8, &qword_1001F7E68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_10018B004();
  sub_1001C6E78();
  v13 = a2;
  v12[15] = 0;
  sub_100084528(&qword_100273DD8, &unk_1001F7E70);
  sub_10018B058();
  sub_1001C6CA8();
  if (!v2)
  {
    v12[14] = 1;
    sub_1001C6C98();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001850B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10018BD2C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t ReadingHistoryUpdate.value.getter()
{
  v1 = *(v0 + OBJC_IVAR___BDSReadingHistoryUpdate_value);
  v2 = *(v0 + OBJC_IVAR___BDSReadingHistoryUpdate_value + 8);
}

id ReadingHistoryUpdate.__allocating_init(value:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days] = 0;
  v6 = &v5[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, "init");
}

id ReadingHistoryUpdate.init(value:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days] = 0;
  v6 = &v2[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t ReadingHistoryUpdate.__allocating_init(days:crdtContext:editGeneration:)(uint64_t a1, void *a2, uint64_t a3)
{
  v118 = a3;
  v140 = a2;
  v4 = sub_1001C5BD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v138 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for ReadingHistoryDay(0);
  v126 = *(v143 - 8);
  v8 = *(v126 + 64);
  v9 = __chkstk_darwin(v143);
  v132 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v148 = &v117 - v12;
  __chkstk_darwin(v11);
  v125 = &v117 - v13;
  v14 = sub_1001C4CA8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v131 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v120 = &v117 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v117 - v22;
  __chkstk_darwin(v21);
  v124 = &v117 - v24;
  v25 = sub_100084528(&qword_100273DA8, &qword_1001F7E58);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v139 = &v117 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v142 = &v117 - v29;
  v30 = *(a1 + 16);
  sub_10018C2C8(&qword_100273170, &type metadata accessor for Date);
  v121 = sub_1001C5F38();
  v32 = 0;
  v33 = 0;
  v128 = a1;
  v34 = *(a1 + 64);
  v122 = a1 + 64;
  v35 = 1 << *(a1 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v34;
  v38 = (v35 + 63) >> 6;
  v145 = (v15 + 32);
  v146 = (v15 + 16);
  v137 = enum case for CRCodableVersion.version3(_:);
  v136 = (v5 + 104);
  v135 = (v5 + 8);
  v127 = v15;
  v134 = (v15 + 8);
  *&v31 = 136315394;
  v123 = v31;
  v144 = v4;
  v149 = v14;
  v141 = v23;
  v133 = v38;
  while (2)
  {
    while (2)
    {
      v39 = v32;
      v40 = v142;
      while (1)
      {
        if (!v37)
        {
          if (v38 <= v39 + 1)
          {
            v43 = v39 + 1;
          }

          else
          {
            v43 = v38;
          }

          v44 = v43 - 1;
          while (1)
          {
            v42 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              break;
            }

            if (v42 >= v38)
            {
              v79 = sub_100084528(&unk_100273DB0, &qword_1001F7E60);
              v57 = v139;
              (*(*(v79 - 8) + 56))(v139, 1, 1, v79);
              v37 = 0;
              goto LABEL_18;
            }

            v37 = *(v122 + 8 * v42);
            ++v39;
            if (v37)
            {
              v147 = v33;
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_37;
        }

        v147 = v33;
        v42 = v39;
LABEL_17:
        v45 = __clz(__rbit64(v37));
        v37 &= v37 - 1;
        v46 = v45 | (v42 << 6);
        v47 = v128;
        v48 = v127;
        v49 = v124;
        (*(v127 + 16))(v124, *(v128 + 48) + *(v127 + 72) * v46, v14);
        v50 = v125;
        sub_10018C0E8(*(v47 + 56) + *(v126 + 72) * v46, v125, type metadata accessor for ReadingHistoryDay);
        v51 = sub_100084528(&unk_100273DB0, &qword_1001F7E60);
        v52 = v14;
        v53 = *(v51 + 48);
        v54 = *(v48 + 32);
        v55 = v139;
        v54(v139, v49, v52);
        v56 = &v55[v53];
        v57 = v55;
        sub_10018C150(v50, v56, type metadata accessor for ReadingHistoryDay);
        (*(*(v51 - 8) + 56))(v55, 0, 1, v51);
        v44 = v42;
        v23 = v141;
        v40 = v142;
        v33 = v147;
        v4 = v144;
LABEL_18:
        sub_10009AE58(v57, v40, &qword_100273DA8, &qword_1001F7E58);
        v58 = sub_100084528(&unk_100273DB0, &qword_1001F7E60);
        if ((*(*(v58 - 8) + 48))(v40, 1, v58) == 1)
        {

          v111 = v119;
          v112 = objc_allocWithZone(v119);
          *&v112[OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days] = 0;
          v113 = &v112[OBJC_IVAR___BDSReadingHistoryUpdate_value];
          v114 = v118;
          *v113 = v121;
          v113[1] = v114;
          v155.receiver = v112;
          v155.super_class = v111;
          v115 = objc_msgSendSuper2(&v155, "init");

          return v115;
        }

        v59 = *(v58 + 48);
        v14 = v149;
        (*v145)(v23, v40, v149);
        sub_10018C150(v40 + v59, v148, type metadata accessor for ReadingHistoryDay);
        v60 = v138;
        (*v136)(v138, v137, v4);
        sub_10018C2C8(&unk_100273E00, type metadata accessor for ReadingHistoryDay);
        v61 = sub_1001C5C48();
        v147 = v44;
        if (!v33)
        {
          break;
        }

        (*v135)(v60, v4);
        v63 = sub_1001C6598();
        if (qword_10026EBE8 != -1)
        {
          swift_once();
        }

        v64 = qword_1002711E8;
        v65 = v131;
        (*v146)(v131, v23, v14);
        v66 = v148;
        v67 = v132;
        sub_10018C0E8(v148, v132, type metadata accessor for ReadingHistoryDay);
        if (os_log_type_enabled(v64, v63))
        {
          v68 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v154[0] = v130;
          *v68 = v123;
          sub_10018C2C8(&qword_100270A80, &type metadata accessor for Date);
          v69 = v63;
          v70 = sub_1001C6CC8();
          v72 = v71;
          v129 = *v134;
          v129(v65, v149);
          v73 = sub_1001874E8(v70, v72, v154);

          *(v68 + 4) = v73;
          *(v68 + 12) = 2080;
          v151 = sub_1001C5E48();
          v152 = sub_1001C6CC8();
          v153 = v74;
          v156._countAndFlagsBits = 47;
          v156._object = 0xE100000000000000;
          sub_1001C6138(v156);
          v75 = *(v143 + 20);
          sub_100084528(&qword_10026F4E0, &unk_1001F1140);
          sub_1001C56C8();
          v150 = v151;
          v157._countAndFlagsBits = sub_1001C6CC8();
          sub_1001C6138(v157);

          v76 = v152;
          v77 = v153;
          sub_10018AFA8(v67);
          v78 = sub_1001874E8(v76, v77, v154);
          v23 = v141;

          *(v68 + 14) = v78;
          _os_log_impl(&_mh_execute_header, v64, v69, "ReadingHistoryUpdate: Failed to serialize entry for %s: %s", v68, 0x16u);
          swift_arrayDestroy();
          v14 = v149;

          v40 = v142;

          sub_10018AFA8(v66);
          v129(v23, v14);
        }

        else
        {
          sub_10018AFA8(v67);
          v41 = *v134;
          (*v134)(v65, v14);
          sub_10018AFA8(v66);
          v41(v23, v14);
        }

        v33 = 0;
        v39 = v147;
        v4 = v144;
        v38 = v133;
      }

      v80 = v61;
      v81 = v62;
      (*v135)(v60, v4);
      v82 = v23;
      v83 = *v146;
      v84 = v120;
      (*v146)(v120, v82, v14);
      v85 = v80;
      v86 = v81;
      sub_10009AD9C(v80, v81);
      v87 = v121;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v152 = v87;
      v89 = sub_100187AA4(v84);
      v91 = *(v87 + 16);
      v92 = (v90 & 1) == 0;
      v93 = __OFADD__(v91, v92);
      v94 = v91 + v92;
      if (v93)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v95 = v90;
      if (*(v87 + 24) >= v94)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v110 = v89;
          sub_10018AC44();
          v89 = v110;
        }
      }

      else
      {
        sub_100188E3C(v94, isUniquelyReferenced_nonNull_native);
        v89 = sub_100187AA4(v120);
        if ((v95 & 1) != (v96 & 1))
        {
          goto LABEL_39;
        }
      }

      v14 = v149;
      v97 = v152;
      v121 = v152;
      if (v95)
      {
        v98 = (*(v152 + 56) + 16 * v89);
        v99 = *v98;
        v100 = v98[1];
        *v98 = v85;
        v98[1] = v86;
        sub_1000887D0(v99, v100);
        sub_1000887D0(v85, v86);
        v101 = *v134;
        (*v134)(v120, v14);
        sub_10018AFA8(v148);
        v23 = v141;
        v101(v141, v14);
        v4 = v144;
        v38 = v133;
        v32 = v147;
        continue;
      }

      break;
    }

    *(v152 + 8 * (v89 >> 6) + 64) |= 1 << v89;
    v102 = v127;
    v103 = v89;
    v104 = v120;
    v83((*(v97 + 48) + *(v127 + 72) * v89), v120, v14);
    v105 = (*(v121 + 56) + 16 * v103);
    v106 = v121;
    *v105 = v85;
    v105[1] = v86;
    sub_1000887D0(v85, v86);
    v107 = *(v102 + 8);
    v107(v104, v14);
    sub_10018AFA8(v148);
    v23 = v141;
    v107(v141, v14);
    v108 = *(v106 + 16);
    v93 = __OFADD__(v108, 1);
    v109 = v108 + 1;
    if (!v93)
    {
      *(v106 + 16) = v109;
      v4 = v144;
      v38 = v133;
      v32 = v147;
      v33 = 0;
      continue;
    }

    break;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_1001C6D68();
  __break(1u);
  return result;
}

uint64_t sub_100185F78(uint64_t a1)
{
  v2 = type metadata accessor for ReadingHistoryDay(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v122 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v121 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v124 = &v120 - v11;
  __chkstk_darwin(v10);
  v13 = &v120 - v12;
  v14 = sub_1001C4CA8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v133 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v125 = &v120 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v120 - v22;
  __chkstk_darwin(v21);
  v129 = &v120 - v24;
  v25 = sub_100084528(&qword_100273D90, &qword_1001F7E40);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v139 = &v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v138 = &v120 - v29;
  v30 = *(a1 + OBJC_IVAR___BDSReadingHistoryUpdate_value);
  v31 = *(v30 + 16);
  sub_10018C2C8(&qword_100273170, &type metadata accessor for Date);
  v145 = v2;
  v126 = sub_1001C5F38();
  v32 = *(v30 + 64);
  v127 = v30 + 64;
  v33 = 1 << *(v30 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v32;
  v36 = (v33 + 63) >> 6;
  v143 = (v15 + 32);
  v144 = (v15 + 16);
  v130 = v15;
  v136 = (v15 + 8);
  v137 = (v3 + 56);
  v37 = v23;
  v120 = v3;
  v123 = (v3 + 48);
  v131 = v30;

  v38 = 0;
  v39 = 0;
  *&v40 = 136315138;
  v128 = v40;
  v140 = v13;
  v141 = v37;
  v146 = v14;
  for (i = v36; ; v36 = i)
  {
LABEL_4:
    v41 = v38;
    if (!v35)
    {
LABEL_8:
      if (v36 <= v41 + 1)
      {
        v44 = v41 + 1;
      }

      else
      {
        v44 = v36;
      }

      v38 = v44 - 1;
      v45 = v139;
      while (1)
      {
        v43 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        if (v43 >= v36)
        {
          v75 = sub_100084528(&qword_100273D98, &qword_1001F7E48);
          (*(*(v75 - 8) + 56))(v45, 1, 1, v75);
          v35 = 0;
          goto LABEL_17;
        }

        v35 = *(v127 + 8 * v43);
        ++v41;
        if (v35)
        {
          v142 = v39;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    while (1)
    {
      v142 = v39;
      v43 = v41;
LABEL_16:
      v46 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v47 = v46 | (v43 << 6);
      v49 = v130;
      v48 = v131;
      (*(v130 + 16))(v129, *(v131 + 48) + *(v130 + 72) * v47, v14);
      v50 = (*(v48 + 56) + 16 * v47);
      v51 = *v50;
      v52 = v50[1];
      v53 = sub_100084528(&qword_100273D98, &qword_1001F7E48);
      v54 = &v139[*(v53 + 48)];
      v45 = v139;
      (*(v49 + 32))();
      *v54 = v51;
      v54[1] = v52;
      (*(*(v53 - 8) + 56))(v45, 0, 1, v53);
      sub_10009AD9C(v51, v52);
      v38 = v43;
      v13 = v140;
      v39 = v142;
LABEL_17:
      v55 = v138;
      sub_10009AE58(v45, v138, &qword_100273D90, &qword_1001F7E40);
      v56 = sub_100084528(&qword_100273D98, &qword_1001F7E48);
      v57 = (*(*(v56 - 8) + 48))(v55, 1, v56);
      v58 = v141;
      if (v57 == 1)
      {

        return v126;
      }

      v59 = (v55 + *(v56 + 48));
      v60 = *v59;
      v61 = v59[1];
      v14 = v146;
      (*v143)(v141, v55, v146);
      sub_10009AD9C(v60, v61);
      sub_10018C2C8(&unk_100273E00, type metadata accessor for ReadingHistoryDay);
      sub_1001C5C58();
      if (!v39)
      {
        break;
      }

      (*v137)(v13, 1, 1, v145);
      v62 = sub_1001C6598();
      if (qword_10026EBE8 != -1)
      {
        swift_once();
      }

      v63 = qword_1002711E8;
      v64 = v133;
      (*v144)(v133, v58, v14);
      if (os_log_type_enabled(v63, v62))
      {
        v65 = swift_slowAlloc();
        v134 = v60;
        v66 = v65;
        v67 = swift_slowAlloc();
        v147[0] = v67;
        *v66 = v128;
        sub_10018C2C8(&qword_100270A80, &type metadata accessor for Date);
        v68 = sub_1001C6CC8();
        v70 = v69;
        v142 = v38;
        v132 = v61;
        v71 = *v136;
        (*v136)(v64, v146);
        v72 = v68;
        v73 = v141;
        v74 = sub_1001874E8(v72, v70, v147);
        v13 = v140;

        *(v66 + 4) = v74;
        _os_log_impl(&_mh_execute_header, v63, v62, "ReadingHistoryUpdate: Failed to deserialize entry for %s", v66, 0xCu);
        sub_10008E7BC(v67);
        v14 = v146;

        sub_1000887D0(v134, v132);
        sub_10018AF40(v13);
        v71(v73, v14);
        v39 = 0;
        v41 = v142;
        v36 = i;
        if (!v35)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1000887D0(v60, v61);
        v42 = *v136;
        (*v136)(v64, v14);
        sub_10018AF40(v13);
        v42(v58, v14);
        v39 = 0;
        v41 = v38;
        v36 = i;
        if (!v35)
        {
          goto LABEL_8;
        }
      }
    }

    v134 = v60;
    v76 = v14;
    v77 = v145;
    v132 = *v137;
    v132(v13, 0, 1, v145);
    v78 = v13;
    v79 = *v144;
    v80 = v125;
    (*v144)(v125, v58, v76);
    v81 = v78;
    v82 = v124;
    sub_10018AED0(v81, v124);
    if ((*v123)(v82, 1, v77) != 1)
    {
      break;
    }

    sub_10018AF40(v82);
    v83 = v126;
    v84 = sub_100187AA4(v80);
    if (v85)
    {
      v86 = v84;
      v142 = 0;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v147[0] = v83;
      v13 = v140;
      v88 = v83;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10018A7B0();
        v88 = v147[0];
      }

      v89 = *(v130 + 8);
      v90 = v146;
      v89(*(v88 + 48) + *(v130 + 72) * v86, v146);
      sub_10018C150(*(v88 + 56) + *(v120 + 72) * v86, v121, type metadata accessor for ReadingHistoryDay);
      v126 = v88;
      sub_10013FC8C(v86, v88);
      sub_1000887D0(v134, v61);
      v89(v125, v90);
      sub_10018AF40(v13);
      v89(v58, v90);
      v91 = 0;
      v39 = v142;
    }

    else
    {
      sub_1000887D0(v134, v61);
      v105 = *v136;
      v106 = v146;
      (*v136)(v80, v146);
      v13 = v140;
      sub_10018AF40(v140);
      v105(v58, v106);
      v91 = 1;
    }

    v107 = v121;
    v132(v121, v91, 1, v145);
    sub_10018AF40(v107);
    v14 = v146;
  }

  sub_10018C150(v82, v122, type metadata accessor for ReadingHistoryDay);
  v92 = v126;
  v93 = swift_isUniquelyReferenced_nonNull_native();
  v94 = v80;
  v95 = v93;
  v147[0] = v92;
  v96 = sub_100187AA4(v94);
  v98 = *(v92 + 16);
  v99 = (v97 & 1) == 0;
  v100 = __OFADD__(v98, v99);
  v101 = v98 + v99;
  if (v100)
  {
    goto LABEL_44;
  }

  v102 = v97;
  if (*(v92 + 24) >= v101)
  {
    v104 = v134;
    if ((v95 & 1) == 0)
    {
      v118 = v96;
      sub_10018A7B0();
      v96 = v118;
    }
  }

  else
  {
    sub_1001886D4(v101, v95);
    v96 = sub_100187AA4(v125);
    v104 = v134;
    if ((v102 & 1) != (v103 & 1))
    {
      goto LABEL_46;
    }
  }

  v14 = v146;
  v108 = v147[0];
  v126 = v147[0];
  if (v102)
  {
    sub_10018C310(v122, *(v147[0] + 56) + *(v120 + 72) * v96);
    sub_1000887D0(v104, v61);
    v109 = *v136;
    (*v136)(v125, v14);
    v13 = v140;
    sub_10018AF40(v140);
    v109(v58, v14);
    v36 = i;
    goto LABEL_4;
  }

  *(v147[0] + 8 * (v96 >> 6) + 64) |= 1 << v96;
  v110 = v130;
  v111 = v96;
  v112 = v125;
  v79((*(v108 + 48) + *(v130 + 72) * v96), v125, v14);
  sub_10018C150(v122, *(v126 + 56) + *(v120 + 72) * v111, type metadata accessor for ReadingHistoryDay);
  sub_1000887D0(v104, v61);
  v113 = *(v110 + 8);
  v114 = v112;
  v115 = v141;
  v113(v114, v14);
  v13 = v140;
  sub_10018AF40(v140);
  v113(v115, v14);
  v116 = *(v126 + 16);
  v100 = __OFADD__(v116, 1);
  v117 = v116 + 1;
  if (!v100)
  {
    *(v126 + 16) = v117;
    v36 = i;
    goto LABEL_4;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_1001C6D68();
  __break(1u);
  return result;
}

uint64_t ReadingHistoryUpdate.days.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days);
  *(v1 + OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days) = a1;
}

uint64_t (*ReadingHistoryUpdate.days.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = ReadingHistoryUpdate.days.getter();
  return sub_100186D30;
}

uint64_t sub_100186D30(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days);
  *(v1 + OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days) = v2;
}

uint64_t ReadingHistoryUpdate.description.getter()
{
  sub_1001C69C8(28);

  ReadingHistoryUpdate.days.getter();
  sub_1001C4CA8();
  type metadata accessor for ReadingHistoryDay(0);
  sub_10018C2C8(&qword_100273170, &type metadata accessor for Date);
  v1 = sub_1001C5F18();
  v3 = v2;

  v6._countAndFlagsBits = v1;
  v6._object = v3;
  sub_1001C6138(v6);

  v7._object = 0x8000000100204110;
  v7._countAndFlagsBits = 0xD000000000000011;
  sub_1001C6138(v7);
  v5 = *(v0 + OBJC_IVAR___BDSReadingHistoryUpdate_value + 8);
  v8._countAndFlagsBits = sub_1001C6CC8();
  sub_1001C6138(v8);

  v9._countAndFlagsBits = 125;
  v9._object = 0xE100000000000000;
  sub_1001C6138(v9);
  return 0x3A737961647BLL;
}

uint64_t sub_100186FC4@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR___BDSReadingHistoryUpdate_value);
  v3 = *v2;
  v4 = v2[1];
  *a1 = v3;
  a1[1] = v4;
}

id sub_100186FE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = objc_allocWithZone(v2);
  *&v6[OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days] = 0;
  v7 = &v6[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  *v7 = v4;
  *(v7 + 1) = v5;
  v9.receiver = v6;
  v9.super_class = v2;
  result = objc_msgSendSuper2(&v9, "init");
  *a2 = result;
  return result;
}

BDSReadingHistoryUpdateInfo_optional __swiftcall BDSReadingHistoryUpdateInfo.init(coder:)(NSCoder coder)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder:coder.super.isa];

  v5 = v2;
  result.value.update = v3;
  result.value.super.isa = v5;
  result.is_nil = v4;
  return result;
}

id BDSReadingHistoryUpdateInfo.init(coder:)(void *a1)
{
  v2 = a1;
  result = sub_10011C4B8(v2);
  if (result)
  {
    *&v1[OBJC_IVAR___BDSReadingHistoryUpdateInfo_update] = result;
    v5.receiver = v1;
    v5.super_class = BDSReadingHistoryUpdateInfo;
    v4 = objc_msgSendSuper2(&v5, "init");

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall BDSReadingHistoryUpdateInfo.encode(with:)(NSCoder with)
{
  v3 = [v1 update];
  sub_10011C7B0(with.super.isa);
}

id BDSReadingHistoryUpdateInfo.init(update:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUpdate:a1];

  return v2;
}

id BDSReadingHistoryUpdateInfo.init(update:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR___BDSReadingHistoryUpdateInfo_update) = a1;
  v3.super_class = BDSReadingHistoryUpdateInfo;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t BDSReadingHistoryUpdateInfo.description.getter()
{
  v1 = [v0 update];
  v2 = ReadingHistoryUpdate.description.getter();

  return v2;
}

BDSReadingHistoryUpdateInfo __swiftcall BDSReadingHistoryUpdateInfo.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.update = v2;
  result.super.isa = v1;
  return result;
}

uint64_t sub_1001874E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1001875B4(v11, 0, 0, 1, a1, a2);
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
    sub_10008EBD0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10008E7BC(v11);
  return v7;
}

unint64_t sub_1001875B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1001876C0(a5, a6);
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
    result = sub_1001C6A38();
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

char *sub_1001876C0(uint64_t a1, unint64_t a2)
{
  v4 = sub_10018770C(a1, a2);
  sub_10018783C(&off_100242158);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10018770C(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000D7EEC(v5, 0);
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

  result = sub_1001C6A38();
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
        v10 = sub_1001C6158();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000D7EEC(v10, 0);
        result = sub_1001C69B8();
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

uint64_t sub_10018783C(uint64_t result)
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

  result = sub_100187928(result, v12, 1, v3);
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

char *sub_100187928(char *result, int64_t a2, char a3, char *a4)
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
    sub_100084528(&qword_100270670, &qword_1001F2E10);
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

unint64_t sub_100187A1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001C6948(*(v2 + 40));

  return sub_100187DCC(a1, v4);
}

unint64_t sub_100187A60(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1001C6DE8();

  return sub_100187E94(a1, v4);
}

unint64_t sub_100187AA4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1001C4CA8();
  sub_10018C2C8(&qword_100273170, &type metadata accessor for Date);
  v5 = sub_1001C5F88();

  return sub_100187F00(a1, v5);
}

unint64_t sub_100187B3C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1001C6DF8();
  sub_1001C60E8();
  v6 = sub_1001C6E28();

  return sub_1001880C0(a1, a2, v6);
}

unint64_t sub_100187BB4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001C6798(*(v2 + 40));
  return sub_100188360(a1, v4, &unk_100273B00, CKRecordID_ptr);
}

unint64_t sub_100187C04(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1001C6018();
  sub_1001C6DF8();
  sub_1001C60E8();
  v4 = sub_1001C6E28();

  return sub_100188178(a1, v4);
}

unint64_t sub_100187C98(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(v3 + 40);
  sub_1001C6DF8();
  sub_1001C60E8();
  sub_1001C6E18(a3 & 1);
  v8 = sub_1001C6E28();

  return sub_10018827C(a1, a2, a3, v8);
}

unint64_t sub_100187D2C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001C6798(*(v2 + 40));
  return sub_100188360(a1, v4, &qword_100270F20, CKRecordZoneID_ptr);
}

unint64_t sub_100187D7C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001C6798(*(v2 + 40));
  return sub_100188360(a1, v4, &qword_100274000, NSString_ptr);
}

unint64_t sub_100187DCC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100157880(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1001C6958();
      sub_10008EB7C(v8);
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

unint64_t sub_100187E94(uint64_t a1, uint64_t a2)
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

unint64_t sub_100187F00(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1001C4CA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_10018C2C8(&unk_10026F440, &type metadata accessor for Date);
      v16 = sub_1001C5FD8();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1001880C0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1001C6D08())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100188178(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1001C6018();
      v9 = v8;
      if (v7 == sub_1001C6018() && v9 == v10)
      {
        break;
      }

      v12 = sub_1001C6D08();

      if ((v12 & 1) == 0)
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

unint64_t sub_10018827C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = v12 + 24 * v7;
      v14 = *(v13 + 16);
      v15 = *v13 == a1 && *(v13 + 8) == a2;
      if (v15 || (sub_1001C6D08()) && ((v14 ^ a3) & 1) == 0)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_100188360(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_100088714(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1001C67A8();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_100188468(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_100084528(a3, a4);
  result = sub_1001C6B58();
  v10 = result;
  if (*(v7 + 16))
  {
    v33 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v34 = *(*(v7 + 56) + 16 * v22);
      if ((a2 & 1) == 0)
      {
      }

      v24 = *(v10 + 40);
      result = sub_1001C6DE8();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v17 + 8 * v27);
          if (v31 != -1)
          {
            v18 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 16 * v18) = v34;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if (a2)
    {
      v32 = 1 << *(v7 + 32);
      if (v32 >= 64)
      {
        bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v32;
      }

      *(v7 + 16) = 0;
    }

    v5 = v33;
  }

  else
  {
  }

  *v5 = v10;
  return result;
}

uint64_t sub_1001886D4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ReadingHistoryDay(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  __chkstk_darwin(v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001C4CA8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_100084528(&qword_100273F20, &qword_1001F80C0);
  v48 = a2;
  result = sub_1001C6B58();
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
        sub_10018C150(v31 + v32 * v28, v52, type metadata accessor for ReadingHistoryDay);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_10018C0E8(v33 + v32 * v28, v52, type metadata accessor for ReadingHistoryDay);
      }

      v34 = *(v16 + 40);
      sub_10018C2C8(&qword_100273170, &type metadata accessor for Date);
      result = sub_1001C5F88();
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
      result = sub_10018C150(v52, *(v16 + 56) + v32 * v24, type metadata accessor for ReadingHistoryDay);
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

uint64_t sub_100188B9C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_100084528(a3, a4);
  v40 = a2;
  result = sub_1001C6B58();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];

        swift_unknownObjectRetain();
      }

      v29 = *(v10 + 40);
      sub_1001C6DF8();
      sub_1001C60E8();
      result = sub_1001C6E28();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_100188E3C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1001C4CA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  sub_100084528(&qword_100273F18, &qword_1001F80B8);
  v47 = a2;
  result = sub_1001C6B58();
  v13 = result;
  if (*(v10 + 16))
  {
    v52 = v6;
    v14 = 0;
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
    v43 = v2;
    v44 = (v7 + 16);
    v45 = v10;
    v46 = v7;
    v49 = (v7 + 32);
    v20 = result + 64;
    v21 = v48;
    while (v18)
    {
      v24 = __clz(__rbit64(v18));
      v25 = (v18 - 1) & v18;
LABEL_17:
      v28 = v24 | (v14 << 6);
      v29 = *(v10 + 48) + *(v46 + 72) * v28;
      v50 = *(v46 + 72);
      v51 = v25;
      if (v47)
      {
        (*v49)(v21, v29, v52);
        v30 = (*(v10 + 56) + 16 * v28);
        v32 = *v30;
        v31 = v30[1];
      }

      else
      {
        (*v44)(v21, v29, v52);
        v33 = (*(v10 + 56) + 16 * v28);
        v32 = *v33;
        v31 = v33[1];
        sub_10009AD9C(*v33, v31);
      }

      v34 = *(v13 + 40);
      sub_10018C2C8(&qword_100273170, &type metadata accessor for Date);
      result = sub_1001C5F88();
      v35 = -1 << *(v13 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v20 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v21 = v48;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v20 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v20 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v21 = v48;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v13 + 48) + v50 * v22, v21, v52);
      v23 = (*(v13 + 56) + 16 * v22);
      *v23 = v32;
      v23[1] = v31;
      ++*(v13 + 16);
      v10 = v45;
      v18 = v51;
    }

    v26 = v14;
    while (1)
    {
      v14 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v15[v14];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v10 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v15, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v42;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_10018924C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_100084528(a3, a4);
  result = sub_1001C6B58();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = v23;
        v26 = v24;
      }

      result = sub_1001C6798(*(v10 + 40));
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if (a2)
    {
      v34 = 1 << *(v7 + 32);
      if (v34 >= 64)
      {
        bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v34;
      }

      *(v7 + 16) = 0;
    }

    v5 = v35;
  }

  else
  {
  }

  *v5 = v10;
  return result;
}

uint64_t sub_1001894E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100084528(&qword_100271860, &qword_1001F44F0);
  v41 = a2;
  result = sub_1001C6B58();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v40 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 24 * (v20 | (v9 << 6));
      v24 = *(v5 + 48) + v23;
      v25 = *(v24 + 8);
      v26 = *(v24 + 16);
      v27 = (*(v5 + 56) + v23);
      v28 = *v27;
      v29 = v27[2];
      v42 = v27[1];
      v43 = *v24;
      if ((v41 & 1) == 0)
      {
      }

      v30 = *(v8 + 40);
      sub_1001C6DF8();
      sub_1001C60E8();
      sub_1001C6E18(v26);
      result = sub_1001C6E28();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 24 * v16;
      v18 = *(v8 + 48) + v17;
      *v18 = v43;
      *(v18 + 8) = v25;
      *(v18 + 16) = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v28;
      v19[1] = v42;
      v19[2] = v29;
      ++*(v8 + 16);
      v5 = v40;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100189800(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_100084528(a3, a4);
  v40 = a2;
  result = sub_1001C6B58();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_1001C6DF8();
      sub_1001C60E8();
      result = sub_1001C6E28();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_100189AA0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100084528(&qword_100273EF0, &qword_1001F8090);
  v38 = a2;
  result = sub_1001C6B58();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1001C6DF8();
      sub_1001C60E8();
      result = sub_1001C6E28();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100189D40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100084528(&qword_100271888, &qword_1001F4518);
  v40 = a2;
  result = sub_1001C6B58();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1001C6DF8();
      sub_1001C60E8();
      result = sub_1001C6E28();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10018A000(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100084528(&unk_100273EB0, &qword_1001F8070);
  result = sub_1001C6B58();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 40 * v20);
      if (a2)
      {
        sub_100100DF0(v22, v33);
      }

      else
      {
        sub_1000B3A90(v22, v33);
        v23 = v21;
      }

      result = sub_1001C6798(*(v8 + 40));
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_100100DF0(v33, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
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
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10018A2BC(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v53 = a6;
  v9 = v6;
  v12 = a3(0);
  v49 = *(v12 - 8);
  v13 = *(v49 + 64);
  __chkstk_darwin(v12 - 8);
  v52 = &v47 - v14;
  v15 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v16 = *(*v9 + 24);
  }

  sub_100084528(a4, a5);
  v50 = a2;
  result = sub_1001C6B58();
  v18 = result;
  if (*(v15 + 16))
  {
    v47 = v9;
    v48 = v15;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v25 = result + 64;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v31 = v28 | (v19 << 6);
      v32 = *(v15 + 56);
      v33 = *(v15 + 48) + 24 * v31;
      v35 = *v33;
      v34 = *(v33 + 8);
      v36 = *(v33 + 16);
      v37 = v32 + *(v49 + 72) * v31;
      v51 = *(v49 + 72);
      if (v50)
      {
        sub_10018C150(v37, v52, v53);
      }

      else
      {
        sub_10018C0E8(v37, v52, v53);
      }

      v38 = *(v18 + 40);
      sub_1001C6DF8();
      sub_1001C60E8();
      sub_1001C6E18(v36);
      result = sub_1001C6E28();
      v39 = -1 << *(v18 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v25 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v25 + 8 * v41);
          if (v45 != -1)
          {
            v26 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v40) & ~*(v25 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v27 = *(v18 + 48) + 24 * v26;
      *v27 = v35;
      *(v27 + 8) = v34;
      *(v27 + 16) = v36;
      result = sub_10018C150(v52, *(v18 + 56) + v51 * v26, v53);
      ++*(v18 + 16);
      v15 = v48;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v9 = v47;
      goto LABEL_36;
    }

    v46 = 1 << *(v15 + 32);
    v9 = v47;
    if (v46 >= 64)
    {
      bzero(v20, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v46;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v9 = v18;
  return result;
}

void *sub_10018A65C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100084528(a1, a2);
  v4 = *v2;
  v5 = sub_1001C6B48();
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
        v20 = *(*(v4 + 56) + 16 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 16 * v19) = v20;
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

char *sub_10018A7B0()
{
  v1 = v0;
  v2 = type metadata accessor for ReadingHistoryDay(0);
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  __chkstk_darwin(v2 - 8);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1001C4CA8();
  v42 = *(v38 - 8);
  v5 = *(v42 + 64);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100084528(&qword_100273F20, &qword_1001F80C0);
  v7 = *v0;
  v8 = sub_1001C6B48();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v41 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v42 + 32;
    v35 = v42 + 16;
    v36 = v7;
    v19 = v42;
    v20 = v9;
    if (v17)
    {
      do
      {
        v21 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v24 = v21 | (v13 << 6);
        v25 = *(v19 + 72) * v24;
        v27 = v37;
        v26 = v38;
        (*(v19 + 16))(v37, *(v7 + 48) + v25, v38);
        v28 = *(v7 + 56);
        v29 = v39;
        v30 = *(v40 + 72) * v24;
        sub_10018C0E8(v28 + v30, v39, type metadata accessor for ReadingHistoryDay);
        (*(v19 + 32))(*(v20 + 48) + v25, v27, v26);
        v31 = v29;
        v7 = v36;
        result = sub_10018C150(v31, *(v20 + 56) + v30, type metadata accessor for ReadingHistoryDay);
        v17 = v43;
      }

      while (v43);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v32;
        v9 = v41;
        goto LABEL_18;
      }

      v23 = *(v33 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v43 = (v23 - 1) & v23;
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

void *sub_10018AAD4()
{
  v1 = v0;
  sub_100084528(&qword_100273250, &unk_1001F8060);
  v2 = *v0;
  v3 = sub_1001C6B48();
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

        result = swift_unknownObjectRetain();
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

char *sub_10018AC44()
{
  v1 = v0;
  v2 = sub_1001C4CA8();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100084528(&qword_100273F18, &qword_1001F80B8);
  v6 = *v0;
  v7 = sub_1001C6B48();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v41 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = v40 + 32;
    v36 = v40 + 16;
    v37 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v42 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v39;
        v23 = v40;
        v24 = *(v40 + 72) * v21;
        v25 = v38;
        (*(v40 + 16))(v38, *(v6 + 48) + v24, v39);
        v26 = *(v6 + 56);
        v27 = 16 * v21;
        v28 = (v26 + 16 * v21);
        v29 = *v28;
        v30 = v28[1];
        v31 = v41;
        (*(v23 + 32))(*(v41 + 48) + v24, v25, v22);
        v32 = (*(v31 + 56) + v27);
        v6 = v37;
        *v32 = v29;
        v32[1] = v30;
        result = sub_10009AD9C(v29, v30);
        v16 = v42;
      }

      while (v42);
    }

    v19 = v12;
    v8 = v41;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v20 = *(v34 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v42 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_10018AED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018AF40(uint64_t a1)
{
  v2 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10018AFA8(uint64_t a1)
{
  v2 = type metadata accessor for ReadingHistoryDay(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10018B004()
{
  result = qword_100273DD0;
  if (!qword_100273DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273DD0);
  }

  return result;
}

unint64_t sub_10018B058()
{
  result = qword_100273DE0;
  if (!qword_100273DE0)
  {
    sub_1000885AC(&qword_100273DD8, &unk_1001F7E70);
    sub_10018C2C8(&qword_10026F970, &type metadata accessor for Date);
    sub_10018B114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273DE0);
  }

  return result;
}

unint64_t sub_10018B114()
{
  result = qword_100273DF0;
  if (!qword_100273DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273DF0);
  }

  return result;
}

id sub_10018B190(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100084528(a1, a2);
  v4 = *v2;
  v5 = sub_1001C6B48();
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
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        result = v21;
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

void *sub_10018B31C()
{
  v1 = v0;
  sub_100084528(&qword_100271860, &qword_1001F44F0);
  v2 = *v0;
  v3 = sub_1001C6B48();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v24 = v21[1];
        v23 = v21[2];
        v25 = *(v4 + 48) + v17;
        *v25 = v19;
        *(v25 + 8) = v20;
        *(v25 + 16) = v18;
        v26 = (*(v4 + 56) + v17);
        *v26 = v22;
        v26[1] = v24;
        v26[2] = v23;
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

void *sub_10018B4D0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100084528(a1, a2);
  v4 = *v2;
  v5 = sub_1001C6B48();
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

void *sub_10018B630()
{
  v1 = v0;
  sub_100084528(&qword_100273EF0, &qword_1001F8090);
  v2 = *v0;
  v3 = sub_1001C6B48();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_10018B798()
{
  v1 = v0;
  sub_100084528(&qword_100271888, &qword_1001F4518);
  v2 = *v0;
  v3 = sub_1001C6B48();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

id sub_10018B910()
{
  v1 = v0;
  sub_100084528(&unk_100273EB0, &qword_1001F8070);
  v2 = *v0;
  v3 = sub_1001C6B48();
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
        sub_1000B3A90(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100100DF0(v19, *(v4 + 56) + 40 * v17);
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

void *sub_10018BAD0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v42 = a4;
  v7 = v4;
  v8 = a1(0);
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  __chkstk_darwin(v8 - 8);
  v40 = &v37 - v10;
  sub_100084528(a2, a3);
  v11 = *v4;
  v12 = sub_1001C6B48();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    v38 = v7;
    v39 = (v11 + 64);
    if (v13 != v11 || result >= v11 + 64 + 8 * v15)
    {
      result = memmove(result, v39, 8 * v15);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v43 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    if (v21)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v44 = (v21 - 1) & v21;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = 24 * v26;
        v28 = *(v11 + 48) + 24 * v26;
        v29 = *v28;
        v30 = *(v28 + 8);
        v31 = *(v28 + 16);
        v32 = v40;
        v33 = *(v41 + 72) * v26;
        v34 = v42;
        sub_10018C0E8(*(v11 + 56) + v33, v40, v42);
        v35 = v43;
        v36 = *(v43 + 48) + v27;
        *v36 = v29;
        *(v36 + 8) = v30;
        *(v36 + 16) = v31;
        sub_10018C150(v32, *(v35 + 56) + v33, v34);

        v21 = v44;
      }

      while (v44);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v38;
        v13 = v43;
        goto LABEL_21;
      }

      v25 = *(v39 + v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v44 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v13;
  }

  return result;
}

uint64_t sub_10018BD2C(uint64_t *a1)
{
  v3 = sub_100084528(&qword_100273EC8, &unk_1001F8080);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_10009BB74(a1, v8);
  sub_10018B004();
  sub_1001C6E58();
  if (!v1)
  {
    sub_100084528(&qword_100273DD8, &unk_1001F7E70);
    v10[7] = 0;
    sub_10018C1B8();
    sub_1001C6C28();
    v8 = v11;
    v10[6] = 1;
    sub_1001C6C18();
    (*(v4 + 8))(v7, v3);
  }

  sub_10008E7BC(a1);
  return v8;
}

uint64_t sub_10018BF04(uint64_t *a1, int a2)
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

uint64_t sub_10018BF4C(uint64_t result, int a2, int a3)
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

unint64_t sub_10018BFE4()
{
  result = qword_100273E98;
  if (!qword_100273E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273E98);
  }

  return result;
}

unint64_t sub_10018C03C()
{
  result = qword_100273EA0;
  if (!qword_100273EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273EA0);
  }

  return result;
}

unint64_t sub_10018C094()
{
  result = qword_100273EA8;
  if (!qword_100273EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273EA8);
  }

  return result;
}

uint64_t sub_10018C0E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10018C150(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10018C1B8()
{
  result = qword_100273ED0;
  if (!qword_100273ED0)
  {
    sub_1000885AC(&qword_100273DD8, &unk_1001F7E70);
    sub_10018C2C8(&qword_10026F980, &type metadata accessor for Date);
    sub_10018C274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273ED0);
  }

  return result;
}

unint64_t sub_10018C274()
{
  result = qword_100273EE0;
  if (!qword_100273EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273EE0);
  }

  return result;
}

uint64_t sub_10018C2C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10018C310(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistoryDay(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018C374()
{
  result = sub_1001C5148();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10018C4A0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_isaMask;
  v7 = swift_isaMask & *v2;
  v8 = *(v2 + qword_100273F40);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = *(v7 + 80);
  *(v10 + 32) = *((v6 & v5) + 0x60);
  *(v10 + 40) = v9;
  *(v10 + 48) = a1;
  *(v10 + 56) = a2;
  v12[4] = sub_100192B90;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000982D4;
  v12[3] = &unk_10024BDC0;
  v11 = _Block_copy(v12);

  [v8 cloudDataWithPredicate:0 sortDescriptors:0 completion:v11];
  _Block_release(v11);
}

void sub_10018C624(char a1)
{
  v2 = *(v1 + qword_100281A08);
  *(v1 + qword_100281A08) = a1;
  v3 = *(v1 + qword_100281A08);
  if (v2 != v3)
  {
    sub_10018F258(v3);
  }
}

id sub_10018C64C()
{
  sub_10018CCB0();
  v1 = v0;
  sub_10018CB94();
  v2 = objc_allocWithZone(BCCloudDataSource);
  v3 = sub_1001C5FE8();

  v4 = [v2 initWithManagedObjectModel:v1 nameOnDisk:v3];

  return v4;
}

void sub_10018C6D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = [*&v4[qword_100273F70] createTransactionWithName:"com.apple.ibooks.CRDTModelSyncManager.setCloudData"];
  aBlock[0] = *(ObjectType + 80);
  swift_getMetatypeMetadata();
  v9 = sub_1001C6078();
  v11 = v10;
  v12 = type metadata accessor for CRDTModelSync();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type];
  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  *&v13[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData] = xmmword_1001F1120;
  sub_10009AD9C(a1, a2);
  v32.receiver = v13;
  v32.super_class = v12;
  v15 = objc_msgSendSuper2(&v32, "init");
  v16 = &v15[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type];
  v17 = *&v15[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type + 8];
  *v16 = v9;
  v16[1] = v11;
  v18 = v15;

  v19 = &v18[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData];
  v20 = *&v18[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData];
  v21 = *&v18[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8];
  *v19 = a1;
  v19[1] = a2;
  sub_1000887BC(v20, v21);

  v22 = *&v4[qword_100273F40];
  v23 = v18;
  sub_10018CE3C();
  sub_100084528(&qword_10026FC80, &qword_1001F5970);
  isa = sub_1001C5EF8().super.isa;

  v25 = swift_allocObject();
  v25[2] = v4;
  v25[3] = a3;
  v25[4] = a4;
  v25[5] = v8;
  aBlock[4] = sub_100192B34;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000C4794;
  aBlock[3] = &unk_10024BD70;
  v26 = _Block_copy(aBlock);
  v27 = v4;

  v28 = v8;

  [v22 setCloudData:v23 predicate:0 mergers:isa completion:v26];
  _Block_release(v26);
}

void sub_10018C974(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, v7);
}

void sub_10018C9EC(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1001C4A18();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_10018CA5C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_10018CAE0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  sub_100084528(&qword_100271010, &unk_1001F1D60);
  v8 = sub_1001C6298();

  v9 = a4;
  v7(a2, v8, a4);
}

uint64_t sub_10018CB94()
{
  v3 = sub_1001C69E8();
  v4._countAndFlagsBits = 45;
  v4._object = 0xE100000000000000;
  sub_1001C6138(v4);
  v2 = *(v0 + 80);
  swift_getMetatypeMetadata();
  v5._countAndFlagsBits = sub_1001C6078();
  sub_1001C6138(v5);

  return v3;
}

uint64_t sub_10018CC14()
{
  type metadata accessor for CRDTModelSyncEntity();
  sub_100084528(&qword_100274010, &unk_1001F0E98);
  return sub_1001C6078();
}

NSString sub_10018CC5C()
{
  v3 = *(v0 + 80);
  swift_getMetatypeMetadata();
  sub_1001C6078();
  v1 = sub_1001C5FE8();

  return v1;
}

void sub_10018CCB0()
{
  v0 = sub_1001C4B28();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_1001C6788();

  sub_1001C4A68();
  v7 = objc_allocWithZone(NSManagedObjectModel);
  sub_1001C4A88(v8);
  v10 = v9;
  v11 = [v7 initWithContentsOfURL:v9];

  if (v11)
  {
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10018CE3C()
{
  v1 = qword_100273F68;
  if (*(v0 + qword_100273F68))
  {
    v2 = *(v0 + qword_100273F68);
  }

  else
  {
    v2 = sub_10018CEA4(v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

unint64_t sub_10018CEA4(uint64_t *a1)
{
  swift_getObjectType();
  v2 = *a1;
  v3 = swift_isaMask;
  v4 = swift_isaMask & *a1;
  v5 = sub_1000BCAD0();
  v7 = v6;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = *(v4 + 80);
  *(v9 + 32) = *((v3 & v2) + 0x60);
  *(v9 + 40) = v8;
  *(v9 + 48) = v5;
  *(v9 + 56) = v7;
  v18 = sub_1001929FC;
  v19 = v9;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10018F040;
  v17 = &unk_10024BB18;
  v10 = _Block_copy(&aBlock);

  sub_100084528(&qword_10026FC90, &unk_1001F81C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0670;
  aBlock = v5;
  v15 = v7;
  sub_1001C6968();
  *(inited + 72) = v10;
  v12 = sub_100118BA8(inited);
  swift_setDeallocating();
  sub_10008875C(inited + 32, &qword_10026FC98, &unk_1001F1AB0);
  return v12;
}

void sub_10018D084(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X6>, unint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v269 = a7;
  v270 = a4;
  v267 = a3;
  v266 = a2;
  v268 = a9;
  v13 = sub_1001C5148();
  v271 = *(v13 - 8);
  v14 = v271[8];
  __chkstk_darwin(v13);
  v16 = &v239 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = sub_1001C5BD8();
  v252 = *(v257 - 8);
  v17 = *(v252 + 64);
  v18 = __chkstk_darwin(v257);
  v256 = &v239 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = *(a6 - 8);
  v20 = *(v263 + 64);
  v21 = __chkstk_darwin(v18);
  v255 = (&v239 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __chkstk_darwin(v21);
  v254 = (&v239 - v24);
  v25 = __chkstk_darwin(v23);
  v253 = &v239 - v26;
  v27 = __chkstk_darwin(v25);
  v249 = &v239 - v28;
  v29 = __chkstk_darwin(v27);
  v251 = &v239 - v30;
  v31 = __chkstk_darwin(v29);
  v258 = &v239 - v32;
  v33 = __chkstk_darwin(v31);
  v250 = &v239 - v34;
  v35 = __chkstk_darwin(v33);
  v248 = &v239 - v36;
  v37 = __chkstk_darwin(v35);
  v247 = &v239 - v38;
  v39 = __chkstk_darwin(v37);
  v260 = &v239 - v40;
  __chkstk_darwin(v39);
  v261 = &v239 - v41;
  v42 = sub_1001C67F8();
  v262 = *(v42 - 8);
  v43 = *(v262 + 64);
  v44 = __chkstk_darwin(v42);
  v259 = &v239 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v48 = &v239 - v47;
  v49 = __chkstk_darwin(v46);
  v264 = &v239 - v50;
  __chkstk_darwin(v49);
  v265 = &v239 - v51;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_7:
    swift_beginAccess();
    v54 = swift_unknownObjectWeakLoadStrong();
    if (v54)
    {
      v55 = v271;
      v56 = v54;
      (v271[2])(v16, v54 + qword_1002819F8, v13);

      sub_10008EBD0(a1, v276);

      v57 = v13;
      v58 = a5;

      v59 = sub_1001C5128();
      v60 = sub_1001C65B8();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v273 = swift_slowAlloc();
        *v61 = 136315650;
        swift_beginAccess();
        v279[0] = swift_unknownObjectWeakLoadStrong();
        type metadata accessor for CRDTModelCloudDataManager();
        sub_1001C67F8();
        v62 = sub_1001C6078();
        v64 = sub_1001874E8(v62, v63, &v273);

        *(v61 + 4) = v64;
        v269 = v57;
        *(v61 + 12) = 2080;
        sub_10008EBD0(v276, v279);
        v65 = sub_1001C6078();
        v67 = v66;
        sub_10008E7BC(v276);
        v68 = sub_1001874E8(v65, v67, &v273);

        *(v61 + 14) = v68;
        *(v61 + 22) = 2080;
        *(v61 + 24) = sub_1001874E8(v270, v58, &v273);
        _os_log_impl(&_mh_execute_header, v59, v60, "CloudSyncConflictResolver: self=%s key=%s is not equal to recordType=%s", v61, 0x20u);
        swift_arrayDestroy();

        (v271[1])(v16, v269);
      }

      else
      {

        sub_10008E7BC(v276);
        (v55[1])(v16, v57);
      }
    }

    goto LABEL_33;
  }

  v53 = Strong;
  sub_10008EBD0(a1, v276);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v245 = v42;
  v246 = a6;
  if (v279[0] == v270 && v279[1] == a5)
  {

    goto LABEL_12;
  }

  v69 = sub_1001C6D08();

  if ((v69 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

LABEL_12:
  v271 = v53;
  sub_100192A2C(v266, v276);
  sub_100192A2C(v267, v277);
  if (!v276[3])
  {
    if (v278)
    {
      sub_100192A2C(v277, v279);
      if (swift_dynamicCast())
      {
        v79 = v275[0];
        v80 = v275[1];
        v81 = sub_1001C5128();
        v82 = sub_1001C65B8();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&_mh_execute_header, v81, v82, "CloudSyncConflictResolver: no existing data", v83, 2u);
        }

        sub_10008E7BC(v279);
        sub_10008875C(v277, &qword_10026FCB0, &unk_1001F14E0);
        sub_10008875C(v276, &qword_10026FCB0, &unk_1001F14E0);
        *(a8 + 24) = &type metadata for Data;

        *a8 = v79;
        *(a8 + 8) = v80;
        return;
      }

      sub_10008E7BC(v279);
    }

    goto LABEL_32;
  }

  v270 = a8;
  sub_100192A2C(v276, v279);
  if (!swift_dynamicCast())
  {
LABEL_31:
    sub_10008E7BC(v279);
    a8 = v270;
LABEL_32:
    sub_10008875C(v276, &qword_10026FCB8, &qword_1001F1AD0);

LABEL_33:
    *a8 = 0u;
    *(a8 + 16) = 0u;
    return;
  }

  v70 = v279[4];
  v71 = v279[5];
  v72 = v246;
  if (!v278)
  {
    v84 = sub_1001C5128();
    v85 = sub_1001C65B8();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&_mh_execute_header, v84, v85, "CloudSyncConflictResolver: no incoming data", v86, 2u);
    }

    sub_10008E7BC(v279);
    sub_10008875C(v277, &qword_10026FCB0, &unk_1001F14E0);
    sub_10008875C(v276, &qword_10026FCB0, &unk_1001F14E0);
    v87 = v270;
    v270[3] = &type metadata for Data;

    *v87 = v70;
    v87[1] = v71;
    return;
  }

  sub_100192A2C(v277, v275);
  if (!swift_dynamicCast())
  {
    sub_1000887D0(v70, v71);
    sub_10008E7BC(v275);
    goto LABEL_31;
  }

  v73 = v274;
  v267 = v273;
  if (sub_100144DE4(v70, v71, v273, v274))
  {
    v74 = v73;
    v75 = sub_1001C5128();
    v76 = sub_1001C65B8();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "CloudSyncConflictResolver: incoming data and existing data are identical", v77, 2u);
    }

    v78 = v270;
    v270[3] = &type metadata for Data;
    sub_1000887D0(v267, v74);

    *v78 = v70;
    v78[1] = v71;
LABEL_38:
    sub_10008E7BC(v275);
    sub_10008E7BC(v279);
LABEL_39:
    sub_10008875C(v277, &qword_10026FCB0, &unk_1001F14E0);
    sub_10008875C(v276, &qword_10026FCB0, &unk_1001F14E0);
    return;
  }

  v244 = qword_100273F60;
  v88 = *(v271 + qword_100273F60);
  sub_10009AD9C(v70, v71);
  v266 = *(v269 + 8);
  sub_1001C5C88();
  v269 = v71;
  v243 = v70;
  v89 = v245;
  v90 = *(v263 + 56);
  v90(v265, 0, 1, v72);
  v91 = *(v271 + v244);
  sub_10009AD9C(v267, v73);
  sub_1001C5C88();
  v242 = v73;
  v241 = 0;
  v92 = v262;
  v90(v264, 0, 1, v72);
  v93 = *(v92 + 16);
  v93(v48, v265, v89);
  v94 = v263;
  v95 = *(v263 + 48);
  if (v95(v48, 1, v72) == 1)
  {
    v96 = *(v92 + 8);
    v96(v48, v89);
    v97 = v243;
    v98 = v269;
    sub_10009AD9C(v243, v269);
    v99 = sub_1001C5128();
    v100 = sub_1001C65B8();
    sub_1000887D0(v97, v98);
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v272 = v102;
      *v101 = 136315138;
      sub_10009AD9C(v97, v98);
      v103 = sub_1001C4B58();
      v105 = v104;
      sub_1000887D0(v97, v269);
      v106 = sub_1001874E8(v103, v105, &v272);
      v98 = v269;

      *(v101 + 4) = v106;
      _os_log_impl(&_mh_execute_header, v99, v100, "CloudSyncConflictResolver: failed to deserialize either existingModel from %s", v101, 0xCu);
      sub_10008E7BC(v102);
    }

    v107 = v264;
    v108 = v270;
    v270[3] = &type metadata for Data;

    sub_1000887D0(v267, v242);
    *v108 = v97;
    v108[1] = v98;
    v109 = v107;
    v110 = v245;
    v96(v109, v245);
    v96(v265, v110);
    goto LABEL_38;
  }

  v111 = *(v94 + 32);
  v112 = v261;
  v240 = v111;
  (v111)(v261, v48, v72);
  v113 = v259;
  v114 = v264;
  v93(v259, v264, v89);
  v115 = v113;
  v116 = v95(v113, 1, v72);
  v117 = v114;
  if (v116 == 1)
  {
    v118 = *(v262 + 8);
    v118(v115, v89);
    v119 = v267;
    v120 = v242;
    sub_10009AD9C(v267, v242);
    v121 = v271;
    v122 = sub_1001C5128();
    v123 = sub_1001C65B8();
    sub_1000887D0(v119, v120);
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v272 = v125;
      *v124 = 136315138;
      sub_10009AD9C(v119, v120);
      v126 = sub_1001C4B58();
      v128 = v127;
      sub_1000887D0(v267, v120);
      v129 = sub_1001874E8(v126, v128, &v272);
      v119 = v267;

      *(v124 + 4) = v129;
      v117 = v264;
      _os_log_impl(&_mh_execute_header, v122, v123, "CloudSyncConflictResolver: failed to deserialize either incomingModel from %s", v124, 0xCu);
      sub_10008E7BC(v125);
    }

    v130 = v269;
    v131 = v243;
    v132 = v120;
    v133 = v270;
    v270[3] = &type metadata for Data;

    sub_1000887D0(v119, v132);
    *v133 = v131;
    v133[1] = v130;
    (*(v263 + 8))(v261, v246);
    v134 = v245;
    v118(v117, v245);
    v118(v265, v134);
    sub_10008E7BC(v275);
    sub_10008E7BC(v279);
    goto LABEL_39;
  }

  v135 = v260;
  (v240)(v260, v115, v72);
  v136 = v266;
  v137 = v112;
  if ((sub_1001C5C38() & 1) == 0)
  {
    v161 = v263;
    v162 = *(v263 + 16);
    v163 = v254;
    v162(v254, v135, v72);
    v164 = v255;
    v162(v255, v137, v72);
    v165 = sub_1001C5128();
    v166 = sub_1001C65B8();
    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      v266 = swift_slowAlloc();
      v272 = v266;
      *v167 = 136315394;
      LODWORD(v259) = v166;
      v168 = sub_1001C6CC8();
      v169 = v164;
      v171 = v170;
      v172 = *(v161 + 8);
      v172(v163, v72);
      v173 = sub_1001874E8(v168, v171, &v272);

      *(v167 + 4) = v173;
      *(v167 + 12) = 2080;
      v174 = sub_1001C6CC8();
      v176 = v175;
      v172(v169, v72);
      v177 = sub_1001874E8(v174, v176, &v272);

      *(v167 + 14) = v177;
      _os_log_impl(&_mh_execute_header, v165, v259, "CloudSyncConflictResolver: no delta on incoming=%s from existing=%s", v167, 0x16u);
      swift_arrayDestroy();
      v117 = v264;
    }

    else
    {

      v172 = *(v161 + 8);
      v172(v164, v72);
      v172(v163, v72);
    }

    v194 = v262;
    v195 = v269;
    v196 = v267;
    v197 = v270;
    v270[3] = &type metadata for Data;

    sub_1000887D0(v196, v242);
    *v197 = v243;
    v197[1] = v195;
    v172(v260, v72);
    v172(v261, v72);
    v198 = *(v194 + 8);
    v199 = v245;
    v198(v117, v245);
    v198(v265, v199);
    sub_10008E7BC(v275);
    sub_10008E7BC(v279);
    goto LABEL_39;
  }

  v138 = sub_1001C5C38();
  v139 = qword_1002819F8;
  v140 = v263;
  v141 = *(v263 + 16);
  if ((v138 & 1) == 0)
  {
    v178 = v249;
    v141(v249, v137, v72);
    v179 = v253;
    v141(v253, v135, v72);
    v180 = sub_1001C5128();
    v181 = sub_1001C65B8();
    if (os_log_type_enabled(v180, v181))
    {
      v182 = v140;
      v183 = swift_slowAlloc();
      v266 = swift_slowAlloc();
      v272 = v266;
      *v183 = 136315394;
      LODWORD(v259) = v181;
      v184 = sub_1001C6CC8();
      v186 = v185;
      v187 = *(v182 + 8);
      v187(v178, v72);
      v188 = sub_1001874E8(v184, v186, &v272);

      *(v183 + 4) = v188;
      *(v183 + 12) = 2080;
      v189 = v253;
      v190 = sub_1001C6CC8();
      v192 = v191;
      v187(v189, v72);
      v193 = sub_1001874E8(v190, v192, &v272);

      *(v183 + 14) = v193;
      _os_log_impl(&_mh_execute_header, v180, v259, "CloudSyncConflictResolver: no delta on existing=%s from incoming=%s", v183, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v187 = *(v140 + 8);
      v187(v179, v72);
      v187(v178, v72);
    }

    v213 = v262;
    v214 = v264;
    v215 = v269;
    v216 = v267;
    v217 = v270;
    v270[3] = &type metadata for Data;

    sub_1000887D0(v243, v215);
    v218 = v242;
    *v217 = v216;
    v217[1] = v218;
    v187(v260, v72);
    v187(v261, v72);
    v219 = *(v213 + 8);
    v220 = v214;
    v221 = v245;
    v219(v220, v245);
    v219(v265, v221);
    sub_10008E7BC(v275);
    sub_10008E7BC(v279);
    goto LABEL_39;
  }

  v142 = v247;
  v141(v247, v137, v72);
  v143 = v248;
  v141(v248, v135, v72);
  v255 = v139;
  v144 = sub_1001C5128();
  LODWORD(v253) = sub_1001C65B8();
  v254 = v144;
  if (os_log_type_enabled(v144, v253))
  {
    v145 = swift_slowAlloc();
    v249 = v145;
    v240 = swift_slowAlloc();
    v272 = v240;
    *v145 = 136315394;
    v146 = v250;
    v141(v250, v142, v72);
    v147 = *(v140 + 8);
    v147(v142, v72);
    v148 = v143;
    v149 = sub_1001C6CC8();
    v151 = v150;
    v147(v146, v246);
    v152 = sub_1001874E8(v149, v151, &v272);

    v153 = v249;
    *(v249 + 4) = v152;
    *(v153 + 6) = 2080;
    v141(v146, v148, v246);
    v154 = v148;
    v136 = v266;
    v147(v154, v246);
    v155 = sub_1001C6CC8();
    v157 = v156;
    v259 = v147;
    v147(v146, v246);
    v158 = sub_1001874E8(v155, v157, &v272);
    v72 = v246;

    v159 = v249;
    *(v249 + 14) = v158;
    v160 = v254;
    _os_log_impl(&_mh_execute_header, v254, v253, "CloudSyncConflictResolver: merging existing=%s with incoming=%s", v159, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v253 = v141;
    v200 = *(v140 + 8);
    v200(v143, v72);
    v259 = v200;
    v200(v142, v72);
    v141 = v253;
  }

  v201 = v258;
  sub_1001C5C78();
  v202 = v251;
  v141(v251, v201, v72);
  v203 = sub_1001C5128();
  v204 = sub_1001C65B8();
  if (os_log_type_enabled(v203, v204))
  {
    v205 = swift_slowAlloc();
    v255 = swift_slowAlloc();
    v272 = v255;
    *v205 = 136315138;
    v206 = v250;
    v141(v250, v202, v72);
    v207 = v202;
    v208 = v259;
    (v259)(v207, v72);
    v209 = sub_1001C6CC8();
    v211 = v210;
    v208(v206, v246);
    v212 = sub_1001874E8(v209, v211, &v272);
    v72 = v246;

    *(v205 + 4) = v212;
    _os_log_impl(&_mh_execute_header, v203, v204, "CloudSyncConflictResolver: merged=%s", v205, 0xCu);
    sub_10008E7BC(v255);

    v136 = v266;
  }

  else
  {
    (v259)(v202, v72);
  }

  v222 = v264;
  v223 = v269;
  v224 = v267;
  v225 = *(v271 + v244);
  v226 = v252;
  (*(v252 + 104))(v256, enum case for CRCodableVersion.version1(_:), v257);
  v227 = *(v136 + 8);
  v228 = v241;
  v229 = sub_1001C5A98();
  if (v228)
  {

    v231 = 0;
    v232 = 0xF000000000000000;
  }

  else
  {
    v231 = v229;
    v232 = v230;
  }

  sub_1000887D0(v224, v242);
  sub_1000887D0(v243, v223);
  (*(v226 + 8))(v256, v257);
  v233 = v259;
  (v259)(v258, v72);
  v233(v260, v72);
  v233(v137, v72);
  v234 = *(v262 + 8);
  v235 = v222;
  v236 = v245;
  v234(v235, v245);
  v234(v265, v236);
  sub_10008E7BC(v275);
  sub_10008E7BC(v279);
  sub_10008875C(v277, &qword_10026FCB0, &unk_1001F14E0);
  sub_10008875C(v276, &qword_10026FCB0, &unk_1001F14E0);
  if (v232 >> 60 == 15)
  {

    v237 = v270;
    *v270 = 0u;
    *(v237 + 16) = 0u;
  }

  else
  {
    v238 = v270;
    v270[3] = &type metadata for Data;

    *v238 = v231;
    v238[1] = v232;
  }
}

id sub_10018F040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v22[3] = swift_getObjectType();
  v22[0] = a2;
  if (a3)
  {
    *(&v20 + 1) = swift_getObjectType();
    *&v19 = a3;
    sub_10011A388(&v19, v21);
    if (a4)
    {
LABEL_3:
      ObjectType = swift_getObjectType();
      v17[0] = a4;
      sub_10011A388(v17, &v19);
      goto LABEL_6;
    }
  }

  else
  {
    memset(v21, 0, sizeof(v21));
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v19 = 0u;
  v20 = 0u;
LABEL_6:

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8(v17, v22, v21, &v19);

  sub_10008875C(&v19, &qword_10026FCB0, &unk_1001F14E0);
  sub_10008875C(v21, &qword_10026FCB0, &unk_1001F14E0);
  v9 = ObjectType;
  if (ObjectType)
  {
    v10 = sub_10009BB74(v17, ObjectType);
    v11 = *(v9 - 8);
    v12 = *(v11 + 64);
    __chkstk_darwin(v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14);
    v15 = sub_1001C6CF8();
    (*(v11 + 8))(v14, v9);
    sub_10008E7BC(v17);
  }

  else
  {
    v15 = 0;
  }

  sub_10008E7BC(v22);

  return v15;
}

void sub_10018F258(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = (swift_isaMask & *v1);
  [*(v1 + qword_100273F48) setEnableCloudSync:a1 & 1];
  v5 = *(v1 + qword_100273F50);
  v19 = [v5 privateCloudDatabaseController];
  v6 = sub_1001C5128();
  v7 = sub_1001C65B8();
  v8 = os_log_type_enabled(v6, v7);
  if (a1)
  {
    if (v8)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "CRDTModelCloudDataManager updateWithSyncEnabled: enabled sync to CK", v9, 2u);
    }

    v10 = *(v2 + qword_100273F38);
    sub_1000BCAD0();
    v11 = sub_1001C5FE8();

    [v19 addObserver:v10 recordType:v11];

    v12 = [v5 transactionManager];
    v13 = v4[10];
    v14 = v4[11];
    v15 = v4[12];
    type metadata accessor for CRDTModelCloudDataManager();
    sub_1000BCAD0();
    v16 = sub_1001C5FE8();

    [v12 signalSyncToCKTransactionForEntityName:v16 syncManager:v10];
  }

  else
  {
    if (v8)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "CRDTModelCloudDataManager updateWithSyncEnabled: disabled sync to CK", v17, 2u);
    }

    v18 = *(v2 + qword_100273F38);
    sub_1000BCAD0();
    v16 = sub_1001C5FE8();

    [v19 removeObserver:v18 recordType:v16];
  }
}

char *sub_10018F4F4(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  sub_1001C69C8(16);

  strcpy(v39, "CRDTModelSync.");
  v39[15] = -18;
  v40._countAndFlagsBits = sub_1000BCAD0();
  sub_1001C6138(v40);

  sub_1001C5138();
  *&v4[qword_100273F58] = 0;
  *&v4[qword_100273F68] = 0;
  *&v4[qword_100281A00 + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[qword_100281A08] = 0;
  *&v4[qword_100273F60] = a2;
  *&v4[qword_100273F70] = a4;
  v36 = a2;
  swift_unknownObjectRetain();
  v10 = [a3 managedObjectContext];
  *&v4[qword_100273F30] = a3;
  *&v4[qword_100273F50] = a1;
  type metadata accessor for CRDTModelSyncMapper();
  swift_allocObject();
  v11 = a3;
  v12 = a1;
  v34 = CRDTModelSyncMapper.init()();
  v13 = [objc_allocWithZone(BCCloudDataSyncManager) initWithCloudKitController:v12 dataMapper:v34];
  *&v4[qword_100273F38] = v13;
  v14 = v13;
  v35 = v10;
  v15 = sub_10018CC5C();
  v16 = [objc_allocWithZone(BCCloudChangeTokenController) initWithMOC:v35 zoneName:v15 cloudKitController:v12];

  *&v4[qword_100273F48] = v16;
  v17 = v11;
  sub_10018CC14();
  type metadata accessor for CRDTModelSyncEntity();
  type metadata accessor for CRDTModelSync();
  v18 = objc_allocWithZone(BCCloudDataManager);
  v19 = v12;
  v20 = v14;

  v21 = sub_1001C5FE8();

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [v18 initWithCloudDataSource:v17 entityName:v21 notificationName:0 immutableClass:ObjCClassFromMetadata mutableClass:swift_getObjCClassFromMetadata() syncManager:v20 cloudKitController:v19 dataMapper:v34];

  *&v5[qword_100273F40] = v23;
  v38.receiver = v5;
  v38.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v38, "init");
  sub_100088714(0, &qword_100274018, off_10023DD58);
  v25 = *&v24[qword_100273F48];
  v26 = *&v24[qword_100273F50];
  v27 = v24;
  v28 = v25;
  v29 = [v26 privateCloudDatabaseController];
  v30 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithZoneDataManager:v27 tokenController:v28 databaseController:v29];

  v31 = *&v27[qword_100273F58];
  *&v27[qword_100273F58] = v30;

  v32 = *&v27[qword_100273F38];
  [v32 setDelegate:v27];

  swift_unknownObjectRelease();

  return v27;
}

id sub_10018F940()
{
  ObjectType = swift_getObjectType();
  v2 = [*&v0[qword_100273F50] privateCloudDatabaseController];
  v3 = qword_100273F38;
  [v2 removeObserver:*&v0[qword_100273F38]];

  [*&v0[v3] setDelegate:0];
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_10018FA08(uint64_t a1)
{
  v2 = qword_1002819F8;
  v3 = sub_1001C5148();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = *(a1 + qword_100273F68);

  sub_1000CEB00(a1 + qword_100281A00);
  v5 = *(a1 + qword_100273F70);

  return swift_unknownObjectRelease();
}

void sub_10018FB14(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    a4();
    return;
  }

  v8 = Strong;
  if (a2)
  {
    swift_errorRetain();
    v9 = sub_1001C5128();
    v10 = sub_1001C6598();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_1001C6D98();
      v15 = sub_1001874E8(v13, v14, &v22);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "CRDTModelCloudDataManager cloudData: couldn't load existing data: %s", v11, 0xCu);
      sub_10008E7BC(v12);
    }

    goto LABEL_16;
  }

  if (a1)
  {
    type metadata accessor for CRDTModelSync();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = v16;
      swift_unknownObjectRetain();
      (a4)(v17);

      swift_unknownObjectRelease();
      return;
    }

    v18 = sub_1001C5128();
    LOBYTE(v19) = sub_1001C6598();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_15;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "CRDTModelCloudDataManager cloudData: loaded existing data with the wrong type";
    goto LABEL_14;
  }

  v18 = sub_1001C5128();
  v19 = sub_1001C65B8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "CRDTModelCloudDataManager cloudData: no existing data";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 2u);
  }

LABEL_15:

LABEL_16:
  (a4)(0);
}