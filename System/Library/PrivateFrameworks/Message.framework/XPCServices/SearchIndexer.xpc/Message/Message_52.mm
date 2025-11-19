uint64_t sub_100345710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a1;
  v35 = a4;
  v36 = a5;
  v34 = a3;
  v7 = sub_1004A4A74();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_allocObject();
  *(v27 + 16) = _swiftEmptyArrayStorage;
  v33 = *(v8 + 16);
  v33(v10, a3, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = (v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = v11;
  v32 = v12;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v30 = *(v8 + 32);
  v30(v14 + v11, v10, v7);
  v15 = (v14 + v12);
  *v15 = v37;
  v15[1] = a2;
  v28 = a2;
  v16 = v27;
  *(v14 + v13) = v27;
  v43 = sub_1003475C4;
  v44 = v14;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v29 = &v41;
  v41 = sub_100346A9C;
  v42 = &unk_1005B4E00;
  v17 = _Block_copy(&aBlock);

  [v38 setFoundItemsHandler:v17];
  _Block_release(v17);
  v33(v10, v34, v7);
  v18 = swift_allocObject();
  v30(v18 + v31, v10, v7);
  v19 = (v18 + v32);
  v20 = v36;
  v21 = v28;
  *v19 = v37;
  v19[1] = v21;
  v22 = (v18 + v13);
  *v22 = v35;
  v22[1] = v20;
  *(v18 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)) = v16;
  v43 = sub_10034773C;
  v44 = v18;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_100346E74;
  v42 = &unk_1005B4E50;
  v23 = _Block_copy(&aBlock);

  v24 = v38;
  [v38 setCompletionHandler:v23];
  _Block_release(v23);
  [v24 start];
}

uint64_t sub_100345A78(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v65 = a7;
  v64 = a6;
  v63 = a1;
  v11 = sub_1004A5244();
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = *(v70 + 64);
  __chkstk_darwin(v11);
  v69 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004A5274();
  v67 = *(v14 - 8);
  v68 = v14;
  v15 = *(v67 + 64);
  __chkstk_darwin(v14);
  v66 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10000C9C0(&qword_1005DA290, &unk_1004F7540);
  v17 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v74 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v73 = &v59 - v20;
  v62 = a5;
  sub_100347864(a5);
  v22 = v21;
  v60 = a2;
  v61 = a3;
  v23 = sub_100347B40(a2, a3, a4, v21);

  v24 = *(v23 + 64);
  v72 = v23 + 64;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v28 = (v25 + 63) >> 6;
  v76 = v23;

  v29 = 0;
  v30 = 0;
  do
  {
    if (!v27)
    {
      while (1)
      {
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v31 >= v28)
        {
          goto LABEL_13;
        }

        v27 = *(v72 + 8 * v31);
        ++v29;
        if (v27)
        {
          v80 = v30;
          v29 = v31;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_20:
      swift_once();
LABEL_15:
      v45 = sub_1004A4A74();
      sub_1001C203C(v45, qword_1005DA1C0);
      v46 = v61;

      v47 = sub_1004A4A54();
      v48 = sub_1004A6014();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        aBlock[0] = v50;
        *v49 = 141558787;
        *(v49 + 4) = 1752392040;
        *(v49 + 12) = 2085;
        *(v49 + 14) = sub_10015BA6C(v60, v46, aBlock);
        *(v49 + 22) = 2048;
        *(v49 + 24) = *(v29 + 16);

        *(v49 + 32) = 2048;
        *(v49 + 34) = v30;
        _os_log_impl(&_mh_execute_header, v47, v48, "[%{sensitive,mask.hash}s] Spotlight returned %ld message IDs, but %ld messages found in database.", v49, 0x2Au);
        sub_1000197E0(v50);
      }

      else
      {
      }

      goto LABEL_18;
    }

    v80 = v30;
    v31 = v29;
LABEL_10:
    v32 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v33 = v32 | (v31 << 6);
    v34 = *(v76 + 56);
    v35 = *(v76 + 48) + 32 * v33;
    v36 = *(v35 + 8);
    v78 = *v35;
    v37 = *(v35 + 16);
    v77 = *(v35 + 24);
    v79 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v38 = v75;
    v39 = v73;
    sub_10000E268(v34 + *(*(v79 - 8) + 72) * v33, &v73[*(v75 + 48)], &unk_1005D91B0, &unk_1004CF400);
    *v39 = v78;
    *(v39 + 8) = v36;
    *(v39 + 16) = v37;
    *(v39 + 24) = v77;
    v40 = v74;
    sub_10000E268(v39, v74, &qword_1005DA290, &unk_1004F7540);
    v41 = *(v40 + 8);

    v42 = *(v40 + 16);

    v43 = *(v38 + 48);
    v44 = MessageIdentifierSet.count.getter();
    sub_100025F40(v39, &qword_1005DA290, &unk_1004F7540);
    sub_100025F40(v40 + v43, &unk_1005D91B0, &unk_1004CF400);
    v30 = v80 + v44;
  }

  while (!__OFADD__(v80, v44));
  __break(1u);
LABEL_13:

  v29 = v62;
  if (v30 != *(v62 + 16))
  {
    if (qword_1005D8788 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

LABEL_18:
  v51 = *(v63 + 16);
  v52 = swift_allocObject();
  v53 = v65;
  v52[2] = v64;
  v52[3] = v53;
  v52[4] = v76;
  aBlock[4] = sub_1003484F8;
  aBlock[5] = v52;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B4EF0;
  v54 = _Block_copy(aBlock);

  v55 = v66;
  sub_1004A5254();
  v81 = _swiftEmptyArrayStorage;
  sub_10022AAC8();
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_10022AB20();
  v56 = v69;
  v57 = v71;
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v54);
  (*(v70 + 8))(v56, v57);
  (*(v67 + 8))(v55, v68);
}

uint64_t sub_100346140(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = a5;
  v52 = a6;
  v47 = a3;
  v48 = a4;
  v8 = sub_1004A5244();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  __chkstk_darwin(v8);
  v55 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1004A5274();
  v54 = *(v56 - 8);
  v11 = *(v54 + 64);
  __chkstk_darwin(v56);
  v53 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  v13 = *(a1 + 24);

  v15 = sub_100368180(v14);
  v49 = a2;

  v16 = sub_10032F7C4(v15);

  aBlock[0] = _swiftEmptySetSingleton;
  if (v16 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004A6A34())
  {
    v18 = 0;
    v59 = v16 & 0xFFFFFFFFFFFFFF8;
    v60 = v16 & 0xC000000000000001;
    while (1)
    {
      if (v60)
      {
        v19 = sub_1004A6794();
      }

      else
      {
        if (v18 >= *(v59 + 16))
        {
          goto LABEL_23;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v22 = [v19 objectID];
      v23 = [v22 entity];
      v24 = [v23 name];

      if (v24)
      {
        v25 = sub_1004A5764();
        v27 = v26;

        if (v25 == 0x786F626C69616DLL && v27 == 0xE700000000000000)
        {
        }

        else
        {
          v29 = sub_1004A6D34();

          if ((v29 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        if (![v22 isTemporaryID])
        {
          v30 = v22;
          sub_100362378(v62, v30);

          goto LABEL_5;
        }
      }

LABEL_4:

LABEL_5:
      ++v18;
      if (v21 == i)
      {
        v31 = aBlock[0];
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v31 = _swiftEmptySetSingleton;
LABEL_26:

  v32 = *(v49 + 16);
  if (v31[2] != v32)
  {
    if (qword_1005D8788 != -1)
    {
      swift_once();
    }

    v33 = sub_1004A4A74();
    sub_1001C203C(v33, qword_1005DA1C0);

    v34 = v48;

    v35 = sub_1004A4A54();
    v36 = sub_1004A6014();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v37 = 141558787;
      *(v37 + 4) = 1752392040;
      *(v37 + 12) = 2085;
      *(v37 + 14) = sub_10015BA6C(v47, v34, aBlock);
      *(v37 + 22) = 2048;
      *(v37 + 24) = v31[2];

      *(v37 + 32) = 2048;
      *(v37 + 34) = v32;

      _os_log_impl(&_mh_execute_header, v35, v36, "[%{sensitive,mask.hash}s] Found %ld mailboxes for search request with %ld mailboxes.", v37, 0x2Au);
      sub_1000197E0(v38);
    }

    else
    {
    }
  }

  v39 = *(v50 + 16);
  v40 = swift_allocObject();
  v41 = v52;
  v40[2] = v51;
  v40[3] = v41;
  v40[4] = v31;
  aBlock[4] = sub_1003473C4;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B4D10;
  v42 = _Block_copy(aBlock);

  v43 = v53;
  sub_1004A5254();
  v62[0] = _swiftEmptyArrayStorage;
  sub_10022AAC8();
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_10022AB20();
  v44 = v55;
  v45 = v58;
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v42);
  (*(v57 + 8))(v44, v45);
  (*(v54 + 8))(v43, v56);
}

uint64_t sub_10034675C(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v28 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004A6A34())
  {
    v26 = a4;
    v7 = 0;
    a4 = 0x80000001004A84B0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_1004A6794();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 attributeSet];
      v12 = [v11 bundleID];

      if (v12)
      {
        v13 = sub_1004A5764();
        v15 = v14;

        if (v13 == 0xD00000000000001DLL && 0x80000001004A84B0 == v15)
        {

LABEL_18:
          sub_1004A6814();
          v18 = v28[2];
          sub_1004A68A4();
          sub_1004A68B4();
          sub_1004A6834();
          goto LABEL_5;
        }

        v17 = sub_1004A6D34();

        if (v17)
        {
          goto LABEL_18;
        }
      }

LABEL_5:
      ++v7;
      if (v10 == i)
      {
        v19 = v28;
        a4 = v26;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_25:

  v20 = sub_1004A4A54();
  v21 = sub_1004A6034();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = v23;
    *v22 = 141558531;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2085;
    *(v22 + 14) = sub_10015BA6C(a3, a4, &v28);
    *(v22 + 22) = 2048;
    if ((v19 & 0x8000000000000000) != 0 || (v19 & 0x4000000000000000) != 0)
    {
      v24 = sub_1004A6A34();
    }

    else
    {
      v24 = *(v19 + 16);
    }

    *(v22 + 24) = v24;

    _os_log_impl(&_mh_execute_header, v20, v21, "[%{sensitive,mask.hash}s] Spotlight found %ld items.", v22, 0x20u);
    sub_1000197E0(v23);
  }

  else
  {
  }

  swift_beginAccess();
  sub_1003328DC(v19);
  return swift_endAccess();
}

uint64_t sub_100346A9C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_10019A8E4(0, &qword_1005DA288, CSSearchableItem_ptr);
  v3 = sub_1004A5C14();

  v2(v3);
}

uint64_t sub_100346B20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    swift_errorRetain();

    v10 = sub_1004A4A54();
    v11 = sub_1004A6014();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27[0] = v14;
      *v12 = 141558531;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2085;
      *(v12 + 14) = sub_10015BA6C(a3, a4, v27);
      *(v12 + 22) = 2112;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 24) = v15;
      *v13 = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%{sensitive,mask.hash}s] Spotlight search could not be completed due to %@", v12, 0x20u);
      sub_100025F40(v13, &qword_1005D51A0, &qword_1004D0940);

      sub_1000197E0(v14);
    }

    a5(_swiftEmptyArrayStorage);
  }

  else
  {

    v18 = sub_1004A4A54();
    v19 = sub_1004A6034();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27[0] = v21;
      *v20 = 141558531;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2085;
      *(v20 + 14) = sub_10015BA6C(a3, a4, v27);
      *(v20 + 22) = 2048;
      swift_beginAccess();
      v22 = *(a7 + 16);
      if (v22 >> 62)
      {
        if (v22 < 0)
        {
          v26 = *(a7 + 16);
        }

        v23 = sub_1004A6A34();
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v20 + 24) = v23;

      _os_log_impl(&_mh_execute_header, v18, v19, "[%{sensitive,mask.hash}s] Spotlight completed with %ld results", v20, 0x20u);
      sub_1000197E0(v21);
    }

    else
    {
    }

    swift_beginAccess();
    v24 = *(a7 + 16);

    a5(v25);
  }
}

