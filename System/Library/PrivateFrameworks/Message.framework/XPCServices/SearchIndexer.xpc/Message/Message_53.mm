id sub_100357308(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v103 = a3;
  v8 = sub_10000C9C0(&qword_1005D6670, &qword_1004EBFB0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v106 = &v99 - v10;
  v11 = _s6LoggerVMa_0(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v102 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v99 - v15;
  __chkstk_darwin(v17);
  v19 = &v99 - v18;
  __chkstk_darwin(v20);
  v22 = &v99 - v21;
  v23 = sub_10000C9C0(&qword_1005D97C8, &unk_1004F6A70);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v99 - v25;
  v107 = a2;
  v108 = sub_100358040(a1);
  if (v27)
  {
    if (v27 == 1)
    {
LABEL_31:
      sub_100025F40(a1, &qword_1005D97C8, &unk_1004F6A70);
      v97 = type metadata accessor for MessageBeingDownloaded(0);
      return (*(*(v97 - 8) + 56))(a1, 1, 1, v97);
    }

    v104 = v27;
    v105 = v4;
    sub_10000E268(a1, v26, &qword_1005D97C8, &unk_1004F6A70);
    v28 = type metadata accessor for MessageBeingDownloaded(0);
    v29 = (*(*(v28 - 8) + 48))(v26, 1, v28);
    sub_100025F40(v26, &qword_1005D97C8, &unk_1004F6A70);
    v30 = v107 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
    if (v29 == 1)
    {
      sub_10035A508(v107 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v22, _s6LoggerVMa_0);
      v31 = v30 + *(v11 + 20);
      LOBYTE(v32) = *v31;
      v33 = *(v31 + 4);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v34 = a4;
      v35 = sub_1004A4A54();
      v36 = sub_1004A4A74();
      (*(*(v36 - 8) + 8))(v22, v36);
      v37 = sub_1004A6014();

      if (os_log_type_enabled(v35, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v110 = v39;
        *v38 = 68159235;
        *(v38 + 4) = 2;
        *(v38 + 8) = 256;
        *(v38 + 10) = v32;
        *(v38 + 11) = 1040;
        *(v38 + 13) = 8;
        *(v38 + 17) = 1024;
        *(v38 + 19) = v33;
        *(v38 + 23) = 1024;
        *(v38 + 25) = v103;
        *(v38 + 29) = 2160;
        *(v38 + 31) = 0x786F626C69616DLL;
        *(v38 + 39) = 2085;
        v40 = sub_10033A824();
        if (v40)
        {
          *&v109[0] = v40;
          DWORD2(v109[0]) = v41;
          v42 = sub_1004A5824();
          v44 = v43;
        }

        else
        {
          v42 = 8425698;
          v44 = 0xA300000000000000;
        }

        v72 = sub_10015BA6C(v42, v44, &v110);

        *(v38 + 41) = v72;
        v73 = "[%.*hhx-%.*X] Download did complete for unknown message %u in '%{sensitive,mask.mailbox}s'.";
LABEL_20:
        _os_log_impl(&_mh_execute_header, v35, v37, v73, v38, 0x31u);
        sub_1000197E0(v39);
      }
    }

    else
    {
      sub_10035A508(v107 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v19, _s6LoggerVMa_0);
      v61 = v30 + *(v11 + 20);
      LOBYTE(v32) = *v61;
      v33 = *(v61 + 4);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v62 = a4;
      v35 = sub_1004A4A54();
      v63 = sub_1004A4A74();
      (*(*(v63 - 8) + 8))(v19, v63);
      v37 = sub_1004A6014();

      if (os_log_type_enabled(v35, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v110 = v39;
        *v38 = 68159235;
        *(v38 + 4) = 2;
        *(v38 + 8) = 256;
        *(v38 + 10) = v32;
        *(v38 + 11) = 1040;
        *(v38 + 13) = 8;
        *(v38 + 17) = 1024;
        *(v38 + 19) = v33;
        *(v38 + 23) = 1024;
        *(v38 + 25) = v103;
        *(v38 + 29) = 2160;
        *(v38 + 31) = 0x786F626C69616DLL;
        *(v38 + 39) = 2085;
        v64 = sub_10033A824();
        if (v64)
        {
          *&v109[0] = v64;
          DWORD2(v109[0]) = v65;
          v66 = sub_1004A5824();
          v68 = v67;
        }

        else
        {
          v66 = 8425698;
          v68 = 0xA300000000000000;
        }

        v74 = sub_10015BA6C(v66, v68, &v110);

        *(v38 + 41) = v74;
        v73 = "[%.*hhx-%.*X] Download did complete, but unable to enqueue message %u in '%{sensitive,mask.mailbox}s'.";
        goto LABEL_20;
      }
    }

    v49 = v108;
    goto LABEL_22;
  }

  v101 = a1;
  v104 = v27;
  v105 = v4;
  v45 = v107 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
  sub_10035A508(v107 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v16, _s6LoggerVMa_0);
  v46 = (v45 + *(v11 + 20));
  v32 = *v46;
  v47 = *(v46 + 1);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v48 = a4;
  v49 = v108;
  sub_10035A570(v108, 0);
  v50 = sub_1004A4A54();
  v51 = sub_1004A4A74();
  (*(*(v51 - 8) + 8))(v16, v51);
  v52 = sub_1004A6014();

  if (os_log_type_enabled(v50, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v110 = v55;
    *v53 = 68159491;
    *(v53 + 4) = 2;
    *(v53 + 8) = 256;
    v99 = v32;
    v100 = v47;
    *(v53 + 10) = v32;
    *(v53 + 11) = 1040;
    *(v53 + 13) = 8;
    *(v53 + 17) = 1024;
    *(v53 + 19) = v47;
    *(v53 + 23) = 1024;
    *(v53 + 25) = v103;
    *(v53 + 29) = 2160;
    *(v53 + 31) = 0x786F626C69616DLL;
    *(v53 + 39) = 2085;
    v56 = sub_10033A824();
    if (v56)
    {
      *&v109[0] = v56;
      DWORD2(v109[0]) = v57;
      v58 = sub_1004A5824();
      v60 = v59;
    }

    else
    {
      v58 = 8425698;
      v60 = 0xA300000000000000;
    }

    a1 = v101;
    v69 = sub_10015BA6C(v58, v60, &v110);

    *(v53 + 41) = v69;
    *(v53 + 49) = 2112;
    v70 = v108;
    v71 = sub_1004A4264();
    sub_10035A580(v70, 0);
    *(v53 + 51) = v71;
    *v54 = v71;
    _os_log_impl(&_mh_execute_header, v50, v52, "[%.*hhx-%.*X] Failed to parse downloaded message %u in '%{sensitive,mask.mailbox}s': %@", v53, 0x3Bu);
    sub_100025F40(v54, &qword_1005D51A0, &qword_1004D0940);

    sub_1000197E0(v55);
    v49 = v70;

    LOBYTE(v32) = v99;
    v33 = v100;
  }

  else
  {

    sub_10035A580(v49, 0);
    v33 = v47;
    a1 = v101;
  }

LABEL_22:
  v75 = type metadata accessor for MessageBeingDownloaded(0);
  v76 = (*(*(v75 - 8) + 48))(a1, 1, v75);
  v77 = v106;
  if (v76)
  {
    sub_10035A580(v49, v104);
    goto LABEL_31;
  }

  v78 = v33;
  v79 = *(a1 + 8);
  v80 = [v79 managedObjectContext];
  if (!v80)
  {
    sub_10035A580(v49, v104);

    goto LABEL_31;
  }

  v81 = v80;
  if (qword_1005D8760 != -1)
  {
    swift_once();
  }

  v109[2] = xmmword_1005D9218;
  v109[3] = *&qword_1005D9228;
  v109[4] = xmmword_1005D9238;
  v109[0] = xmmword_1005D91F8;
  v109[1] = *&qword_1005D9208;
  v82 = sub_1003521DC(v109);

  v83 = v102;
  sub_10035A508(v107 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v102, _s6LoggerVMa_0);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v84 = sub_1004A4A54();
  v85 = sub_1004A4A74();
  (*(*(v85 - 8) + 8))(v83, v85);
  v86 = sub_1004A6034();
  if (os_log_type_enabled(v84, v86))
  {
    v87 = swift_slowAlloc();
    *v87 = 68158464;
    *(v87 + 4) = 2;
    *(v87 + 8) = 256;
    *(v87 + 10) = v32;
    *(v87 + 11) = 1040;
    *(v87 + 13) = 8;
    *(v87 + 17) = 1024;
    *(v87 + 19) = v78;
    _os_log_impl(&_mh_execute_header, v84, v86, "[%.*hhx-%.*X] Marking message as indexed.", v87, 0x17u);
    v77 = v106;
  }

  v88 = type metadata accessor for IndexableMessageInfo(0);
  (*(*(v88 - 8) + 56))(v77, 1, 1, v88);
  v89 = sub_1004A5734();
  [v79 willChangeValueForKey:v89];

  v90 = v105;
  sub_10033B644(v79, v77);
  if (!v90)
  {
    v91 = sub_1004A5734();
    [v79 didChangeValueForKey:v91];

    sub_100025F40(v77, &qword_1005D6670, &qword_1004EBFB0);
    v92 = sub_1004A5734();
    [v79 willChangeValueForKey:v92];

    v93 = [objc_allocWithZone(NSNumber) initWithLongLong:v82];
    [v79 setPrimitiveIndexGeneration:v93];

    v94 = sub_1004A5734();
    [v79 didChangeValueForKey:v94];

    v95 = sub_1004A5734();
    [v79 willChangeValueForKey:v95];

    [v79 setPrimitiveAttributeChange:0];
    v96 = sub_1004A5734();
    [v79 didChangeValueForKey:v96];

    sub_10035A580(v108, v104);
    goto LABEL_31;
  }

  result = [v79 didChangeValueForKey:sub_1004A5734()];
  __break(1u);
  return result;
}

uint64_t sub_100358040(uint64_t a1)
{
  v3 = _s6LoggerVMa_0(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10000C9C0(&qword_1005DA518, &qword_1004F77A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v28[-v9];
  v11 = type metadata accessor for EnqueueableItem(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for MessageBeingDownloaded(0);
  if ((*(*(v16 - 8) + 48))(a1, 1, v16))
  {
    return 0;
  }

  v18 = *(v1 + 136);

  v19 = sub_100331A6C(820000, v18);

  v20 = v1;
  v21 = *(v1 + 72);
  v22 = *(v20 + 16);
  v23 = *(v20 + 24);
  sub_10035A508(v20 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v6, _s6LoggerVMa_0);
  v24 = v19;

  sub_100327A94(v22, v23, v24, v6, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_100025F40(v10, &qword_1005DA518, &qword_1004F77A0);
    return 0;
  }

  sub_10035A84C(v10, v15, type metadata accessor for EnqueueableItem);
  v25 = sub_1003288B4(v15, v24);
  v27 = v26;

  sub_10035A8B4(v15, type metadata accessor for EnqueueableItem);
  if (v27)
  {
    return 0;
  }

  return v25;
}

uint64_t sub_100358330(uint64_t *a1)
{
  v3 = [v1 persistentStores];
  sub_10019A8E4(0, &qword_1005DA510, NSPersistentStore_ptr);
  v4 = sub_1004A5C14();

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_17:

LABEL_22:
    result = sub_1004A69A4();
    __break(1u);
    return result;
  }

  if (!sub_1004A6A34())
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = sub_1004A6794();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_21:

      goto LABEL_22;
    }

    v5 = *(v4 + 32);
  }

  v3 = v5;

  v6 = [v1 persistentStores];
  v7 = sub_1004A5C14();

  if (v7 >> 62)
  {
    v8 = sub_1004A6A34();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 != 1)
  {
    goto LABEL_21;
  }

  v9 = [v1 metadataForPersistentStore:v3];
  v10 = sub_1004A5514();

  if (*(v10 + 16) && (v11 = sub_100064090(*a1, a1[1]), (v12 & 1) != 0))
  {
    sub_1001659C8(*(v10 + 56) + 32 * v11, v18);

    sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v14 = a1[6];
      v13 = a1[7];
      v15 = v17;
      v14(v18);

      return v18[0];
    }
  }

  else
  {
  }

  return 0;
}

void sub_1003585D0(_OWORD *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = v5;
  v12 = [v10 userInfo];
  v28 = a1[1];
  v27[0] = a1[1];
  swift_bridgeObjectRetain_n();
  v13 = [v12 __swift_objectForKeyedSubscript:sub_1004A6DF4()];
  swift_unknownObjectRelease();

  if (v13)
  {
    sub_1002F9A9C(&v28);
    sub_1004A64E4();
    swift_unknownObjectRelease();
    sub_100025F40(v27, &qword_1005D4768, &unk_1004F5B20);
  }

  else
  {
    memset(v27, 0, 32);
    sub_100025F40(v27, &qword_1005D4768, &unk_1004F5B20);
    v14 = sub_10000C9C0(a2, a3);
    v15 = objc_allocWithZone(v14);
    v16 = &v15[qword_1005DAB70];
    *v16 = *a1;
    v17 = a1[1];
    v18 = a1[2];
    v19 = a1[4];
    *(v16 + 3) = a1[3];
    *(v16 + 4) = v19;
    *(v16 + 1) = v17;
    *(v16 + 2) = v18;
    sub_10000E268(a1, v27, a4, a5);
    v26.receiver = v15;
    v26.super_class = v14;
    v20 = objc_msgSendSuper2(&v26, "init");
    v21 = [v10 userInfo];
    v27[0] = v28;
    v22 = v20;
    [v21 __swift_setObject:v22 forKeyedSubscript:sub_1004A6DF4()];

    swift_unknownObjectRelease();
    v23 = [objc_opt_self() defaultCenter];
    sub_10019A8E4(0, &qword_1005DA508, NSManagedObjectContext_ptr);
    v24 = v22;
    v25 = sub_1004A6214();
    [v23 addObserver:v24 selector:"managedObjectContextWillSave:" name:v25 object:v10];
  }
}

uint64_t sub_10035885C(uint64_t (*a1)(__int128 *), uint64_t a2)
{
  v4 = a2;
  v6 = *v2;
  result = sub_100351FB8(a1, a2, *v2);
  v68 = v3;
  if (!v3)
  {
    if (v8)
    {
      return *(v6 + 16);
    }

    v9 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v11 = (v6 + 16);
      v10 = *(v6 + 16);
      if (v9 == v10)
      {
        return result;
      }

      v44 = v2;
      v45 = a1;
      v12 = (result << 6) + 96;
      while (v9 < v10)
      {
        v46 = result;
        v13 = v6;
        v14 = (v6 + v12);
        v15 = *v14;
        v16 = v14[1];
        v17 = v14[3];
        v66 = v14[2];
        v67 = v17;
        v65[0] = v15;
        v65[1] = v16;
        v61 = v15;
        v62 = v16;
        v63 = v66;
        v64 = v17;
        sub_10000E268(v65, &v57, &qword_1005D8C98, &qword_1004F5F18);
        v18 = v4;
        v19 = v68;
        v20 = v45(&v61);
        v68 = v19;
        if (v19)
        {
          v57 = v61;
          v58 = v62;
          v59 = v63;
          v60 = v64;
          return sub_100025F40(&v57, &qword_1005D8C98, &qword_1004F5F18);
        }

        v21 = v20;
        v57 = v61;
        v58 = v62;
        v59 = v63;
        v60 = v64;
        sub_100025F40(&v57, &qword_1005D8C98, &qword_1004F5F18);
        if (v21)
        {
          v4 = v18;
          v6 = v13;
          result = v46;
        }

        else
        {
          result = v46;
          if (v9 == v46)
          {
            v4 = v18;
            v6 = v13;
          }

          else
          {
            if ((v46 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v22 = *v11;
            if (v46 >= *v11)
            {
              goto LABEL_27;
            }

            v23 = &v13[8 * v46 + 4];
            v24 = *v23;
            v25 = v23[1];
            v26 = v23[3];
            v51 = v23[2];
            v52 = v26;
            v49 = v24;
            v50 = v25;
            if (v9 >= v22)
            {
              goto LABEL_28;
            }

            v27 = *v14;
            v28 = v14[1];
            v29 = v14[3];
            v55 = v14[2];
            v56 = v29;
            v53 = v27;
            v54 = v28;
            sub_10000E268(&v49, v48, &qword_1005D8C98, &qword_1004F5F18);
            sub_10000E268(&v53, v48, &qword_1005D8C98, &qword_1004F5F18);
            result = swift_isUniquelyReferenced_nonNull_native();
            v6 = v13;
            if ((result & 1) == 0)
            {
              result = sub_1003364CC(v13);
              v6 = result;
            }

            v4 = v18;
            if (v46 >= *(v6 + 16))
            {
              goto LABEL_29;
            }

            v30 = (v6 + (v46 << 6));
            v31 = v30[2];
            v32 = v30[3];
            v33 = v30[5];
            v47[2] = v30[4];
            v47[3] = v33;
            v47[0] = v31;
            v47[1] = v32;
            v34 = v53;
            v35 = v54;
            v36 = v56;
            v30[4] = v55;
            v30[5] = v36;
            v30[2] = v34;
            v30[3] = v35;
            result = sub_100025F40(v47, &qword_1005D8C98, &qword_1004F5F18);
            if (v9 >= *(v6 + 16))
            {
              goto LABEL_30;
            }

            v37 = (v6 + v12);
            v38 = *(v6 + v12);
            v39 = *(v6 + v12 + 16);
            v40 = *(v6 + v12 + 48);
            v48[2] = *(v6 + v12 + 32);
            v48[3] = v40;
            v48[0] = v38;
            v48[1] = v39;
            v41 = v49;
            v42 = v50;
            v43 = v52;
            v37[2] = v51;
            v37[3] = v43;
            *v37 = v41;
            v37[1] = v42;
            sub_100025F40(v48, &qword_1005D8C98, &qword_1004F5F18);
            *v44 = v6;
            result = v46;
          }

          ++result;
        }

        ++v9;
        v11 = (v6 + 16);
        v10 = *(v6 + 16);
        v12 += 64;
        if (v9 == v10)
        {
          return result;
        }
      }

      __break(1u);
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
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100358B50(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for MessageBeingDownloaded(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  v17 = *v2;
  result = sub_1003520F0(a1, a2, *v2);
  if (!v3)
  {
    v45 = 0;
    if (v19)
    {
      return *(v17 + 16);
    }

    v40 = v16;
    v41 = a1;
    v37 = v13;
    v38 = v10;
    v36 = v2;
    v44 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = (v17 + 16);
      v21 = *(v17 + 16);
      if (v20 == v21)
      {
        return v44;
      }

      v39 = v7;
      while (v20 < v21)
      {
        v23 = v17;
        v42 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v24 = v17 + v42;
        v25 = *(v7 + 72);
        v43 = v25 * v20;
        v26 = v40;
        sub_10035A508(v24 + v25 * v20, v40, type metadata accessor for MessageBeingDownloaded);
        v27 = a2;
        v28 = v45;
        v29 = v41(v26);
        result = sub_10035A8B4(v26, type metadata accessor for MessageBeingDownloaded);
        v45 = v28;
        if (v28)
        {
          return result;
        }

        if (v29)
        {
          a2 = v27;
          v7 = v39;
          v17 = v23;
        }

        else
        {
          v30 = v44;
          if (v20 == v44)
          {
            a2 = v27;
            v7 = v39;
            v17 = v23;
          }

          else
          {
            if ((v44 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v31 = *v22;
            if (v44 >= *v22)
            {
              goto LABEL_27;
            }

            v32 = v25 * v44;
            result = sub_10035A508(v24 + v25 * v44, v37, type metadata accessor for MessageBeingDownloaded);
            if (v20 >= v31)
            {
              goto LABEL_28;
            }

            v33 = v43;
            sub_10035A508(v24 + v43, v38, type metadata accessor for MessageBeingDownloaded);
            v17 = v23;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_1003364E0(v23);
            }

            a2 = v27;
            v34 = v17 + v42;
            result = sub_100331A08(v38, v17 + v42 + v32);
            if (v20 >= *(v17 + 16))
            {
              goto LABEL_29;
            }

            result = sub_100331A08(v37, v34 + v33);
            *v36 = v17;
            v7 = v39;
            v30 = v44;
          }

          v44 = v30 + 1;
        }

        ++v20;
        v22 = (v17 + 16);
        v21 = *(v17 + 16);
        if (v20 == v21)
        {
          return v44;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_100358E80(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1004A6564() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_1004A6E94();
      sub_1004A6EB4(v10);
      result = sub_1004A6F14();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        result = v15 + 72 * v3;
        v16 = (v15 + 72 * v6);
        if (v3 != v6 || result >= v16 + 72)
        {
          result = memmove(result, v16, 0x48uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100359018(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1004A6564() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_1004A6E94();
      v12 = v11;
      sub_1004A6304();
      v13 = sub_1004A6F14();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = v18 + 24 * v3;
        v20 = (v18 + 24 * v6);
        if (v3 != v6 || v19 >= v20 + 24)
        {
          v9 = *v20;
          *(v19 + 16) = *(v20 + 2);
          *v19 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_1003591C8(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10035E1B0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_100361088();
      result = v19;
      goto LABEL_8;
    }

    sub_10035F1D4(v16, a4 & 1);
    v20 = *v5;
    result = sub_10035E1B0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_1004A6E24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1;
  }

  else
  {
    sub_100376DD0(result, a2, a3, a1, v22);
  }

  return result;
}

void sub_1003592F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_10035E1DC(a4);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_16;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 >= v17 && (a5 & 1) == 0)
    {
      v20 = v12;
      sub_100361B98();
      v12 = v20;
      goto LABEL_8;
    }

    sub_100360554(v17, a5 & 1);
    v21 = *v6;
    v12 = sub_10035E1DC(a4);
    if ((v18 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_1004A6E24();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v18)
  {
    v24 = v23[7] + 24 * v12;
    v28 = *v24;
    v25 = *(v24 + 16);
    *v24 = a1;
    *(v24 + 8) = a2;
    *(v24 + 16) = a3;
  }

  else
  {
    sub_100376EC4(v12, a4, a1, a2, a3, v23);

    v26 = a4;
  }
}

_OWORD *sub_100359464(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100064090(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100361D20();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100360810(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_100064090(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1004A6E24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_1000197E0(v23);

    return sub_10019A8D4(a1, v23);
  }

  else
  {
    sub_100376F14(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1003595B4(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_100359714(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1003598A8(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_100359714(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v22 = result;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v4 << 6);
    v14 = *(*(v3 + 48) + 16 * v13);
    v15 = *(v3 + 56) + 72 * v13;
    v16 = *v15;
    v17 = *(v15 + 14);

    if ((*RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor() & ~v17) != 0)
    {
      v18 = *RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();

      v19 = (v18 & ~v17) == 0;
      v3 = a3;
      if (!v19)
      {
        *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v23++, 1))
        {
          __break(1u);
          return sub_1000B19E0(v22, a2, v23, v3);
        }
      }
    }

    else
    {
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
      return sub_1000B19E0(v22, a2, v23, v3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_1003598A8(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_100359714(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_100359920(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000C9C0(&qword_1005D8CA8, &unk_1004F5F28);
  result = sub_1004A6A74();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v37 = *v21;
    v36 = *(v21 + 8);
    v22 = *(v9 + 40);
    sub_1004A6E94();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    result = sub_1004A6F14();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = 16 * v26;
    v32 = (*(v9 + 48) + v31);
    *v32 = v19;
    v32[1] = v20;
    v33 = *(v9 + 56) + v31;
    *v33 = v37;
    *(v33 + 8) = v36;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void (*sub_100359B7C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1004A6794();
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
    return sub_100359BFC;
  }

  __break(1u);
  return result;
}

unint64_t sub_100359C04()
{
  result = qword_1005DA4E0;
  if (!qword_1005DA4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DA4E0);
  }

  return result;
}

unint64_t sub_100359C58()
{
  result = qword_1005DA4E8;
  if (!qword_1005DA4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DA4E8);
  }

  return result;
}

void (*sub_100359CAC(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1004A6794();
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
    return sub_10035A924;
  }

  __break(1u);
  return result;
}

uint64_t sub_100359D2C(uint64_t a1, int64_t a2, int a3)
{
  v4 = v3;
  v8 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  if ((result & 1) == 0)
  {
    result = sub_100361B98();
    *v4 = v10;
  }

  if (a2 < 0 || 1 << *(v10 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v10 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v10 + 36) == a3)
  {
    v11 = *(*(v10 + 48) + 8 * a2);
    v12 = *(v10 + 56) + 24 * a2;
    v13 = *v12;
    v14 = *(v12 + 16);
    *a1 = v13;
    *(a1 + 16) = v14;
    sub_100359018(a2, v10);
    *v4 = v10;
    return v11;
  }

LABEL_10:
  __break(1u);
  return result;
}

void *sub_100359E0C(void *a1)
{
  v2 = sub_1004A6294();
  v3 = sub_1004A62A4();
  v4 = sub_1004A6294();
  result = sub_1004A62A4();
  if (v2 < v4 || result < v2)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = sub_1004A6294();
  result = sub_1004A62A4();
  if (v3 < v6 || result < v3)
  {
    goto LABEL_12;
  }

  v7 = __OFSUB__(v3, v2);
  v8 = v3 - v2;
  if (!v7)
  {
    if (v8)
    {
      v9 = sub_10015BEAC(v8, 0);
      v10 = a1;
      v11 = sub_100359EE8(v12, v9 + 32, v8);

      if (v11 == v8)
      {
        return v9;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100359EE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A6294();
  v8 = result;
  if (!a2)
  {
LABEL_12:
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_15:
    *a1 = v3;
    a1[1] = v8;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    while (1)
    {
      v10 = v8 + v9;
      if (v8 + v9 == sub_1004A62A4())
      {
        v8 += v9;
        a3 = v9;
        goto LABEL_15;
      }

      v11 = sub_1004A62B4();
      v12 = sub_1004A6294();
      result = sub_1004A62A4();
      if (v10 < v12 || v10 >= result)
      {
        break;
      }

      *(a2 + v9) = v11;
      if (a3 - 1 == v9)
      {
        v8 += v9 + 1;
        goto LABEL_15;
      }

      if (__OFADD__(++v9, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100359FD0(uint64_t a1)
{
  v2 = **(v1 + 16);
  v4[2] = a1;
  return sub_100351E90(sub_10035A48C, v4, v2) & 1;
}

unint64_t sub_10035A018(unint64_t a1, unint64_t a2)
{
  v12 = a2;
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = sub_1004A6A34();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = sub_1004A6794();
      v6 = v7;
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v13 = *(v6 + 16);
    __chkstk_darwin(v7);
    v11[2] = &v13;
    v8 = sub_100351E90(sub_10035A928, v11, v12);

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_10035A16C(unint64_t *a1, unint64_t a2)
{
  v6 = *a1;
  v7 = sub_10035A018(*a1, a2);
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_1004A6A34();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v24 = a1;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_1004A6A34())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v13 = sub_1004A6794();
      v12 = v13;
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v25 = *(v12 + 16);
    __chkstk_darwin(v13);
    v23[2] = &v25;
    v14 = sub_100351E90(sub_10035A418, v23, a2);

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v15 = sub_1004A6794();
    v16 = sub_1004A6794();
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v17)
    {
      goto LABEL_46;
    }

    if (v10 >= v17)
    {
      goto LABEL_47;
    }

    v15 = *(v6 + 32 + 8 * v2);
    v16 = *(v6 + 32 + 8 * v10);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_100337194(v6);
    v18 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v18) = 0;
  }

  v19 = v6 & 0xFFFFFFFFFFFFFF8;
  v20 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v16;

  if ((v6 & 0x8000000000000000) == 0 && !v18)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_100337194(v6);
  v19 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v19 + 16))
    {
      goto LABEL_44;
    }

    v21 = v19 + 8 * v10;
    v22 = *(v21 + 32);
    *(v21 + 32) = v15;

    *v24 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_1004A6A34();
}

uint64_t sub_10035A434(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  _s7MailboxCMa();
  return sub_1004A62F4() & 1;
}

uint64_t sub_10035A508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10035A570(uint64_t a1, char a2)
{
  if (!a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_10035A580(uint64_t a1, char a2)
{
  if (!a2)
  {
  }

  return result;
}

uint64_t sub_10035A590(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  sub_100016D2C();
  sub_1004A7114();
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (a2 + 32);
    v13 = *(a2 + 16);
    do
    {
      v14 = *v12;
      v12 += 6;
      v32 = v14;
      MessageIdentifierSet.insert(_:)(v33, &v32, v4);
      --v13;
    }

    while (v13);
  }

  sub_100020950(v7, v10);
  sub_100333E88(v10);
  if (v2)
  {
    return sub_100025F40(v10, &unk_1005D91B0, &unk_1004CF400);
  }

  v17 = v15;
  v30 = 0;
  if (v11)
  {
    v18 = (a2 + 48);
    v31 = v10;
    do
    {
      v19 = *(v18 - 12);
      if (v19 != 2 && *(v17 + 16))
      {
        v20 = *(v18 - 4);
        v21 = *v18;
        v22 = sub_100067004(*(v18 - 4));
        if (v23)
        {
          v24 = *(*(v17 + 56) + 8 * v22);
          v25 = Flags.init(_:)(v19 & 0xFFFFFFFF01010101);

          v26 = v24;
          v27 = sub_1004A5734();
          [v26 willChangeValueForKey:v27];

          v28 = [objc_allocWithZone(NSNumber) initWithLongLong:sub_10031FD9C(v25 & 0xFFFF010101010101)];
          [v26 setPrimitiveFlags:v28];

          v10 = v31;
          v29 = sub_1004A5734();
          [v26 didChangeValueForKey:v29];
        }
      }

      v18 += 3;
      --v11;
    }

    while (v11);
  }

  return sub_100025F40(v10, &unk_1005D91B0, &unk_1004CF400);
}

uint64_t sub_10035A84C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10035A8B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_10035A944(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
  [v2 setPersistentStoreCoordinator:a1];
  sub_1004A6204();
  v3 = aBlock[0];
  if (aBlock[0] == 1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    aBlock[4] = sub_10035BA34;
    aBlock[5] = v4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005B5380;
    v5 = _Block_copy(aBlock);
    v6 = v2;

    [v6 performBlock:v5];
    _Block_release(v5);
    return v6;
  }

  else
  {
    if (qword_1005D8778 != -1)
    {
      swift_once();
    }

    v8 = sub_1004A4A74();
    sub_1001C203C(v8, qword_1005DE2D0);
    v9 = sub_1004A4A54();
    v10 = sub_1004A6014();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134218240;
      *(v11 + 4) = v3;
      *(v11 + 12) = 2048;
      *(v11 + 14) = 1;
      _os_log_impl(&_mh_execute_header, v9, v10, "Store version is %ld, current is %ld.", v11, 0x16u);
    }

    return 0;
  }
}

uint64_t sub_10035AB78@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1005D8798 != -1)
  {
    swift_once();
  }

  v3[2] = xmmword_1005DA560;
  v3[3] = *&qword_1005DA570;
  v3[4] = xmmword_1005DA580;
  v3[0] = xmmword_1005DA540;
  v3[1] = *&qword_1005DA550;
  result = sub_100352450(v3);
  *a1 = result;
  return result;
}

id sub_10035AC10(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = sub_1004A6054();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004A4374();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v13);
  sub_10035B2D0();
  sub_1004A6044();
  sub_1004A6284();
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v15, v10);
  sub_10035AF68();
  v16 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
  [v16 setPersistentStoreCoordinator:a3];
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  aBlock[4] = sub_10035BAD8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B53D0;
  v18 = _Block_copy(aBlock);
  v19 = v16;

  [v19 performBlock:v18];
  _Block_release(v18);
  return v19;
}

uint64_t sub_10035AF68()
{
  v21 = sub_1004A4374();
  v17 = *(v21 - 8);
  v0 = *(v17 + 64);
  __chkstk_darwin(v21);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004A6054();
  v16 = *(v3 - 8);
  v4 = *(v16 + 64);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A6044();
  sub_10035B2D0();
  sub_10000C9C0(&qword_1005D51A8, &qword_1004E6C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D01D0;
  v19 = sub_1004A5764();
  v20 = v8;
  sub_1004A6674();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  v19 = sub_1004A5764();
  v20 = v9;
  sub_1004A6674();
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  sub_100213AA4(inited);
  swift_setDeallocating();
  sub_10000C9C0(&qword_1005D51B8, &qword_1004F7780);
  swift_arrayDestroy();
  v10 = v18;
  v11 = sub_1004A6274();
  v12 = (v17 + 8);
  v13 = (v16 + 8);
  if (v10)
  {
  }

  else
  {
    v14 = v11;
  }

  (*v12)(v2, v21);
  return (*v13)(v6, v3);
}

void sub_10035B24C()
{
  if (qword_1005D8798 != -1)
  {
    swift_once();
  }

  v0[2] = xmmword_1005DA560;
  v0[3] = *&qword_1005DA570;
  v0[4] = xmmword_1005DA580;
  v0[0] = xmmword_1005DA540;
  v0[1] = *&qword_1005DA550;
  sub_100352478(1, v0);
}

uint64_t sub_10035B2D0()
{
  v0 = sub_1004A4294();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultManager];
  sub_1004A42F4(v6);
  v8 = v7;
  v19 = 0;
  v9 = [v5 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v19];

  v10 = v19;
  if (v9)
  {
    v19 = 0x6573616261746164;
    v20 = 0xE800000000000000;
    (*(v1 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
    sub_1001C2190();
    v11 = v10;
    sub_1004A4364();
    return (*(v1 + 8))(v4, v0);
  }

  else
  {
    v13 = v19;
    sub_1004A4274();

    swift_willThrow();
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_1004A6724(23);

    v19 = 0xD000000000000011;
    v20 = 0x80000001004AFE80;
    v21._countAndFlagsBits = sub_1004A4354();
    sub_1004A5994(v21);

    v22._countAndFlagsBits = 8250;
    v22._object = 0xE200000000000000;
    sub_1004A5994(v22);
    v14 = sub_1004A4264();
    v15 = [v14 description];
    v16 = sub_1004A5764();
    v18 = v17;

    v23._countAndFlagsBits = v16;
    v23._object = v18;
    sub_1004A5994(v23);

    result = sub_1004A69A4();
    __break(1u);
  }

  return result;
}

void sub_10035B5B4()
{
  strcpy(&xmmword_1005DA540, "StoreVersion");
  BYTE13(xmmword_1005DA540) = 0;
  HIWORD(xmmword_1005DA540) = -5120;
  qword_1005DA550 = 0xD000000000000014;
  unk_1005DA558 = 0x80000001004AFDA0;
  *&xmmword_1005DA560 = sub_10035B638;
  *(&xmmword_1005DA560 + 1) = 0;
  qword_1005DA570 = sub_10035B680;
  unk_1005DA578 = 0;
  *&xmmword_1005DA580 = sub_10035B6B4;
  *(&xmmword_1005DA580 + 1) = 0;
}

id sub_10035B638(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithInteger:v1];
}

id sub_10035B680@<X0>(id result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = [result integerValue];
  }

  *a2 = result;
  return result;
}

void sub_10035B6B4(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1005D8778 != -1)
  {
    swift_once();
  }

  v2 = sub_1004A4A74();
  sub_1001C203C(v2, qword_1005DE2D0);
  oslog = sub_1004A4A54();
  v3 = sub_1004A6034();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Saving current store version %ld.", v4, 0xCu);
  }
}

id sub_10035B7B4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v5 = sub_10033D148();
  v6 = [objc_allocWithZone(NSPersistentStoreCoordinator) initWithManagedObjectModel:v5];

  v7 = sub_1004A5734();
  [v6 setName:v7];

  sub_10035AF68();
  v8 = sub_10035A944(v6);
  if (v8)
  {
    v9 = v8;

    return v9;
  }

  else
  {
    v11 = sub_10035AC10(a2, a3, v6);

    return v11;
  }
}

uint64_t sub_10035B9FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10035BA50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10035BA7C()
{
  result = qword_1005DA590;
  if (!qword_1005DA590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DA590);
  }

  return result;
}

uint64_t sub_10035BAE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100026044();
  result = sub_1004A5D64();
  v4 = 0;
  v15 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(a1 + 48) + ((v9 << 10) | (16 * v10));
    v12 = *v11;
    v13 = *(v11 + 8);

    sub_100088220(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10035BC04(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_10002587C(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1001E1794(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_1001E184C(v3, v4);
    }

    else
    {
      v6 = sub_1001E18C8(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1000197E0(v8);
  return v6;
}

uint64_t sub_10035BCC0(uint64_t a1)
{
  v4 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v52 - v6;
  result = sub_10035C158();
  if (!v2)
  {
    v9 = result;
    v55 = v7;
    v57 = v1;
    v53 = 0;

    v62 = sub_10035BAE0(v10);
    v11 = _swiftEmptyArrayStorage;
    v59 = _swiftEmptyArrayStorage;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 64);
    v15 = (v12 + 63) >> 6;

    v16 = 0;
    if (v14)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v17 >= v15)
      {
        break;
      }

      v14 = *(a1 + 64 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        do
        {
LABEL_9:
          v18 = *(a1 + 56) + 72 * (__clz(__rbit64(v14)) | (v16 << 6));
          v60[0] = *v18;
          v20 = *(v18 + 32);
          v19 = *(v18 + 48);
          v21 = *(v18 + 16);
          v61 = *(v18 + 64);
          v60[2] = v20;
          v60[3] = v19;
          v60[1] = v21;
          v22 = *&v60[0];
          v23 = DWORD2(v60[0]);
          sub_100063BD4(v60, v58);
          sub_100063BD4(v60, v58);
          sub_100140EC0(v22, v23);

          sub_100063C30(v60);
          if (*(v9 + 16) && (v24 = sub_100063B5C(v22, v23), (v25 & 1) != 0))
          {
            v26 = *(*(v9 + 56) + 8 * v24);
          }

          else
          {
            v26 = sub_10035D2BC(v60);
          }

          v27 = v26;
          sub_100063C30(v60);
          v28 = v27;
          sub_1004A5BF4();
          if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v29 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1004A5C44();
          }

          v14 &= v14 - 1;
          sub_1004A5C84();

          v11 = v59;
        }

        while (v14);
      }
    }

    v52 = v11;

    v30 = v62;
    v31 = v62 + 56;
    v32 = 1 << *(v62 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v62 + 56);
    v35 = (v32 + 63) >> 6;

    v36 = 0;
    v54 = v30;
    while (v34)
    {
      v37 = v34;
LABEL_26:
      v34 = (v37 - 1) & v37;
      if (*(v9 + 16))
      {
        v39 = *(v30 + 48) + ((v36 << 10) | (16 * __clz(__rbit64(v37))));
        v40 = sub_100063B5C(*v39, *(v39 + 8));
        if (v41)
        {
          v42 = *(*(v9 + 56) + 8 * v40);
          v56 = *(v57 + 48);
          v43 = *(v57 + 64);
          v44 = v42;
          sub_10030AA54(0, 1);
          v45 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
          v46 = v9;
          v47 = v55;
          (*(*(v45 - 8) + 56))(v55, 1, 1, v45);
          v48 = v56;
          sub_10030B530(v44, v47, v43);
          v49 = v47;
          v9 = v46;
          sub_100025F40(v49, &qword_1005CD518, &qword_1004CF2F0);
          v30 = v54;
          [v48 deleteObject:v44];
          sub_100309448();
        }
      }
    }

    while (1)
    {
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v38 >= v35)
      {

        v50 = v53;
        sub_10035CD10();
        if (v50)
        {
        }

        else
        {

          v58[0] = sub_100367B54(v51);
          sub_1003652BC(v58);

          return v58[0];
        }
      }

      v37 = *(v31 + 8 * v38);
      ++v36;
      if (v37)
      {
        v36 = v38;
        goto LABEL_26;
      }
    }

LABEL_34:
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_10035C158()
{
  v2 = v1;
  v3 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v110 = v98 - v5;
  v109 = _s6LoggerVMa_0(0);
  v6 = *(*(v109 - 8) + 64);
  __chkstk_darwin(v109);
  v106 = v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v101 = v98 - v9;
  v10 = objc_allocWithZone(NSFetchRequest);
  v11 = sub_1004A5734();
  v12 = [v10 initWithEntityName:v11];

  v14 = *(v0 + 16);
  v13 = *(v0 + 24);
  v111 = v0;
  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1004CEAA0;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 32) = v14;
  *(v15 + 40) = v13;

  v16 = sub_1004A5734();
  isa = sub_1004A5C04().super.isa;

  v18 = [objc_opt_self() predicateWithFormat:v16 argumentArray:isa];

  [v12 appendPredicate:v18];
  [v12 setReturnsObjectsAsFaults:0];
  v19 = sub_100351620(_swiftEmptyArrayStorage);
  v114 = 0;
  v20 = [v12 execute:&v114];
  v21 = v114;
  if (v20)
  {
    v22 = v20;
    _s7MailboxCMa();
    isUniquelyReferenced_nonNull_native = sub_1004A5C14();
    v24 = v21;

    if (isUniquelyReferenced_nonNull_native >> 62)
    {
      goto LABEL_64;
    }

    v26 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v98[0] = v12;
    v98[1] = v2;
    if (v26)
    {
      v27 = 0;
      v108 = v111 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
      v112 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v103 = isUniquelyReferenced_nonNull_native + 32;
      v104 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      *&v25 = 68158464;
      v100 = v25;
      *&v25 = 68158979;
      v99 = v25;
      v12 = v19;
      v105 = v26;
      v107 = isUniquelyReferenced_nonNull_native;
      while (1)
      {
        if (v112)
        {
          v31 = sub_1004A6794();
        }

        else
        {
          if (v27 >= *(v104 + 16))
          {
            goto LABEL_62;
          }

          v31 = *(v103 + 8 * v27);
        }

        v2 = v31;
        v32 = __OFADD__(v27, 1);
        v33 = v27 + 1;
        if (v32)
        {
          goto LABEL_57;
        }

        v113 = v33;
        v34 = sub_1004A5734();
        [v2 willAccessValueForKey:{v34, v98[0]}];

        v35 = [v2 primitiveName];
        if (v35)
        {
          v36 = v35;
          v37 = sub_1004A6294();
          v19 = sub_1004A62A4();
          v38 = sub_1004A6294();
          v39 = sub_1004A62A4();
          if (v37 < v38 || v39 < v37)
          {
            goto LABEL_58;
          }

          v40 = sub_1004A6294();
          v41 = sub_1004A62A4();
          if (v19 < v40 || v41 < v19)
          {
            goto LABEL_59;
          }

          v42 = v2;
          v2 = v19 - v37;
          if (__OFSUB__(v19, v37))
          {
            goto LABEL_60;
          }

          if (v2)
          {
            if (v2 >= 1)
            {
              v43 = v12;
              sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
              v44 = swift_allocObject();
              v45 = j__malloc_size(v44);
              v44[2] = v2;
              v44[3] = 2 * v45 - 64;
              isUniquelyReferenced_nonNull_native = sub_1004A6294();
              if (isUniquelyReferenced_nonNull_native != sub_1004A62A4())
              {
                v12 = v44 + 4;
                v2 = ~v37 + v19;
                while (1)
                {
                  v19 = sub_1004A62B4();
                  v46 = sub_1004A6294();
                  v47 = sub_1004A62A4();
                  if (isUniquelyReferenced_nonNull_native < v46 || isUniquelyReferenced_nonNull_native >= v47)
                  {
                    break;
                  }

                  *v12 = v19;
                  if (!v2)
                  {
                    v12 = v43;
                    isUniquelyReferenced_nonNull_native = v107;
                    v26 = v105;
                    goto LABEL_31;
                  }

                  v12 = (v12 + 1);
                  ++isUniquelyReferenced_nonNull_native;
                  --v2;
                  if (isUniquelyReferenced_nonNull_native == sub_1004A62A4())
                  {
                    goto LABEL_65;
                  }
                }

                __break(1u);
LABEL_57:
                __break(1u);
LABEL_58:
                __break(1u);
LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
LABEL_61:
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                v26 = sub_1004A6A34();
                goto LABEL_4;
              }

LABEL_65:

              __break(1u);
            }

            sub_1004A6294();
            __break(1u);
          }

          v44 = _swiftEmptyArrayStorage;
LABEL_31:

          v50 = MailboxName.init(_:)(v44);
          rawValue = v50.bytes._rawValue;
          value = v50._hashValue._value;

          v2 = v42;
        }

        else
        {
          rawValue = 0;
          value = 0;
        }

        v51 = sub_1004A5734();
        [v2 didAccessValueForKey:v51];

        if (rawValue)
        {
          if (v12[2] && (sub_100063B5C(rawValue, value), (v52 & 1) != 0))
          {
            v102 = v12;
            v53 = v108;
            v54 = v101;
            sub_100367F90(v108, v101);
            v55 = v53 + *(v109 + 20);
            v56 = *v55;
            v57 = *(v55 + 4);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();

            v58 = sub_1004A4A54();
            v59 = sub_1004A4A74();
            (*(*(v59 - 8) + 8))(v54, v59);
            v60 = sub_1004A6014();

            if (os_log_type_enabled(v58, v60))
            {
              v61 = swift_slowAlloc();
              v62 = swift_slowAlloc();
              v63 = v57;
              v64 = v62;
              v116 = v62;
              *v61 = v99;
              *(v61 + 4) = 2;
              *(v61 + 8) = 256;
              *(v61 + 10) = v56;
              *(v61 + 11) = 1040;
              *(v61 + 13) = 8;
              *(v61 + 17) = 1024;
              *(v61 + 19) = v63;
              *(v61 + 23) = 2160;
              *(v61 + 25) = 0x786F626C69616DLL;
              *(v61 + 33) = 2085;
              v114 = rawValue;
              v115 = value;
              v65 = sub_1004A5824();
              v67 = sub_10015BA6C(v65, v66, &v116);

              *(v61 + 35) = v67;
              _os_log_impl(&_mh_execute_header, v58, v60, "[%.*hhx-%.*X] Found duplicate local mailbox with name '%{sensitive,mask.mailbox}s'.", v61, 0x2Bu);
              sub_1000197E0(v64);

              isUniquelyReferenced_nonNull_native = v107;
            }

            else
            {
            }

            v27 = v113;
            v19 = *(v111 + 48);
            v91 = *(v111 + 64);
            sub_10030AA54(0, 1);
            v92 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
            v93 = v2;
            v2 = v110;
            (*(*(v92 - 8) + 56))(v110, 1, 1, v92);
            sub_10030B530(v93, v2, v91);
            sub_100025F40(v2, &qword_1005CD518, &qword_1004CF2F0);
            [v19 deleteObject:v93];
            sub_100309448();

            v12 = v102;
          }

          else
          {
            v68 = isUniquelyReferenced_nonNull_native;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v114 = v12;
            v69 = sub_100063B5C(rawValue, value);
            v71 = v12[2];
            v72 = (v70 & 1) == 0;
            v32 = __OFADD__(v71, v72);
            v73 = v71 + v72;
            if (v32)
            {
              goto LABEL_61;
            }

            v19 = v70;
            if (v12[3] >= v73)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v94 = v2;
                v95 = v69;
                sub_100361A24();
                v69 = v95;
                v2 = v94;
              }
            }

            else
            {
              sub_1003602AC(v73, isUniquelyReferenced_nonNull_native);
              v69 = sub_100063B5C(rawValue, value);
              if ((v19 & 1) != (v74 & 1))
              {
                result = sub_1004A6E24();
                __break(1u);
                return result;
              }
            }

            isUniquelyReferenced_nonNull_native = v68;
            v12 = v114;
            if (v19)
            {
              v86 = v114[7];
              v87 = *(v86 + 8 * v69);
              *(v86 + 8 * v69) = v2;
            }

            else
            {
              v114[(v69 >> 6) + 8] |= 1 << v69;
              v88 = v12[6] + 16 * v69;
              *v88 = rawValue;
              *(v88 + 8) = value;
              *(v12[7] + 8 * v69) = v2;
              v89 = v12[2];
              v32 = __OFADD__(v89, 1);
              v90 = v89 + 1;
              if (v32)
              {
                goto LABEL_63;
              }

              v12[2] = v90;
            }

            v27 = v113;
          }
        }

        else
        {
          v75 = isUniquelyReferenced_nonNull_native;
          v76 = v12;
          v77 = v108;
          v78 = v106;
          sub_100367F90(v108, v106);
          v79 = (v77 + *(v109 + 20));
          v80 = *v79;
          v81 = *(v79 + 1);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v82 = sub_1004A4A54();
          v83 = sub_1004A4A74();
          (*(*(v83 - 8) + 8))(v78, v83);
          v84 = sub_1004A6014();
          if (os_log_type_enabled(v82, v84))
          {
            v85 = swift_slowAlloc();
            *v85 = v100;
            *(v85 + 4) = 2;
            *(v85 + 8) = 256;
            *(v85 + 10) = v80;
            *(v85 + 11) = 1040;
            *(v85 + 13) = 8;
            *(v85 + 17) = 1024;
            *(v85 + 19) = v81;
            _os_log_impl(&_mh_execute_header, v82, v84, "[%.*hhx-%.*X] Found local mailbox without name.", v85, 0x17u);
          }

          v19 = *(v111 + 48);
          v28 = *(v111 + 64);
          sub_10030AA54(0, 1);
          v29 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
          v30 = v2;
          v2 = v110;
          (*(*(v29 - 8) + 56))(v110, 1, 1, v29);
          sub_10030B530(v30, v2, v28);
          sub_100025F40(v2, &qword_1005CD518, &qword_1004CF2F0);
          [v19 deleteObject:v30];
          sub_100309448();

          v12 = v76;
          v27 = v113;
          isUniquelyReferenced_nonNull_native = v75;
        }

        if (v27 == v26)
        {
          goto LABEL_54;
        }
      }
    }

    v12 = v19;
LABEL_54:
  }

  else
  {
    v96 = v114;
    sub_1004A4274();

    swift_willThrow();
  }

  return v12;
}

void sub_10035CD10()
{
  v48 = _s6LoggerVMa_0(0);
  v2 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v45 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v43 = &v42 - v6;
  v47 = v0;
  v44 = *(v0 + 48);
  v7 = [v44 registeredObjects];
  sub_10019A8E4(0, &qword_1005D8A10, NSManagedObject_ptr);
  sub_100309DBC();
  v8 = sub_1004A5D44();

  v46 = v1;
  if ((v8 & 0xC000000000000001) != 0)
  {
    sub_1004A6594();
    sub_1004A5DB4();
    v8 = v51[1];
    v9 = v51[2];
    v10 = v51[3];
    v11 = v51[4];
    v12 = v51[5];
  }

  else
  {
    v11 = 0;
    v13 = -1 << *(v8 + 32);
    v9 = (v8 + 56);
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = (v15 & *(v8 + 56));
  }

  v49 = v10;
  v16 = (v10 + 64) >> 6;
  while (1)
  {
    if (v8 < 0)
    {
      v22 = sub_1004A6604();
      if (!v22)
      {
        goto LABEL_24;
      }

      v50 = v22;
      swift_dynamicCast();
      v21 = v51[0];
      v19 = v11;
      v20 = v12;
      if (!v51[0])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v17 = v11;
      v18 = v12;
      v19 = v11;
      if (!v12)
      {
        while (1)
        {
          v19 = (v17 + 1);
          if (__OFADD__(v17, 1))
          {
            __break(1u);
          }

          if (v19 >= v16)
          {
            break;
          }

          v18 = v9[v19];
          ++v17;
          if (v18)
          {
            goto LABEL_14;
          }
        }

LABEL_24:
        sub_100020D08();
        v33 = v47 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
        v34 = v45;
        sub_100367F90(v47 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v45);
        v35 = (v33 + *(v48 + 20));
        v36 = *v35;
        v37 = *(v35 + 1);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v21 = sub_1004A4A54();
        v38 = sub_1004A4A74();
        (*(*(v38 - 8) + 8))(v34, v38);
        v39 = sub_1004A6034();
        if (os_log_type_enabled(v21, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 68158464;
          *(v40 + 4) = 2;
          *(v40 + 8) = 256;
          *(v40 + 10) = v36;
          *(v40 + 11) = 1040;
          *(v40 + 13) = 8;
          *(v40 + 17) = 1024;
          *(v40 + 19) = v37;
          _os_log_impl(&_mh_execute_header, v21, v39, "[%.*hhx-%.*X] No new mailboxes.", v40, 0x17u);
        }

LABEL_26:

        return;
      }

LABEL_14:
      v20 = (v18 - 1) & v18;
      v21 = *(*(v8 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
      if (!v21)
      {
        goto LABEL_24;
      }
    }

    _s7MailboxCMa();
    if ([v21 isKindOfClass:swift_getObjCClassFromMetadata()])
    {
      if ([v21 isInserted])
      {
        break;
      }
    }

    v11 = v19;
    v12 = v20;
  }

  v23 = v47 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
  v24 = v43;
  sub_100367F90(v47 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v43);
  v25 = (v23 + *(v48 + 20));
  v26 = *v25;
  v27 = *(v25 + 1);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v28 = sub_1004A4A54();
  v29 = sub_1004A4A74();
  (*(*(v29 - 8) + 8))(v24, v29);
  v30 = sub_1004A6034();
  if (os_log_type_enabled(v28, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 68158464;
    *(v31 + 4) = 2;
    *(v31 + 8) = 256;
    *(v31 + 10) = v26;
    *(v31 + 11) = 1040;
    *(v31 + 13) = 8;
    *(v31 + 17) = 1024;
    *(v31 + 19) = v27;
    _os_log_impl(&_mh_execute_header, v28, v30, "[%.*hhx-%.*X] New mailboxes were inserted. Saving context.", v31, 0x17u);
  }

  v51[0] = 0;
  if ([v44 save:v51])
  {
    v32 = v51[0];
    sub_100020D08();
    goto LABEL_26;
  }

  v41 = v51[0];
  sub_1004A4274();

  swift_willThrow();
  sub_100020D08();
}

id sub_10035D2BC(uint64_t a1)
{
  v3 = v1[6];
  v5 = v1[2];
  v4 = v1[3];
  v6 = *(a1 + 65);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 1;
  }

  else
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 36);
    v9 = *(a1 + 64);
  }

  v10 = *a1;
  v23[84] = *(a1 + 65);
  v23[80] = 1;
  v23[72] = v9 & 1;
  v23[68] = 1;
  LODWORD(v24) = v8;
  BYTE4(v24) = v6;
  *(&v24 + 1) = 0;
  v25 = 1;
  v26 = v7;
  v27 = v9 & 1;
  v28 = 0;
  v29 = 1;
  v11 = objc_allocWithZone(_s7MailboxCMa());

  sub_100063BD4(a1, v23);
  v12 = [v11 initWithContext:v3];
  v13 = sub_1004A5734();
  [v12 willChangeValueForKey:v13];

  v14 = sub_1004A5734();

  [v12 setPrimitiveAccount:v14];

  v15 = sub_1004A5734();
  [v12 didChangeValueForKey:v15];

  v16 = sub_1004A5734();
  [v12 willChangeValueForKey:v16];

  v17 = sub_1001E194C(v10);
  v19 = v18;
  sub_100063C30(a1);
  isa = sub_1004A4404().super.isa;
  sub_100014D40(v17, v19);
  [v12 setPrimitiveName:isa];

  v21 = sub_1004A5734();
  [v12 didChangeValueForKey:v21];

  sub_10033BB90(&v24);
  return v12;
}

void *sub_10035D4E4(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005DA480, &unk_1004F7700);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D8C98, &qword_1004F5F18);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10035D618(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005DA5F0, &unk_1004F7920);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D9938, &qword_1004F6B60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10035D760(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DA5E0, &qword_1004F7910);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_10035D8F4(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005DA5C8, &qword_1004F78E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D9928, &unk_1004F78F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10035DA28(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DA430, &qword_1004F78D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_10035DB38(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DA660, &qword_1004F79B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_10035DC3C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005DA648, &qword_1004F79A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005DA650, &qword_1004F79A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10035DD98(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C9C0(a5, a6);
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

void *sub_10035DF74(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005DA5D0, &unk_1004F7900);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10035E0BC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
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

unint64_t sub_10035E144(Swift::UInt a1)
{
  v3 = *(v1 + 40);
  sub_1004A6E94();
  sub_1004A6EB4(a1);
  v4 = sub_1004A6F14();

  return sub_100064384(a1, v4);
}

unint64_t sub_10035E1DC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1004A6E94();
  sub_1004A6304();
  v4 = sub_1004A6F14();

  return sub_10035E408(a1, v4);
}

unint64_t sub_10035E248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  sub_1004A6E94();
  Mailbox.hash(into:)(v10, a1);
  v8 = sub_1004A6F14();

  return sub_10035E4DC(a1, a2, a3, v8);
}

unint64_t sub_10035E2D4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v9 = *(v4 + 40);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1004A6EB4(a4 | (a4 << 32));
  v10 = sub_1004A6F14();

  return sub_10035E5D4(a1, a2, a3, a4, v10);
}

uint64_t sub_10035E374(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  v8 = *(v4 + 40);
  sub_1004A6E94();
  a3(v12, a1, a2);
  v9 = sub_1004A6F14();

  return a4(a1, a2, v9);
}

unint64_t sub_10035E408(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10019A8E4(0, &qword_1005D91C0, NSObject_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1004A62F4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10035E4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v10 = ~v5;
    do
    {
      v11 = (*(v4 + 48) + 24 * v6);
      v13 = *v11;
      v12 = v11[1];
      v14 = v11[2];

      LOBYTE(v12) = static Mailbox.__derived_struct_equals(_:_:)(v13, v12, v14, a1, a2, a3);

      if (v12)
      {
        break;
      }

      v6 = (v6 + 1) & v10;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_10035E5D4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v12 = ~v7;
    v13 = *(v5 + 48);
    v14 = a4 | (a4 << 32);
    v23 = (a3 + 32);
    do
    {
      v15 = v13 + 32 * v8;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      v18 = *v15 == a1 && *(v15 + 8) == a2;
      if (v18 || (sub_1004A6D34()) && (v17 | (v17 << 32)) == v14)
      {
        v19 = *(v16 + 16);
        if (v19 == *(a3 + 16))
        {
          if (!v19 || v16 == a3)
          {
            return v8;
          }

          v20 = (v16 + 32);
          for (i = v23; *v20 == *i; ++i)
          {
            ++v20;
            if (!--v19)
            {
              return v8;
            }
          }
        }
      }

      v8 = (v8 + 1) & v12;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

uint64_t sub_10035E71C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005DA420, &unk_1004F7690);
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = a2;
    v34 = v3;
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 72 * v21;
      v37 = *(v23 + 32);
      v38 = *(v23 + 48);
      v39 = *(v23 + 64);
      v35 = *v23;
      v36 = *(v23 + 16);
      v24 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v22);
      result = sub_1004A6F14();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 72 * v16;
      *(v17 + 32) = v37;
      *(v17 + 48) = v38;
      *(v17 + 64) = v39;
      *v17 = v35;
      *(v17 + 16) = v36;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v33 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_10035E9D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005DA4A0, &qword_1004F7940);
  v38 = a2;
  result = sub_1004A6A64();
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
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1004A6F14();
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

uint64_t sub_10035EC70(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005DA468, &unk_1004F7930);
  v37 = a2;
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1004A6F14();
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

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_10035EF14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005D8CA8, &unk_1004F5F28);
  v40 = a2;
  result = sub_1004A6A64();
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
      v27 = *(v5 + 56) + v23;
      v28 = *v27;
      v41 = *(v27 + 8);
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1004A6F14();
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
      v19 = *(v8 + 56) + v17;
      *v19 = v28;
      *(v19 + 8) = v41;
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

uint64_t sub_10035F1D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005D8C88, &unk_1004F7770);
  v38 = a2;
  result = sub_1004A6A64();
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
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1004A6F14();
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
      *(*(v8 + 56) + v16) = v25;
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

uint64_t sub_10035F474(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005DA5E8, &qword_1004F7918);
  v39 = a2;
  result = sub_1004A6A64();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 24 * v22;
      v40 = *v26;
      v27 = *(v26 + 16);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1004A6F14();
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
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v40;
      *(v18 + 16) = v27;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
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

uint64_t sub_10035F734(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005DA440, &unk_1004F7980);
  v38 = a2;
  result = sub_1004A6A64();
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
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1004A6F14();
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

uint64_t sub_10035F9DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005D9930, &qword_1004F6B58);
  v34 = a2;
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EE4(v21);
      result = sub_1004A6F14();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10035FC68(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v45 = *(v6 - 8);
  v7 = *(v45 + 64);
  __chkstk_darwin(v6 - 8);
  v48 = &v43 - v8;
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005DA4C8, &unk_1004F7748);
  v46 = a2;
  result = sub_1004A6A64();
  v12 = result;
  if (*(v9 + 16))
  {
    v43 = v2;
    v44 = v9;
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
    v19 = result + 64;
    while (v17)
    {
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v26 = v23 | (v13 << 6);
      v27 = *(v9 + 56);
      v28 = *(v9 + 48) + 32 * v26;
      v29 = *v28;
      v30 = *(v28 + 8);
      v31 = *(v28 + 16);
      v49 = *(v28 + 24);
      v47 = *(v45 + 72);
      v32 = v27 + v47 * v26;
      if (v46)
      {
        v33 = v31;
        sub_100020950(v32, v48);
      }

      else
      {
        sub_10002A54C(v32, v48);

        v33 = v31;
      }

      v34 = *(v12 + 40);
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1004A6EB4(v49 | (v49 << 32));
      result = sub_1004A6F14();
      v35 = -1 << *(v12 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v19 + 8 * (v36 >> 6))) == 0)
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
          v41 = *(v19 + 8 * v37);
          if (v41 != -1)
          {
            v20 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v36) & ~*(v19 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = *(v12 + 48) + 32 * v20;
      *v21 = v29;
      *(v21 + 8) = v30;
      *(v21 + 16) = v33;
      v22 = v48;
      *(v21 + 24) = v49;
      result = sub_100020950(v22, *(v12 + 56) + v47 * v20);
      ++*(v12 + 16);
      v9 = v44;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v25 = v14[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v17 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v9 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v14, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v42;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_10035FFE0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005DA298, &qword_1004F7550);
  v38 = a2;
  result = sub_1004A6A64();
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
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 24 * v21);
      v24 = *v23;
      v39 = v23[1];
      v25 = v23[2];
      v26 = *(v22 + 8 * v21);
      if ((v38 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      sub_1004A6E94();
      Mailbox.hash(into:)(v40, v24);
      result = sub_1004A6F14();
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
      v17 = (*(v8 + 48) + 24 * v16);
      *v17 = v24;
      v17[1] = v39;
      v17[2] = v25;
      *(*(v8 + 56) + 8 * v16) = v26;
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

uint64_t sub_1003602AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005DA408, &qword_1004F7678);
  v40 = a2;
  result = sub_1004A6A64();
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 16 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v22 + 8 * v21);
      if ((v40 & 1) == 0)
      {
        v27 = *v23;

        v28 = v26;
      }

      v29 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v25 | (v25 << 32));
      result = sub_1004A6F14();
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
      v17 = *(v8 + 48) + 16 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(*(v8 + 56) + 8 * v16) = v26;
      ++*(v8 + 16);
      v5 = v39;
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

uint64_t sub_100360554(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005DA498, &qword_1004F7720);
  v39 = a2;
  result = sub_1004A6A64();
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 24 * v21;
      v24 = *v23;
      v40 = *(v23 + 8);
      v25 = *(v23 + 16);
      if ((v39 & 1) == 0)
      {
        v26 = v22;
        v27 = v24;
      }

      v28 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6304();
      result = sub_1004A6F14();
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
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 24 * v16);
      *v17 = v24;
      v17[1] = v40;
      v17[2] = v25;
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

uint64_t sub_100360810(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005D5FE0, &unk_1004F79C0);
  v36 = a2;
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_10019A8D4(v25, v37);
      }

      else
      {
        sub_1001659C8(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1004A6F14();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_10019A8D4(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_100360AC8()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005DA420, &unk_1004F7690);
  v2 = *v0;
  v3 = sub_1004A6A54();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v26 + 16) = v24)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 8 * v14;
      v18 = *(*(v2 + 48) + 8 * v14);
      v19 = 72 * v14;
      v20 = *(v2 + 56) + v19;
      v21 = *(v20 + 32);
      v22 = *(v20 + 48);
      v23 = *(v20 + 64);
      v25 = *v20;
      v24 = *(v20 + 16);
      *(*(v4 + 48) + v17) = v18;
      v26 = *(v4 + 56) + v19;
      *(v26 + 64) = v23;
      *(v26 + 32) = v21;
      *(v26 + 48) = v22;
      *v26 = v25;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_100360C40()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005DA4A0, &qword_1004F7940);
  v2 = *v0;
  v3 = sub_1004A6A54();
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

void *sub_100360DA8()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005DA468, &unk_1004F7930);
  v2 = *v0;
  v3 = sub_1004A6A54();
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

void *sub_100360F10()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D8CA8, &unk_1004F5F28);
  v2 = *v0;
  v3 = sub_1004A6A54();
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
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        LOBYTE(v21) = *(v21 + 8);
        v23 = (*(v4 + 48) + v17);
        *v23 = v20;
        v23[1] = v19;
        v24 = *(v4 + 56) + v17;
        *v24 = v22;
        *(v24 + 8) = v21;
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

void *sub_100361088()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D8C88, &unk_1004F7770);
  v2 = *v0;
  v3 = sub_1004A6A54();
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
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_1003611F0()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005DA5E8, &qword_1004F7918);
  v2 = *v0;
  v3 = sub_1004A6A54();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 16);
        v24 = (*(v4 + 48) + v18);
        v25 = *v22;
        *v24 = v21;
        v24[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v25;
        *(v26 + 16) = v23;
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

void *sub_100361370()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005DA440, &unk_1004F7980);
  v2 = *v0;
  v3 = sub_1004A6A54();
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

id sub_1003614E0()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D9930, &qword_1004F6B58);
  v2 = *v0;
  v3 = sub_1004A6A54();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

char *sub_10036163C()
{
  v1 = v0;
  v2 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  __chkstk_darwin(v2 - 8);
  v33 = &v31 - v4;
  sub_10000C9C0(&qword_1005DA4C8, &unk_1004F7748);
  v5 = *v0;
  v6 = sub_1004A6A54();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v35 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 32 * v20;
        v22 = *(v5 + 48) + 32 * v20;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = v33;
        v28 = *(v34 + 72) * v20;
        sub_10002A54C(*(v5 + 56) + v28, v33);
        v29 = v35;
        v30 = *(v35 + 48) + v21;
        *v30 = v23;
        *(v30 + 8) = v24;
        *(v30 + 16) = v25;
        *(v30 + 24) = v26;
        sub_100020950(v27, *(v29 + 56) + v28);

        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v31;
        v7 = v35;
        goto LABEL_18;
      }

      v19 = *(v32 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_100361898()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005DA298, &qword_1004F7550);
  v2 = *v0;
  v3 = sub_1004A6A54();
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
        v18 = (*(v2 + 48) + 24 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 24 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
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

id sub_100361A24()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005DA408, &qword_1004F7678);
  v2 = *v0;
  v3 = sub_1004A6A54();
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
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        LODWORD(v18) = *(v18 + 8);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v18;
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

void *sub_100361B98()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005DA498, &qword_1004F7720);
  v2 = *v0;
  v3 = sub_1004A6A54();
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
        v19 = *(v2 + 56) + 24 * v17;
        v21 = *v19;
        v20 = *(v19 + 8);
        v22 = *(v19 + 16);
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = (*(v4 + 56) + 24 * v17);
        *v23 = v21;
        v23[1] = v20;
        v23[2] = v22;
        v24 = v18;
        v25 = v21;
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

void *sub_100361D20()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D5FE0, &unk_1004F79C0);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1001659C8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10019A8D4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100361EC4(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v9 = sub_1004A6F14();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1004A6D34() & 1) != 0)
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

    sub_1003634EC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100362014(_DWORD *a1, Swift::Int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1004A6E94();
  sub_1004A6EE4(a2);
  v7 = sub_1004A6F14();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 4 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_10036366C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100362130(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v36 = a5;
  v12 = a5 | (a5 << 32);
  sub_1004A6EB4(v12);
  v13 = sub_1004A6F14();
  v14 = v10 + 56;
  v15 = -1 << *(v10 + 32);
  v16 = v13 & ~v15;
  if ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v34 = v10;
    v18 = *(v10 + 48);
    while (1)
    {
      v19 = v18 + 32 * v16;
      result = *v19;
      v21 = *(v19 + 16);
      v22 = *(v19 + 24);
      v23 = *v19 == a2 && *(v19 + 8) == a3;
      if (v23 || (result = sub_1004A6D34(), (result & 1) != 0))
      {
        if ((v22 | (v22 << 32)) == v12)
        {
          v24 = *(v21 + 16);
          if (v24 == *(a4 + 16))
          {
            break;
          }
        }
      }

LABEL_3:
      v16 = (v16 + 1) & v17;
      if (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v24)
    {
      v25 = v21 == a4;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
LABEL_19:

      v28 = *(v34 + 48) + 32 * v16;
      v30 = *v28;
      v29 = *(v28 + 8);
      v31 = *(v28 + 16);
      LODWORD(v28) = *(v28 + 24);
      *a1 = v30;
      *(a1 + 8) = v29;
      *(a1 + 16) = v31;
      *(a1 + 24) = v28;

      return 0;
    }

    else
    {
      v26 = (v21 + 32);
      v27 = (a4 + 32);
      while (v24)
      {
        if (*v26 != *v27)
        {
          goto LABEL_3;
        }

        ++v26;
        ++v27;
        if (!--v24)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_20:
    v32 = *v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v35;

    sub_1003637B8(a2, a3, a4, v36, v16, isUniquelyReferenced_nonNull_native);
    *v35 = v38;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    *(a1 + 24) = v36;
    return 1;
  }

  return result;
}

uint64_t sub_100362378(void *a1, void *a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1004A6E94();
  sub_1004A6304();
  v7 = sub_1004A6F14();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_10019A8E4(0, &qword_1005D91C0, NSObject_ptr);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_1004A62F4();

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

    v17 = *(*(v5 + 48) + 8 * v9);
    *a1 = v17;
    v18 = v17;
    return 0;
  }

  else
  {
LABEL_5:
    v13 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    v15 = a2;
    sub_1003639D0(v15, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
    *a1 = v15;
    return 1;
  }
}

uint64_t sub_1003624CC(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_1004A6E84();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_100363B60(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1003625D0(Swift::UInt64 *a1, Swift::UInt64 a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v13 = *v6;
  v14 = *(*v6 + 40);
  sub_1004A6E94();
  sub_1004A6EF4(a2);
  v15 = sub_1004A6F14();
  v16 = -1 << *(v13 + 32);
  v17 = v15 & ~v16;
  if ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    while (*(*(v13 + 48) + 8 * v17) != a2)
    {
      v17 = (v17 + 1) & v18;
      if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v19 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v6;
    sub_100363C80(a2, v17, isUniquelyReferenced_nonNull_native, a3, a4, a5, a6);
    *v6 = v22;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1003626F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005D8CA0, &qword_1004F5F20);
  result = sub_1004A6694();
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
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1004A6F14();
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

uint64_t sub_100362958(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005DA668, &qword_1004F79B8);
  result = sub_1004A6694();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1004A6E94();
      sub_1004A6EE4(v18);
      result = sub_1004A6F14();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 4 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100362BA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005D8CC0, &qword_1004F5F48);
  result = sub_1004A6694();
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
      v19 = *(v3 + 48) + 32 * (v16 | (v7 << 6));
      v20 = *v19;
      v32 = *(v19 + 8);
      v21 = *(v19 + 24);
      v22 = *(v6 + 40);
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1004A6EB4(v21 | (v21 << 32));
      result = sub_1004A6F14();
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
      v15 = *(v6 + 48) + 32 * v14;
      *v15 = v20;
      *(v15 + 8) = v32;
      *(v15 + 24) = v21;
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

uint64_t sub_100362E30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005DA628, &qword_1004F7978);
  result = sub_1004A6694();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1004A6E94();
      sub_1004A6304();
      result = sub_1004A6F14();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100363080(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005DA5B0, &unk_1004F78C0);
  result = sub_1004A6694();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_1004A6E84();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1003632A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_10000C9C0(a2, a3);
  result = sub_1004A6694();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EF4(v20);
      result = sub_1004A6F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v4 = v30;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

Swift::Int sub_1003634EC(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_1003626F8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100363E00();
      goto LABEL_16;
    }

    sub_1003645D0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  result = sub_1004A6F14();
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

      result = sub_1004A6D34();
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
  result = sub_1004A6E14();
  __break(1u);
  return result;
}

Swift::Int sub_10036366C(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100362958(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100363F5C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100364808(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1004A6E94();
  sub_1004A6EE4(v4);
  result = sub_1004A6F14();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 4 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1004A6E14();
  __break(1u);
  return result;
}

Swift::Int sub_1003637B8(Swift::Int result, uint64_t a2, uint64_t a3, unsigned int a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 <= v12 || (a6 & 1) == 0)
  {
    if (a6)
    {
      sub_100362BA8(v12 + 1);
    }

    else
    {
      if (v13 > v12)
      {
        result = sub_10036409C();
        goto LABEL_27;
      }

      sub_100364A28(v12 + 1);
    }

    v14 = *v6;
    v15 = *(*v6 + 40);
    sub_1004A6E94();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v16 = a4 | (a4 << 32);
    sub_1004A6EB4(v16);
    result = sub_1004A6F14();
    v17 = v14 + 56;
    v18 = -1 << *(v14 + 32);
    a5 = result & ~v18;
    if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
    {
      v19 = ~v18;
      v20 = *(v14 + 48);
      while (1)
      {
        v21 = v20 + 32 * a5;
        result = *v21;
        v22 = *(v21 + 16);
        v23 = *(v21 + 24);
        v24 = *v21 == v11 && *(v21 + 8) == a2;
        if (v24 || (result = sub_1004A6D34(), (result & 1) != 0))
        {
          if ((v23 | (v23 << 32)) == v16)
          {
            v25 = *(v22 + 16);
            if (v25 == *(a3 + 16))
            {
              break;
            }
          }
        }

LABEL_10:
        a5 = (a5 + 1) & v19;
        if (((*(v17 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      if (v25)
      {
        v26 = v22 == a3;
      }

      else
      {
        v26 = 1;
      }

      if (!v26)
      {
        v27 = (v22 + 32);
        v28 = (a3 + 32);
        while (v25)
        {
          if (*v27 != *v28)
          {
            goto LABEL_10;
          }

          ++v27;
          ++v28;
          if (!--v25)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
        goto LABEL_30;
      }

LABEL_26:
      result = sub_1004A6E14();
      __break(1u);
    }
  }

LABEL_27:
  v29 = *v34;
  *(*v34 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v30 = *(v29 + 48) + 32 * a5;
  *v30 = v11;
  *(v30 + 8) = a2;
  *(v30 + 16) = a3;
  *(v30 + 24) = a4;
  v31 = *(v29 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (!v32)
  {
    *(v29 + 16) = v33;
    return result;
  }

LABEL_30:
  __break(1u);
  return result;
}

void sub_1003639D0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100362E30(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100364210();
      goto LABEL_12;
    }

    sub_100364C8C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1004A6E94();
  sub_1004A6304();
  v10 = sub_1004A6F14();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_10019A8E4(0, &qword_1005D91C0, NSObject_ptr);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_1004A62F4();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1004A6E14();
  __break(1u);
}

uint64_t sub_100363B60(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100363080(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100364360();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100364EB4(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_1004A6E84();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1004A6E14();
  __break(1u);
  return result;
}

Swift::Int sub_100363C80(Swift::Int result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v10 = result;
  v11 = *(*v7 + 16);
  v12 = *(*v7 + 24);
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v9 = a6;
    v8 = a7;
    sub_1003632A4(v11 + 1, a4, a5);
  }

  else
  {
    if (v12 > v11)
    {
      v8 = a2;
      result = sub_1003644A0(a4, a5);
      a2 = v8;
      goto LABEL_12;
    }

    v9 = a6;
    v8 = a7;
    sub_1003650A4(v11 + 1, a4, a5);
  }

  v13 = *v7;
  v14 = *(*v7 + 40);
  sub_1004A6E94();
  sub_1004A6EF4(v10);
  result = sub_1004A6F14();
  v15 = -1 << *(v13 + 32);
  a2 = result & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    while (*(*(v13 + 48) + 8 * a2) != v10)
    {
      a2 = (a2 + 1) & v16;
      if (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v17 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + 8 * a2) = v10;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_15:
  sub_10000C9C0(v9, v8);
  result = sub_1004A6E14();
  __break(1u);
  return result;
}

void *sub_100363E00()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D8CA0, &qword_1004F5F20);
  v2 = *v0;
  v3 = sub_1004A6684();
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

void *sub_100363F5C()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005DA668, &qword_1004F79B8);
  v2 = *v0;
  v3 = sub_1004A6684();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_10036409C()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D8CC0, &qword_1004F5F48);
  v2 = *v0;
  v3 = sub_1004A6684();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        LODWORD(v18) = *(v18 + 24);
        v22 = *(v4 + 48) + v17;
        *v22 = v20;
        *(v22 + 8) = v19;
        *(v22 + 16) = v21;
        *(v22 + 24) = v18;
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

id sub_100364210()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005DA628, &qword_1004F7978);
  v2 = *v0;
  v3 = sub_1004A6684();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

void *sub_100364360()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005DA5B0, &unk_1004F78C0);
  v2 = *v0;
  v3 = sub_1004A6684();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1003644A0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000C9C0(a1, a2);
  v4 = *v2;
  v5 = sub_1004A6684();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

uint64_t sub_1003645D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005D8CA0, &qword_1004F5F20);
  result = sub_1004A6694();
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
      sub_1004A6E94();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1004A6F14();
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

uint64_t sub_100364808(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005DA668, &qword_1004F79B8);
  result = sub_1004A6694();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1004A6E94();
      sub_1004A6EE4(v17);
      result = sub_1004A6F14();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 4 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_100364A28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005D8CC0, &qword_1004F5F48);
  result = sub_1004A6694();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v19 = *(v3 + 48) + 32 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v6 + 40);
      sub_1004A6E94();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1004A6EB4(v23 | (v23 << 32));
      result = sub_1004A6F14();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 32 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      v3 = v33;
      *(v15 + 24) = v23;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
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

uint64_t sub_100364C8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005DA628, &qword_1004F7978);
  result = sub_1004A6694();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1004A6E94();
      v19 = v17;
      sub_1004A6304();
      result = sub_1004A6F14();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v19;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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