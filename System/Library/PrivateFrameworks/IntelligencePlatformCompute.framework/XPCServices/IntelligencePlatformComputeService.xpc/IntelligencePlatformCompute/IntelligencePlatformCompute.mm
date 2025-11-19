uint64_t sub_100001878(uint64_t a1)
{
  v2 = sub_10000A234(&unk_100018AA0, &qword_10000F5D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000018E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100004134;

  return sub_100001E10(a1, v4, v5, v7);
}

uint64_t sub_1000019AC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100004134;

  return sub_100001A64(a1, v5);
}

uint64_t sub_100001A64(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004138;

  return v7(a1);
}

uint64_t sub_100001D00(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  sub_100002370(0, &qword_100018A60, GDViewUpdateSourceRequest_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[5] = v9;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100003F58;

  return sub_1000023B8(v6, v8, v9);
}

uint64_t sub_100001E10(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1000026DC;

  return v8();
}

uint64_t sub_100001EF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100004134;

  return sub_100001FB8(v2, v3, v5);
}

uint64_t sub_100001FB8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100004134;

  return v7();
}

uint64_t sub_1000020A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000026DC;

  return sub_100001D00(v2, v3, v5, v4);
}

uint64_t sub_100002160()
{
  v18 = v0;
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_100002A34(v2, qword_100018BA0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_100002968(v6, v5, &v17);
    _os_log_impl(&_mh_execute_header, v3, v4, "IntelligencePlatformComputeService: updateViewWithName %{public}s called", v7, 0xCu);
    sub_100002DB8(v8);
  }

  if (qword_1000187F0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Configuration();
  v10 = sub_100002A34(v9, qword_100018B70);
  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_100003CC8;
  v12 = v0[4];
  v13 = v0[5];
  v15 = v0[2];
  v14 = v0[3];

  return sub_100003B20(v15, v14, v12, v10);
}

uint64_t sub_100002370(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1000023B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100002160, 0, 0);
}

uint64_t sub_1000023DC()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[20];
  v7 = v0[18];
  v6 = v0[19];
  v14 = v0[17];
  v15 = v0[21];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = swift_task_alloc();
  (*(v1 + 16))(v9, v5, v4);
  v10 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v14;
  *(v11 + 5) = v7;
  (*(v1 + 32))(&v11[v10], v9, v4);
  *&v11[(v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8] = v6;

  v0[31] = sub_10000640C(0, 0, v3, &unk_10000F4F8, v11, &qword_100018928, &qword_10000F3A0);
  v12 = *(v15 + OBJC_IVAR____TtC34IntelligencePlatformComputeService34IntelligencePlatformComputeService_updateViewTaskRegister);
  v0[32] = v12;

  return _swift_task_switch(sub_100002BD4, v12, 0);
}

uint64_t sub_1000025A4()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_1000061A8;
  }

  else
  {
    v3 = sub_1000026B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000026B8()
{
  v1 = v0[32];
  v0[43] = v0[13];
  return _swift_task_switch(sub_100003254, v1, 0);
}

uint64_t sub_1000026DC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000027D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_1000063A8;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_1000028F8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000028F8()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[2];

  *v3 = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_100002968(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002A6C(v11, 0, 0, 1, a1, a2);
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
    sub_100002B78(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002DB8(v11);
  return v7;
}

uint64_t sub_100002A34(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100002A6C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000CCA8(a5, a6);
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

uint64_t sub_100002B78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100002BD4()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[18];
  swift_beginAccess();
  v4 = *(v2 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 112) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_100004270(0, v4[2] + 1, 1, v4, &unk_100018970, &unk_10000F508, &qword_100018968, &qword_10000F500);
    *(v2 + 112) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_100004270((v6 > 1), v7 + 1, 1, v4, &unk_100018970, &unk_10000F508, &qword_100018968, &qword_10000F500);
  }

  v8 = v0[31];
  v10 = v0[17];
  v9 = v0[18];
  v4[2] = v7 + 1;
  v11 = &v4[3 * v7];
  v11[4] = v8;
  v11[5] = v10;
  v11[6] = v9;
  *(v2 + 112) = v4;
  swift_endAccess();
  v12 = async function pointer to Task.value.getter[1];
  v13 = swift_task_alloc();
  v0[33] = v13;
  v14 = sub_10000A234(&qword_100018928, &qword_10000F3A0);
  v0[34] = v14;
  v15 = sub_10000A234(&unk_100018AB0, &qword_10000F3A8);
  v0[35] = v15;
  *v13 = v0;
  v13[1] = sub_1000025A4;
  v16 = v0[31];

  return Task.value.getter(v0 + 13, v16, v14, v15, &protocol self-conformance witness table for Error);
}

uint64_t sub_100002DB8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100002E04()
{
  v17 = v0;
  static Task<>.checkCancellation()();
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  sub_100002A34(v2, qword_100018BA0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_100002968(v6, v5, &v16);
    _os_log_impl(&_mh_execute_header, v3, v4, "IntelligencePlatformComputeService: updateViewWithName %{public}s begining update", v7, 0xCu);
    sub_100002DB8(v8);
  }

  v9 = v0[5];
  type metadata accessor for ViewUpdate.ViewInProcessRunner();
  v0[7] = static ViewUpdate.ViewInProcessRunner.sharedInProcessRunner(for:)();
  v10 = async function pointer to ViewUpdate.ViewInProcessRunner.update(viewName:requests:)[1];
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_1000027D0;
  v12 = v0[6];
  v14 = v0[3];
  v13 = v0[4];

  return ViewUpdate.ViewInProcessRunner.update(viewName:requests:)(v14, v13, v12);
}

uint64_t sub_100003040(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Configuration() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000026DC;

  return sub_100003178(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_100003178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_100002E04, 0, 0);
}

uint64_t sub_1000031A0()
{
  v1 = v0[25] + 15;
  v2 = swift_task_alloc();
  v0[44] = v2;
  static Configuration.intelligencePlatformComputeService.getter();
  v3 = async function pointer to static IntelligencePlatformComputeSystem.teardown(config:)[1];
  v4 = swift_task_alloc();
  v0[45] = v4;
  *v4 = v0;
  v4[1] = sub_100003820;

  return static IntelligencePlatformComputeSystem.teardown(config:)(v2);
}

uint64_t sub_100003254()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[18];
  swift_beginAccess();
  v4 = *(v2 + 112);
  v6 = v4[2];
  v5 = v4 + 2;

  v52 = v0;
  v53 = v6;
  if (!v6)
  {
    v8 = 0;
LABEL_18:
    v22 = v52[31];
    v23 = v52[18];

    v18 = v4[2];
    if (v18 < v8)
    {
      goto LABEL_50;
    }

    v24 = v52[32] + 112;
    sub_100003648(v8, v18, &unk_100018970, &unk_10000F508, &qword_100018968, &qword_10000F500);
    swift_endAccess();
    v17 = sub_1000031A0;
    v18 = 0;
    v19 = 0;

    return _swift_task_switch(v17, v18, v19);
  }

  v7 = 0;
  v8 = 0;
  v55 = v4;
  while (1)
  {
    v10 = v0[34];
    v9 = v0[35];
    v11 = v0[31];
    v12 = v4[v7 + 4];
    v13 = v4[v7 + 5];
    v14 = v4[v7 + 6];

    if (static Task.== infix(_:_:)())
    {
      break;
    }

LABEL_4:
    ++v8;
    v7 += 3;
    v4 = v55;
    if (v53 == v8)
    {
      v8 = *v5;
      goto LABEL_18;
    }
  }

  if (v13 != v0[17] || v14 != v0[18])
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_15;
    }

    goto LABEL_4;
  }

LABEL_15:
  v20 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    goto LABEL_51;
  }

  v21 = *v5;
  if (v20 == *v5)
  {
    v4 = v55;
    goto LABEL_18;
  }

  v4 = v55;
  while (2)
  {
    if (v20 < v21)
    {
      v54 = v20;
      v56 = v4;
      v26 = v52[34];
      v25 = v52[35];
      v27 = v52[31];
      v28 = &v4[v7];
      v29 = v4[v7 + 7];
      v51 = v4[v7 + 8];
      v30 = v4[v7 + 9];

      if (static Task.== infix(_:_:)())
      {
        if (v51 == v52[17] && v30 == v52[18])
        {

          goto LABEL_44;
        }

        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v32)
        {
LABEL_44:
          v33 = v54;
          v4 = v56;
LABEL_25:
          v20 = v33 + 1;
          v5 = v4 + 2;
          v21 = v4[2];
          v7 += 3;
          if (v20 == v21)
          {
            goto LABEL_18;
          }

          continue;
        }
      }

      else
      {
      }

      v33 = v54;
      if (v54 == v8)
      {
        v4 = v56;
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        if (v8 >= *v5)
        {
          goto LABEL_47;
        }

        if (v54 >= *v5)
        {
          goto LABEL_48;
        }

        v34 = v56;
        v35 = &v56[3 * v8 + 4];
        v36 = *v35;
        v37 = v35[1];
        v38 = v35[2];
        v39 = v28[7];
        v40 = v28[8];
        v41 = v28[9];

        v42 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_10000A6B8(v56);
        }

        v43 = &v34[3 * v8];
        v44 = v43[4];
        v45 = v43[6];
        v43[4] = v39;
        v43[5] = v42;
        v43[6] = v41;

        v33 = v54;
        if (v54 >= v34[2])
        {
          goto LABEL_49;
        }

        v46 = v52[32];
        v47 = &v34[v7];
        v48 = v34[v7 + 7];
        v49 = v34[v7 + 9];
        v47[7] = v36;
        v47[8] = v37;
        v47[9] = v38;

        *(v46 + 112) = v34;
        v4 = v34;
      }

      ++v8;
      goto LABEL_25;
    }

    break;
  }

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
  return _swift_task_switch(v17, v18, v19);
}