void sub_100346E74(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100346EE0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100346F6C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100346FCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100346FE4(void *a1, char a2, void *a3)
{
  v38 = a1[2];
  if (!v38)
  {
  }

  v5 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v7 = a1[7];
  v9 = *a3;

  v10 = sub_10035E248(v5, v6, v8);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v9[3] < v15)
  {
    sub_10035FFE0(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_10035E248(v5, v6, v8);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1004A6E24();
    __break(1u);
  }

  if (a2)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_100361898();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 24 * v10);
  *v22 = v5;
  v22[1] = v6;
  v22[2] = v8;
  *(v21[7] + 8 * v10) = v7;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1004A6724(30);
    v40._object = 0x80000001004AA380;
    v40._countAndFlagsBits = 0xD00000000000001BLL;
    sub_1004A5994(v40);
    sub_1004A6934();
    v41._countAndFlagsBits = 39;
    v41._object = 0xE100000000000000;
    sub_1004A5994(v41);
    result = sub_1004A69A4();
    __break(1u);
    return result;
  }

  v21[2] = v24;
  if (v38 != 1)
  {
    v16 = a1 + 11;
    v25 = 1;
    while (v25 < a1[2])
    {
      v5 = *(v16 - 3);
      v6 = *(v16 - 2);
      v8 = *(v16 - 1);
      v7 = *v16;
      v26 = *a3;

      v27 = sub_10035E248(v5, v6, v8);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      a2 = v28;
      if (v26[3] < v31)
      {
        sub_10035FFE0(v31, 1);
        v32 = *a3;
        v27 = sub_10035E248(v5, v6, v8);
        if ((a2 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (a2)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v35 = (v34[6] + 24 * v27);
      *v35 = v5;
      v35[1] = v6;
      v35[2] = v8;
      *(v34[7] + 8 * v27) = v7;
      v36 = v34[2];
      v14 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v37;
      v16 += 4;
      if (v38 == v25)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_1003473F4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100347440()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100347478()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1003474DC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100347514()
{
  v1 = sub_1004A4A74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_1003475C4(unint64_t a1)
{
  v3 = *(sub_1004A4A74() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = v7[1];

  return sub_10034675C(a1, v1 + v4, v9, v10);
}

uint64_t sub_100347670()
{
  v1 = sub_1004A4A74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6 + 8);

  v10 = *(v0 + v7);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_10034773C(uint64_t a1)
{
  v3 = *(sub_1004A4A74() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_100346B20(a1, v1 + v4, v8, v9, v10, v11, v12);
}

uint64_t sub_1003477F8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  return _swift_deallocObject(v0, 80, 7);
}

void sub_100347864(uint64_t a1)
{
  v2 = objc_allocWithZone(NSFetchRequest);
  v3 = sub_1004A5734();
  v19 = [v2 initWithEntityName:v3];

  v4 = [objc_allocWithZone(NSMutableArray) init];
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = [objc_allocWithZone(NSNumber) initWithLongLong:*(*(a1 + 48) + ((v10 << 9) | (8 * v11)))];
    [v4 addObject:v12];
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1004CEAA0;
      *(v13 + 56) = sub_10019A8E4(0, &qword_1005DA2A0, NSMutableArray_ptr);
      *(v13 + 32) = v4;
      v14 = v4;
      v15 = sub_1004A5734();
      isa = sub_1004A5C04().super.isa;

      v17 = [objc_opt_self() predicateWithFormat:v15 argumentArray:isa];

      [v19 setPredicate:v17];
      [v19 setFetchLimit:1082];
      [v19 setReturnsObjectsAsFaults:0];
      v18 = sub_1004A5C04().super.isa;
      [v19 setRelationshipKeyPathsForPrefetching:v18];

      [v19 setFetchBatchSize:541];
      return;
    }

    v7 = *(a1 + 56 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100347B40(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v93 - v11;
  v13 = sub_100351418(_swiftEmptyArrayStorage);
  varA8[0] = 0;
  v14 = a4;
  v15 = [v14 execute:varA8];
  if (!v15)
  {
    v22 = varA8[0];
    sub_1004A4274();

    swift_willThrow();

    if (qword_1005D8788 != -1)
    {
      swift_once();
    }

    v23 = sub_1004A4A74();
    sub_1001C203C(v23, qword_1005DA1C0);

    swift_errorRetain();
    v24 = sub_1004A4A54();
    v25 = sub_1004A6014();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      varA8[0] = v28;
      *v26 = 141558531;
      *(v26 + 4) = 1752392040;
      *(v26 + 12) = 2085;
      *(v26 + 14) = sub_10015BA6C(a1, a2, varA8);
      *(v26 + 22) = 2112;
      v29 = sub_1004A4264();
      *(v26 + 24) = v29;
      *v27 = v29;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%{sensitive,mask.hash}s] Search request failed: %@", v26, 0x20u);
      sub_100025F40(v27, &qword_1005D51A0, &qword_1004D0940);

      sub_1000197E0(v28);
    }

    v30 = sub_100351418(_swiftEmptyArrayStorage);

    return v30;
  }

  v16 = v15;
  v102 = v13;
  v17 = varA8[0];

  v103 = v16;
  v104 = [v16 count];
  if (v104 < 1)
  {
    v21 = v103;
LABEL_10:

    return v102;
  }

  v99 = v12;
  v100 = v9;
  v101 = v8;
  v18 = 0;
  v105 = a3 + 56;
  p_attr = (&stru_1005CAFF8 + 8);
  v21 = v103;
  v20 = v104;
  while (1)
  {
    v32 = [v21 p_attr[449]];
    sub_1004A64E4();
    swift_unknownObjectRelease();
    _s7MessageCMa();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v33 = v106;
    v34 = sub_1004A5734();
    [v33 willAccessValueForKey:v34];

    v35 = [v33 primitiveUid];
    if (v35)
    {
      v36 = v35;
      v37 = [v35 longLongValue];

      v38 = (v37 - 0x100000000) < 0xFFFFFFFF00000001;
      if ((v37 - 0x100000000) >= 0xFFFFFFFF00000001)
      {
        v39 = v37;
      }

      else
      {
        v39 = 0;
      }
    }

    else
    {
      v39 = 0;
      v38 = 1;
    }

    v40 = sub_1004A5734();
    [v33 didAccessValueForKey:v40];

    if (v38)
    {
      goto LABEL_12;
    }

    v41 = [v33 mailbox];
    if (!v41)
    {
      goto LABEL_12;
    }

    v42 = v41;
    v43 = [v41 objectID];
    v44 = [v43 entity];
    v45 = [v44 name];

    if (!v45)
    {

      p_attr = (&stru_1005CAFF8 + 8);
      goto LABEL_13;
    }

    v46 = sub_1004A5764();
    v48 = v47;

    if (v46 == 0x786F626C69616DLL && v48 == 0xE700000000000000)
    {

      p_attr = (&stru_1005CAFF8 + 8);
    }

    else
    {
      v49 = sub_1004A6D34();

      p_attr = (&stru_1005CAFF8 + 8);
      if ((v49 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    if ([v43 isTemporaryID])
    {
LABEL_29:

LABEL_30:
      v20 = v104;
      goto LABEL_13;
    }

    if (!*(a3 + 16))
    {

      goto LABEL_30;
    }

    v50 = *(a3 + 40);
    sub_1004A6E94();
    sub_1004A6304();
    v51 = sub_1004A6F14();
    v52 = a3;
    v53 = -1 << *(a3 + 32);
    v54 = v51 & ~v53;
    if (((*(v105 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
    {
LABEL_36:

      a3 = v52;
      v21 = v103;
      v20 = v104;
      p_attr = (&stru_1005CAFF8 + 8);
      goto LABEL_13;
    }

    v55 = ~v53;
    sub_10019A8E4(0, &qword_1005D91C0, NSObject_ptr);
    while (1)
    {
      v56 = *(*(v52 + 48) + 8 * v54);
      v57 = sub_1004A62F4();

      if (v57)
      {
        break;
      }

      v54 = (v54 + 1) & v55;
      if (((*(v105 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v58 = [v33 mailbox];
    v20 = v104;
    p_attr = &stru_1005CAFF8.attr;
    if (!v58)
    {

      a3 = v52;
      v21 = v103;
      goto LABEL_13;
    }

    v59 = v58;
    v60 = sub_1004A5734();
    [v59 willAccessValueForKey:v60];

    v97 = v59;
    v61 = [v59 primitiveName];
    a3 = v52;
    if (v61)
    {
      v62 = v61;
      v63 = sub_100359E0C(v62);

      v64._rawValue = v63;
      v20 = v104;
      v65 = MailboxName.init(_:)(v64);
      rawValue = v65.bytes._rawValue;
      value = v65._hashValue._value;
    }

    else
    {
      rawValue = 0;
      value = 0;
    }

    v21 = v103;
    v66 = sub_1004A5734();
    v67 = v97;
    [v97 didAccessValueForKey:v66];

    if (!rawValue)
    {

LABEL_12:
      goto LABEL_13;
    }

    v69 = sub_100340AF8(v68);
    if (!v70)
    {

      goto LABEL_12;
    }

    LODWORD(v106) = v39;
    v71 = v102;
    v72 = v69;
    v73 = v70;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    varA8[0] = v71;
    v94 = v72;
    v95 = v73;
    v75 = v73;
    v76 = rawValue;
    v78 = sub_10035E2D4(v72, v75, rawValue, value);
    v79 = v71[2];
    v80 = (v77 & 1) == 0;
    v81 = v79 + v80;
    if (__OFADD__(v79, v80))
    {
      __break(1u);
    }

    if (v71[3] >= v81)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v91 = v78;
        v92 = v77;
        sub_10036163C();
        v77 = v92;
        v78 = v91;
      }
    }

    else
    {
      v82 = v77;
      sub_10035FC68(v81, isUniquelyReferenced_nonNull_native);
      v83 = sub_10035E2D4(v94, v95, v76, value);
      if ((v82 & 1) != (v84 & 1))
      {
        goto LABEL_58;
      }

      v78 = v83;
      v77 = v82;
    }

    p_attr = (&stru_1005CAFF8 + 8);
    v85 = v78;
    v86 = varA8[0];
    if (v77)
    {

      v87 = v97;
    }

    else
    {
      sub_100016D2C();
      rawValue = v76;
      v88 = v99;
      sub_1004A7114();
      v89 = v88;
      v87 = v97;
      sub_100376E18(v85, v94, v95, rawValue, value, v89, v86);
    }

    v102 = v86;
    v90 = v86[7] + *(v100 + 72) * v85;
    MessageIdentifierSet.insert(_:)(varA8, &v106, v101);

LABEL_13:
    if (++v18 == v20)
    {
      goto LABEL_10;
    }
  }

  LODWORD(vars8) = 0;
  varA8[21] = 74;
  sub_1004A69A4();
  __break(1u);
LABEL_58:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

uint64_t sub_1003484F8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100344B60(v0[4]);
  v2();
}

uint64_t sub_10034854C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1003485BC(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

id sub_100348658(uint64_t a1, uint64_t a2, char *a3)
{
  v46 = a3;
  v47 = sub_1004A44E4();
  v5 = *(v47 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v47);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004A4874();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v14 = sub_1004A6CE4();
  v16 = v15;
  sub_1004A47F4();
  v17 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_1004A4814().super.isa;
  v19 = [v17 initWithContentType:isa];

  (*(v10 + 8))(v13, v9);
  v20 = type metadata accessor for PendingItem.AddMessage(0);
  sub_100348C2C((a2 + v20[6]), v14, v16);
  v21 = (a2 + v20[7]);
  v22 = 256;
  if ((v21[1] & 1) == 0)
  {
    v22 = 0;
  }

  v23 = 0x10000;
  if ((v21[2] & 1) == 0)
  {
    v23 = 0;
  }

  v24 = 0x1000000;
  if ((v21[3] & 1) == 0)
  {
    v24 = 0;
  }

  v25 = &_mh_execute_header;
  if ((v21[4] & 1) == 0)
  {
    v25 = 0;
  }

  v26 = 0x10000000000;
  if ((v21[5] & 1) == 0)
  {
    v26 = 0;
  }

  v27 = *v21 & 1 | (v21[6] << 48) | v22 | v23 | v24 | v25 | v26 | (v21[7] << 56);
  v28 = v21[8];
  sub_1003499B0(v27);
  v29 = a2 + v20[8];
  v30 = sub_1004A4484().super.isa;
  [v19 setMailDateReceived:v30];

  v31 = *a2;
  v32 = *(a2 + 8);
  v33 = sub_1004A5734();
  [v19 setAccountIdentifier:v33];

  sub_100349B34(*(a2 + 16));
  v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v35 = sub_1004A5734();

  v36 = sub_1004A5734();
  v37 = [v34 initWithUniqueIdentifier:v35 domainIdentifier:v36 attributeSet:v19];

  v38 = v37;
  v39 = v46;
  sub_1004A4474();
  v40 = sub_1004A4484().super.isa;
  v41 = *(v5 + 8);
  v42 = v8;
  v43 = v47;
  v41(v42, v47);
  [v38 setExpirationDate:v40];

  v41(v39, v43);
  sub_100349CE4(a2);
  return v38;
}

id sub_100348A18(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v7 = sub_1004A44E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(CSSearchableItemAttributeSet) init];
  sub_1003499B0(a2 & 0xFFFF010101010101);
  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v21[1] = a1;
  sub_1004A6CE4();
  v14 = sub_1004A5734();

  v15 = sub_1004A5734();
  v16 = [v13 initWithUniqueIdentifier:v14 domainIdentifier:v15 attributeSet:v12];

  v17 = v16;
  [v17 setIsUpdate:1];
  sub_1004A4474();
  isa = sub_1004A4484().super.isa;
  v19 = *(v8 + 8);
  v19(v11, v7);
  [v17 setExpirationDate:isa];

  v19(a4, v7);
  return v17;
}

void sub_100348C2C(void *a1, uint64_t a2, uint64_t a3)
{
  v127 = a2;
  v128 = a3;
  v4 = sub_1004A46E4();
  v129 = *(v4 - 8);
  v130 = v4;
  v5 = *(v129 + 64);
  __chkstk_darwin(v4);
  v126 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v123 - v9;
  v11 = type metadata accessor for IndexableMessageInfo(0);
  v12 = (a1 + v11[9]);
  v13 = *v12;
  v124 = v12[1];
  v125 = v13;
  if (v124)
  {
    v14 = sub_1004A5734();
  }

  else
  {
    v14 = 0;
  }

  [v134 setSubject:v14];

  sub_10000E268(a1 + v11[6], v10, &qword_1005D0F20, &qword_1004E9390);
  v15 = sub_1004A44E4();
  v16 = *(v15 - 8);
  isa = 0;
  if ((*(v16 + 48))(v10, 1, v15) != 1)
  {
    isa = sub_1004A4484().super.isa;
    (*(v16 + 8))(v10, v15);
  }

  v18 = v134;
  [v134 setContentCreationDate:isa];

  v19 = a1 + v11[7];
  v20 = *(v19 + 3);
  if (v20)
  {
    v144 = *v19;
    v21 = *(v19 + 2);
    v22 = *(v19 + 3);
    v147 = *(v19 + 2);
    v148 = v22;
    v23 = *(v19 + 5);
    v149 = *(v19 + 4);
    v150 = v23;
    v145 = v21;
    v146 = v20;
    sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1004D3930;
    sub_10019A8E4(0, &qword_1005DA2B0, CSPerson_ptr);
    v137 = *v19;
    *&v138 = *(v19 + 2);
    *(&v138 + 1) = v20;
    v25 = *(v19 + 3);
    v139 = *(v19 + 2);
    v140 = v25;
    v26 = *(v19 + 5);
    v141 = *(v19 + 4);
    v142 = v26;
    sub_100275568(&v137, v136);
    *(v24 + 32) = sub_100373100(&v144);
  }

  v133 = sub_10019A8E4(0, &qword_1005DA2B0, CSPerson_ptr);
  v27 = sub_1004A5C04().super.isa;

  [v18 setAuthors:v27];

  v28 = *(a1 + v11[10]);
  v29 = *(v28 + 16);
  v131 = v11;
  v132 = a1;
  if (v29)
  {
    v143 = _swiftEmptyArrayStorage;
    sub_1004A6864();
    v30 = (v28 + 32);
    v31 = v29 - 1;
    v135 = xmmword_1004CEAA0;
    while (1)
    {
      v32 = v30[1];
      v137 = *v30;
      v138 = v32;
      v33 = v30[2];
      v34 = v30[3];
      v35 = v30[5];
      v141 = v30[4];
      v142 = v35;
      v139 = v33;
      v140 = v34;
      if (*(&v137 + 1))
      {
        sub_100275568(&v137, v136);

        v36 = sub_1004A5734();
      }

      else
      {
        sub_100275568(&v137, v136);
        v36 = 0;
      }

      v37 = v138;
      v38 = objc_allocWithZone(CSPerson);
      sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
      v39 = swift_allocObject();
      *(v39 + 16) = v135;
      *(v39 + 32) = v37;

      sub_1002755F4(&v137);
      v40 = sub_1004A5C04().super.isa;

      [v38 initWithDisplayName:v36 handles:v40 handleIdentifier:CNContactEmailAddressesKey];

      sub_1004A6814();
      v41 = v143[2];
      sub_1004A68A4();
      sub_1004A68B4();
      sub_1004A6834();
      if (!v31)
      {
        break;
      }

      --v31;
      v30 += 6;
    }

    v11 = v131;
    a1 = v132;
  }

  v42 = sub_1004A5C04().super.isa;

  [v134 setPrimaryRecipients:v42];

  v43 = a1[1];
  v44 = *(v43 + 16);
  if (v44)
  {
    v143 = _swiftEmptyArrayStorage;
    sub_1004A6864();
    v45 = (v43 + 32);
    v46 = v44 - 1;
    v135 = xmmword_1004CEAA0;
    while (1)
    {
      v47 = v45[1];
      v137 = *v45;
      v138 = v47;
      v48 = v45[2];
      v49 = v45[3];
      v50 = v45[5];
      v141 = v45[4];
      v142 = v50;
      v139 = v48;
      v140 = v49;
      if (*(&v137 + 1))
      {
        sub_100275568(&v137, v136);

        v51 = sub_1004A5734();
      }

      else
      {
        sub_100275568(&v137, v136);
        v51 = 0;
      }

      v52 = v138;
      v53 = objc_allocWithZone(CSPerson);
      sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
      v54 = swift_allocObject();
      *(v54 + 16) = v135;
      *(v54 + 32) = v52;

      sub_1002755F4(&v137);
      v55 = sub_1004A5C04().super.isa;

      [v53 initWithDisplayName:v51 handles:v55 handleIdentifier:CNContactEmailAddressesKey];

      sub_1004A6814();
      v56 = v143[2];
      sub_1004A68A4();
      sub_1004A68B4();
      sub_1004A6834();
      if (!v46)
      {
        break;
      }

      --v46;
      v45 += 6;
    }

    v11 = v131;
    a1 = v132;
    v57 = v134;
  }

  else
  {
    v57 = v134;
  }

  v58 = sub_1004A5C04().super.isa;

  [v57 setAdditionalRecipients:v58];

  v59 = *a1;
  v60 = *(*a1 + 16);
  if (v60)
  {
    v143 = _swiftEmptyArrayStorage;
    sub_1004A6864();
    v61 = (v59 + 32);
    v62 = v60 - 1;
    v135 = xmmword_1004CEAA0;
    while (1)
    {
      v63 = v61[1];
      v137 = *v61;
      v138 = v63;
      v64 = v61[2];
      v65 = v61[3];
      v66 = v61[5];
      v141 = v61[4];
      v142 = v66;
      v139 = v64;
      v140 = v65;
      if (*(&v137 + 1))
      {
        sub_100275568(&v137, v136);

        v67 = sub_1004A5734();
      }

      else
      {
        sub_100275568(&v137, v136);
        v67 = 0;
      }

      v68 = v138;
      v69 = objc_allocWithZone(CSPerson);
      sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
      v70 = swift_allocObject();
      *(v70 + 16) = v135;
      *(v70 + 32) = v68;

      sub_1002755F4(&v137);
      v71 = sub_1004A5C04().super.isa;

      [v69 initWithDisplayName:v67 handles:v71 handleIdentifier:CNContactEmailAddressesKey];

      sub_1004A6814();
      v72 = v143[2];
      sub_1004A68A4();
      sub_1004A68B4();
      sub_1004A6834();
      if (!v62)
      {
        break;
      }

      --v62;
      v61 += 6;
    }

    v11 = v131;
    a1 = v132;
  }

  v73 = v134;
  v74 = sub_1004A5C04().super.isa;

  [v73 setHiddenAdditionalRecipients:v74];

  v75 = a1 + v11[11];
  if (v75[1])
  {
    v76 = 0;
  }

  else
  {
    v76 = [objc_allocWithZone(NSNumber) initWithInteger:*v75];
  }

  [v73 setMailPriority:v76];

  v77 = (a1 + v11[8]);
  v78 = *v77;
  v79 = v77[1];
  if (v79)
  {
    v80 = *v77;
    v81 = v77[1];
    v82 = sub_1004A5734();
  }

  else
  {
    v82 = 0;
  }

  v83 = v134;
  [v134 setMailMessageID:v82];

  v84 = a1 + v11[15];
  v85 = v84[16];
  if (v85 != 255)
  {
    v86 = *v84;
    v87 = *(v84 + 1);
    if (v85)
    {
      IndexingDiagnostics.unindexed.getter();
      v88 = sub_1001D9734(v86, v87);
      v90 = v89;
      v91.super.isa = sub_1004A4404().super.isa;
      sub_100014D40(v88, v90);
      v92 = &selRef_setHTMLContentData_;
    }

    else
    {
      v91.super.isa = sub_1004A5734();
      v92 = &selRef_setTextContent_;
    }

    v83 = v134;
    [v134 *v92];
  }

  sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
  v93 = sub_1004A62D4(0).super.super.isa;
  [v83 setPartiallyDownloaded:v93];

  v94 = [objc_allocWithZone(NSNumber) initWithInteger:1];
  [v83 setDataOwnerType:v94];

  v95 = [v83 accountIdentifier];
  [v83 setAccountIdentifier:v95];

  v96 = [v83 accountType];
  [v83 setAccountType:v96];

  sub_100349D40(*(a1 + v11[16]));
  if (v79)
  {
    v97 = sub_1004A5734();
  }

  else
  {
    v97 = 0;
  }

  v98 = v134;
  [v134 setMailMessageHeader:v97];

  v99 = [v98 mailboxIdentifiers];
  if (v99)
  {
    v100 = v99;
    v101 = sub_1004A5C14();

    v102 = *(v101 + 16);
    *&v135 = CSMailboxDrafts;
    v103 = (v101 + 40);
    v104 = -v102;
    v105 = -1;
    while (1)
    {
      if (v104 + v105 == -1)
      {

        *&v135 = 0xD000000000000011;
        v111 = v131;
        a1 = v132;
        v98 = v134;
        goto LABEL_61;
      }

      if (++v105 >= *(v101 + 16))
      {
        break;
      }

      v106 = *(v103 - 1);
      v107 = *v103;
      if (v106 == sub_1004A5764() && v107 == v108)
      {

LABEL_60:

        *&v135 = 0xD000000000000012;
        v111 = v131;
        a1 = v132;
        v98 = v134;
        goto LABEL_61;
      }

      v103 += 2;
      v110 = sub_1004A6D34();

      if (v110)
      {
        goto LABEL_60;
      }
    }

    __break(1u);
  }

  else
  {
    v111 = v11;
    *&v135 = 0xD000000000000011;
LABEL_61:
    v112 = v98;

    sub_1004A46D4();
    v113 = v126;
    sub_1004A46C4();
    sub_1004A46B4();
    (*(v129 + 8))(v113, v130);
    sub_100252424(_swiftEmptyArrayStorage);
    sub_1004A6264();

    v114 = *(a1 + v111[14]);
    v115 = sub_1004A5D24().super.super.isa;
    v116 = sub_1004A5734();
    [v112 setAttribute:v115 forKey:v116];

    v117 = *(a1 + v111[12]);
    v118 = sub_1004A5D24().super.super.isa;
    v119 = sub_1004A5734();
    [v112 setAttribute:v118 forKey:v119];

    v120 = *(a1 + v111[13]);
    v121 = sub_1004A5D24().super.super.isa;
    v122 = sub_1004A5734();
    [v112 setAttribute:v121 forKey:v122];
  }
}

void sub_1003499B0(unint64_t a1)
{
  v2 = HIBYTE(a1);
  v3 = (a1 >> 16) & 1;
  v4 = [objc_allocWithZone(NSNumber) initWithBool:(a1 & 1) == 0];
  [v1 setMailRead:v4];

  v5 = [objc_allocWithZone(NSNumber) initWithBool:v2 != 0];
  [v1 setMailFlagged:v5];

  v6 = [objc_allocWithZone(NSNumber) initWithBool:v3];
  [v1 setMailRepliedTo:v6];

  if (v2 > 3)
  {
    v9 = 5;
    if (v2 != 6)
    {
      v9 = 6;
    }

    v10 = 3;
    if (v2 != 4)
    {
      v10 = 4;
    }

    if (v2 <= 5)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9;
    }

    goto LABEL_15;
  }

  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    goto LABEL_15;
  }

  v7 = 0;
  v8 = 0;
  if (v2)
  {
LABEL_15:
    v8 = [objc_allocWithZone(NSNumber) initWithInteger:v7];
  }

  v11 = v8;
  [v1 setMailFlagColor:?];
}

void sub_100349B34(void *a1)
{
  v2 = v1;
  v4 = sub_1004A4374();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = [a1 URIRepresentation];
  sub_1004A4344();

  sub_1004A4284();
  v13 = *(v5 + 8);
  v13(v11, v4);
  sub_1004A42B4();
  v13(v9, v4);
  v14 = sub_1004A5734();

  if (qword_1005D8790 != -1)
  {
    swift_once();
  }

  [v2 setValue:v14 forCustomKey:qword_1005DA2A8];
}

uint64_t sub_100349CE4(uint64_t a1)
{
  v2 = type metadata accessor for PendingItem.AddMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100349D40(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D6880, &qword_1004EC500);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v48 - v4;
  v54 = sub_1004A4874();
  v6 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v53 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v50 = (v7 + 32);
    v51 = (v7 + 48);
    v49 = (v7 + 8);
    v10 = (a1 + 80);
    v11 = _swiftEmptyArrayStorage;
    v12 = _swiftEmptyArrayStorage;
    v55 = _swiftEmptyArrayStorage;
    v13 = _swiftEmptyArrayStorage;
    v52 = v5;
    do
    {
      v56 = v11;
      v14 = *(v10 - 2);
      v58[0] = *(v10 - 3);
      v58[1] = v14;
      v59 = *(v10 - 16);
      v15 = *(v10 - 1);
      if (*v10)
      {
        v16 = *(v10 - 1);
      }

      else
      {
        v16 = 0;
      }

      if (*v10)
      {
        v17 = *v10;
      }

      else
      {
        v17 = 0xE000000000000000;
      }

      sub_100270CA4(v58, v57);

      v18 = String.init(_:)(v58);
      v20 = v19;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_100085070(0, *(v13 + 2) + 1, 1, v13);
      }

      v22 = *(v13 + 2);
      v21 = *(v13 + 3);
      if (v22 >= v21 >> 1)
      {
        v13 = sub_100085070((v21 > 1), v22 + 1, 1, v13);
      }

      *(v13 + 2) = v22 + 1;
      v23 = &v13[16 * v22];
      *(v23 + 4) = v18;
      *(v23 + 5) = v20;
      v24 = v52;
      static MediaType.uniformType(filename:mimeType:)(v18, v20, v52);

      v25 = v54;
      if ((*v51)(v24, 1, v54) == 1)
      {
        sub_10028B4FC(v24);
      }

      else
      {
        (*v50)(v53, v24, v25);
        v26 = sub_1004A47E4();
        v28 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_100085070(0, *(v55 + 2) + 1, 1, v55);
        }

        v30 = *(v55 + 2);
        v29 = *(v55 + 3);
        if (v30 >= v29 >> 1)
        {
          v55 = sub_100085070((v29 > 1), v30 + 1, 1, v55);
        }

        (*v49)(v53, v54);
        v31 = v55;
        *(v55 + 2) = v30 + 1;
        v32 = &v31[16 * v30];
        *(v32 + 4) = v26;
        *(v32 + 5) = v28;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100085070(0, *(v12 + 2) + 1, 1, v12);
      }

      v34 = *(v12 + 2);
      v33 = *(v12 + 3);
      if (v34 >= v33 >> 1)
      {
        v12 = sub_100085070((v33 > 1), v34 + 1, 1, v12);
      }

      *(v12 + 2) = v34 + 1;
      v35 = &v12[16 * v34];
      *(v35 + 4) = v16;
      *(v35 + 5) = v17;
      v11 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100085070(0, *(v11 + 2) + 1, 1, v11);
      }

      v37 = *(v11 + 2);
      v36 = *(v11 + 3);
      if (v37 >= v36 >> 1)
      {
        v11 = sub_100085070((v36 > 1), v37 + 1, 1, v11);
      }

      v10 += 7;
      *(v11 + 2) = v37 + 1;
      v38 = &v11[16 * v37];
      *(v38 + 4) = 0;
      *(v38 + 5) = 0xE000000000000000;
      --v9;
    }

    while (v9);
  }

  else
  {
    v55 = _swiftEmptyArrayStorage;
  }

  isa = sub_1004A5C04().super.isa;

  v40 = sub_1004A5734();
  v41 = v48;
  [v48 setAttribute:isa forKey:v40];

  v42 = sub_1004A5C04().super.isa;

  v43 = sub_1004A5734();
  [v41 setAttribute:v42 forKey:v43];

  v44 = sub_1004A5C04().super.isa;

  v45 = sub_1004A5734();
  [v41 setAttribute:v44 forKey:v45];

  v46 = sub_1004A5C04().super.isa;

  v47 = sub_1004A5734();
  [v41 setAttribute:v46 forKey:v47];
}

void sub_10034A2C0()
{
  v0 = objc_allocWithZone(CSCustomAttributeKey);
  v1 = sub_1004A5734();
  v2 = [v0 initWithKeyName:v1 searchable:1 searchableByDefault:0 unique:1 multiValued:0];

  if (v2)
  {
    qword_1005DA2A8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_10034A3A8(int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a2;
  v8 = v5;
  v10 = _s6LoggerVMa_0(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v8 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
  sub_100351AB4(v8 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v14, _s6LoggerVMa_0);
  v16 = (v15 + *(v11 + 28));
  v17 = *v16;
  v18 = *(v16 + 1);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v19 = sub_1004A4A54();
  v20 = sub_1004A4A74();
  (*(*(v20 - 8) + 8))(v14, v20);
  v21 = sub_1004A6034();
  if (os_log_type_enabled(v19, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 68158720;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    *(v22 + 10) = v17;
    *(v22 + 11) = 1040;
    *(v22 + 13) = 8;
    *(v22 + 17) = 1024;
    *(v22 + 19) = v18;
    *(v22 + 23) = 1024;
    *(v22 + 25) = a1;
    _os_log_impl(&_mh_execute_header, v19, v21, v27, v22, 0x1Du);
  }

  v23 = *(v8 + 48);
  v24 = swift_allocObject();
  *(v24 + 16) = v8;
  *(v24 + 24) = a1;
  aBlock[4] = a4;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = a5;
  v25 = _Block_copy(aBlock);

  [v23 performBlock:v25];
  _Block_release(v25);
}

uint64_t sub_10034A618@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1003364B8(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[6 * a1];
    v10 = *(v9 + 2);
    v9 += 4;
    v11 = v9[2];
    v12 = v9[3];
    v13 = *(v9 + 8);
    v14 = *(v9 + 36);
    v15 = v9[5];
    result = memmove(v9, v9 + 6, 48 * (v7 - 1 - a1));
    v5[2] = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
    *(a2 + 36) = v14;
    *(a2 + 40) = v15;
  }

  return result;
}

size_t sub_10034A6EC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1003364E0(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for MessageBeingDownloaded(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_100351BB4(v11, a2, type metadata accessor for MessageBeingDownloaded);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10034A820(uint64_t a1, int a2, void (*a3)(uint64_t), uint64_t a4)
{
  v63 = a3;
  v62 = a4;
  v66 = a2;
  v65 = type metadata accessor for MessageBeingDownloaded(0);
  v7 = *(v65 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v65);
  v54 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v55 = &v52 - v11;
  __chkstk_darwin(v12);
  v14 = &v52 - v13;
  __chkstk_darwin(v15);
  v53 = &v52 - v16;
  __chkstk_darwin(v17);
  v58 = &v52 - v18;
  v19 = sub_10000C9C0(&qword_1005D97C8, &unk_1004F6A70);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v56 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v59 = &v52 - v23;
  __chkstk_darwin(v24);
  v60 = &v52 - v25;
  v27 = __chkstk_darwin(v26);
  v61 = &v52 - v28;
  v57 = v4;
  v29 = *v4;
  v30 = v7;
  v31 = v29[2];
  if (!v31)
  {
LABEL_12:
    v33 = v61;
    v42 = v65;
    (*(v30 + 56))(v61, 1, 1, v65, v27);
    v43 = v30;
    v44 = v64;
    v63(v33);
    if (v44)
    {
LABEL_13:
      v41 = v33;
    }

    else
    {
      v46 = v60;
      sub_10000E268(v33, v60, &qword_1005D97C8, &unk_1004F6A70);
      if ((*(v43 + 48))(v46, 1, v42) != 1)
      {
        v5 = v58;
        sub_100351BB4(v46, v58, type metadata accessor for MessageBeingDownloaded);
        if (*v5 != a1 || *(v5 + 16) != v66 || (v31 = v43, v47 = *(v5 + 8), v48 = sub_10033A5E0(), (v48 & 0x100000000) != 0) || v48 != v66)
        {
          sub_100025F40(v33, &qword_1005D97C8, &unk_1004F6A70);
          return sub_100351D64(v5, type metadata accessor for MessageBeingDownloaded);
        }

        a1 = v53;
        sub_100351AB4(v5, v53, type metadata accessor for MessageBeingDownloaded);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_22:
          v50 = v29[2];
          v49 = v29[3];
          if (v50 >= v49 >> 1)
          {
            v29 = sub_10035D8CC(v49 > 1, v50 + 1, 1, v29);
          }

          sub_100025F40(v33, &qword_1005D97C8, &unk_1004F6A70);
          v29[2] = v50 + 1;
          sub_100351BB4(a1, v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v50, type metadata accessor for MessageBeingDownloaded);
          *v57 = v29;
          return sub_100351D64(v5, type metadata accessor for MessageBeingDownloaded);
        }

LABEL_34:
        v29 = sub_10035D8CC(0, v29[2] + 1, 1, v29);
        goto LABEL_22;
      }

      sub_100025F40(v33, &qword_1005D97C8, &unk_1004F6A70);
      v41 = v46;
    }

    return sub_100025F40(v41, &qword_1005D97C8, &unk_1004F6A70);
  }

  v32 = 0;
  v52 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v33 = v29 + v52;
  while (1)
  {
    if (v32 >= v29[2])
    {
      __break(1u);
      goto LABEL_31;
    }

    v5 = *(v30 + 72) * v32;
    sub_100351AB4(v33 + v5, v14, type metadata accessor for MessageBeingDownloaded);
    if (*v14 == a1)
    {
      break;
    }

    sub_100351D64(v14, type metadata accessor for MessageBeingDownloaded);
LABEL_4:
    if (v31 == ++v32)
    {
      goto LABEL_12;
    }
  }

  v34 = *(v14 + 4);
  sub_100351D64(v14, type metadata accessor for MessageBeingDownloaded);
  if (v34 != v66)
  {
    goto LABEL_4;
  }

  if (v32 >= v29[2])
  {
LABEL_31:
    __break(1u);
LABEL_32:
    v29 = sub_1003364E0(v29);
    goto LABEL_28;
  }

  v35 = v33 + v5;
  v33 = v59;
  sub_100351AB4(v35, v59, type metadata accessor for MessageBeingDownloaded);
  a1 = v65;
  (*(v30 + 56))(v33, 0, 1, v65);
  v36 = v30;
  v37 = v64;
  v63(v33);
  if (v37)
  {
    goto LABEL_13;
  }

  v38 = v56;
  sub_10000E268(v33, v56, &qword_1005D97C8, &unk_1004F6A70);
  v39 = *(v36 + 48);
  v31 = v36 + 48;
  if (v39(v38, 1, a1) == 1)
  {
    sub_100025F40(v38, &qword_1005D97C8, &unk_1004F6A70);
    v40 = v54;
    sub_10034A6EC(v32, v54);
    sub_100351D64(v40, type metadata accessor for MessageBeingDownloaded);
    v41 = v33;
    return sub_100025F40(v41, &qword_1005D97C8, &unk_1004F6A70);
  }

  v51 = v38;
  v30 = v55;
  sub_100351BB4(v51, v55, type metadata accessor for MessageBeingDownloaded);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_28:
  sub_100025F40(v33, &qword_1005D97C8, &unk_1004F6A70);
  if (v32 >= v29[2])
  {
    __break(1u);
    goto LABEL_34;
  }

  result = sub_100331A08(v30, v29 + v52 + v5);
  *v57 = v29;
  return result;
}

uint64_t sub_10034AF00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1004A5734();
  v6 = [a1 primitiveValueForKey:v5];

  if (v6)
  {
    sub_1004A64E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (!*(&v19 + 1))
  {
    result = sub_100025F40(&v20, &qword_1005D4768, &unk_1004F5B20);
    goto LABEL_9;
  }

  sub_100351A14();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_9:
    v12 = 0;
    v13 = 0;
    goto LABEL_10;
  }

  sub_10033C238();
  v8 = v17;
  v9 = sub_1004A4414();
  v11 = v10;

  sub_100351A60();
  sub_1004A3F34();
  if (!v2)
  {

    sub_100014D40(v9, v11);

    v15 = 0;
    v14 = v20;
    v16 = v21;
    v13 = v22;
    v12 = v23 | (v24 << 32);
    goto LABEL_11;
  }

  sub_100014D40(v9, v11);

  v12 = 0;
  v13 = 0;
LABEL_10:
  v14 = 0uLL;
  v15 = 1;
  v16 = 0uLL;
LABEL_11:
  *a2 = v14;
  *(a2 + 16) = v16;
  *(a2 + 32) = v13;
  *(a2 + 40) = v12;
  *(a2 + 44) = BYTE4(v12);
  *(a2 + 45) = v15;
  return result;
}

uint64_t sub_10034B0D8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10034B130();
  }

  return result;
}

uint64_t sub_10034B130()
{
  v145 = sub_1004A4374();
  v1 = *(v145 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v145);
  v144 = &v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = _s6LoggerVMa_0(0);
  v130 = *(v142 - 8);
  v4 = *(v130 + 64);
  v5 = __chkstk_darwin(v142);
  v141 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v140 = &v120 - v8;
  v9 = __chkstk_darwin(v7);
  v128 = &v120 - v10;
  v11 = __chkstk_darwin(v9);
  v127 = &v120 - v12;
  v13 = __chkstk_darwin(v11);
  v126 = &v120 - v14;
  v15 = __chkstk_darwin(v13);
  v125 = &v120 - v16;
  v129 = v17;
  __chkstk_darwin(v15);
  v19 = &v120 - v18;
  swift_beginAccess();
  v20 = v0[18];
  v143 = v0;
  v139 = v0 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
  v131 = v19;
  v21 = v19;
  v22 = v20;
  sub_100351AB4(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v21, _s6LoggerVMa_0);
  if (v22 >> 62)
  {
    goto LABEL_87;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v138 = OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_actionLogger;

  v120 = v22;
  if (v23)
  {
    v25 = v22;
    v26 = 0;
    v22 = 0;
    v124 = v25 & 0xC000000000000001;
    v123 = v25 & 0xFFFFFFFFFFFFFF8;
    v122 = v25 + 32;
    v137 = (v1 + 8);
    p_attr = (&stru_1005CAFF8 + 8);
    *&v24 = 68158978;
    v135 = v24;
    *&v24 = 136315138;
    v134 = v24;
    v121 = v23;
    while (1)
    {
      if (v124)
      {
        v28 = sub_1004A6794();
        v29 = __OFADD__(v26, 1);
        v30 = v26 + 1;
        if (v29)
        {
          goto LABEL_75;
        }
      }

      else
      {
        if (v26 >= *(v123 + 16))
        {
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v28 = *(v122 + 8 * v26);

        v29 = __OFADD__(v26, 1);
        v30 = v26 + 1;
        if (v29)
        {
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }
      }

      v133 = v30;
      v31 = v125;
      sub_100351AB4(v131, v125, _s6LoggerVMa_0);
      v32 = v126;
      sub_100351AB4(v31, v126, _s6LoggerVMa_0);
      v33 = v127;
      sub_100351BB4(v31, v127, _s6LoggerVMa_0);
      v34 = v128;
      sub_100351AB4(v32, v128, _s6LoggerVMa_0);
      v35 = (*(v130 + 80) + 24) & ~*(v130 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = v28;
      sub_100351BB4(v34, v36 + v35, _s6LoggerVMa_0);
      sub_10000C9C0(&qword_1005DA488, &qword_1004F7710);
      v37 = swift_allocObject();
      *(v37 + 16) = sub_100351CF0;
      *(v37 + 24) = v36;

      v1 = _s6LoggerVMa_0;
      sub_100351D64(v32, _s6LoggerVMa_0);

      sub_100351D64(v33, _s6LoggerVMa_0);
      sub_10000C9C0(&qword_1005DA490, &qword_1004F7718);
      v38 = swift_allocObject();
      *(v38 + 16) = v37;

      v132 = v38;
      v0 = *(v38 + 16);
      v150 = v0;
      sub_1004A6AA4();
      v39 = __src;
      if (__src)
      {
        break;
      }

LABEL_5:
      v22 = v132;
      v26 = v133;
      if (v133 == v121)
      {
        goto LABEL_76;
      }
    }

    v1 = v154;
    v40 = v157;
    while (1)
    {
      v42 = [v39 p_attr[450]];
      v43 = [v42 isTemporaryID];

      if (!v43)
      {
        break;
      }

      v44 = sub_1004A5734();
      [v39 willAccessValueForKey:v44];

      v45 = [v39 primitiveName];
      if (v45)
      {
        v0 = v45;
        v22 = sub_1004A6294();
        v46 = sub_1004A62A4();
        v1 = sub_1004A6294();
        v47 = sub_1004A62A4();
        if (v22 < v1 || v47 < v22)
        {
          goto LABEL_78;
        }

        v1 = sub_1004A6294();
        v48 = sub_1004A62A4();
        if (v46 < v1 || v48 < v46)
        {
          goto LABEL_79;
        }

        v49 = v46 - v22;
        if (__OFSUB__(v46, v22))
        {
          goto LABEL_80;
        }

        if (v49)
        {
          if (v49 < 1)
          {
            sub_1004A6294();
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
          }

          sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
          v1 = swift_allocObject();
          v50 = j__malloc_size(v1);
          *(v1 + 16) = v49;
          *(v1 + 24) = 2 * v50 - 64;
          v51 = sub_1004A6294();
          if (v51 != sub_1004A62A4())
          {
            v52 = (v1 + 32);
            v53 = ~v22 + v46;
            while (1)
            {
              v22 = sub_1004A62B4();
              v54 = sub_1004A6294();
              v55 = sub_1004A62A4();
              if (v51 < v54 || v51 >= v55)
              {
                break;
              }

              *v52 = v22;
              if (!v53)
              {
                p_attr = (&stru_1005CAFF8 + 8);
                goto LABEL_71;
              }

              ++v52;
              ++v51;
              --v53;
              if (v51 == sub_1004A62A4())
              {
                goto LABEL_86;
              }
            }

            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

LABEL_86:

          __break(1u);
LABEL_87:
          v23 = sub_1004A6A34();
          goto LABEL_3;
        }

        v1 = _swiftEmptyArrayStorage;
LABEL_71:

        MailboxName.init(_:)(v1);
      }

      v41 = sub_1004A5734();
      [v39 didAccessValueForKey:v41];

LABEL_12:
      v0 = v150;
      sub_1004A6AA4();
      v39 = __src;
      v1 = v154;
      v40 = v157;
      if (!__src)
      {
        goto LABEL_5;
      }
    }

    v151 = v1;
    v56 = [v39 p_attr[450]];
    v57 = [v56 URIRepresentation];

    v22 = v144;
    sub_1004A4344();

    v0 = v22;
    v58 = sub_1004A42E4();
    v60 = v59;
    (*v137)(v22, v145);
    v61 = v60 >> 62;
    if ((v60 >> 62) > 1)
    {
      if (v61 != 2)
      {
        goto LABEL_57;
      }

      v1 = *(v58 + 16);
      v65 = *(v58 + 24);
      v0 = (v60 & 0x3FFFFFFFFFFFFFFFLL);
      v22 = sub_1004A40D4();
      if (v22)
      {
        v0 = (v60 & 0x3FFFFFFFFFFFFFFFLL);
        v66 = sub_1004A4104();
        if (__OFSUB__(v1, v66))
        {
          goto LABEL_83;
        }

        v22 += v1 - v66;
      }

      v29 = __OFSUB__(v65, v1);
      v1 = v65 - v1;
      if (v29)
      {
        goto LABEL_82;
      }

      v67 = sub_1004A40F4();
      v68 = v67 >= v1 ? v1 : v67;
      if (!v22 || !v68)
      {
        goto LABEL_57;
      }

      v69 = sub_10015BEAC(v68, 0);
      if (v68 <= 0)
      {
        goto LABEL_90;
      }
    }

    else
    {
      if (!v61)
      {
        __src = v58;
        LOWORD(v154) = v60;
        BYTE2(v154) = BYTE2(v60);
        HIBYTE(v154) = BYTE3(v60);
        v155 = BYTE4(v60);
        v156 = BYTE5(v60);
        if (BYTE6(v60))
        {
          sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
          v62 = swift_allocObject();
          v63 = j__malloc_size(v62);
          v62[2] = BYTE6(v60);
          v62[3] = 2 * v63 - 64;
          memcpy(v62 + 4, &__src, BYTE6(v60));
          v64 = v62;
LABEL_58:
          v73 = OpaqueMailboxID.init(rawValue:)(v64);
          rawValue = v73.rawValue._rawValue;
          hashValue = v73.hashValue;
          sub_100014D40(v58, v60);
          v76 = v139;
          v77 = v140;
          sub_100351AB4(v139, v140, _s6LoggerVMa_0);
          v78 = v76 + *(v142 + 20);
          v79 = *v78;
          v80 = *(v78 + 4);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v81 = v39;

          v82 = sub_1004A4A54();
          v83 = sub_1004A4A74();
          v84 = *(v83 - 8);
          v85 = *(v84 + 8);
          v146 = v84 + 8;
          v147 = v85;
          v85(v77, v83);
          v86 = sub_1004A6034();
          v87 = os_log_type_enabled(v82, v86);
          v88 = v151;
          v148 = v83;
          v149 = v81;
          if (v87)
          {
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v136 = v73.hashValue;
            v91 = v90;
            __src = v90;
            *v89 = v135;
            *(v89 + 4) = 2;
            *(v89 + 8) = 256;
            *(v89 + 10) = v79;
            *(v89 + 11) = 1040;
            *(v89 + 13) = 8;
            *(v89 + 17) = 1024;
            *(v89 + 19) = v80;
            *(v89 + 23) = 2048;
            *(v89 + 25) = *(v40 + 16);

            *(v89 + 33) = 2080;
            v152 = v88;
            sub_1000D40AC();
            v92 = sub_1004A5A84();
            v94 = sub_10015BA6C(v92, v93, &__src);

            *(v89 + 35) = v94;
            _os_log_impl(&_mh_execute_header, v82, v86, "[%.*hhx-%.*X] Sending deferred messages-to-download reply with %ld message(s). (%s)", v89, 0x2Bu);
            sub_1000197E0(v91);
            rawValue = v73.rawValue._rawValue;
            hashValue = v136;
          }

          else
          {
          }

          v95 = swift_allocObject();
          *(v95 + 16) = rawValue;
          *(v95 + 24) = hashValue;
          *(v95 + 32) = 0;
          v96 = *(v40 + 16);
          if (v96)
          {
            __src = _swiftEmptyArrayStorage;
            sub_100091FA8(0, v96, 0);
            v97 = 0;
            v98 = __src;
            v99 = __src[2];
            v100 = 3 * v99;
            do
            {
              v101 = *(v40 + v97 + 32);
              v102 = *(v40 + v97 + 40);
              v103 = *(v40 + v97 + 48);
              __src = v98;
              v104 = v98[3];
              v105 = v99 + 1;
              if (v99 >= v104 >> 1)
              {
                sub_100091FA8((v104 > 1), v99 + 1, 1);
                v98 = __src;
              }

              v98[2] = v105;
              v106 = &v98[v100 + v97 / 8];
              *(v106 + 8) = v101;
              v106[5] = v102;
              *(v106 + 48) = v103;
              *(v106 + 49) = 1;
              v97 += 24;
              v99 = v105;
              --v96;
            }

            while (v96);
            v88 = v151;
          }

          else
          {
            v98 = _swiftEmptyArrayStorage;
          }

          *(v95 + 40) = v98;
          v107 = v143;
          v109 = v143[11];
          v108 = v143[12];
          v109(v95 | 0x6000000000000000, 1);

          v110 = v107 + v138;
          v111 = v141;
          sub_100351AB4(v110, v141, _s6LoggerVMa_0);
          v112 = sub_1004A4A54();
          v147(v111, v148);
          v113 = sub_1004A6034();
          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            v115 = swift_slowAlloc();
            __src = v115;
            *v114 = v134;
            v152 = v88;
            sub_1000D40AC();
            v116 = sub_1004A5A84();
            v118 = sub_10015BA6C(v116, v117, &__src);

            *(v114 + 4) = v118;
            _os_log_impl(&_mh_execute_header, v112, v113, "%s <- complete", v114, 0xCu);
            sub_1000197E0(v115);
          }

          v41 = v149;
          v109(v88, 0);

          p_attr = &stru_1005CAFF8.attr;
          goto LABEL_12;
        }

LABEL_57:
        v64 = _swiftEmptyArrayStorage;
        goto LABEL_58;
      }

      v1 = (v58 >> 32) - v58;
      if (v58 >> 32 < v58)
      {
        goto LABEL_81;
      }

      v22 = sub_1004A40D4();
      if (v22)
      {
        v0 = (v60 & 0x3FFFFFFFFFFFFFFFLL);
        v70 = sub_1004A4104();
        if (__OFSUB__(v58, v70))
        {
          goto LABEL_84;
        }

        v22 += v58 - v70;
      }

      v71 = sub_1004A40F4();
      if (v71 >= v1)
      {
        v68 = (v58 >> 32) - v58;
      }

      else
      {
        v68 = v71;
      }

      if (!v22 || !v68)
      {
        goto LABEL_57;
      }

      v69 = sub_10015BEAC(v68, 0);
      if (v68 <= 0)
      {
        goto LABEL_89;
      }
    }

    v72 = v69;
    memmove(v69 + 32, v22, v68);
    v64 = v72;
    goto LABEL_58;
  }

LABEL_76:

  return sub_100351D64(v131, _s6LoggerVMa_0);
}

uint64_t sub_10034BFE4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  v6 = *(v0 + 96);

  v7 = *(v0 + 104);
  swift_unknownObjectRelease();
  v8 = *(v0 + 120);

  v9 = *(v0 + 128);

  v10 = *(v0 + 136);

  v11 = *(v0 + 144);

  v12 = *(v0 + 152);

  sub_100351D64(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, _s6LoggerVMa_0);
  sub_100351D64(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_actionLogger, _s6LoggerVMa_0);
  return v0;
}

uint64_t sub_10034C0B0()
{
  sub_10034BFE4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchIndexPersistence()
{
  result = qword_1005DA2E0;
  if (!qword_1005DA2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10034C15C()
{
  result = _s6LoggerVMa_0(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10034C254(unint64_t a1)
{
  v2 = v1;
  v4 = _s6LoggerVMa_0(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 80);

  os_unfair_lock_lock(v8 + 5);
  os_unfair_lock_opaque = v8[4]._os_unfair_lock_opaque;
  v8[4]._os_unfair_lock_opaque = (os_unfair_lock_opaque + 1) & 0xFFFFFF;
  os_unfair_lock_unlock(v8 + 5);

  sub_100351AB4(v2 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_actionLogger, v7, _s6LoggerVMa_0);
  sub_10011D8FC(a1);
  v10 = sub_1004A4A54();
  v11 = sub_1004A4A74();
  (*(*(v11 - 8) + 8))(v7, v11);
  v12 = sub_1004A6034();
  sub_100020EDC(a1);
  if (os_log_type_enabled(v10, v12))
  {
    v13 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v13 = 136315394;
    v25[3] = os_unfair_lock_opaque;
    sub_1000D40AC();
    v14 = sub_1004A5A84();
    v16 = sub_10015BA6C(v14, v15, aBlock);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    v17 = Action.kind.getter(a1);
    v18 = Action.Kind.description.getter(v17);
    v20 = sub_10015BA6C(v18, v19, aBlock);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v10, v12, "%s -> %{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v21 = *(v2 + 48);
  v22 = swift_allocObject();
  *(v22 + 16) = v2;
  *(v22 + 24) = a1;
  *(v22 + 32) = os_unfair_lock_opaque;
  aBlock[4] = sub_10034C6A4;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B5018;
  v23 = _Block_copy(aBlock);
  sub_10011D8FC(a1);

  [v21 performBlock:v23];
  _Block_release(v23);
  return os_unfair_lock_opaque;
}

uint64_t sub_10034C56C(uint64_t a1, int a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 20) = 0;
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);
  v5(v4 | 0x1000000000000004, 1);
}

uint64_t sub_10034C5E8(uint64_t a1, int a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);
  v5(v4 | 0x1000000000000000, 1);
}

uint64_t sub_10034C664()
{
  v1 = *(v0 + 16);

  sub_100020EDC(*(v0 + 24));

  return _swift_deallocObject(v0, 36, 7);
}

uint64_t sub_10034C6A4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  return sub_10034C6E8(v1, v2);
}

uint64_t sub_10034C6D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10034C6E8(unint64_t a1, unsigned int a2)
{
  v3 = v2;
  v41 = _s6LoggerVMa_0(0);
  v6 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  __chkstk_darwin(v7);
  v40 = &v35 - v8;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v39 = OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_actionLogger;
  sub_100351AB4(v2 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_actionLogger, &v35 - v10, _s6LoggerVMa_0);
  v12 = sub_1004A4A54();
  v13 = sub_1004A4A74();
  v14 = *(*(v13 - 8) + 8);
  v14(v11, v13);
  v15 = sub_1004A6034();
  if (os_log_type_enabled(v12, v15))
  {
    v16 = swift_slowAlloc();
    v38 = v3;
    v17 = v16;
    v37 = swift_slowAlloc();
    v43[0] = v37;
    *v17 = 136315138;
    v42 = a2;
    sub_1000D40AC();
    v18 = sub_1004A5A84();
    v36 = v12;
    v20 = v14;
    v21 = a2;
    v22 = sub_10015BA6C(v18, v19, v43);

    *(v17 + 4) = v22;
    a2 = v21;
    v14 = v20;
    v23 = v36;
    _os_log_impl(&_mh_execute_header, v36, v15, "%s -- on context", v17, 0xCu);
    sub_1000197E0(v37);

    v3 = v38;
  }

  else
  {
  }

  sub_10034CCC8(a1, a2);
  if (v24)
  {
    v25 = v40;
    sub_100351AB4(v3 + v39, v40, _s6LoggerVMa_0);
    v26 = sub_1004A4A54();
    v14(v25, v13);
    v27 = sub_1004A6034();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v43[0] = v29;
      *v28 = 136315138;
      v42 = a2;
      sub_1000D40AC();
      v30 = sub_1004A5A84();
      v32 = sub_10015BA6C(v30, v31, v43);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "%s -- async", v28, 0xCu);
      sub_1000197E0(v29);
    }
  }

  else
  {
    sub_10034F078(a2);
  }

  v33 = *(v3 + 64);
  return sub_100309448();
}

void sub_10034CCC8(unint64_t a1, int a2)
{
  LODWORD(v433) = a2;
  v3 = type metadata accessor for Activity(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v430 = &v420 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MessageSectionData(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v431 = &v420 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v421 = _s6LoggerVMa_0(0);
  v9 = *(*(v421 - 8) + 64);
  __chkstk_darwin(v421);
  v422 = &v420 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s11QueuedItemsV4ItemVMa();
  v435 = *(v11 - 8);
  v12 = *(v435 + 64);
  __chkstk_darwin(v11 - 8);
  v434 = &v420 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v423 = _s5StateV7RequestVMa(0);
  v14 = *(*(v423 - 8) + 64);
  __chkstk_darwin(v423);
  v424 = (&v420 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v426 = &v420 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v425 = &v420 - v20;
  __chkstk_darwin(v21);
  v432 = &v420 - v22;
  __chkstk_darwin(v23);
  v427 = &v420 - v24;
  v25 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v428 = *(v25 - 8);
  v26 = *(v428 + 64);
  __chkstk_darwin(v25);
  v28 = &v420 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v429 = &v420 - v30;
  v31 = sub_10000C9C0(&qword_1005DA3F0, &qword_1004F7668);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v34 = &v420 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v420 - v36;
  __chkstk_darwin(v38);
  v40 = &v420 - v39;
  v41 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41 - 8);
  v44 = &v420 - v43;
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 1uLL:
      v187 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v189 = v436[14];
      v188 = v436[15];

      v189(v190);
      goto LABEL_100;
    case 2uLL:
    case 5uLL:
    case 0xEuLL:
    case 0x10uLL:
    case 0x1BuLL:
    case 0x21uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x2AuLL:
      return;
    case 3uLL:
      v93 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v95 = v436;
      v96 = v480;
      v97 = sub_10035276C(v94);
      if (v96)
      {
        goto LABEL_100;
      }

      v98 = v97;
      v480 = 0;

      v99 = swift_allocObject();
      *(v99 + 16) = v98;
      v101 = v95[11];
      v100 = v95[12];

      (v101)(v99 | 0x2000000000000000, 1);

      v102 = *(v98 + 16);
      if (v102)
      {
        v435 = v100;
        v436 = v101;
        v443[0] = _swiftEmptyArrayStorage;
        sub_1000923A8(0, v102, 0);
        v103 = v443[0];
        v434 = v98;
        v104 = (v98 + 40);
        do
        {
          v105 = *(v104 - 1);
          v106 = *v104;
          v443[0] = v103;
          v108 = v103[2];
          v107 = v103[3];

          if (v108 >= v107 >> 1)
          {
            sub_1000923A8((v107 > 1), v108 + 1, 1);
            v103 = v443[0];
          }

          v104 += 12;
          v103[2] = v108 + 1;
          v109 = &v103[2 * v108];
          v109[4] = v105;
          v109[5] = v106;
          --v102;
        }

        while (v102);

        v101 = v436;
      }

      else
      {

        v103 = _swiftEmptyArrayStorage;
      }

      v391 = swift_allocObject();
      *(v391 + 16) = _swiftEmptySetSingleton;
      *(v391 + 24) = v103;
      (v101)(v391 | 0x2000000000000004, 1);
      goto LABEL_145;
    case 4uLL:
      v131 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v132 = _swiftEmptyArrayStorage;
      v440 = _swiftEmptyArrayStorage;
      v133 = 1 << *(v131 + 32);
      v134 = -1;
      if (v133 < 64)
      {
        v134 = ~(-1 << v133);
      }

      v135 = v134 & *(v131 + 56);
      v136 = (v133 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v137 = 0;
      while (2)
      {
        if (v135)
        {
          goto LABEL_38;
        }

LABEL_34:
        v138 = v137 + 1;
        if (__OFADD__(v137, 1))
        {
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_163:

          [a1 didAccessValueForKey:sub_1004A5734()];
          __break(1u);
          goto LABEL_164;
        }

        if (v138 < v136)
        {
          v135 = *(v131 + 56 + 8 * v138);
          ++v137;
          if (v135)
          {
            v137 = v138;
LABEL_38:
            v139 = *(v131 + 48) + ((v137 << 10) | (16 * __clz(__rbit64(v135))));
            a1 = *v139;
            LODWORD(v139) = *(v139 + 8);
            v443[0] = a1;
            LODWORD(v443[1]) = v139;

            v140 = v480;
            sub_10034F258(v443, v436, &v437);
            v480 = v140;

            if (v437)
            {
              sub_1004A5BF4();
              if (*((v440 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v440 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v141 = *((v440 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_1004A5C44();
              }

              a1 = &v440;
              sub_1004A5C84();
              v132 = v440;
            }

            v135 &= v135 - 1;
            continue;
          }

          goto LABEL_34;
        }

        break;
      }

      sub_1003530B8(v132);
LABEL_100:

      return;
    case 6uLL:
      v191 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v192 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      LODWORD(v435) = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v193 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x24);
      v194 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x28);
      v195 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v433 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x38);
      v434 = v194;
      v196 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v197 = v436;
      v198 = v436[6];
      v199 = v480;
      v200 = sub_10032F358(v191, v192);
      v480 = v199;
      if (!v199)
      {
        v336 = v200;
        (*(v428 + 56))(v44, 1, 1, v25);
        sub_10030B530(v336, v44, v197[8]);
        sub_100025F40(v44, &qword_1005CD518, &qword_1004CF2F0);
        LOBYTE(v443[0]) = v193;
        LOBYTE(v440) = v195;
        LOBYTE(v437) = v196;
        v439 = 1;
        LODWORD(v462) = v435;
        BYTE4(v462) = v193;
        *(&v462 + 1) = v434;
        v463 = v195;
        v464 = v433;
        v465 = v196;
        v466 = 0;
        v467 = 1;
        sub_10033BB90(&v462);
      }

      return;
    case 7uLL:
      v125 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v126 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v127 = v436[6];

      v129 = v480;
      v130 = sub_10032F358(v128, v126);
      if (v129)
      {
        goto LABEL_100;
      }

      v325 = v130;
      v326 = sub_1004A5734();
      [v325 willAccessValueForKey:v326];

      sub_10034AF00(v325, v444);
      v327 = v444[4];
      v328 = v445;
      v329 = v446;
      v330 = sub_1004A5734();
      [v325 didAccessValueForKey:v330];

      v480 = 0;
      if (v447)
      {
        goto LABEL_100;
      }

      v443[0] = v327;
      LODWORD(v443[1]) = v328;
      if (v329)
      {
        goto LABEL_100;
      }

      v331 = HIDWORD(v443[0]);
      v332 = v443[1];
      v333 = swift_allocObject();
      *(v333 + 16) = v125;
      *(v333 + 24) = v126;
      *(v333 + 32) = v331;
      *(v333 + 36) = v332;
      v334 = v436[12];
      (v436[11])(v333 | 0x4000000000000000, 1);
      goto LABEL_145;
    case 8uLL:
      v251 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v252 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v253 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v254 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x28);
      v255 = v436[6];
      v256 = v480;
      v257 = sub_10032F358(v251, v252);
      if (v256)
      {
        return;
      }

      a1 = v257;
      v436 = v253;
      v258 = sub_1004A5734();
      [a1 willAccessValueForKey:v258];

      sub_10034AF00(a1, v448);
      v480 = 0;
      v259 = v448[0];
      v260 = v448[1];
      v262 = v449;
      v261 = v450;
      v263 = v451;
      v264 = sub_1004A5734();
      [a1 didAccessValueForKey:v264];

      if (v452)
      {
        LODWORD(v259) = 0;
        v260 = 0;
        v261 = 0;
        LOBYTE(v265) = 1;
        LOBYTE(v443[0]) = 1;
        LOBYTE(v440) = 1;
        LOBYTE(v437) = 1;
        v262 = 1;
        v263 = 1;
      }

      else
      {
        v265 = HIDWORD(v259) & 1;
      }

      LOBYTE(v443[0]) = v265;
      LOBYTE(v440) = v262 & 1;
      LOBYTE(v437) = v263 & 1;
      v439 = v254;
      LODWORD(v468) = v259;
      BYTE4(v468) = v265;
      *(&v468 + 1) = v260;
      v469 = v262 & 1;
      v470 = v261;
      v471 = v263 & 1;
      v472 = v436;
      v473 = v254;
      sub_10033BB90(&v468);
      goto LABEL_53;
    case 9uLL:
      v266 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v267 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v268 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v434 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x28);
      v435 = v268;
      v433 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v269 = v436[6];

      v271 = v480;
      v272 = sub_10032F358(v270, v267);
      if (v271)
      {
        goto LABEL_100;
      }

      v432 = v267;
      v339 = v272;
      sub_1003533D8(v40, v272, v435, v434, v433);
      v480 = 0;
      v393 = v392;

      *&v40[*(v31 + 48)] = v393;
      v394 = sub_10000C9C0(&qword_1005CDA40, &qword_1004CF7A0);
      v435 = swift_allocBox();
      v396 = v395;
      v397 = *(v394 + 48);
      v398 = *(v394 + 64);
      v399 = v432;
      *v395 = v266;
      v395[1] = v399;
      sub_10000E268(v40, v37, &qword_1005DA3F0, &qword_1004F7668);
      sub_100020950(v37, v396 + v397);
      sub_10000E268(v40, v34, &qword_1005DA3F0, &qword_1004F7668);
      *(v396 + v398) = *&v34[*(v31 + 48)];
      v400 = v436[12];
      (v436[11])(v435 | 0x4000000000000004, 1);

      sub_100025F40(v40, &qword_1005DA3F0, &qword_1004F7668);
      v382 = &unk_1005D91B0;
      v383 = &unk_1004CF400;
      v381 = v34;
      goto LABEL_156;
    case 0xAuLL:
      v83 = sub_10000C9C0(&qword_1005CD538, &qword_1004CF310);
      v84 = swift_projectBox();
      v85 = *v84;
      v86 = v84[1];
      v87 = v429;
      sub_10000E268(v84 + *(v83 + 48), v429, &qword_1005CD1D0, &unk_1004CF2C0);
      v88 = v436;
      v89 = v436[6];

      v91 = v480;
      v92 = sub_10032F358(v90, v86);
      if (v91)
      {
        sub_100025F40(v87, &qword_1005CD1D0, &unk_1004CF2C0);
        goto LABEL_100;
      }

      v323 = v427;
      v324 = v92;
      sub_1003538F0();
      v480 = 0;

      v384 = sub_10000C9C0(&qword_1005CD4F8, &unk_1004CF790);
      v385 = swift_allocBox();
      v387 = v386;
      v388 = *(v384 + 48);
      v389 = *(v384 + 64);
      *v386 = v85;
      v386[1] = v86;
      sub_10000E268(v323, v386 + v388, &unk_1005D91B0, &unk_1004CF400);
      v122 = &qword_1005CD1D0;
      v123 = &unk_1004CF2C0;
      sub_10000E268(v87, v387 + v389, &qword_1005CD1D0, &unk_1004CF2C0);
      v390 = v88[12];
      (v88[11])(v385 | 0x5000000000000000, 1);

      sub_100025F40(v323, &unk_1005D91B0, &unk_1004CF400);
      v381 = v87;
LABEL_142:
      v382 = v122;
      v383 = v123;
      goto LABEL_156;
    case 0xBuLL:
      v216 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v217 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v218 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v219 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x28);
      v220 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v221 = v436[6];
      v222 = v480;
      v223 = sub_10032F358(v216, v217);
      if (v222)
      {
        return;
      }

      v480 = 0;
      v224 = v223;
      sub_100353C00(v223, v218, v219, v220);
      goto LABEL_84;
    case 0xCuLL:
      v225 = sub_10000C9C0(&qword_1005CD530, &unk_1004D40A0);
      v226 = swift_projectBox();
      v227 = *v226;
      v228 = v226[1];
      sub_10000E268(v226 + *(v225 + 48), v28, &qword_1005CD1D0, &unk_1004CF2C0);
      v229 = v436;
      v230 = v436[6];

      v232 = v480;
      v233 = sub_10032F358(v231, v228);
      v480 = v232;
      if (v232)
      {
        sub_100025F40(v28, &qword_1005CD1D0, &unk_1004CF2C0);

        return;
      }

      v337 = v233;

      sub_10000E268(v28, v44, &qword_1005CD1D0, &unk_1004CF2C0);
      (*(v428 + 56))(v44, 0, 1, v25);
      sub_10030B530(v337, v44, v229[8]);

      sub_100025F40(v44, &qword_1005CD518, &qword_1004CF2F0);
      v381 = v28;
      v382 = &qword_1005CD1D0;
      v383 = &unk_1004CF2C0;
      goto LABEL_156;
    case 0xDuLL:
      v273 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v274 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v275 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v276 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x28);
      v277 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v278 = v436[6];
      v279 = v480;
      v280 = sub_10032F358(v273, v274);
      if (v279)
      {
        return;
      }

      v480 = 0;
      v224 = v280;
      sub_10035434C(v280, v275, v276, v277);
LABEL_84:

      return;
    case 0xFuLL:
      v313 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v314 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v315 = v436[6];
      v316 = v480;
      v48 = sub_10032F358(v313, v314);
      if (v316)
      {
        return;
      }

      v480 = 0;
      goto LABEL_97;
    case 0x11uLL:
      v45 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v46 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v164 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v165 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x28);
      v166 = v436[6];
      v167 = sub_10032EB08(v436[2], v436[3], v45, v46);
      if (!v167)
      {
        goto LABEL_50;
      }

      a1 = v167;
      LODWORD(v435) = v165;
      v436 = v164;
      v168 = sub_1004A5734();
      [a1 willAccessValueForKey:v168];

      v169 = v480;
      sub_10034AF00(a1, v453);
      v480 = v169;
      if (v169)
      {
        goto LABEL_163;
      }

      v170 = v453[0];
      v171 = v453[1];
      v172 = v454;
      v173 = v455;
      v174 = v457;
      v175 = v456;
      v176 = sub_1004A5734();
      [a1 didAccessValueForKey:v176];

      if (v458)
      {
        v177 = 0;
        LODWORD(v170) = 0;
        v171 = 0;
        LOBYTE(v178) = 1;
        LOBYTE(v443[0]) = 1;
        LOBYTE(v440) = 1;
        LOBYTE(v437) = 1;
        v172 = 1;
        LOBYTE(v179) = 1;
      }

      else
      {
        v443[0] = v173;
        LODWORD(v443[1]) = v175;
        v177 = *(v443 + 4);
        v178 = HIDWORD(v170) & 1;
        v179 = ((v175 | (v174 << 32)) >> 32) & 1;
      }

      LOBYTE(v440) = v178;
      LOBYTE(v437) = v172 & 1;
      v439 = v435;
      v438 = v179;
      LODWORD(v474) = v170;
      BYTE4(v474) = v178;
      *(&v474 + 1) = v171;
      v475 = v172 & 1;
      v476 = v436;
      v477 = v435;
      v478 = v177;
      v479 = v179;
      sub_10033BB90(&v474);
      goto LABEL_53;
    case 0x12uLL:
      v152 = sub_10000C9C0(&qword_1005CEE60, &unk_1004D1AC0);
      v153 = swift_projectBox();
      v154 = *v153;
      v155 = *(v153 + 8);
      v156 = *(v153 + 16);
      v157 = *(v153 + *(v152 + 96));
      v158 = v432;
      sub_10000E268(v153 + *(v152 + 64), v432, &unk_1005D91B0, &unk_1004CF400);
      v159 = v436;
      v160 = v436[6];

      v162 = v480;
      v163 = sub_10032F358(v161, v155);
      if (v162)
      {
        sub_100025F40(v158, &unk_1005D91B0, &unk_1004CF400);
        goto LABEL_100;
      }

      v480 = 0;
      if (v156)
      {

        v335 = _swiftEmptyArrayStorage;
LABEL_155:
        v417 = swift_allocObject();
        *(v417 + 16) = v154;
        *(v417 + 24) = v155;
        *(v417 + 32) = v156;
        *(v417 + 40) = v335;
        v419 = v159[11];
        v418 = v159[12];

        v419(v417 | 0x6000000000000000, 1);

        sub_100351888(v335, 0, 0, 0, 1);
        v382 = &unk_1005D91B0;
        v383 = &unk_1004CF400;
        v381 = v158;
LABEL_156:
        sub_100025F40(v381, v382, v383);
        return;
      }

      LODWORD(v427) = v156;
      v428 = v155;
      v431 = v154;
      v341 = v159[9];
      v342 = v163;
      swift_beginAccess();
      v430 = v342;
      v343 = sub_100334C28(v342, v341);
      swift_endAccess();
      v429 = v159 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
      v345 = v423;
      v344 = v424;
      sub_10000E268(v158, v424 + *(v423 + 20), &unk_1005D91B0, &unk_1004CF400);
      *v344 = v433;
      *(v344 + *(v345 + 24)) = v157;
      v346 = *(v343 + 24);
      swift_beginAccess();
      v347 = *(v346 + 48);

      os_unfair_lock_lock((v347 + 48));
      a1 = *(v347 + 16);
      v349 = *(a1 + 24);
      v348 = *(a1 + 32);
      if (*(a1 + 16) >= v348 + v349)
      {
        v350 = v348 + v349;
      }

      else
      {
        v350 = *(a1 + 16);
      }

      v351 = (*(v435 + 80) + 40) & ~*(v435 + 80);
      v440 = *(v347 + 16);
      v441 = v348;
      v442 = v350;

      v352 = 0;
      while (2)
      {
        v353 = v348 == v350;
        v354 = v434;
        if (!v353)
        {
          goto LABEL_130;
        }

        if (sub_1002D98D4())
        {
          a1 = v440;
          v348 = v441;
LABEL_130:
          v441 = v348 + 1;
          sub_100351AB4(a1 + v351 + *(v435 + 72) * v348, v354, _s11QueuedItemsV4ItemVMa);
          v355 = *(v354 + *(type metadata accessor for PendingItem(0) + 28));
          v356 = __OFADD__(v352, v355);
          v352 += v355;
          if (v356)
          {
            goto LABEL_160;
          }

          sub_100351D64(v354, _s11QueuedItemsV4ItemVMa);
          v350 = v442;
          ++v348;
          continue;
        }

        break;
      }

      os_unfair_lock_unlock((v347 + 48));

      swift_beginAccess();

      v357 = v424;
      v358 = v429;
      sub_10033913C(v424, v349, 457, v352, 80000000, v429, (v343 + 40), v343, &v459);
      v359 = v459;
      swift_endAccess();

      sub_100351D64(v357, _s5StateV7RequestVMa);

      if (v461)
      {
        v440 = v359;

        v360 = v480;
        sub_100350364(&v440);
        if (!v360)
        {
          v480 = 0;
          v361 = v440;
          v362 = *(v440 + 16);
          if (v362)
          {
            v440 = _swiftEmptyArrayStorage;
            v435 = v361;
            sub_100091FA8(0, v362, 0);
            v363 = v435;
            v364 = 0;
            v335 = v440;
            v365 = *(v440 + 16);
            v366 = 24 * v365;
            do
            {
              v367 = *(v363 + v364 + 32);
              v368 = *(v363 + v364 + 40);
              v369 = *(v363 + v364 + 48);
              v440 = v335;
              v370 = *(v335 + 3);
              v371 = v365 + 1;
              if (v365 >= v370 >> 1)
              {
                v373 = v366;
                sub_100091FA8((v370 > 1), v365 + 1, 1);
                v366 = v373;
                v363 = v435;
                v335 = v440;
              }

              *(v335 + 2) = v371;
              v372 = &v335[v366 + v364];
              *(v372 + 8) = v367;
              *(v372 + 5) = v368;
              v372[48] = v369;
              v372[49] = 1;
              v364 += 24;
              v365 = v371;
              --v362;
            }

            while (v362);

            sub_100351894(&v459);
          }

          else
          {

            sub_100351894(&v459);
            v335 = _swiftEmptyArrayStorage;
          }

          v159 = v436;
          v154 = v431;
          v158 = v432;
          v155 = v428;
          LOBYTE(v156) = v427;
          goto LABEL_155;
        }

LABEL_164:

        __break(1u);
        JUMPOUT(0x10034EFC4);
      }

      v401 = *(&v459 + 1);
      v402 = v460;

      v403 = v422;
      sub_100351AB4(v358, v422, _s6LoggerVMa_0);
      v404 = v358 + *(v421 + 20);
      v405 = *v404;
      v406 = *(v404 + 4);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v407 = sub_1004A4A54();
      v408 = sub_1004A4A74();
      (*(*(v408 - 8) + 8))(v403, v408);
      v409 = sub_1004A6034();
      if (os_log_type_enabled(v407, v409))
      {
        v410 = swift_slowAlloc();
        v411 = swift_slowAlloc();
        v436 = v401;
        v412 = v411;
        v440 = v411;
        *v410 = 68159490;
        *(v410 + 4) = 2;
        *(v410 + 8) = 256;
        *(v410 + 10) = v405;
        *(v410 + 11) = 1040;
        *(v410 + 13) = 8;
        *(v410 + 17) = 1024;
        *(v410 + 19) = v406;
        *(v410 + 23) = 2080;
        LODWORD(v437) = v433;
        sub_1000D40AC();
        v413 = sub_1004A5A84();
        v415 = sub_10015BA6C(v413, v414, &v440);

        *(v410 + 25) = v415;
        *(v410 + 33) = 2048;
        *(v410 + 35) = v359;
        *(v410 + 43) = 2048;
        *(v410 + 45) = v436;
        *(v410 + 53) = 1024;
        if (v402 == v402)
        {
          v416 = v402;
        }

        else
        {
          v416 = 0;
        }

        *(v410 + 55) = v416;
        _os_log_impl(&_mh_execute_header, v407, v409, "[%.*hhx-%.*X] (%s) Deferring returning messages-to-download. Queue is full: %ld of %ld items, queued memory pressure %{iec-bytes}d", v410, 0x3Bu);
        sub_1000197E0(v412);
      }

      sub_100025F40(v432, &unk_1005D91B0, &unk_1004CF400);
      return;
    case 0x13uLL:
      v51 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v52 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v53 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v54 = v436;
      v55 = v436[6];

      v57 = v480;
      v58 = sub_10032F358(v56, v52);
      if (v57)
      {
        goto LABEL_100;
      }

      v59 = v58;
      v60 = v425;
      sub_1003546E4(v58, v53, v425);
      v480 = 0;

      v374 = sub_10000C9C0(&qword_1005CDC20, &qword_1004CF9E8);
      v375 = swift_allocBox();
      v377 = v376;
      v378 = *(v374 + 48);
      v379 = *(v374 + 64);
      *v376 = v51;
      v376[1] = v52;
      sub_10000E268(v60, v376 + v378, &unk_1005D91B0, &unk_1004CF400);
      *(v377 + v379) = v53;
      v380 = v54[12];
      (v54[11])(v375 | 0x5000000000000004, 1);

      v381 = v60;
      v382 = &unk_1005D91B0;
      v383 = &unk_1004CF400;
      goto LABEL_156;
    case 0x14uLL:
      v61 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v62 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v63 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x1C);
      v64 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v65 = v436;
      v66 = v436[6];
      v67 = v436[2];
      v68 = v436[3];

      v69 = sub_10032EB08(v67, v68, v61, v62);
      if (!v69)
      {
        goto LABEL_91;
      }

      v70 = v69;
      sub_10000C9C0(&qword_1005CF0B0, &unk_1004D1FB0);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_1004CEAA0;
      *(v71 + 32) = _swiftEmptyArrayStorage;

      v72 = swift_allocObject();
      *(v72 + 16) = v61;
      *(v72 + 24) = v62;
      *(v72 + 28) = v63;
      *(v72 + 32) = v64;
      *(v72 + 40) = v71;
      *(v72 + 48) = 0;
      v73 = v65[12];
      (v65[11])(v72 | 0x6000000000000004, 1);
      goto LABEL_145;
    case 0x15uLL:
      v281 = swift_projectBox();
      v61 = *v281;
      v62 = *(v281 + 8);
      v282 = v436[6];
      v283 = v436[2];
      v284 = v436[3];

      v285 = sub_10032EB08(v283, v284, v61, v62);
      if (!v285)
      {
        goto LABEL_91;
      }

      goto LABEL_115;
    case 0x16uLL:
      v302 = swift_projectBox();
      v303 = v431;
      sub_100351AB4(v302, v431, type metadata accessor for MessageSectionData);
      v304 = *v303;
      v305 = *(v303 + 8);
      v306 = v436;
      v307 = v436[6];
      v308 = sub_10032EB08(v436[2], v436[3], *v303, v305);
      if (v308)
      {
        v309 = v308;
        v310 = *(v303 + 12);
        __chkstk_darwin(v308);
        *(&v420 - 4) = v303;
        *(&v420 - 3) = v306;
        *(&v420 - 2) = v311;
        swift_beginAccess();
        v312 = v480;
        sub_10034A820(v309, v310, sub_10035180C, (&v420 - 6));
        if (!v312)
        {
          v480 = 0;
          swift_endAccess();

          v144 = type metadata accessor for MessageSectionData;
          v145 = v303;
LABEL_42:
          sub_100351D64(v145, v144);
          return;
        }

        swift_endAccess();
      }

      else
      {
        sub_10034F4FC();
        swift_allocError();
        *v340 = v304;
        *(v340 + 8) = v305;
        swift_willThrow();
      }

      sub_100351D64(v303, type metadata accessor for MessageSectionData);
      return;
    case 0x17uLL:
      v234 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v235 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v236 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v237 = v436;
      v238 = v436[6];
      v239 = sub_10032EB08(v436[2], v436[3], v234, v235);
      if (!v239)
      {
        sub_10034F4FC();
        swift_allocError();
        *v338 = v234;
        *(v338 + 8) = v235;
        swift_willThrow();

        return;
      }

      v240 = v239;
      swift_beginAccess();

      a1 = v240;
      v241 = v480;
      sub_100330BD4(a1, v236, (v237 + 16), v237, v236, a1);
      v480 = v241;
      if (!v241)
      {
        swift_endAccess();
LABEL_53:

        return;
      }

      swift_endAccess();
      __break(1u);
      goto LABEL_163;
    case 0x18uLL:
      v181 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v182 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v183 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v184 = v436[6];
      v185 = v480;
      v186 = sub_10032F358(v181, v182);
      if (v185)
      {
        return;
      }

      a1 = v186;
      sub_10035A590(v186, v183);
      v480 = 0;
      goto LABEL_53;
    case 0x19uLL:
      v242 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v243 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v244 = v436;
      v245 = v436[6];

      v247 = v480;
      v248 = sub_10032F358(v246, v243);
      if (v247)
      {
        goto LABEL_100;
      }

      v480 = 0;

      v249 = swift_allocObject();
      *(v249 + 16) = v242;
      *(v249 + 24) = v243;
      *(v249 + 32) = _swiftEmptyArrayStorage;
      *(v249 + 40) = 1;
      v250 = v244[12];
      (v244[11])(v249 | 0x8000000000000000, 1);
      goto LABEL_145;
    case 0x1AuLL:
      v110 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v111 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v112 = v436;
      v113 = v436[6];

      v115 = v480;
      v116 = sub_10032F358(v114, v111);
      if (v115)
      {
        goto LABEL_100;
      }

      v480 = 0;

      sub_100016D2C();
      v117 = v426;
      sub_1004A7114();
      v118 = sub_10000C9C0(&qword_1005D22E8, &unk_1004DA480);
      v119 = swift_allocBox();
      v120 = *(v118 + 48);
      *v121 = v110;
      v121[1] = v111;
      v122 = &unk_1005D91B0;
      v123 = &unk_1004CF400;
      sub_10000E268(v117, v121 + v120, &unk_1005D91B0, &unk_1004CF400);
      v124 = v112[12];
      (v112[11])(v119 | 0x8000000000000004, 1);

      v381 = v117;
      goto LABEL_142;
    case 0x1CuLL:
      v74 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v75 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v76 = v436;
      v77 = v436[6];
      v78 = v436[2];
      v79 = v436[3];

      v80 = sub_10032EB08(v78, v79, v74, v75);
      if (v80)
      {

        v81 = swift_allocObject();
        *(v81 + 16) = v74;
        *(v81 + 24) = v75;
        *(v81 + 32) = _swiftEmptyArrayStorage;
        *(v81 + 40) = 1;
        v82 = v76[12];
        (v76[11])(v81 | 0x7000000000000000, 1);
        goto LABEL_145;
      }

      sub_10034F4FC();
      swift_allocError();
      *v322 = v74;
      *(v322 + 8) = v75;
      goto LABEL_103;
    case 0x1DuLL:
      v45 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v46 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v49 = v436[6];
      v50 = sub_10032EB08(v436[2], v436[3], v45, v46);
      if (!v50)
      {
        goto LABEL_50;
      }

      a1 = v50;
      sub_100351764();
      swift_allocError();
      swift_willThrow();
      goto LABEL_53;
    case 0x1EuLL:
    case 0x1FuLL:
      v45 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v46 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v47 = v436[6];
      v48 = sub_10032EB08(v436[2], v436[3], v45, v46);
      if (v48)
      {
LABEL_97:
      }

      else
      {
LABEL_50:
        sub_10034F4FC();
        swift_allocError();
        *v180 = v45;
        *(v180 + 8) = v46;
        swift_willThrow();
      }

      return;
    case 0x20uLL:
      v317 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v318 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v319 = swift_allocObject();
      *(v319 + 16) = v317;
      *(v319 + 24) = v318;
      *(v319 + 32) = _swiftEmptyArrayStorage;
      *(v319 + 40) = 1;
      v321 = v436[11];
      v320 = v436[12];

      v321(v319 | 0x9000000000000000, 1);
      goto LABEL_145;
    case 0x22uLL:
      v287 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v286 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v288 = v436[6];

      v290 = v286;
      v291 = v480;
      v285 = sub_10032F358(v289, v290);
      if (v291)
      {
        goto LABEL_100;
      }

      v480 = 0;
LABEL_115:
      a1 = v285;

      goto LABEL_53;
    case 0x25uLL:
      v142 = swift_projectBox();
      v143 = v430;
      sub_100351AB4(v142, v430, type metadata accessor for Activity);
      sub_100354CA8(v143);
      v144 = type metadata accessor for Activity;
      v145 = v143;
      goto LABEL_42;
    case 0x26uLL:
      v201 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v202 = 1 << *(v201 + 32);
      v203 = -1;
      if (v202 < 64)
      {
        v203 = ~(-1 << v202);
      }

      v204 = v203 & *(v201 + 64);
      v205 = (v202 + 63) >> 6;
      v206 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v207 = 0;
      v208 = v480;
      if (v204)
      {
        goto LABEL_61;
      }

      do
      {
LABEL_62:
        v209 = v207 + 1;
        if (__OFADD__(v207, 1))
        {
          goto LABEL_159;
        }

        if (v209 >= v205)
        {
          v480 = v208;
LABEL_145:

          return;
        }

        v204 = *(v201 + 64 + 8 * v209);
        ++v207;
      }

      while (!v204);
      while (1)
      {
        v210 = (*(v201 + 48) + ((v209 << 10) | (16 * __clz(__rbit64(v204)))));
        v211 = *v210;
        v212 = v210[1];
        v213 = v436[6];

        v215 = sub_10032F358(v214, v212);
        if (v208)
        {
          break;
        }

        a1 = v215;
        v204 &= v204 - 1;

        v207 = v209;
        if (!v204)
        {
          goto LABEL_62;
        }

LABEL_61:
        v209 = v207;
      }

      return;
    case 0x29uLL:
      v61 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v62 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v292 = v436;
      v293 = v436[6];
      v294 = v436[2];
      v295 = v436[3];

      v296 = sub_10032EB08(v294, v295, v61, v62);
      if (v296)
      {
        v297 = v296;
        v298 = sub_10016324C(_swiftEmptyArrayStorage);

        v299 = swift_allocObject();
        *(v299 + 16) = v61;
        *(v299 + 24) = v62;
        *(v299 + 32) = v298;
        v300 = v292[12];
        (v292[11])(v299 | 0xA000000000000004, 1);
        goto LABEL_145;
      }

LABEL_91:
      sub_10034F4FC();
      swift_allocError();
      *v301 = v61;
      *(v301 + 8) = v62;
LABEL_103:
      swift_willThrow();
      return;
    case 0x2BuLL:
      sub_10035527C(*((a1 & 0xFFFFFFFFFFFFFF9) + 0x10), *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18));
      return;
    case 0x2CuLL:
      if (a1 == 0xB000000000000010)
      {
        sub_1003525AC();
      }

      return;
    default:
      v146 = *(a1 + 16);
      v148 = v436[4];
      v147 = v436[5];
      v149 = swift_allocObject();
      swift_weakInit();
      v150 = swift_allocObject();
      *(v150 + 16) = v149;
      v151 = v433;
      *(v150 + 24) = v146;
      *(v150 + 28) = v151;

      v148(sub_100351A08, v150);

      return;
  }
}

uint64_t sub_10034F078(unsigned int a1)
{
  v2 = v1;
  v4 = _s6LoggerVMa_0(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100351AB4(v1 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_actionLogger, v7, _s6LoggerVMa_0);
  v8 = sub_1004A4A54();
  v9 = sub_1004A4A74();
  (*(*(v9 - 8) + 8))(v7, v9);
  v10 = sub_1004A6034();
  if (os_log_type_enabled(v8, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    v18[1] = a1;
    sub_1000D40AC();
    v13 = sub_1004A5A84();
    v15 = sub_10015BA6C(v13, v14, &v19);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v10, "%s <- complete", v11, 0xCu);
    sub_1000197E0(v12);
  }

  v16 = *(v2 + 96);
  return (*(v2 + 88))(a1, 0);
}

void sub_10034F258(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = _s6LoggerVMa_0(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = a2[6];
  v13 = sub_10032EB08(a2[2], a2[3], v10, v11);
  if (!v13)
  {
    v14 = a2 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
    sub_100351AB4(a2 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v9, _s6LoggerVMa_0);
    v15 = &v14[*(v6 + 20)];
    v16 = *v15;
    v17 = *(v15 + 1);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v18 = sub_1004A4A54();
    v19 = sub_1004A4A74();
    (*(*(v19 - 8) + 8))(v9, v19);
    v20 = sub_1004A6014();

    if (os_log_type_enabled(v18, v20))
    {
      v21 = swift_slowAlloc();
      v30 = v17;
      v22 = v21;
      v23 = swift_slowAlloc();
      v24 = v16;
      v25 = v23;
      v33 = v23;
      *v22 = 68158979;
      *(v22 + 4) = 2;
      *(v22 + 8) = 256;
      *(v22 + 10) = v24;
      *(v22 + 11) = 1040;
      *(v22 + 13) = 8;
      *(v22 + 17) = 1024;
      *(v22 + 19) = v30;
      *(v22 + 23) = 2160;
      *(v22 + 25) = 0x786F626C69616DLL;
      *(v22 + 33) = 2085;
      v31 = v10;
      v32 = v11;

      v26 = sub_1004A5824();
      v28 = sub_10015BA6C(v26, v27, &v33);

      *(v22 + 35) = v28;
      _os_log_impl(&_mh_execute_header, v18, v20, "[%.*hhx-%.*X] Unknown mailbox '%{sensitive,mask.mailbox}s' got de-selected. Ignoring.", v22, 0x2Bu);
      sub_1000197E0(v25);
    }
  }

  *a3 = v13;
}

unint64_t sub_10034F4FC()
{
  result = qword_1005DA3F8;
  if (!qword_1005DA3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DA3F8);
  }

  return result;
}

char *sub_10034F550(char *a1, int64_t a2, char a3)
{
  result = sub_10034F6E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10034F570(char *a1, int64_t a2, char a3)
{
  result = sub_10034F800(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10034F590(char *a1, int64_t a2, char a3)
{
  result = sub_10034F904(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10034F5B0(void *a1, int64_t a2, char a3)
{
  result = sub_10034FA10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10034F5D0(char *a1, int64_t a2, char a3)
{
  result = sub_10034FB44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10034F5F0(void *a1, int64_t a2, char a3)
{
  result = sub_10034FC50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10034F610(void *a1, int64_t a2, char a3)
{
  result = sub_10034FD94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10034F630(void *a1, int64_t a2, char a3)
{
  result = sub_10034FEC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10034F650(char *a1, int64_t a2, char a3)
{
  result = sub_10035000C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10034F670(char *a1, int64_t a2, char a3)
{
  result = sub_100137558(a1, a2, a3, *v3, &qword_1005DA4B8, &qword_1004F7738);
  *v3 = result;
  return result;
}

char *sub_10034F6A0(char *a1, int64_t a2, char a3)
{
  result = sub_100350134(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10034F6C0(char *a1, int64_t a2, char a3)
{
  result = sub_100350244(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10034F6E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DA4A8, &qword_1004F7728);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10034F800(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DA410, &qword_1004F7680);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_10034F904(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DA438, &unk_1004F76B0);
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

void *sub_10034FA10(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005DA458, &qword_1004F76D8);
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
    v10 = &_swiftEmptyArrayStorage;
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
    sub_10000C9C0(&qword_1005DA460, &unk_1004F76E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10034FB44(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D6598, &qword_1004F76C0);
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

void *sub_10034FC50(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005DA470, &qword_1004F76F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    sub_10000C9C0(&qword_1005DA478, &qword_1004F76F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10034FD94(void *result, int64_t a2, char a3, void *a4)
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_10034FEC8(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005DA448, &qword_1004F76C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005DA450, &qword_1004F76D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10035000C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DA4B0, &qword_1004F7730);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100350134(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DA418, &qword_1004F7688);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 96 * v8;
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

char *sub_100350244(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DA4D0, &unk_1004F7758);
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

Swift::Int sub_100350364(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100367F7C(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = sub_1004A6CC4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 4);
          if (v13 >= *(v12 - 2))
          {
            break;
          }

          v14 = *(v12 + 3);
          v15 = v12[32];
          *(v12 + 1) = *(v12 - 8);
          *(v12 + 4) = *(v12 + 1);
          *(v12 - 2) = v13;
          *v12 = v14;
          v12[8] = v15;
          v12 -= 24;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1004A5C64();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v17[0] = v7 + 4;
    v17[1] = v6;
    sub_1003504C4(v17, v18, v19, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1003504C4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100141810(v7);
      v7 = result;
    }

    v85 = v7 + 2;
    v86 = v7[2];
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v7[2 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1000B2CEC((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v8 + 2;
      while (v5 != v15)
      {
        v16 = *v13;
        v17 = v13[6];
        v13 += 6;
        ++v15;
        if (v9 < v12 == v17 >= v16)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v27 + v10);
            v22 = (v27 + v18);
            v23 = *v21;
            v24 = *(v21 + 1);
            v25 = *(v21 + 16);
            v26 = *v22;
            *v21 = *(v22 - 1);
            *(v21 + 2) = v26;
            *(v22 - 4) = v23;
            *(v22 - 1) = v24;
            *v22 = v25;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085288(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v38 = v7[2];
    v37 = v7[3];
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_100085288((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v39;
    v40 = v7 + 4;
    v41 = &v7[2 * v38 + 4];
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = v7[4];
          v44 = v7[5];
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = &v7[2 * v39];
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v40[2 * v42];
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = &v7[2 * v39];
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = &v40[2 * v42];
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = &v40[2 * v42 - 2];
        v81 = *v80;
        v82 = &v40[2 * v42];
        v83 = v82[1];
        sub_1000B2CEC((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > v7[2])
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = v7[2];
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove(&v40[2 * v42], v82 + 2, 16 * (v84 - 1 - v42));
        v7[2] = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = &v40[2 * v39];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = &v7[2 * v39];
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v40[2 * v42];
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = v30;
  v32 = v29;
  while (1)
  {
    v33 = *(v32 + 24);
    if (v33 >= *v32)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v32 + 32);
    v35 = *(v32 + 40);
    *(v32 + 24) = *v32;
    *(v32 + 40) = *(v32 + 16);
    *v32 = v33;
    *(v32 + 8) = v34;
    *(v32 + 16) = v35;
    v32 -= 24;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

unint64_t sub_100350A90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005DA4D8, &qword_1004F7768);
    v3 = sub_1004A6A74();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100064090(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100350B94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005DA4A0, &qword_1004F7940);
    v3 = sub_1004A6A74();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10035E1B0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100350C90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005D8C88, &unk_1004F7770);
    v3 = sub_1004A6A74();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10035E1B0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_100350D8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005DA468, &unk_1004F7930);
    v3 = sub_1004A6A74();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10035E1B0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_100350E90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005DA498, &qword_1004F7720);
    v3 = sub_1004A6A74();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 2);
      v7 = *(i - 1);
      v6 = *i;
      v8 = *(i - 3);
      v9 = v5;

      result = sub_10035E1DC(v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      v12 = (v3[7] + 24 * result);
      *v12 = v9;
      v12[1] = v7;
      v12[2] = v6;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100350FA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005DA440, &unk_1004F7980);
    v3 = sub_1004A6A74();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10035E1B0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1003510AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005DA420, &unk_1004F7690);
  v3 = sub_1004A6A74();
  v4 = *(a1 + 32);
  v16 = *(a1 + 72);
  v17 = *(a1 + 88);
  v18 = *(a1 + 104);
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  result = sub_10035E144(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
    return &_swiftEmptyDictionarySingleton;
  }

  v7 = (a1 + 120);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v8 = v3[7] + 72 * result;
    *(v8 + 64) = v18;
    *(v8 + 32) = v16;
    *(v8 + 48) = v17;
    *v8 = v14;
    *(v8 + 16) = v15;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      return v3;
    }

    v12 = v7 + 5;
    v4 = *(v7 - 1);
    v16 = v7[2];
    v17 = v7[3];
    v18 = *(v7 + 8);
    v14 = *v7;
    v15 = v7[1];
    result = sub_10035E144(v4);
    v7 = v12;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1003511F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005D9930, &qword_1004F6B58);
  v3 = sub_1004A6A74();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_100067004(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 2);
    v13 = *v8;
    v14 = v5;
    result = sub_100067004(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1003512F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005DA298, &qword_1004F7550);
    v3 = sub_1004A6A74();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10035E248(v5, v6, v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 24 * result);
      *v11 = v5;
      v11[1] = v6;
      v11[2] = v8;
      *(v3[7] + 8 * result) = v7;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100351418(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005DA4C0, &qword_1004F7740);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000C9C0(&qword_1005DA4C8, &unk_1004F7748);
    v8 = sub_1004A6A74();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v24 = *(v3 + 72);
    v25 = v9;

    while (1)
    {
      sub_10000E268(v10, v6, &qword_1005DA4C0, &qword_1004F7740);
      v12 = *v6;
      v11 = *(v6 + 1);
      v13 = *(v6 + 2);
      v14 = *(v6 + 6);
      result = sub_10035E2D4(*v6, v11, v13, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = v8[6] + 32 * result;
      *v18 = v12;
      *(v18 + 8) = v11;
      *(v18 + 16) = v13;
      *(v18 + 24) = v14;
      v19 = v8[7];
      v20 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      result = sub_100020950(&v6[v25], v19 + *(*(v20 - 8) + 72) * v17);
      v21 = v8[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v8[2] = v23;
      v10 += v24;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100351620(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005DA408, &qword_1004F7678);
  v3 = sub_1004A6A74();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_100063B5C(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    v21 = v6;
    return v3;
  }

  v9 = v7;
  result = v4;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = v3[6] + 16 * v9;
    *v12 = result;
    *(v12 + 8) = v5;
    *(v3[7] + 8 * v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v17 = *(v11 - 2);
    v5 = *(v11 - 2);
    v18 = *v11;

    v19 = v6;
    v9 = sub_100063B5C(v17, v5);
    v11 = v16;
    v6 = v18;
    result = v17;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100351764()
{
  result = qword_1005DA400;
  if (!qword_1005DA400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DA400);
  }

  return result;
}

uint64_t sub_1003517C0(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10035183C(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 40);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100351888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_1003518E8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100351920()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100351958()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100351998()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003519D0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100351A14()
{
  result = qword_1005D9000;
  if (!qword_1005D9000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005D9000);
  }

  return result;
}

unint64_t sub_100351A60()
{
  result = qword_1005DA428;
  if (!qword_1005DA428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DA428);
  }

  return result;
}

uint64_t sub_100351AB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100351B1C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_100351B7C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100351BB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100351C1C()
{
  v1 = *(_s6LoggerVMa_0(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_1004A4A74();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

int *sub_100351CF0@<X0>(void *a1@<X8>)
{
  v3 = *(_s6LoggerVMa_0(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100335868(v4, v5, a1);
}

uint64_t sub_100351D64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100351DE4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100351E90(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_1004A6794();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1004A6A34();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_100351FB8(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 32); ; i += 4)
  {
    v8 = i[1];
    v24[0] = *i;
    v24[1] = v8;
    v9 = i[3];
    v11 = *i;
    v10 = i[1];
    v24[2] = i[2];
    v24[3] = v9;
    v20 = v11;
    v21 = v10;
    v12 = i[3];
    v22 = i[2];
    v23 = v12;
    sub_10000E268(v24, &v16, &qword_1005D8C98, &qword_1004F5F18);
    v13 = a1(&v20);
    if (v3)
    {
      break;
    }

    v14 = v13;
    v16 = v20;
    v17 = v21;
    v18 = v22;
    v19 = v23;
    sub_100025F40(&v16, &qword_1005D8C98, &qword_1004F5F18);
    if (v14)
    {
      return v6;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  v16 = v20;
  v17 = v21;
  v18 = v22;
  v19 = v23;
  sub_100025F40(&v16, &qword_1005D8C98, &qword_1004F5F18);
  return v6;
}

uint64_t sub_1003520F0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for MessageBeingDownloaded(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1003521DC(uint64_t *a1)
{
  v2 = v1;
  v4 = [v1 userInfo];
  v25 = *a1;
  v21 = *a1;
  sub_10035A4AC(&v25, v23);
  swift_bridgeObjectRetain_n();
  v5 = [v4 __swift_objectForKeyedSubscript:sub_1004A6DF4()];
  swift_unknownObjectRelease();

  if (v5)
  {
    sub_1004A64E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v24[0] = v21;
  v24[1] = v22;
  if (!*(&v22 + 1))
  {
    sub_100025F40(v24, &qword_1005D4768, &unk_1004F5B20);
LABEL_8:
    v10 = [v2 persistentStoreCoordinator];
    if (v10)
    {
      v11 = v10;
      v12 = sub_100358330(a1);
      v14 = v13;

      sub_1002F9A9C(&v25);
      if ((v14 & 1) == 0)
      {
        *&v21 = v12;
        v15 = [v2 userInfo];
LABEL_13:
        v17 = v15;
        v18 = a1[5];
        v19 = (a1[4])(&v21);
        v24[0] = v25;
        [v17 __swift_setObject:v19 forKeyedSubscript:sub_1004A6DF4()];

        swift_unknownObjectRelease();
        return v21;
      }
    }

    else
    {
      sub_1002F9A9C(&v25);
    }

    v16 = a1[7];
    (a1[6])(&v21, 0);
    v15 = [v2 userInfo];
    goto LABEL_13;
  }

  sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1002F9A9C(&v25);
  sub_1002F9A9C(&v25);
  v6 = v23[0];
  v8 = a1[6];
  v7 = a1[7];
  v9 = v23[0];
  v8(&v21, v6);

  return v21;
}

void sub_10035249C(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v18 = a1;
  v13 = *(a2 + 5);
  v14 = (*(a2 + 4))(&v18);
  v15 = [v11 userInfo];
  v19 = *a2;
  v17[1] = *a2;
  sub_10035A4AC(&v19, v17);
  v16 = v14;
  [v15 __swift_setObject:v16 forKeyedSubscript:sub_1004A6DF4()];

  swift_unknownObjectRelease();
  sub_1003585D0(a2, a3, a4, a5, a6);
}

uint64_t sub_1003525AC()
{
  v1 = v0;
  v2 = _s6LoggerVMa_0(0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
  sub_10035A508(v1 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v6, _s6LoggerVMa_0);
  v8 = (v7 + *(v3 + 28));
  v9 = *v8;
  v10 = *(v8 + 1);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v11 = sub_1004A4A54();
  v12 = sub_1004A4A74();
  (*(*(v12 - 8) + 8))(v6, v12);
  v13 = sub_1004A6014();
  if (os_log_type_enabled(v11, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 68158464;
    *(v14 + 4) = 2;
    *(v14 + 8) = 256;
    *(v14 + 10) = v9;
    *(v14 + 11) = 1040;
    *(v14 + 13) = 8;
    *(v14 + 17) = 1024;
    *(v14 + 19) = v10;
    _os_log_impl(&_mh_execute_header, v11, v13, "[%.*hhx-%.*X] Failed to authenticate. Marking server as temporarily unavailable.", v14, 0x17u);
  }

  v15 = *(v1 + 120);
  return (*(v1 + 112))(2);
}

uint64_t sub_10035276C(uint64_t a1)
{
  v4 = sub_1004A4374();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100355800();
  sub_1003559D4(a1);
  v9 = sub_1003595B4(a1);
  v10 = sub_10035BCC0(v9);
  if (v2)
  {

    swift_beginAccess();
    goto LABEL_55;
  }

  v11 = v10;

  if (v11 >> 62)
  {
    goto LABEL_60;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_61:

    v67 = _swiftEmptyArrayStorage;
LABEL_62:
    swift_beginAccess();
    sub_100334E18();
    swift_endAccess();
    return v67;
  }

LABEL_5:
  v68 = v1;
  v91 = _swiftEmptyArrayStorage;
  v1 = &v91;
  sub_100092088(0, v12 & ~(v12 >> 63), 0);
  if (v12 < 0)
  {
    goto LABEL_65;
  }

  v13 = 0;
  v14 = v91;
  v75 = v11 & 0xC000000000000001;
  v69 = v11 & 0xFFFFFFFFFFFFFF8;
  v74 = (v5 + 8);
  v72 = v12 - 1;
  v71 = v4;
  v70 = v8;
  v73 = v11;
  while (1)
  {
    v81 = v14;
    if (v75)
    {
      v15 = sub_1004A6794();
    }

    else
    {
      if (v13 >= *(v69 + 16))
      {
        goto LABEL_57;
      }

      v15 = *(v11 + 8 * v13 + 32);
    }

    v16 = sub_1004A5734();
    [v15 willAccessValueForKey:v16];

    v17 = [v15 primitiveName];
    if (v17)
    {
      v18 = v17;
      v19 = sub_100359E0C(v18);

      v20 = MailboxName.init(_:)(v19);
      rawValue = v20.bytes._rawValue;
      value = v20._hashValue._value;
    }

    else
    {
      rawValue = 0;
      value = 0;
    }

    v22 = sub_1004A5734();
    [v15 didAccessValueForKey:v22];

    if (!rawValue)
    {

      sub_100359C04();
      swift_allocError();
      goto LABEL_54;
    }

    v76 = v13;
    v23 = sub_1004A5734();
    [v15 willAccessValueForKey:v23];

    sub_10034AF00(v15, v96);
    v24 = v96[0];
    v85 = v96[2];
    v83 = v96[1];
    v84 = v96[3];
    v82 = v96[4];
    v25 = sub_1004A5734();
    v86 = v15;
    [v15 didAccessValueForKey:v25];

    v79 = rawValue;
    if (v97)
    {
      v78 = 0;
      v83 = 0;
      v84 = 0;
      v77 = 1;
      v85 = 1;
      v82 = 1;
    }

    else
    {
      v78 = v24;
      v77 = HIDWORD(v24) & 1;
    }

    v15 = v86;
    v26 = [v86 objectID];
    v27 = [v26 isTemporaryID];

    if (v27)
    {
      break;
    }

    v28 = [v15 objectID];
    v29 = [v28 URIRepresentation];

    sub_1004A4344();
    v1 = v8;
    v5 = sub_1004A42E4();
    v11 = v30;
    (*v74)(v8, v4);
    v31 = v11 >> 62;
    if ((v11 >> 62) <= 1)
    {
      v32 = v76;
      if (!v31)
      {
        __src.rawValue._rawValue = v5;
        LOWORD(__src.hashValue) = v11;
        BYTE2(__src.hashValue) = BYTE2(v11);
        BYTE3(__src.hashValue) = BYTE3(v11);
        BYTE4(__src.hashValue) = BYTE4(v11);
        BYTE5(__src.hashValue) = BYTE5(v11);
        v33 = v85;
        v34 = v86;
        if (BYTE6(v11))
        {
          sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
          v35 = swift_allocObject();
          v36 = j__malloc_size(v35);
          v35[2] = BYTE6(v11);
          v35[3] = 2 * v36 - 64;
          memcpy(v35 + 4, &__src, BYTE6(v11));
        }

        else
        {
          v35 = _swiftEmptyArrayStorage;
        }

        v1 = 1;
        v51 = OpaqueMailboxID.init(rawValue:)(v35);
        v49 = v51.rawValue._rawValue;
        hashValue = v51.hashValue;

        sub_100014D40(v5, v11);
        goto LABEL_46;
      }

      v4 = v5;
      v8 = ((v5 >> 32) - v5);
      v39 = v86;
      if (v5 >> 32 < v5)
      {
        goto LABEL_58;
      }

      v38 = sub_1004A40D4();
      if (v38)
      {
        v44 = sub_1004A4104();
        if (__OFSUB__(v5, v44))
        {
          goto LABEL_64;
        }

        v38 += v5 - v44;
      }

      v45 = sub_1004A40F4();
      if (v45 >= v8)
      {
        v43 = (v5 >> 32) - v5;
      }

      else
      {
        v43 = v45;
      }

      goto LABEL_39;
    }

    v32 = v76;
    if (v31 == 2)
    {
      v37 = *(v5 + 16);
      v8 = *(v5 + 24);
      v1 = v11 & 0x3FFFFFFFFFFFFFFFLL;
      v38 = sub_1004A40D4();
      v39 = v86;
      if (v38)
      {
        v1 = v11 & 0x3FFFFFFFFFFFFFFFLL;
        v40 = sub_1004A4104();
        if (__OFSUB__(v37, v40))
        {
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
        }

        v38 += v37 - v40;
      }

      v41 = __OFSUB__(v8, v37);
      v4 = &v8[-v37];
      if (v41)
      {
        goto LABEL_59;
      }

      v42 = sub_1004A40F4();
      if (v42 >= v4)
      {
        v43 = v4;
      }

      else
      {
        v43 = v42;
      }

LABEL_39:
      v46 = &v38[v43];
      if (v38)
      {
        v47 = v46;
      }

      else
      {
        v47 = 0;
      }

      sub_10032F72C(v38, v47, &__src);

      sub_100014D40(v5, v11);
      v49 = __src.rawValue._rawValue;
      hashValue = __src.hashValue;
      goto LABEL_43;
    }

    v48 = OpaqueMailboxID.init(rawValue:)(_swiftEmptyArrayStorage);
    v49 = v48.rawValue._rawValue;
    hashValue = v48.hashValue;

    sub_100014D40(v5, v11);
LABEL_43:
    v1 = 1;
    v33 = v85;
LABEL_46:
    v52 = v77;
    v90 = v77;
    v53 = v33 & 1;
    v89 = v33 & 1;
    v54 = v82 & 1;
    v88 = v82 & 1;
    v87 = 1;
    v14 = v81;
    v91 = v81;
    v56 = v81[2];
    v55 = v81[3];
    v5 = v56 + 1;
    v57 = v78;
    if (v56 >= v55 >> 1)
    {
      sub_100092088((v55 > 1), v56 + 1, 1);
      v52 = v77;
      v57 = v78;
      v1 = 1;
      v14 = v91;
    }

    v14[2] = v5;
    v58 = &v14[12 * v56];
    v58[4] = v49;
    v58[5] = hashValue;
    v58[6] = v79;
    *(v58 + 14) = value;
    *(v58 + 16) = v57;
    *(v58 + 68) = v52;
    v59 = v94;
    *(v58 + 69) = v93;
    *(v58 + 71) = v59;
    v58[9] = v83;
    *(v58 + 80) = v53;
    v60 = *(&__src.rawValue._rawValue + 3);
    *(v58 + 81) = __src.rawValue._rawValue;
    *(v58 + 21) = v60;
    v58[11] = v84;
    *(v58 + 96) = v54;
    v61 = *&v92[3];
    *(v58 + 97) = *v92;
    *(v58 + 25) = v61;
    v58[13] = 0;
    v58[14] = 0;
    *(v58 + 120) = 1;
    if (v72 == v32)
    {
      v67 = v14;

      goto LABEL_62;
    }

    v13 = v32 + 1;
    v4 = v71;
    v8 = v70;
    v11 = v73;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v12 = sub_1004A6A34();
      if (!v12)
      {
        goto LABEL_61;
      }

      goto LABEL_5;
    }
  }

  v62 = sub_10033A824();
  v64 = v63;
  sub_100359C58();
  swift_allocError();
  *v65 = v62;
  *(v65 + 8) = v64;
LABEL_54:
  swift_willThrow();

  swift_beginAccess();
LABEL_55:
  sub_100334E18();
  return swift_endAccess();
}

void sub_1003530B8(unint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v33 = a1;
  v32[2] = &v33;
  v4 = 0;
  v5 = sub_100358B50(sub_100359FD0, v32);
  v6 = *(*(v1 + 128) + 16);
  if (v6 < v5)
  {
    __break(1u);
  }

  else
  {
    sub_100336E58(v5, v6);
    swift_endAccess();
    swift_beginAccess();

    v4 = sub_10035A16C((v1 + 144), a1);

    v7 = *(v1 + 144);
    if (!(v7 >> 62))
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 >= v4)
      {
        goto LABEL_4;
      }

LABEL_29:
      __break(1u);
LABEL_30:
      v9 = sub_1004A6A34();
      if (!v9)
      {
        return;
      }

      goto LABEL_6;
    }
  }

  v8 = sub_1004A6A34();
  if (v8 < v4)
  {
    goto LABEL_29;
  }

LABEL_4:
  sub_100336C30(v4, v8);
  swift_endAccess();
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    return;
  }

LABEL_6:
  if (v9 >= 1)
  {
    v10 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = sub_1004A6794();
      }

      else
      {
        v13 = *(a1 + 8 * v10 + 32);
      }

      v12 = v13;
      v14 = [v13 objectID];
      v15 = [v14 entity];
      v16 = [v15 name];

      if (!v16)
      {
        goto LABEL_8;
      }

      v17 = sub_1004A5764();
      v19 = v18;

      if (v17 == 0x786F626C69616DLL && v19 == 0xE700000000000000)
      {
      }

      else
      {
        v21 = sub_1004A6D34();

        if ((v21 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      if (([v14 isTemporaryID] & 1) == 0)
      {
        swift_beginAccess();
        v22 = *(v2 + 152);
        v23 = sub_10035E1DC(v14);
        if (v24)
        {
          v25 = v23;
          v26 = *(v2 + 152);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v28 = *(v2 + 152);
          v33 = v28;
          *(v2 + 152) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_100361B98();
            v28 = v33;
          }

          v29 = *(v28 + 56) + 24 * v25;
          v30 = *v29;
          v31 = *(v29 + 16);

          sub_100359018(v25, v28);
          *(v2 + 152) = v28;
        }

        swift_endAccess();
        v11 = v14;
        goto LABEL_9;
      }

LABEL_8:
      v11 = v12;
      v12 = v14;
LABEL_9:
      ++v10;

      if (v9 == v10)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_1003533D8(uint64_t a1, void *a2, unint64_t a3, int64_t a4, void *a5)
{
  v11 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = v48 - v13;
  sub_100355ECC(a2, a3, a4, a5);
  if (!v5)
  {
    v48[2] = 0;
    v49 = a1;
    if (v15 >> 62)
    {
      v45 = v16;
      v46 = sub_1004A6A34();
      v16 = v45;
      if (!v46)
      {
        goto LABEL_24;
      }
    }

    else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    if (v16 >= 1)
    {
      v17 = v16;
      v18 = objc_allocWithZone(NSFetchRequest);
      v19 = sub_1004A5734();
      v20 = [v18 initWithEntityName:v19];

      sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1004CEAA0;
      sub_10019A8E4(0, &qword_1005D8FE8, NSManagedObjectID_ptr);
      isa = sub_1004A5C04().super.isa;

      *(v21 + 56) = sub_10019A8E4(0, &qword_1005DA4F0, NSArray_ptr);
      *(v21 + 32) = isa;
      v23 = sub_1004A5734();
      v24 = sub_1004A5C04().super.isa;

      v25 = [objc_opt_self() predicateWithFormat:v23 argumentArray:v24];

      [v20 setPredicate:v25];
      sub_100016D2C();
      sub_1004A7114();
      v52 = 0;
      v26 = [v20 execute:&v52];
      v27 = v52;
      if (!v26)
      {
        v44 = v52;
        sub_1004A4274();

        swift_willThrow();
        sub_100025F40(v14, &unk_1005D91B0, &unk_1004CF400);
        return;
      }

      v28 = v26;
      _s7MessageCMa();
      v29 = sub_1004A5C14();
      v30 = v27;

      v31 = v29;
      v48[0] = v20;
      v48[1] = v17;
      if (v29 >> 62)
      {
        v47 = sub_1004A6A34();
        v31 = v29;
        v32 = v47;
        if (v47)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v32 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v32)
        {
LABEL_8:
          if (v32 < 1)
          {
            __break(1u);
          }

          v33 = 0;
          v50 = v31 & 0xC000000000000001;
          v34 = v31;
          do
          {
            if (v50)
            {
              v35 = sub_1004A6794();
            }

            else
            {
              v35 = *(v31 + 8 * v33 + 32);
            }

            v36 = v35;
            v37 = v11;
            v38 = sub_1004A5734();
            [v36 willAccessValueForKey:{v38, v48[0]}];

            v39 = [v36 primitiveUid];
            v40 = v39;
            if (v39)
            {
              v41 = [v39 longLongValue];

              v42 = (v41 - 0x100000000) < 0xFFFFFFFF00000001;
              if ((v41 - 0x100000000) >= 0xFFFFFFFF00000001)
              {
                LODWORD(v40) = v41;
              }

              else
              {
                LODWORD(v40) = 0;
              }
            }

            else
            {
              v42 = 1;
            }

            v43 = sub_1004A5734();
            [v36 didAccessValueForKey:v43];

            if (v42)
            {

              v11 = v37;
            }

            else
            {
              v51 = v40;
              v11 = v37;
              MessageIdentifierSet.insert(_:)(&v52, &v51, v37);
            }

            v31 = v34;
            ++v33;
          }

          while (v32 != v33);
        }
      }

      sub_100020950(v14, v49);
      return;
    }

LABEL_24:

    sub_100016D2C();
    sub_1004A7114();
  }
}

void sub_1003538F0()
{
  v2 = v0;
  v3 = sub_10033BCE8();
  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004CEAA0;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 32) = 6580597;
  *(v4 + 40) = 0xE300000000000000;
  v5 = &type metadata for Any;
  isa = sub_1004A5C04().super.isa;

  [v3 setPropertiesToFetch:isa];

  v7 = sub_10037A73C();
  [v3 appendPredicate:v7];

  v8 = *(v2 + 48);
  [v3 setFetchBatchSize:1000];
  _s7MessageCMa();
  sub_1004A6224();
  if (v1)
  {
  }

  else
  {
    v23 = 0;
    v24 = v3;
    v9 = sub_1004A5C04().super.isa;

    v25 = v9;
    v10 = [(objc_class *)v9 count];
    sub_100016D2C();
    sub_1004A7114();
    if (v10)
    {
      v11 = 0;
      while (1)
      {
        v12 = [(objc_class *)v25 objectAtIndex:v11, v23, v24];
        sub_1004A64E4();
        swift_unknownObjectRelease();
        swift_dynamicCast();
        v13 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v14 = v5;
        v15 = v27;
        v16 = sub_1004A5734();
        [v15 willAccessValueForKey:v16];

        v17 = [v15 primitiveUid];
        if (v17)
        {
          v18 = v17;
          v19 = [v17 longLongValue];

          v20 = (v19 - 0x100000000) < 0xFFFFFFFF00000001;
          if ((v19 - 0x100000000) < 0xFFFFFFFF00000001)
          {
            LODWORD(v19) = 0;
          }
        }

        else
        {
          LODWORD(v19) = 0;
          v20 = 1;
        }

        v21 = sub_1004A5734();
        [v15 didAccessValueForKey:v21];

        if (!v20)
        {
          LODWORD(v27) = v19;
          v22 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
          MessageIdentifierSet.insert(_:)(v26, &v27, v22);
        }

        ++v11;
        v5 = v14;
        if (v13 == v10)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_14:
    }
  }
}

void sub_100353C00(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v59 = a4;
  v58 = a3;
  v66 = a1;
  v65 = sub_1004A44E4();
  v6 = *(v65 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v65);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MessageMetadata(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v15 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a2 + 16);
  if (v16)
  {
    v64 = *(v12 + 36);
    v17 = *(v4 + 48);
    v18 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v19 = *(v13 + 72);
    v62 = (v6 + 8);
    v63 = v19;
    v60 = v17;
    v61 = v9;
    do
    {
      v67 = v16;
      sub_10035A508(v18, v15, type metadata accessor for MessageMetadata);
      v68 = *v15;
      v20 = 256;
      if ((*(v15 + 17) & 1) == 0)
      {
        v20 = 0;
      }

      v21 = 0x10000;
      if ((*(v15 + 18) & 1) == 0)
      {
        v21 = 0;
      }

      v22 = 0x1000000;
      if ((*(v15 + 19) & 1) == 0)
      {
        v22 = 0;
      }

      v23 = *(v15 + 24);
      v24 = Flags.init(_:)((*(v15 + 20) << 32) | (*(v15 + 21) << 40) | (*(v15 + 22) << 48) | v15[4] & 1 | v20 | v21 | v22 | (*(v15 + 23) << 56));
      v69 = v25;
      v26 = *(v15 + v64);
      v70 = v24;
      v71 = v26;
      v27 = *(v15 + 1);
      sub_10035A8B4(v15, type metadata accessor for MessageMetadata);
      ServerMessageDate.date.getter(v27, v9);
      v28 = [objc_allocWithZone(_s7MessageCMa()) initWithContext:v17];
      if (qword_1005D87B8 != -1)
      {
        swift_once();
      }

      v87[2] = xmmword_1005DAA68;
      v87[3] = *&qword_1005DAA78;
      v87[4] = xmmword_1005DAA88;
      v87[0] = xmmword_1005DAA48;
      v87[1] = *&qword_1005DAA58;
      v29 = sub_1003521DC(v87);
      v86[2] = xmmword_1005DAA68;
      v86[3] = *&qword_1005DAA78;
      v86[4] = xmmword_1005DAA88;
      v86[0] = xmmword_1005DAA48;
      v86[1] = *&qword_1005DAA58;
      sub_10035249C(v29 + 1, v86, &qword_1005DA4F8, &qword_1004F7790, &qword_1005DA500, &qword_1004F7798);
      v30 = sub_1004A5734();
      [v28 willChangeValueForKey:v30];

      v31 = [objc_allocWithZone(NSNumber) initWithLongLong:v29 + 1];
      [v28 setPrimitiveSpotlightID:v31];

      v32 = sub_1004A5734();
      [v28 didChangeValueForKey:v32];

      [v28 setMailbox:v66];
      v33 = sub_1004A5734();
      [v28 willChangeValueForKey:v33];

      v34 = objc_allocWithZone(NSNumber);
      v35 = [v34 initWithLongLong:v68];
      [v28 setPrimitiveUid:v35];

      v36 = sub_1004A5734();
      [v28 didChangeValueForKey:v36];

      v37 = sub_1004A5734();
      [v28 willChangeValueForKey:v37];

      v38 = [objc_allocWithZone(NSNumber) initWithLongLong:sub_10031FD9C(v70 & 0xFFFF010101010101)];
      [v28 setPrimitiveFlags:v38];

      v39 = sub_1004A5734();
      [v28 didChangeValueForKey:v39];

      v40 = sub_1004A5734();
      [v28 willChangeValueForKey:v40];

      v41 = objc_allocWithZone(NSNumber);
      v42 = [v41 initWithInteger:v71];
      [v28 setPrimitiveMessageSize:v42];

      v17 = v60;
      v43 = sub_1004A5734();
      [v28 didChangeValueForKey:v43];

      v9 = v61;
      isa = sub_1004A4484().super.isa;
      [v28 setServerDate:isa];

      (*v62)(v9, v65);
      v18 += v63;
      v16 = v67 - 1;
    }

    while (v67 != 1);
  }

  if ((v59 & 1) == 0)
  {
    v45 = sub_1004A5734();
    v46 = v66;
    [v66 willAccessValueForKey:v45];

    sub_10034AF00(v46, v76);
    v47 = v76[0];
    v48 = v76[3];
    v49 = v76[4];
    v50 = v78;
    v51 = v77;
    v52 = sub_1004A5734();
    [v46 didAccessValueForKey:v52];

    if (v79)
    {
      LODWORD(v47) = 0;
      v48 = 0;
      v53 = 0;
      LOBYTE(v54) = 1;
      LOBYTE(v80) = 1;
      v75 = 1;
      v74 = 1;
      LOBYTE(v49) = 1;
      LOBYTE(v55) = 1;
    }

    else
    {
      *(&v56 + 1) = v51 | (v50 << 32);
      *&v56 = v49;
      v53 = v56 >> 32;
      v54 = HIDWORD(v47) & 1;
      v55 = HIDWORD(*(&v56 + 1)) & 1;
    }

    v75 = v54;
    v74 = 0;
    v73 = v49 & 1;
    v72 = v55;
    LODWORD(v80) = v47;
    BYTE4(v80) = v54;
    *(&v80 + 1) = v58;
    v81 = 0;
    v82 = v48;
    v83 = v49 & 1;
    v84 = v53;
    v85 = v55;
    sub_10033BB90(&v80);
  }
}

void sub_10035434C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v36 - v11;
  v13 = *(v4 + 48);
  v41[0] = a2;
  v14 = sub_100016948();
  *&v47 = Range<>.init<A>(_:)(v41, &type metadata for UID, v14);
  sub_100016D2C();
  sub_1004A7124();
  v15 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  sub_10030B530(a1, v12, *(v4 + 64));
  sub_100025F40(v12, &qword_1005CD518, &qword_1004CF2F0);
  if (a4)
  {
    if (!a3)
    {
      return;
    }

    v16 = sub_1004A5734();
    [a1 willAccessValueForKey:v16];

    sub_10034AF00(a1, v41);
    v17 = v41[0];
    v18 = v42;
    v19 = v43;
    v20 = v45;
    v21 = v44;
    v22 = sub_1004A5734();
    [a1 didAccessValueForKey:v22];

    if (v46)
    {
      LODWORD(v17) = 0;
      v18 = 0;
      v23 = 0;
      LOBYTE(v24) = 1;
      LOBYTE(v47) = 1;
      v40 = 1;
      v39 = 1;
      LOBYTE(v19) = 1;
      LOBYTE(v25) = 1;
    }

    else
    {
      *(&v35 + 1) = v21 | (v20 << 32);
      *&v35 = v19;
      v23 = v35 >> 32;
      v24 = HIDWORD(v17) & 1;
      v25 = HIDWORD(*(&v35 + 1)) & 1;
    }

    v40 = v24;
    v39 = 1;
    v38 = v19 & 1;
    v37 = v25;
    LODWORD(v47) = v17;
    BYTE4(v47) = v24;
    *(&v47 + 1) = 0;
    v48 = 1;
    v49 = v18;
    v50 = v19 & 1;
  }

  else
  {
    v26 = sub_1004A5734();
    [a1 willAccessValueForKey:v26];

    sub_10034AF00(a1, v41);
    v27 = v41[0];
    v28 = v42;
    v29 = v43;
    v30 = v45;
    v31 = v44;
    v32 = sub_1004A5734();
    [a1 didAccessValueForKey:v32];

    if (v46)
    {
      LODWORD(v27) = 0;
      v28 = 0;
      v23 = 0;
      LOBYTE(v33) = 1;
      LOBYTE(v47) = 1;
      v40 = 1;
      v39 = 1;
      LOBYTE(v29) = 1;
      LOBYTE(v25) = 1;
    }

    else
    {
      *(&v34 + 1) = v31 | (v30 << 32);
      *&v34 = v29;
      v23 = v34 >> 32;
      v33 = HIDWORD(v27) & 1;
      v25 = HIDWORD(*(&v34 + 1)) & 1;
    }

    v40 = v33;
    v39 = 0;
    v38 = v29 & 1;
    v37 = v25;
    LODWORD(v47) = v27;
    BYTE4(v47) = v33;
    *(&v47 + 1) = a3;
    v48 = 0;
    v49 = v28;
    v50 = v29 & 1;
  }

  v51 = v23;
  v52 = v25;
  sub_10033BB90(&v47);
}

uint64_t sub_1003546E4@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  v74 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v10 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v75 = &v68 - v11;
  v12 = sub_1004A4A74();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s6LoggerVMa_0(0);
  v18 = *(*(v17 - 8) + 64);
  *&v19 = __chkstk_darwin(v17 - 8).n128_u64[0];
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_100372E50([a1 objectID]);
  if (!v73)
  {
    sub_100016D2C();
    return sub_1004A7114();
  }

  v78 = a2;
  swift_beginAccess();
  v22 = *(v6 + 152);
  v23 = *(v22 + 16);
  v71 = a3;
  if (!v23 || (v24 = sub_10035E1DC(v73), (v25 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_7;
  }

  v26 = *(v22 + 56) + 24 * v24;
  v27 = *(v26 + 8);
  v72 = *v26;
  v28 = *(v26 + 16);
  swift_endAccess();
  if (v27 != v78)
  {
LABEL_7:
    v32 = *(v6 + 48);
    sub_10035A508(v6 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v21, _s6LoggerVMa_0);
    (*(v13 + 32))(v16, v21, v12);
    v33 = v32;
    v34 = a1;
    v35 = sub_100340D2C(v33, v34, v78, v16);
    v37 = v36;
    v31 = v38;
    v39 = *(v6 + 152);
    v40 = *(v39 + 16);
    v41 = v35;

    if (v40 >= 5)
    {
      do
      {
        v45 = 0;
        v46 = (v39 + 64);
        v42 = 1 << *(v39 + 32);
        v47 = (v42 + 63) >> 6;
        while (1)
        {
          v49 = *v46++;
          v48 = v49;
          if (v49)
          {
            break;
          }

          v45 -= 64;
          if (!--v47)
          {
            goto LABEL_10;
          }
        }

        v42 = __clz(__rbit64(v48)) - v45;
LABEL_10:
        v43 = *(v39 + 36);
        swift_beginAccess();
        v44 = sub_100359D2C(v77, v42, v43);
        swift_endAccess();

        v39 = *(v6 + 152);
      }

      while (*(v39 + 16) > 4uLL);
    }

    swift_beginAccess();
    v30 = v41;

    v50 = v73;
    v51 = *(v6 + 152);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = *(v6 + 152);
    *(v6 + 152) = 0x8000000000000000;
    sub_1003592F8(v30, v37, v31, v50, isUniquelyReferenced_nonNull_native);

    *(v6 + 152) = v76[0];
    swift_endAccess();
    goto LABEL_16;
  }

  v29 = v72;
  swift_retain_n();
  v30 = v29;
  v31 = v28;
LABEL_16:
  v72 = v5;
  v53 = sub_100341120(v31);

  v69 = v30;

  sub_100016D2C();
  sub_1004A7114();
  v70 = v31;
  if (v53 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004A6A34())
  {
    v55 = 0;
    v78 = v53 & 0xC000000000000001;
    v56 = v53 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v78)
      {
        v57 = sub_1004A6794();
      }

      else
      {
        if (v55 >= *(v56 + 16))
        {
          goto LABEL_34;
        }

        v57 = *(v53 + 8 * v55 + 32);
      }

      v58 = v57;
      v59 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      v60 = v53;
      v61 = sub_1004A5734();
      [v58 willAccessValueForKey:v61];

      v62 = [v58 primitiveUid];
      if (v62)
      {
        v63 = v62;
        v64 = [v62 longLongValue];

        v65 = (v64 - 0x100000000) < 0xFFFFFFFF00000001;
        if ((v64 - 0x100000000) < 0xFFFFFFFF00000001)
        {
          LODWORD(v64) = 0;
        }
      }

      else
      {
        LODWORD(v64) = 0;
        v65 = 1;
      }

      v66 = sub_1004A5734();
      [v58 didAccessValueForKey:v66];

      if (!v65)
      {
        LODWORD(v76[0]) = v64;
        MessageIdentifierSet.insert(_:)(v77, v76, v74);
      }

      v53 = v60;
      ++v55;
      if (v59 == i)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_36:

  return sub_100020950(v75, v71);
}

uint64_t sub_100354CA8(uint64_t a1)
{
  v3 = sub_1004A44E4();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  __chkstk_darwin(v3);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v57 = &v55 - v7;
  v8 = _s6LoggerVMa_0(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v55 - v14;
  v16 = type metadata accessor for ConnectionStatus.Error(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Activity(0);
  sub_10000E268(a1 + *(v21 + 24), v15, &qword_1005CCEB0, &qword_1004E9140);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_100025F40(v15, &qword_1005CCEB0, &qword_1004E9140);
  }

  sub_10035A84C(v15, v20, type metadata accessor for ConnectionStatus.Error);
  v23 = *v20;
  result = sub_10035A8B4(v20, type metadata accessor for ConnectionStatus.Error);
  if (v23 == 2 && (*(v1 + 160) & 1) == 0)
  {
    *(v1 + 160) = 1;
    v24 = v1;
    v25 = v1 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
    sub_10035A508(v1 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v11, _s6LoggerVMa_0);
    v26 = (v25 + *(v8 + 20));
    v27 = *v26;
    v28 = *(v26 + 1);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v29 = sub_1004A4A54();
    v30 = sub_1004A4A74();
    (*(*(v30 - 8) + 8))(v11, v30);
    v31 = sub_1004A6034();
    if (os_log_type_enabled(v29, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 68158464;
      *(v32 + 4) = 2;
      *(v32 + 8) = 256;
      *(v32 + 10) = v27;
      *(v32 + 11) = 1040;
      *(v32 + 13) = 8;
      *(v32 + 17) = 1024;
      *(v32 + 19) = v28;
      _os_log_impl(&_mh_execute_header, v29, v31, "[%.*hhx-%.*X] Server temporarily unavailable.", v32, 0x17u);
    }

    v33 = v24[7];
    v34 = v59;
    v35 = v57;
    if (v33)
    {
      v36 = v24[7];
    }

    else
    {
      v37 = v24[6];
      v38 = sub_1003070C0(v24[2], v24[3]);
      v39 = v24[7];
      v24[7] = v38;
      v36 = v38;

      v33 = 0;
    }

    v40 = v58;
    v41 = v33;
    v60 = sub_10033A6CC();
    sub_1004A44D4();
    v42 = v56;
    (*(v40 + 16))(v56, v35, v34);
    sub_1004A4464();
    v44 = round(v43 / 21600.0);
    v45 = *(v40 + 8);
    result = v45(v42, v34);
    v46 = v24;
    if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    if (v44 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v44 < 9.22337204e18)
    {
      sub_100375B9C(v44, &v60);
LABEL_14:
      v45(v35, v34);
      v47 = v60;
      v48 = sub_1004A5734();
      [v36 willChangeValueForKey:v48];

      v49 = sub_100373DA8(v47);
      v51 = v50;

      isa = sub_1004A4404().super.isa;
      sub_100014D40(v49, v51);
      [v36 setPrimitiveDataUsage:isa];

      v53 = sub_1004A5734();
      [v36 didChangeValueForKey:v53];

      v54 = v46[15];
      return (v46[14])(2);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10035527C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = _s6LoggerVMa_0(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v53 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004A44E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v54 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v52 - v14;
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v19 = *(v2 + 56);
  if (v19)
  {
    v20 = *(v2 + 56);
  }

  else
  {
    v21 = *(v2 + 48);
    v22 = sub_1003070C0(*(v3 + 16), *(v3 + 24));
    v23 = *(v3 + 56);
    *(v3 + 56) = v22;
    v20 = v22;

    v19 = 0;
  }

  v24 = v19;
  v55 = sub_10033A6CC();
  sub_1004A44D4();
  (*(v10 + 16))(v15, v18, v9);
  sub_1004A4464();
  v26 = round(v25 / 21600.0);
  v27 = *(v10 + 8);
  result = v27(v15, v9);
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  if (v26 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  sub_100375E64(v26, &v55, a1, a2);
LABEL_8:
  v27(v18, v9);
  v29 = v55;
  v30 = sub_1004A5734();
  [v20 willChangeValueForKey:v30];

  v31 = sub_100373DA8(v29);
  v33 = v32;

  isa = sub_1004A4404().super.isa;
  sub_100014D40(v31, v33);
  [v20 setPrimitiveDataUsage:isa];

  v35 = sub_1004A5734();
  [v20 didChangeValueForKey:v35];

  v36 = *(v3 + 56);
  if (v36)
  {
    v37 = *(v3 + 56);
  }

  else
  {
    v38 = *(v3 + 48);
    v39 = sub_1003070C0(*(v3 + 16), *(v3 + 24));
    v40 = *(v3 + 56);
    *(v3 + 56) = v39;
    v37 = v39;

    v36 = 0;
  }

  v41 = v36;
  v42 = sub_10033A6CC();

  v43 = v54;
  sub_1004A44D4();
  sub_100374128(v43, v42);
  v45 = v44;

  result = v27(v43, v9);
  if (v45 == 1)
  {
    v46 = v53;
    sub_10035A508(v3 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v53, _s6LoggerVMa_0);
    v47 = sub_1004A4A54();
    v48 = sub_1004A4A74();
    (*(*(v48 - 8) + 8))(v46, v48);
    v49 = sub_1004A6014();
    if (os_log_type_enabled(v47, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v47, v49, "Account’s data usage is above threshold.", v50, 2u);
    }

    v51 = *(v3 + 120);
    return (*(v3 + 112))(1);
  }

  return result;
}

uint64_t sub_100355708(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a1;
    v11 = *(v8 + 88);
    v10 = *(v8 + 96);

    v11(v9 | 4, 1);

    sub_10034F078(a4);
  }

  return result;
}

uint64_t sub_1003557C8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100355800()
{
  v1 = v0;
  v2 = _s6LoggerVMa_0(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 161) & 1) == 0)
  {
    *(v1 + 161) = 1;
    v6 = v1 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
    sub_10035A508(v1 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v5, _s6LoggerVMa_0);
    v7 = (v6 + *(v2 + 20));
    v8 = *v7;
    v9 = *(v7 + 1);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v10 = sub_1004A4A54();
    v11 = sub_1004A4A74();
    (*(*(v11 - 8) + 8))(v5, v11);
    v12 = sub_1004A6034();
    if (os_log_type_enabled(v10, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 68158464;
      *(v13 + 4) = 2;
      *(v13 + 8) = 256;
      *(v13 + 10) = v8;
      *(v13 + 11) = 1040;
      *(v13 + 13) = 8;
      *(v13 + 17) = 1024;
      *(v13 + 19) = v9;
      _os_log_impl(&_mh_execute_header, v10, v12, "[%.*hhx-%.*X] Did receive remote mailboxes: Sending sync-did-start.", v13, 0x17u);
    }

    v14 = *(v1 + 120);
    (*(v1 + 112))(0);
  }
}

void sub_1003559D4(uint64_t a1)
{
  v2 = v1;
  v4 = _s6LoggerVMa_0(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v51 - v9;
  v11 = 0;
  v12 = 0;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  while (v15)
  {
    v16 = v11;
LABEL_10:
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = *(a1 + 56) + 72 * (v17 | (v16 << 6));
    if (*(v18 + 65))
    {
      v19 = 0;
    }

    else
    {
      v19 = *(v18 + 24);
    }

    v20 = __OFADD__(v12, v19);
    v12 += v19;
    if (v20)
    {
      __break(1u);
LABEL_16:
      v21 = v2[7];
      if (v21)
      {
        v22 = v2[7];
      }

      else
      {
        v23 = v2[6];
        v24 = sub_1003070C0(v2[2], v2[3]);
        v25 = v2[7];
        v2[7] = v24;
        v22 = v24;

        v21 = 0;
      }

      v26 = v21;
      v27 = sub_10033AD14();

      v28 = v2 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
      if (v12 == v27)
      {
        sub_10035A508(v2 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v10, _s6LoggerVMa_0);
        v29 = &v28[*(v4 + 20)];
        v30 = *v29;
        v31 = *(v29 + 1);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v32 = sub_1004A4A54();
        v33 = sub_1004A4A74();
        (*(*(v33 - 8) + 8))(v10, v33);
        v34 = sub_1004A6034();
        if (os_log_type_enabled(v32, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 68158720;
          *(v35 + 4) = 2;
          *(v35 + 8) = 256;
          *(v35 + 10) = v30;
          *(v35 + 11) = 1040;
          *(v35 + 13) = 8;
          *(v35 + 17) = 1024;
          *(v35 + 19) = v31;
          *(v35 + 23) = 2048;
          *(v35 + 25) = v12;
          _os_log_impl(&_mh_execute_header, v32, v34, "[%.*hhx-%.*X] Account message count unchanged at %ld.", v35, 0x21u);
        }
      }

      else
      {
        sub_10035A508(v2 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v7, _s6LoggerVMa_0);
        v36 = &v28[*(v4 + 20)];
        v37 = *v36;
        v38 = *(v36 + 1);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v39 = sub_1004A4A54();
        v40 = sub_1004A4A74();
        (*(*(v40 - 8) + 8))(v7, v40);
        v41 = sub_1004A6034();
        if (os_log_type_enabled(v39, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 68158976;
          *(v42 + 4) = 2;
          *(v42 + 8) = 256;
          *(v42 + 10) = v37;
          *(v42 + 11) = 1040;
          *(v42 + 13) = 8;
          *(v42 + 17) = 1024;
          *(v42 + 19) = v38;
          *(v42 + 23) = 2048;
          *(v42 + 25) = v27;
          *(v42 + 33) = 2048;
          *(v42 + 35) = v12;
          _os_log_impl(&_mh_execute_header, v39, v41, "[%.*hhx-%.*X] Account message count %ld -> %ld.", v42, 0x2Bu);
        }

        v43 = v2[7];
        if (v43)
        {
          v44 = v2[7];
        }

        else
        {
          v45 = v2[6];
          v46 = sub_1003070C0(v2[2], v2[3]);
          v47 = v2[7];
          v2[7] = v46;
          v44 = v46;

          v43 = 0;
        }

        v48 = v43;
        v49 = sub_1004A5734();
        [v44 willChangeValueForKey:v49];

        v50 = [objc_allocWithZone(NSNumber) initWithInteger:v12 & ~(v12 >> 63)];
        [v44 setPrimitiveMessageCount:v50];

        v32 = sub_1004A5734();
        [v44 didChangeValueForKey:v32];
      }

      return;
    }
  }

  while (1)
  {
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v16 >= ((v13 + 63) >> 6))
    {
      goto LABEL_16;
    }

    v15 = *(a1 + 64 + 8 * v16);
    ++v11;
    if (v15)
    {
      v11 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_100355ECC(void *a1, unint64_t a2, int64_t a3, void *a4)
{
  v8 = HIDWORD(a2);
  v9 = objc_allocWithZone(NSFetchRequest);
  v10 = sub_1004A5734();
  v51 = [v9 initWithEntityName:v10];

  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1004CEA80;
  v12 = [a1 objectID];
  *(v11 + 56) = sub_10019A8E4(0, &qword_1005D8FE8, NSManagedObjectID_ptr);
  *(v11 + 32) = v12;
  v13 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:a2];
  v14 = sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
  *(v11 + 88) = v14;
  *(v11 + 64) = v13;
  v15 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v8];
  *(v11 + 120) = v14;
  *(v11 + 96) = v15;
  v16 = sub_1004A5734();
  isa = sub_1004A5C04().super.isa;

  v18 = [objc_opt_self() predicateWithFormat:v16 argumentArray:isa];

  [v51 setPredicate:v18];
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1004D3930;
  v20 = objc_allocWithZone(NSSortDescriptor);
  v21 = sub_1004A5734();
  v22 = [v20 initWithKey:v21 ascending:0];

  *(v19 + 32) = v22;
  v23 = v51;
  sub_10019A8E4(0, &qword_1005D9940, NSSortDescriptor_ptr);
  v24 = sub_1004A5C04().super.isa;

  [v51 setSortDescriptors:v24];

  [v51 setResultType:1];
  v57 = 0;
  v25 = [v51 execute:&v57];
  v26 = v57;
  if (!v25)
  {
    v50 = v57;
    sub_1004A4274();

    swift_willThrow();
    return;
  }

  v27 = v25;
  v28 = sub_1004A5C14();
  v29 = v26;

  if (v28 >> 62)
  {
    goto LABEL_53;
  }

  v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
    goto LABEL_56;
  }

  v57 = _swiftEmptySetSingleton;
  if (!a3)
  {
LABEL_55:
    __break(1u);
LABEL_56:

    return;
  }

  while (1)
  {
    if (v30 == 0x8000000000000000 && a3 == -1)
    {
      goto LABEL_60;
    }

    v31 = v30 / a3 + 1;
    if (__OFADD__(v30 / a3, 1))
    {
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v31 < 0)
    {
      goto LABEL_58;
    }

    if (v30 / a3 == -1)
    {
      break;
    }

    v32 = 0;
    while (1)
    {
      v33 = v32 * a3;
      if ((v32 * a3) >> 64 != (v32 * a3) >> 63)
      {
        break;
      }

      v34 = v33 - a4;
      if (__OFSUB__(v33, a4))
      {
        goto LABEL_44;
      }

      if ((v34 & 0x8000000000000000) == 0 && v34 < v30)
      {
        sub_1003624CC(&v56, v34);
      }

      if (v31 == ++v32)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    if (!sub_1004A6A34())
    {
      goto LABEL_56;
    }

    v57 = _swiftEmptySetSingleton;
    v30 = sub_1004A6A34();
    if (!a3)
    {
      goto LABEL_55;
    }
  }

LABEL_17:
  sub_1003624CC(&v56, 0);
  if (__OFSUB__(v30, 1))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
  }

  sub_1003624CC(&v56, v30 - 1);
  a4 = v57;
  v35 = v57[2];
  if (v35)
  {
    v56 = _swiftEmptyArrayStorage;
    sub_1004A6864();
    v36 = a4 + 7;
    v37 = -1 << *(a4 + 32);
    v38 = sub_1004A6554();
    v23 = 0;
    v39 = *(a4 + 9);
    v55 = v28 & 0xC000000000000001;
    v53 = v28 & 0xFFFFFFFFFFFFFF8;
    v52 = v28 + 32;
    v54 = v35;
    do
    {
      if (v38 < 0 || v38 >= 1 << *(a4 + 32))
      {
        goto LABEL_45;
      }

      a3 = v38 >> 6;
      v28 = 1 << v38;
      if ((v36[v38 >> 6] & (1 << v38)) == 0)
      {
        goto LABEL_46;
      }

      if (v39 != *(a4 + 9))
      {
        goto LABEL_47;
      }

      v41 = *(a4[6] + 8 * v38);
      if (v55)
      {
        sub_1004A6794();
      }

      else
      {
        if ((v41 & 0x8000000000000000) != 0)
        {
          goto LABEL_51;
        }

        if (v41 >= *(v53 + 16))
        {
          goto LABEL_52;
        }

        v42 = *(v52 + 8 * v41);
      }

      sub_1004A6814();
      v43 = v56[2];
      sub_1004A68A4();
      sub_1004A68B4();
      sub_1004A6834();
      v40 = 1 << *(a4 + 32);
      if (v38 >= v40)
      {
        goto LABEL_48;
      }

      v36 = a4 + 7;
      v44 = a4[a3 + 7];
      if ((v44 & v28) == 0)
      {
        goto LABEL_49;
      }

      if (v39 != *(a4 + 9))
      {
        goto LABEL_50;
      }

      v45 = v44 & (-2 << (v38 & 0x3F));
      if (v45)
      {
        v40 = __clz(__rbit64(v45)) | v38 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v46 = a3 << 6;
        v47 = a3 + 1;
        v48 = &a4[a3 + 8];
        while (v47 < (v40 + 63) >> 6)
        {
          v49 = *v48++;
          a3 = v49;
          v46 += 64;
          ++v47;
          if (v49)
          {
            sub_100020944(v38, v39, 0);
            v40 = __clz(__rbit64(a3)) + v46;
            goto LABEL_21;
          }
        }

        sub_100020944(v38, v39, 0);
      }

LABEL_21:
      ++v23;
      v38 = v40;
    }

    while (v23 != v54);
  }

  else
  {
  }
}

void sub_1003565B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v121 = a4;
  v118 = a3;
  v123 = a2;
  v5 = type metadata accessor for MessageSectionData(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v111 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v116 = &v110 - v9;
  __chkstk_darwin(v10);
  v113 = &v110 - v11;
  v117 = _s6LoggerVMa_0(0);
  v12 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117);
  v110 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v115 = &v110 - v15;
  __chkstk_darwin(v16);
  v112 = &v110 - v17;
  v18 = sub_10000C9C0(&qword_1005D97C8, &unk_1004F6A70);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v110 - v23;
  v25 = type metadata accessor for MessageBeingDownloaded(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v114 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v110 - v30;
  sub_10000E268(a1, v24, &qword_1005D97C8, &unk_1004F6A70);
  v119 = v26;
  v120 = v25;
  v32 = *(v26 + 48);
  if (v32(v24, 1, v25) == 1)
  {
    v33 = v5;
    v34 = a1;
    sub_100025F40(v24, &qword_1005D97C8, &unk_1004F6A70);
    v35 = v122;
    v36 = v123;
    v37 = v121;
    sub_100333518(*(v123 + 12));
    v122 = v35;
    if (!v35)
    {
      v39 = v38;
      v40 = v37;
      sub_100331300(v40, v39, v21);
      if (v32(v21, 1, v120) == 1)
      {
        sub_100025F40(v21, &qword_1005D97C8, &unk_1004F6A70);
        v41 = v118 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
        v42 = v112;
        sub_10035A508(v118 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v112, _s6LoggerVMa_0);
        v43 = (v41 + *(v117 + 20));
        v44 = *v43;
        v45 = *(v43 + 1);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v46 = v113;
        sub_10035A508(v36, v113, type metadata accessor for MessageSectionData);
        v47 = v40;
        v48 = sub_1004A4A54();
        v49 = sub_1004A4A74();
        (*(*(v49 - 8) + 8))(v42, v49);
        v50 = sub_1004A6014();

        if (os_log_type_enabled(v48, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v126 = v52;
          *v51 = 68159235;
          *(v51 + 4) = 2;
          *(v51 + 8) = 256;
          *(v51 + 10) = v44;
          *(v51 + 11) = 1040;
          *(v51 + 13) = 8;
          *(v51 + 17) = 1024;
          *(v51 + 19) = v45;
          *(v51 + 23) = 1024;
          v53 = *(v46 + 12);
          sub_10035A8B4(v46, type metadata accessor for MessageSectionData);
          *(v51 + 25) = v53;
          *(v51 + 29) = 2160;
          *(v51 + 31) = 0x786F626C69616DLL;
          *(v51 + 39) = 2085;
          v54 = sub_10033A824();
          if (v54)
          {
            v124 = v54;
            v125 = v55;
            v56 = sub_1004A5824();
            v58 = v57;
          }

          else
          {
            v56 = 8425698;
            v58 = 0xA300000000000000;
          }

          v107 = sub_10015BA6C(v56, v58, &v126);

          *(v51 + 41) = v107;
          _os_log_impl(&_mh_execute_header, v48, v50, "[%.*hhx-%.*X] Unable to create downloaded data for %u in '%{sensitive,mask.mailbox}s'.", v51, 0x31u);
          sub_1000197E0(v52);
        }

        else
        {
          sub_10035A8B4(v46, type metadata accessor for MessageSectionData);
        }
      }

      else
      {
        v82 = v114;
        sub_10035A84C(v21, v114, type metadata accessor for MessageBeingDownloaded);
        v83 = v122;
        sub_1003315B8(v36 + *(v33 + 28));
        if (v83)
        {
          v84 = v118 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
          v85 = v110;
          sub_10035A508(v118 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v110, _s6LoggerVMa_0);
          v86 = (v84 + *(v117 + 20));
          v87 = *v86;
          LODWORD(v121) = *(v86 + 1);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v88 = v36;
          v89 = v111;
          sub_10035A508(v88, v111, type metadata accessor for MessageSectionData);
          v90 = v40;
          swift_errorRetain();
          v91 = sub_1004A4A54();
          v92 = sub_1004A4A74();
          (*(*(v92 - 8) + 8))(v85, v92);
          v93 = sub_1004A6014();

          if (os_log_type_enabled(v91, v93))
          {
            v122 = v83;
            v94 = swift_slowAlloc();
            v95 = v89;
            v96 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v126 = v97;
            *v94 = 68159491;
            *(v94 + 4) = 2;
            *(v94 + 8) = 256;
            *(v94 + 10) = v87;
            *(v94 + 11) = 1040;
            *(v94 + 13) = 8;
            *(v94 + 17) = 1024;
            *(v94 + 19) = v121;
            *(v94 + 23) = 1024;
            v98 = *(v95 + 12);
            sub_10035A8B4(v95, type metadata accessor for MessageSectionData);
            *(v94 + 25) = v98;
            *(v94 + 29) = 2160;
            *(v94 + 31) = 0x786F626C69616DLL;
            *(v94 + 39) = 2085;
            v99 = sub_10033A824();
            if (v99)
            {
              v124 = v99;
              v125 = v100;
              v101 = sub_1004A5824();
              v103 = v102;
            }

            else
            {
              v101 = 8425698;
              v103 = 0xA300000000000000;
            }

            v108 = sub_10015BA6C(v101, v103, &v126);

            *(v94 + 41) = v108;
            *(v94 + 49) = 2112;
            v109 = sub_1004A4264();
            *(v94 + 51) = v109;
            *v96 = v109;
            _os_log_impl(&_mh_execute_header, v91, v93, "[%.*hhx-%.*X] Failed to append initial downloaded data to %u in '%{sensitive,mask.mailbox}s': %@", v94, 0x3Bu);
            sub_100025F40(v96, &qword_1005D51A0, &qword_1004D0940);

            sub_1000197E0(v97);

            v106 = v114;
          }

          else
          {
            sub_10035A8B4(v89, type metadata accessor for MessageSectionData);

            v106 = v82;
          }

          sub_10035A8B4(v106, type metadata accessor for MessageBeingDownloaded);
        }

        else
        {
          sub_100025F40(v34, &qword_1005D97C8, &unk_1004F6A70);
          sub_10035A84C(v82, v34, type metadata accessor for MessageBeingDownloaded);
          (*(v119 + 56))(v34, 0, 1, v120);
        }
      }
    }
  }

  else
  {
    v59 = v121;
    sub_100025F40(a1, &qword_1005D97C8, &unk_1004F6A70);
    sub_10035A84C(v24, v31, type metadata accessor for MessageBeingDownloaded);
    v60 = *(v5 + 28);
    v61 = v122;
    v62 = v123;
    sub_1003315B8(v123 + v60);
    if (v61)
    {
      v114 = v31;
      v63 = v118 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger;
      v64 = v115;
      sub_10035A508(v118 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, v115, _s6LoggerVMa_0);
      v65 = (v63 + *(v117 + 20));
      v66 = *v65;
      LODWORD(v118) = *(v65 + 1);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v67 = v116;
      sub_10035A508(v62, v116, type metadata accessor for MessageSectionData);
      v68 = v59;
      swift_errorRetain();
      v69 = sub_1004A4A54();
      v70 = sub_1004A4A74();
      (*(*(v70 - 8) + 8))(v64, v70);
      v71 = sub_1004A6014();

      if (os_log_type_enabled(v69, v71))
      {
        v122 = v61;
        v123 = a1;
        v72 = v67;
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v126 = v75;
        *v73 = 68159491;
        *(v73 + 4) = 2;
        *(v73 + 8) = 256;
        *(v73 + 10) = v66;
        *(v73 + 11) = 1040;
        *(v73 + 13) = 8;
        *(v73 + 17) = 1024;
        *(v73 + 19) = v118;
        *(v73 + 23) = 1024;
        v76 = *(v72 + 12);
        sub_10035A8B4(v72, type metadata accessor for MessageSectionData);
        *(v73 + 25) = v76;
        *(v73 + 29) = 2160;
        *(v73 + 31) = 0x786F626C69616DLL;
        *(v73 + 39) = 2085;
        v77 = sub_10033A824();
        if (v77)
        {
          v124 = v77;
          v125 = v78;
          v79 = sub_1004A5824();
          v81 = v80;
        }

        else
        {
          v79 = 8425698;
          v81 = 0xA300000000000000;
        }

        v104 = sub_10015BA6C(v79, v81, &v126);

        *(v73 + 41) = v104;
        *(v73 + 49) = 2112;
        v105 = sub_1004A4264();
        *(v73 + 51) = v105;
        *v74 = v105;
        _os_log_impl(&_mh_execute_header, v69, v71, "[%.*hhx-%.*X] Failed to append downloaded data to %u in '%{sensitive,mask.mailbox}s': %@", v73, 0x3Bu);
        sub_100025F40(v74, &qword_1005D51A0, &qword_1004D0940);

        sub_1000197E0(v75);

        sub_10035A8B4(v114, type metadata accessor for MessageBeingDownloaded);
        a1 = v123;
      }

      else
      {
        sub_10035A8B4(v67, type metadata accessor for MessageSectionData);

        sub_10035A8B4(v114, type metadata accessor for MessageBeingDownloaded);
      }

      (*(v119 + 56))(a1, 1, 1, v120);
    }

    else
    {
      sub_10035A84C(v31, a1, type metadata accessor for MessageBeingDownloaded);
      (*(v119 + 56))(a1, 0, 1, v120);
    }
  }
}