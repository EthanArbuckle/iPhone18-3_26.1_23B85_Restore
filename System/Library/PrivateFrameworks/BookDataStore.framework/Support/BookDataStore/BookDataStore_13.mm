id sub_10018FDC4(char a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, void *a7)
{
  swift_errorRetain();
  v12 = sub_1001C5128();
  v13 = sub_1001C65B8();

  if (os_log_type_enabled(v12, v13))
  {
    v20 = a7;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 134218498;
    *(v14 + 4) = a1 & 1;
    *(v14 + 12) = 2048;
    *(v14 + 14) = a2 & 1;
    *(v14 + 22) = 2080;
    if (a3)
    {
      swift_getErrorValue();
      sub_1001C6D98();
    }

    sub_100084528(&qword_10026FC88, &unk_1001F1AA0);
    v16 = sub_1001C6078();
    v18 = sub_1001874E8(v16, v17, &v21);

    *(v14 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "CRDTModelCloudDataManager q_sync: BCCloudDataManager is done: success=%ld hasChanges=%ld error=%s", v14, 0x20u);
    sub_10008E7BC(v15);

    a7 = v20;
  }

  else
  {
  }

  a5(a1 & 1);
  return [a7 endTransaction];
}

void sub_10018FF9C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + qword_100273F40);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_100192BC4;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10018C974;
  v8[3] = &unk_10024BD20;
  v7 = _Block_copy(v8);

  [v5 hasSaltChangedWithCompletion:v7];
  _Block_release(v7);
}

uint64_t sub_100190088(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = a1;
  sub_10018FF9C(sub_1000CACE8, v5);
}

void sub_100190114(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_1001C5128();
  v7 = sub_1001C65B8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17[0] = v9;
    *v8 = 136315138;
    v10 = sub_1000BCAD0();
    v12 = sub_1001874E8(v10, v11, v17);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "CRDTModelCloudDataManager dissociateCloudDataFromSyncWithCompletion for: %s", v8, 0xCu);
    sub_10008E7BC(v9);
  }

  v13 = *&v2[qword_100273F40];
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  v17[4] = sub_100192AD4;
  v17[5] = v14;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10018CA5C;
  v17[3] = &unk_10024BC58;
  v15 = _Block_copy(v17);
  v16 = v3;
  sub_1001575A0(a1);

  [v13 dissociateCloudDataFromSyncWithCompletion:v15];
  _Block_release(v15);
}

void sub_100190304(char a1, uint64_t a2, void *a3, void (*a4)(void, uint64_t), uint64_t a5)
{
  if (a1)
  {
    v8 = *(a3 + qword_100273F48);
    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = a4;
    v9[4] = a5;
    v26[4] = sub_100192B28;
    v26[5] = v9;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 1107296256;
    v26[2] = sub_10018CA5C;
    v26[3] = &unk_10024BCA8;
    v10 = _Block_copy(v26);
    v11 = a3;
    sub_1001575A0(a4);

    [v8 dissociateCloudDataFromSyncWithCompletion:v10];
    _Block_release(v10);
  }

  else
  {
    v13 = (swift_isaMask & *a3);
    swift_errorRetain();
    v14 = sub_1001C5128();
    v15 = sub_1001C6598();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26[0] = v18;
      *v16 = 136315394;
      v19 = v13[10];
      v20 = v13[11];
      v21 = v13[12];
      type metadata accessor for CRDTModelCloudDataManager();
      v22 = sub_1000BCAD0();
      v24 = sub_1001874E8(v22, v23, v26);

      *(v16 + 4) = v24;
      *(v16 + 12) = 2112;
      if (a2)
      {
        v25 = sub_1001C4A18();
      }

      else
      {
        sub_100088714(0, &qword_100274000, NSString_ptr);
        v25 = sub_1001C67C8();
      }

      *(v16 + 14) = v25;
      *v17 = v25;
      _os_log_impl(&_mh_execute_header, v14, v15, "CRDTModelCloudDataManager failed to dissociate data for: %s %@", v16, 0x16u);
      sub_10008875C(v17, &unk_1002718E0, &qword_1001F31F0);

      sub_10008E7BC(v18);
    }

    if (a4)
    {
      a4(0, a2);
    }
  }
}

void sub_1001905EC(char a1, uint64_t a2, void *a3, void (*a4)(void, uint64_t))
{
  v7 = (swift_isaMask & *a3);
  swift_errorRetain();
  v8 = sub_1001C5128();
  v9 = sub_1001C65B8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136315650;
    v13 = v7[10];
    v14 = v7[11];
    v15 = v7[12];
    type metadata accessor for CRDTModelCloudDataManager();
    v16 = sub_1000BCAD0();
    v18 = sub_1001874E8(v16, v17, &v20);

    *(v10 + 4) = v18;
    *(v10 + 12) = 1024;
    *(v10 + 14) = a1 & 1;
    *(v10 + 18) = 2112;
    if (a2)
    {
      v19 = sub_1001C4A18();
    }

    else
    {
      sub_100088714(0, &qword_100274000, NSString_ptr);
      v19 = sub_1001C67C8();
    }

    *(v10 + 20) = v19;
    *v11 = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "CRDTModelCloudDataManager dissociateCloudDataFromSyncWithCompletion for: %s finish with success:%{BOOL}d error: %@", v10, 0x1Cu);
    sub_10008875C(v11, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v12);

    if (a4)
    {
      goto LABEL_8;
    }
  }

  else
  {

    if (a4)
    {
LABEL_8:
      a4(a1 & 1, a2);
    }
  }
}

void sub_100190830(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1000CACE8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = a1;
  sub_100190114(v7, v6);
  sub_1000044D8(v7);
}

void sub_1001908E8(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  if (*(v3 + qword_100281A08) == 1)
  {
    v6 = v3;
    v8 = sub_1001C5128();
    v9 = sub_1001C65B8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "CRDTModelCloudDataManager startSyncToCKWithCompletion: starting syncing to CK", v10, 2u);
    }

    v11 = *(v6 + qword_100273F40);
    v13[4] = a2;
    v13[5] = a3;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_1000DD4AC;
    v13[3] = &unk_10024BBE0;
    v12 = _Block_copy(v13);

    [v11 startSyncToCKWithSyncManager:a1 completion:v12];
    _Block_release(v12);
  }

  else
  {
    a2();
  }
}

uint64_t sub_100190A64(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = a1;
  sub_1001908E8(v8, sub_100192AC4, v7);
}

void sub_100190B04(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = [*(v1 + qword_100273F50) transactionManager];
  v6 = *((v4 & v3) + 0x50);
  v7 = *((v4 & v3) + 0x58);
  v8 = *((v4 & v3) + 0x60);
  type metadata accessor for CRDTModelCloudDataManager();
  sub_1000BCAD0();
  v9 = sub_1001C5FE8();

  [v5 signalSyncToCKTransactionForEntityName:v9 syncManager:a1];
}

void sub_100190C00(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100190B04(v4);
}

uint64_t sub_100190C68(void *a1, int a2, void *a3, int a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
  sub_1001C6298();
  v8 = a3;
  v9 = a1;
  sub_1001919DC();
  _Block_release(v7);
}

uint64_t sub_100190D10(void *a1, int a2, void *a3, int a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  sub_100084528(&qword_100271010, &unk_1001F1D60);
  v8 = sub_1001C6298();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = a3;
  v11 = a1;
  sub_100191B1C(v8, sub_1000CACE8, v9);
}

uint64_t sub_100190DE8(char a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a4(a1 & 1, a3);
  }

  v9 = Strong;
  if (a2 >> 62)
  {
    result = sub_1001C6B38();
    if (!result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_11;
    }
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v11 = sub_1001C69F8();
    goto LABEL_7;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(a2 + 32);
    swift_unknownObjectRetain();
LABEL_7:
    v12 = [objc_allocWithZone(type metadata accessor for CRDTModelSync()) initWithCloudData:v11];
    if (v12)
    {
      v13 = v12;
      v14 = &v9[qword_100281A00];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v14 + 1);
        ObjectType = swift_getObjectType();
        (*(v15 + 8))(v13, ObjectType, v15);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = sub_1001C5128();
        v21 = sub_1001C6598();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v20, v21, "CRDTModelCloudDataManager resolveConflictsFor: delegate is nil", v22, 2u);
        }

        swift_unknownObjectRelease();
      }

      return a4(a1 & 1, a3);
    }

    swift_unknownObjectRelease();
LABEL_11:
    v17 = sub_1001C5128();
    v18 = sub_1001C6598();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "CRDTModelCloudDataManager resolveConflictsFor: couldn't obtain cloudData", v19, 2u);
    }

    return a4(a1 & 1, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100191074(void *a1, int a2, void *a3, int a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  sub_100088714(0, &unk_10026FEC0, CKRecord_ptr);
  v8 = sub_1001C6298();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = a3;
  v11 = a1;
  sub_100191FF0(v8, sub_1000CACE8, v9);
}

uint64_t sub_100191150(void *a1, int a2, void *a3, int a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
  v8 = sub_1001C6298();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = a3;
  v11 = a1;
  sub_10019274C(v8, sub_1000C99F0, v9);
}

id sub_10019122C(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x50);
  v2 = *((swift_isaMask & *a1) + 0x58);
  v3 = *((swift_isaMask & *a1) + 0x60);
  sub_100191828();
  v4 = sub_1001C5FE8();

  return v4;
}

void sub_1001912C4(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x50);
  v2 = *((swift_isaMask & *a1) + 0x58);
  v3 = *((swift_isaMask & *a1) + 0x60);
  sub_100192984();
}

char *sub_100191330(void *a1, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  ObjectType = swift_getObjectType();
  sub_1001C69C8(16);

  strcpy(v49, "CRDTModelSync.");
  HIBYTE(v49[1]) = -18;
  v48 = type metadata accessor for ReadingHistoryModel(0);
  sub_100084528(&qword_10026F330, qword_1001F0760);
  v8 = sub_1001C6078();
  v10 = v9;
  sub_1001C61E8();
  v11 = sub_1001C6088();
  v13 = v12;

  v14 = sub_10014074C(15, v11, v13, v8, v10);
  v16 = v15;

  v50._countAndFlagsBits = v14;
  v50._object = v16;
  sub_1001C6138(v50);

  sub_1001C5138();
  *&a5[qword_100273F58] = 0;
  *&a5[qword_100273F68] = 0;
  *&a5[qword_100281A00 + 8] = 0;
  swift_unknownObjectWeakInit();
  a5[qword_100281A08] = 0;
  *&a5[qword_100273F60] = a2;
  *&a5[qword_100273F70] = a4;
  v44 = a2;
  swift_unknownObjectRetain();
  v17 = [a3 managedObjectContext];
  *&a5[qword_100273F30] = a3;
  *&a5[qword_100273F50] = a1;
  type metadata accessor for CRDTModelSyncMapper();
  swift_allocObject();
  v18 = a3;
  v19 = a1;
  v42 = CRDTModelSyncMapper.init()();
  v20 = [objc_allocWithZone(BCCloudDataSyncManager) initWithCloudKitController:v19 dataMapper:v42];
  *&a5[qword_100273F38] = v20;
  v21 = v20;
  v43 = v17;
  sub_1001C6078();
  v22 = sub_1001C5FE8();

  v23 = [objc_allocWithZone(BCCloudChangeTokenController) initWithMOC:v43 zoneName:v22 cloudKitController:v19];

  *&a5[qword_100273F48] = v23;
  v49[0] = type metadata accessor for CRDTModelSyncEntity();
  v24 = v18;
  sub_100084528(&qword_100274010, &unk_1001F0E98);
  sub_1001C6078();
  type metadata accessor for CRDTModelSync();
  v25 = objc_allocWithZone(BCCloudDataManager);
  v26 = v19;
  v27 = v21;

  v28 = sub_1001C5FE8();

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [v25 initWithCloudDataSource:v24 entityName:v28 notificationName:0 immutableClass:ObjCClassFromMetadata mutableClass:swift_getObjCClassFromMetadata() syncManager:v27 cloudKitController:v26 dataMapper:v42];

  *&a5[qword_100273F40] = v30;
  v47.receiver = a5;
  v47.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v47, "init");
  v32 = *&v31[qword_100273F48];
  v33 = *&v31[qword_100273F50];
  v34 = v31;
  v35 = v32;
  v36 = [v33 privateCloudDatabaseController];
  v37 = [objc_allocWithZone(BDSSaltVersionIdentifierManager) initWithZoneDataManager:v34 tokenController:v35 databaseController:v36];

  v38 = *&v34[qword_100273F58];
  *&v34[qword_100273F58] = v37;

  v39 = *&v34[qword_100273F38];
  [v39 setDelegate:v34];

  swift_unknownObjectRelease();

  return v34;
}

uint64_t sub_100191860(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_100187B3C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100188B88(v16, a4 & 1);
      v20 = *a5;
      v11 = sub_100187B3C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1001C6D68();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10018AAD4();
      v11 = v19;
    }
  }

  v22 = *a5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void sub_1001919DC()
{

  oslog = sub_1001C5128();
  v0 = sub_1001C6598();

  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v7 = v2;
    *v1 = 136315138;
    sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
    v3 = sub_1001C62A8();
    v5 = sub_1001874E8(v3, v4, &v7);

    *(v1 + 4) = v5;
    _os_log_impl(&_mh_execute_header, oslog, v0, "CRDTModelCloudDataManager removeCloudDataFor: asked to remove cloud data: %s", v1, 0xCu);
    sub_10008E7BC(v2);
  }
}

void sub_100191B1C(unint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v4 = a2;
  if (*(v3 + qword_100281A08) == 1)
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
LABEL_33:
      v41 = a3;
      v42 = sub_1001C6B38();
      a3 = v41;
      v7 = v42;
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = a3;
    v45 = v3;
    v43 = v4;
    if (v7)
    {
      v4 = 0;
      v8 = _swiftEmptyArrayStorage;
      do
      {
        v9 = v4;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v10 = sub_1001C69F8();
            v4 = (v9 + 1);
            if (__OFADD__(v9, 1))
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (v9 >= *(v6 + 16))
            {
              goto LABEL_32;
            }

            v10 = *(a1 + 8 * v9 + 32);
            swift_unknownObjectRetain();
            v4 = (v9 + 1);
            if (__OFADD__(v9, 1))
            {
LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }
          }

          swift_getObjectType();
          v11 = swift_conformsToProtocol2();
          if (v11)
          {
            if (v10)
            {
              break;
            }
          }

          swift_unknownObjectRelease();
          ++v9;
          if (v4 == v7)
          {
            goto LABEL_25;
          }
        }

        v3 = v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_1000AE634(0, v8[2] + 1, 1, v8);
        }

        v14 = v8[2];
        v13 = v8[3];
        if (v14 >= v13 >> 1)
        {
          v8 = sub_1000AE634((v13 > 1), v14 + 1, 1, v8);
        }

        v8[2] = v14 + 1;
        v15 = &v8[2 * v14];
        v15[4] = v10;
        v15[5] = v3;
      }

      while (v4 != v7);
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

LABEL_25:
    v16 = v8[2];
    if (v16)
    {
      v17 = v8 + 5;
      v18 = &_swiftEmptyDictionarySingleton;
      do
      {
        v19 = *(v17 - 1);
        v20 = *v17;
        ObjectType = swift_getObjectType();
        v22 = *(v20 + 8);
        swift_unknownObjectRetain();
        v23 = v22(ObjectType, v20);
        v25 = v24;
        swift_unknownObjectRetain();
        v26 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v18;
        sub_100191860(v19, v23, v25, v26, aBlock);
        swift_unknownObjectRelease();

        v18 = aBlock[0];
        v17 += 2;
        --v16;
      }

      while (v16);
    }

    v27 = v45;
    v28 = sub_1001C5128();
    v29 = sub_1001C65B8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136315138;

      sub_100084528(&qword_100271010, &unk_1001F1D60);
      v32 = sub_1001C5F18();
      v34 = v33;

      v35 = sub_1001874E8(v32, v34, aBlock);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "CRDTModelCloudDataManager updateSyncGenerationFromCloudData: updating sync generation for %s", v30, 0xCu);
      sub_10008E7BC(v31);

      v27 = v45;
    }

    v36 = *(v27 + qword_100273F40);

    sub_100084528(&qword_100271010, &unk_1001F1D60);
    isa = sub_1001C5EF8().super.isa;

    v38 = sub_1001C5FE8();
    v39 = swift_allocObject();
    *(v39 + 16) = v43;
    *(v39 + 24) = v44;
    aBlock[4] = sub_100192A9C;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10018C974;
    aBlock[3] = &unk_10024BB90;
    v40 = _Block_copy(aBlock);

    [v36 updateSyncGenerationFromCloudData:isa predicate:0 propertyIDKey:v38 completion:v40];
    _Block_release(v40);
  }

  else
  {
    a2(0, 0);
  }
}

void sub_100191FF0(unint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  v8 = swift_isaMask & *v3;
  v9 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v61 - v14;
  if (a1 >> 62)
  {
    if (sub_1001C6B38() < 2)
    {
      goto LABEL_6;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    goto LABEL_6;
  }

  v16 = sub_1001C5128();
  v17 = sub_1001C6598();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v67 = a2;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "CRDTModelCloudDataManager resolveConflictsFor: received changes for more than 1 record. This shouldn't be possible", v18, 2u);
    a2 = v67;
  }

LABEL_6:
  if (*(v4 + qword_100281A08) != 1)
  {
    a2(0, 0);
    return;
  }

  v66 = a3;
  v64 = v15;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v19 = sub_1001C69F8();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v19 = *(a1 + 32);
  }

  v65 = v8;
  v67 = a2;
  v20 = v19;
  v21 = sub_1001C5128();
  v22 = sub_1001C65B8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v68 = v63;
    *v23 = 138544387;
    *(v23 + 4) = v20;
    *v24 = v20;
    *(v23 + 12) = 2114;
    v25 = v20;
    v26 = [v25 recordID];
    *(v23 + 14) = v26;
    v61 = v24;
    v24[1] = v26;
    *(v23 + 22) = 2082;
    v27 = [v25 creationDate];
    v62 = v22;
    if (v27)
    {
      v28 = v27;
      v29 = v64;
      sub_1001C4C78();

      v30 = sub_1001C4CA8();
      (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
    }

    else
    {
      v31 = sub_1001C4CA8();
      (*(*(v31 - 8) + 56))(v64, 1, 1, v31);
    }

    v32 = sub_1001C6078();
    v34 = sub_1001874E8(v32, v33, &v68);

    *(v23 + 24) = v34;
    *(v23 + 32) = 2082;
    v35 = [v25 modificationDate];
    if (v35)
    {
      v36 = v35;
      sub_1001C4C78();

      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    v38 = sub_1001C4CA8();
    (*(*(v38 - 8) + 56))(v13, v37, 1, v38);
    v39 = sub_1001C6078();
    v41 = sub_1001874E8(v39, v40, &v68);

    *(v23 + 34) = v41;
    *(v23 + 42) = 2081;
    v42 = [v25 modifiedByDevice];
    if (v42)
    {
      v43 = v42;
      v44 = sub_1001C6018();
      v46 = v45;
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    aBlock = v44;
    v70 = v46;
    sub_100084528(&qword_10026FC88, &unk_1001F1AA0);
    v47 = sub_1001C6078();
    v49 = sub_1001874E8(v47, v48, &v68);

    *(v23 + 44) = v49;
    _os_log_impl(&_mh_execute_header, v21, v62, "CRDTModelCloudDataManager resolveConflictsFor: resolving conflicts for record: %{public}@ id: %{public}@ created: %{public}s modified: %{public}s modifiedByDevice:%{private}s", v23, 0x34u);
    sub_100084528(&unk_1002718E0, &qword_1001F31F0);
    swift_arrayDestroy();

    swift_arrayDestroy();
  }

  v50 = *(v4 + qword_100273F40);
  sub_100088714(0, &unk_10026FEC0, CKRecord_ptr);
  isa = sub_1001C6288().super.isa;
  sub_10018CE3C();
  sub_100084528(&qword_10026FC80, &qword_1001F5970);
  v52 = sub_1001C5EF8().super.isa;

  sub_10018CE3C();
  v53 = sub_1001C5EF8().super.isa;

  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = swift_allocObject();
  v56 = v65;
  v57 = v66;
  *(v55 + 16) = *(v65 + 80);
  v58 = *(v56 + 96);
  v59 = v67;
  *(v55 + 32) = v58;
  *(v55 + 40) = v59;
  *(v55 + 48) = v57;
  *(v55 + 56) = v54;
  v73 = sub_1001929CC;
  v74 = v55;
  aBlock = _NSConcreteStackBlock;
  v70 = 1107296256;
  v71 = sub_10018CAE0;
  v72 = &unk_10024BAC8;
  v60 = _Block_copy(&aBlock);

  [v50 resolveConflictsForRecords:isa withResolvers:v52 mergers:v53 completion:v60];
  _Block_release(v60);
}

void sub_10019274C(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  if (*(v3 + qword_100281A08) == 1)
  {
    v6 = v3;

    v7 = sub_1001C5128();
    v8 = sub_1001C65B8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17[0] = v10;
      *v9 = 136315138;
      sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
      v11 = sub_1001C62A8();
      v13 = sub_1001874E8(v11, v12, v17);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "CRDTModelCloudDataManager failedRecordIDs: failed records %s", v9, 0xCu);
      sub_10008E7BC(v10);
    }

    v14 = *(v6 + qword_100273F40);
    sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
    isa = sub_1001C6288().super.isa;
    v17[4] = a2;
    v17[5] = a3;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_10018CA5C;
    v17[3] = &unk_10024BA28;
    v16 = _Block_copy(v17);

    [v14 failedRecordIDs:isa completion:v16];
    _Block_release(v16);
  }

  else
  {
    a2(0, 0);
  }
}

uint64_t sub_1001929B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001929CC(char a1, unint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 48);
  v7 = *(v3 + 56);
  v9 = *(v3 + 32);
  return sub_100190DE8(a1, a2, a3, *(v3 + 40));
}