unint64_t sub_100003648(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = *v6;
  v9 = *(*v6 + 16);
  if (v9 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v9 + v11;
  if (__OFADD__(v9, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v17 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v12 > v8[3] >> 1)
  {
    if (v9 <= v12)
    {
      v19 = v12;
    }

    else
    {
      v19 = v9;
    }

    v8 = sub_100004270(isUniquelyReferenced_nonNull_native, v19, 1, v8, a3, a4, a5, a6);
    *v6 = v8;
  }

  result = sub_100003740(v10, a2, 0, a5, a6);
  *v6 = v8;
  return result;
}

unint64_t sub_100003740(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = *v5;
  v10 = v9 + 32 + 24 * result;
  sub_10000A234(a4, a5);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v6);
  v12 = a3 - v6;
  if (v11)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_17;
  }

  result = v10 + 24 * a3;
  v15 = (v9 + 32 + 24 * a2);
  if (result != v15 || result >= v15 + 24 * v14)
  {
    result = memmove(result, v15, 24 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_18;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_100003820()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v5 = *(v2 + 344);
    v6 = *(v2 + 240);
    (*(v2 + 232))(*(v2 + 352), *(v2 + 184));

    v7 = sub_100005620;
  }

  else
  {
    v8 = *(v2 + 240);
    v9 = *(v2 + 184);
    v10 = *(v2 + 352);
    (*(v2 + 232))();

    v7 = sub_100003980;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100003980()
{
  v16 = v0;
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = type metadata accessor for Logger();
  sub_100002A34(v2, qword_100018BA0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[31];
  if (v5)
  {
    v8 = v0[17];
    v7 = v0[18];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_100002968(v8, v7, &v15);
    _os_log_impl(&_mh_execute_header, v3, v4, "IntelligencePlatformComputeService: update %{public}s returning responses", v9, 0xCu);
    sub_100002DB8(v10);
  }

  v11 = v0[22];

  v12 = v0[1];
  v13 = v0[43];

  return v12(v13);
}

uint64_t sub_100003B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v6 = *(*(sub_10000A234(&unk_100018AA0, &qword_10000F5D0) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();

  return _swift_task_switch(sub_100003BC4, 0, 0);
}

uint64_t sub_100003BC4()
{
  v1 = type metadata accessor for Configuration();
  v0[23] = v1;
  v2 = *(v1 - 8);
  v0[24] = v2;
  v0[25] = *(v2 + 64);
  v3 = swift_task_alloc();
  v0[26] = v3;
  static Configuration.intelligencePlatformComputeService.getter();
  v4 = async function pointer to static IntelligencePlatformComputeSystem.prepare(config:)[1];
  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_100003DC8;

  return static IntelligencePlatformComputeSystem.prepare(config:)(v3);
}

uint64_t sub_100003CC8(uint64_t a1)
{
  v4 = *(*v2 + 48);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_100003DC8()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  v2[28] = v0;

  v5 = v2[26];
  v6 = v2[24];
  v7 = v2[23];
  v8 = *(v6 + 8);
  v9 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v2[37] = v8;
    v2[38] = v9;
    (v8)(v5, v7);
    v10 = sub_100005074;
  }

  else
  {
    v2[29] = v8;
    v2[30] = v9;
    v8();

    v10 = sub_1000023DC;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100003F58()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    sub_100002370(0, &qword_100018960, GDViewUpdateSourceResponse_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = isa;
    v10 = 0;
    v9 = isa;
  }

  v13 = *(v3 + 24);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

uint64_t sub_100004138()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100004230()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

void *sub_100004270(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10000A234(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A234(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_1000043B8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000043F8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000445C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004498()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Configuration();
  sub_100004644(v3, qword_100018B58);
  v4 = sub_100002A34(v3, qword_100018B58);
  v5 = os_transaction_create();
  v6 = *(v3 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004B6C();
  v10 = objc_autoreleasePoolPush();
  type metadata accessor for Library();
  sub_100004DF4();
  static UnifiedLibrary.add(library:)();
  objc_autoreleasePoolPop(v10);
  v11 = objc_autoreleasePoolPush();
  static IntelligencePlatformComputeSystem.start()();
  objc_autoreleasePoolPop(v11);
  if (Configuration.isIPCSMemoryTransactionEnabled.getter())
  {
    (*(v6 + 32))(v4, v9, v3);
    swift_unknownObjectRelease();
    sub_10000D078(v4);
  }

  sub_10000D078(v9);
}

uint64_t *sub_100004644(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1000046A8(uint64_t *a1, int a2)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_100004E4C(v6, v5);
      *v20 = v6;
      *&v20[8] = v5;
      v20[10] = BYTE2(v5);
      v20[11] = BYTE3(v5);
      v20[12] = BYTE4(v5);
      v20[13] = BYTE5(v5);
      v20[14] = BYTE6(v5);
      result = sub_10000E6CC(v20, a2, &v21);
      if (!v2)
      {
        result = v21;
      }

      v9 = *&v20[8] | ((*&v20[12] | (v20[14] << 16)) << 32);
      *a1 = *v20;
      a1[1] = v9;
      return result;
    }

    v12 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100004E4C(v6, v5);
    *a1 = xmmword_10000F2B0;
    sub_100004E4C(0, 0xC000000000000000);
    v13 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v6)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_24:
        __break(1u);
      }

      v14 = type metadata accessor for __DataStorage();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      v17 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v17;
    }

    if (v13 >= v6)
    {

      v18 = sub_100004A18(v6, v6 >> 32, v12, a2);

      v11 = v12 | 0x4000000000000000;
      if (!v2)
      {
        *a1 = v6;
        a1[1] = v11;
        return v18;
      }

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v7 == 2)
  {
    v10 = *a1;

    sub_100004E4C(v6, v5);
    v21 = v6;
    v22 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_10000F2B0;
    sub_100004E4C(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v6 = v21;
    result = sub_100004A18(*(v21 + 16), *(v21 + 24), v22, a2);
    v11 = v22 | 0x8000000000000000;
    if (!v2)
    {
      *a1 = v21;
      a1[1] = v11;
      return result;
    }

LABEL_19:
    *a1 = v6;
    a1[1] = v11;
    return result;
  }

  memset(v20, 0, 15);
  result = sub_10000E6CC(v20, a2, &v21);
  if (!v2)
  {
    return v21;
  }

  return result;
}

uint64_t sub_100004A18(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_9;
  }

  v9 = result;
  result = __DataStorage._offset.getter();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  __DataStorage._length.getter();
  result = sub_10000E6CC((v9 + v10), a4, &v11);
  if (!v4)
  {
    return v11;
  }

  return result;
}

void sub_100004AC4(int *a1, int a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(a1 + 1);

  v7 = __DataStorage._bytes.getter();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = __DataStorage._offset.getter();
  v10 = v4 - v9;
  if (__OFSUB__(v4, v9))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v5 - v4;
  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  memset((v8 + v10), a2, v13);
}

uint64_t sub_100004B6C()
{
  String.utf8CString.getter();
  v0 = _set_user_dir_suffix();

  if (!v0)
  {
    if (qword_100018800 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100002A34(v18, qword_100018BA0);
    v10 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v13 = "_set_user_dir_suffix() failed!";
      v14 = v19;
      v15 = v10;
      v16 = v20;
      v17 = 2;
      goto LABEL_15;
    }

LABEL_16:

    exit(1);
  }

  v1 = type metadata accessor for __DataStorage();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v21 = 0x40000000000;
  v22 = __DataStorage.init(length:)();
  sub_100004AC4(&v21, 0);
  v22 |= 0x4000000000000000uLL;
  sub_1000046A8(&v21, 65537);
  v5 = v4;
  sub_100004E4C(v21, v22);
  if (!v5 || (v6 = String.utf8CString.getter(), , v7 = realpath_DARWIN_EXTSN((v6 + 32), 0), , !v7))
  {
    if (qword_100018800 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100002A34(v9, qword_100018BA0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 1) = 65537;
      v13 = "Unable to read _CS_DARWIN_USER_CACHE_DIR %d!";
      v14 = v11;
      v15 = v10;
      v16 = v12;
      v17 = 8;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v15, v14, v13, v16, v17);

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  String.init(cString:)();
}

unint64_t sub_100004DF4()
{
  result = qword_100018808;
  if (!qword_100018808)
  {
    type metadata accessor for Library();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018808);
  }

  return result;
}

uint64_t sub_100004E4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100004EA0()
{
  v0 = type metadata accessor for Configuration();
  sub_100004644(v0, qword_100018B70);
  v1 = sub_100002A34(v0, qword_100018B70);
  if (qword_1000187F8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A234(&qword_100018A30, &qword_10000F440);
  v3 = sub_100002A34(v2, qword_100018B88);
  v4 = swift_beginAccess();
  v5 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_10000AFB0(v3, &v10 - v6, &qword_100018A30, &qword_10000F440);
  v8 = *(v0 - 8);
  result = (*(v8 + 48))(v7, 1, v0);
  if (result != 1)
  {
    return (*(v8 + 32))(v1, v7, v0);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000502C()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100005074()
{
  v18 = v0;
  v1 = v0[26];

  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v2 = v0[28];
  v3 = type metadata accessor for Logger();
  v0[39] = sub_100002A34(v3, qword_100018BA0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[28];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v0[12] = v6;
    swift_errorRetain();
    sub_10000A234(&unk_100018AB0, &qword_10000F3A8);
    v9 = String.init<A>(describing:)();
    v11 = sub_100002968(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "IntelligencePlatformComputeService: Error preparing system: %s", v7, 0xCu);
    sub_100002DB8(v8);
  }

  v12 = v0[25] + 15;
  v13 = swift_task_alloc();
  v0[40] = v13;
  static Configuration.intelligencePlatformComputeService.getter();
  v14 = async function pointer to static IntelligencePlatformComputeSystem.teardown(config:)[1];
  v15 = swift_task_alloc();
  v0[41] = v15;
  *v15 = v0;
  v15[1] = sub_100005294;

  return static IntelligencePlatformComputeSystem.teardown(config:)(v13);
}

uint64_t sub_100005294()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 304);
  (*(v2 + 296))(*(v2 + 320), *(v2 + 184));
  if (v0)
  {
    v6 = sub_100005484;
  }

  else
  {

    v6 = sub_100005410;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100005410()
{
  v1 = v0[28];
  swift_willThrow();
  v2 = v0[28];
  v3 = v0[22];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100005484()
{
  v19 = v0;
  v1 = v0[42];
  v3 = v0[39];
  v2 = v0[40];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[42];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v0[11] = v6;
    swift_errorRetain();
    sub_10000A234(&unk_100018AB0, &qword_10000F3A8);
    v9 = String.init<A>(describing:)();
    v11 = sub_100002968(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "IntelligencePlatformComputeService: further error tearing down view system: %s", v7, 0xCu);
    sub_100002DB8(v8);
  }

  v12 = v0[42];
  v13 = v0[28];
  swift_willThrow();

  v14 = v0[42];
  v15 = v0[22];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100005620()
{
  v28 = v0;
  v1 = v0[44];

  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v2 = v0[46];
  v3 = type metadata accessor for Logger();
  sub_100002A34(v3, qword_100018BA0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[46];
    v7 = v0[35];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27[0] = v9;
    *v8 = 136315138;
    v0[16] = v6;
    swift_errorRetain();
    v10 = String.init<A>(describing:)();
    v12 = sub_100002968(v10, v11, v27);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "IntelligencePlatformComputeService: further error tearing down view system: %s", v8, 0xCu);
    sub_100002DB8(v9);
  }

  v13 = v0[46];
  swift_willThrow();
  v14 = v0[46];
  v0[47] = v14;
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v15 = v0[18];
  v0[48] = sub_100002A34(v3, qword_100018BA0);

  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = v0[35];
    v20 = v0[17];
    v19 = v0[18];
    v21 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v21 = 136446466;
    *(v21 + 4) = sub_100002968(v20, v19, v27);
    *(v21 + 12) = 2080;
    v0[15] = v14;
    swift_errorRetain();
    v22 = String.init<A>(describing:)();
    v24 = sub_100002968(v22, v23, v27);

    *(v21 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "IntelligencePlatformComputeService: updateView: n:%{public}s failed: %s", v21, 0x16u);
    swift_arrayDestroy();
  }

  v25 = v0[32];

  return _swift_task_switch(sub_100005964, v25, 0);
}

uint64_t sub_100005964()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[18];
  swift_beginAccess();
  v4 = *(v2 + 112);
  v6 = v4[2];
  v5 = v4 + 2;

  v52 = v0;
  v53 = v6;
  if (!v6)
  {
    v8 = 0;
LABEL_18:
    v22 = v52[31];
    v23 = v52[18];

    v18 = v4[2];
    if (v18 < v8)
    {
      goto LABEL_50;
    }

    v24 = v52[32] + 112;
    sub_100003648(v8, v18, &unk_100018970, &unk_10000F508, &qword_100018968, &qword_10000F500);
    swift_endAccess();
    v17 = sub_100005D58;
    v18 = 0;
    v19 = 0;

    return _swift_task_switch(v17, v18, v19);
  }

  v7 = 0;
  v8 = 0;
  v55 = v4;
  while (1)
  {
    v10 = v0[34];
    v9 = v0[35];
    v11 = v0[31];
    v12 = v4[v7 + 4];
    v13 = v4[v7 + 5];
    v14 = v4[v7 + 6];

    if (static Task.== infix(_:_:)())
    {
      break;
    }

LABEL_4:
    ++v8;
    v7 += 3;
    v4 = v55;
    if (v53 == v8)
    {
      v8 = *v5;
      goto LABEL_18;
    }
  }

  if (v13 != v0[17] || v14 != v0[18])
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_15;
    }

    goto LABEL_4;
  }

LABEL_15:
  v20 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    goto LABEL_51;
  }

  v21 = *v5;
  if (v20 == *v5)
  {
    v4 = v55;
    goto LABEL_18;
  }

  v4 = v55;
  while (2)
  {
    if (v20 < v21)
    {
      v54 = v20;
      v56 = v4;
      v26 = v52[34];
      v25 = v52[35];
      v27 = v52[31];
      v28 = &v4[v7];
      v29 = v4[v7 + 7];
      v51 = v4[v7 + 8];
      v30 = v4[v7 + 9];

      if (static Task.== infix(_:_:)())
      {
        if (v51 == v52[17] && v30 == v52[18])
        {

          goto LABEL_44;
        }

        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v32)
        {
LABEL_44:
          v33 = v54;
          v4 = v56;
LABEL_25:
          v20 = v33 + 1;
          v5 = v4 + 2;
          v21 = v4[2];
          v7 += 3;
          if (v20 == v21)
          {
            goto LABEL_18;
          }

          continue;
        }
      }

      else
      {
      }

      v33 = v54;
      if (v54 == v8)
      {
        v4 = v56;
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        if (v8 >= *v5)
        {
          goto LABEL_47;
        }

        if (v54 >= *v5)
        {
          goto LABEL_48;
        }

        v34 = v56;
        v35 = &v56[3 * v8 + 4];
        v36 = *v35;
        v37 = v35[1];
        v38 = v35[2];
        v39 = v28[7];
        v40 = v28[8];
        v41 = v28[9];

        v42 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_10000A6B8(v56);
        }

        v43 = &v34[3 * v8];
        v44 = v43[4];
        v45 = v43[6];
        v43[4] = v39;
        v43[5] = v42;
        v43[6] = v41;

        v33 = v54;
        if (v54 >= v34[2])
        {
          goto LABEL_49;
        }

        v46 = v52[32];
        v47 = &v34[v7];
        v48 = v34[v7 + 7];
        v49 = v34[v7 + 9];
        v47[7] = v36;
        v47[8] = v37;
        v47[9] = v38;

        *(v46 + 112) = v34;
        v4 = v34;
      }

      ++v8;
      goto LABEL_25;
    }

    break;
  }

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
  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_100005D58()
{
  v1 = v0[25] + 15;
  v2 = swift_task_alloc();
  v0[49] = v2;
  static Configuration.intelligencePlatformComputeService.getter();
  v3 = async function pointer to static IntelligencePlatformComputeSystem.teardown(config:)[1];
  v4 = swift_task_alloc();
  v0[50] = v4;
  *v4 = v0;
  v4[1] = sub_100005E0C;

  return static IntelligencePlatformComputeSystem.teardown(config:)(v2);
}

uint64_t sub_100005E0C()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *v1;
  *(*v1 + 408) = v0;

  v5 = *(v2 + 240);
  (*(v2 + 232))(*(v2 + 392), *(v2 + 184));
  if (v0)
  {
    v6 = sub_100006008;
  }

  else
  {

    v6 = sub_100005F88;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100005F88()
{
  v1 = v0[47];
  v2 = v0[31];
  swift_willThrow();

  v3 = v0[47];
  v4 = v0[22];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100006008()
{
  v21 = v0;
  v1 = v0[51];
  v3 = v0[48];
  v2 = v0[49];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[51];
    v7 = v0[35];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    v0[14] = v6;
    swift_errorRetain();
    v10 = String.init<A>(describing:)();
    v12 = sub_100002968(v10, v11, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "IntelligencePlatformComputeService: further error tearing down view system: %s", v8, 0xCu);
    sub_100002DB8(v9);
  }

  v13 = v0[51];
  swift_willThrow();

  v14 = v0[47];
  v15 = v0[31];
  swift_willThrow();

  v16 = v0[47];
  v17 = v0[22];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1000061A8()
{
  v16 = v0;
  v1 = v0[36];
  v0[47] = v1;
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v3 = type metadata accessor for Logger();
  v0[48] = sub_100002A34(v3, qword_100018BA0);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[35];
    v8 = v0[17];
    v7 = v0[18];
    v9 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_100002968(v8, v7, &v15);
    *(v9 + 12) = 2080;
    v0[15] = v1;
    swift_errorRetain();
    v10 = String.init<A>(describing:)();
    v12 = sub_100002968(v10, v11, &v15);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "IntelligencePlatformComputeService: updateView: n:%{public}s failed: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v0[32];

  return _swift_task_switch(sub_100005964, v13, 0);
}

uint64_t sub_1000063A8()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10000640C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v28[0] = a4;
  v12 = sub_10000A234(&unk_100018AA0, &qword_10000F5D0);
  v13 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12 - 8);
  v15 = v28 - v14;
  sub_10000AFB0(a3, v28 - v14, &unk_100018AA0, &qword_10000F5D0);
  v16 = type metadata accessor for TaskPriority();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 1, v16);

  if (v18 == 1)
  {
    sub_100001878(v15);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v17 + 8))(v15, v16);
  }

  v19 = *(a5 + 16);
  v20 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v21 = dispatch thunk of Actor.unownedExecutor.getter();
    v23 = v22;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24 = String.utf8CString.getter() + 32;

      sub_10000A234(a6, a7);
      v25 = (v23 | v21);
      if (v23 | v21)
      {
        v29[0] = 0;
        v29[1] = 0;
        v25 = v29;
        v29[2] = v21;
        v29[3] = v23;
      }

      v28[1] = 7;
      v28[2] = v25;
      v28[3] = v24;
      v26 = swift_task_create();

      sub_100001878(a3);

      return v26;
    }
  }

  else
  {
    v21 = 0;
    v23 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100001878(a3);
  sub_10000A234(a6, a7);
  if (v23 | v21)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v21;
    v29[7] = v23;
  }

  return swift_task_create();
}

