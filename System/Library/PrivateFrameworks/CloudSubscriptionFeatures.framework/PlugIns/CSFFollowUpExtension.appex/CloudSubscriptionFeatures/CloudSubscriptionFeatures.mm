void sub_100001364(void *a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v68 = a4;
  v69 = a3;
  v6 = (*(*(sub_1000030C8(&qword_10000C230, &qword_100005028) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v65 = &v59 - v7;
  v8 = sub_100004B00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = (__chkstk_darwin)();
  v67 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v62 = &v59 - v14;
  __chkstk_darwin(v13);
  v16 = &v59 - v15;
  sub_100004A90();
  v17 = a2;
  v18 = a1;
  v19 = sub_100004AF0();
  v20 = sub_100004BB0();

  v21 = os_log_type_enabled(v19, v20);
  v66 = a2;
  v63 = v17;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v60 = v9;
    v23 = v22;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v61 = v8;
    v26 = v25;
    v70 = v25;
    *v23 = 136315650;
    *(v23 + 4) = sub_100002B20(0xD000000000000031, 0x8000000100005120, &v70);
    *(v23 + 12) = 2112;
    *(v23 + 14) = v18;
    *(v23 + 22) = 2112;
    *(v23 + 24) = v17;
    *v24 = a1;
    v24[1] = a2;
    v27 = v18;
    v28 = v17;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s: processing follow up item %@, action %@", v23, 0x20u);
    sub_1000030C8(&qword_10000C238, &qword_100005040);
    swift_arrayDestroy();

    sub_10000330C(v26);
    v8 = v61;

    v9 = v60;
  }

  v29 = *(v9 + 8);
  v29(v16, v8);
  if (!a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_1000019C4())
  {
    v30 = v62;
    sub_100004A90();
    v31 = sub_100004AF0();
    v32 = sub_100004BB0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = v8;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v70 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_100002B20(0xD000000000000031, 0x8000000100005120, &v70);
      _os_log_impl(&_mh_execute_header, v31, v32, "%s: handling image creation CFU", v34, 0xCu);
      sub_10000330C(v35);

      v36 = v30;
      v37 = v33;
    }

    else
    {

      v36 = v30;
      v37 = v8;
    }

    v29(v36, v37);
    v51 = v66;
    v52 = v63;
    v53 = sub_100004B90();
    v54 = v65;
    (*(*(v53 - 8) + 56))(v65, 1, 1, v53);
    sub_100004B70();
    v55 = v52;
    v56 = v64;
    v57 = sub_100004B60();
    v58 = swift_allocObject();
    v58[2] = v57;
    v58[3] = &protocol witness table for MainActor;
    v58[4] = v51;
    v58[5] = v56;
    sub_1000020D8(0, 0, v54, &unk_100005038, v58);

LABEL_14:
    if (v69)
    {
      v69(1);
      return;
    }

    goto LABEL_17;
  }

  v38 = v67;
  sub_100004A90();
  v39 = v18;
  v40 = sub_100004AF0();
  v41 = sub_100004BB0();
  if (!os_log_type_enabled(v40, v41))
  {

    v49 = v38;
    v50 = v8;
    goto LABEL_13;
  }

  v42 = v8;
  v43 = swift_slowAlloc();
  v70 = swift_slowAlloc();
  *v43 = 136315394;
  *(v43 + 4) = sub_100002B20(0xD000000000000031, 0x8000000100005120, &v70);
  *(v43 + 12) = 2080;
  v44 = [v39 uniqueIdentifier];

  if (v44)
  {
    v45 = sub_100004B20();
    v47 = v46;

    v48 = sub_100002B20(v45, v47, &v70);

    *(v43 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v40, v41, "%s: no special handling for CFU id %s", v43, 0x16u);
    swift_arrayDestroy();

    v49 = v67;
    v50 = v42;
LABEL_13:
    v29(v49, v50);
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1000019C4()
{
  v1 = v0;
  v2 = sub_100004AC0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 uniqueIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_100004B20();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  (*(v3 + 104))(v6, enum case for FollowUp.Feature.adm(_:), v2);
  v12 = sub_100004AB0();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  if (v11)
  {
    if (v9 == v12 && v11 == v14)
    {
      v16 = 1;
    }

    else
    {
      v16 = sub_100004BF0();
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_100001B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_100004B00();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_100004B70();
  v4[6] = sub_100004B60();
  v9 = sub_100004B50();
  v4[7] = v9;
  v4[8] = v8;

  return _swift_task_switch(sub_100001C44, v9, v8);
}

void sub_100001C44()
{
  v15 = v0;
  if (v0[2])
  {
    if (sub_100001FD0())
    {
      v2 = v0[5];
      v1 = v0[6];

      sub_100004A90();
      v3 = sub_100004AF0();
      v4 = sub_100004BB0();
      v5 = os_log_type_enabled(v3, v4);
      v7 = v0[4];
      v6 = v0[5];
      v8 = v0[3];
      if (v5)
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v14 = v10;
        *v9 = 136315138;
        *(v9 + 4) = sub_100002B20(0xD000000000000031, 0x8000000100005120, &v14);
        _os_log_impl(&_mh_execute_header, v3, v4, "%s: image creation notification was dismissed", v9, 0xCu);
        sub_10000330C(v10);
      }

      (*(v7 + 8))(v6, v8);
      v11 = v0[5];

      v12 = v0[1];

      v12();
    }

    else
    {
      v13 = swift_task_alloc();
      v0[9] = v13;
      *v13 = v0;
      v13[1] = sub_100001E48;

      sub_100003C94();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100001E48()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return _swift_task_switch(sub_100001F68, v4, v3);
}

uint64_t sub_100001F68()
{
  v1 = v0[6];

  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100001FD0()
{
  v1 = v0;
  v2 = [v0 identifier];
  if (v2)
  {
    v3 = v2;
    v4 = sub_100004B20();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  sub_100004AE0();
  v7 = sub_100004AA0();
  if (v6)
  {
    if (v4 == v7 && v6 == v8)
    {

      return 1;
    }

    v9 = sub_100004BF0();

    if (v9)
    {
      return 1;
    }
  }

  else
  {
  }

  v10 = [v1 label];
  if (v10)
  {

    return 0;
  }

  return 1;
}

uint64_t sub_1000020D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1000030C8(&qword_10000C230, &qword_100005028) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100003358(a3, v26 - v10);
  v12 = sub_100004B90();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000048A0(v11, &qword_10000C230, &qword_100005028);
  }

  else
  {
    sub_100004B80();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_100004B50();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_100004B30() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1000048A0(a3, &qword_10000C230, &qword_100005028);

      return v24;
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

  sub_1000048A0(a3, &qword_10000C230, &qword_100005028);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000024B4(char a1, uint64_t a2)
{
  v4 = sub_100004B00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004A90();
  swift_errorRetain();
  v9 = sub_100004AF0();
  v10 = sub_100004BB0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v11 = 136315650;
    *(v11 + 4) = sub_100002B20(0xD000000000000019, 0x80000001000051E0, &v18);
    *(v11 + 12) = 1024;
    *(v11 + 14) = a1 & 1;
    *(v11 + 18) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      v15 = v14;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    *(v11 + 20) = v14;
    *v12 = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s completed with success %{BOOL}d, error %@", v11, 0x1Cu);
    sub_1000048A0(v12, &qword_10000C238, &qword_100005040);

    sub_10000330C(v13);
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_1000026E8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

id sub_100002878()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CSFFollowUpExtension();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000028D0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000028E0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002930(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002A28;

  return v7(a1);
}

uint64_t sub_100002A28()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002B20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002BEC(v11, 0, 0, 1, a1, a2);
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
    sub_100004958(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000330C(v11);
  return v7;
}

unint64_t sub_100002BEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002CF8(a5, a6);
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
    result = sub_100004BD0();
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

char *sub_100002CF8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100002D44(a1, a2);
  sub_100002E74(&off_100008380);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100002D44(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002F60(v5, 0);
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

  result = sub_100004BD0();
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
        v10 = sub_100004B40();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100002F60(v10, 0);
        result = sub_100004BC0();
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

uint64_t sub_100002E74(uint64_t result)
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

  result = sub_100002FD4(result, v12, 1, v3);
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

void *sub_100002F60(uint64_t a1, uint64_t a2)
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

  sub_1000030C8(&qword_10000C250, &qword_100005070);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002FD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000030C8(&qword_10000C250, &qword_100005070);
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

uint64_t sub_1000030C8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003110()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100003158(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100003218;

  return sub_100001B50(a1, v4, v5, v7);
}

uint64_t sub_100003218()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000330C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100003358(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000030C8(&qword_10000C230, &qword_100005028);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000033C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100004A28;

  return sub_100002930(a1, v5);
}

uint64_t sub_100003480()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000034B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003218;

  return sub_100002930(a1, v5);
}

uint64_t sub_100003570(uint64_t (*a1)(void))
{
  v2 = sub_100004B00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004A90();
  v7 = sub_100004AF0();
  v8 = sub_100004BB0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100002B20(0xD000000000000029, 0x8000000100005260, &v13);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_10000330C(v10);
  }

  result = (*(v3 + 8))(v6, v2);
  if (a1)
  {
    return a1(0);
  }

  __break(1u);
  return result;
}

void sub_100003730()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_100004B10();
    v4[4] = sub_1000024B4;
    v4[5] = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_1000026E8;
    v4[3] = &unk_100008448;
    v3 = _Block_copy(v4);
    [v1 openApplicationWithBundleIdentifier:v2 usingConfiguration:0 completionHandler:v3];
    _Block_release(v3);
  }

  else
  {
    __break(1u);
  }
}

id sub_100003838()
{
  v0 = sub_100004B00();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000030C8(&qword_10000C240, &qword_100005068);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v33 - v7;
  v9 = sub_100004A80();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  sub_100004A70();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000048A0(v8, &qword_10000C240, &qword_100005068);
  }

  v35 = v1;
  (*(v10 + 32))(v16, v8, v9);
  sub_100004A90();
  (*(v10 + 16))(v14, v16, v9);
  v18 = sub_100004AF0();
  v19 = sub_100004BB0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34 = v0;
    v21 = v20;
    v33 = swift_slowAlloc();
    v36 = v33;
    *v21 = 136315394;
    *(v21 + 4) = sub_100002B20(0xD000000000000022, 0x8000000100005230, &v36);
    *(v21 + 12) = 2080;
    sub_100004900();
    v22 = sub_100004BE0();
    v24 = v23;
    v25 = v14;
    v26 = *(v10 + 8);
    v26(v25, v9);
    v27 = sub_100002B20(v22, v24, &v36);

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s launching app store link %s", v21, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v4, v34);
  }

  else
  {

    v28 = v14;
    v26 = *(v10 + 8);
    v26(v28, v9);
    (*(v35 + 8))(v4, v0);
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v30 = result;
    sub_100004A60(v29);
    v32 = v31;
    [v30 openURL:v31 configuration:0 completionHandler:0];

    return (v26)(v16, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100003C94()
{
  v1 = sub_100004B00();
  v0[6] = v1;
  v2 = *(v1 - 8);
  v0[7] = v2;
  v3 = *(v2 + 64) + 15;
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v4 = sub_100004AC0();
  v0[12] = v4;
  v5 = *(v4 - 8);
  v0[13] = v5;
  v6 = *(v5 + 64) + 15;
  v0[14] = swift_task_alloc();
  sub_100004B70();
  v0[15] = sub_100004B60();
  v8 = sub_100004B50();
  v0[16] = v8;
  v0[17] = v7;

  return _swift_task_switch(sub_100003E04, v8, v7);
}

uint64_t sub_100003E04()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  sub_100004AE0();
  (*(v2 + 104))(v1, enum case for FollowUp.Feature.adm(_:), v3);
  v4 = async function pointer to static FollowUp.clearCFU(_:)[1];
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_100003EE0;
  v6 = v0[14];

  return static FollowUp.clearCFU(_:)(v6);
}

uint64_t sub_100003EE0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 152) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 136);
  v9 = *(v2 + 128);
  if (v0)
  {
    v10 = sub_100004420;
  }

  else
  {
    v10 = sub_100004078;
  }

  return _swift_task_switch(v10, v9, v8);
}

id sub_100004078()
{
  v40 = v0;
  v1 = v0[11];
  sub_100004A90();
  v2 = sub_100004AF0();
  v3 = sub_100004BB0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[11];
  v6 = v0[6];
  v7 = v0[7];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ADM CFU was successfully cleared", v8, 2u);
  }

  v9 = *(v7 + 8);
  v9(v5, v6);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v11 = result;
    v12 = v0[15];

    v13 = sub_100004B10();
    v14 = [v11 applicationIsInstalled:v13];

    if (v14)
    {
      v15 = v0[10];
      sub_100004A90();
      v16 = sub_100004AF0();
      v17 = sub_100004BB0();
      v18 = os_log_type_enabled(v16, v17);
      v19 = v0[10];
      v20 = v0[6];
      v21 = v0[7];
      if (v18)
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v39 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_100002B20(0xD000000000000029, 0x8000000100005190, &v39);
        _os_log_impl(&_mh_execute_header, v16, v17, "%s: Image Playground is installed, will launch the app", v22, 0xCu);
        sub_10000330C(v23);
      }

      v9(v19, v20);
      sub_100003730();
    }

    else
    {
      v24 = v0[9];
      sub_100004A90();
      v25 = sub_100004AF0();
      v26 = sub_100004BB0();
      v27 = os_log_type_enabled(v25, v26);
      v28 = v0[9];
      v29 = v0[6];
      v30 = v0[7];
      if (v27)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v39 = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_100002B20(0xD000000000000029, 0x8000000100005190, &v39);
        _os_log_impl(&_mh_execute_header, v25, v26, "%s: Image Playground is not found, opening App Store page", v31, 0xCu);
        sub_10000330C(v32);
      }

      v9(v28, v29);
      sub_100003838();
    }

    v33 = v0[14];
    v34 = v0[10];
    v35 = v0[11];
    v37 = v0[8];
    v36 = v0[9];

    v38 = v0[1];

    return v38();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100004420()
{
  v52 = v0;
  v1 = v0[19];
  v2 = v0[8];
  sub_100004A90();
  swift_errorRetain();
  v3 = sub_100004AF0();
  v4 = sub_100004BA0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v6 = v0[7];
    v50 = v0[8];
    v7 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v51 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = sub_100004C00();
    v15 = sub_100002B20(v13, v14, &v51);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "error clearing ADM CFU %s", v8, 0xCu);
    sub_10000330C(v9);

    v16 = *(v6 + 8);
    v16(v50, v7);
  }

  else
  {
    v17 = v0[19];
    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[6];

    v16 = *(v19 + 8);
    v16(v18, v20);
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v22 = result;
    v23 = v0[15];

    v24 = sub_100004B10();
    v25 = [v22 applicationIsInstalled:v24];

    if (v25)
    {
      v26 = v0[10];
      sub_100004A90();
      v27 = sub_100004AF0();
      v28 = sub_100004BB0();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v0[10];
      v31 = v0[6];
      v32 = v0[7];
      if (v29)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v51 = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_100002B20(0xD000000000000029, 0x8000000100005190, &v51);
        _os_log_impl(&_mh_execute_header, v27, v28, "%s: Image Playground is installed, will launch the app", v33, 0xCu);
        sub_10000330C(v34);
      }

      v16(v30, v31);
      sub_100003730();
    }

    else
    {
      v35 = v0[9];
      sub_100004A90();
      v36 = sub_100004AF0();
      v37 = sub_100004BB0();
      v38 = os_log_type_enabled(v36, v37);
      v39 = v0[9];
      v40 = v0[6];
      v41 = v0[7];
      if (v38)
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v51 = v43;
        *v42 = 136315138;
        *(v42 + 4) = sub_100002B20(0xD000000000000029, 0x8000000100005190, &v51);
        _os_log_impl(&_mh_execute_header, v36, v37, "%s: Image Playground is not found, opening App Store page", v42, 0xCu);
        sub_10000330C(v43);
      }

      v16(v39, v40);
      sub_100003838();
    }

    v44 = v0[14];
    v45 = v0[10];
    v46 = v0[11];
    v48 = v0[8];
    v47 = v0[9];

    v49 = v0[1];

    return v49();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100004888(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000048A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000030C8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100004900()
{
  result = qword_10000C248;
  if (!qword_10000C248)
  {
    sub_100004A80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C248);
  }

  return result;
}

uint64_t sub_100004958(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void type metadata accessor for FLUpdateResult()
{
  if (!qword_10000C258)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10000C258);
    }
  }
}