uint64_t sub_100192A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_10026FCB0, &unk_1001F14E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100192A9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100192AE0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100192B40(void (*a1)(void))
{
  v3 = *(v1 + 40);

  a1(*(v1 + 56));

  return _swift_deallocObject(v1, 64, 7);
}

void sub_100192B90(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 56);
  sub_10018FB14(a1, a2, *(v2 + 40), *(v2 + 48));
}

uint64_t _s14UpdateScheduleVMa()
{
  result = qword_100274078;
  if (!qword_100274078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100192C60()
{
  sub_1001C4CA8();
  if (v0 <= 0x3F)
  {
    sub_100192CE4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100192CE4()
{
  if (!qword_100274088)
  {
    v0 = sub_1001C62F8();
    if (!v1)
    {
      atomic_store(v0, &qword_100274088);
    }
  }
}

__n128 sub_100192D34(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100192D40(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100192D60(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100192D9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v146 = *(v4 - 8);
  v5 = *(v146 + 64);
  __chkstk_darwin(v4);
  v7 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v119 - v10;
  v12 = sub_100084528(&qword_100273118, &unk_1001F8310);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v119 - v14;
  v16 = sub_1001C4EE8();
  v141 = *(v16 - 8);
  v17 = *(v141 + 64);
  v18 = __chkstk_darwin(v16);
  v153 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v119 - v20;
  v22 = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v142 = &v119 - v24;
  v148 = sub_100084528(&qword_1002730F8, &unk_1001F8320);
  v25 = *(*(v148 - 8) + 64);
  __chkstk_darwin(v148);
  v149 = &v119 - v26;
  v154 = type metadata accessor for PBPropertyValue(0);
  v135 = *(v154 - 1);
  v27 = *(v135 + 64);
  v28 = __chkstk_darwin(v154);
  v151 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v155 = (&v119 - v30);
  v145 = type metadata accessor for PBPropertyConfiguration(0);
  v31 = *(v145 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v145);
  v136 = (&v119 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = sub_100084528(&qword_1002705A8, &unk_1001F5200);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v137 = (&v119 - v36);
  v143 = sub_100084528(&qword_100273110, &unk_1001F6A90);
  v37 = *(*(v143 - 8) + 64);
  __chkstk_darwin(v143);
  v144 = &v119 - v38;
  v147 = type metadata accessor for PBPropertyBundle(0);
  v39 = *(*(v147 - 8) + 64);
  v40 = __chkstk_darwin(v147);
  v152 = (&v119 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v40);
  v44 = &v119 - v43;
  v45 = *(a1 + 16);
  if (v45 != *(a2 + 16))
  {
LABEL_63:
    v113 = 0;
    return v113 & 1;
  }

  if (!v45 || a1 == a2)
  {
    v113 = 1;
    return v113 & 1;
  }

  v121 = v7;
  v46 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v47 = a1 + v46;
  v126 = a2 + v46;
  v125 = (v31 + 48);
  v131 = (v141 + 48);
  v123 = (v141 + 32);
  v150 = (v141 + 8);
  v130 = (v146 + 48);
  v146 = v141 + 16;
  v48 = *(v42 + 72);
  v133 = v4;
  v122 = v11;
  v132 = v15;
  v49 = 0;
  v129 = v12;
  v138 = (&v119 - v43);
  v128 = v45;
  v120 = v47;
  v119 = v48;
  while (1)
  {
    v50 = v44;
    result = sub_100197D44(v47 + v48 * v49, v44, type metadata accessor for PBPropertyBundle);
    if (v49 == v128)
    {
      goto LABEL_66;
    }

    v52 = v152;
    sub_100197D44(v126 + v48 * v49, v152, type metadata accessor for PBPropertyBundle);
    v53 = *(v147 + 28);
    v54 = *(v143 + 48);
    v55 = v144;
    sub_10009ADF0(&v50[v53], v144, &qword_1002705A8, &unk_1001F5200);
    sub_10009ADF0(v52 + v53, v55 + v54, &qword_1002705A8, &unk_1001F5200);
    v56 = *v125;
    v57 = v145;
    v58 = (*v125)(v55, 1, v145);
    v124 = v49;
    if (v58 == 1)
    {
      if (v56(v55 + v54, 1, v57) != 1)
      {
        goto LABEL_60;
      }

      sub_10008875C(v55, &qword_1002705A8, &unk_1001F5200);
      v59 = v151;
      goto LABEL_17;
    }

    v60 = v137;
    sub_10009ADF0(v55, v137, &qword_1002705A8, &unk_1001F5200);
    if (v56(v55 + v54, 1, v57) == 1)
    {
      sub_100197DF4(v60, type metadata accessor for PBPropertyConfiguration);
LABEL_60:
      v114 = &qword_100273110;
      v115 = &unk_1001F6A90;
      goto LABEL_61;
    }

    v61 = v136;
    sub_100197E54(v55 + v54, v136, type metadata accessor for PBPropertyConfiguration);
    if (*v60 != *v61 || v60[1] != v61[1] || (v60[2] != v61[2] || v60[3] != v61[3]) && (sub_1001C6D08() & 1) == 0 || v60[4] != v61[4])
    {
      sub_100197DF4(v61, type metadata accessor for PBPropertyConfiguration);
      sub_100197DF4(v60, type metadata accessor for PBPropertyConfiguration);
      v114 = &qword_1002705A8;
      v115 = &unk_1001F5200;
LABEL_61:
      sub_10008875C(v55, v114, v115);
LABEL_62:
      sub_100197DF4(v152, type metadata accessor for PBPropertyBundle);
      sub_100197DF4(v138, type metadata accessor for PBPropertyBundle);
      goto LABEL_63;
    }

    v62 = *(v57 + 32);
    sub_1001C4F18();
    sub_100197DAC(&qword_100272938, &type metadata accessor for UnknownStorage);
    LOBYTE(v62) = sub_1001C5FD8();
    sub_100197DF4(v61, type metadata accessor for PBPropertyConfiguration);
    sub_100197DF4(v60, type metadata accessor for PBPropertyConfiguration);
    sub_10008875C(v55, &qword_1002705A8, &unk_1001F5200);
    v59 = v151;
    if ((v62 & 1) == 0)
    {
      goto LABEL_62;
    }

LABEL_17:
    v63 = *v138;
    v64 = *v152;
    v65 = *(*v138 + 16);
    if (v65 != *(*v152 + 16))
    {
      goto LABEL_62;
    }

    if (v65 && v63 != v64)
    {
      break;
    }

LABEL_42:
    v99 = v138[1];
    v100 = v152[1];
    v101 = *(v99 + 16);
    if (v101 != *(v100 + 16))
    {
      goto LABEL_62;
    }

    if (v101 && v99 != v100)
    {
      v102 = (*(v141 + 80) + 32) & ~*(v141 + 80);
      v103 = v99 + v102;
      v104 = v100 + v102;
      v105 = *(v141 + 72);
      v106 = *(v141 + 16);
      v139 = v106;
      v140 = v105;
      do
      {
        v106(v21, v103, v16);
        v107 = v153;
        v106(v153, v104, v16);
        sub_100197DAC(&qword_1002721C0, &type metadata accessor for Google_Protobuf_Timestamp);
        v108 = sub_1001C5FD8();
        v109 = *v150;
        (*v150)(v107, v16);
        v109(v21, v16);
        if ((v108 & 1) == 0)
        {
          goto LABEL_62;
        }

        v106 = v139;
        v104 += v140;
        v103 += v140;
      }

      while (--v101);
    }

    v110 = *(v147 + 24);
    sub_1001C4F18();
    sub_100197DAC(&qword_100272938, &type metadata accessor for UnknownStorage);
    v111 = v138;
    v112 = v152;
    v113 = sub_1001C5FD8();
    sub_100197DF4(v112, type metadata accessor for PBPropertyBundle);
    sub_100197DF4(v111, type metadata accessor for PBPropertyBundle);
    if (v113)
    {
      v49 = v124 + 1;
      v44 = v138;
      v47 = v120;
      v48 = v119;
      if (v124 + 1 != v128)
      {
        continue;
      }
    }

    return v113 & 1;
  }

  v66 = (*(v135 + 80) + 32) & ~*(v135 + 80);
  v67 = v63 + v66;
  v68 = v64 + v66;
  v127 = *(v135 + 72);
  while (1)
  {
    v69 = v155;
    result = sub_100197D44(v67, v155, type metadata accessor for PBPropertyValue);
    if (!v65)
    {
      break;
    }

    v139 = v67;
    v140 = v65;
    v70 = v21;
    v134 = v68;
    sub_100197D44(v68, v59, type metadata accessor for PBPropertyValue);
    v71 = v154[7];
    v72 = v149;
    v73 = *(v148 + 48);
    sub_10009ADF0(v69 + v71, v149, &qword_1002705B8, &unk_1001F2BE0);
    sub_10009ADF0(v59 + v71, v72 + v73, &qword_1002705B8, &unk_1001F2BE0);
    v74 = *v131;
    v75 = (*v131)(v72, 1, v16);
    v76 = v133;
    v77 = v132;
    if (v75 == 1)
    {
      if (v74(v72 + v73, 1, v16) != 1)
      {
        goto LABEL_54;
      }

      sub_10008875C(v72, &qword_1002705B8, &unk_1001F2BE0);
      v21 = v70;
      v78 = v130;
    }

    else
    {
      v79 = v142;
      sub_10009ADF0(v72, v142, &qword_1002705B8, &unk_1001F2BE0);
      if (v74(v72 + v73, 1, v16) == 1)
      {
        (*v150)(v79, v16);
        v59 = v151;
LABEL_54:
        v116 = &qword_1002730F8;
        v117 = &unk_1001F8320;
        v118 = v72;
LABEL_57:
        sub_10008875C(v118, v116, v117);
LABEL_58:
        sub_100197DF4(v59, type metadata accessor for PBPropertyValue);
        sub_100197DF4(v155, type metadata accessor for PBPropertyValue);
        goto LABEL_62;
      }

      (*v123)(v70, v72 + v73, v16);
      sub_100197DAC(&qword_1002721C0, &type metadata accessor for Google_Protobuf_Timestamp);
      v80 = sub_1001C5FD8();
      v81 = *v150;
      (*v150)(v70, v16);
      v81(v79, v16);
      v82 = v72;
      v21 = v70;
      sub_10008875C(v82, &qword_1002705B8, &unk_1001F2BE0);
      v59 = v151;
      v78 = v130;
      if ((v80 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    v83 = v154[8];
    v84 = (v155 + v83);
    v85 = *(v155 + v83 + 8);
    v86 = (v59 + v83);
    v87 = v86[1];
    if (v85)
    {
      if (!v87 || (*v84 != *v86 || v85 != v87) && (sub_1001C6D08() & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (v87)
    {
      goto LABEL_58;
    }

    if (*v155 != *v59)
    {
      goto LABEL_58;
    }

    v88 = v154[5];
    v89 = *(v129 + 48);
    sub_10009ADF0(v155 + v88, v77, &qword_1002705B0, &qword_1001F2BD8);
    sub_10009ADF0(v59 + v88, v77 + v89, &qword_1002705B0, &qword_1001F2BD8);
    v90 = *v78;
    if ((*v78)(v77, 1, v76) == 1)
    {
      if (v90(v77 + v89, 1, v76) != 1)
      {
        goto LABEL_56;
      }

      sub_10008875C(v77, &qword_1002705B0, &qword_1001F2BD8);
    }

    else
    {
      v91 = v77;
      v92 = v77;
      v93 = v122;
      sub_10009ADF0(v91, v122, &qword_1002705B0, &qword_1001F2BD8);
      if (v90(v92 + v89, 1, v76) == 1)
      {
        sub_100197DF4(v93, type metadata accessor for PBPropertyValue.OneOf_Params);
        v77 = v92;
        v59 = v151;
LABEL_56:
        v116 = &qword_100273118;
        v117 = &unk_1001F8310;
        v118 = v77;
        goto LABEL_57;
      }

      v94 = v121;
      sub_100197E54(v92 + v89, v121, type metadata accessor for PBPropertyValue.OneOf_Params);
      v95 = static PBPropertyValue.OneOf_Params.__derived_enum_equals(_:_:)(v93, v94);
      sub_100197DF4(v94, type metadata accessor for PBPropertyValue.OneOf_Params);
      sub_100197DF4(v93, type metadata accessor for PBPropertyValue.OneOf_Params);
      sub_10008875C(v92, &qword_1002705B0, &qword_1001F2BD8);
      v59 = v151;
      if ((v95 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    v96 = v154[6];
    sub_1001C4F18();
    sub_100197DAC(&qword_100272938, &type metadata accessor for UnknownStorage);
    v97 = v155;
    v98 = sub_1001C5FD8();
    sub_100197DF4(v59, type metadata accessor for PBPropertyValue);
    sub_100197DF4(v97, type metadata accessor for PBPropertyValue);
    if ((v98 & 1) == 0)
    {
      goto LABEL_62;
    }

    v68 = v134 + v127;
    v67 = v139 + v127;
    v65 = v140 - 1;
    if (v140 == 1)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_100193E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_100197D44(v14, v11, type metadata accessor for PBPropertyValue);
        sub_100197D44(v15, v8, type metadata accessor for PBPropertyValue);
        v17 = static PBPropertyValue.== infix(_:_:)(v11, v8);
        sub_100197DF4(v8, type metadata accessor for PBPropertyValue);
        sub_100197DF4(v11, type metadata accessor for PBPropertyValue);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_100194024(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001C4EE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_100197DAC(&qword_1002721C0, &type metadata accessor for Google_Protobuf_Timestamp);
    v22 = sub_1001C5FD8();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100194238(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    v4 = (a1 + 64);
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v7 = *v4;
      v9 = *(v3 - 2);
      v8 = *(v3 - 1);
      v10 = *v3;
      if (*(v4 - 4) == *(v3 - 4) && *(v4 - 3) == *(v3 - 3))
      {
        result = 0;
        if (v6 != v9 || v5 != v8)
        {
          return result;
        }
      }

      else
      {
        v12 = sub_1001C6D08();
        result = 0;
        if ((v12 & 1) == 0 || v6 != v9 || v5 != v8)
        {
          return result;
        }
      }

      if ((v7 ^ v10))
      {
        return result;
      }

      v4 += 40;
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_100194320(uint64_t a1, uint64_t a2)
{
  v4 = _s8CardItemVMa();
  v5 = *(*(v4 - 1) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v26 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_100197D44(v14, v11, _s8CardItemVMa);
      sub_100197D44(v15, v8, _s8CardItemVMa);
      v17 = *v11 == *v8 && *(v11 + 1) == *(v8 + 1);
      if (!v17 && (sub_1001C6D08() & 1) == 0)
      {
        break;
      }

      if (v11[16] != v8[16])
      {
        break;
      }

      v18 = v4[6];
      if ((sub_1001C4C68() & 1) == 0 || *&v11[v4[7]] != *&v8[v4[7]])
      {
        break;
      }

      v19 = v4[8];
      v20 = *&v11[v19];
      v21 = *&v11[v19 + 8];
      v22 = &v8[v19];
      if (v20 == *v22 && v21 == *(v22 + 1))
      {
        sub_100197DF4(v8, _s8CardItemVMa);
        sub_100197DF4(v11, _s8CardItemVMa);
      }

      else
      {
        v24 = sub_1001C6D08();
        sub_100197DF4(v8, _s8CardItemVMa);
        sub_100197DF4(v11, _s8CardItemVMa);
        if ((v24 & 1) == 0)
        {
          return 0;
        }
      }

      v15 += v16;
      v14 += v16;
      if (!--v12)
      {
        return 1;
      }
    }

    sub_100197DF4(v8, _s8CardItemVMa);
    sub_100197DF4(v11, _s8CardItemVMa);
  }

  return 0;
}

uint64_t sub_1001945AC(uint64_t a1, uint64_t a2)
{
  v49 = _s11RecentPriceVMa();
  v4 = *(v49 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v49);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100084528(&qword_1002740D8, &qword_1001F82F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v54 = (&v43 - v10);
  v51 = sub_100084528(&qword_1002740E0, &qword_1001F82F8);
  v11 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v13 = &v43 - v12;
  v50 = _s11TrackedItemVMa();
  v14 = *(*(v50 - 8) + 64);
  v15 = __chkstk_darwin(v50);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v20 = &v43 - v19;
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
    return 0;
  }

  if (!v21 || a1 == a2)
  {
    return 1;
  }

  v44 = v7;
  v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v47 = v13;
  v48 = (v4 + 48);
  v46 = *(v18 + 72);
  v25 = v49;
  while (1)
  {
    sub_100197D44(v23, v20, _s11TrackedItemVMa);
    sub_100197D44(v24, v17, _s11TrackedItemVMa);
    v26 = v20[16];
    v27 = v17[16];
    if (*v20 == *v17 && *(v20 + 1) == *(v17 + 1))
    {
      if (v26 != v27)
      {
        goto LABEL_38;
      }
    }

    else if (sub_1001C6D08() & 1) == 0 || ((v26 ^ v27))
    {
      goto LABEL_38;
    }

    v29 = *(v20 + 5);
    v30 = *(v17 + 5);
    if (v29 == 1)
    {
      if (v30 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v30 == 1 || *(v20 + 3) != *(v17 + 3))
      {
        goto LABEL_38;
      }

      if (v29)
      {
        if (!v30 || (*(v20 + 4) != *(v17 + 4) || v29 != v30) && (sub_1001C6D08() & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else if (v30)
      {
        goto LABEL_38;
      }
    }

    v52 = v23;
    v53 = v24;
    v31 = *(v50 + 24);
    v32 = *(v51 + 48);
    v33 = v47;
    sub_10009ADF0(&v20[v31], v47, &qword_1002740D8, &qword_1001F82F0);
    sub_10009ADF0(&v17[v31], v33 + v32, &qword_1002740D8, &qword_1001F82F0);
    v34 = *v48;
    if ((*v48)(v33, 1, v25) != 1)
    {
      break;
    }

    v35 = v34(v33 + v32, 1, v25);
    v36 = v53;
    if (v35 != 1)
    {
      goto LABEL_35;
    }

    sub_10008875C(v33, &qword_1002740D8, &qword_1001F82F0);
    sub_100197DF4(v17, _s11TrackedItemVMa);
    sub_100197DF4(v20, _s11TrackedItemVMa);
LABEL_5:
    v24 = v36 + v46;
    v23 = v52 + v46;
    if (!--v21)
    {
      return 1;
    }
  }

  sub_10009ADF0(v33, v54, &qword_1002740D8, &qword_1001F82F0);
  if (v34(v33 + v32, 1, v25) == 1)
  {
    sub_100197DF4(v54, _s11RecentPriceVMa);
LABEL_35:
    v41 = &qword_1002740E0;
    v42 = &qword_1001F82F8;
    goto LABEL_37;
  }

  v37 = v44;
  sub_100197E54(v33 + v32, v44, _s11RecentPriceVMa);
  if (*v54 == *v37)
  {
    v38 = v54;
    v25 = v49;
    v39 = *(v49 + 20);
    v45 = sub_1001C4C68();
    sub_100197DF4(v37, _s11RecentPriceVMa);
    sub_100197DF4(v38, _s11RecentPriceVMa);
    sub_10008875C(v33, &qword_1002740D8, &qword_1001F82F0);
    sub_100197DF4(v17, _s11TrackedItemVMa);
    sub_100197DF4(v20, _s11TrackedItemVMa);
    v36 = v53;
    if ((v45 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  sub_100197DF4(v37, _s11RecentPriceVMa);
  sub_100197DF4(v54, _s11RecentPriceVMa);
  v41 = &qword_1002740D8;
  v42 = &qword_1001F82F0;
LABEL_37:
  sub_10008875C(v33, v41, v42);
LABEL_38:
  sub_100197DF4(v17, _s11TrackedItemVMa);
  sub_100197DF4(v20, _s11TrackedItemVMa);
  return 0;
}

uint64_t sub_100194BA4(uint64_t a1, uint64_t a2)
{
  v4 = _s4DealVMa();
  v5 = *(*(v4 - 1) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v28 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_100197D44(v14, v11, _s4DealVMa);
      sub_100197D44(v15, v8, _s4DealVMa);
      v18 = v11[16];
      v19 = v8[16];
      if (*v11 == *v8 && *(v11 + 1) == *(v8 + 1))
      {
        if (v18 != v19)
        {
          break;
        }
      }

      else if (sub_1001C6D08() & 1) == 0 || ((v18 ^ v19))
      {
        break;
      }

      if ((*(v11 + 3) != *(v8 + 3) || *(v11 + 4) != *(v8 + 4)) && (sub_1001C6D08() & 1) == 0)
      {
        break;
      }

      v21 = v4[6];
      if ((sub_1001C4AC8() & 1) == 0)
      {
        break;
      }

      v22 = v4[7];
      if ((sub_1001C4C68() & 1) == 0 || *&v11[v4[8]] != *&v8[v4[8]])
      {
        break;
      }

      v23 = v4[9];
      v24 = *&v11[v23];
      v25 = *&v11[v23 + 8];
      v26 = &v8[v23];
      if (v24 == *v26 && v25 == *(v26 + 1))
      {
        sub_100197DF4(v8, _s4DealVMa);
        sub_100197DF4(v11, _s4DealVMa);
      }

      else
      {
        v17 = sub_1001C6D08();
        sub_100197DF4(v8, _s4DealVMa);
        sub_100197DF4(v11, _s4DealVMa);
        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }

      v15 += v16;
      v14 += v16;
      if (!--v12)
      {
        return 1;
      }
    }

    sub_100197DF4(v8, _s4DealVMa);
    sub_100197DF4(v11, _s4DealVMa);
  }

  return 0;
}

uint64_t sub_100194E78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v3, *v4), vceqq_f64(v3[1], v4[1]))));
    if ((v5 & 1) == 0)
    {
      break;
    }

    v3 += 2;
    v4 += 2;
    --v2;
  }

  while (v2);
  return v5 & 1;
}

uint64_t sub_100194EFC(uint64_t a1, uint64_t a2)
{
  v4 = _s21PriceDropNotificationVMa();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = (v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v11 = (v22 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_23:
    v20 = 0;
    return v20 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_100197D44(v14, v11, _s21PriceDropNotificationVMa);
      sub_100197D44(v15, v8, _s21PriceDropNotificationVMa);
      v17 = *v11;
      v22[4] = *v8;
      v22[5] = v17;
      sub_1000D9490();
      sub_1001C6248();
      sub_1001C6248();
      if (v22[2] != v22[0])
      {
        goto LABEL_8;
      }

      if (v22[3] == v22[1])
      {
      }

      else
      {
LABEL_8:
        v18 = sub_1001C6D08();

        if ((v18 & 1) == 0)
        {
          break;
        }
      }

      if ((v11[1] != v8[1] || v11[2] != v8[2]) && (sub_1001C6D08() & 1) == 0 || (v11[3] != v8[3] || v11[4] != v8[4]) && (sub_1001C6D08() & 1) == 0 || (v11[5] != v8[5] || v11[6] != v8[6]) && (sub_1001C6D08() & 1) == 0)
      {
        break;
      }

      v19 = *(v4 + 32);
      v20 = sub_1001C4AC8();
      sub_100197DF4(v8, _s21PriceDropNotificationVMa);
      sub_100197DF4(v11, _s21PriceDropNotificationVMa);
      if (v20)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_100197DF4(v8, _s21PriceDropNotificationVMa);
    sub_100197DF4(v11, _s21PriceDropNotificationVMa);
    goto LABEL_23;
  }

  v20 = 1;
  return v20 & 1;
}

double sub_1001951FC(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = a1 >> 14;
  if (a1 >> 14 == a2 >> 14)
  {
LABEL_2:

    v7 = _swiftEmptyArrayStorage;
LABEL_46:
    v52 = *(v7 + 2);
    if (v52 == 2)
    {
      v53 = v7[4];
      v4 = v7[5];

      if (v53 >= 300.0)
      {
        if (v4 >= 300.0 && v4 <= v53)
        {
          return v4;
        }

        sub_10011BAA4();
        swift_allocError();
        *v54 = v4;
        v55 = 1;
      }

      else
      {
        sub_10011BAA4();
        swift_allocError();
        *v54 = v53;
        v55 = 2;
      }

      *(v54 + 8) = v55;
    }

    else
    {

      sub_10011BAA4();
      swift_allocError();
      *v56 = v52;
      *(v56 + 8) = 0;
    }

    swift_willThrow();
    return v4;
  }

  v9 = a2;
  v10 = _swiftEmptyArrayStorage;
  v11 = a1;
  v12 = a1;
  v65 = a2 >> 14;
  do
  {
    v13 = sub_1001C6838();
    v15 = v14;
    if (v13 == 47 && v14 == 0xE100000000000000 || (v16 = v13, (sub_1001C6D08() & 1) != 0) || v16 == 58 && v15 == 0xE100000000000000)
    {
    }

    else
    {
      v32 = sub_1001C6D08();

      if ((v32 & 1) == 0)
      {
        v31 = sub_1001C6808();
        goto LABEL_18;
      }
    }

    if (v11 >> 14 != v6)
    {
      if (v6 < v11 >> 14)
      {
        __break(1u);
        goto LABEL_59;
      }

      v17 = a3;
      v18 = a4;
      v19 = sub_1001C6848();
      v21 = v20;
      v23 = v22;
      v25 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1000ADE44(0, *(v10 + 2) + 1, 1, v10);
      }

      v26 = v10;
      v27 = *(v10 + 2);
      v28 = v26;
      v29 = *(v26 + 3);
      if (v27 >= v29 >> 1)
      {
        v28 = sub_1000ADE44((v29 > 1), v27 + 1, 1, v28);
      }

      *(v28 + 2) = v27 + 1;
      v30 = &v28[32 * v27];
      v10 = v28;
      *(v30 + 4) = v19;
      *(v30 + 5) = v21;
      *(v30 + 6) = v23;
      *(v30 + 7) = v25;
      a4 = v18;
      a3 = v17;
      v9 = a2;
    }

    v31 = sub_1001C6808();
    v11 = v31;
LABEL_18:
    v12 = v31;
    v6 = v31 >> 14;
  }

  while (v31 >> 14 != v65);
  if (v11 >> 14 == v65)
  {

    v33 = *(v10 + 2);
    if (!v33)
    {
      goto LABEL_2;
    }

    goto LABEL_30;
  }

  if (v65 < v11 >> 14)
  {
    __break(1u);
    goto LABEL_64;
  }

  a3 = sub_1001C6848();
  v9 = v34;
  v12 = v35;
  v11 = v36;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_64:
    v10 = sub_1000ADE44(0, *(v10 + 2) + 1, 1, v10);
  }

  v38 = *(v10 + 2);
  v37 = *(v10 + 3);
  v33 = v38 + 1;
  if (v38 >= v37 >> 1)
  {
    v63 = sub_1000ADE44((v37 > 1), v33, 1, v10);
    v33 = v38 + 1;
    v10 = v63;
  }

  *(v10 + 2) = v33;
  v39 = &v10[32 * v38];
  *(v39 + 4) = a3;
  *(v39 + 5) = v9;
  *(v39 + 6) = v12;
  *(v39 + 7) = v11;
LABEL_30:
  v66 = v33;
  v73 = _swiftEmptyArrayStorage;
  sub_1000D3A48(0, v33, 0);
  v40 = 0;
  v7 = _swiftEmptyArrayStorage;
  v67 = v10;
  v41 = (v10 + 56);
  while (v40 < *(v67 + 2))
  {
    v9 = *(v41 - 3);
    v12 = *(v41 - 2);
    v11 = *(v41 - 1);
    a3 = *v41;
    if (!((v12 ^ v9) >> 14))
    {
      goto LABEL_60;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      v47 = *v41;
      swift_bridgeObjectRetain_n();
      v43 = sub_1000D84EC(v9, v12, v11, a3, 10);
      v49 = v48;

      if (v49)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if ((a3 & 0x2000000000000000) != 0)
      {
        v68 = *(v41 - 1);
        v69 = a3 & 0xFFFFFFFFFFFFFFLL;
        v42 = &v68;
      }

      else if ((v11 & 0x1000000000000000) != 0)
      {
        v42 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v50 = *(v41 - 1);
        v51 = *v41;
        v42 = sub_1001C6A38();
      }

      v43 = sub_1001978D8(v42, v9, v12, v11, a3, 10);
      v72 = v44 & 1;
      v45 = v44 & 1;

      if (v45)
      {
        goto LABEL_61;
      }
    }

    v73 = v7;
    a3 = *(v7 + 2);
    v46 = *(v7 + 3);
    if (a3 >= v46 >> 1)
    {
      sub_1000D3A48((v46 > 1), a3 + 1, 1);
      v7 = v73;
    }

    ++v40;
    *(v7 + 2) = a3 + 1;
    v7[a3 + 4] = v43;
    v41 += 4;
    if (v66 == v40)
    {

      goto LABEL_46;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:

LABEL_61:

  v68 = v9;
  v69 = v12;
  v70 = v11;
  v71 = a3;
  sub_1000D943C();

  v58 = sub_1001C61F8();
  v60 = v59;
  sub_100197884();
  swift_allocError();
  *v61 = v58;
  v61[1] = v60;
  swift_willThrow();

  return v4;
}

uint64_t sub_100195800(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1001C6B38();
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

  v15 = sub_1001C6B38();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_100197630(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1001976D0(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
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

uint64_t sub_1001958F0(unint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_1001C6AF8();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  v10 = *v1;
  if (!(*v1 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFADD__(v11, v9);
    result = v11 + v9;
    if (!v12)
    {
      goto LABEL_6;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 < 0)
  {
    v18 = *v1;
  }

  v19 = sub_1001C6B38();
  v12 = __OFADD__(v19, v9);
  result = v19 + v9;
  if (v12)
  {
    goto LABEL_16;
  }

LABEL_6:
  sub_100197630(result);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v14 = *(v3 + 0x10);
  v15 = (*(v3 + 0x18) >> 1) - v14;
  result = sub_10012C5C4(&v36, (v3 + 8 * v14 + 32), v15, v8);
  if (result < v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result >= 1)
  {
    v16 = *(v3 + 16);
    v12 = __OFADD__(v16, result);
    v17 = v16 + result;
    if (v12)
    {
      __break(1u);
      goto LABEL_22;
    }

    *(v3 + 16) = v17;
  }

  if (result != v15)
  {
LABEL_11:
    result = sub_100005064();
    *v7 = v2;
    return result;
  }

LABEL_18:
  v4 = *(v3 + 16);
  v3 = v36;
  v5 = v37;
  v8 = v39;
  v33 = v38;
  v6 = v40;
  if (v36 < 0)
  {
LABEL_22:
    if (!sub_1001C6B18())
    {
      goto LABEL_11;
    }

    swift_unknownObjectRelease();
    sub_100088714(0, &unk_10026FEC0, CKRecord_ptr);
    result = swift_dynamicCast();
    v21 = v35;
    goto LABEL_33;
  }

  if (!v40)
  {
    v22 = (v38 + 64) >> 6;
    if (v22 <= (v39 + 1))
    {
      v23 = v39 + 1;
    }

    else
    {
      v23 = (v38 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v20 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_61;
      }

      if (v20 >= v22)
      {
        v21 = 0;
        v6 = 0;
        goto LABEL_32;
      }

      v6 = *(v37 + 8 * v20);
      ++v8;
      if (v6)
      {
        goto LABEL_31;
      }
    }
  }

  v20 = v39;
LABEL_31:
  v25 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v21 = *(*(v36 + 56) + ((v20 << 9) | (8 * v25)));
  result = v21;
  v24 = v20;
LABEL_32:
  v39 = v24;
  v40 = v6;
  v8 = v24;
LABEL_33:
  if (!v21)
  {
    goto LABEL_11;
  }

  v26 = (v33 + 64) >> 6;
LABEL_35:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_1001C62B8();
  }

  v2 = *v7;
  v27 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v32 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v27)
  {
    v27 = v4;
  }

  v34 = v27;
  while (1)
  {
    while (1)
    {
      if (v4 == v34)
      {
        v4 = v34;
        *(v32 + 16) = v34;
        goto LABEL_35;
      }

      *(v32 + 32 + 8 * v4++) = v21;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_1001C6B18())
      {
        swift_unknownObjectRelease();
        sub_100088714(0, &unk_10026FEC0, CKRecord_ptr);
        result = swift_dynamicCast();
        v21 = v35;
        if (v35)
        {
          continue;
        }
      }

      goto LABEL_58;
    }

    if (!v6)
    {
      break;
    }

    v28 = v8;
LABEL_56:
    v31 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v21 = *(*(v3 + 56) + ((v28 << 9) | (8 * v31)));
    result = v21;
    v30 = v28;
LABEL_41:
    v36 = v3;
    v37 = v5;
    v38 = v33;
    v39 = v30;
    v8 = v30;
    v40 = v6;
    if (!v21)
    {
LABEL_58:
      *(v32 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v26 <= (v8 + 1))
  {
    v29 = v8 + 1;
  }

  else
  {
    v29 = (v33 + 64) >> 6;
  }

  v30 = v29 - 1;
  while (1)
  {
    v28 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v28 >= v26)
    {
      v21 = 0;
      v6 = 0;
      goto LABEL_41;
    }

    v6 = *(v5 + 8 * v28);
    ++v8;
    if (v6)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_100195C88(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000AE0AC(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100195D80(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000AE78C(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100084528(&qword_10026F750, &qword_1001F1380);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100195E88(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000ADC34(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100195F7C(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1000ADC34(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_10012C928(&v43, &v4[16 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v4 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v46 = v24;
          v47 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v40 = v15;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    *(v4 + 2) = v19;
  }

  result = v43;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = *(v4 + 2);
  v14 = v44;
  v15 = v45;
  v2 = v46;
  v42 = v44;
  if (!v47)
  {
    goto LABEL_19;
  }

  v20 = (v47 - 1) & v47;
  v21 = __clz(__rbit64(v47)) | (v46 << 6);
  v40 = v45;
  v22 = (v45 + 64) >> 6;
LABEL_27:
  v41 = result;
  v27 = (*(result + 48) + 16 * v21);
  v29 = *v27;
  v28 = v27[1];

  v30 = v42;
LABEL_29:
  while (1)
  {
    v31 = *(v4 + 3);
    v32 = v31 >> 1;
    if ((v31 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v32)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v13;
  }

  v38 = sub_1000ADC34((v31 > 1), v13 + 1, 1, v4);
  v30 = v42;
  v4 = v38;
  v32 = *(v38 + 3) >> 1;
  if (v13 >= v32)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v33 = &v4[16 * v13 + 32];
    *v33 = v29;
    *(v33 + 1) = v28;
    ++v13;
    if (!v20)
    {
      break;
    }

    result = v41;
LABEL_38:
    v36 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v37 = (*(result + 48) + ((v2 << 10) | (16 * v36)));
    v29 = *v37;
    v28 = v37[1];

    v30 = v42;
    if (v13 == v32)
    {
      v13 = v32;
      *(v4 + 2) = v32;
      goto LABEL_29;
    }
  }

  v34 = v2;
  result = v41;
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v35 >= v22)
    {
      break;
    }

    v20 = *(v30 + 8 * v35);
    ++v34;
    if (v20)
    {
      v2 = v35;
      goto LABEL_38;
    }
  }

  if (v22 <= v2 + 1)
  {
    v39 = v2 + 1;
  }

  else
  {
    v39 = v22;
  }

  v45 = v40;
  v46 = v39 - 1;
  v47 = 0;
  *(v4 + 2) = v13;
LABEL_13:
  result = sub_100005064();
  *v1 = v4;
  return result;
}

BOOL sub_100196238(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[3] == a2[3])
  {
    return a1[2] == a2[2];
  }

  return 0;
}

uint64_t sub_100196270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1001C4C68() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_100194E78(v7, v8);
}

uint64_t sub_1001962D8()
{
  v0 = sub_1001C4CA8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = _s14UpdateScheduleVMa();
  sub_100088824(updated, qword_100281A10);
  v6 = sub_100083274(updated, qword_100281A10);
  sub_1001C4BC8();
  result = (*(v1 + 32))(v6, v4, v0);
  *(v6 + *(updated + 20)) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1001963E4()
{
  if (*v0)
  {
    return 0x7370657473;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_100196410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_1001C6D08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7370657473 && a2 == 0xE500000000000000)
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

uint64_t sub_1001964E4(uint64_t a1)
{
  v2 = sub_1001975DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100196520(uint64_t a1)
{
  v2 = sub_1001975DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10019655C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  updated = _s14UpdateScheduleVMa();
  v4 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated - 8);
  v41 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001C4CA8();
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v43 = &v35 - v11;
  v12 = sub_100084528(&qword_1002740B8, &qword_1001F82C8);
  v44 = *(v12 - 8);
  v13 = *(v44 + 64);
  __chkstk_darwin(v12);
  v15 = &v35 - v14;
  v16 = a1[4];
  sub_10009BB74(a1, a1[3]);
  v17 = sub_1001975DC();
  v18 = v45;
  sub_1001C6E58();
  if (!v18)
  {
    v39 = v17;
    v45 = v10;
    v19 = v42;
    LOBYTE(v46) = 0;
    sub_100197DAC(&qword_10026F980, &type metadata accessor for Date);
    v20 = v43;
    sub_1001C6C28();
    LOBYTE(v46) = 1;
    v21 = sub_1001C6BB8();
    if (v22)
    {
      v24 = v21;
    }

    else
    {
      v24 = 0;
    }

    v37 = v24;
    v38 = v12;
    v25 = 0xE000000000000000;
    if (v22)
    {
      v25 = v22;
    }

    v36 = v25;
    v26 = v20;
    v27 = v19;
    v28 = *(v19 + 16);
    v29 = v45;
    v28(v45, v26, v6);
    v30 = a1[4];
    sub_10009BB74(a1, a1[3]);
    v31 = sub_1001C6E38();
    sub_100084528(&qword_10026F748, &unk_1001F82D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001F0670;
    v33 = v39;
    *(inited + 56) = &_s14UpdateScheduleV10CodingKeysON;
    *(inited + 64) = v33;
    *(inited + 32) = 1;
    v46 = v31;
    sub_100195D80(inited);
    v34 = v41;
    sub_1001969AC(v29, v37, v36, v41);
    (*(v27 + 8))(v43, v6);
    (*(v44 + 8))(v15, v38);
    sub_100197E54(v34, v40, _s14UpdateScheduleVMa);
  }

  return sub_10008E7BC(a1);
}

uint64_t sub_1001969AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{

  v35[0] = 44;
  v35[1] = 0xE100000000000000;
  v34 = v35;
  v9 = sub_1000F55C0(0x7FFFFFFFFFFFFFFFLL, 1, sub_10018344C, v33, a2, a3, v35);
  v10 = v9[2];
  if (v10)
  {
    v32 = a4;
    v36 = a1;
    v35[0] = _swiftEmptyArrayStorage;
    result = sub_1000D3A28(0, v10, 0);
    v12 = 0;
    v13 = v35[0];
    v14 = v9 + 7;
    while (v12 < v9[2])
    {
      v15 = *(v14 - 3);
      v16 = *(v14 - 2);
      v17 = *(v14 - 1);
      v18 = *v14;

      result = sub_100196F68(v15, v16, v17);
      if (v4)
      {
        v30 = sub_1001C4CA8();
        (*(*(v30 - 8) + 8))(v36, v30);
      }

      v35[0] = v13;
      v24 = v13[2];
      v23 = v13[3];
      if (v24 >= v23 >> 1)
      {
        v26 = v19;
        v27 = v20;
        v28 = v21;
        v29 = v22;
        result = sub_1000D3A28((v23 > 1), v24 + 1, 1);
        v22 = v29;
        v21 = v28;
        v20 = v27;
        v19 = v26;
        v13 = v35[0];
      }

      ++v12;
      v13[2] = v24 + 1;
      v25 = &v13[4 * v24];
      v25[4] = v19;
      v25[5] = v20;
      v25[6] = v21;
      v25[7] = v22;
      v14 += 4;
      if (v10 == v12)
      {

        a1 = v36;
        a4 = v32;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
LABEL_11:
    v31 = sub_1001C4CA8();
    (*(*(v31 - 8) + 32))(a4, a1, v31);
    result = _s14UpdateScheduleVMa();
    *(a4 + *(result + 20)) = v13;
  }

  return result;
}

uint64_t sub_100196C28(void *a1)
{
  v3 = sub_100084528(&qword_1002740D0, &unk_1001F82E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_1001975DC();
  sub_1001C6E78();
  v10[15] = 0;
  sub_1001C4CA8();
  sub_100197DAC(&qword_10026F970, &type metadata accessor for Date);
  sub_1001C6CA8();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  sub_100196E00();
  v10[14] = 1;
  sub_1001C6C68();
  (*(v4 + 8))(v7, v3);
}

uint64_t sub_100196E00()
{
  v1 = *(v0 + *(_s14UpdateScheduleVMa() + 20));
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_1000D3898(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = (v1 + 56);
    do
    {
      sub_100197344(*(v4 - 3), *(v4 - 2), *(v4 - 1), *v4);
      v14 = v3;
      v8 = v3[2];
      v7 = v3[3];
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1000D3898((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v14;
      }

      v3[2] = v8 + 1;
      v9 = &v3[2 * v8];
      v9[4] = v5;
      v9[5] = v6;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  sub_100084528(&unk_10026FED0, &unk_1001F1450);
  sub_1000885F4(&qword_10026F850, &unk_10026FED0, &unk_1001F1450);
  v12 = sub_1001C5FA8();

  return v12;
}

uint64_t sub_100196F68(unint64_t a1, unint64_t a2, char *a3)
{
  v43 = 58;
  v44 = 0xE100000000000000;
  v42 = &v43;
  v4 = sub_1000F5980(2, 1, sub_100100D90, v41, a1, a2, a3, &v43);
  v5 = *(v4 + 2);
  if (v5 != 3)
  {

    sub_10011BAF8();
    swift_allocError();
    *v24 = v5;
    *(v24 + 8) = 0;
    return swift_willThrow();
  }

  v6 = v3;
  v7 = v4 + 32;
  v48 = _swiftEmptyArrayStorage;
  v40 = v4;

  sub_1000D3A48(0, 2, 0);
  v8 = 0;
  v9 = 0;
  v10 = v48;
  do
  {
    v11 = v8;
    v12 = &v7[32 * v9];
    v13 = *v12;
    v14 = v12[1];
    v16 = v12[2];
    v15 = v12[3];
    if (!((v14 ^ *v12) >> 14))
    {

LABEL_30:

      v43 = v13;
      v44 = v14;
      v45 = v16;
      v46 = v15;
      sub_1000D943C();

      v35 = sub_1001C61F8();
      v37 = v36;
      sub_100197884();
      swift_allocError();
      *v38 = v35;
      v38[1] = v37;
      swift_willThrow();
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      swift_bridgeObjectRetain_n();
      v18 = sub_1000D84EC(v13, v14, v16, v15, 10);
      v39 = v23;

      if (v39)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if ((v15 & 0x2000000000000000) != 0)
      {
        v43 = v12[2];
        v44 = v15 & 0xFFFFFFFFFFFFFFLL;
        v17 = &v43;
      }

      else if ((v16 & 0x1000000000000000) != 0)
      {
        v17 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v17 = sub_1001C6A38();
      }

      v18 = sub_1001978D8(v17, v13, v14, v16, v15, 10);
      v47 = v19 & 1;
      v20 = v19 & 1;

      if (v20)
      {
        goto LABEL_30;
      }
    }

    v48 = v10;
    v22 = v10[2];
    v21 = v10[3];
    if (v22 >= v21 >> 1)
    {
      sub_1000D3A48((v21 > 1), v22 + 1, 1);
      v10 = v48;
    }

    v10[2] = v22 + 1;
    *&v10[v22 + 4] = v18;
    v8 = 1;
    v9 = 1;
  }

  while ((v11 & 1) == 0);

  if (*(v40 + 2) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v26 = *(v40 + 12);
    v27 = *(v40 + 13);
    v29 = *(v40 + 14);
    v28 = *(v40 + 15);

    v30 = v10[2];
    if (v30)
    {
      if (v30 != 1)
      {
        v31 = *(v10 + 4);
        v32 = *(v10 + 5);

        sub_1001951FC(v26, v27, v29, v28);
        if (v6)
        {
        }

        if (v31 <= 0.0)
        {
          v33 = 1;
        }

        else
        {
          if (v32 > 0.0)
          {
          }

          v33 = 2;
          v31 = v32;
        }

        sub_10011BAF8();
        swift_allocError();
        *v34 = v31;
        *(v34 + 8) = v33;
        swift_willThrow();
      }

      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void sub_100197344(double a1, double a2, double a3, double a4)
{
  v4 = round(a1);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1001C6CC8();
  v13._countAndFlagsBits = 58;
  v13._object = 0xE100000000000000;
  sub_1001C6138(v13);
  v8 = round(a2);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14._countAndFlagsBits = sub_1001C6CC8();
  sub_1001C6138(v14);

  v15._countAndFlagsBits = 58;
  v15._object = 0xE100000000000000;
  sub_1001C6138(v15);
  v9 = round(a4);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v12._countAndFlagsBits = sub_1001C6CC8();
  v12._object = v10;
  v16._countAndFlagsBits = 47;
  v16._object = 0xE100000000000000;
  sub_1001C6138(v16);
  v11 = round(a3);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v11 < 9.22337204e18)
  {
    v17._countAndFlagsBits = sub_1001C6CC8();
    sub_1001C6138(v17);

    sub_1001C6138(v12);

    return;
  }

LABEL_25:
  __break(1u);
}

unint64_t sub_1001975DC()
{
  result = qword_1002740C0;
  if (!qword_1002740C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002740C0);
  }

  return result;
}

uint64_t sub_100197630(uint64_t a1)
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
    sub_1001C6B38();
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
  result = sub_1001C6A08();
  *v1 = result;
  return result;
}

uint64_t sub_1001976D0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1001C6B38();
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
      result = sub_1001C6B38();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000885F4(&qword_1002740F0, &qword_1002740E8, &unk_1001F8300);
          for (i = 0; i != v6; ++i)
          {
            sub_100084528(&qword_1002740E8, &unk_1001F8300);
            v9 = sub_10017C334(v13, i, a3);
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
        sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
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

unint64_t sub_100197884()
{
  result = qword_1002740C8;
  if (!qword_1002740C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002740C8);
  }

  return result;
}

uint64_t sub_1001978D8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1000D8E7C(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1001C6188();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1000D8E7C(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1000D8E7C(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_1001C6188();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_100197D44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100197DAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100197DF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100197E54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100197EE0()
{
  result = qword_1002740F8;
  if (!qword_1002740F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002740F8);
  }

  return result;
}

unint64_t sub_100197F38()
{
  result = qword_100274100;
  if (!qword_100274100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274100);
  }

  return result;
}

unint64_t sub_100197F90()
{
  result = qword_100274108;
  if (!qword_100274108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274108);
  }

  return result;
}

uint64_t static Logger.engagementSync.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10026EC88 != -1)
  {
    swift_once();
  }

  v2 = sub_1001C5148();
  v3 = sub_100083274(v2, qword_100274110);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10019808C()
{
  v0 = sub_1001C5148();
  sub_100088824(v0, qword_100274110);
  sub_100083274(v0, qword_100274110);
  return sub_1001C5138();
}

uint64_t _s11TrackedItemVMa()
{
  result = qword_100274180;
  if (!qword_100274180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10019817C()
{
  sub_100198210();
  if (v0 <= 0x3F)
  {
    sub_100198260();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100198210()
{
  if (!qword_100274190)
  {
    v0 = sub_1001C67F8();
    if (!v1)
    {
      atomic_store(v0, &qword_100274190);
    }
  }
}

void sub_100198260()
{
  if (!qword_100274198)
  {
    _s11RecentPriceVMa();
    v0 = sub_1001C67F8();
    if (!v1)
    {
      atomic_store(v0, &qword_100274198);
    }
  }
}

double sub_1001982B8()
{
  v1 = sub_100084528(&qword_1002740D8, &qword_1001F82F0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v18 - v3;
  v5 = _s11RecentPriceVMa();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  v13 = 0.0;
  if (*(v0 + 40) != 1)
  {
    v14 = *(v0 + 24);
    v15 = _s11TrackedItemVMa();
    sub_100199D04(v0 + *(v15 + 24), v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_10008875C(v4, &qword_1002740D8, &qword_1001F82F0);
    }

    else
    {
      sub_10011AB94(v4, v12);
      sub_10011AB94(v12, v10);
      v16 = *v10;
      sub_100199D74(v10, _s11RecentPriceVMa);
      if (v14 > 0.0)
      {
        return v14 - v16;
      }
    }
  }

  return v13;
}

uint64_t sub_1001984A4(void *a1)
{
  v3 = v1;
  v5 = sub_100084528(&qword_1002741F0, &qword_1001F8590);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_100198BC0();
  sub_1001C6E78();
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  *&v16 = *v3;
  *(&v16 + 1) = v11;
  LOBYTE(v17) = v12;
  v18 = 0;
  sub_100132F80();
  sub_1001C6CA8();
  if (!v2)
  {
    v13 = *(v3 + 40);
    v16 = *(v3 + 24);
    v17 = v13;
    v18 = 1;
    sub_100198D50();
    sub_1001C6C58();
    v14 = *(_s11TrackedItemVMa() + 24);
    LOBYTE(v16) = 2;
    _s11RecentPriceVMa();
    sub_100198DA4(&qword_100274200);
    sub_1001C6C58();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001986B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_100084528(&qword_1002740D8, &qword_1001F82F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v28 - v6;
  v8 = sub_100084528(&qword_1002741D0, &qword_1001F8588);
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  __chkstk_darwin(v8);
  v11 = v28 - v10;
  v12 = _s11TrackedItemVMa();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 32);
  v18 = _s11RecentPriceVMa();
  v19 = *(*(v18 - 8) + 56);
  v32 = v17;
  v19(&v16[v17], 1, 1, v18);
  v20 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_100198BC0();
  sub_1001C6E58();
  if (v2)
  {
    sub_10008E7BC(a1);
    return sub_10008875C(&v16[v32], &qword_1002740D8, &qword_1001F82F0);
  }

  else
  {
    v21 = v30;
    v36 = 0;
    sub_100132E6C();
    v22 = v31;
    sub_1001C6C28();
    v23 = v34;
    v24 = v35;
    *v16 = v33;
    *(v16 + 1) = v23;
    v28[4] = v23;
    v16[16] = v24;
    v36 = 1;
    sub_100198C14();
    sub_1001C6BD8();
    v25 = v34;
    v26 = v35;
    v28[2] = v34;
    v28[3] = v33;
    *(v16 + 3) = v33;
    *(v16 + 4) = v25;
    v28[1] = v26;
    *(v16 + 5) = v26;
    LOBYTE(v33) = 2;
    sub_100198DA4(&qword_1002741E8);
    sub_1001C6BD8();
    (*(v21 + 8))(v11, v22);
    sub_100198C7C(v7, &v16[v32]);
    sub_100198CEC(v16, v29);
    sub_10008E7BC(a1);
    return sub_100199D74(v16, _s11TrackedItemVMa);
  }
}

uint64_t sub_100198A88()
{
  v1 = 0x636E657265666572;
  if (*v0 != 1)
  {
    v1 = 0x7250746E65636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_100198AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100199F70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100198B14(uint64_t a1)
{
  v2 = sub_100198BC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100198B50(uint64_t a1)
{
  v2 = sub_100198BC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100198BC0()
{
  result = qword_1002741D8;
  if (!qword_1002741D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002741D8);
  }

  return result;
}

unint64_t sub_100198C14()
{
  result = qword_1002741E0;
  if (!qword_1002741E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002741E0);
  }

  return result;
}

uint64_t sub_100198C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_100198C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_1002740D8, &qword_1001F82F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100198CEC(uint64_t a1, uint64_t a2)
{
  v4 = _s11TrackedItemVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100198D50()
{
  result = qword_1002741F8;
  if (!qword_1002741F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002741F8);
  }

  return result;
}

uint64_t sub_100198DA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s11RecentPriceVMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100198DE8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v107 = a3;
  v108 = a2;
  v105 = a1;
  v120 = _s11RecentPriceVMa();
  v7 = *(v120 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v120);
  v104 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = (&v99 - v11);
  v13 = sub_100084528(&qword_1002740D8, &qword_1001F82F0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v101 = (&v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v15);
  v100 = (&v99 - v18);
  v19 = __chkstk_darwin(v17);
  v111 = &v99 - v20;
  v21 = __chkstk_darwin(v19);
  v115 = &v99 - v22;
  v23 = __chkstk_darwin(v21);
  v117 = &v99 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v99 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v99 - v29;
  __chkstk_darwin(v28);
  v32 = &v99 - v31;
  v33 = *(v5 + 8);
  v103 = *v5;
  v106 = v33;
  v102 = *(v5 + 16);
  v35 = *(v5 + 24);
  v34 = *(v5 + 32);
  v36 = *(v5 + 40);
  v37 = (v5 + *(_s11TrackedItemVMa() + 24));
  v116 = v32;
  sub_100199D04(v37, v32);
  v38 = v35;
  v118 = v35;
  v119 = v36;
  v112 = v34;
  v39 = v36;
  v40 = v36 == 1;
  if (v36 == 1)
  {
    v118 = *&a4;
    *(v5 + 24) = a4;
    v34 = v105;
    v41 = v108;
    *(v5 + 32) = v105;
    *(v5 + 40) = v41;
  }

  v109 = v39;
  v110 = v34;
  sub_100199D04(v37, v30);
  v42 = v120;
  v113 = *(v7 + 48);
  v114 = v7 + 48;
  if (v113(v30, 1, v120) == 1)
  {
    v43 = v112;
    sub_100199DD4(v38, v112, v119);
    sub_10008875C(v30, &qword_1002740D8, &qword_1001F82F0);
    sub_10008875C(v37, &qword_1002740D8, &qword_1001F82F0);
    v44 = *(v120 + 20);
    v45 = sub_1001C4CA8();
    v46 = v37 + v44;
    v47 = v43;
    v42 = v120;
    (*(*(v45 - 8) + 16))(v46, v107, v45);
    *v37 = a4;
    v40 = 1;
  }

  else
  {
    sub_10011AB94(v30, v12);
    v48 = *v12;
    *v12 = a4;
    if (v48 > a4)
    {
      v49 = v48;
    }

    else
    {
      v49 = a4;
    }

    if (v49 <= 0.0)
    {
      goto LABEL_13;
    }

    if (v48 > a4)
    {
      v48 = a4;
    }

    v50 = v49 - v48;
    if (v50 >= 0.005 && v50 / v49 >= 0.0)
    {
      v93 = *(v42 + 20);
      v94 = v38;
      v95 = v38;
      v96 = v112;
      sub_100199DD4(v94, v112, v119);
      v97 = sub_1001C4CA8();
      v98 = v12 + v93;
      v47 = v96;
      v38 = v95;
      (*(*(v97 - 8) + 24))(v98, v107, v97);
      v40 = 1;
    }

    else
    {
LABEL_13:
      v47 = v112;
      sub_100199DD4(v38, v112, v119);
    }

    sub_10008875C(v37, &qword_1002740D8, &qword_1001F82F0);
    sub_10011AB94(v12, v37);
  }

  (*(v7 + 56))(v37, 0, 1, v42);
  sub_100199D04(v37, v27);
  if (v113(v27, 1, v42) == 1)
  {
    sub_10008875C(v27, &qword_1002740D8, &qword_1001F82F0);
    v51 = v117;
  }

  else
  {
    v52 = v104;
    sub_10011AB94(v27, v104);
    v53 = *(v42 + 20);
    sub_1001C4C18();
    v51 = v117;
    if (v54 > 3888000.0)
    {
      v107 = v38;
      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v55 = sub_1001C5148();
      sub_100083274(v55, qword_100281898);

      v56 = v106;

      v57 = sub_1001C5128();
      v58 = sub_1001C65B8();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = 141558530;
        *(v59 + 4) = 1752392040;
        *(v59 + 12) = 2080;
        v121 = 0;
        v122 = 0xE000000000000000;
        v123[0] = v60;
        if (v102)
        {
          v61._countAndFlagsBits = 65;
        }

        else
        {
          v61._countAndFlagsBits = 66;
        }

        v61._object = 0xE100000000000000;
        sub_1001C6138(v61);

        v124._countAndFlagsBits = 46;
        v124._object = 0xE100000000000000;
        sub_1001C6138(v124);
        v125._countAndFlagsBits = v103;
        v125._object = v56;
        sub_1001C6138(v125);
        v62 = sub_1001874E8(v121, v122, v123);

        *(v59 + 14) = v62;
        *(v59 + 22) = 2048;
        *(v59 + 24) = a4;
        _os_log_impl(&_mh_execute_header, v57, v58, "[TrackedItem] Price of %{mask.hash}s has stabalized at %f; updating reference price", v59, 0x20u);
        sub_10008E7BC(v60);
      }

      sub_100199D74(v52, _s11RecentPriceVMa);
      v38 = v107;
      v63 = v108;

      sub_100198C68(v118, v110, v109);
      *(v5 + 24) = a4;
      v118 = *&a4;
      v109 = v63;
      v110 = v105;
      *(v5 + 32) = v105;
      *(v5 + 40) = v63;
      v64 = v111;
      v47 = v112;
      v65 = v115;
      goto LABEL_28;
    }

    sub_100199D74(v52, _s11RecentPriceVMa);
  }

  v64 = v111;
  v65 = v115;
  if (!v40)
  {
    sub_10008875C(v116, &qword_1002740D8, &qword_1001F82F0);
    return sub_100198C68(v38, v47, v119);
  }

LABEL_28:
  sub_100199D04(v37, v51);
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v66 = sub_1001C5148();
  sub_100083274(v66, qword_100281898);
  sub_100199D04(v116, v65);
  sub_100199D04(v51, v64);
  v67 = v119;
  sub_100199DD4(v38, v47, v119);
  v68 = v106;

  v69 = v118;
  v70 = v109;
  v71 = v110;
  sub_100199DD4(v118, v110, v109);
  v72 = v47;
  v73 = v64;
  v74 = sub_1001C5128();
  v75 = sub_1001C65B8();

  sub_100198C68(v38, v72, v67);
  sub_100198C68(v69, v71, v70);
  v76 = v75;
  if (os_log_type_enabled(v74, v75))
  {
    v110 = v74;
    v77 = v38;
    v78 = v117;
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v79 = 141559298;
    *(v79 + 4) = 1752392040;
    *(v79 + 12) = 2080;
    v121 = 0;
    v122 = 0xE000000000000000;
    v123[0] = v80;
    if (v102)
    {
      v81._countAndFlagsBits = 65;
    }

    else
    {
      v81._countAndFlagsBits = 66;
    }

    v81._object = 0xE100000000000000;
    sub_1001C6138(v81);

    v126._countAndFlagsBits = 46;
    v126._object = 0xE100000000000000;
    sub_1001C6138(v126);
    v127._countAndFlagsBits = v103;
    v127._object = v68;
    sub_1001C6138(v127);
    v82 = sub_1001874E8(v121, v122, v123);

    *(v79 + 14) = v82;
    *(v79 + 22) = 2048;
    v83 = -1.0;
    if (v67 != 1)
    {
      v83 = *&v77;
      sub_100198C68(v77, v112, v67);
    }

    *(v79 + 24) = v83;
    *(v79 + 32) = 2048;
    *(v79 + 34) = v118;
    *(v79 + 42) = 2048;
    v84 = v100;
    sub_100199DE8(v115, v100);
    v85 = v120;
    if (v113(v84, 1, v120) == 1)
    {
      sub_10008875C(v84, &qword_1002740D8, &qword_1001F82F0);
      v86 = -1.0;
    }

    else
    {
      v86 = *v84;
      sub_100199D74(v84, _s11RecentPriceVMa);
    }

    v89 = v101;
    v91 = v110;
    v90 = v111;
    *(v79 + 44) = v86;
    *(v79 + 52) = 2048;
    sub_100199DE8(v90, v89);
    if (v113(v89, 1, v85) == 1)
    {
      sub_10008875C(v89, &qword_1002740D8, &qword_1001F82F0);
      v92 = -1.0;
    }

    else
    {
      v92 = *v89;
      sub_100199D74(v89, _s11RecentPriceVMa);
    }

    *(v79 + 54) = v92;
    _os_log_impl(&_mh_execute_header, v91, v76, "[TrackedItem] Pricing for %{mask.hash}s changed; reference: (%f → %f) recent: (%f → %f)", v79, 0x3Eu);
    sub_10008E7BC(v80);

    v88 = v78;
  }

  else
  {

    sub_100198C68(v38, v72, v67);
    sub_10008875C(v73, &qword_1002740D8, &qword_1001F82F0);
    sub_10008875C(v115, &qword_1002740D8, &qword_1001F82F0);
    v88 = v117;
  }

  sub_10008875C(v88, &qword_1002740D8, &qword_1001F82F0);
  return sub_10008875C(v116, &qword_1002740D8, &qword_1001F82F0);
}

BOOL sub_100199940(uint64_t a1, uint64_t a2)
{
  v4 = _s11RecentPriceVMa();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100084528(&qword_1002740D8, &qword_1001F82F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (&v30 - v11);
  v13 = sub_100084528(&qword_1002740E0, &qword_1001F82F8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  v17 = *(a1 + 16);
  v18 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v17 != v18)
    {
      return 0;
    }
  }

  else
  {
    v19 = sub_1001C6D08();
    result = 0;
    if (v19 & 1) == 0 || ((v17 ^ v18))
    {
      return result;
    }
  }

  v21 = *(a1 + 40);
  v22 = *(a2 + 40);
  if (v21 == 1)
  {
    if (v22 != 1)
    {
      return 0;
    }

    goto LABEL_9;
  }

  result = 0;
  if (v22 != 1 && *(a1 + 24) == *(a2 + 24))
  {
    if (v21)
    {
      if (!v22 || (*(a1 + 32) != *(a2 + 32) || v21 != v22) && (sub_1001C6D08() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v22)
    {
      return 0;
    }

LABEL_9:
    v23 = *(_s11TrackedItemVMa() + 24);
    v24 = *(v13 + 48);
    sub_100199D04(a1 + v23, v16);
    sub_100199D04(a2 + v23, &v16[v24]);
    v25 = *(v5 + 48);
    if (v25(v16, 1, v4) == 1)
    {
      if (v25(&v16[v24], 1, v4) == 1)
      {
        sub_10008875C(v16, &qword_1002740D8, &qword_1001F82F0);
        return 1;
      }

      goto LABEL_22;
    }

    sub_100199D04(v16, v12);
    if (v25(&v16[v24], 1, v4) == 1)
    {
      sub_100199D74(v12, _s11RecentPriceVMa);
LABEL_22:
      v26 = &qword_1002740E0;
      v27 = &qword_1001F82F8;
LABEL_23:
      sub_10008875C(v16, v26, v27);
      return 0;
    }

    sub_10011AB94(&v16[v24], v8);
    if (*v12 != *v8)
    {
      sub_100199D74(v8, _s11RecentPriceVMa);
      sub_100199D74(v12, _s11RecentPriceVMa);
      v26 = &qword_1002740D8;
      v27 = &qword_1001F82F0;
      goto LABEL_23;
    }

    v28 = *(v4 + 20);
    v29 = sub_1001C4C68();
    sub_100199D74(v8, _s11RecentPriceVMa);
    sub_100199D74(v12, _s11RecentPriceVMa);
    sub_10008875C(v16, &qword_1002740D8, &qword_1001F82F0);
    return (v29 & 1) != 0;
  }

  return result;
}

uint64_t sub_100199D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_1002740D8, &qword_1001F82F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100199D74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100199DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_100199DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_1002740D8, &qword_1001F82F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100199E6C()
{
  result = qword_100274208;
  if (!qword_100274208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274208);
  }

  return result;
}

unint64_t sub_100199EC4()
{
  result = qword_100274210;
  if (!qword_100274210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274210);
  }

  return result;
}

unint64_t sub_100199F1C()
{
  result = qword_100274218;
  if (!qword_100274218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274218);
  }

  return result;
}

uint64_t sub_100199F70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1001C6D08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xEE00656369725065 || (sub_1001C6D08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7250746E65636572 && a2 == 0xEB00000000656369)
  {

    return 2;
  }

  else
  {
    v6 = sub_1001C6D08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10019A09C(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_100100DF0(a1, v14);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    v6 = v15;
    v7 = sub_10009D148(v14, v15);
    v8 = *(*(v6 - 8) + 64);
    __chkstk_darwin(v7);
    v10 = (&v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    sub_10019D5E0(*v10, a2, isUniquelyReferenced_nonNull_native, &v13);

    result = sub_10008E7BC(v14);
    *v2 = v13;
  }

  else
  {
    sub_10008875C(a1, &qword_100273D70, &unk_1001F8750);
    sub_10019D1A4(a2, v14);

    return sub_10008875C(v14, &qword_100273D70, &unk_1001F8750);
  }

  return result;
}

uint64_t sub_10019A200(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = sub_100084528(&qword_100274238, &qword_1001F8720);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _s14PricingServiceV12FetchedPriceVMa(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v17 + 48))(a1, 1) == 1)
  {
    sub_10008875C(a1, &qword_100274238, &qword_1001F8720);
    sub_10019D24C(a2, a3, a4 & 1, v12);

    return sub_10008875C(v12, &qword_100274238, &qword_1001F8720);
  }

  else
  {
    sub_100183318(a1, v16);
    v19 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v4;
    sub_10017B5FC(v16, a2, a3, a4 & 1, isUniquelyReferenced_nonNull_native);

    *v4 = v22;
  }

  return result;
}

uint64_t sub_10019A3CC(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_1001C4DE8();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v5 = sub_1001C4E58();
  v1[14] = v5;
  v6 = *(v5 - 8);
  v1[15] = v6;
  v7 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();
  v8 = sub_1001C4DD8();
  v1[17] = v8;
  v9 = *(v8 - 8);
  v1[18] = v9;
  v10 = *(v9 + 64) + 15;
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_10019A544, 0, 0);
}

uint64_t sub_10019A544()
{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v20 = v0[13];
  v5 = v0[10];
  v6 = _s14PricingServiceV16_MCatalogRequestVMa(0);
  (*(v3 + 16))(v2, v5 + v6[5], v4);
  sub_1001C4DC8();
  v7 = *(v5 + v6[6]);
  v8 = *(v5 + v6[7]);
  sub_100084528(&qword_100274248, &qword_1001F8728);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0670;
  *(inited + 32) = 0x73646C656966;
  *(inited + 40) = 0xE600000000000000;
  sub_1001C4EA8();
  v10 = sub_10019AA08(&off_1002422C8);
  v12 = v11;
  swift_arrayDestroy();
  *(inited + 48) = v10;
  *(inited + 56) = v12;
  v13 = sub_100118CD0(inited);
  v0[20] = v13;
  swift_setDeallocating();
  sub_10008875C(inited + 32, &qword_100274250, &unk_1001F8730);
  v14 = *(v5 + v6[8]);
  sub_1001C4DF8();
  v15 = async function pointer to MCatalogService.fetch(bookAssets:audiobookAssets:relationships:views:additionalParameters:batchSize:metadata:)[1];
  v16 = swift_task_alloc();
  v0[21] = v16;
  *v16 = v0;
  v16[1] = sub_10019A74C;
  v17 = v0[19];
  v18 = v0[13];

  return MCatalogService.fetch(bookAssets:audiobookAssets:relationships:views:additionalParameters:batchSize:metadata:)(v7, v8, 0, 0, v13, v14, v18);
}

uint64_t sub_10019A74C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *(*v2 + 160);
  v7 = *v2;
  v4[22] = v1;

  v8 = v4[19];
  v9 = v4[18];
  v10 = v4[17];
  if (v1)
  {
    (*(v4[12] + 8))(v4[13], v4[11]);
    (*(v9 + 8))(v8, v10);

    return _swift_task_switch(sub_10019A98C, 0, 0);
  }

  else
  {
    v11 = v4[16];
    (*(v4[12] + 8))(v4[13], v4[11]);
    (*(v9 + 8))(v8, v10);

    v12 = *(v7 + 8);

    return v12(a1);
  }
}

uint64_t sub_10019A98C()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[13];

  v4 = v0[1];
  v5 = v0[22];

  return v4();
}

uint64_t sub_10019AA08(uint64_t a1)
{
  v2 = sub_1001C4E68();
  v3 = *(a1 + 16);
  v4 = *(v2 + 16);
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
    v15 = sub_1000ADC34(0, v6 & ~(v6 >> 63), 0, &_swiftEmptyArrayStorage);

    sub_100195F7C(v8);

    sub_100195E88(v9);

    v10 = sub_100157694(v15);

    v11 = *(v10 + 16);
    if (!v11 || (v7 = sub_10012B444(*(v10 + 16), 0), v12 = sub_10012C928(&v15, v7 + 4, v11, v10), , sub_100005064(), v12 == v11))
    {
      v15 = v7;
      sub_10012B3D8(&v15);

      sub_100084528(&unk_10026FED0, &unk_1001F1450);
      sub_1000D52A0();
      v13 = sub_1001C5FA8();

      return v13;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_10019ABB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = _s14PricingServiceV16_MCatalogRequestVMa(0);
  v3[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v6 = sub_1001C4E38();
  v3[8] = v6;
  v7 = *(v6 - 8);
  v3[9] = v7;
  v8 = *(v7 + 64) + 15;
  v3[10] = swift_task_alloc();
  v9 = sub_1001C4E58();
  v3[11] = v9;
  v10 = *(v9 - 8);
  v3[12] = v10;
  v11 = *(v10 + 64) + 15;
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_10019AD08, 0, 0);
}

uint64_t sub_10019AD08()
{
  v16 = v0;
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1001C5148();
  v0[14] = sub_100083274(v2, qword_100281898);

  v3 = sub_1001C5128();
  v4 = sub_1001C65B8();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[3];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v6 + 16);

    *(v7 + 12) = 2080;
    v0[2] = v6;

    sub_100084528(&qword_100274228, &qword_1001F8710);
    v9 = sub_1001C6078();
    v11 = sub_1001874E8(v9, v10, &v15);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "[PricingService] Fetching prices for %ld items: %s", v7, 0x16u);
    sub_10008E7BC(v8);
  }

  else
  {
  }

  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_10019AF20;
  v13 = v0[5];

  return sub_10019BF08();
}

uint64_t sub_10019AF20(char a1)
{
  v4 = *(*v2 + 120);
  v5 = *v2;
  *(v5 + 128) = v1;

  if (v1)
  {
    v6 = *(v5 + 104);
    v7 = *(v5 + 80);
    v8 = *(v5 + 56);

    v9 = *(v5 + 8);

    return v9();
  }

  else
  {
    *(v5 + 216) = a1 & 1;

    return _swift_task_switch(sub_10019B08C, 0, 0);
  }
}

uint64_t sub_10019B08C()
{
  v92 = v0;
  if (*(v0 + 216) != 1)
  {
    sub_10019CED4();
    swift_allocError();
    *v19 = 0;
LABEL_12:
    swift_willThrow();
LABEL_15:
    v22 = *(v0 + 104);
    v23 = *(v0 + 80);
    v24 = *(v0 + 56);

    v25 = *(v0 + 8);

    return v25();
  }

  v1 = [*(v0 + 32) activeStoreAccount];
  *(v0 + 136) = v1;
  if (!v1)
  {
    sub_10019CED4();
    swift_allocError();
    *v20 = 1;
    goto LABEL_12;
  }

  v2 = v1;
  v3 = [*(v0 + 32) currentStorefront];
  if (!v3)
  {
LABEL_14:
    sub_10019CED4();
    swift_allocError();
    *v21 = 2;
    swift_willThrow();

    goto LABEL_15;
  }

  v4 = v3;
  v5 = sub_1001C6018();
  v7 = v6;

  *(v0 + 144) = v5;
  *(v0 + 152) = v7;
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    goto LABEL_14;
  }

  v9 = *(v0 + 24);
  if (!*(v9 + 16))
  {
    v27 = sub_100118F1C(&_swiftEmptyArrayStorage);

    v28 = *(v0 + 104);
    v29 = *(v0 + 80);
    v30 = *(v0 + 56);

    v31 = *(v0 + 8);
    v32 = *(v0 + 144);
    v33 = *(v0 + 152);

    return v31(v32, v33, v27);
  }

  v10 = *(v0 + 112);

  v11 = v2;
  v12 = sub_1001C5128();
  v13 = sub_1001C65B8();

  v84 = v5;
  v85 = v7;
  v86 = v9;
  v83 = v11;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v88 = v16;
    *v14 = 141558786;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2112;
    v17 = [v11 identifier];
    *(v14 + 14) = v17;
    *v15 = v17;
    *(v14 + 22) = 2160;
    *(v14 + 24) = 1752392040;
    *(v14 + 32) = 2080;
    v18 = sub_1001874E8(v5, v7, &v88);

    *(v14 + 34) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "[PricingService] Using account: %{mask.hash}@, store front: %{mask.hash}s", v14, 0x2Au);
    sub_10008875C(v15, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v16);

    v9 = v86;
  }

  else
  {
  }

  v34 = *(v9 + 16);
  if (!v34)
  {
    goto LABEL_25;
  }

  v35 = *(v0 + 24);
  v36 = sub_10012B5E4(v34, 0);
  v37 = sub_10012C7C8(&v88, v36 + 32, v34, v35);

  sub_100005064();
  if (v37 != v34)
  {
    __break(1u);
LABEL_25:
    v36 = &_swiftEmptyArrayStorage;
  }

  v38 = *(v0 + 128);
  v39 = sub_1001028D0(&v88, v36);
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v46 = v88;
  *(v0 + 160) = v39;
  *(v0 + 168) = v46;
  v87 = v0;
  v47 = v45 >> 1;
  v48 = (v45 >> 1) - v43;
  if (__OFSUB__(v45 >> 1, v43))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v50 = v89;
  v49 = v90;
  v51 = v91;
  v52 = &_swiftEmptyArrayStorage;
  if (v48)
  {
    v81 = v91;
    v82 = v89;
    v88 = &_swiftEmptyArrayStorage;
    result = sub_1000D3898(0, v48 & ~(v48 >> 63), 0);
    if (v48 < 0)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v52 = v88;
    if (v43 <= v47)
    {
      v53 = v47;
    }

    else
    {
      v53 = v43;
    }

    v54 = v53 - v43;
    v55 = (v41 + 24 * v43 + 8);
    while (v54)
    {
      v56 = *(v55 - 1);
      v57 = *v55;
      v88 = v52;
      v59 = v52[2];
      v58 = v52[3];

      if (v59 >= v58 >> 1)
      {
        result = sub_1000D3898((v58 > 1), v59 + 1, 1);
        v52 = v88;
      }

      v52[2] = v59 + 1;
      v60 = &v52[2 * v59];
      v60[4] = v56;
      v60[5] = v57;
      --v54;
      v55 += 3;
      if (!--v48)
      {
        v51 = v81;
        v50 = v82;
        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

LABEL_38:
  v87[22] = v52;
  v61 = v51 >> 1;
  v62 = (v51 >> 1) - v49;
  if (__OFSUB__(v51 >> 1, v49))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v63 = &_swiftEmptyArrayStorage;
  if (v62)
  {
    v88 = &_swiftEmptyArrayStorage;
    result = sub_1000D3898(0, v62 & ~(v62 >> 63), 0);
    if (v62 < 0)
    {
LABEL_57:
      __break(1u);
      return result;
    }

    v63 = v88;
    if (v49 <= v61)
    {
      v64 = v61;
    }

    else
    {
      v64 = v49;
    }

    v65 = v64 - v49;
    v66 = (v50 + 24 * v49 + 8);
    while (v65)
    {
      v67 = *(v66 - 1);
      v68 = *v66;
      v88 = v63;
      v70 = v63[2];
      v69 = v63[3];

      if (v70 >= v69 >> 1)
      {
        result = sub_1000D3898((v69 > 1), v70 + 1, 1);
        v63 = v88;
      }

      v63[2] = v70 + 1;
      v71 = &v63[2 * v70];
      v71[4] = v67;
      v71[5] = v68;
      --v65;
      v66 += 3;
      if (!--v62)
      {
        goto LABEL_49;
      }
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_49:
  v87[23] = v63;
  v73 = v87[12];
  v72 = v87[13];
  v74 = v87[11];
  v76 = v87[6];
  v75 = v87[7];
  (*(v87[9] + 104))(v87[10], enum case for MClientIdentifier.booksPriceTracking(_:), v87[8]);
  v77 = v83;
  sub_1001C4E48();
  (*(v73 + 16))(&v75[v76[5]], v72, v74);
  v78 = *(v86 + 16);
  *v75 = v84;
  *(v75 + 1) = v85;
  *&v75[v76[6]] = v52;
  *&v75[v76[7]] = v63;
  *&v75[v76[8]] = v78;

  v79 = swift_task_alloc();
  v87[24] = v79;
  *v79 = v87;
  v79[1] = sub_10019B7B8;
  v80 = v87[7];

  return sub_10019A3CC(v80);
}

uint64_t sub_10019B7B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v10 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  if (v1)
  {
    v6 = v3[22];
    v5 = v3[23];
    v7 = v3[19];

    v8 = sub_10019BE24;
  }

  else
  {
    v8 = sub_10019B8E8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10019B8E8()
{
  v64 = v0;
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];

  v5 = sub_100153FD8(v4);
  v6 = sub_1001AA1F0(v2, v5);

  v7 = sub_1001AA1F0(v3, v6);

  if (v7[2])
  {
    v8 = v0[14];

    v9 = sub_1001C5128();
    v10 = sub_1001C6598();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v62[0] = v12;
      *v11 = 134218242;
      *(v11 + 4) = v7[2];

      *(v11 + 12) = 2080;
      v13 = sub_1001C63F8();
      v15 = v14;

      v16 = sub_1001874E8(v13, v15, v62);

      *(v11 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "[PricingService] Received assets for %ld unrequested adamIDs: %s", v11, 0x16u);
      sub_10008E7BC(v12);
    }

    else
    {
    }
  }

  else
  {
  }

  v17 = v0[3];
  v61 = sub_100118F1C(&_swiftEmptyArrayStorage);
  v18 = -1;
  v19 = -1 << *(v17 + 32);
  if (-v19 < 64)
  {
    v18 = ~(-1 << -v19);
  }

  v20 = v18 & *(v17 + 56);
  v21 = (63 - v19) >> 6;
  v22 = v0[26];

  v24 = 0;
  if (v20)
  {
    while (1)
    {
      v25 = v24;
LABEL_14:
      v26 = v0[25];
      v27 = *(v17 + 48) + 24 * (__clz(__rbit64(v20)) | (v25 << 6));
      v28 = *v27;
      v29 = *(v27 + 8);
      LOBYTE(v27) = *(v27 + 16);
      v62[0] = v28;
      v62[1] = v29;
      v63 = v27;

      sub_10019C270(&v61, v62, v26);
      if (v22)
      {
        break;
      }

      v20 &= v20 - 1;
      v24 = v25;
      if (!v20)
      {
        goto LABEL_11;
      }
    }

    v54 = v0[3];
  }

  else
  {
    while (1)
    {
LABEL_11:
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        return result;
      }

      if (v25 >= v21)
      {
        break;
      }

      v20 = *(v17 + 56 + 8 * v25);
      ++v24;
      if (v20)
      {
        goto LABEL_14;
      }
    }

    v30 = v0[25];
    v31 = v0[14];
    v32 = v0[3];

    v33 = v61;

    v34 = sub_1001C5128();
    v35 = sub_1001C65B8();
    v36 = os_log_type_enabled(v34, v35);
    v59 = v0[21];
    v60 = v0[20];
    v37 = v0[17];
    v39 = v0[12];
    v38 = v0[13];
    v40 = v0[11];
    v41 = v0[7];
    if (v36)
    {
      v58 = v0[13];
      v42 = swift_slowAlloc();
      v57 = v40;
      v43 = swift_slowAlloc();
      v62[0] = v43;
      *v42 = 134218242;
      *(v42 + 4) = *(v33 + 16);

      *(v42 + 12) = 2080;
      sub_10019D3A8(v33);
      sub_100110100();
      v55 = v37;
      v56 = v41;
      v44 = sub_1001C5F18();
      v46 = v45;

      v47 = sub_1001874E8(v44, v46, v62);

      *(v42 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v34, v35, "[PricingService] Received %ld prices: %s", v42, 0x16u);
      sub_10008E7BC(v43);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      sub_10019D8E8(v56, _s14PricingServiceV16_MCatalogRequestVMa);
      (*(v39 + 8))(v58, v57);
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      sub_10019D8E8(v41, _s14PricingServiceV16_MCatalogRequestVMa);
      (*(v39 + 8))(v38, v40);
    }

    v48 = v0[13];
    v49 = v0[10];
    v50 = v0[7];

    v51 = v0[1];
    v52 = v0[18];
    v53 = v0[19];

    return v51(v52, v53, v33);
  }
}

uint64_t sub_10019BE24()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[17];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v7 = v0[7];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_10019D8E8(v7, _s14PricingServiceV16_MCatalogRequestVMa);
  (*(v5 + 8))(v4, v6);
  v8 = v0[26];
  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10019BF28()
{
  v1 = [*(v0 + 160) priceTrackingEnabled];
  *(v0 + 168) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_10019C060;
  v2 = swift_continuation_init();
  *(v0 + 136) = sub_100084528(&unk_100274258, &unk_1001F8740);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10019CDD4;
  *(v0 + 104) = &unk_10024C0A0;
  *(v0 + 112) = v2;
  [v1 valueWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10019C060()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_10019C1FC;
  }

  else
  {
    v3 = sub_10019C170;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10019C170()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = [v2 BOOLValue];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_10019C1FC()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[22];

  return v3(0);
}

void sub_10019C270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v106 = a1;
  v5 = sub_100084528(&qword_100274238, &qword_1001F8720);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v94 - v7;
  v9 = sub_1001C4B28();
  v104 = *(v9 - 8);
  v105 = v9;
  v10 = *(v104 + 64);
  __chkstk_darwin(v9);
  v107 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1001C4D98();
  v12 = *(v108 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v108);
  v16 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v94 - v18;
  __chkstk_darwin(v17);
  v21 = &v94 - v20;
  v23 = *a2;
  v22 = *(a2 + 8);
  v24 = *(a2 + 16);
  if (*(a3 + 16) && (v25 = sub_100187B3C(v23, v22), (v26 & 1) != 0))
  {
    v101 = v22;
    v102 = v23;
    v27 = *(*(a3 + 56) + 8 * v25);
    swift_getObjectType();
    v28 = v27;
    sub_1001C4EB8();
    v29 = *(v12 + 104);
    v30 = &enum case for MResourceType.audiobooks(_:);
    v99 = v24;
    if (!v24)
    {
      v30 = &enum case for MResourceType.books(_:);
    }

    v31 = v21;
    v32 = v108;
    v29(v19, *v30, v108);
    sub_10019D948();
    v103 = v31;
    sub_1001C6248();
    sub_1001C6248();
    v34 = v12 + 8;
    v33 = *(v12 + 8);
    v33(v19, v32);
    if (v109 != v111)
    {
      v100 = v28;
      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v57 = sub_1001C5148();
      sub_100083274(v57, qword_100281898);
      v58 = v103;
      (*(v12 + 16))(v16, v103, v32);
      v59 = v101;
      swift_bridgeObjectRetain_n();
      v41 = sub_1001C5128();
      v60 = sub_1001C6598();
      if (os_log_type_enabled(v41, v60))
      {
        v61 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v111 = v107;
        *v61 = 136446978;
        LODWORD(v106) = v60;
        v62 = sub_1001C4D88();
        v98 = v33;
        v64 = v63;
        v33(v16, v32);
        v65 = sub_1001874E8(v62, v64, &v111);

        *(v61 + 4) = v65;
        *(v61 + 12) = 2160;
        *(v61 + 14) = 1752392040;
        *(v61 + 22) = 2080;
        v66 = v99;
        if (v99)
        {
          v67._countAndFlagsBits = 65;
        }

        else
        {
          v67._countAndFlagsBits = 66;
        }

        v109 = 0;
        v110 = 0xE000000000000000;
        v67._object = 0xE100000000000000;
        sub_1001C6138(v67);

        v116._countAndFlagsBits = 46;
        v116._object = 0xE100000000000000;
        sub_1001C6138(v116);
        v117._countAndFlagsBits = v102;
        v117._object = v59;
        sub_1001C6138(v117);
        v68 = sub_1001874E8(v109, v110, &v111);

        *(v61 + 24) = v68;
        *(v61 + 32) = 1024;

        *(v61 + 34) = v66;

        _os_log_impl(&_mh_execute_header, v41, v106, "[PricingService] Incorrect asset type: %{public}s for: %{mask.hash}s (isAudiobook? %{BOOL}d)", v61, 0x26u);
        swift_arrayDestroy();

        goto LABEL_29;
      }

      swift_bridgeObjectRelease_n();
      v33(v16, v32);
      v72 = v58;
      goto LABEL_35;
    }

    v35 = COERCE_DOUBLE(sub_1001C4E98());
    v36 = v28;
    if (v37)
    {
      v39 = v101;
      v38 = v102;
      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v40 = sub_1001C5148();
      sub_100083274(v40, qword_100281898);

      v41 = sub_1001C5128();
      v42 = sub_1001C6598();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v100 = v36;
        v44 = v43;
        v45 = swift_slowAlloc();
        v98 = v33;
        v46 = v45;
        v111 = v45;
        *v44 = 141558274;
        *(v44 + 4) = 1752392040;
        *(v44 + 12) = 2080;
        v109 = 0;
        v110 = 0xE000000000000000;
        if (v99)
        {
          v47._countAndFlagsBits = 65;
        }

        else
        {
          v47._countAndFlagsBits = 66;
        }

        v47._object = 0xE100000000000000;
        sub_1001C6138(v47);

        v112._countAndFlagsBits = 46;
        v112._object = 0xE100000000000000;
        sub_1001C6138(v112);
        v113._countAndFlagsBits = v38;
        v113._object = v39;
        sub_1001C6138(v113);
        v48 = sub_1001874E8(v109, v110, &v111);

        *(v44 + 14) = v48;
        _os_log_impl(&_mh_execute_header, v41, v42, "[PricingService] Missing asset price for: %{mask.hash}s", v44, 0x16u);
        sub_10008E7BC(v46);

LABEL_29:

        v98(v103, v32);
        return;
      }

      v72 = v103;
LABEL_35:
      v33(v72, v32);
      return;
    }

    v97 = v35;
    v98 = v33;
    v69 = v101;
    v70 = v102;
    v100 = v28;
    if (v35 > 0.0)
    {
      v71 = [v28 priceFormatted];
      if (v71)
      {
      }

      else
      {
        if (qword_10026EBB8 != -1)
        {
          swift_once();
        }

        v73 = sub_1001C5148();
        sub_100083274(v73, qword_100281898);

        v74 = sub_1001C5128();
        v75 = sub_1001C6598();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v111 = v77;
          *v76 = 134218498;
          *(v76 + 4) = v97;
          *(v76 + 12) = 2160;
          *(v76 + 14) = 1752392040;
          *(v76 + 22) = 2080;
          v109 = 0;
          v110 = 0xE000000000000000;
          if (v99)
          {
            v78._countAndFlagsBits = 65;
          }

          else
          {
            v78._countAndFlagsBits = 66;
          }

          v95 = v74;
          v78._object = 0xE100000000000000;
          sub_1001C6138(v78);

          v118._countAndFlagsBits = 46;
          v118._object = 0xE100000000000000;
          sub_1001C6138(v118);
          v119._countAndFlagsBits = v70;
          v119._object = v69;
          sub_1001C6138(v119);
          v79 = v75;
          v80 = sub_1001874E8(v109, v110, &v111);

          *(v76 + 24) = v80;
          v74 = v95;
          _os_log_impl(&_mh_execute_header, v95, v79, "[PricingService] Missing formatted value for non-zero price %f for: %{mask.hash}s", v76, 0x20u);
          sub_10008E7BC(v77);

          v36 = v100;
        }
      }
    }

    v95 = sub_1001C4E88();
    v82 = v81;
    sub_1001C4E78();
    v83 = [v36 priceFormatted];
    v96 = v34;
    if (v83)
    {
      v84 = v83;
      v85 = v69;
      v86 = sub_1001C6018();
      v88 = v87;
    }

    else
    {
      v85 = v69;
      v86 = 0;
      v88 = 0;
    }

    v89 = _s14PricingServiceV12FetchedPriceVMa(0);
    v90 = v104;
    v91 = v105;
    v92 = v107;
    (*(v104 + 16))(&v8[*(v89 + 20)], v107, v105);
    *v8 = v95;
    *(v8 + 1) = v82;
    v93 = &v8[*(v89 + 24)];
    *v93 = v97;
    *(v93 + 1) = v86;
    *(v93 + 2) = v88;
    (*(*(v89 - 8) + 56))(v8, 0, 1, v89);

    sub_10019A200(v8, v102, v85, v99);

    (*(v90 + 8))(v92, v91);
    v98(v103, v108);
  }

  else
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v49 = sub_1001C5148();
    sub_100083274(v49, qword_100281898);

    v50 = sub_1001C5128();
    v51 = sub_1001C65B8();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = v24;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v111 = v54;
      *v53 = 141558274;
      *(v53 + 4) = 1752392040;
      *(v53 + 12) = 2080;
      v109 = 0;
      v110 = 0xE000000000000000;
      if (v52)
      {
        v55._countAndFlagsBits = 65;
      }

      else
      {
        v55._countAndFlagsBits = 66;
      }

      v55._object = 0xE100000000000000;
      sub_1001C6138(v55);

      v114._countAndFlagsBits = 46;
      v114._object = 0xE100000000000000;
      sub_1001C6138(v114);
      v115._countAndFlagsBits = v23;
      v115._object = v22;
      sub_1001C6138(v115);
      v56 = sub_1001874E8(v109, v110, &v111);

      *(v53 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v50, v51, "[PricingService] Missing asset for: %{mask.hash}s", v53, 0x16u);
      sub_10008E7BC(v54);
    }
  }
}

uint64_t sub_10019CDD4(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = sub_10009BB74((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    sub_100084528(&unk_100270F10, &unk_1001F1F70);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return _swift_continuation_throwingResumeWithError(v8, v9);
  }

  else
  {
    if (a2)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      *(v12 + 8) = a3;
      v13 = a2;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v7);
  }
}

unint64_t sub_10019CED4()
{
  result = qword_100274220;
  if (!qword_100274220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274220);
  }

  return result;
}

uint64_t sub_10019CFAC(uint64_t a1, void (*a2)(unint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = *v3;
  v8 = sub_100187A60(a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  v11 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v6;
  v19 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v13 = v19;
  }

  v14 = v10;
  v15 = (*(v13 + 56) + 16 * v10);
  v16 = *v15;
  v17 = v15[1];
  a2(v14, v13);
  *v6 = v13;
  return v16;
}

uint64_t sub_10019D058(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_100187BB4(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_10013FF8C(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_10018B168();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1001C6B08();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1001C6AF8();
  v8 = sub_10017AA98(v4, v7);

  v9 = sub_100187BB4(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_10013FF8C(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

double sub_10019D1A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100187D7C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10018B910();
      v11 = v13;
    }

    sub_100100DF0((*(v11 + 56) + 40 * v8), a2);
    sub_1001402C8(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10019D24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = *v4;
  v8 = sub_100187C98(a1, a2, a3);
  if (v9)
  {
    v10 = v8;
    v11 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v5;
    v24 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10018BA94();
      v13 = v24;
    }

    v14 = *(*(v13 + 48) + 24 * v10 + 8);

    v15 = *(v13 + 56);
    v16 = _s14PricingServiceV12FetchedPriceVMa(0);
    v23 = *(v16 - 8);
    sub_100183318(v15 + *(v23 + 72) * v10, a4);
    sub_100140460(v10, v13);
    *v5 = v13;
    v17 = *(v23 + 56);
    v18 = a4;
    v19 = 0;
    v20 = v16;
  }

  else
  {
    v21 = _s14PricingServiceV12FetchedPriceVMa(0);
    v17 = *(*(v21 - 8) + 56);
    v20 = v21;
    v18 = a4;
    v19 = 1;
  }

  return v17(v18, v19, 1, v20);
}

void *sub_10019D3A8(uint64_t a1)
{
  v2 = _s14PricingServiceV12FetchedPriceVMa(0);
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  __chkstk_darwin(v2);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100084528(&qword_100274230, &qword_1001F8718);
  result = sub_1001C6B48();
  v6 = 0;
  v34 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v29 = result + 8;
  v30 = result;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = *(v34 + 56);
      v19 = *(v34 + 48) + 24 * v17;
      v20 = *v19;
      v21 = *(v19 + 8);
      v35 = *(v19 + 16);
      v22 = v31;
      sub_10019D884(v18 + *(v32 + 72) * v17, v31);
      v23 = *(v22 + *(v33 + 24));

      sub_10019D8E8(v22, _s14PricingServiceV12FetchedPriceVMa);
      result = v30;
      *(v29 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v24 = result[6] + 24 * v17;
      *v24 = v20;
      *(v24 + 8) = v21;
      *(v24 + 16) = v35;
      *(result[7] + 8 * v17) = v23;
      v25 = result[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      result[2] = v27;
      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10019D5E0(uint64_t a1, void *a2, char a3, void *a4)
{
  v8 = type metadata accessor for BDSSyncEnginePipeline();
  v31 = v8;
  v32 = &off_100247AF8;
  *&v30 = a1;
  v9 = *a4;
  v11 = sub_100187D7C(a2);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_7:
    v17 = *a4;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      sub_10008E7BC(v18);
      return sub_100100DF0(&v30, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    sub_10018B910();
    goto LABEL_7;
  }

  sub_10018A000(v14, a3 & 1);
  v20 = *a4;
  v21 = sub_100187D7C(a2);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    sub_10019D9CC();
    result = sub_1001C6D68();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a4;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = sub_10009D148(&v30, v8);
  v24 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = (&v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_10019D7C4(v11, a2, *v26, v17);
  v28 = a2;
  return sub_10008E7BC(&v30);
}

uint64_t sub_10019D7C4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = type metadata accessor for BDSSyncEnginePipeline();
  v14 = &off_100247AF8;
  *&v12 = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100100DF0(&v12, a4[7] + 40 * a1);
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

uint64_t sub_10019D884(uint64_t a1, uint64_t a2)
{
  v4 = _s14PricingServiceV12FetchedPriceVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019D8E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10019D948()
{
  result = qword_100274240;
  if (!qword_100274240)
  {
    sub_1001C4D98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274240);
  }

  return result;
}

unint64_t sub_10019D9CC()
{
  result = qword_100274000;
  if (!qword_100274000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100274000);
  }

  return result;
}

void sub_10019DA50()
{
  sub_1001C4E58();
  if (v0 <= 0x3F)
  {
    sub_10019DAF4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10019DAF4()
{
  if (!qword_1002742D0)
  {
    v0 = sub_1001C62F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1002742D0);
    }
  }
}

uint64_t sub_10019DB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10019DC1C(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_10019DCC4()
{
  result = sub_1001C4B28();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10019DD4C()
{
  result = qword_1002743A8;
  if (!qword_1002743A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002743A8);
  }

  return result;
}

uint64_t _s6UpdateVMa()
{
  result = qword_100274408;
  if (!qword_100274408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10019DE14()
{
  sub_1001C4CA8();
  if (v0 <= 0x3F)
  {
    sub_10019DE98();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10019DE98()
{
  if (!qword_100274418)
  {
    sub_100110100();
    v0 = sub_1001C6428();
    if (!v1)
    {
      atomic_store(v0, &qword_100274418);
    }
  }
}

uint64_t sub_10019DEF4(void *a1)
{
  v3 = v1;
  v5 = sub_100084528(&qword_100274460, &qword_1001F88D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_10019E894();
  sub_1001C6E78();
  v14 = 0;
  sub_1001C4CA8();
  sub_1000B6E64(&qword_10026F970);
  sub_1001C6CA8();
  if (!v2)
  {
    v13 = *(v3 + *(_s6UpdateVMa() + 20));
    v12[15] = 1;
    sub_100084528(&qword_100274228, &qword_1001F8710);
    sub_10019E9A8(&qword_100274468, sub_100132F80);
    sub_1001C6CA8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10019E0F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1001C4CA8();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  __chkstk_darwin(v4);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100084528(&qword_100274448, &qword_1001F88C8);
  v19 = *(v21 - 8);
  v7 = *(v19 + 64);
  __chkstk_darwin(v21);
  v9 = &v18 - v8;
  updated = _s6UpdateVMa();
  v11 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C4C98();
  v14 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_10019E894();
  sub_1001C6E58();
  if (v2)
  {
    v15 = v22;
    sub_10008E7BC(a1);
    return (*(v15 + 8))(v13, v4);
  }

  else
  {
    v16 = v19;
    v25 = 0;
    sub_1000B6E64(&qword_10026F980);
    sub_1001C6C28();
    (*(v22 + 40))(v13, v20, v4);
    sub_100084528(&qword_100274228, &qword_1001F8710);
    v24 = 1;
    sub_10019E9A8(&qword_100274458, sub_100132E6C);
    sub_1001C6C28();
    (*(v16 + 8))(v9, v21);
    *&v13[*(updated + 20)] = v23;
    sub_10019E8E8(v13, v18);
    sub_10008E7BC(a1);
    return sub_10019E94C(v13);
  }
}

uint64_t sub_10019E474()
{
  if (*v0)
  {
    result = 0x7344496D657469;
  }

  else
  {
    result = 1702125924;
  }

  *v0;
  return result;
}

uint64_t sub_10019E4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1001C6D08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7344496D657469 && a2 == 0xE700000000000000)
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

uint64_t sub_10019E584(uint64_t a1)
{
  v2 = sub_10019E894();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019E5C0(uint64_t a1)
{
  v2 = sub_10019E894();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10019E5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1001C4C68() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_10019E694(v7, v8);
}

uint64_t sub_10019E694(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v26 = v7;
  v27 = result;
  v29 = a2;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v6));
    v28 = (v6 - 1) & v6;
LABEL_13:
    v12 = *(result + 48) + 24 * (v9 | (v2 << 6));
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(a2 + 40);
    v17 = a2;
    sub_1001C6DF8();

    sub_1001C60E8();
    sub_1001C6E18(v15);
    v18 = sub_1001C6E28();
    v19 = -1 << *(v17 + 32);
    v20 = v18 & ~v19;
    if (((*(v8 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_26:

      return 0;
    }

    v21 = ~v19;
    v22 = *(v29 + 48);
    while (1)
    {
      v23 = v22 + 24 * v20;
      v24 = *(v23 + 16);
      if (*v23 != v14 || *(v23 + 8) != v13)
      {
        break;
      }

      if (v15 == v24)
      {
        goto LABEL_23;
      }

LABEL_16:
      v20 = (v20 + 1) & v21;
      if (((*(v8 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (sub_1001C6D08() & 1) == 0 || ((v15 ^ v24))
    {
      goto LABEL_16;
    }

LABEL_23:

    v7 = v26;
    result = v27;
    v6 = v28;
    a2 = v29;
  }

  while (v28);
LABEL_8:
  v10 = v2;
  while (1)
  {
    v2 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v11 = *(v3 + 8 * v2);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v28 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10019E894()
{
  result = qword_100274450;
  if (!qword_100274450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274450);
  }

  return result;
}

uint64_t sub_10019E8E8(uint64_t a1, uint64_t a2)
{
  updated = _s6UpdateVMa();
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_10019E94C(uint64_t a1)
{
  updated = _s6UpdateVMa();
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_10019E9A8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000885AC(&qword_100274228, &qword_1001F8710);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10019EA34()
{
  result = qword_100274470;
  if (!qword_100274470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274470);
  }

  return result;
}

unint64_t sub_10019EA8C()
{
  result = qword_100274478;
  if (!qword_100274478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274478);
  }

  return result;
}

unint64_t sub_10019EAE4()
{
  result = qword_100274480;
  if (!qword_100274480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274480);
  }

  return result;
}

uint64_t _s5StateVMa()
{
  result = qword_1002744E0;
  if (!qword_1002744E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10019EBAC()
{
  sub_10019ED50(319, &qword_100271C20, _s11TrackedItemVMa, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10019ED50(319, &unk_1002744F0, _s4DealVMa, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      _s14UpdateScheduleVMa();
      if (v2 <= 0x3F)
      {
        sub_10019ED50(319, &qword_100271450, _s6UpdateVMa, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10011DD70(319, &qword_100271C38);
          if (v4 <= 0x3F)
          {
            sub_10011DD70(319, &qword_100271C48);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10019ED50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10019EDB4()
{
  if (*(*v0 + 16))
  {
    v1 = v0 + *(_s5StateVMa() + 24);
    sub_1001C4C18();
    v3 = v2;
    v4 = *(v1 + *(_s14UpdateScheduleVMa() + 20));
    v5 = (v4 + 32);
    v6 = *(v4 + 16) + 1;
    while (--v6)
    {
      v7 = v5 + 4;
      v3 = v3 - *v5;
      v5 += 4;
      if (v3 <= 0.0)
      {
        result = *(v7 - 2);
        v9 = *(v7 - 1);
        return result;
      }
    }
  }

  return 0;
}

NSObject *sub_10019EE64()
{
  v66 = _s4DealVMa();
  v1 = *(v66 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v66);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = _s8CardItemVMa();
  v67 = *(v65 - 8);
  v5 = *(v67 + 64);
  v6 = __chkstk_darwin(v65);
  v63 = (&v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v9 = &v62 - v8;
  v10 = *(v0 + 8);
  v11 = *(v10 + 16);
  v12 = &_swiftEmptyArrayStorage;
  if (v11)
  {
    v62 = v0;
    v71 = &_swiftEmptyArrayStorage;
    sub_1000D391C(0, v11, 0);
    v12 = v71;
    v13 = v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v64 = *(v1 + 72);
    v14 = v66;
    do
    {
      v69 = v12;
      sub_1001AB1DC(v13, v4, _s4DealVMa);
      v15 = *(v4 + 1);
      v68 = *v4;
      v16 = v4[16];
      v17 = v14[7];
      v18 = v65;
      v19 = *(v65 + 24);
      v20 = sub_1001C4CA8();
      (*(*(v20 - 8) + 16))(&v9[v19], &v4[v17], v20);
      v21 = v14[9];
      v22 = *&v4[v14[8]];
      v24 = *&v4[v21];
      v23 = *&v4[v21 + 8];

      sub_1001AB244(v4, _s4DealVMa);
      *v9 = v68;
      *(v9 + 1) = v15;
      v9[16] = v16;
      *&v9[*(v18 + 28)] = v22;
      v25 = &v9[*(v18 + 32)];
      *v25 = v24;
      *(v25 + 1) = v23;
      v12 = v69;
      v71 = v69;
      isa = v69[2].isa;
      v26 = v69[3].isa;
      if (isa >= v26 >> 1)
      {
        sub_1000D391C(v26 > 1, isa + 1, 1);
        v12 = v71;
      }

      v12[2].isa = (isa + 1);
      sub_1001AB0E4(v9, v12 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * isa, _s8CardItemVMa);
      v13 += v64;
      --v11;
    }

    while (v11);
    v0 = v62;
  }

  v28 = _s5StateVMa();
  v29 = *(v0 + *(v28 + 48));
  if (v29 >= v12[2].isa)
  {
    return v12;
  }

  v30 = sub_1001A4230(*(v0 + *(v28 + 48)), v12);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  if ((v35 & 1) == 0)
  {

LABEL_10:
    sub_10017781C(v30, v32, v34, v36);
    v38 = v37;
LABEL_18:
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  sub_1001C6D38();
  swift_unknownObjectRetain_n();

  v39 = swift_dynamicCastClass();
  if (!v39)
  {
    swift_unknownObjectRelease();
    v39 = &_swiftEmptyArrayStorage;
  }

  v40 = v39[2];

  if (__OFSUB__(v36 >> 1, v34))
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v40 != (v36 >> 1) - v34)
  {
LABEL_32:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v38 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v38)
  {
    v38 = &_swiftEmptyArrayStorage;
    goto LABEL_18;
  }

LABEL_19:
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v41 = sub_1001C5148();
  sub_100083274(v41, qword_100281898);

  v42 = sub_1001C5128();
  v43 = sub_1001C65B8();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v71 = v45;
    *v44 = 134218498;
    v46 = v12[2].isa;

    *(v44 + 4) = v46;

    *(v44 + 12) = 2048;
    *(v44 + 14) = v29;
    *(v44 + 22) = 2080;
    v47 = v38[2];
    if (v47)
    {
      v66 = v45;
      LODWORD(v68) = v43;
      v69 = v42;
      v70 = &_swiftEmptyArrayStorage;
      sub_1000D3960(0, v47, 0);
      v48 = v70;
      v49 = v38 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
      v50 = *(v67 + 72);
      do
      {
        v51 = v63;
        sub_1001AB1DC(v49, v63, _s8CardItemVMa);
        v53 = *v51;
        v52 = v51[1];

        sub_1001AB244(v51, _s8CardItemVMa);
        v70 = v48;
        v55 = v48[2];
        v54 = v48[3];
        if (v55 >= v54 >> 1)
        {
          sub_1000D3960((v54 > 1), v55 + 1, 1);
          v48 = v70;
        }

        v48[2] = v55 + 1;
        v56 = &v48[2 * v55];
        v56[4] = v53;
        v56[5] = v52;
        v49 += v50;
        --v47;
      }

      while (v47);
      v42 = v69;
      LOBYTE(v43) = v68;
      v45 = v66;
    }

    v57 = sub_1001C62A8();
    v59 = v58;

    v60 = sub_1001874E8(v57, v59, &v71);

    *(v44 + 24) = v60;
    _os_log_impl(&_mh_execute_header, v42, v43, "[State] Number of deals (%ld) exceeds limit (%ld), trimmed to: %s", v44, 0x20u);
    sub_10008E7BC(v45);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return v38;
}

uint64_t sub_10019F4E8@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LODWORD(v139) = a1;
  v6 = _s11TrackedItemVMa();
  v133 = *(v6 - 8);
  v7 = *(v133 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001C4CA8();
  v141 = *(v10 - 8);
  v142 = v10;
  v11 = *(v141 + 64);
  __chkstk_darwin(v10);
  v140 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100084528(&qword_1002712C8, &qword_1001F3A18);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v135 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v134 = &v125 - v18;
  __chkstk_darwin(v17);
  v20 = &v125 - v19;
  updated = _s6UpdateVMa();
  v146 = *(updated - 8);
  v22 = *(v146 + 64);
  v23 = __chkstk_darwin(updated);
  v137 = &v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v136 = &v125 - v26;
  v27 = __chkstk_darwin(v25);
  v132 = &v125 - v28;
  v29 = __chkstk_darwin(v27);
  v129 = &v125 - v30;
  v31 = __chkstk_darwin(v29);
  v138 = &v125 - v32;
  v33 = __chkstk_darwin(v31);
  v126 = &v125 - v34;
  v35 = __chkstk_darwin(v33);
  v128 = &v125 - v36;
  __chkstk_darwin(v35);
  v38 = &v125 - v37;
  v39 = _s5StateVMa();
  v40 = *(*(v39 - 8) + 64);
  v41 = __chkstk_darwin(v39);
  v43 = &v125 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v45 = &v125 - v44;
  v144 = v3;
  sub_1001AB1DC(v3, &v125 - v44, _s5StateVMa);
  v143 = v39;
  v46 = &v45[*(v39 + 24)];
  sub_1001C4C18();
  v48 = v47;
  v49 = *&v46[*(_s14UpdateScheduleVMa() + 20)];
  v50 = (v49 + 32);
  v51 = *(v49 + 16) + 1;
  v145 = updated;
  do
  {
    if (!--v51)
    {
      sub_1001AB244(v45, _s5StateVMa);
      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v71 = sub_1001C5148();
      sub_100083274(v71, qword_100281898);
      v72 = sub_1001C5128();
      v73 = sub_1001C65B8();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&_mh_execute_header, v72, v73, "[State] Skipping tracked-prices update because there is no min update interval", v74, 2u);
      }

      return (*(v146 + 56))(a3, 1, 1, v145);
    }

    v52 = v50 + 4;
    v48 = v48 - *v50;
    v50 += 4;
  }

  while (v48 > 0.0);
  v127 = a3;
  v53 = *(v52 - 3);
  sub_1001AB244(v45, _s5StateVMa);
  v54 = v144;
  v55 = *(v143 + 28);
  v56 = 1;
  v130 = *(v146 + 48);
  v131 = v146 + 48;
  if (!v130(v144 + v55, 1, updated))
  {
    sub_1001AB1DC(v54 + v55, v38, _s6UpdateVMa);
    sub_1001C4C18();
    v58 = v57;
    sub_1001AB244(v38, _s6UpdateVMa);
    v56 = v53 <= v58;
  }

  sub_1001AB1DC(v54, v43, _s5StateVMa);
  v59 = sub_1001A4AB8(v139, v56);
  sub_1001AB244(v43, _s5StateVMa);
  v60 = v59[2];
  if (!v60)
  {

    sub_10009ADF0(v54 + v55, v20, &qword_1002712C8, &qword_1001F3A18);
    if (v130(v20, 1, updated) == 1)
    {
      sub_10008875C(v20, &qword_1002712C8, &qword_1001F3A18);
      v86 = v127;
    }

    else
    {
      v93 = v128;
      sub_1001AB0E4(v20, v128, _s6UpdateVMa);
      v86 = v127;
      if ((v56 & 1) == 0)
      {
        if (qword_10026EBB8 != -1)
        {
          swift_once();
        }

        v115 = sub_1001C5148();
        sub_100083274(v115, qword_100281898);
        v116 = v126;
        sub_1001AB1DC(v93, v126, _s6UpdateVMa);
        v117 = sub_1001C5128();
        v118 = sub_1001C65B8();
        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v147[0] = v120;
          *v119 = 136446210;
          sub_1000B6E64(&qword_100270A80);
          v121 = sub_1001C6CC8();
          v123 = v122;
          sub_1001AB244(v116, _s6UpdateVMa);
          v124 = sub_1001874E8(v121, v123, v147);

          *(v119 + 4) = v124;
          _os_log_impl(&_mh_execute_header, v117, v118, "[State] Skipping tracked-prices update because the last update (at %{public}s) was recent enough", v119, 0xCu);
          sub_10008E7BC(v120);

          v86 = v127;
        }

        else
        {

          sub_1001AB244(v116, _s6UpdateVMa);
        }

        sub_1001AB244(v93, _s6UpdateVMa);
        return (*(v146 + 56))(v86, 1, 1, v145);
      }

      sub_1001AB244(v93, _s6UpdateVMa);
    }

    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v94 = sub_1001C5148();
    sub_100083274(v94, qword_100281898);
    v95 = sub_1001C5128();
    v96 = sub_1001C65B8();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&_mh_execute_header, v95, v96, "[State] Skipping tracked-prices update because there are no items that need updating", v97, 2u);
    }

    return (*(v146 + 56))(v86, 1, 1, v145);
  }

  (*(v141 + 16))(v140, a2, v142);
  v147[0] = &_swiftEmptyArrayStorage;
  sub_1000D3980(0, v60, 0);
  v61 = v147[0];
  v62 = *(v133 + 80);
  v139 = v59;
  v63 = v59 + ((v62 + 32) & ~v62);
  v64 = *(v133 + 72);
  do
  {
    sub_1001AB1DC(v63, v9, _s11TrackedItemVMa);
    v65 = *v9;
    v66 = *(v9 + 1);
    v67 = v9[16];

    sub_1001AB244(v9, _s11TrackedItemVMa);
    v147[0] = v61;
    v69 = *(v61 + 16);
    v68 = *(v61 + 24);
    if (v69 >= v68 >> 1)
    {
      sub_1000D3980((v68 > 1), v69 + 1, 1);
      v61 = v147[0];
    }

    *(v61 + 16) = v69 + 1;
    v70 = v61 + 24 * v69;
    *(v70 + 32) = v65;
    *(v70 + 40) = v66;
    *(v70 + 48) = v67;
    v63 += v64;
    --v60;
  }

  while (v60);

  v76 = sub_1001575F4(v61);

  v77 = v138;
  (*(v141 + 32))(v138, v140, v142);
  v79 = v144;
  v78 = v145;
  *(v77 + *(v145 + 20)) = v76;
  v80 = *(v143 + 32);
  v81 = v134;
  sub_10009ADF0(v79 + v80, v134, &qword_1002712C8, &qword_1001F3A18);
  v82 = v130(v81, 1, v78);
  if (v82 == 1)
  {
    sub_10008875C(v81, &qword_1002712C8, &qword_1001F3A18);
    a3 = v127;
    v84 = v136;
    v83 = v137;
    v85 = v135;
    goto LABEL_37;
  }

  v87 = v129;
  sub_1001AB0E4(v81, v129, _s6UpdateVMa);
  v88 = sub_10019E694(*(v87 + *(v78 + 20)), v76);
  a3 = v127;
  v84 = v136;
  v83 = v137;
  v85 = v135;
  if (v88)
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v89 = sub_1001C5148();
    sub_100083274(v89, qword_100281898);
    v90 = sub_1001C5128();
    v91 = sub_1001C65B8();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v90, v91, "[State] Skipping tracked-prices update because there is an in-progress update for the same items", v92, 2u);
    }

    sub_1001AB244(v87, _s6UpdateVMa);
    sub_1001AB244(v77, _s6UpdateVMa);
    return (*(v146 + 56))(a3, 1, 1, v145);
  }

  sub_1001AB244(v87, _s6UpdateVMa);
LABEL_37:
  sub_10009ADF0(v79 + v80, v85, &qword_1002712C8, &qword_1001F3A18);
  v98 = v130(v85, 1, v78);
  v99 = v132;
  if (v98 == 1)
  {
    sub_10008875C(v85, &qword_1002712C8, &qword_1001F3A18);
  }

  else
  {
    sub_1001AB0E4(v85, v132, _s6UpdateVMa);
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v100 = sub_1001C5148();
    sub_100083274(v100, qword_100281898);
    sub_1001AB1DC(v99, v84, _s6UpdateVMa);
    sub_1001AB1DC(v77, v83, _s6UpdateVMa);
    v101 = sub_1001C5128();
    v102 = sub_1001C6598();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v147[0] = v143;
      *v103 = 136446466;
      sub_1000B6E64(&qword_100270A80);
      v104 = sub_1001C6CC8();
      v106 = v105;
      sub_1001AB244(v84, _s6UpdateVMa);
      v107 = sub_1001874E8(v104, v106, v147);
      v79 = v144;

      *(v103 + 4) = v107;
      *(v103 + 12) = 2082;
      v108 = sub_1001C6CC8();
      v110 = v109;
      sub_1001AB244(v83, _s6UpdateVMa);
      v111 = sub_1001874E8(v108, v110, v147);
      a3 = v127;

      *(v103 + 14) = v111;
      _os_log_impl(&_mh_execute_header, v101, v102, "[State] Replacing update from: %{public}s with update from: %{public}s", v103, 0x16u);
      swift_arrayDestroy();
      v77 = v138;

      v112 = v132;
    }

    else
    {

      sub_1001AB244(v83, _s6UpdateVMa);
      sub_1001AB244(v84, _s6UpdateVMa);
      v112 = v99;
    }

    sub_1001AB244(v112, _s6UpdateVMa);
  }

  sub_10008875C(v79 + v80, &qword_1002712C8, &qword_1001F3A18);
  sub_1001AB1DC(v77, v79 + v80, _s6UpdateVMa);
  v113 = v145;
  v114 = *(v146 + 56);
  v114(v79 + v80, 0, 1, v145);
  sub_1001AB0E4(v77, a3, _s6UpdateVMa);
  return (v114)(a3, 0, 1, v113);
}

void sub_1001A04F0(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v69 = a3;
  v70 = a5;
  v72 = a4;
  v76 = a2;
  updated = _s6UpdateVMa();
  v8 = *(updated - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(updated);
  v79 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v68 - v12;
  v13 = sub_100084528(&qword_100271D58, &qword_1001F4BD0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v68 - v16;
  v18 = sub_100084528(&qword_1002712C8, &qword_1001F3A18);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v78 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v68 - v23;
  __chkstk_darwin(v22);
  v26 = &v68 - v25;
  v71 = _s5StateVMa();
  v27 = *(v71 + 32);
  v77 = v5;
  v74 = v27;
  sub_10009ADF0(v5 + v27, v26, &qword_1002712C8, &qword_1001F3A18);
  v80 = a1;
  sub_1001AB1DC(a1, v24, _s6UpdateVMa);
  v75 = v8[7];
  v75(v24, 0, 1, updated);
  v28 = *(v14 + 56);
  sub_10009ADF0(v26, v17, &qword_1002712C8, &qword_1001F3A18);
  sub_10009ADF0(v24, &v17[v28], &qword_1002712C8, &qword_1001F3A18);
  v29 = v8[6];
  if (v29(v17, 1, updated) == 1)
  {
    sub_10008875C(v24, &qword_1002712C8, &qword_1001F3A18);
    sub_10008875C(v26, &qword_1002712C8, &qword_1001F3A18);
    if (v29(&v17[v28], 1, updated) == 1)
    {
      sub_10008875C(v17, &qword_1002712C8, &qword_1001F3A18);
      v30 = v80;
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v39 = v78;
  sub_10009ADF0(v17, v78, &qword_1002712C8, &qword_1001F3A18);
  if (v29(&v17[v28], 1, updated) == 1)
  {
    sub_10008875C(v24, &qword_1002712C8, &qword_1001F3A18);
    sub_10008875C(v26, &qword_1002712C8, &qword_1001F3A18);
    sub_1001AB244(v39, _s6UpdateVMa);
LABEL_11:
    v40 = &qword_100271D58;
    v41 = &qword_1001F4BD0;
    v42 = v17;
LABEL_12:
    sub_10008875C(v42, v40, v41);
    v30 = v80;
LABEL_13:
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v43 = sub_1001C5148();
    sub_100083274(v43, qword_100281898);
    v44 = v79;
    sub_1001AB1DC(v30, v79, _s6UpdateVMa);
    v35 = sub_1001C5128();
    v45 = sub_1001C6598();
    if (!os_log_type_enabled(v35, v45))
    {

      sub_1001AB244(v44, _s6UpdateVMa);
      return;
    }

    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v81 = v47;
    *v46 = 136446210;
    sub_1001C4CA8();
    sub_1000B6E64(&qword_100270A80);
    v48 = sub_1001C6CC8();
    v50 = v49;
    sub_1001AB244(v44, _s6UpdateVMa);
    v51 = sub_1001874E8(v48, v50, &v81);

    *(v46 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v35, v45, "[State] Skipping finish for old update from: %{public}s", v46, 0xCu);
    sub_10008E7BC(v47);

    goto LABEL_29;
  }

  v52 = &v17[v28];
  v53 = v73;
  sub_1001AB0E4(v52, v73, _s6UpdateVMa);
  if ((sub_1001C4C68() & 1) == 0)
  {
    sub_10008875C(v24, &qword_1002712C8, &qword_1001F3A18);
    sub_10008875C(v26, &qword_1002712C8, &qword_1001F3A18);
    sub_1001AB244(v53, _s6UpdateVMa);
    sub_1001AB244(v39, _s6UpdateVMa);
    v42 = v17;
    v40 = &qword_1002712C8;
    v41 = &qword_1001F3A18;
    goto LABEL_12;
  }

  v54 = sub_10019E694(*(v39 + *(updated + 20)), *(v53 + *(updated + 20)));
  sub_10008875C(v24, &qword_1002712C8, &qword_1001F3A18);
  sub_10008875C(v26, &qword_1002712C8, &qword_1001F3A18);
  sub_1001AB244(v53, _s6UpdateVMa);
  sub_1001AB244(v39, _s6UpdateVMa);
  sub_10008875C(v17, &qword_1002712C8, &qword_1001F3A18);
  v30 = v80;
  if ((v54 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  v31 = v77;
  v32 = v74;
  sub_10008875C(v77 + v74, &qword_1002712C8, &qword_1001F3A18);
  v33 = v75;
  v75((v31 + v32), 1, 1, updated);
  if (v76)
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v34 = sub_1001C5148();
    sub_100083274(v34, qword_100281898);
    v35 = sub_1001C5128();
    v36 = sub_1001C65B8();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_30;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "[State] Skipping finish because task was cancelled";
    goto LABEL_28;
  }

  v55 = v71;
  v56 = *(v71 + 28);
  sub_10008875C(v31 + v56, &qword_1002712C8, &qword_1001F3A18);
  sub_1001AB1DC(v30, v31 + v56, _s6UpdateVMa);
  v33(v31 + v56, 0, 1, updated);
  if (v72)
  {
    v57 = v70;
    v58 = sub_1001A4D08(v30, v69, v72, v70);
    v60 = v59;
    v62 = v61;
    v63 = (v31 + *(v55 + 36));
    v64 = v63[1];

    *v63 = v58;
    v63[1] = v60;
    sub_1001A30D0(v62);

    v65 = sub_1001A51FC(v30, v57);
    v66 = *(v31 + 8);
    *(v31 + 8) = v65;
    sub_1001A1D28(v66, v65);

    return;
  }

  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v67 = sub_1001C5148();
  sub_100083274(v67, qword_100281898);
  v35 = sub_1001C5128();
  v36 = sub_1001C65B8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "[State] Skipping finish because there was no result (request failed?)";
LABEL_28:
    _os_log_impl(&_mh_execute_header, v35, v36, v38, v37, 2u);
LABEL_29:
  }

LABEL_30:
}

uint64_t sub_1001A0DE8(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    while (1)
    {
      v8 = v7;
LABEL_9:
      v9 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v10 = 24 * (v9 | (v8 << 6));
      v11 = *(a1 + 48) + v10;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = (*(a1 + 56) + v10);
      v16 = *v15;
      v17 = *(v15 + 1);
      v18 = *(v15 + 2);

      sub_1001A42C4(v17, v18, v12, v13, v14, v16);

      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }
}

void sub_1001A0F34(void *a1, void *a2, int a3)
{
  v7 = _s11TrackedItemVMa();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v14 = *(*v3 + 16);
  v15 = &_swiftEmptyArrayStorage;
  if (v14)
  {
    v36 = v3;
    v37 = a3;
    v38 = a1;
    v39 = a2;
    v41 = &_swiftEmptyArrayStorage;
    sub_1000D3980(0, v14, 0);
    v15 = v41;
    v16 = v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v17 = *(v8 + 72);
    do
    {
      sub_1001AB1DC(v16, v12, _s11TrackedItemVMa);
      v18 = *v12;
      v19 = *(v12 + 1);
      v20 = v12[16];

      v10 = sub_1001AB244(v12, _s11TrackedItemVMa);
      v41 = v15;
      v22 = v15[2];
      v21 = v15[3];
      if (v22 >= v21 >> 1)
      {
        v10 = sub_1000D3980((v21 > 1), v22 + 1, 1);
        v15 = v41;
      }

      v15[2] = v22 + 1;
      v23 = &v15[3 * v22];
      v23[4] = v18;
      v23[5] = v19;
      *(v23 + 48) = v20;
      v16 += v17;
      --v14;
    }

    while (v14);
    a1 = v38;
    a2 = v39;
    LOBYTE(a3) = v37;
  }

  v41 = a1;
  v42 = a2;
  v43 = a3 & 1;
  __chkstk_darwin(v10);
  *(&v36 - 2) = &v41;
  if (sub_1001A9A1C(sub_1001AB060, (&v36 - 4), v15))
  {

    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v24 = sub_1001C5148();
    sub_100083274(v24, qword_100281898);

    v25 = sub_1001C5128();
    v26 = sub_1001C65B8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v40 = v28;
      *v27 = 136315138;
      v41 = 0;
      v42 = 0xE000000000000000;
      if (a3)
      {
        v29._countAndFlagsBits = 65;
      }

      else
      {
        v29._countAndFlagsBits = 66;
      }

      v29._object = 0xE100000000000000;
      sub_1001C6138(v29);

      v44._countAndFlagsBits = 46;
      v44._object = 0xE100000000000000;
      sub_1001C6138(v44);
      v45._countAndFlagsBits = a1;
      v45._object = a2;
      sub_1001C6138(v45);
      v30 = sub_1001874E8(v41, v42, &v40);

      *(v27 + 4) = v30;
      v31 = "[State] Item '%s' is already being tracked";
LABEL_22:
      _os_log_impl(&_mh_execute_header, v25, v26, v31, v27, 0xCu);
      sub_10008E7BC(v28);
    }
  }

  else
  {
    sub_100084528(&qword_10026F770, &qword_1001F13A0);
    inited = swift_initStackObject();
    inited[1] = xmmword_1001F0670;
    *(inited + 4) = a1;
    *(inited + 5) = a2;
    *(inited + 48) = a3 & 1;
    v41 = inited;

    sub_100195C88(v15);
    sub_1001A378C(v41);

    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v33 = sub_1001C5148();
    sub_100083274(v33, qword_100281898);

    v25 = sub_1001C5128();
    v26 = sub_1001C65B8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v40 = v28;
      *v27 = 136315138;
      v41 = 0;
      v42 = 0xE000000000000000;
      if (a3)
      {
        v34._countAndFlagsBits = 65;
      }

      else
      {
        v34._countAndFlagsBits = 66;
      }

      v34._object = 0xE100000000000000;
      sub_1001C6138(v34);

      v46._countAndFlagsBits = 46;
      v46._object = 0xE100000000000000;
      sub_1001C6138(v46);
      v47._countAndFlagsBits = a1;
      v47._object = a2;
      sub_1001C6138(v47);
      v35 = sub_1001874E8(v41, v42, &v40);

      *(v27 + 4) = v35;
      v31 = "[State] Item '%s' is now being tracked";
      goto LABEL_22;
    }
  }
}

void sub_1001A143C(uint64_t a1, NSObject *a2)
{
  v4 = _s11TrackedItemVMa();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = &_swiftEmptyArrayStorage;
  v78 = a1;
  v79 = a2;
  v76 = v9;
  v77 = v5;
  if (v9)
  {
    v81 = &_swiftEmptyArrayStorage;
    sub_1000D3980(0, v9, 0);
    v10 = v81;
    v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      sub_1001AB1DC(v11, v8, _s11TrackedItemVMa);
      v14 = *v8;
      v13 = *(v8 + 1);
      v15 = v8[16];

      sub_1001AB244(v8, _s11TrackedItemVMa);
      v81 = v10;
      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        sub_1000D3980((v16 > 1), v17 + 1, 1);
        v10 = v81;
      }

      v10[2] = v17 + 1;
      v18 = &v10[3 * v17];
      v18[4] = v14;
      v18[5] = v13;
      *(v18 + 48) = v15;
      v11 += v12;
      --v9;
    }

    while (v9);
    a2 = v79;
    v5 = v77;
  }

  v19 = sub_1001575F4(v10);

  isa = a2[2].isa;
  v21 = &_swiftEmptyArrayStorage;
  v75 = isa;
  if (isa)
  {
    v74 = v19;
    v81 = &_swiftEmptyArrayStorage;
    sub_1000D3980(0, isa, 0);
    v21 = v81;
    v22 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v23 = *(v5 + 72);
    do
    {
      sub_1001AB1DC(v22, v8, _s11TrackedItemVMa);
      v25 = *v8;
      v24 = *(v8 + 1);
      v26 = v8[16];

      sub_1001AB244(v8, _s11TrackedItemVMa);
      v81 = v21;
      v28 = v21[2];
      v27 = v21[3];
      if (v28 >= v27 >> 1)
      {
        sub_1000D3980((v27 > 1), v28 + 1, 1);
        v21 = v81;
      }

      v21[2] = v28 + 1;
      v29 = &v21[3 * v28];
      v29[4] = v25;
      v29[5] = v24;
      *(v29 + 48) = v26;
      v22 += v23;
      --isa;
    }

    while (isa);
    v19 = v74;
  }

  v30 = sub_1001575F4(v21);

  if (v19[2] <= v30[2] >> 3)
  {
    v81 = v30;

    sub_1001AAAD0(v19);
    v31 = v81;
  }

  else
  {

    v31 = sub_1001A9BF8(v19, v30);
  }

  if (v30[2] <= v19[2] >> 3)
  {
    v81 = v19;
    sub_1001AAAD0(v30);

    v32 = v81;
  }

  else
  {
    v32 = sub_1001A9BF8(v30, v19);
  }

  v81 = v31;
  sub_100084528(&qword_100274228, &qword_1001F8710);
  sub_1001AAFFC();
  p_inst_props = &OBJC_PROTOCOL___BDSReadingDataMigrationService.inst_props;
  if (sub_1001C6458())
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v34 = sub_1001C5148();
    sub_100083274(v34, qword_100281898);

    v35 = sub_1001C5128();
    v36 = sub_1001C65B8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v81 = v74;
      *v37 = 136315138;
      sub_100110100();
      v38 = sub_1001C63F8();
      v39 = v32;
      v41 = v40;

      v42 = sub_1001874E8(v38, v41, &v81);
      v32 = v39;

      *(v37 + 4) = v42;
      p_inst_props = (&OBJC_PROTOCOL___BDSReadingDataMigrationService + 56);
      _os_log_impl(&_mh_execute_header, v35, v36, "[State] Added tracked item(s): %s", v37, 0xCu);
      sub_10008E7BC(v74);

      goto LABEL_26;
    }
  }

LABEL_26:
  v81 = v32;
  if (sub_1001C6458())
  {
    v43 = v79;
    if (p_inst_props[375] != -1)
    {
      swift_once();
    }

    v44 = sub_1001C5148();
    sub_100083274(v44, qword_100281898);

    v45 = sub_1001C5128();
    v46 = sub_1001C65B8();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = p_inst_props;
      v49 = swift_slowAlloc();
      v81 = v49;
      *v47 = 136315138;
      sub_100110100();
      v50 = sub_1001C63F8();
      v52 = v51;

      v53 = sub_1001874E8(v50, v52, &v81);

      *(v47 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v45, v46, "[State] Removed tracked item(s): %s", v47, 0xCu);
      sub_10008E7BC(v49);
      p_inst_props = v48;
    }

    else
    {
    }
  }

  else
  {

    v43 = v79;
  }

  if (p_inst_props[375] != -1)
  {
    swift_once();
  }

  v54 = sub_1001C5148();
  sub_100083274(v54, qword_100281898);

  v55 = sub_1001C5128();
  v56 = sub_1001C65B8();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v81 = v58;
    *v57 = 134218498;
    *(v57 + 4) = v76;

    *(v57 + 12) = 2048;
    v59 = v75;
    *(v57 + 14) = v75;

    *(v57 + 22) = 2080;
    if (v59)
    {
      v74 = v58;
      LODWORD(v76) = v56;
      v78 = v57;
      v79 = v55;
      v80 = &_swiftEmptyArrayStorage;
      sub_1000D3980(0, v59, 0);
      v60 = v80;
      v61 = v43 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
      v62 = *(v77 + 72);
      do
      {
        v63 = v59;
        sub_1001AB1DC(v61, v8, _s11TrackedItemVMa);
        v65 = *v8;
        v64 = *(v8 + 1);
        v66 = v8[16];

        sub_1001AB244(v8, _s11TrackedItemVMa);
        v80 = v60;
        v68 = v60[2];
        v67 = v60[3];
        if (v68 >= v67 >> 1)
        {
          sub_1000D3980((v67 > 1), v68 + 1, 1);
          v60 = v80;
        }

        v60[2] = v68 + 1;
        v69 = &v60[3 * v68];
        v69[4] = v65;
        v69[5] = v64;
        *(v69 + 48) = v66;
        v61 += v62;
        v59 = v63 - 1;
      }

      while (v63 != 1);
      v57 = v78;
      v55 = v79;
      LOBYTE(v56) = v76;
      v58 = v74;
    }

    v70 = sub_1001C62A8();
    v72 = v71;

    v73 = sub_1001874E8(v70, v72, &v81);

    *(v57 + 24) = v73;
    _os_log_impl(&_mh_execute_header, v55, v56, "[State] Tracked items (%ld) → (%ld) %s", v57, 0x20u);
    sub_10008E7BC(v58);
  }

  else
  {
  }
}

void sub_1001A1D28(uint64_t a1, uint64_t a2)
{
  v176 = _s4DealVMa();
  v4 = *(v176 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v176);
  v179 = &v171 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v187 = &v171 - v9;
  v10 = __chkstk_darwin(v8);
  v193 = &v171 - v11;
  v12 = __chkstk_darwin(v10);
  v178 = &v171 - v13;
  v14 = __chkstk_darwin(v12);
  v181 = &v171 - v15;
  v16 = __chkstk_darwin(v14);
  v189 = &v171 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = (&v171 - v19);
  v21 = __chkstk_darwin(v18);
  v183 = &v171 - v22;
  v23 = __chkstk_darwin(v21);
  v177 = &v171 - v24;
  v25 = __chkstk_darwin(v23);
  *&v191 = &v171 - v26;
  v27 = __chkstk_darwin(v25);
  v182 = &v171 - v28;
  v29 = __chkstk_darwin(v27);
  v190 = (&v171 - v30);
  __chkstk_darwin(v29);
  v188 = &v171 - v31;
  v32 = *(a1 + 16);
  v33 = &_swiftEmptyArrayStorage;
  v173 = a2;
  v174 = v4;
  v180 = v32;
  v194 = v20;
  v172 = a1;
  if (v32)
  {
    v195 = &_swiftEmptyArrayStorage;
    sub_1000D3980(0, v32, 0);
    v33 = v195;
    v34 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v35 = *(v4 + 72);
    do
    {
      v36 = v188;
      sub_1001AB1DC(v34, v188, _s4DealVMa);
      v37 = *v36;
      v38 = *(v36 + 8);
      v39 = *(v36 + 16);

      sub_1001AB244(v36, _s4DealVMa);
      v195 = v33;
      v41 = v33[2];
      v40 = v33[3];
      if (v41 >= v40 >> 1)
      {
        sub_1000D3980((v40 > 1), v41 + 1, 1);
        v33 = v195;
      }

      v33[2] = v41 + 1;
      v42 = &v33[3 * v41];
      v42[4] = v37;
      v42[5] = v38;
      *(v42 + 48) = v39;
      v34 += v35;
      --v32;
    }

    while (v32);
    a2 = v173;
    v4 = v174;
    v20 = v194;
  }

  v43 = sub_1001575F4(v33);

  v186 = *(a2 + 16);
  v44 = v189;
  if (v186)
  {
    v45 = 0;
    v46 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    *&v192 = *(v4 + 72);
    v175 = v46;
    v47 = a2 + v46;
    v48 = v43 + 56;
    v184 = &_swiftEmptyArrayStorage;
    v185 = v43;
    do
    {
      sub_1001AB1DC(v47 + v192 * v45, v190, _s4DealVMa);
      if (*(v43 + 16))
      {
        v50 = *v190;
        v51 = v190[1];
        v52 = *(v190 + 16);
        v53 = v185;
        v54 = *(v185 + 40);
        sub_1001C6DF8();
        sub_1001C60E8();
        sub_1001C6E18(v52);
        v55 = sub_1001C6E28();
        v56 = -1 << *(v53 + 32);
        v57 = v55 & ~v56;
        if ((*(v48 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
        {
          v58 = ~v56;
          v59 = *(v185 + 48);
          do
          {
            v60 = v59 + 24 * v57;
            v61 = *(v60 + 16);
            if (*v60 == v50 && *(v60 + 8) == v51)
            {
              if (v52 == v61)
              {
                goto LABEL_9;
              }
            }

            else if ((sub_1001C6D08() & 1) != 0 && ((v52 ^ v61) & 1) == 0)
            {
LABEL_9:
              sub_1001AB244(v190, _s4DealVMa);
              v20 = v194;
              v43 = v185;
              goto LABEL_10;
            }

            v57 = (v57 + 1) & v58;
          }

          while (((*(v48 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) != 0);
        }
      }

      sub_1001AB0E4(v190, v182, _s4DealVMa);
      v63 = v184;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v197 = v63;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000D39A0(0, v63[2] + 1, 1);
        v63 = v197;
      }

      v43 = v185;
      v66 = v63[2];
      v65 = v63[3];
      v20 = v194;
      if (v66 >= v65 >> 1)
      {
        sub_1000D39A0(v65 > 1, v66 + 1, 1);
        v63 = v197;
      }

      v63[2] = v66 + 1;
      v184 = v63;
      sub_1001AB0E4(v182, v63 + v175 + v66 * v192, _s4DealVMa);
LABEL_10:
      ++v45;
      v49 = v186;
    }

    while (v45 != v186);

    v195 = &_swiftEmptyArrayStorage;
    sub_1000D3980(0, v49, 0);
    v67 = v195;
    do
    {
      v68 = v188;
      sub_1001AB1DC(v47, v188, _s4DealVMa);
      v70 = *v68;
      v69 = *(v68 + 8);
      v71 = *(v68 + 16);

      sub_1001AB244(v68, _s4DealVMa);
      v195 = v67;
      v73 = v67[2];
      v72 = v67[3];
      if (v73 >= v72 >> 1)
      {
        sub_1000D3980((v72 > 1), v73 + 1, 1);
        v67 = v195;
      }

      v67[2] = v73 + 1;
      v74 = &v67[3 * v73];
      v74[4] = v70;
      v74[5] = v69;
      *(v74 + 48) = v71;
      v47 += v192;
      --v49;
    }

    while (v49);
    v4 = v174;
    v44 = v189;
  }

  else
  {

    v67 = &_swiftEmptyArrayStorage;
    v184 = &_swiftEmptyArrayStorage;
  }

  v75 = sub_1001575F4(v67);

  if (v180)
  {
    v76 = 0;
    v77 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    *&v192 = *(v4 + 72);
    v182 = v77;
    v185 = v172 + v77;
    v78 = v75 + 56;
    v190 = &_swiftEmptyArrayStorage;
    do
    {
      sub_1001AB1DC(v185 + v192 * v76, v191, _s4DealVMa);
      v80 = v75;
      if (*(v75 + 16))
      {
        v81 = *v191;
        v82 = *(v191 + 8);
        v83 = *(v191 + 16);
        v84 = *(v75 + 40);
        sub_1001C6DF8();
        sub_1001C60E8();
        sub_1001C6E18(v83);
        v85 = sub_1001C6E28();
        v86 = -1 << *(v75 + 32);
        v87 = v85 & ~v86;
        if ((*(v78 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87))
        {
          v88 = ~v86;
          v89 = *(v75 + 48);
          do
          {
            v90 = v89 + 24 * v87;
            v91 = *(v90 + 16);
            if (*v90 == v81 && *(v90 + 8) == v82)
            {
              if (v83 == v91)
              {
                goto LABEL_36;
              }
            }

            else if ((sub_1001C6D08() & 1) != 0 && ((v83 ^ v91) & 1) == 0)
            {
LABEL_36:
              sub_1001AB244(v191, _s4DealVMa);
              v79 = v180;
              v44 = v189;
              v20 = v194;
              v75 = v80;
              goto LABEL_37;
            }

            v87 = (v87 + 1) & v88;
          }

          while (((*(v78 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87) & 1) != 0);
        }
      }

      sub_1001AB0E4(v191, v183, _s4DealVMa);
      v93 = v190;
      v94 = swift_isUniquelyReferenced_nonNull_native();
      v95 = v93;
      v197 = v93;
      if ((v94 & 1) == 0)
      {
        sub_1000D39A0(0, v93[2] + 1, 1);
        v95 = v197;
      }

      v75 = v80;
      v97 = v95[2];
      v96 = v95[3];
      v79 = v180;
      v44 = v189;
      v20 = v194;
      if (v97 >= v96 >> 1)
      {
        sub_1000D39A0(v96 > 1, v97 + 1, 1);
        v95 = v197;
      }

      v95[2] = v97 + 1;
      v190 = v95;
      sub_1001AB0E4(v183, v95 + v182 + v97 * v192, _s4DealVMa);
LABEL_37:
      ++v76;
    }

    while (v76 != v79);
  }

  else
  {
    v190 = &_swiftEmptyArrayStorage;
  }

  v99 = v184[2];
  v100 = "' is now being tracked";
  v101 = v187;
  if (v99)
  {
    v102 = v184 + ((*(v174 + 80) + 32) & ~*(v174 + 80));
    *&v192 = *(v174 + 72);
    *&v98 = 136315650;
    v191 = v98;
    v103 = v179;
    v104 = v181;
    v105 = v177;
    do
    {
      sub_1001AB1DC(v102, v105, _s4DealVMa);
      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v107 = sub_1001C5148();
      sub_100083274(v107, qword_100281898);
      sub_1001AB1DC(v105, v20, _s4DealVMa);
      sub_1001AB1DC(v105, v44, _s4DealVMa);
      sub_1001AB0E4(v105, v104, _s4DealVMa);
      v108 = sub_1001C5128();
      v109 = sub_1001C65B8();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v197 = swift_slowAlloc();
        *v110 = v191;
        v111 = *v20;
        v112 = *(v194 + 8);
        v113 = *(v194 + 16);
        v195 = 0;
        v196 = 0xE000000000000000;
        if (v113)
        {
          v114._countAndFlagsBits = 65;
        }

        else
        {
          v114._countAndFlagsBits = 66;
        }

        v114._object = 0xE100000000000000;
        sub_1001C6138(v114);

        v198._countAndFlagsBits = 46;
        v198._object = 0xE100000000000000;
        sub_1001C6138(v198);
        v199._countAndFlagsBits = v111;
        v199._object = v112;
        sub_1001C6138(v199);
        v115 = v195;
        v116 = v196;
        sub_1001AB244(v194, _s4DealVMa);
        v117 = sub_1001874E8(v115, v116, &v197);

        *(v110 + 4) = v117;
        *(v110 + 12) = 2082;
        v118 = v176;
        v119 = *(v176 + 28);
        sub_1001C4CA8();
        sub_1000B6E64(&qword_100270A80);
        v120 = sub_1001C6CC8();
        v122 = v121;
        sub_1001AB244(v189, _s4DealVMa);
        v123 = sub_1001874E8(v120, v122, &v197);
        v20 = v194;

        *(v110 + 14) = v123;
        *(v110 + 22) = 2048;
        v124 = *(v118 + 32);
        v103 = v179;
        v125 = *(v181 + v124);
        v44 = v189;
        sub_1001AB244(v181, _s4DealVMa);
        *(v110 + 24) = v125;
        _os_log_impl(&_mh_execute_header, v108, v109, "[State] Added deal: %s, date: %{public}s, reference price: %f", v110, 0x20u);
        swift_arrayDestroy();
        v104 = v181;

        v101 = v187;
      }

      else
      {

        sub_1001AB244(v104, _s4DealVMa);
        sub_1001AB244(v44, _s4DealVMa);
        sub_1001AB244(v20, _s4DealVMa);
      }

      v106 = v193;
      v102 += v192;
      --v99;
      v105 = v177;
    }

    while (v99);

    v100 = "[State] Item '%s' is now being tracked" + 16;
  }

  else
  {

    v103 = v179;
    v106 = v193;
  }

  v127 = v190[2];
  if (v127)
  {
    v128 = v190 + ((*(v174 + 80) + 32) & ~*(v174 + 80));
    v129 = *(v174 + 72);
    *&v126 = *(v100 + 412);
    v192 = v126;
    v130 = v178;
    v194 = v129;
    do
    {
      sub_1001AB1DC(v128, v130, _s4DealVMa);
      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v131 = sub_1001C5148();
      sub_100083274(v131, qword_100281898);
      sub_1001AB1DC(v130, v106, _s4DealVMa);
      sub_1001AB1DC(v130, v101, _s4DealVMa);
      sub_1001AB0E4(v130, v103, _s4DealVMa);
      v132 = sub_1001C5128();
      v133 = sub_1001C65B8();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v197 = swift_slowAlloc();
        *v134 = v192;
        v135 = *v106;
        v136 = *(v193 + 8);
        v137 = *(v193 + 16);
        v195 = 0;
        v196 = 0xE000000000000000;
        if (v137)
        {
          v138._countAndFlagsBits = 65;
        }

        else
        {
          v138._countAndFlagsBits = 66;
        }

        v138._object = 0xE100000000000000;
        sub_1001C6138(v138);

        v200._countAndFlagsBits = 46;
        v200._object = 0xE100000000000000;
        sub_1001C6138(v200);
        v201._countAndFlagsBits = v135;
        v201._object = v136;
        sub_1001C6138(v201);
        v139 = v195;
        v140 = v196;
        sub_1001AB244(v193, _s4DealVMa);
        v141 = sub_1001874E8(v139, v140, &v197);

        *(v134 + 4) = v141;
        *(v134 + 12) = 2082;
        v142 = v176;
        v143 = *(v176 + 28);
        sub_1001C4CA8();
        sub_1000B6E64(&qword_100270A80);
        v144 = sub_1001C6CC8();
        v146 = v145;
        sub_1001AB244(v187, _s4DealVMa);
        v147 = sub_1001874E8(v144, v146, &v197);
        v106 = v193;

        *(v134 + 14) = v147;
        *(v134 + 22) = 2048;
        v148 = *(v142 + 32);
        v103 = v179;
        v149 = *(v179 + v148);
        sub_1001AB244(v179, _s4DealVMa);
        *(v134 + 24) = v149;
        _os_log_impl(&_mh_execute_header, v132, v133, "[State] Removed deal: %s, date: %{public}s, reference price: %f", v134, 0x20u);
        swift_arrayDestroy();
        v101 = v187;

        v129 = v194;
      }

      else
      {

        sub_1001AB244(v103, _s4DealVMa);
        sub_1001AB244(v101, _s4DealVMa);
        sub_1001AB244(v106, _s4DealVMa);
      }

      v128 += v129;
      --v127;
      v130 = v178;
    }

    while (v127);
  }

  v150 = v173;
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v151 = sub_1001C5148();
  sub_100083274(v151, qword_100281898);

  v152 = sub_1001C5128();
  v153 = sub_1001C65B8();
  if (os_log_type_enabled(v152, v153))
  {
    v154 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    v195 = v155;
    *v154 = 134218498;
    *(v154 + 4) = v180;

    *(v154 + 12) = 2048;
    v156 = v186;
    *(v154 + 14) = v186;

    *(v154 + 22) = 2080;
    if (v156)
    {
      *&v192 = v155;
      LODWORD(v193) = v153;
      v194 = v152;
      v197 = &_swiftEmptyArrayStorage;
      sub_1000D3980(0, v156, 0);
      v157 = v197;
      v158 = v150 + ((*(v174 + 80) + 32) & ~*(v174 + 80));
      v159 = *(v174 + 72);
      do
      {
        v160 = v188;
        sub_1001AB1DC(v158, v188, _s4DealVMa);
        v161 = *v160;
        v162 = *(v160 + 8);
        v163 = *(v160 + 16);

        sub_1001AB244(v160, _s4DealVMa);
        v197 = v157;
        v165 = v157[2];
        v164 = v157[3];
        if (v165 >= v164 >> 1)
        {
          sub_1000D3980((v164 > 1), v165 + 1, 1);
          v157 = v197;
        }

        v157[2] = v165 + 1;
        v166 = &v157[3 * v165];
        v166[4] = v161;
        v166[5] = v162;
        *(v166 + 48) = v163;
        v158 += v159;
        --v186;
      }

      while (v186);
      v152 = v194;
      LOBYTE(v153) = v193;
      v155 = v192;
    }

    v167 = sub_1001C62A8();
    v169 = v168;

    v170 = sub_1001874E8(v167, v169, &v195);

    *(v154 + 24) = v170;
    _os_log_impl(&_mh_execute_header, v152, v153, "[State] Deals (%ld) → (%ld) %s", v154, 0x20u);
    sub_10008E7BC(v155);
  }

  else
  {
  }
}

void sub_1001A30D0(uint64_t a1)
{
  v2 = v1;
  v4 = _s4DealVMa();
  v59 = *(v4 - 8);
  v5 = *(v59 + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v56 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v63 = (&v55 - v8);
  v9 = _s11TrackedItemVMa();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  if (v14 >= 0x33)
  {
    if (qword_10026EBB8 != -1)
    {
      goto LABEL_43;
    }

    goto LABEL_3;
  }

  v20 = *v1;
  *v1 = a1;

LABEL_7:
  sub_1001A143C(v20, a1);

  v21 = *(a1 + 16);
  v22 = &_swiftEmptyArrayStorage;
  v55 = v2;
  if (v21)
  {
    v64 = &_swiftEmptyArrayStorage;
    sub_1000D3980(0, v21, 0);
    v22 = v64;
    v23 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v24 = *(v10 + 72);
    do
    {
      sub_1001AB1DC(v23, v13, _s11TrackedItemVMa);
      v25 = *v13;
      v26 = *(v13 + 1);
      v27 = v13[16];

      sub_1001AB244(v13, _s11TrackedItemVMa);
      v64 = v22;
      v29 = v22[2];
      v28 = v22[3];
      v10 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        sub_1000D3980((v28 > 1), v29 + 1, 1);
        v22 = v64;
      }

      v22[2] = v10;
      v30 = &v22[3 * v29];
      v30[4] = v25;
      v30[5] = v26;
      *(v30 + 48) = v27;
      v23 += v24;
      --v21;
    }

    while (v21);
    v2 = v55;
  }

  a1 = sub_1001575F4(v22);

  v13 = v2[1];
  v60 = *(v13 + 2);
  if (v60)
  {
    v14 = 0;
    v2 = (a1 + 56);
    v57 = &_swiftEmptyArrayStorage;
    v58 = v13;
    while (1)
    {
      if (v14 >= *(v13 + 2))
      {
        __break(1u);
LABEL_43:
        swift_once();
LABEL_3:
        v15 = sub_1001C5148();
        sub_100083274(v15, qword_100281898);
        v16 = sub_1001C5128();
        v17 = sub_1001C6598();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 134218240;
          *(v18 + 4) = v14;
          *(v18 + 12) = 2048;
          *(v18 + 14) = 50;
          _os_log_impl(&_mh_execute_header, v16, v17, "[State] Tracked items (%ld) exceed the limit (%ld)", v18, 0x16u);
        }

        sub_100177844(a1, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), 0, 0x65uLL);
        a1 = v19;
        v20 = *v2;
        *v2 = v19;
        goto LABEL_7;
      }

      v31 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v61 = *(v59 + 72);
      v62 = v31;
      sub_1001AB1DC(&v13[v31 + v61 * v14], v63, _s4DealVMa);
      v10 = a1;
      if (!*(a1 + 16))
      {
        goto LABEL_15;
      }

      v32 = *v63;
      v33 = v63[1];
      v34 = *(v63 + 16);
      v35 = *(a1 + 40);
      sub_1001C6DF8();
      sub_1001C60E8();
      sub_1001C6E18(v34);
      v36 = sub_1001C6E28();
      v37 = -1 << *(a1 + 32);
      v38 = v36 & ~v37;
      if (((*(v2 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
      {
LABEL_15:
        sub_1001AB244(v63, _s4DealVMa);
        v13 = v58;
        a1 = v10;
        goto LABEL_16;
      }

      v39 = ~v37;
      v40 = *(v10 + 48);
      while (1)
      {
        v41 = v40 + 24 * v38;
        v42 = *(v41 + 16);
        if (*v41 != v32 || *(v41 + 8) != v33)
        {
          break;
        }

        if (v34 == v42)
        {
          goto LABEL_29;
        }

LABEL_22:
        v38 = (v38 + 1) & v39;
        if (((*(v2 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      if (sub_1001C6D08() & 1) == 0 || ((v34 ^ v42))
      {
        goto LABEL_22;
      }

LABEL_29:
      sub_1001AB0E4(v63, v56, _s4DealVMa);
      v44 = v57;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000D39A0(0, v44[2] + 1, 1);
        v44 = v65;
      }

      a1 = v10;
      v47 = v44[2];
      v46 = v44[3];
      v13 = v58;
      if (v47 >= v46 >> 1)
      {
        sub_1000D39A0(v46 > 1, v47 + 1, 1);
        v44 = v65;
      }

      v44[2] = v47 + 1;
      v57 = v44;
      sub_1001AB0E4(v56, v44 + v62 + v47 * v61, _s4DealVMa);
LABEL_16:
      if (++v14 == v60)
      {
        goto LABEL_35;
      }
    }
  }

  v57 = &_swiftEmptyArrayStorage;
LABEL_35:

  v48 = v57;
  v55[1] = v57;
  sub_1001A1D28(v13, v48);

  v49 = *(v48 + 16);
  v50 = v60 - v49;
  if (v60 != v49)
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v51 = sub_1001C5148();
    sub_100083274(v51, qword_100281898);
    v52 = sub_1001C5128();
    v53 = sub_1001C65B8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 134217984;
      *(v54 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v52, v53, "[State] Removed %ld deals because their items are no longer tracked", v54, 0xCu);
    }
  }
}