uint64_t sub_10000668C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v6 = *(*(sub_10000A234(&unk_100018AA0, &qword_10000F5D0) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();

  return _swift_task_switch(sub_100006730, 0, 0);
}

uint64_t sub_100006730()
{
  v1 = type metadata accessor for Configuration();
  v0[23] = v1;
  v2 = *(v1 - 8);
  v0[24] = v2;
  v0[25] = *(v2 + 64);
  v3 = swift_task_alloc();
  v0[26] = v3;
  static Configuration.intelligencePlatformComputeService.getter();
  v4 = async function pointer to static IntelligencePlatformComputeSystem.prepare(config:)[1];
  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_100006834;

  return static IntelligencePlatformComputeSystem.prepare(config:)(v3);
}

uint64_t sub_100006834()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  v2[28] = v0;

  v5 = v2[26];
  v6 = v2[24];
  v7 = v2[23];
  v8 = *(v6 + 8);
  v9 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v2[37] = v8;
    v2[38] = v9;
    (v8)(v5, v7);
    v10 = sub_100006E80;
  }

  else
  {
    v2[29] = v8;
    v2[30] = v9;
    v8();

    v10 = sub_1000069C4;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1000069C4()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[20];
  v7 = v0[18];
  v6 = v0[19];
  v14 = v0[17];
  v15 = v0[21];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = swift_task_alloc();
  (*(v1 + 16))(v9, v5, v4);
  v10 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v14;
  *(v11 + 5) = v7;
  (*(v1 + 32))(&v11[v10], v9, v4);
  *&v11[(v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8] = v6;

  v0[31] = sub_10000640C(0, 0, v3, &unk_10000F4A8, v11, &qword_100018930, &qword_10000F3B0);
  v12 = *(v15 + OBJC_IVAR____TtC34IntelligencePlatformComputeService34IntelligencePlatformComputeService_updateGroupTaskRegister);
  v0[32] = v12;

  return _swift_task_switch(sub_100006B88, v12, 0);
}

uint64_t sub_100006B88()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[18];
  swift_beginAccess();
  v4 = *(v2 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 112) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_100004270(0, v4[2] + 1, 1, v4, &qword_100018958, &qword_10000F4B8, &qword_100018950, &qword_10000F4B0);
    *(v2 + 112) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_100004270((v6 > 1), v7 + 1, 1, v4, &qword_100018958, &qword_10000F4B8, &qword_100018950, &qword_10000F4B0);
  }

  v8 = v0[31];
  v10 = v0[17];
  v9 = v0[18];
  v4[2] = v7 + 1;
  v11 = &v4[3 * v7];
  v11[4] = v8;
  v11[5] = v10;
  v11[6] = v9;
  *(v2 + 112) = v4;
  swift_endAccess();
  v12 = async function pointer to Task.value.getter[1];
  v13 = swift_task_alloc();
  v0[33] = v13;
  v14 = sub_10000A234(&qword_100018930, &qword_10000F3B0);
  v0[34] = v14;
  v15 = sub_10000A234(&unk_100018AB0, &qword_10000F3A8);
  v0[35] = v15;
  *v13 = v0;
  v13[1] = sub_100006D6C;
  v16 = v0[31];

  return Task.value.getter(v0 + 13, v16, v14, v15, &protocol self-conformance witness table for Error);
}

uint64_t sub_100006D6C()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_100008350;
  }

  else
  {
    v3 = sub_10000721C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100006E80()
{
  v18 = v0;
  v1 = v0[26];

  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v2 = v0[28];
  v3 = type metadata accessor for Logger();
  v0[39] = sub_100002A34(v3, qword_100018BA0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[28];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v0[12] = v6;
    swift_errorRetain();
    sub_10000A234(&unk_100018AB0, &qword_10000F3A8);
    v9 = String.init<A>(describing:)();
    v11 = sub_100002968(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "IntelligencePlatformComputeService: Error preparing system: %s", v7, 0xCu);
    sub_100002DB8(v8);
  }

  v12 = v0[25] + 15;
  v13 = swift_task_alloc();
  v0[40] = v13;
  static Configuration.intelligencePlatformComputeService.getter();
  v14 = async function pointer to static IntelligencePlatformComputeSystem.teardown(config:)[1];
  v15 = swift_task_alloc();
  v0[41] = v15;
  *v15 = v0;
  v15[1] = sub_1000070A0;

  return static IntelligencePlatformComputeSystem.teardown(config:)(v13);
}

uint64_t sub_1000070A0()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 304);
  (*(v2 + 296))(*(v2 + 320), *(v2 + 184));
  if (v0)
  {
    v6 = sub_10000B488;
  }

  else
  {

    v6 = sub_10000B480;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10000721C()
{
  v1 = v0[32];
  v0[43] = v0[13];
  return _swift_task_switch(sub_100007240, v1, 0);
}

uint64_t sub_100007240()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[18];
  swift_beginAccess();
  v4 = *(v2 + 112);
  v6 = v4[2];
  v5 = v4 + 2;

  v52 = v0;
  v53 = v6;
  if (!v6)
  {
    v8 = 0;
LABEL_18:
    v22 = v52[31];
    v23 = v52[18];

    v18 = v4[2];
    if (v18 < v8)
    {
      goto LABEL_50;
    }

    v24 = v52[32] + 112;
    sub_100003648(v8, v18, &qword_100018958, &qword_10000F4B8, &qword_100018950, &qword_10000F4B0);
    swift_endAccess();
    v17 = sub_100007634;
    v18 = 0;
    v19 = 0;

    return _swift_task_switch(v17, v18, v19);
  }

  v7 = 0;
  v8 = 0;
  v55 = v4;
  while (1)
  {
    v10 = v0[34];
    v9 = v0[35];
    v11 = v0[31];
    v12 = v4[v7 + 4];
    v13 = v4[v7 + 5];
    v14 = v4[v7 + 6];

    if (static Task.== infix(_:_:)())
    {
      break;
    }

LABEL_4:
    ++v8;
    v7 += 3;
    v4 = v55;
    if (v53 == v8)
    {
      v8 = *v5;
      goto LABEL_18;
    }
  }

  if (v13 != v0[17] || v14 != v0[18])
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_15;
    }

    goto LABEL_4;
  }

LABEL_15:
  v20 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    goto LABEL_51;
  }

  v21 = *v5;
  if (v20 == *v5)
  {
    v4 = v55;
    goto LABEL_18;
  }

  v4 = v55;
  while (2)
  {
    if (v20 < v21)
    {
      v54 = v20;
      v56 = v4;
      v26 = v52[34];
      v25 = v52[35];
      v27 = v52[31];
      v28 = &v4[v7];
      v29 = v4[v7 + 7];
      v51 = v4[v7 + 8];
      v30 = v4[v7 + 9];

      if (static Task.== infix(_:_:)())
      {
        if (v51 == v52[17] && v30 == v52[18])
        {

          goto LABEL_44;
        }

        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v32)
        {
LABEL_44:
          v33 = v54;
          v4 = v56;
LABEL_25:
          v20 = v33 + 1;
          v5 = v4 + 2;
          v21 = v4[2];
          v7 += 3;
          if (v20 == v21)
          {
            goto LABEL_18;
          }

          continue;
        }
      }

      else
      {
      }

      v33 = v54;
      if (v54 == v8)
      {
        v4 = v56;
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        if (v8 >= *v5)
        {
          goto LABEL_47;
        }

        if (v54 >= *v5)
        {
          goto LABEL_48;
        }

        v34 = v56;
        v35 = &v56[3 * v8 + 4];
        v36 = *v35;
        v37 = v35[1];
        v38 = v35[2];
        v39 = v28[7];
        v40 = v28[8];
        v41 = v28[9];

        v42 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_10000A700(v56);
        }

        v43 = &v34[3 * v8];
        v44 = v43[4];
        v45 = v43[6];
        v43[4] = v39;
        v43[5] = v42;
        v43[6] = v41;

        v33 = v54;
        if (v54 >= v34[2])
        {
          goto LABEL_49;
        }

        v46 = v52[32];
        v47 = &v34[v7];
        v48 = v34[v7 + 7];
        v49 = v34[v7 + 9];
        v47[7] = v36;
        v47[8] = v37;
        v47[9] = v38;

        *(v46 + 112) = v34;
        v4 = v34;
      }

      ++v8;
      goto LABEL_25;
    }

    break;
  }

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
  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_100007634()
{
  v1 = v0[25] + 15;
  v2 = swift_task_alloc();
  v0[44] = v2;
  static Configuration.intelligencePlatformComputeService.getter();
  v3 = async function pointer to static IntelligencePlatformComputeSystem.teardown(config:)[1];
  v4 = swift_task_alloc();
  v0[45] = v4;
  *v4 = v0;
  v4[1] = sub_1000076E8;

  return static IntelligencePlatformComputeSystem.teardown(config:)(v2);
}

uint64_t sub_1000076E8()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v5 = *(v2 + 344);
    v6 = *(v2 + 240);
    (*(v2 + 232))(*(v2 + 352), *(v2 + 184));

    v7 = sub_1000079E8;
  }

  else
  {
    v8 = *(v2 + 240);
    v9 = *(v2 + 184);
    v10 = *(v2 + 352);
    (*(v2 + 232))();

    v7 = sub_100007848;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100007848()
{
  v16 = v0;
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = type metadata accessor for Logger();
  sub_100002A34(v2, qword_100018BA0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[31];
  if (v5)
  {
    v8 = v0[17];
    v7 = v0[18];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_100002968(v8, v7, &v15);
    _os_log_impl(&_mh_execute_header, v3, v4, "IntelligencePlatformComputeService: updateGroupWithName %{public}s returning responses", v9, 0xCu);
    sub_100002DB8(v10);
  }

  v11 = v0[22];

  v12 = v0[1];
  v13 = v0[43];

  return v12(v13);
}

uint64_t sub_1000079E8()
{
  v28 = v0;
  v1 = v0[44];

  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v2 = v0[46];
  v3 = type metadata accessor for Logger();
  sub_100002A34(v3, qword_100018BA0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[46];
    v7 = v0[35];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27[0] = v9;
    *v8 = 136315138;
    v0[16] = v6;
    swift_errorRetain();
    v10 = String.init<A>(describing:)();
    v12 = sub_100002968(v10, v11, v27);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "IntelligencePlatformComputeService: further error tearing down view system: %s", v8, 0xCu);
    sub_100002DB8(v9);
  }

  v13 = v0[46];
  swift_willThrow();
  v14 = v0[46];
  v0[47] = v14;
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v15 = v0[18];
  v0[48] = sub_100002A34(v3, qword_100018BA0);

  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = v0[35];
    v20 = v0[17];
    v19 = v0[18];
    v21 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v21 = 136446466;
    *(v21 + 4) = sub_100002968(v20, v19, v27);
    *(v21 + 12) = 2080;
    v0[15] = v14;
    swift_errorRetain();
    v22 = String.init<A>(describing:)();
    v24 = sub_100002968(v22, v23, v27);

    *(v21 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "IntelligencePlatformComputeService: updateGroup: n:%{public}s failed: %s", v21, 0x16u);
    swift_arrayDestroy();
  }

  v25 = v0[32];

  return _swift_task_switch(sub_100007D2C, v25, 0);
}

uint64_t sub_100007D2C()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[18];
  swift_beginAccess();
  v4 = *(v2 + 112);
  v6 = v4[2];
  v5 = v4 + 2;

  v52 = v0;
  v53 = v6;
  if (!v6)
  {
    v8 = 0;
LABEL_18:
    v22 = v52[31];
    v23 = v52[18];

    v18 = v4[2];
    if (v18 < v8)
    {
      goto LABEL_50;
    }

    v24 = v52[32] + 112;
    sub_100003648(v8, v18, &qword_100018958, &qword_10000F4B8, &qword_100018950, &qword_10000F4B0);
    swift_endAccess();
    v17 = sub_100008120;
    v18 = 0;
    v19 = 0;

    return _swift_task_switch(v17, v18, v19);
  }

  v7 = 0;
  v8 = 0;
  v55 = v4;
  while (1)
  {
    v10 = v0[34];
    v9 = v0[35];
    v11 = v0[31];
    v12 = v4[v7 + 4];
    v13 = v4[v7 + 5];
    v14 = v4[v7 + 6];

    if (static Task.== infix(_:_:)())
    {
      break;
    }

LABEL_4:
    ++v8;
    v7 += 3;
    v4 = v55;
    if (v53 == v8)
    {
      v8 = *v5;
      goto LABEL_18;
    }
  }

  if (v13 != v0[17] || v14 != v0[18])
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_15;
    }

    goto LABEL_4;
  }

LABEL_15:
  v20 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    goto LABEL_51;
  }

  v21 = *v5;
  if (v20 == *v5)
  {
    v4 = v55;
    goto LABEL_18;
  }

  v4 = v55;
  while (2)
  {
    if (v20 < v21)
    {
      v54 = v20;
      v56 = v4;
      v26 = v52[34];
      v25 = v52[35];
      v27 = v52[31];
      v28 = &v4[v7];
      v29 = v4[v7 + 7];
      v51 = v4[v7 + 8];
      v30 = v4[v7 + 9];

      if (static Task.== infix(_:_:)())
      {
        if (v51 == v52[17] && v30 == v52[18])
        {

          goto LABEL_44;
        }

        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v32)
        {
LABEL_44:
          v33 = v54;
          v4 = v56;
LABEL_25:
          v20 = v33 + 1;
          v5 = v4 + 2;
          v21 = v4[2];
          v7 += 3;
          if (v20 == v21)
          {
            goto LABEL_18;
          }

          continue;
        }
      }

      else
      {
      }

      v33 = v54;
      if (v54 == v8)
      {
        v4 = v56;
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        if (v8 >= *v5)
        {
          goto LABEL_47;
        }

        if (v54 >= *v5)
        {
          goto LABEL_48;
        }

        v34 = v56;
        v35 = &v56[3 * v8 + 4];
        v36 = *v35;
        v37 = v35[1];
        v38 = v35[2];
        v39 = v28[7];
        v40 = v28[8];
        v41 = v28[9];

        v42 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_10000A700(v56);
        }

        v43 = &v34[3 * v8];
        v44 = v43[4];
        v45 = v43[6];
        v43[4] = v39;
        v43[5] = v42;
        v43[6] = v41;

        v33 = v54;
        if (v54 >= v34[2])
        {
          goto LABEL_49;
        }

        v46 = v52[32];
        v47 = &v34[v7];
        v48 = v34[v7 + 7];
        v49 = v34[v7 + 9];
        v47[7] = v36;
        v47[8] = v37;
        v47[9] = v38;

        *(v46 + 112) = v34;
        v4 = v34;
      }

      ++v8;
      goto LABEL_25;
    }

    break;
  }

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
  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_100008120()
{
  v1 = v0[25] + 15;
  v2 = swift_task_alloc();
  v0[49] = v2;
  static Configuration.intelligencePlatformComputeService.getter();
  v3 = async function pointer to static IntelligencePlatformComputeSystem.teardown(config:)[1];
  v4 = swift_task_alloc();
  v0[50] = v4;
  *v4 = v0;
  v4[1] = sub_1000081D4;

  return static IntelligencePlatformComputeSystem.teardown(config:)(v2);
}

uint64_t sub_1000081D4()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *v1;
  *(*v1 + 408) = v0;

  v5 = *(v2 + 240);
  (*(v2 + 232))(*(v2 + 392), *(v2 + 184));
  if (v0)
  {
    v6 = sub_10000B4A4;
  }

  else
  {

    v6 = sub_10000B494;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100008350()
{
  v16 = v0;
  v1 = v0[36];
  v0[47] = v1;
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v3 = type metadata accessor for Logger();
  v0[48] = sub_100002A34(v3, qword_100018BA0);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[35];
    v8 = v0[17];
    v7 = v0[18];
    v9 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_100002968(v8, v7, &v15);
    *(v9 + 12) = 2080;
    v0[15] = v1;
    swift_errorRetain();
    v10 = String.init<A>(describing:)();
    v12 = sub_100002968(v10, v11, &v15);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "IntelligencePlatformComputeService: updateGroup: n:%{public}s failed: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v0[32];

  return _swift_task_switch(sub_100007D2C, v13, 0);
}

uint64_t sub_100008550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_100008578, 0, 0);
}

uint64_t sub_100008578()
{
  v17 = v0;
  static Task<>.checkCancellation()();
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  sub_100002A34(v2, qword_100018BA0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_100002968(v6, v5, &v16);
    _os_log_impl(&_mh_execute_header, v3, v4, "IntelligencePlatformComputeService: updateGroupWithName %{public}s begining update", v7, 0xCu);
    sub_100002DB8(v8);
  }

  v9 = v0[5];
  type metadata accessor for ViewUpdate.ViewInProcessRunner();
  v0[7] = static ViewUpdate.ViewInProcessRunner.sharedInProcessRunner(for:)();
  v10 = async function pointer to ViewUpdate.ViewInProcessRunner.update(groupName:namesAndRequests:)[1];
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_1000087B4;
  v12 = v0[6];
  v14 = v0[3];
  v13 = v0[4];

  return ViewUpdate.ViewInProcessRunner.update(groupName:namesAndRequests:)(v14, v13, v12);
}

uint64_t sub_1000087B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_10000B48C;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_10000B484;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000088DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100008900, 0, 0);
}

uint64_t sub_100008900()
{
  v25 = v0;
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = type metadata accessor for Logger();
  sub_100002A34(v3, qword_100018BA0);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[4];
  if (v6)
  {
    v9 = v0[2];
    v8 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_100002968(v9, v8, &v24);
    *(v10 + 12) = 2048;
    if (v7 >> 62)
    {
      if (v0[4] < 0)
      {
        v23 = v0[4];
      }

      v12 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v0[4];
    *(v10 + 14) = v12;

    _os_log_impl(&_mh_execute_header, v4, v5, "IntelligencePlatformComputeService: updateGroupWithName %{public}s called with %ld namesAndRequests", v10, 0x16u);
    sub_100002DB8(v11);
  }

  else
  {
    v14 = v0[4];
  }

  if (qword_1000187F0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Configuration();
  v16 = sub_100002A34(v15, qword_100018B70);
  v17 = swift_task_alloc();
  v0[6] = v17;
  *v17 = v0;
  v17[1] = sub_10000B49C;
  v18 = v0[4];
  v19 = v0[5];
  v21 = v0[2];
  v20 = v0[3];

  return sub_10000668C(v21, v20, v18, v16);
}

uint64_t sub_100008CFC(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  sub_100002370(0, &qword_100018A70, GDViewUpdateNameAndRequests_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[5] = v9;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100008E0C;

  return sub_1000088DC(v6, v8, v9);
}

uint64_t sub_100008E0C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    sub_100002370(0, &qword_100018948, GDViewUpdateNameAndResponses_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = isa;
    v10 = 0;
    v9 = isa;
  }

  v13 = *(v3 + 24);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

uint64_t sub_100009178(int a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[5] = v11;
  *v11 = v4;
  v11[1] = sub_10000B498;

  return sub_10000A748(v7, v9, a2);
}

uint64_t sub_1000093FC(int a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[5] = v11;
  *v11 = v4;
  v11[1] = sub_1000094F0;

  return sub_10000AB14(v7, v9, a2);
}

uint64_t sub_1000094F0(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 24);
  if (v3)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_1000096C4()
{
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[9] = sub_100002A34(v1, qword_100018BA0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "IntelligencePlatformComputeService: stop called", v4, 2u);
  }

  v5 = v0[8];

  v6 = *(v5 + OBJC_IVAR____TtC34IntelligencePlatformComputeService34IntelligencePlatformComputeService_updateViewTaskRegister);
  v0[10] = v6;

  return _swift_task_switch(sub_1000097F4, v6, 0);
}

uint64_t sub_1000097F4()
{
  v20 = v0;
  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = *(*(v1 + 112) + 16);
  if (v2)
  {
    v17 = v1;
    v3 = ( + 48);
    v4 = &qword_10000F3A0;
    v18 = v0;
    do
    {
      v9 = *(v0 + 72);
      v10 = *(v3 - 2);
      v11 = *(v3 - 1);
      v12 = *v3;

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v5 = swift_slowAlloc();
        v6 = v4;
        v7 = swift_slowAlloc();
        v19 = v7;
        *v5 = 136446210;
        v8 = sub_100002968(v11, v12, &v19);

        *(v5 + 4) = v8;
        _os_log_impl(&_mh_execute_header, v13, v14, "IntelligencePlatformComputeService: cancelling task %{public}s", v5, 0xCu);
        sub_100002DB8(v7);
        v4 = v6;

        v0 = v18;
      }

      else
      {
      }

      sub_10000A234(&qword_100018928, v4);
      sub_10000A234(&unk_100018AB0, &qword_10000F3A8);
      Task.cancel()();

      v3 += 3;
      --v2;
    }

    while (v2);

    v1 = v17;
    v15 = *(v17 + 112);
  }

  *(v1 + 112) = &_swiftEmptyArrayStorage;

  return _swift_task_switch(sub_100009A38, 0, 0);
}

uint64_t sub_100009A38()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC34IntelligencePlatformComputeService34IntelligencePlatformComputeService_updateGroupTaskRegister);
  *(v0 + 88) = v1;
  return _swift_task_switch(sub_100009A64, v1, 0);
}

uint64_t sub_100009A64()
{
  v21 = v0;
  v1 = v0[11];
  swift_beginAccess();
  v2 = *(*(v1 + 112) + 16);
  if (v2)
  {
    v18 = v1;
    v3 = ( + 48);
    v4 = &unk_10000F3B0;
    v19 = v0;
    do
    {
      v9 = v0[9];
      v10 = *(v3 - 2);
      v11 = *(v3 - 1);
      v12 = *v3;

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v5 = swift_slowAlloc();
        v6 = v4;
        v7 = swift_slowAlloc();
        v20 = v7;
        *v5 = 136446210;
        v8 = sub_100002968(v11, v12, &v20);

        *(v5 + 4) = v8;
        _os_log_impl(&_mh_execute_header, v13, v14, "IntelligencePlatformComputeService: cancelling task %{public}s", v5, 0xCu);
        sub_100002DB8(v7);
        v4 = v6;

        v0 = v19;
      }

      else
      {
      }

      sub_10000A234(&qword_100018930, v4);
      sub_10000A234(&unk_100018AB0, &qword_10000F3A8);
      Task.cancel()();

      v3 += 3;
      --v2;
    }

    while (v2);

    v1 = v18;
    v15 = *(v18 + 112);
  }

  *(v1 + 112) = &_swiftEmptyArrayStorage;

  v16 = v0[1];

  return v16(1);
}

uint64_t sub_100009E1C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100009EC4;

  return sub_1000096A4();
}

uint64_t sub_100009EC4(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

id IntelligencePlatformComputeServiceXPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000A234(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000A27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_10000A234(&unk_100018AA0, &qword_10000F5D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_10000AFB0(a3, v24 - v10, &unk_100018AA0, &qword_10000F5D0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100001878(v11);
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

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = String.utf8CString.getter() + 32;
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

    sub_100001878(a3);

    return v22;
  }

LABEL_8:
  sub_100001878(a3);
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

uint64_t sub_10000A548()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100004134;

  return sub_100009E1C(v2, v3);
}

uint64_t sub_10000A5F4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100004134;

  return sub_1000093FC(v2, v3, v5, v4);
}

uint64_t sub_10000A748(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 56) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return _swift_task_switch(sub_10000A76C, 0, 0);
}

uint64_t sub_10000A76C()
{
  v18 = v0;
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  sub_100002A34(v2, qword_100018BA0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 56);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_100002968(v7, v6, &v17);
    *(v8 + 12) = 1024;
    *(v8 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "IntelligencePlatformComputeService: clearViewWithName called [name: %{public}s, fullRebuild: %{BOOL}d]", v8, 0x12u);
    sub_100002DB8(v9);
  }

  if (qword_1000187F0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Configuration();
  sub_100002A34(v10, qword_100018B70);
  static Task<>.checkCancellation()();
  type metadata accessor for ViewUpdate.ViewInProcessRunner();
  *(v0 + 32) = static ViewUpdate.ViewInProcessRunner.sharedInProcessRunner(for:)();
  v11 = async function pointer to ViewUpdate.ViewInProcessRunner.clear(viewName:fullRebuild:)[1];
  v12 = swift_task_alloc();
  *(v0 + 40) = v12;
  *v12 = v0;
  v12[1] = sub_10000AA00;
  v13 = *(v0 + 56);
  v15 = *(v0 + 16);
  v14 = *(v0 + 24);

  return ViewUpdate.ViewInProcessRunner.clear(viewName:fullRebuild:)(v15, v14, v13);
}

uint64_t sub_10000AA00()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_10000B490;
  }

  else
  {
    v3 = sub_10000B4A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000AB14(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 56) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return _swift_task_switch(sub_10000AB38, 0, 0);
}

uint64_t sub_10000AB38()
{
  v18 = v0;
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  sub_100002A34(v2, qword_100018BA0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 56);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_100002968(v7, v6, &v17);
    *(v8 + 12) = 1024;
    *(v8 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "IntelligencePlatformComputeService: truncateViewWithName called [name: %{public}s, fullRebuild: %{BOOL}d]", v8, 0x12u);
    sub_100002DB8(v9);
  }

  if (qword_1000187F0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Configuration();
  sub_100002A34(v10, qword_100018B70);
  static Task<>.checkCancellation()();
  type metadata accessor for ViewUpdate.ViewInProcessRunner();
  *(v0 + 32) = static ViewUpdate.ViewInProcessRunner.sharedInProcessRunner(for:)();
  v11 = async function pointer to ViewUpdate.ViewInProcessRunner.truncate(viewName:fullRebuild:)[1];
  v12 = swift_task_alloc();
  *(v0 + 40) = v12;
  *v12 = v0;
  v12[1] = sub_10000ADCC;
  v13 = *(v0 + 56);
  v15 = *(v0 + 16);
  v14 = *(v0 + 24);

  return ViewUpdate.ViewInProcessRunner.truncate(viewName:fullRebuild:)(v15, v14, v13);
}

uint64_t sub_10000ADCC()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_10000AF48;
  }

  else
  {
    v3 = sub_10000AEE0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000AEE0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2(1);
}

uint64_t sub_10000AF48()
{
  v1 = v0[4];

  v2 = v0[6];
  v3 = v0[1];

  return v3(0);
}

uint64_t sub_10000AFB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000A234(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000B018()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000B060()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100004134;

  return sub_100009178(v2, v3, v5, v4);
}

uint64_t sub_10000B124()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100004134;

  return sub_100008CFC(v2, v3, v5, v4);
}

uint64_t sub_10000B1E4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Configuration() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100004134;

  return sub_100008550(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_10000B320()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000B370()
{
  v1 = type metadata accessor for Configuration();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000B4A8()
{
  v0 = sub_10000A234(&qword_100018A30, &qword_10000F440);
  sub_100004644(v0, qword_100018B88);
  v1 = sub_100002A34(v0, qword_100018B88);
  v2 = type metadata accessor for Configuration();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_10000B548(void *a1)
{
  v2 = sub_10000A234(&unk_100018AA0, &qword_10000F5D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100002A34(v6, qword_100018BA0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "XPC connection is invalid, stopping work", v9, 2u);
  }

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v12 = a1;
  sub_10000BD08(0, 0, v5, &unk_10000F618, v11);
}

uint64_t sub_10000B72C()
{
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[9] = sub_100002A34(v1, qword_100018BA0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "IntelligencePlatformComputeService: stop called", v4, 2u);
  }

  v5 = v0[8];

  v6 = *(v5 + OBJC_IVAR____TtC34IntelligencePlatformComputeService34IntelligencePlatformComputeService_updateViewTaskRegister);
  v0[10] = v6;

  return _swift_task_switch(sub_10000B85C, v6, 0);
}

uint64_t sub_10000B85C()
{
  v20 = v0;
  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = *(*(v1 + 112) + 16);
  if (v2)
  {
    v17 = v1;
    v3 = ( + 48);
    v4 = &qword_10000F3A0;
    v18 = v0;
    do
    {
      v9 = *(v0 + 72);
      v10 = *(v3 - 2);
      v11 = *(v3 - 1);
      v12 = *v3;

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v5 = swift_slowAlloc();
        v6 = v4;
        v7 = swift_slowAlloc();
        v19 = v7;
        *v5 = 136446210;
        v8 = sub_100002968(v11, v12, &v19);

        *(v5 + 4) = v8;
        _os_log_impl(&_mh_execute_header, v13, v14, "IntelligencePlatformComputeService: cancelling task %{public}s", v5, 0xCu);
        sub_100002DB8(v7);
        v4 = v6;

        v0 = v18;
      }

      else
      {
      }

      sub_10000A234(&qword_100018928, v4);
      sub_10000A234(&unk_100018AB0, &qword_10000F3A8);
      Task.cancel()();

      v3 += 3;
      --v2;
    }

    while (v2);

    v1 = v17;
    v15 = *(v17 + 112);
  }

  *(v1 + 112) = &_swiftEmptyArrayStorage;

  return _swift_task_switch(sub_10000BAA0, 0, 0);
}

uint64_t sub_10000BAA0()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC34IntelligencePlatformComputeService34IntelligencePlatformComputeService_updateGroupTaskRegister);
  *(v0 + 88) = v1;
  return _swift_task_switch(sub_10000BACC, v1, 0);
}

uint64_t sub_10000BACC()
{
  v21 = v0;
  v1 = v0[11];
  swift_beginAccess();
  v2 = *(*(v1 + 112) + 16);
  if (v2)
  {
    v18 = v1;
    v3 = ( + 48);
    v4 = &qword_10000F3B0;
    v19 = v0;
    do
    {
      v9 = v0[9];
      v10 = *(v3 - 2);
      v11 = *(v3 - 1);
      v12 = *v3;

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v5 = swift_slowAlloc();
        v6 = v4;
        v7 = swift_slowAlloc();
        v20 = v7;
        *v5 = 136446210;
        v8 = sub_100002968(v11, v12, &v20);

        *(v5 + 4) = v8;
        _os_log_impl(&_mh_execute_header, v13, v14, "IntelligencePlatformComputeService: cancelling task %{public}s", v5, 0xCu);
        sub_100002DB8(v7);
        v4 = v6;

        v0 = v19;
      }

      else
      {
      }

      sub_10000A234(&qword_100018930, v4);
      sub_10000A234(&unk_100018AB0, &qword_10000F3A8);
      Task.cancel()();

      v3 += 3;
      --v2;
    }

    while (v2);

    v1 = v18;
    v15 = *(v18 + 112);
  }

  *(v1 + 112) = &_swiftEmptyArrayStorage;

  v16 = v0[1];

  return v16();
}

uint64_t sub_10000BD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000A234(&unk_100018AA0, &qword_10000F5D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000AFB0(a3, v27 - v11, &unk_100018AA0, &qword_10000F5D0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000E1C4(v12, &unk_100018AA0, &qword_10000F5D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
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

      sub_10000E1C4(a3, &unk_100018AA0, &qword_10000F5D0);

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

  sub_10000E1C4(a3, &unk_100018AA0, &qword_10000F5D0);
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

uint64_t sub_10000C008(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10000C04C(void *a1)
{
  v2 = sub_10000A234(&unk_100018AA0, &qword_10000F5D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23 - v4;
  if (qword_1000187F8 != -1)
  {
    swift_once();
  }

  v6 = sub_10000A234(&qword_100018A30, &qword_10000F440);
  v7 = sub_100002A34(v6, qword_100018B88);
  v8 = swift_beginAccess();
  v9 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  sub_10000AFB0(v7, &v23 - v10, &qword_100018A30, &qword_10000F440);
  v12 = type metadata accessor for Configuration();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    __break(1u);
LABEL_11:
    _exit(1);
  }

  v14 = Configuration.isIPCSMemoryTransactionEnabled.getter();
  (*(v13 + 8))(v11, v12);
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100002A34(v15, qword_100018BA0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "IntelligencePlatformComputeService: Recieved SIGTERM, stopping work", v18, 2u);
  }

  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a1;
  v21 = a1;
  sub_10000BD08(0, 0, v5, &unk_10000F5E0, v20);
}

uint64_t sub_10000C38C()
{
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[9] = sub_100002A34(v1, qword_100018BA0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "IntelligencePlatformComputeService: stop called", v4, 2u);
  }

  v5 = v0[8];

  v6 = *(v5 + OBJC_IVAR____TtC34IntelligencePlatformComputeService34IntelligencePlatformComputeService_updateViewTaskRegister);
  v0[10] = v6;

  return _swift_task_switch(sub_10000C4BC, v6, 0);
}

uint64_t sub_10000C4BC()
{
  v20 = v0;
  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = *(*(v1 + 112) + 16);
  if (v2)
  {
    v17 = v1;
    v3 = ( + 48);
    v4 = &qword_10000F3A0;
    v18 = v0;
    do
    {
      v9 = *(v0 + 72);
      v10 = *(v3 - 2);
      v11 = *(v3 - 1);
      v12 = *v3;

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v5 = swift_slowAlloc();
        v6 = v4;
        v7 = swift_slowAlloc();
        v19 = v7;
        *v5 = 136446210;
        v8 = sub_100002968(v11, v12, &v19);

        *(v5 + 4) = v8;
        _os_log_impl(&_mh_execute_header, v13, v14, "IntelligencePlatformComputeService: cancelling task %{public}s", v5, 0xCu);
        sub_100002DB8(v7);
        v4 = v6;

        v0 = v18;
      }

      else
      {
      }

      sub_10000A234(&qword_100018928, v4);
      sub_10000A234(&unk_100018AB0, &qword_10000F3A8);
      Task.cancel()();

      v3 += 3;
      --v2;
    }

    while (v2);

    v1 = v17;
    v15 = *(v17 + 112);
  }

  *(v1 + 112) = &_swiftEmptyArrayStorage;

  return _swift_task_switch(sub_10000C700, 0, 0);
}

uint64_t sub_10000C700()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC34IntelligencePlatformComputeService34IntelligencePlatformComputeService_updateGroupTaskRegister);
  *(v0 + 88) = v1;
  return _swift_task_switch(sub_10000C72C, v1, 0);
}

uint64_t sub_10000C72C()
{
  v20 = v0;
  v1 = *(v0 + 88);
  swift_beginAccess();
  v2 = *(*(v1 + 112) + 16);
  if (v2)
  {
    v17 = v1;
    v3 = ( + 48);
    v4 = &qword_10000F3B0;
    v18 = v0;
    do
    {
      v9 = *(v0 + 72);
      v10 = *(v3 - 2);
      v11 = *(v3 - 1);
      v12 = *v3;

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v5 = swift_slowAlloc();
        v6 = v4;
        v7 = swift_slowAlloc();
        v19 = v7;
        *v5 = 136446210;
        v8 = sub_100002968(v11, v12, &v19);

        *(v5 + 4) = v8;
        _os_log_impl(&_mh_execute_header, v13, v14, "IntelligencePlatformComputeService: cancelling task %{public}s", v5, 0xCu);
        sub_100002DB8(v7);
        v4 = v6;

        v0 = v18;
      }

      else
      {
      }

      sub_10000A234(&qword_100018930, v4);
      sub_10000A234(&unk_100018AB0, &qword_10000F3A8);
      Task.cancel()();

      v3 += 3;
      --v2;
    }

    while (v2);

    v1 = v17;
    v15 = *(v17 + 112);
  }

  *(v1 + 112) = &_swiftEmptyArrayStorage;

  return _swift_task_switch(sub_10000C970, 0, 0);
}

uint64_t sub_10000C970()
{
  xpc_transaction_exit_clean();
  v1 = *(v0 + 8);

  return v1();
}

id sub_10000CA6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligencePlatformComputeServiceXPC.ServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id BMDaemonLibraryLoader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IntelligencePlatformComputeServiceXPC.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_10000CB98(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10000CBE4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

_BYTE **sub_10000CC14(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_10000CC4C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100002968(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_10000CCA8(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000CCF4(a1, a2);
  sub_10000CE24(&off_100014658);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000CCF4(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000CF10(v5, 0);
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
        v7 = sub_10000CF10(v10, 0);
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

uint64_t sub_10000CE24(uint64_t result)
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

  result = sub_10000CF84(result, v12, 1, v3);
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

void *sub_10000CF10(uint64_t a1, uint64_t a2)
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

  sub_10000A234(&unk_100018AC0, &qword_10000F608);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000CF84(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A234(&unk_100018AC0, &qword_10000F608);
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

void sub_10000D078(uint64_t a1)
{
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002A34(v2, qword_100018BA0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "IntelligencePlatformComputeServiceXPC: starting...", v5, 2u);
  }

  if (qword_1000187F8 != -1)
  {
    swift_once();
  }

  v6 = sub_10000A234(&qword_100018A30, &qword_10000F440);
  v7 = sub_100002A34(v6, qword_100018B88);
  v8 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v10 = &v15 - v9;
  v11 = type metadata accessor for Configuration();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  swift_beginAccess();
  sub_10000E488(v10, v7);
  swift_endAccess();
  v13 = [objc_allocWithZone(type metadata accessor for IntelligencePlatformComputeServiceXPC.ServiceDelegate()) init];
  v14 = [objc_opt_self() serviceListener];
  [v14 setDelegate:v13];
  [v14 resume];

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10000D32C(uint64_t a1)
{
  *&v71 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v69 = *(v1 - 8);
  v70 = v1;
  v2 = *(v69 + 64);
  __chkstk_darwin(v1);
  v67 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for DispatchQoS();
  v66 = *(v68 - 8);
  v4 = *(v66 + 64);
  __chkstk_darwin(v68);
  v65 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000187F8 != -1)
  {
    swift_once();
  }

  v6 = sub_10000A234(&qword_100018A30, &qword_10000F440);
  v7 = sub_100002A34(v6, qword_100018B88);
  v8 = swift_beginAccess();
  v9 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v11 = &v65 - v10;
  sub_10000AFB0(v7, &v65 - v10, &qword_100018A30, &qword_10000F440);
  v12 = type metadata accessor for Configuration();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v11, 1, v12);
  if (result == 1)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v15 = type metadata accessor for Options();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  Configuration.options.getter();
  v18 = (*(v13 + 8))(v11, v12);
  __chkstk_darwin(v18);
  v19 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Options.noOperation.getter();
  sub_10000DF98();
  v20 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v21 = *(v16 + 8);
  v21(v19, v15);
  v21(v19, v15);
  if (v20)
  {
    if (qword_100018800 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100002A34(v22, qword_100018BA0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v23, v24))
    {
      v27 = 0;
LABEL_37:

      return v27;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "IntelligencePlatformComputeService: service is in no-op mode.", v25, 2u);
LABEL_25:

    v27 = 0;
    goto LABEL_37;
  }

  v26 = v71;
  if ([v71 valueForEntitlement:kGDCComputeServiceName])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v77 = 0u;
    v78 = 0u;
  }

  aBlock = v77;
  v73 = v78;
  if (!*(&v78 + 1))
  {
    sub_10000E1C4(&aBlock, &qword_100018A40, &qword_10000F5A0);
LABEL_21:
    if (qword_100018800 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100002A34(v33, qword_100018BA0);
    v34 = v26;
    v23 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v23, v35))
    {

      v27 = 0;
      v23 = v34;
      goto LABEL_37;
    }

    v36 = swift_slowAlloc();
    *v36 = 67109120;
    *(v36 + 4) = [v34 processIdentifier];

    _os_log_impl(&_mh_execute_header, v23, v35, "IntelligencePlatformComputeService: Rejecting connection from %d: lacking entitlement", v36, 8u);
    goto LABEL_25;
  }

  if (!swift_dynamicCast() || (v76 & 1) == 0)
  {
    goto LABEL_21;
  }

  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100002A34(v28, qword_100018BA0);
  v29 = v26;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 67109120;
    *(v32 + 4) = [v29 processIdentifier];

    _os_log_impl(&_mh_execute_header, v30, v31, "IntelligencePlatformComputeService: connection from %d", v32, 8u);
  }

  else
  {

    v30 = v29;
  }

  v37 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___GDCIntelligencePlatformComputeServiceProtocol];
  [v29 setExportedInterface:v37];

  sub_10000A234(&qword_100018A48, &qword_10000F5A8);
  v38 = swift_allocObject();
  v71 = xmmword_10000F520;
  *(v38 + 16) = xmmword_10000F520;
  v39 = sub_100002370(0, &qword_100018A50, NSArray_ptr);
  v40 = sub_10000A234(&qword_100018A58, &qword_10000F5B0);
  *(v38 + 56) = v40;
  *(v38 + 32) = v39;
  v41 = sub_100002370(0, &qword_100018A60, GDViewUpdateSourceRequest_ptr);
  *(v38 + 88) = sub_10000A234(&qword_100018A68, &qword_10000F5B8);
  *(v38 + 64) = v41;
  v42 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v44 = [v42 initWithArray:isa];

  *&aBlock = 0;
  result = static Set._forceBridgeFromObjectiveC(_:result:)();
  if (!aBlock)
  {
    goto LABEL_39;
  }

  v45 = [v29 exportedInterface];
  if (v45)
  {
    v46 = v45;
    v47 = Set._bridgeToObjectiveC()().super.isa;

    [v46 setClasses:v47 forSelector:"updateViewWithName:viewUpdateSourceRequests:reply:" argumentIndex:1 ofReply:0];
  }

  else
  {
  }

  v48 = swift_allocObject();
  *(v48 + 16) = v71;
  *(v48 + 56) = v40;
  *(v48 + 32) = v39;
  v49 = sub_100002370(0, &qword_100018A70, GDViewUpdateNameAndRequests_ptr);
  *(v48 + 88) = sub_10000A234(&qword_100018A78, &qword_10000F5C0);
  *(v48 + 64) = v49;
  v50 = objc_allocWithZone(NSSet);
  v51 = Array._bridgeToObjectiveC()().super.isa;

  v52 = [v50 initWithArray:v51];

  *&aBlock = 0;
  result = static Set._forceBridgeFromObjectiveC(_:result:)();
  if (aBlock)
  {

    v53 = [v29 exportedInterface];
    if (v53)
    {
      v54 = v53;
      v55 = Set._bridgeToObjectiveC()().super.isa;

      [v54 setClasses:v55 forSelector:"updateGroupWithName:namesAndRequests:reply:" argumentIndex:1 ofReply:0];
    }

    else
    {
    }

    v56 = [objc_allocWithZone(type metadata accessor for IntelligencePlatformComputeService()) init];
    [v29 setExportedObject:v56];
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    v74 = sub_10000DFE4;
    v75 = v57;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v73 = sub_10000C008;
    *(&v73 + 1) = &unk_100014A58;
    v58 = _Block_copy(&aBlock);
    v59 = v56;

    [v29 setInvalidationHandler:v58];
    _Block_release(v58);
    sub_100002370(0, &qword_100018A80, OS_dispatch_source_ptr);
    static OS_dispatch_source.makeSignalSource(signal:queue:)();
    swift_getObjectType();
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    v74 = sub_10000E004;
    v75 = v60;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v73 = sub_10000C008;
    *(&v73 + 1) = &unk_100014AA8;
    v61 = _Block_copy(&aBlock);
    v23 = v59;
    v62 = v65;
    static DispatchQoS.unspecified.getter();
    *&v77 = &_swiftEmptyArrayStorage;
    sub_10000E00C();
    sub_10000A234(&qword_100018A90, &qword_10000F5C8);
    sub_10000E064();
    v63 = v67;
    v64 = v70;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v61);
    (*(v69 + 8))(v63, v64);
    (*(v66 + 8))(v62, v68);

    OS_dispatch_source.resume()();
    [v29 resume];
    swift_unknownObjectRelease();
    v27 = 1;
    goto LABEL_37;
  }

LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_10000DF98()
{
  result = qword_100018A38;
  if (!qword_100018A38)
  {
    type metadata accessor for Options();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018A38);
  }

  return result;
}

uint64_t sub_10000DFEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000E00C()
{
  result = qword_100018A88;
  if (!qword_100018A88)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018A88);
  }

  return result;
}

unint64_t sub_10000E064()
{
  result = qword_100018A98;
  if (!qword_100018A98)
  {
    sub_10000E0C8(&qword_100018A90, &qword_10000F5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018A98);
  }

  return result;
}

uint64_t sub_10000E0C8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000E110(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000026DC;

  return sub_10000C36C(a1, v4, v5, v6);
}

uint64_t sub_10000E1C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000A234(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000E224(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100004134;

  return sub_100001A64(a1, v5);
}

uint64_t sub_10000E2DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000026DC;

  return sub_100001A64(a1, v5);
}

uint64_t sub_10000E394()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000E3D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100004134;

  return sub_10000B70C(a1, v4, v5, v6);
}

uint64_t sub_10000E488(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A234(&qword_100018A30, &qword_10000F440);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static BMDaemonLibraryLoader.loadRootLibrary()()
{
  type metadata accessor for Library();
  sub_100004DF4();

  return static UnifiedLibrary.add(library:)();
}

id BMDaemonLibraryLoader.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BMDaemonLibraryLoader();
  return objc_msgSendSuper2(&v2, "init");
}

id BMDaemonLibraryLoader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BMDaemonLibraryLoader();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000E654()
{
  v0 = type metadata accessor for Logger();
  sub_100004644(v0, qword_100018BA0);
  sub_100002A34(v0, qword_100018BA0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000E6CC@<X0>(char *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  result = confstr(a2, a1, 0x400uLL);
  if (result >= 1 && a1)
  {
    result = String.init(cString:)();
    *a3 = result;
    a3[1] = v6;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t String.realpath.getter()
{
  v0 = String.utf8CString.getter();
  v1 = realpath_DARWIN_EXTSN((v0 + 32), 0);

  if (!v1)
  {
    return 0;
  }

  v2 = String.init(cString:)();

  return v2;
}