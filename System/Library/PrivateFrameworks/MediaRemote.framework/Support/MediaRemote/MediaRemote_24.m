uint64_t sub_100337220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v105 = a5;
  v106 = a8;
  v111 = a6;
  v112 = a1;
  v102 = type metadata accessor for RoutingControl.Target();
  v12 = *(v102 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v102);
  v110 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for Logger();
  v15 = *(v113 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v113);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v90 - v20;
  v101 = type metadata accessor for RoutingControl();
  v22 = *(v101 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v101);
  v100 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v27 = *(*(a4 + 32) + 24);
  if (v27 <= a3)
  {
    return result;
  }

  v97 = (v22 + 16);
  v96 = (v22 + 8);
  v95 = (v12 + 88);
  v94 = enum case for RoutingControl.Target.item(_:);
  v92 = (v12 + 8);
  v91 = (v12 + 96);
  v108 = (v15 + 16);
  v109 = (v15 + 8);
  *&v26 = 136315906;
  v98 = v26;
  v99 = a4;
  v107 = a2;
  v93 = v19;
  v114 = v27;
  while (a3 < v27)
  {
    v28 = *(a4 + 32);
    if (a3 >= v28[3])
    {
      goto LABEL_46;
    }

    v29 = v28[4];
    if (a3 + v29 >= v28[2])
    {
      v30 = v28[2];
    }

    else
    {
      v30 = 0;
    }

    v31 = v28[a3 + 5 + v29 - v30];
    v32 = *(*v31 + 104);

    v34 = v32(v33);
    if (v34)
    {
      sub_1002FB794(v34, v35, v36, v37);
    }

    else
    {
      (*(*v31 + 168))(v116);
      v38 = v116[0];
      if (v117 <= 5u)
      {
        v39 = v116[1];
        if (v117 <= 2u)
        {
          v40 = v113;
LABEL_22:

LABEL_23:
          if (v38 == v112 && v39 == a2)
          {

LABEL_27:
            v43 = sub_100028D40();
            (*v108)(v21, v43, v40);

            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              v104 = swift_slowAlloc();
              v115 = v104;
              *v46 = v98;
              v47 = _typeName(_:qualified:)();
              LODWORD(v103) = v45;
              v49 = sub_10002C9C8(v47, v48, &v115);

              *(v46 + 4) = v49;
              *(v46 + 12) = 2082;
              *(v46 + 14) = sub_10002C9C8(v105, v111, &v115);
              *(v46 + 22) = 2082;
              v50 = *(*v31 + 152);

              v52 = v50(v51);
              v54 = v53;

              v55 = sub_10002C9C8(v52, v54, &v115);

              *(v46 + 24) = v55;
              *(v46 + 32) = 2082;
              v57 = (*(*a7 + 152))(v56);
              v59 = sub_10002C9C8(v57, v58, &v115);

              *(v46 + 34) = v59;
              _os_log_impl(&_mh_execute_header, v44, v103, "[%s] rebuild<%{public}s> - cancel event: %{public}s as per resolution of failed event: %{public}s", v46, 0x2Au);
              swift_arrayDestroy();

              a4 = v99;

              (*v109)(v21, v113);
            }

            else
            {

              (*v109)(v21, v40);
            }

            (*(*v31 + 112))(3, 0, 0, 0);

            a2 = v107;
            goto LABEL_5;
          }

          v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v42)
          {
            goto LABEL_27;
          }

          goto LABEL_4;
        }

        v40 = v113;
        if (v117 == 3)
        {
          goto LABEL_22;
        }

        if (v117 != 4)
        {
          goto LABEL_23;
        }

LABEL_34:
        sub_100238E4C(v116);
        goto LABEL_4;
      }

      v41 = v110;
      if (v117 > 8u)
      {
        if (v117 != 10)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v117 == 6)
        {
          v67 = *(v116[0] + 32);
          v39 = *(v116[0] + 40);

          sub_100238E4C(v116);
          v38 = v67;
          v40 = v113;
          goto LABEL_23;
        }

        if (v117 != 7)
        {
          goto LABEL_34;
        }
      }

      v60 = swift_projectBox();
      v61 = v100;
      v62 = v101;
      (*v97)(v100, v60, v101);
      sub_100238E4C(v116);
      RoutingControl.target.getter();
      (*v96)(v61, v62);
      v63 = v102;
      v64 = (*v95)(v41, v102);
      if (v64 != v94)
      {

        result = (*v92)(v41, v63);
        goto LABEL_5;
      }

      (*v91)(v41, v63);
      if (*v41 == v112 && v41[1] == a2)
      {
        v65 = v41[1];

        v66 = v113;
LABEL_40:
        v70 = sub_100028D40();
        v71 = v93;
        (*v108)(v93, v70, v66);

        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.info.getter();

        LODWORD(v104) = v73;
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v115 = v103;
          *v74 = v98;
          v75 = _typeName(_:qualified:)();
          v90 = v72;
          v77 = sub_10002C9C8(v75, v76, &v115);

          *(v74 + 4) = v77;
          *(v74 + 12) = 2082;
          *(v74 + 14) = sub_10002C9C8(v105, v111, &v115);
          *(v74 + 22) = 2082;
          v78 = *(*v31 + 152);

          v80 = v78(v79);
          a4 = v99;
          v81 = v80;
          v83 = v82;

          v84 = sub_10002C9C8(v81, v83, &v115);

          *(v74 + 24) = v84;
          *(v74 + 32) = 2082;
          v86 = (*(*a7 + 152))(v85);
          v88 = sub_10002C9C8(v86, v87, &v115);

          *(v74 + 34) = v88;
          v89 = v90;
          _os_log_impl(&_mh_execute_header, v90, v104, "[%s] rebuild<%{public}s> - cancel event: %{public}s as per resolution of failed event: %{public}s", v74, 0x2Au);
          swift_arrayDestroy();

          a2 = v107;

          (*v109)(v93, v113);
        }

        else
        {

          (*v109)(v71, v113);
        }

        (*(*v31 + 112))(3, 0, 0, 0);
        goto LABEL_4;
      }

      v68 = v41[1];
      v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v66 = v113;
      if (v69)
      {
        goto LABEL_40;
      }
    }

LABEL_4:

LABEL_5:
    ++a3;
    v27 = v114;
    if (v114 == a3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_100337CF8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 40);
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  v4 = v2 >> 62;
  if (v2 >> 62)
  {
    goto LABEL_79;
  }

  v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      if (v4)
      {
        v6 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v6 = *(v3 + 16);
      }

      goto LABEL_21;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v3 + 16))
      {
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        v5 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v7 = *(v2 + 8 * v6 + 32);
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      break;
    }

    swift_unknownObjectRelease();
    v10 = __OFADD__(v6++, 1);
    if (v10)
    {
      goto LABEL_71;
    }
  }

  v11 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_88;
  }

  if (v4)
  {
    if (v11 != _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_36;
    }

LABEL_21:
    if (v2 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
      if (v12 >= v6)
      {
LABEL_23:
        sub_100339948(v6, v12);
        result = swift_endAccess();
        v6 = *(v1 + 40);
        if (!(v6 >> 62))
        {
          v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v13)
          {
            return result;
          }

LABEL_25:
          if (v13 < 1)
          {
            goto LABEL_87;
          }

          for (i = 0; i != v13; ++i)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v17 = *(v6 + 8 * i + 32);
            }

            if (swift_unknownObjectWeakLoadStrong())
            {
              v15 = *(v17 + 24);
              ObjectType = swift_getObjectType();
              (*(v15 + 8))(v1, ObjectType, v15);

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }
        }

LABEL_82:
        result = _CocoaArrayWrapper.endIndex.getter();
        v13 = result;
        if (!result)
        {
          return result;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12 >= v6)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_82;
  }

  if (v11 == *(v3 + 16))
  {
    goto LABEL_21;
  }

LABEL_36:
  v3 = v6 + 5;
  while (2)
  {
    v18 = v3 - 4;
    v4 = v2 & 0xC000000000000001;
    if ((v2 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_72;
      }

      if (v18 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_73;
      }

      v19 = *(v2 + 8 * v3);
    }

    v20 = swift_unknownObjectWeakLoadStrong();

    if (!v20)
    {
      goto LABEL_61;
    }

    result = swift_unknownObjectRelease();
    if (v18 == v6)
    {
      goto LABEL_60;
    }

    if (v4)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_49;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      v23 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6 >= v23)
      {
        goto LABEL_85;
      }

      if (v18 >= v23)
      {
        goto LABEL_86;
      }

      v21 = *(v2 + 8 * v6 + 32);
      v22 = *(v2 + 8 * v3);

LABEL_49:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v1 + 40) = v2;
      if (!isUniquelyReferenced_nonNull_bridgeObject || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
      {
        v2 = sub_10021C368(v2);
        *(v1 + 40) = v2;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_76;
      }

      v4 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      v25 = v4 + 8 * v6;
      v26 = *(v25 + 32);
      *(v25 + 32) = v22;

      *(v1 + 40) = v2;
      if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
      {
        v2 = sub_10021C368(v2);
        *(v1 + 40) = v2;
        v4 = v2 & 0xFFFFFFFFFFFFFF8;
        if ((v18 & 0x8000000000000000) != 0)
        {
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }
      }

      else if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_69;
      }

      if (v18 >= *(v4 + 16))
      {
        goto LABEL_78;
      }

      v27 = *(v4 + 8 * v3);
      *(v4 + 8 * v3) = v21;

      *(v1 + 40) = v2;
LABEL_60:
      v10 = __OFADD__(v6++, 1);
      if (v10)
      {
        goto LABEL_75;
      }

LABEL_61:
      v10 = __OFADD__(v18, 1);
      v28 = v3 - 3;
      if (v10)
      {
        goto LABEL_74;
      }

      if (v2 >> 62)
      {
        v29 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v29 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v3;
      if (v28 == v29)
      {
        goto LABEL_21;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

void sub_100338148()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  swift_beginAccess();
  v11 = v1[3];
  if (*(v1[4] + 24))
  {
    if (v11)
    {
      return;
    }

    v12 = sub_100038EF0();
    (*(v4 + 16))(v8, v12, v3);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32 = v16;
      *v15 = 136315138;
      v17 = _typeName(_:qualified:)();
      v19 = sub_10002C9C8(v17, v18, &v32);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%s] updateTransaction - creating transaction", v15, 0xCu);
      sub_100026A44(v16);
    }

    (*(v4 + 8))(v8, v3);
    v20 = objc_allocWithZone(MROSTransaction);
    v21 = String._bridgeToObjectiveC()();
    v22 = [v20 initWithName:v21];

    MRRegisterTransaction();
  }

  else
  {
    if (!v11)
    {
      return;
    }

    v23 = sub_100038EF0();
    (*(v4 + 16))(v10, v23, v3);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v32 = v27;
      *v26 = 136315138;
      v28 = _typeName(_:qualified:)();
      v30 = sub_10002C9C8(v28, v29, &v32);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%s] updateTransaction - finishing transaction", v26, 0xCu);
      sub_100026A44(v27);
    }

    (*(v4 + 8))(v10, v3);
    v22 = 0;
  }

  v31 = v1[3];
  v1[3] = v22;
}

uint64_t sub_1003384EC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

void *sub_10033853C()
{
  v0 = swift_allocObject();
  v1 = sub_100021264();
  v2 = *v1;
  v0[2] = *v1;
  v0[3] = 0;
  v3 = v2;
  v0[4] = *_emptyDequeStorage.unsafeMutableAddressor();
  v0[5] = _swiftEmptyArrayStorage;

  return v0;
}

unint64_t sub_1003385DC()
{
  _StringGuts.grow(_:)(19);

  v2._countAndFlagsBits = (*(*v0 + 216))(v1);
  String.append(_:)(v2);

  return 0xD000000000000011;
}

unint64_t sub_10033867C()
{
  v1 = *v0;
  _StringGuts.grow(_:)(19);

  v3._countAndFlagsBits = (*(*v1 + 216))(v2);
  String.append(_:)(v3);

  return 0xD000000000000011;
}

uint64_t sub_10033871C(char a1, Swift::Int a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    sub_1001BC5A8(&qword_100526AE0, &unk_100458830);
    v11 = swift_allocObject();
    v14 = *(v4 + 24);
    *(v11 + 16) = v6;
    *(v11 + 24) = v14;
    if (v14 >= 1)
    {
      sub_100338B64(v11 + 16, v11 + 40, v5, v4 + 40);
    }
  }

  else
  {
    type metadata accessor for RoutingTimeline.Event();
    Deque._Storage._growCapacity(to:linearly:)(a2, a3 & 1);
    if (a1)
    {
      v10 = *(v4 + 24);
      sub_1001BC5A8(&qword_100526AE0, &unk_100458830);
      v11 = swift_allocObject();
      v12 = j__malloc_size(v11);
      v13 = v12 - 40;
      if (v12 < 40)
      {
        v13 = v12 - 33;
      }

      *(v11 + 16) = v13 >> 3;
      *(v11 + 24) = v10;
      *(v11 + 32) = 0;
      if (v10 >= 1)
      {
        sub_100338948(v11 + 16, (v11 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      sub_1001BC5A8(&qword_100526AE0, &unk_100458830);
      v11 = swift_allocObject();
      v15 = j__malloc_size(v11);
      v16 = v15 - 40;
      if (v15 < 40)
      {
        v16 = v15 - 33;
      }

      v17 = *(v4 + 24);
      *(v11 + 16) = v16 >> 3;
      *(v11 + 24) = v17;
      *(v11 + 32) = 0;
      if (v17 >= 1)
      {
        sub_100338A70(v11 + 16, v11 + 40, v5, v4 + 40);
      }
    }
  }

  *v3 = v11;
  return result;
}

void *sub_1003388D8(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v6 = __OFADD__(v4, v3);
  v5 = v4 + v3;
  if (!v6)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v6))
      {
LABEL_9:
        *(a2 + 8 * v5) = a3;
        v6 = __OFADD__(v3, 1);
        v7 = v3 + 1;
        if (!v6)
        {
          result[1] = v7;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v6 = __OFADD__(v5, *result);
      v5 += *result;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_100338948(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[8 * v4];
  if (v12 != __dst || &v12[8 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 8 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[8 * v8];
  if (v16 != v11 || v16 >= &v11[8 * v7])
  {

    memmove(v16, v11, 8 * v7);
  }
}

uint64_t sub_100338A70(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = 0;
  v7 = 0;
  v10 = a3[1];
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      type metadata accessor for RoutingTimeline.Event();
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v9)
    {
      type metadata accessor for RoutingTimeline.Event();
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_100338B64(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v9 = 0;
    v7 = 0;
    v10 = a3[1];
    if (v6 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      type metadata accessor for RoutingTimeline.Event();
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *a3 - v4;
  v9 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v9)
    {
      type metadata accessor for RoutingTimeline.Event();
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_100338C5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((result & 1) == 0)
  {
    result = sub_1000089FC(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_1000089FC((v10 > 1), v11 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v3[1] = v7;
  v13 = *v3;
  if (*v3)
  {
    swift_beginAccess();
    v14 = *(v13 + 16);
    if (static _HashTable.maximumCapacity(forScale:)() > v11)
    {
      v15 = *v3;
      result = swift_isUniquelyReferenced_native();
      v16 = *v3;
      if ((result & 1) == 0)
      {
        if (!v16)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v17 = *v3;
        v18 = _HashTable.copy()();

        *v3 = v18;
        v16 = v18;
      }

      if (v16)
      {
        v19 = *(v16 + 16);
        v20 = *(*v6 + 16) + ~(*(v16 + 24) >> 6);
        return _HashTable.UnsafeHandle.subscript.setter();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return result;
  }

  return sub_100338DD4();
}

uint64_t sub_100338DD4()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = static _HashTable.scale(forCapacity:)();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_100338E74(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

uint64_t sub_100338E74(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = static _HashTable.scale(forCapacity:)();
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = _HashTable.init(scale:reservedScale:)();
    sub_100338EF4(a1, (v10 + 16));
    return v10;
  }

  return result;
}

Swift::Int sub_100338F44(Swift::Int result, uint64_t a2, uint64_t *a3)
{
  v11 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = (v11 + 16 * v5);
        v7 = *v6;
        v8 = v6[1];
        v9 = *a3;
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v10 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v10)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_100339074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle._startIterator(bucket:)();
    result = _HashTable.BucketIterator.currentValue.getter();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            break;
          }

          _HashTable.BucketIterator.advance()();
          result = _HashTable.BucketIterator.currentValue.getter();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

uint64_t sub_1003391C0()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  sub_1001BC5A8(&qword_100526AE0, &unk_100458830);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_100338B64(v4 + 16, v4 + 40, v2, v1 + 40);
  }

  *v0 = v4;
  return result;
}

uint64_t sub_100339260(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v1 = result;
  }

  return result;
}

unint64_t sub_10033931C(uint64_t a1, uint64_t a2)
{
  if ((sub_10026D4AC((a1 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_routingEvent), (a2 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_routingEvent)) & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*a1 + 104))();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = (*(*a2 + 104))();
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (result != 2)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v15 = v14;
      v16 = v13;
      v17 = v12;
      if (v4 != 3)
      {
        goto LABEL_12;
      }

      if (result != 3)
      {
LABEL_11:
        v18 = 0;
LABEL_13:
        v12 = v17;
        v13 = v16;
        v14 = v15;
LABEL_16:
        sub_1002FB794(result, v12, v13, v14);
        return v18;
      }
    }
  }

  else
  {
    if (v4)
    {
      v15 = v14;
      v16 = v13;
      v17 = v12;
      if (v4 == 1)
      {
        if (result == 1)
        {
          return result;
        }

        goto LABEL_11;
      }

LABEL_12:
      v19 = result;
      sub_1002FB794(v4, v6, v8, v10);
      result = v19;
      v18 = v19 > 3;
      goto LABEL_13;
    }

    if (result)
    {
LABEL_15:
      v18 = 0;
      goto LABEL_16;
    }
  }

  return 1;
}

uint64_t sub_100339480(uint64_t a1)
{
  v2 = type metadata accessor for RoutingEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003394DC()
{
  result = qword_100526798;
  if (!qword_100526798)
  {
    sub_1001C2EC8(&qword_100526790, qword_1004585A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100526798);
  }

  return result;
}

uint64_t sub_100339564(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  v5 = *a1 >> 62;
  if (v5)
  {
LABEL_62:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v4 + 16))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
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
        goto LABEL_62;
      }

      v9 = *(v3 + 8 * v7 + 32);
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      result = swift_unknownObjectRelease();
      if (Strong == a2)
      {
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
          return result;
        }

        v4 = a1;
        while (1)
        {
          if (v3 >> 62)
          {
            if (v12 == _CocoaArrayWrapper.endIndex.getter())
            {
              return v7;
            }
          }

          else if (v12 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            return v7;
          }

          v5 = v3 & 0xC000000000000001;
          if ((v3 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v12 & 0x8000000000000000) != 0)
            {
              goto LABEL_54;
            }

            if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }

            v15 = *(v3 + 8 * v12 + 32);
          }

          v16 = swift_unknownObjectWeakLoadStrong();

          if (!v16 || (swift_unknownObjectRelease(), v16 != a2))
          {
            if (v7 != v12)
            {
              if (v5)
              {
                v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if ((v7 & 0x8000000000000000) != 0)
                {
                  goto LABEL_59;
                }

                v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v7 >= v19)
                {
                  goto LABEL_60;
                }

                if (v12 >= v19)
                {
                  goto LABEL_61;
                }

                v17 = *(v3 + 32 + 8 * v7);
                v18 = *(v3 + 32 + 8 * v12);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
              {
                v3 = sub_10021C368(v3);
                v20 = (v3 >> 62) & 1;
              }

              else
              {
                LODWORD(v20) = 0;
              }

              v5 = v3 & 0xFFFFFFFFFFFFFF8;
              v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
              *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v18;

              if ((v3 & 0x8000000000000000) != 0 || v20)
              {
                v3 = sub_10021C368(v3);
                v5 = v3 & 0xFFFFFFFFFFFFFF8;
                if ((v12 & 0x8000000000000000) != 0)
                {
LABEL_50:
                  __break(1u);
                  return _CocoaArrayWrapper.endIndex.getter();
                }
              }

              else if ((v12 & 0x8000000000000000) != 0)
              {
                goto LABEL_50;
              }

              if (v12 >= *(v5 + 16))
              {
                goto LABEL_58;
              }

              v13 = v5 + 8 * v12;
              v14 = *(v13 + 32);
              *(v13 + 32) = v17;

              *a1 = v3;
            }

            v8 = __OFADD__(v7++, 1);
            if (v8)
            {
              goto LABEL_57;
            }
          }

          v8 = __OFADD__(v12++, 1);
          if (v8)
          {
            goto LABEL_56;
          }
        }
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_53;
    }
  }

  if (v5)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  return *(v4 + 16);
}

uint64_t sub_10033984C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for RoutingTimeline.Observer();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100339948(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_100339260(result);

  return sub_10033984C(v4, v2, 0);
}

uint64_t type metadata accessor for RoutingTimeline.Event()
{
  result = qword_100534AA0;
  if (!qword_100534AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100339ABC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100339B30()
{
  result = type metadata accessor for RoutingEvent(319);
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

uint64_t sub_100339BD4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100339BEC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 25))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100339C40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_100339CA4(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

void *sub_100339CD8()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
    *(v0 + 24) = &_swiftEmptySetSingleton;
  }

  return v1;
}

double sub_100339D18(uint64_t a1)
{
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  *(v2 + 56) = a1;
  return result;
}

uint64_t sub_100339D54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 56);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!*(sub_100015D10() + 2))
  {

    goto LABEL_6;
  }

  sub_10000698C(a1, a2);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_6:

    v16 = static String.nanoIDEightChar()();
    v18 = v17;
    v19 = *(v3 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v19;
    sub_100035B14(v16, v18, a1, a2, isUniquelyReferenced_nonNull_native);

    v21 = *(v3 + 16);
    *(v3 + 16) = v29;
  }

  v22 = *(v3 + 16);
  if (!*(v22 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v23 = *(v3 + 16);

  result = sub_10000698C(a1, a2);
  if (v24)
  {
    v25 = (*(v22 + 56) + 16 * result);
    v26 = *v25;
    v27 = v25[1];

    return v26;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100339F5C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 56);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v11 = sub_100300EE4();
    if (v11[2] && (v12 = sub_10028B074(a1), (v13 & 1) != 0))
    {
      v14 = (v11[7] + 16 * v12);
      v15 = *v14;
      v16 = v14[1];
    }

    else
    {
      v15 = 0;
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10033A0B4(uint64_t a1)
{
  v2 = v1;
  v107 = *v1;
  v4 = type metadata accessor for HostedRoutingSourceSession(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = (&v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = v2;
  v14 = v2[7];
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v106 = v14;
  v15 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v15)
  {
    v16 = *(a1 + 16);
    v17 = _swiftEmptyArrayStorage;
    if (v16)
    {
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1000089FC(0, v16, 0);
      v17 = aBlock[0];
      v18 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v19 = *(v5 + 72);
      do
      {
        sub_10033CFF8(v18, v8);
        v20 = *v8;
        v21 = v8[1];

        sub_10033D05C(v8);
        aBlock[0] = v17;
        v23 = v17[2];
        v22 = v17[3];
        if (v23 >= v22 >> 1)
        {
          sub_1000089FC((v22 > 1), v23 + 1, 1);
          v17 = aBlock[0];
        }

        v17[2] = v23 + 1;
        v24 = &v17[2 * v23];
        v24[4] = v20;
        v24[5] = v21;
        v18 += v19;
        --v16;
      }

      while (v16);
    }

    v25 = sub_100008280(v17);

    v26 = v111[3];
    v111[3] = v25;

    v27 = sub_100339CD8();
    v28 = v27;
    v29 = 0;
    v30 = 1 << v27[32];
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v27 + 56;
    v33 = v31 & *(v27 + 7);
    v34 = (v30 + 63) >> 6;
LABEL_10:
    if (v33)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v35 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v35 >= v34)
      {

        v47 = sub_100015D10();
        v48 = 0;
        v50 = (v47 + 8);
        v49 = v47[8];
        v110 = v47;
        v51 = 1 << *(v47 + 32);
        if (v51 < 64)
        {
          v52 = ~(-1 << v51);
        }

        else
        {
          v52 = -1;
        }

        v53 = v52 & v49;
        v54 = (v51 + 63) >> 6;
        v105 = v113;
        v109 = v54;
        if ((v52 & v49) == 0)
        {
LABEL_26:
          while (1)
          {
            v55 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
              goto LABEL_65;
            }

            if (v55 >= v54)
            {
            }

            v53 = *&v50[8 * v55];
            ++v48;
            if (v53)
            {
              v48 = v55;
              break;
            }
          }
        }

        while (2)
        {
          while (2)
          {
            v56 = __clz(__rbit64(v53));
            v53 &= v53 - 1;
            v57 = (v48 << 10) | (16 * v56);
            v58 = (v110[6] + v57);
            v59 = *v58;
            v60 = v58[1];
            v61 = (v110[7] + v57);
            v63 = *v61;
            v62 = v61[1];
            v64 = v111[3];
            if (*(v64 + 16))
            {
              v108 = *v58;
              v65 = *(v64 + 40);
              Hasher.init(_seed:)();

              String.hash(into:)();
              v66 = Hasher._finalize()();
              v67 = -1 << *(v64 + 32);
              v68 = v66 & ~v67;
              if ((*(v64 + 56 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68))
              {
                v69 = ~v67;
                while (1)
                {
                  v70 = (*(v64 + 48) + 16 * v68);
                  v71 = *v70 == v63 && v70[1] == v62;
                  if (v71 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  v68 = (v68 + 1) & v69;
                  if (((*(v64 + 56 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
                  {
                    goto LABEL_39;
                  }
                }

LABEL_48:

                v54 = v109;
                if (!v53)
                {
                  goto LABEL_26;
                }

                continue;
              }

LABEL_39:

              v59 = v108;
            }

            else
            {
              v72 = v58[1];
            }

            break;
          }

          if (*(sub_100030790() + 2))
          {
            sub_10000698C(v63, v62);
            if (v73)
            {
              goto LABEL_48;
            }
          }

          v74 = swift_allocObject();
          swift_weakInit();
          v75 = swift_allocObject();
          v75[2] = v74;
          v75[3] = v63;
          v75[4] = v62;
          v75[5] = v59;
          v76 = v107;
          v75[6] = v60;
          v75[7] = v76;
          v77 = objc_allocWithZone(MSVTimer);
          v113[2] = sub_10033D0B8;
          v113[3] = v75;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v113[0] = sub_100003D98;
          v113[1] = &unk_1004CE798;
          v78 = _Block_copy(aBlock);
          v79 = v106;

          v80 = [v77 initWithInterval:0 repeats:v79 queue:v78 block:{300.0, v105}];
          _Block_release(v78);

          v81 = v111[4];

          if (v80)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v81;
            v83 = sub_10000698C(v63, v62);
            v85 = v81[2];
            v86 = (v84 & 1) == 0;
            v87 = __OFADD__(v85, v86);
            v88 = v85 + v86;
            if (v87)
            {
              goto LABEL_66;
            }

            v89 = v84;
            if (v81[3] >= v88)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_55;
              }

              v99 = v83;
              sub_100228424();
              v83 = v99;
              if ((v89 & 1) == 0)
              {
                goto LABEL_58;
              }

LABEL_56:
              v96 = v83;

              v81 = aBlock[0];
              v97 = *(aBlock[0] + 56);
              v98 = *(v97 + 8 * v96);
              *(v97 + 8 * v96) = v80;
            }

            else
            {
              sub_100228180(v88, isUniquelyReferenced_nonNull_native);
              v83 = sub_10000698C(v63, v62);
              if ((v89 & 1) != (v90 & 1))
              {
                goto LABEL_69;
              }

LABEL_55:
              if (v89)
              {
                goto LABEL_56;
              }

LABEL_58:
              v81 = aBlock[0];
              *(aBlock[0] + 8 * (v83 >> 6) + 64) |= 1 << v83;
              v100 = (v81[6] + 16 * v83);
              *v100 = v63;
              v100[1] = v62;
              *(v81[7] + 8 * v83) = v80;
              v101 = v81[2];
              v87 = __OFADD__(v101, 1);
              v102 = v101 + 1;
              if (v87)
              {
                goto LABEL_68;
              }

              v81[2] = v102;
            }

            v54 = v109;
          }

          else
          {
            v91 = sub_10000698C(v63, v62);
            v93 = v92;

            v54 = v109;
            if (v93)
            {
              v94 = swift_isUniquelyReferenced_nonNull_native();
              aBlock[0] = v81;
              if (!v94)
              {
                sub_100228424();
                v81 = aBlock[0];
              }

              v95 = *(v81[6] + 16 * v91 + 8);

              sub_1001DEE44(v91, v81);
            }
          }

          v103 = v111[4];
          v111[4] = v81;

          if (!v53)
          {
            goto LABEL_26;
          }

          continue;
        }
      }

      v33 = *&v32[8 * v35];
      ++v29;
      if (v33)
      {
        v29 = v35;
LABEL_15:
        v36 = (*(v28 + 6) + ((v29 << 10) | (16 * __clz(__rbit64(v33)))));
        v37 = *v36;
        v38 = v36[1];
        v39 = sub_100030790();

        v40 = sub_10000698C(v37, v38);
        v42 = v41;

        if (v42)
        {
          v43 = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v39;
          if (!v43)
          {
            sub_100228424();
            v39 = aBlock[0];
          }

          v44 = *(v39[6] + 16 * v40 + 8);

          v45 = *(v39[7] + 8 * v40);
          sub_1001DEE44(v40, v39);
        }

        else
        {
          v45 = 0;
        }

        v33 &= v33 - 1;
        v46 = v111[4];
        v111[4] = v39;

        if (v45)
        {
          [v45 invalidate];
        }

        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10033A964(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_1000089FC(0, v1, 0);
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v8 = *(v2 + 36);
  v29 = v2 + 72;
  v30 = v1;
  v31 = v8;
  v32 = v2 + 64;
  v33 = v2;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v2 + 36))
    {
      goto LABEL_23;
    }

    v34 = v7;
    v11 = (*(v2 + 48) + 16 * v6);
    v12 = *v11;
    v13 = v11[1];
    v14 = (*(v2 + 56) + 16 * v6);
    v15 = v14[1];
    v35 = *v14;

    _StringGuts.grow(_:)(48);

    v16._countAndFlagsBits = v12;
    v16._object = v13;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 0xD000000000000017;
    v17._object = 0x8000000100440A30;
    String.append(_:)(v17);
    v18._countAndFlagsBits = v35;
    v18._object = v15;
    String.append(_:)(v18);

    v20 = _swiftEmptyArrayStorage[2];
    v19 = _swiftEmptyArrayStorage[3];
    if (v20 >= v19 >> 1)
    {
      result = sub_1000089FC((v19 > 1), v20 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v20 + 1;
    v21 = &_swiftEmptyArrayStorage[2 * v20];
    v21[4] = 0xD000000000000015;
    v21[5] = 0x8000000100440A50;
    v2 = v33;
    v9 = 1 << *(v33 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v3 = v32;
    v22 = *(v32 + 8 * v10);
    if ((v22 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v31;
    if (v31 != *(v33 + 36))
    {
      goto LABEL_26;
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
          result = sub_10000A16C(v6, v31, 0);
          v9 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = sub_10000A16C(v6, v31, 0);
    }

LABEL_4:
    v7 = v34 + 1;
    v6 = v9;
    if (v34 + 1 == v30)
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

void *sub_10033AC54(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_1000089FC(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 56;
    v6 = -1 << *(v1 + 32);
    result = _HashTable.startBucket.getter();
    v7 = result;
    v8 = 0;
    v27 = v1 + 64;
    v28 = v2;
    v29 = v1 + 56;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v30 = v8;
      v31 = *(v1 + 36);
      v11 = (*(v1 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];

      v14._countAndFlagsBits = v12;
      v14._object = v13;
      String.append(_:)(v14);

      v15 = v4;
      v32 = v4;
      v16 = v1;
      v18 = v15[2];
      v17 = v15[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_1000089FC((v17 > 1), v18 + 1, 1);
        v15 = v32;
      }

      v15[2] = v18 + 1;
      v19 = &v15[2 * v18];
      v19[4] = 538976288;
      v19[5] = 0xE400000000000000;
      v9 = 1 << *(v16 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v5 = v29;
      v20 = *(v29 + 8 * v10);
      if ((v20 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v16;
      v4 = v15;
      if (v31 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v7 & 0x3F));
      if (v21)
      {
        v9 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v10 << 6;
        v23 = v10 + 1;
        v24 = (v27 + 8 * v10);
        while (v23 < (v9 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_10000A16C(v7, v31, 0);
            v9 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_10000A16C(v7, v31, 0);
      }

LABEL_4:
      v8 = v30 + 1;
      v7 = v9;
      if (v30 + 1 == v28)
      {
        return v4;
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
  }

  return result;
}

unint64_t sub_10033AEAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  sub_1000089FC(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = _HashTable.startBucket.getter();
  v7 = 0;
  v8 = *(v3 + 36);
  v34 = v3 + 72;
  v35 = v1;
  v36 = v8;
  v37 = v3 + 64;
  v38 = v3;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v3 + 32))
  {
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v40 = 1 << result;
    v41 = result >> 6;
    v39 = v7;
    v10 = *(v3 + 56);
    v11 = *(v3 + 48) + 56 * result;
    v12 = *(v11 + 8);
    v42 = *v11;
    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
    v45 = v2;
    v15 = *(v11 + 32);
    v16 = *(v11 + 40);
    v17 = (v10 + 16 * result);
    v18 = v17[1];
    v43 = *v17;
    v44 = result;
    v19 = *(v11 + 48);

    sub_10026D0B8(v14, v13, v15, v16, v19);
    swift_bridgeObjectRetain_n();

    sub_10026D0B8(v14, v13, v15, v16, v19);

    sub_1002485A4(v14, v13, v15, v16, v19);

    _StringGuts.grow(_:)(44);

    v20._countAndFlagsBits = v42;
    v20._object = v12;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 0xD000000000000017;
    v21._object = 0x8000000100440A30;
    String.append(_:)(v21);
    v22._countAndFlagsBits = v43;
    v22._object = v18;
    String.append(_:)(v22);

    v23 = v16;
    v2 = v45;
    sub_1002485A4(v14, v13, v15, v23, v19);

    v25 = v45[2];
    v24 = v45[3];
    if (v25 >= v24 >> 1)
    {
      sub_1000089FC((v24 > 1), v25 + 1, 1);
      v2 = v45;
    }

    v2[2] = v25 + 1;
    v26 = &v2[2 * v25];
    v26[4] = 0xD000000000000011;
    v26[5] = 0x8000000100440A10;
    v3 = v38;
    v9 = 1 << *(v38 + 32);
    result = v44;
    if (v44 >= v9)
    {
      goto LABEL_24;
    }

    v4 = v37;
    v27 = *(v37 + 8 * v41);
    if ((v27 & v40) == 0)
    {
      goto LABEL_25;
    }

    v8 = v36;
    if (v36 != *(v38 + 36))
    {
      goto LABEL_26;
    }

    v28 = v27 & (-2 << (v44 & 0x3F));
    if (v28)
    {
      v9 = __clz(__rbit64(v28)) | v44 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v41 << 6;
      v30 = v41 + 1;
      v31 = (v34 + 8 * v41);
      while (v30 < (v9 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          sub_10000A16C(v44, v36, 0);
          v9 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      sub_10000A16C(v44, v36, 0);
    }

LABEL_4:
    v7 = v39 + 1;
    result = v9;
    if (v39 + 1 == v35)
    {
      return v2;
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

uint64_t sub_10033B21C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v33 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v37 = sub_100030790();
    v15 = sub_10033C7C4(a2, a3);
    v16 = *(v14 + 32);
    *(v14 + 32) = v37;

    if (v15 && (v15, v17 = sub_100339CD8(), v18 = sub_1001BD5E8(a2, a3, v17), , (v18 & 1) == 0))
    {
      v19 = sub_100015A78();
      sub_100015B34(v19, v12);
      v20 = type metadata accessor for Logger();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v12, 1, v20) == 1)
      {
        sub_10033D1BC(v12);
      }

      else
      {
        v36 = v21;

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();

        v35 = v23;
        v24 = v23;
        v25 = v22;
        if (os_log_type_enabled(v22, v24))
        {
          v26 = swift_slowAlloc();
          v34 = v20;
          v27 = v26;
          v37 = swift_slowAlloc();
          *v27 = 136315650;
          v28 = _typeName(_:qualified:)();
          v30 = sub_10002C9C8(v28, v29, &v37);
          v33 = v22;
          v31 = v30;

          *(v27 + 4) = v31;
          *(v27 + 12) = 2080;
          *(v27 + 14) = sub_10002C9C8(a2, a3, &v37);
          *(v27 + 22) = 2080;
          *(v27 + 24) = sub_10002C9C8(a4, a5, &v37);
          v25 = v33;
          _os_log_impl(&_mh_execute_header, v33, v35, "[%s] expirationTimer - remove session identifier: %s for lost groupIdentifier: %s", v27, 0x20u);
          swift_arrayDestroy();

          v20 = v34;
        }

        (*(v36 + 8))(v12, v20);
      }

      v37 = sub_100015D10();

      sub_1001EC7F4(0, 0, a4, a5);
      v32 = *(v14 + 16);
      *(v14 + 16) = v37;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10033B580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v48 = *v3;
  v8 = type metadata accessor for Logger();
  v52 = *(v8 - 8);
  v9 = *(v52 + 64);
  __chkstk_darwin(v8);
  v51 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v4[7];
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v50 = v17;
    v19 = *a3;
    v20 = *(a3 + 8);
    v21 = *(a3 + 32);
    v58[0] = *(a3 + 16);
    v58[1] = v21;
    v59 = *(a3 + 48);
    v22 = sub_100300EE4();

    sub_10026D080(v58, &aBlock);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v22;
    sub_10033CC78(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    sub_100238E4C(v58);
    v24 = v4[6];
    v4[6] = aBlock;

    v25 = sub_100028D40();
    v26 = *(v52 + 16);
    v49 = v8;
    v26(v51, v25, v8);

    sub_10026D080(v58, &aBlock);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    sub_100238E4C(v58);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v47 = v19;
      v30 = v29;
      v57[0] = swift_slowAlloc();
      *v30 = 136315650;
      v31 = _typeName(_:qualified:)();
      v33 = sub_10002C9C8(v31, v32, v57);
      v48 = a1;
      v34 = v33;

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_10002C9C8(v47, v20, v57);
      *(v30 + 22) = 2080;
      v35 = *(a3 + 16);
      aBlock = *a3;
      v54 = v35;
      v55 = *(a3 + 32);
      v56 = *(a3 + 48);
      sub_1002856A4();
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = sub_10002C9C8(v36, v37, v57);

      *(v30 + 24) = v38;
      a1 = v48;
      _os_log_impl(&_mh_execute_header, v27, v28, "[%s] prewarmSessionIdentifier<%s> - interaction: %s", v30, 0x20u);
      swift_arrayDestroy();
    }

    (*(v52 + 8))(v51, v49);
    v39 = swift_allocObject();
    swift_weakInit();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = a1;
    *(v40 + 32) = a2;
    v41 = *(a3 + 16);
    *(v40 + 40) = *a3;
    *(v40 + 56) = v41;
    *(v40 + 72) = *(a3 + 32);
    *(v40 + 88) = *(a3 + 48);
    v42 = objc_allocWithZone(MSVTimer);
    *&v55 = sub_10033D0C8;
    *(&v55 + 1) = v40;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v54 = sub_100003D98;
    *(&v54 + 1) = &unk_1004CE7E8;
    v43 = _Block_copy(&aBlock);

    sub_10026D080(v58, v57);

    v44 = v50;
    v45 = [v42 initWithInterval:0 repeats:v50 queue:v43 block:120.0];
    _Block_release(v43);

    *&aBlock = sub_100300E4C();

    sub_1001EC6DC(v45, a1, a2);
    v46 = v4[5];
    v4[5] = aBlock;

    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10033BB34(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v104 = a4;
  v105 = a5;
  v107 = a1;
  v100 = *v5;
  v103 = type metadata accessor for Logger();
  v9 = *(v103 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v103);
  v99 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v93 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v6[7];
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v21 = v20;
  v22 = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if (v22)
  {
    v23 = sub_100300EE4();
    if (!v23[2])
    {
      goto LABEL_42;
    }

    v24 = sub_10028B074(a3);
    if ((v25 & 1) == 0)
    {
      goto LABEL_42;
    }

    v26 = (v23[7] + 16 * v24);
    v28 = *v26;
    v27 = v26[1];

    v29 = v28 == v107 && v27 == a2;
    v30 = v14;
    if (!v29)
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v32 = v103;
      if (v31)
      {
        goto LABEL_11;
      }

      __break(1u);
    }

    v32 = v103;
LABEL_11:
    v33 = sub_100028D40();
    v34 = v9 + 16;
    v95 = *(v9 + 16);
    v95(v30, v33, v32);
    v102 = v9;
    v36 = *a3;
    v35 = *(a3 + 8);
    v37 = *(a3 + 32);
    v109[0] = *(a3 + 16);
    v109[1] = v37;
    v110 = *(a3 + 48);

    sub_10026D080(v109, v108);

    v38 = v30;
    v39 = v105;

    v101 = v38;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    sub_100238E4C(v109);

    v42 = os_log_type_enabled(v40, v41);
    v106 = v6;
    v94 = v36;
    v97 = v34;
    v98 = v35;
    v96 = v33;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v108[0] = swift_slowAlloc();
      *v43 = 136315906;
      v44 = _typeName(_:qualified:)();
      v45 = v39;
      v47 = sub_10002C9C8(v44, v46, v108);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_10002C9C8(v36, v35, v108);
      *(v43 + 22) = 2080;
      *(v43 + 24) = sub_10002C9C8(v107, a2, v108);
      *(v43 + 32) = 2080;
      *(v43 + 34) = sub_10002C9C8(v104, v45, v108);
      _os_log_impl(&_mh_execute_header, v40, v41, "[%s] commitPrewarmedIdentifier<%s> - identifier: %s -> groupIdentifier: %s", v43, 0x2Au);
      swift_arrayDestroy();

      v48 = v101;
      v49 = *(v102 + 8);
      v50 = v103;
    }

    else
    {

      v48 = v101;
      v49 = *(v102 + 8);
      v50 = v32;
    }

    v101 = v49;
    v49(v48);
    v51 = sub_100015D10();
    v52 = v51;
    v53 = 0;
    v54 = v51 + 64;
    v55 = 1 << v51[32];
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v57 = v56 & *(v51 + 8);
    v58 = (v55 + 63) >> 6;
    v59 = v107;
    while (v57)
    {
LABEL_23:
      v62 = (v53 << 10) | (16 * __clz(__rbit64(v57)));
      v63 = (*(v52 + 6) + v62);
      v65 = *v63;
      v64 = v63[1];
      v66 = (*(v52 + 7) + v62);
      if (*v66 != v59 || v66[1] != a2)
      {
        v57 &= v57 - 1;
        v68 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v59 = v107;
        if ((v68 & 1) == 0)
        {
          continue;
        }
      }

      v69 = v105;
      v70 = v65 == v104 && v64 == v105;
      if (v70 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v60 = v106;
      }

      else
      {
        v75 = v99;
        v95(v99, v96, v50);
        v76 = v98;

        sub_10026D080(v109, v108);

        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.fault.getter();

        sub_100238E4C(v109);

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v96 = v77;
          v80 = v79;
          v97 = swift_slowAlloc();
          v108[0] = v97;
          *v80 = 136315906;
          v81 = _typeName(_:qualified:)();
          v83 = sub_10002C9C8(v81, v82, v108);
          LODWORD(v100) = v78;
          v84 = v83;

          *(v80 + 4) = v84;
          v85 = v75;
          *(v80 + 12) = 2080;
          *(v80 + 14) = sub_10002C9C8(v94, v76, v108);
          *(v80 + 22) = 2080;
          *(v80 + 24) = sub_10002C9C8(v107, a2, v108);
          *(v80 + 32) = 2080;

          v86 = sub_10002C9C8(v65, v64, v108);

          *(v80 + 34) = v86;
          v87 = v96;
          _os_log_impl(&_mh_execute_header, v96, v100, "[%s] commitPrewarmedIdentifier<%s> - identifier: %s already mapped to groupIdentifier: %s -> unmapping", v80, 0x2Au);
          swift_arrayDestroy();

          v88 = v103;
          v89 = v85;
        }

        else
        {

          v89 = v75;
          v88 = v50;
        }

        v101(v89, v88);
        v90 = v106;
        v108[0] = v106[2];

        v91 = v65;
        v60 = v90;
        sub_10033C714(v91, v64);

        v92 = v90[2];
        v90[2] = v108[0];
      }

LABEL_35:
      v71 = v60[2];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v108[0] = v71;
      sub_100035B14(v107, a2, v104, v69, isUniquelyReferenced_nonNull_native);

      v73 = v60[2];
      v60[2] = v108[0];
    }

    v60 = v106;
    while (1)
    {
      v61 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v61 >= v58)
      {

        v69 = v105;
        goto LABEL_35;
      }

      v57 = *&v54[8 * v61];
      ++v53;
      if (v57)
      {
        v53 = v61;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_42:

  __break(1u);
  return result;
}

uint64_t sub_10033C3CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  return swift_deallocClassInstance();
}

unint64_t sub_10033C42C()
{
  _StringGuts.grow(_:)(16);

  strcpy(&v21, "Identifiers:\n");
  HIWORD(v21._object) = -4864;
  v0 = sub_100015D10();
  sub_10033A964(v0);

  sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
  sub_10002C150();
  v1 = BidirectionalCollection<>.joined(separator:)();
  v3 = v2;

  v4._countAndFlagsBits = v1;
  v4._object = v3;
  String.append(_:)(v4);

  v5._countAndFlagsBits = 10;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  String.append(_:)(v21);

  _StringGuts.grow(_:)(23);

  v6 = sub_100339CD8();
  sub_10033AC54(v6);

  v7 = BidirectionalCollection<>.joined(separator:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 10;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xD000000000000014;
  v12._object = 0x80000001004408D0;
  String.append(_:)(v12);

  _StringGuts.grow(_:)(26);

  v13 = sub_100300EE4();
  sub_10033AEAC(v13);

  v14 = BidirectionalCollection<>.joined(separator:)();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 10;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0xD000000000000017;
  v19._object = 0x80000001004408F0;
  String.append(_:)(v19);

  return 0xD000000000000019;
}

uint64_t sub_10033C714(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_10000698C(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v16 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100035C9C();
    v10 = v16;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = (*(v10 + 56) + 16 * v7);
  v13 = *v12;
  v14 = v12[1];
  sub_10021A064(v7, v10);
  *v3 = v10;
  return v13;
}

uint64_t sub_10033C7C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_10000698C(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100228424();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_1001DEE44(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_10033C85C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10028B074(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v21 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10033CE24();
    v9 = v21;
  }

  v10 = *(v9 + 48) + 56 * v6;
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v10 + 24);
  v14 = *(v10 + 32);
  v15 = *(v10 + 40);
  v16 = *(v10 + 48);

  sub_1002485A4(v12, v13, v14, v15, v16);
  v17 = (*(v9 + 56) + 16 * v6);
  v18 = *v17;
  v19 = v17[1];
  sub_10028B42C(v6, v9);
  *v2 = v9;
  return v18;
}

uint64_t sub_10033C938(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_100526C58, &qword_1004588A8);
  v48 = a2;
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v5 + 16))
  {
    v9 = 0;
    v45 = v3;
    v46 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v7 + 64;
    v47 = v5;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v51 = (v12 - 1) & v12;
LABEL_17:
      v24 = v20 | (v9 << 6);
      v25 = *(v5 + 56);
      v26 = *(v5 + 48) + 56 * v24;
      v27 = *(v26 + 8);
      v28 = *(v26 + 16);
      v29 = *(v26 + 24);
      v30 = *(v26 + 32);
      v31 = *(v26 + 40);
      v32 = *(v26 + 48);
      v33 = (v25 + 16 * v24);
      v49 = *v33;
      v50 = *v26;
      v53 = v33[1];
      if ((v48 & 1) == 0)
      {

        sub_10026D0B8(v28, v29, v30, v31, v32);
      }

      v52 = v32;
      v34 = v28;
      v35 = v30;
      v36 = *(v8 + 40);
      sub_10028BE34();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v37 = -1 << *(v8 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v14 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        v16 = v29;
        v17 = v52;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v14 + 8 * v39);
          if (v43 != -1)
          {
            v15 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v38) & ~*(v14 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      v16 = v29;
      v17 = v52;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = *(v8 + 48) + 56 * v15;
      *v18 = v50;
      *(v18 + 8) = v27;
      *(v18 + 16) = v34;
      *(v18 + 24) = v16;
      *(v18 + 32) = v35;
      *(v18 + 40) = v31;
      *(v18 + 48) = v17;
      v19 = (*(v8 + 56) + 16 * v15);
      *v19 = v49;
      v19[1] = v53;
      ++*(v8 + 16);
      v5 = v47;
      v12 = v51;
    }

    v21 = v9;
    result = v46;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v13)
      {
        break;
      }

      v23 = v46[v9];
      ++v21;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v51 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_35;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v46, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v46 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10033CC78(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10028B074(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10033C938(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10028B074(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10033CE24();
      v11 = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v27 = *(a3 + 16);
    v37 = *a3;
    v26 = v37;
    v28 = *(a3 + 32);
    v35[0] = v27;
    v35[1] = v28;
    v36 = *(a3 + 48);
    v29 = v36;
    v22[(v11 >> 6) + 8] |= 1 << v11;
    v30 = v22[6] + 56 * v11;
    *(v30 + 48) = v29;
    *(v30 + 16) = v27;
    *(v30 + 32) = v28;
    *v30 = v26;
    v31 = (v22[7] + 16 * v11);
    *v31 = a1;
    v31[1] = a2;
    v32 = v22[2];
    v15 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (!v15)
    {
      v22[2] = v33;
      sub_10028BC98(&v37, v34);
      return sub_10026D080(v35, v34);
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * v11);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

void *sub_10033CE24()
{
  sub_1001BC5A8(&qword_100526C58, &qword_1004588A8);
  v29 = v0;
  v1 = *v0;
  v30 = static _DictionaryStorage.copy(original:)();
  v31 = v1;
  if (*(v1 + 16))
  {
    result = (v30 + 64);
    v3 = v1 + 64;
    v4 = ((1 << *(v30 + 32)) + 63) >> 6;
    if (v30 != v1 || result >= v1 + 64 + 8 * v4)
    {
      result = memmove(result, (v1 + 64), 8 * v4);
    }

    v6 = 0;
    *(v30 + 16) = *(v31 + 16);
    v7 = 1 << *(v31 + 32);
    v8 = *(v31 + 64);
    v9 = -1;
    if (v7 < 64)
    {
      v9 = ~(-1 << v7);
    }

    v10 = v9 & v8;
    v11 = (v7 + 63) >> 6;
    if ((v9 & v8) != 0)
    {
      do
      {
        v12 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_17:
        v15 = v12 | (v6 << 6);
        v16 = 56 * v15;
        v17 = *(v31 + 48) + 56 * v15;
        v18 = *(v17 + 8);
        v19 = *(v17 + 16);
        v20 = *(v17 + 24);
        v21 = *(v17 + 32);
        v22 = *(v17 + 40);
        v15 *= 16;
        v23 = (*(v31 + 56) + v15);
        v24 = *v23;
        v25 = v23[1];
        v26 = *(v30 + 48) + v16;
        v27 = *(v17 + 48);
        *v26 = *v17;
        *(v26 + 8) = v18;
        *(v26 + 16) = v19;
        *(v26 + 24) = v20;
        *(v26 + 32) = v21;
        *(v26 + 40) = v22;
        *(v26 + 48) = v27;
        v28 = (*(v30 + 56) + v15);
        *v28 = v24;
        v28[1] = v25;

        sub_10026D0B8(v19, v20, v21, v22, v27);
      }

      while (v10);
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_19;
      }

      v14 = *(v3 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v29 = v30;
  }

  return result;
}

uint64_t sub_10033CFF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingSourceSession(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033D05C(uint64_t a1)
{
  v2 = type metadata accessor for HostedRoutingSourceSession(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10033D0C8()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v9 = sub_100300E4C();

    v7 = *(v6 + 40);
    *(v6 + 40) = v9;

    v10 = sub_100300EE4();
    sub_10033C85C(v1 + 40);

    v8 = *(v6 + 48);
    *(v6 + 48) = v10;
  }

  return result;
}

uint64_t sub_10033D1BC(uint64_t a1)
{
  v2 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_10033D250()
{
  if (qword_100534AB0 != -1)
  {
    swift_once();
  }

  return &qword_100538578;
}

void sub_10033D2C4(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, void *a4)
{
  v6 = a2();
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    *a3 = v8;
    *a4 = v10;
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_10033D330()
{
  if (qword_100534AB8 != -1)
  {
    swift_once();
  }

  return &qword_100538588;
}

uint64_t sub_10033D380()
{
  v0 = String._bridgeToObjectiveC()();
  IsSystemMediaApplication = MRMediaRemoteApplicationIsSystemMediaApplication();

  return IsSystemMediaApplication;
}

uint64_t sub_10033D3B4()
{
  v0 = String._bridgeToObjectiveC()();
  IsSystemPodcastApplication = MRMediaRemoteApplicationIsSystemPodcastApplication();

  return IsSystemPodcastApplication;
}

uint64_t sub_10033D3E8(uint64_t a1)
{
  v2 = String._bridgeToObjectiveC()();
  IsSystemMediaApplication = MRMediaRemoteApplicationIsSystemMediaApplication();

  if (IsSystemMediaApplication)
  {
    if (qword_100534AB0 != -1)
    {
      swift_once();
    }

    v4 = &qword_100538578;
LABEL_9:
    swift_beginAccess();
    a1 = *v4;
    v7 = v4[1];
    goto LABEL_10;
  }

  v5 = String._bridgeToObjectiveC()();
  IsSystemPodcastApplication = MRMediaRemoteApplicationIsSystemPodcastApplication();

  if (IsSystemPodcastApplication)
  {
    if (qword_100534AB8 != -1)
    {
      swift_once();
    }

    v4 = &qword_100538588;
    goto LABEL_9;
  }

LABEL_10:

  return a1;
}

uint64_t sub_10033D520()
{
  v1 = *(*v0 + 96);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    v3 = *(*v0 + 80);
    swift_getFunctionTypeMetadata1();
    v2 = Array.init()();
    v4 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10033D5D8(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t sub_10033D5FC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  (*(*(*(*v3 + 80) - 8) + 56))(v3 + *(*v3 + 88), 1, 1);
  *(v3 + *(*v3 + 96)) = 0;
  return v3;
}

uint64_t sub_10033D6A8(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = *(v4 - 8);
  (*(v10 + 16))(&v23 - v8, a1, v4);
  (*(v10 + 56))(v9, 0, 1, v4);
  v11 = *(*v2 + 88);
  swift_beginAccess();
  (*(v6 + 40))(v2 + v11, v9, v5);
  swift_endAccess();
  v12 = sub_10033D520();
  swift_getFunctionTypeMetadata1();
  if (Array.endIndex.getter())
  {
    v13 = 0;
    v14 = (v12 + 40);
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      result = Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (!IsNativeType)
      {
        break;
      }

      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_8;
      }

      v19 = *(v14 - 1);
      v18 = *v14;

      v19(a1);

      ++v13;
      v14 += 2;
      if (v17 == Array.endIndex.getter())
      {
        goto LABEL_6;
      }
    }

    result = _ArrayBuffer._getElementSlowPath(_:)();
    __break(1u);
LABEL_8:
    __break(1u);
  }

  else
  {
LABEL_6:

    v20 = static Array._allocateUninitialized(_:)();
    v21 = *(*v2 + 96);
    v22 = *(v2 + v21);
    *(v2 + v21) = v20;
  }

  return result;
}

uint64_t sub_10033D938(void (*a1)(char *), uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v22 - v11;
  v13 = *(v6 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v16 = v22 - v15;
  v17 = *(v5 + 88);
  swift_beginAccess();
  (*(v8 + 16))(v12, v2 + v17, v7);
  if ((*(v13 + 48))(v12, 1, v6) == 1)
  {
    (*(v8 + 8))(v12, v7);
    v18 = swift_allocObject();
    v18[2] = v6;
    v18[3] = a1;
    v18[4] = a2;
    v22[1] = sub_10033DCE8;
    v22[2] = v18;

    v22[0] = sub_10033D520();
    swift_getFunctionTypeMetadata1();
    type metadata accessor for Array();
    Array.append(_:)();
    v19 = *(*v2 + 96);
    v20 = *(v2 + v19);
    *(v2 + v19) = v22[0];
  }

  else
  {
    (*(v13 + 32))(v16, v12, v6);
    a1(v16);
    return (*(v13 + 8))(v16, v6);
  }
}

uint64_t sub_10033DBF0()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(v0 + *(*v0 + 96));

  return v0;
}

uint64_t sub_10033DC90()
{
  sub_10033DBF0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10033DCE8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_10033DD10(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10033DDC4()
{
  type metadata accessor for MediaControlActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  static MediaControlActor.shared = v0;
  return result;
}

uint64_t sub_10033DE00()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t *MediaControlActor.shared.unsafeMutableAddressor()
{
  if (qword_100534B40 != -1)
  {
    swift_once();
  }

  return &static MediaControlActor.shared;
}

uint64_t static MediaControlActor.shared.getter()
{
  if (qword_100534B40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static MediaControlActor.shared.setter(uint64_t a1)
{
  if (qword_100534B40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static MediaControlActor.shared = a1;
}

uint64_t (*static MediaControlActor.shared.modify())()
{
  if (qword_100534B40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t MediaControlActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_10033E068()
{
  result = qword_100526CA0;
  if (!qword_100526CA0)
  {
    type metadata accessor for MediaControlActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100526CA0);
  }

  return result;
}

uint64_t sub_10033E0E0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MediaControlActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

uint64_t sub_10033E118@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001BC5A8(&qword_100526D60, &qword_1004589D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = OBJC_IVAR____TtC12mediaremoted15RouteNormalizer____lazy_storage___uuid;
  swift_beginAccess();
  sub_100038D18(v1 + v10, v9);
  v11 = sub_1001BC5A8(&qword_100526D48, &qword_1004589B8);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1000038A4(v9, &qword_100526D60, &qword_1004589D0);
  Regex<A>.init(_:)();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_10033E928(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_10033E340(uint64_t a1, uint64_t a2)
{
  result = sub_100015D10();
  v5 = result;
  v6 = 0;
  v7 = result + 64;
  v8 = 1 << *(result + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(result + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
LABEL_9:
    v13 = (v6 << 10) | (16 * __clz(__rbit64(v10)));
    v14 = (*(v5 + 48) + v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = (*(v5 + 56) + v13);
    if (*v17 != a1 || v17[1] != a2)
    {
      v10 &= v10 - 1;
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    return v16;
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return a1;
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10033E468()
{
  v1 = v0[2];

  sub_1000038A4(v0 + OBJC_IVAR____TtC12mediaremoted15RouteNormalizer____lazy_storage___mac, &qword_100526D60, &qword_1004589D0);
  sub_1000038A4(v0 + OBJC_IVAR____TtC12mediaremoted15RouteNormalizer____lazy_storage___uuid, &qword_100526D60, &qword_1004589D0);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10033E514()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = OBJC_IVAR____TtC12mediaremoted15RouteNormalizer____lazy_storage___mac;
  v5 = sub_1001BC5A8(&qword_100526D48, &qword_1004589B8);
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtC12mediaremoted15RouteNormalizer____lazy_storage___uuid, 1, 1, v5);
  return v3;
}

unint64_t sub_10033E5D8()
{
  result = sub_100015D10();
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (v8 << 10) | (16 * v9);
    v11 = (*(v1 + 48) + v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = (*(v1 + 56) + v10);
    v15 = *v14;
    v16 = v14[1];

    _StringGuts.grow(_:)(29);

    v17._countAndFlagsBits = v12;
    v17._object = v13;
    String.append(_:)(v17);

    v18._object = 0x8000000100440B90;
    v18._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v18);
    v19._countAndFlagsBits = v15;
    v19._object = v16;
    String.append(_:)(v19);

    v20._countAndFlagsBits = 10;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 0x203A656372756F73;
    v21._object = 0xE800000000000000;
    String.append(_:)(v21);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return 0xD000000000000012;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for RouteNormalizer()
{
  result = qword_100534C60;
  if (!qword_100534C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10033E828()
{
  sub_10033E8C4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10033E8C4()
{
  if (!qword_100526D90)
  {
    sub_1001C2EC8(&qword_100526D48, &qword_1004589B8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100526D90);
    }
  }
}

uint64_t sub_10033E928(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100526D60, &qword_1004589D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033E9A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v80 = *(result + 16);
  if (!v80)
  {
    return result;
  }

  v10 = a8;
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a2;
  v16 = 0;
  v79 = result + 32;
  while (1)
  {
    v83 = v16;
    v17 = v79 + 24 * v16;
    v19 = *v17;
    v18 = *(v17 + 8);
    v20 = *(v17 + 16);
    sub_10001DAE0(*v17, v18, v20);
    v21 = sub_10001D898(v19, v18, v20);
    v81 = v22;
    v82 = v23;
    if ((v23 >> 11) - 8 <= 2)
    {
      v77 = v19;
      v78 = v21;
      v24 = *(v21 + 16);
      v25 = *(v24 + 16);
      if (v25)
      {

        sub_10023CCB4(0, v25, 0);
        v26 = (v24 + 64);
        do
        {
          v27 = *(v26 - 2);
          v28 = *(v26 - 1);
          v29 = *v26;
          sub_10001DAE0(v27, v28, *v26);
          v31 = *(&_swiftEmptyArrayStorage + 2);
          v30 = *(&_swiftEmptyArrayStorage + 3);
          if (v31 >= v30 >> 1)
          {
            sub_10023CCB4((v30 > 1), v31 + 1, 1);
          }

          v26 += 20;
          *(&_swiftEmptyArrayStorage + 2) = v31 + 1;
          v32 = &_swiftEmptyArrayStorage + 3 * v31;
          v32[4] = v27;
          v32[5] = v28;
          *(v32 + 24) = v29;
          --v25;
        }

        while (v25);

        v10 = a8;
        v11 = a7;
        v12 = a6;
        v14 = a4;
        v13 = a5;
        v15 = a2;
      }

      sub_10033E9A8(&_swiftEmptyArrayStorage, v15, a3, v14, v13, v12, v11, v10, a9, a10);
      sub_100019550(v77, v18, v20);
      sub_1000196F4(v78, v81, v82);

      goto LABEL_4;
    }

    v33 = v21;
    v34 = sub_10001D898(v19, v18, v20);
    v37 = v34;
    v38 = v19;
    v39 = v35;
    v40 = v18;
    v41 = v36;
    if (((v20 >> 8) & 6 | (v20 >> 7) & 1) == 5)
    {
      break;
    }

    v45 = v36 >> 11;
    if (v45 <= 6)
    {
      if (v45 == 2)
      {
        sub_100019550(v38, v40, v20);
        sub_1000196F4(v37, v39, v41);
        result = swift_beginAccess();
        v64 = *(v13 + 16);
        v43 = __CFADD__(v64, 1);
        v65 = v64 + 1;
        if (v43)
        {
          goto LABEL_67;
        }

        *(v13 + 16) = v65;
        goto LABEL_15;
      }

      if (v45 != 6)
      {
        goto LABEL_49;
      }

      swift_beginAccess();
      v52 = *(a3 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + 16) = v52;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v52 = sub_10033F020(0, v52[2] + 1, 1, v52);
        *(a3 + 16) = v52;
      }

      v55 = v52[2];
      v54 = v52[3];
      if (v55 >= v54 >> 1)
      {
        v52 = sub_10033F020((v54 > 1), v55 + 1, 1, v52);
      }

      v52[2] = v55 + 1;
      v56 = &v52[2 * v55];
      v56[4] = v37;
      v56[5] = v39;
      *(a3 + 16) = v52;
      swift_endAccess();
      sub_100019550(v38, v40, v20);
      sub_1000196F4(v37, v39, v41);
      result = sub_1000196F4(v33, v81, v82);
      v14 = a4;
      v13 = a5;
LABEL_53:
      v15 = a2;
LABEL_16:
      v10 = a8;
      v11 = a7;
LABEL_17:
      v12 = a6;
      goto LABEL_4;
    }

    if (v45 == 7)
    {
      sub_100019550(v38, v40, v20);
      sub_1000196F4(v37, v39, v41);
      result = swift_beginAccess();
      v60 = *(v14 + 16);
      v43 = __CFADD__(v60, 1);
      v61 = v60 + 1;
      if (v43)
      {
        goto LABEL_66;
      }

      *(v14 + 16) = v61;
LABEL_15:
      result = sub_1000196F4(v33, v81, v82);
      goto LABEL_16;
    }

    if (v45 == 11)
    {
      sub_100019550(v38, v40, v20);
      sub_1000196F4(v37, v39, v41);
      result = swift_beginAccess();
      v62 = *(a9 + 16);
      v43 = __CFADD__(v62, 1);
      v63 = v62 + 1;
      if (v43)
      {
        goto LABEL_68;
      }

      *(a9 + 16) = v63;
      goto LABEL_15;
    }

    if (v45 != 17)
    {
      goto LABEL_49;
    }

    if (v36 != 34816 || v34 != 8 || v35 != 0)
    {
      if (v36 == 34816 && v34 == 9 && v35 == 0)
      {
        sub_100019550(v38, v40, v20);
        v11 = a7;
        result = swift_beginAccess();
        v68 = *(a7 + 16);
        v43 = __CFADD__(v68, 1);
        v69 = v68 + 1;
        if (v43)
        {
          goto LABEL_71;
        }

        *(a7 + 16) = v69;
        result = sub_1000196F4(v33, v81, v82);
        v10 = a8;
        goto LABEL_17;
      }

      if (v36 == 34816 && v34 == 6 && !v35)
      {
        sub_100019550(v38, v40, v20);
        result = swift_beginAccess();
        v50 = *(a8 + 16);
        v43 = __CFADD__(v50, 1);
        v51 = v50 + 1;
        if (v43)
        {
          goto LABEL_72;
        }

        *(a8 + 16) = v51;
        result = sub_1000196F4(v33, v81, v82);
        v10 = a8;
        v11 = a7;
        goto LABEL_17;
      }

LABEL_49:
      v57 = sub_100256C6C(v34, v35, v36);
      sub_100019550(v38, v40, v20);
      sub_1000196F4(v37, v39, v41);
      if (v57)
      {
        result = swift_beginAccess();
        v58 = *(a10 + 16);
        v43 = __CFADD__(v58, 1);
        v59 = v58 + 1;
        if (v43)
        {
          goto LABEL_69;
        }

        *(a10 + 16) = v59;
      }

      result = sub_1000196F4(v33, v81, v82);
      goto LABEL_53;
    }

    sub_100019550(v38, v40, v20);
    v12 = a6;
    result = swift_beginAccess();
    v66 = *(a6 + 16);
    v43 = __CFADD__(v66, 1);
    v67 = v66 + 1;
    if (v43)
    {
      goto LABEL_70;
    }

    *(a6 + 16) = v67;
    result = sub_1000196F4(v33, v81, v82);
    v10 = a8;
    v11 = a7;
LABEL_4:
    v16 = v83 + 1;
    if (v83 + 1 == v80)
    {
      return result;
    }
  }

  sub_100019550(v38, v40, v20);
  sub_1000196F4(v37, v39, v41);
  result = swift_beginAccess();
  v42 = *(v15 + 16);
  v43 = __CFADD__(v42, 1);
  v44 = v42 + 1;
  if (!v43)
  {
    *(v15 + 16) = v44;
    goto LABEL_15;
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

void *sub_10033F020(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001BC5A8(&qword_100526F18, &qword_100458A40);
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
    v10 = &_swiftEmptyArrayStorage;
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
    sub_1001BC5A8(&qword_1005214F0, &qword_10045BF40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_10033F154(uint64_t a1)
{
  v1 = swift_allocObject();
  *(v1 + 16) = _swiftEmptyArrayStorage;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v19 = v8;
  v20 = v8;
  v10 = v9;
  v22 = v3;
  v21 = v5;
  sub_10033E9A8(a1, v9, v1, v2, v3, v4, v5, v6, v7, v19);
  v11 = [objc_allocWithZone(MRGroupComposition) init];
  swift_beginAccess();
  v12 = *(*(v1 + 16) + 16);
  if (v12)
  {
    v13 = *(v1 + 16) + 40;
    v14 = v13;
    do
    {
      v17 = *v14;
      v14 += 2;
      if (v17)
      {
        v15 = *(v13 - 8);

        v16 = String._bridgeToObjectiveC()();
      }

      else
      {
        v16 = 0;
      }

      [v11 addHomePodWithModelIdentifier:v16];

      v13 = v14;
      --v12;
    }

    while (v12);
  }

  swift_beginAccess();
  [v11 setBuiltInCount:*(v10 + 16)];
  swift_beginAccess();
  [v11 setAtvCount:*(v2 + 16)];
  swift_beginAccess();
  [v11 setHeadphoneCount:*(v22 + 16)];
  swift_beginAccess();
  [v11 setSetTopCount:*(v4 + 16)];
  swift_beginAccess();
  [v11 setTvStickCount:*(v21 + 16)];
  swift_beginAccess();
  [v11 setTvCount:*(v6 + 16)];
  swift_beginAccess();
  [v11 setMacCount:*(v7 + 16)];
  swift_beginAccess();
  [v11 setHifiCount:*(v20 + 16)];

  return v11;
}

uint64_t sub_10033F54C(uint64_t a1, unsigned __int16 a2)
{
  v2 = a2 >> 11;
  switch(v2)
  {
    case 10:
      v21 = *(a1 + 16);
      v22 = *(v21 + 16);
      if (v22)
      {
        sub_10023CCB4(0, v22, 0);
        v23 = (v21 + 64);
        do
        {
          v24 = *(v23 - 2);
          v25 = *(v23 - 1);
          v26 = *v23;
          sub_10001DAE0(v24, v25, *v23);
          v28 = _swiftEmptyArrayStorage[2];
          v27 = _swiftEmptyArrayStorage[3];
          if (v28 >= v27 >> 1)
          {
            sub_10023CCB4((v27 > 1), v28 + 1, 1);
          }

          v23 += 20;
          _swiftEmptyArrayStorage[2] = v28 + 1;
          v29 = &_swiftEmptyArrayStorage[3 * v28];
          v29[4] = v24;
          v29[5] = v25;
          *(v29 + 24) = v26;
          --v22;
        }

        while (v22);
      }

      v30 = sub_10033F154(_swiftEmptyArrayStorage);

      return v30;
    case 9:
      v3 = *(a1 + 16);
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = v3 + 64;
        v7 = _swiftEmptyArrayStorage;
        v61 = *(a1 + 16);
        v57 = v3 + 64;
        do
        {
          v59 = v7;
          v8 = (v6 + 40 * v5);
          v9 = v5;
          while (1)
          {
            if (v9 >= *(v3 + 16))
            {
              __break(1u);
              goto LABEL_50;
            }

            v10 = *(v8 - 2);
            v11 = *(v8 - 1);
            v63 = *(v8 - 4);
            v65 = *(v8 - 3);
            v12 = *v8;

            sub_10001DAE0(v10, v11, v12);
            v13 = sub_10025692C();
            v15 = v14;
            v17 = v16;

            sub_100019550(v10, v11, v12);
            if ((v17 & 0xF800) == 0x3000)
            {
              if (v15)
              {
                break;
              }
            }

            v3 = v61;
            ++v9;
            sub_1000196F4(v13, v15, v17);
            v8 += 20;
            if (v4 == v9)
            {
              v7 = v59;
              goto LABEL_37;
            }
          }

          v7 = v59;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_10002AFD0(0, *(v59 + 2) + 1, 1, v59);
          }

          v19 = *(v7 + 2);
          v18 = *(v7 + 3);
          if (v19 >= v18 >> 1)
          {
            v7 = sub_10002AFD0((v18 > 1), v19 + 1, 1, v7);
          }

          v5 = v9 + 1;
          *(v7 + 2) = v19 + 1;
          v20 = &v7[16 * v19];
          *(v20 + 4) = v13;
          *(v20 + 5) = v15;
          v6 = v57;
          v3 = v61;
        }

        while (v4 - 1 != v9);
LABEL_37:
        if (!*(v7 + 2))
        {
          goto LABEL_43;
        }
      }

      else
      {
        v7 = _swiftEmptyArrayStorage;
        if (!_swiftEmptyArrayStorage[2])
        {
LABEL_43:

          v52 = 0;
          goto LABEL_44;
        }
      }

      v50 = *(v7 + 4);
      v51 = *(v7 + 5);

      v52 = String._bridgeToObjectiveC()();

LABEL_44:
      v55 = [objc_opt_self() homePodHomeTheaterCompositionWithHomePodModelIdentifier:v52];
LABEL_48:
      v56 = v55;

      return v56;
    case 8:
      v32 = *(a1 + 16);
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = 0;
        v35 = v32 + 64;
        v36 = _swiftEmptyArrayStorage;
        v62 = *(a1 + 16);
        v58 = v32 + 64;
        do
        {
          v60 = v36;
          v37 = (v35 + 40 * v34);
          v38 = v34;
          while (1)
          {
            if (v38 >= *(v32 + 16))
            {
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            v39 = *(v37 - 2);
            v40 = *(v37 - 1);
            v64 = *(v37 - 4);
            v66 = *(v37 - 3);
            v41 = *v37;

            sub_10001DAE0(v39, v40, v41);
            v42 = sub_10025692C();
            v44 = v43;
            v46 = v45;

            sub_100019550(v39, v40, v41);
            if ((v46 & 0xF800) == 0x3000)
            {
              if (v44)
              {
                break;
              }
            }

            ++v38;
            sub_1000196F4(v42, v44, v46);
            v37 += 20;
            v32 = v62;
            if (v33 == v38)
            {
              v36 = v60;
              goto LABEL_40;
            }
          }

          v36 = v60;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_10002AFD0(0, *(v60 + 2) + 1, 1, v60);
          }

          v48 = *(v36 + 2);
          v47 = *(v36 + 3);
          if (v48 >= v47 >> 1)
          {
            v36 = sub_10002AFD0((v47 > 1), v48 + 1, 1, v36);
          }

          v34 = v38 + 1;
          *(v36 + 2) = v48 + 1;
          v49 = &v36[16 * v48];
          *(v49 + 4) = v42;
          *(v49 + 5) = v44;
          v35 = v58;
          v32 = v62;
        }

        while (v33 - 1 != v38);
LABEL_40:
        if (!*(v36 + 2))
        {
          goto LABEL_46;
        }
      }

      else
      {
        v36 = _swiftEmptyArrayStorage;
        if (!_swiftEmptyArrayStorage[2])
        {
LABEL_46:

          v52 = 0;
          goto LABEL_47;
        }
      }

      v53 = *(v36 + 4);
      v54 = *(v36 + 5);

      v52 = String._bridgeToObjectiveC()();

LABEL_47:
      v55 = [objc_opt_self() homePodStereoPairCompositionWithModelIdentifier:v52];
      goto LABEL_48;
    default:
LABEL_51:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_10033FA8C()
{
  type metadata accessor for SystemState();
  v0 = swift_allocObject();
  v1 = [objc_opt_self() server];
  v2 = [v1 groupSessionServer];

  if (v2 && (v3 = [v2 sessionManager], v2, v3) && (v4 = objc_msgSend(v3, "session"), v3, v4))
  {
    *(v0 + 16) = [v4 isHosted];
    if ([v4 isHosted])
    {
      v5 = [v4 remoteParticipants];
      sub_1001BC5A8(&unk_100522CB0, &unk_10044EC00);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v6 >> 62)
      {
        v7 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      swift_unknownObjectRelease();
      v8 = v7 != 0;
    }

    else
    {
      swift_unknownObjectRelease();
      v8 = 0;
    }

    *(v0 + 17) = v8;
  }

  else
  {
    *(v0 + 16) = 0;
  }

  return v0;
}

MRDMediaControlIPCServer __swiftcall MRDMediaControlIPCServer.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_10033FEE0()
{
  v0 = *sub_100021264();
  type metadata accessor for RoutingSessionServer();
  v1 = v0;
  OS_dispatch_queue.asyncAndWait<A>(execute:)();

  return v3;
}

uint64_t sub_10033FF5C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v0 + 24))
  {
    v6 = *(v0 + 24);
LABEL_5:

    return v6;
  }

  v7 = sub_100021264();
  v8 = *v7;
  *v5 = *v7;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if (v8)
  {
    *(v0 + 16) = 1;
    type metadata accessor for RoutingSessionServer();
    v11 = v0;
    v6 = sub_10030113C();
    v12 = *(v0 + 24);
    *(v11 + 24) = v6;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003400E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000100440F90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100440FB0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1003401D0(uint64_t a1)
{
  v2 = sub_10034A5BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10034020C(uint64_t a1)
{
  v2 = sub_10034A5BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100340248(uint64_t a1)
{
  v2 = sub_10034A610();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100340284(uint64_t a1)
{
  v2 = sub_10034A610();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003402C0(uint64_t a1)
{
  v2 = sub_10034A664();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003402FC(uint64_t a1)
{
  v2 = sub_10034A664();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100340338(void *a1, int a2)
{
  v22 = a2;
  v3 = sub_1001BC5A8(&qword_100526FD0, &qword_100458A70);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  v19 = sub_1001BC5A8(&qword_100526FD8, &qword_100458A78);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v19);
  v10 = &v19 - v9;
  v11 = sub_1001BC5A8(&qword_100526FE0, &qword_100458A80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  sub_1000326D8(a1, a1[3]);
  sub_10034A5BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_10034A610();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_10034A664();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

uint64_t sub_1003405F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10034A6B8(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_100340640()
{
  v1 = 0x6D72657465646E69;
  if (*v0 != 1)
  {
    v1 = 0x657669746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65646E6570737573;
  }
}

uint64_t sub_1003406DC(int a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_10034071C()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t sub_100340754(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t sub_1003407EC(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100038EF0();
  (*(v5 + 16))(v8, v9, v4);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    v28 = v13;
    *v12 = 136315650;
    v15 = (*(*v1 + 320))(v13, v14);
    v17 = sub_10002C9C8(v15, v16, &v28);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    if (a1)
    {
      if (a1 == 1)
      {
        v18 = 0x6D72657465646E69;
      }

      else
      {
        v18 = 0x657669746361;
      }

      if (a1 == 1)
      {
        v19 = 0xED00006574616E69;
      }

      else
      {
        v19 = 0xE600000000000000;
      }
    }

    else
    {
      v18 = 0x65646E6570737573;
      v19 = 0xE900000000000064;
    }

    v20 = sub_10002C9C8(v18, v19, &v28);

    *(v12 + 14) = v20;
    *(v12 + 22) = 2080;
    v21 = 0x6D72657465646E69;
    v22 = 0xED00006574616E69;
    if (*(v2 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState) != 1)
    {
      v21 = 0x657669746361;
      v22 = 0xE600000000000000;
    }

    if (*(v2 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState))
    {
      v23 = v21;
    }

    else
    {
      v23 = 0x65646E6570737573;
    }

    if (*(v2 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState))
    {
      v24 = v22;
    }

    else
    {
      v24 = 0xE900000000000064;
    }

    v25 = sub_10002C9C8(v23, v24, &v28);

    *(v12 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%s] setConnectionState - %s -> %s", v12, 0x20u);
    swift_arrayDestroy();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100340B18(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  sub_100340B80(a1, a2, a3, a4);
  return v11;
}

uint64_t sub_100340B80(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v4 + 40) = 0;
  *(v4 + 48) = static String.nanoIDFourChar()();
  *(v4 + 56) = v9;
  v10 = OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_deferredSnapshot;
  v11 = type metadata accessor for RoutingSessionSnapshot();
  (*(*(v11 - 8) + 56))(v4 + v10, 1, 1, v11);
  *(v4 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_deferredPendingItemIdentifiers) = 0;
  *(v4 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_oneWayMessageCount) = 0;
  *(v4 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState) = 2;
  swift_beginAccess();
  v12 = *(v4 + 40);
  *(v4 + 40) = a1;

  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  return v4;
}

uint64_t sub_100340C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001BC5A8(&qword_100526FE8, &qword_100458A88);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100021264();
  v15 = *v14;
  *v13 = *v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v15)
  {
    *&v2[OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_oneWayMessageCount] = 0;
    if (qword_100534C70 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  swift_beginAccess();

  sub_100346BF0(a1, v2, v8);

  v17 = type metadata accessor for ReplyMessage();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v8, 1, v17) == 1)
  {
    result = sub_1000038A4(v8, &qword_100526FE8, &qword_100458A88);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  else
  {
    *(a2 + 24) = v17;
    *(a2 + 32) = sub_10003B370(&unk_100526FF0, &type metadata accessor for ReplyMessage);
    v20 = sub_1000397B4(a2);
    return (*(v18 + 32))(v20, v8, v17);
  }

  return result;
}

uint64_t sub_100340F44()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100021264();
  v7 = *v6;
  *v5 = *v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_100534C70 != -1)
  {
LABEL_5:
    swift_once();
  }

  swift_beginAccess();

  sub_100346684(v0);

  return (*(*v0 + 200))(0);
}

uint64_t sub_1003410F0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return String.hash(into:)();
}

uint64_t sub_1003410F8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001BC5A8(&qword_100525F78, &qword_100458A90);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for IPCClientMessage();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState;
  if (*(v2 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState) == 2)
  {
    sub_10001D9AC(a1, v12, &qword_100525F78, &qword_100458A90);
    RoutingSessionUpdateMessage.init(snapshot:)();
    (*(v14 + 104))(v17, enum case for IPCClientMessage.updateRoutingSnapshot(_:), v13);
    sub_1000226A0(v17);
    return (*(v14 + 8))(v17, v13);
  }

  else
  {
    v20 = sub_100038EF0();
    (*(v5 + 16))(v8, v20, v4);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v36 = a1;
      v23 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37[0] = v35;
      *v23 = 136315394;
      v24 = (*(*v2 + 320))();
      v26 = sub_10002C9C8(v24, v25, v37);

      v27 = *(v2 + v18);
      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v28 = 0xED00006574616E69;
      v29 = 0x6D72657465646E69;
      if (v27 != 1)
      {
        v29 = 0x657669746361;
        v28 = 0xE600000000000000;
      }

      if (v27)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0x65646E6570737573;
      }

      if (v27)
      {
        v31 = v28;
      }

      else
      {
        v31 = 0xE900000000000064;
      }

      v32 = sub_10002C9C8(v30, v31, v37);

      *(v23 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%s] updateSnapshot - deferring snapshot for connection state: %s", v23, 0x16u);
      swift_arrayDestroy();

      (*(v5 + 8))(v8, v4);
      a1 = v36;
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v33 = OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_deferredSnapshot;
    swift_beginAccess();
    sub_10034AAF4(a1, v2 + v33);
    return swift_endAccess();
  }
}

uint64_t sub_100341548()
{
  v0 = type metadata accessor for IPCClientMessage();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  PendingItemIdentifiersUpdateMessage.init(pendingItems:)();
  (*(v1 + 104))(v4, enum case for IPCClientMessage.updatePendingItems(_:), v0);
  sub_1000226A0(v4);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100341688()
{
  v1 = v0;
  v2 = type metadata accessor for IPCClientMessage();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState;
  if (*(v0 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState) != 2)
  {
    v13 = sub_100038EF0();
    (*(v8 + 16))(v11, v13, v7);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v30 = v15;
      v31 = v14;
      v32 = v7;
      v16 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33 = v29;
      *v16 = 136315394;
      v17 = (*(*v1 + 320))();
      v19 = sub_10002C9C8(v17, v18, &v33);

      v20 = *(v1 + v12);
      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      v21 = 0xED00006574616E69;
      v22 = 0x6D72657465646E69;
      if (v20 != 1)
      {
        v22 = 0x657669746361;
        v21 = 0xE600000000000000;
      }

      if (v20)
      {
        v23 = v22;
      }

      else
      {
        v23 = 0x65646E6570737573;
      }

      if (v20)
      {
        v24 = v21;
      }

      else
      {
        v24 = 0xE900000000000064;
      }

      v25 = sub_10002C9C8(v23, v24, &v33);

      *(v16 + 14) = v25;
      v26 = v31;
      _os_log_impl(&_mh_execute_header, v31, v30, "[%s] presentShareAudio - connection is in state: %s, expected .active", v16, 0x16u);
      swift_arrayDestroy();

      (*(v8 + 8))(v11, v32);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }
  }

  PresentShareAudioMessage.init()();
  (*(v3 + 104))(v6, enum case for IPCClientMessage.presentShareAudio(_:), v2);
  sub_1000226A0(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100341A6C(uint64_t a1, uint64_t (*a2)(void), const char *a3, void (*a4)(char *), unsigned int *a5)
{
  v49 = a4;
  v50 = a5;
  v46 = a3;
  v6 = v5;
  v8 = a2(0);
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  __chkstk_darwin(v8);
  v11 = &v40 - v10;
  v12 = type metadata accessor for IPCClientMessage();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState;
  if (*(v6 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState) != 2)
  {
    v44 = v12;
    v45 = a1;
    v24 = v20;
    v25 = sub_100038EF0();
    (*(v18 + 16))(v22, v25, v24);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    v43 = v27;
    if (os_log_type_enabled(v26, v27))
    {
      v40 = v18;
      v41 = v26;
      v42 = v24;
      v28 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v28 = 136315394;
      v29 = (*(*v6 + 320))();
      v31 = sub_10002C9C8(v29, v30, &v51);

      v32 = *(v6 + v23);
      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      v33 = 0xED00006574616E69;
      v34 = 0x6D72657465646E69;
      if (v32 != 1)
      {
        v34 = 0x657669746361;
        v33 = 0xE600000000000000;
      }

      if (v32)
      {
        v35 = v34;
      }

      else
      {
        v35 = 0x65646E6570737573;
      }

      if (v32)
      {
        v36 = v33;
      }

      else
      {
        v36 = 0xE900000000000064;
      }

      v37 = sub_10002C9C8(v35, v36, &v51);

      *(v28 + 14) = v37;
      v38 = v41;
      _os_log_impl(&_mh_execute_header, v41, v43, v46, v28, 0x16u);
      swift_arrayDestroy();

      (*(v40 + 8))(v22, v42);
    }

    else
    {

      (*(v18 + 8))(v22, v24);
    }

    v12 = v44;
    a1 = v45;
  }

  (*(v47 + 16))(v11, a1, v48);
  v49(v11);
  (*(v13 + 104))(v16, *v50, v12);
  sub_1000226A0(v16);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_100341EC0()
{
  v0 = type metadata accessor for IPCClientMessage();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for IPCClientMessage.requestDismissal(_:), v0);
  sub_1000226A0(v4);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100341FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a1;
  v51 = a2;
  v5 = type metadata accessor for IPCClientMessage();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001BC5A8(&unk_100524EC0, &qword_100457040);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v49 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v41 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState;
  if (*(v3 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState) != 2)
  {
    v47 = v9;
    v48 = v6;
    v22 = sub_100038EF0();
    (*(v17 + 16))(v20, v22, v16);

    v23 = v3;
    v24 = Logger.logObject.getter();
    v25 = v20;
    v26 = static os_log_type_t.info.getter();

    v46 = v26;
    if (os_log_type_enabled(v24, v26))
    {
      v41 = v24;
      v42 = v17;
      v43 = v16;
      v44 = a3;
      v45 = v5;
      v27 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v27 = 136315394;
      v28 = (*(*v23 + 320))();
      v30 = sub_10002C9C8(v28, v29, &v52);

      v31 = *(v23 + v21);
      *(v27 + 4) = v30;
      *(v27 + 12) = 2080;
      v32 = 0xED00006574616E69;
      v33 = 0x6D72657465646E69;
      if (v31 != 1)
      {
        v33 = 0x657669746361;
        v32 = 0xE600000000000000;
      }

      if (v31)
      {
        v34 = v33;
      }

      else
      {
        v34 = 0x65646E6570737573;
      }

      if (v31)
      {
        v35 = v32;
      }

      else
      {
        v35 = 0xE900000000000064;
      }

      v36 = sub_10002C9C8(v34, v35, &v52);

      *(v27 + 14) = v36;
      v37 = v41;
      _os_log_impl(&_mh_execute_header, v41, v46, "[%s] interactionWithItemCompleted - connection is in state: %s, expected .active", v27, 0x16u);
      swift_arrayDestroy();

      (*(v42 + 8))(v25, v43);
      a3 = v44;
      v5 = v45;
    }

    else
    {

      (*(v17 + 8))(v25, v16);
    }

    v9 = v47;
    v6 = v48;
  }

  if (a3)
  {
    static InternalRoutingError.wrapping(error:)();
    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = type metadata accessor for InternalRoutingError();
  (*(*(v39 - 8) + 56))(v15, v38, 1, v39);
  sub_10001D9AC(v15, v49, &unk_100524EC0, &qword_100457040);

  InteractWithItemResultMessage.init(itemIdentifier:error:)();
  (*(v6 + 104))(v9, enum case for IPCClientMessage.interactWithItemResult(_:), v5);
  sub_1000226A0(v9);
  (*(v6 + 8))(v9, v5);
  return sub_1000038A4(v15, &unk_100524EC0, &qword_100457040);
}

uint64_t sub_1003424A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v56 = a1;
  v5 = type metadata accessor for RoutingControl();
  v54 = *(v5 - 8);
  v6 = *(v54 + 64);
  __chkstk_darwin(v5);
  v55 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for IPCClientMessage();
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v57);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001BC5A8(&unk_100524EC0, &qword_100457040);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v53 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v45 - v16;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState;
  if (*(v3 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState) != 2)
  {
    v51 = v8;
    v52 = a2;
    v25 = v21;
    v26 = sub_100038EF0();
    (*(v19 + 16))(v23, v26, v25);

    v27 = Logger.logObject.getter();
    v28 = v19;
    v29 = static os_log_type_t.info.getter();

    v50 = v29;
    if (os_log_type_enabled(v27, v29))
    {
      v46 = v27;
      v47 = v25;
      v48 = v5;
      v30 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v30 = 136315394;
      v31 = (*(*v3 + 320))();
      v33 = sub_10002C9C8(v31, v32, &v58);

      v49 = v3;
      v34 = *(v3 + v24);
      *(v30 + 4) = v33;
      *(v30 + 12) = 2080;
      v35 = 0xED00006574616E69;
      v36 = 0x6D72657465646E69;
      if (v34 != 1)
      {
        v36 = 0x657669746361;
        v35 = 0xE600000000000000;
      }

      if (v34)
      {
        v37 = v36;
      }

      else
      {
        v37 = 0x65646E6570737573;
      }

      if (v34)
      {
        v38 = v35;
      }

      else
      {
        v38 = 0xE900000000000064;
      }

      v39 = sub_10002C9C8(v37, v38, &v58);

      *(v30 + 14) = v39;
      v40 = v46;
      _os_log_impl(&_mh_execute_header, v46, v50, "[%s] interactionWithControlCompleted - connection is in state: %s, expected .active", v30, 0x16u);
      swift_arrayDestroy();

      (*(v28 + 8))(v23, v47);
      v5 = v48;
    }

    else
    {

      (*(v28 + 8))(v23, v25);
    }

    v8 = v51;
    a2 = v52;
  }

  if (a2)
  {
    static InternalRoutingError.wrapping(error:)();
    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = type metadata accessor for InternalRoutingError();
  (*(*(v42 - 8) + 56))(v17, v41, 1, v42);
  (*(v54 + 16))(v55, v56, v5);
  sub_10001D9AC(v17, v53, &unk_100524EC0, &qword_100457040);
  InteractWithControlResultMessage.init(control:error:)();
  v43 = v57;
  (*(v8 + 104))(v11, enum case for IPCClientMessage.interactWithControlResult(_:), v57);
  sub_1000226A0(v11);
  (*(v8 + 8))(v11, v43);
  return sub_1000038A4(v17, &unk_100524EC0, &qword_100457040);
}

uint64_t sub_100342A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v4 = type metadata accessor for IPCClientMessage();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState;
  if (*(v3 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState) == 2)
  {

    SessionTransitionMessage.init(sourceIdentifier:destinationIdentifier:)();
    (*(v5 + 104))(v8, enum case for IPCClientMessage.sessionTransition(_:), v4);
    sub_1000226A0(v8);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v16 = v11;
    v17 = sub_100038EF0();
    (*(v16 + 16))(v13, v17, v9);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v30 = v16;
      v20 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v20 = 136315394;
      v21 = (*(*v3 + 320))();
      v23 = sub_10002C9C8(v21, v22, &v31);

      v24 = *(v3 + v14);
      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      v25 = 0xED00006574616E69;
      v26 = 0x6D72657465646E69;
      if (v24 != 1)
      {
        v26 = 0x657669746361;
        v25 = 0xE600000000000000;
      }

      if (v24)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0x65646E6570737573;
      }

      if (v24)
      {
        v28 = v25;
      }

      else
      {
        v28 = 0xE900000000000064;
      }

      v29 = sub_10002C9C8(v27, v28, &v31);

      *(v20 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%s] willTransitionFromSourceToDestination - connection is in state: %s, dropping", v20, 0x16u);
      swift_arrayDestroy();

      return (*(v30 + 8))(v13, v9);
    }

    else
    {

      return (*(v16 + 8))(v13, v9);
    }
  }
}

void sub_100342DF8()
{
  v1 = v0;
  v2 = type metadata accessor for IPCClientMessage();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001BC5A8(&qword_1005273C0, &unk_100459098);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v49 = &v42 - v10;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (*(*v0 + 192))(v14);
  if (v17)
  {
    v46 = v8;
    v47 = v7;
    v48 = v17;
    v18 = *(v0 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState);
    *(v0 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState) = 1;
    sub_1003407EC(v18);
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_10034B114;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001BFCB0;
    aBlock[3] = &unk_1004CEC30;
    v21 = v16;
    v22 = _Block_copy(aBlock);

    v44 = [v20 initWithTimeout:v22 interruptionHandler:2.0];
    _Block_release(v22);

    v23 = sub_100038EF0();
    v45 = v12;
    (*(v12 + 16))(v21, v23, v11);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v43 = v21;
      v27 = v26;
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136315138;
      v29 = (*(*v1 + 320))();
      v31 = sub_10002C9C8(v29, v30, aBlock);
      v42 = v11;
      v32 = v3;
      v33 = v6;
      v34 = v2;
      v35 = v31;

      *(v27 + 4) = v35;
      v2 = v34;
      v6 = v33;
      v3 = v32;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%s] inspectConnection - pinging client", v27, 0xCu);
      sub_100026A44(v28);

      (*(v45 + 8))(v43, v42);
    }

    else
    {

      (*(v45 + 8))(v21, v11);
    }

    (*(v3 + 104))(v6, enum case for IPCClientMessage.ping(_:), v2);
    sub_10003B370(&qword_1005273C8, &type metadata accessor for IPCClientMessage);
    sub_10003B370(&qword_1005273D0, &type metadata accessor for IPCClientMessage);
    v36 = v49;
    IPCMessage.init(message:)();
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = swift_allocObject();
    v39 = v44;
    *(v38 + 16) = v37;
    *(v38 + 24) = v39;
    sub_10000462C(&unk_1005273D8, &qword_1005273C0, &unk_100459098);

    v40 = v39;
    v41 = v47;
    dispatch thunk of XPCSession.send<A>(_:replyHandler:)();
    (*(v46 + 8))(v36, v41);
  }
}

uint64_t sub_10034353C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = v8;
    v19 = v7;
    v20 = v3;
    if (a1)
    {
      __break(1u);
    }

    else
    {
      v13 = result;
      v14 = *sub_100021264();
      aBlock[4] = sub_10034B124;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100003D98;
      aBlock[3] = &unk_1004CEC80;
      v15 = _Block_copy(aBlock);
      v16 = v14;

      static DispatchQoS.unspecified.getter();
      v21 = _swiftEmptyArrayStorage;
      sub_10003B370(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v15);

      (*(v20 + 8))(v6, v2);
      (*(v18 + 8))(v11, v19);
    }
  }

  return result;
}

uint64_t sub_100343844(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v5);
  v10 = &v31 - v9;
  v11 = OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState;
  v12 = *(a1 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState);
  if (v12 == 1)
  {
    v21 = sub_100038EF0();
    (*(v3 + 16))(v10, v21, v2);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136315138;
      v26 = (*(*a1 + 320))();
      v28 = sub_10002C9C8(v26, v27, &v32);
      v31 = v2;
      v29 = v28;

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%s] inspectConnection - timed out waiting for reply ping", v24, 0xCu);
      sub_100026A44(v25);

      (*(v3 + 8))(v10, v31);
    }

    else
    {

      (*(v3 + 8))(v10, v2);
    }

    v30 = *(a1 + v11);
    *(a1 + v11) = 0;
    return sub_1003407EC(v30);
  }

  else if (v12 == 2)
  {
    v13 = sub_100038EF0();
    (*(v3 + 16))(v7, v13, v2);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32 = v17;
      *v16 = 136315138;
      v18 = (*(*a1 + 320))();
      v20 = sub_10002C9C8(v18, v19, &v32);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%s] inspectConnection - connection resumed before timeout check on mediaControl queue", v16, 0xCu);
      sub_100026A44(v17);
    }

    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100343C00(uint64_t a1, uint64_t a2, void *a3)
{
  v114 = a3;
  v115 = a1;
  v3 = type metadata accessor for XPCRichError();
  v107 = *(v3 - 8);
  v108 = v3;
  v4 = *(v107 + 64);
  __chkstk_darwin(v3);
  v6 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Logger();
  v105 = *(v102 - 8);
  v7 = *(v105 + 64);
  v8 = __chkstk_darwin(v102);
  v100 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v99 = &v99 - v10;
  v11 = type metadata accessor for IPCServerMessage();
  v103 = *(v11 - 8);
  v104 = v11;
  v12 = *(v103 + 64);
  v13 = __chkstk_darwin(v11);
  v101 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v99 - v15;
  v17 = sub_1001BC5A8(&qword_1005273E8, &qword_1004590A8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v99 - v19;
  v21 = sub_1001BC5A8(&qword_1005273F0, &qword_1004590B0);
  v22 = *(v21 - 8);
  v110 = v21;
  v111 = v22;
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v106 = &v99 - v24;
  v113 = type metadata accessor for XPCReceivedMessage();
  v109 = *(v113 - 8);
  v25 = *(v109 + 64);
  __chkstk_darwin(v113);
  v112 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1001BC5A8(&qword_1005273F8, &unk_1004590B8);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = &v99 - v29;
  v31 = type metadata accessor for DispatchPredicate();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = (&v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = sub_100021264();
  v37 = *v36;
  *v35 = *v36;
  (*(v32 + 104))(v35, enum case for DispatchPredicate.onQueue(_:), v31);
  v38 = v37;
  LOBYTE(v37) = _dispatchPreconditionTest(_:)();
  result = (*(v32 + 8))(v35, v31);
  if ((v37 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v40 = result;
    v41 = (*(*result + 192))();
    if (!v41)
    {
    }

    v42 = v41;
    [v114 disarm];
    sub_10001D9AC(v115, v30, &qword_1005273F8, &unk_1004590B8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v44 = v107;
      v43 = v108;
      (*(v107 + 32))(v6, v30, v108);
      v116 = 0;
      v117 = 0xE000000000000000;
      _StringGuts.grow(_:)(63);
      v45._countAndFlagsBits = 91;
      v45._object = 0xE100000000000000;
      String.append(_:)(v45);
      v46._countAndFlagsBits = (*(*v40 + 320))();
      String.append(_:)(v46);

      v47._object = 0x8000000100440FD0;
      v47._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v47);
      _print_unlocked<A, B>(_:_:)();
      v48._object = 0x8000000100440FF0;
      v48._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v48);
      dispatch thunk of XPCSession.cancel(reason:)();

      return (*(v44 + 8))(v6, v43);
    }

    v115 = v42;
    v49 = v109;
    (*(v109 + 32))(v112, v30, v113);
    sub_10000462C(&qword_100527400, &qword_1005273F0, &qword_1004590B0);
    v50 = v110;
    XPCReceivedMessage.decode<A>(as:)();
    v51 = v111;
    (*(v111 + 56))(v20, 0, 1, v50);
    v52 = v106;
    (*(v51 + 32))(v106, v20, v50);
    IPCMessage.message.getter();
    v53 = v103;
    v54 = v104;
    v55 = (*(v103 + 88))(v16, v104);
    v56 = enum case for IPCServerMessage.ping(_:);
    v57 = v16;
    v58 = v54;
    v114 = *(v53 + 8);
    (v114)(v57, v54);
    if (v55 == v56)
    {
      v59 = *(v40 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState);
      v60 = sub_100038EF0();
      v61 = *(v105 + 16);
      if (v59 <= 1)
      {
        v62 = v99;
        v63 = v102;
        v61(v99, v60, v102);

        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.default.getter();

        v66 = os_log_type_enabled(v64, v65);
        v67 = v113;
        if (v66)
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v116 = v69;
          *v68 = 136315138;
          v70 = *(*v40 + 320);

          v72 = v70(v71);
          v73 = v112;
          v74 = v72;
          v76 = v75;

          v77 = sub_10002C9C8(v74, v76, &v116);
          v50 = v110;

          *(v68 + 4) = v77;
          v78 = v65;
          v79 = v73;
          _os_log_impl(&_mh_execute_header, v64, v78, "[%s] inspectConnection - resuming connection", v68, 0xCu);
          sub_100026A44(v69);
          v67 = v113;
          v52 = v106;

          v49 = v109;

          (*(v105 + 8))(v62, v63);
          v80 = v111;
        }

        else
        {

          (*(v105 + 8))(v62, v63);
          v80 = v111;
          v79 = v112;
        }

        sub_100344A10();

        (*(v80 + 8))(v52, v50);
        return (*(v49 + 8))(v79, v67);
      }

      v86 = v100;
      v87 = v102;
      v61(v100, v60, v102);

      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = v49;
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v116 = v92;
        *v91 = 136315138;
        v93 = *(*v40 + 320);

        v95 = v93(v94);
        v97 = v96;

        v98 = sub_10002C9C8(v95, v97, &v116);

        *(v91 + 4) = v98;
        _os_log_impl(&_mh_execute_header, v88, v89, "[%s] inspectConnection - connection resumed before reply received", v91, 0xCu);
        sub_100026A44(v92);

        (*(v105 + 8))(v100, v87);
        (*(v111 + 8))(v106, v110);
        return (*(v90 + 8))(v112, v113);
      }

      (*(v105 + 8))(v86, v87);
      (*(v111 + 8))(v52, v50);
    }

    else
    {
      v116 = 0;
      v117 = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v81._countAndFlagsBits = 91;
      v81._object = 0xE100000000000000;
      String.append(_:)(v81);
      v82._countAndFlagsBits = (*(*v40 + 320))();
      String.append(_:)(v82);

      v83._countAndFlagsBits = 0xD000000000000030;
      v83._object = 0x8000000100441050;
      String.append(_:)(v83);
      v84 = v101;
      IPCMessage.message.getter();
      sub_10003B370(&qword_100527408, &type metadata accessor for IPCServerMessage);
      v85._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v85);

      (v114)(v84, v58);
      dispatch thunk of XPCSession.cancel(reason:)();

      (*(v51 + 8))(v52, v50);
    }

    return (*(v49 + 8))(v112, v113);
  }

  return result;
}

uint64_t sub_100344A10()
{
  v1 = v0;
  v2 = type metadata accessor for IPCClientMessage();
  v61 = *(v2 - 8);
  v62 = v2;
  v3 = *(v61 + 64);
  __chkstk_darwin(v2);
  v60 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v57 = &v53 - v10;
  v11 = sub_1001BC5A8(&qword_100525F78, &qword_100458A90);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v58 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v53 - v15;
  v17 = type metadata accessor for RoutingSessionSnapshot();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v0 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState);
  *(v0 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState) = 2;
  sub_1003407EC(v22);
  *(v0 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_oneWayMessageCount) = 0;
  v23 = OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_deferredSnapshot;
  swift_beginAccess();
  sub_10001D9AC(v1 + v23, v16, &qword_100525F78, &qword_100458A90);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    result = sub_1000038A4(v16, &qword_100525F78, &qword_100458A90);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v25 = sub_100038EF0();
    v26 = v57;
    (*(v6 + 16))(v57, v25, v5);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v55 = v6;
      v56 = v5;
      v54 = v21;
      v30 = v29;
      v31 = swift_slowAlloc();
      v63 = v31;
      *v30 = 136315138;
      v32 = (*(*v1 + 320))();
      v34 = sub_10002C9C8(v32, v33, &v63);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "[%s] resumeConnection - send deferred snapshot", v30, 0xCu);
      sub_100026A44(v31);

      v21 = v54;
      v6 = v55;
      v5 = v56;
    }

    (*(v6 + 8))(v26, v5);
    v35 = v58;
    (*(v18 + 16))(v58, v21, v17);
    (*(v18 + 56))(v35, 0, 1, v17);
    v36 = v60;
    RoutingSessionUpdateMessage.init(snapshot:)();
    v38 = v61;
    v37 = v62;
    (*(v61 + 104))(v36, enum case for IPCClientMessage.updateRoutingSnapshot(_:), v62);
    sub_1000226A0(v36);
    (*(v38 + 8))(v36, v37);
    result = (*(v18 + 8))(v21, v17);
  }

  v39 = v59;
  if (*(v1 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_deferredPendingItemIdentifiers))
  {
    v40 = *(v1 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_deferredPendingItemIdentifiers);

    v41 = sub_100038EF0();
    (*(v6 + 16))(v39, v41, v5);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v56 = v5;
      v45 = v44;
      v46 = swift_slowAlloc();
      v63 = v46;
      *v45 = 136315138;
      v47 = (*(*v1 + 320))();
      v49 = sub_10002C9C8(v47, v48, &v63);

      *(v45 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v42, v43, "[%s] resumeConnection - send deferred pending item identifiers", v45, 0xCu);
      sub_100026A44(v46);

      (*(v6 + 8))(v39, v56);
    }

    else
    {

      (*(v6 + 8))(v39, v5);
    }

    v50 = v60;
    PendingItemIdentifiersUpdateMessage.init(pendingItems:)();
    v52 = v61;
    v51 = v62;
    (*(v61 + 104))(v50, enum case for IPCClientMessage.updatePendingItems(_:), v62);
    sub_1000226A0(v50);
    return (*(v52 + 8))(v50, v51);
  }

  return result;
}

uint64_t sub_100345120()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  sub_1000038A4(v0 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_deferredSnapshot, &qword_100525F78, &qword_100458A90);
  v4 = *(v0 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_deferredPendingItemIdentifiers);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Int sub_1003451BC()
{
  Hasher.init(_seed:)();
  (*(*v0 + 344))(v2);
  return Hasher._finalize()();
}

Swift::Int sub_100345354()
{
  Hasher.init(_seed:)();
  (*(**v0 + 344))(v2);
  return Hasher._finalize()();
}

uint64_t sub_100345594(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 48) == *(*a2 + 48) && *(*a1 + 56) == *(*a2 + 56))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

void *sub_1003455C0()
{
  type metadata accessor for MediaControlIPCServer();
  v0 = swift_allocObject();
  result = sub_100345674();
  qword_1005385A0 = v0;
  return result;
}

uint64_t sub_1003455FC()
{
  v0 = swift_allocObject();
  sub_100345674();
  return v0;
}

void *sub_100345634()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
    *(v0 + 32) = &_swiftEmptySetSingleton;
  }

  return v1;
}

void *sub_100345674()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  *(v1 + 3) = 0u;
  *(v1 + 5) = 0u;
  v8 = sub_100038EF0();
  (*(v4 + 16))(v7, v8, v3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    v13 = _typeName(_:qualified:)();
    v15 = sub_10002C9C8(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%s] init", v11, 0xCu);
    sub_100026A44(v12);
  }

  (*(v4 + 8))(v7, v3);
  return v1;
}

uint64_t sub_100345874()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for XPCListener.InitializationOptions();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v56 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v53 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v52 = &v50 - v12;
  __chkstk_darwin(v11);
  v14 = &v50 - v13;
  v15 = sub_100038EF0();
  v16 = v7[2];
  v54 = v15;
  v55 = v16;
  (v16)(v14);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v57 = v2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v51 = v7;
    v22 = v21;
    v58[0] = v21;
    *v20 = 136315138;
    v23 = _typeName(_:qualified:)();
    v25 = sub_10002C9C8(v23, v24, v58);
    v2 = v57;

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "[%s] start", v20, 0xCu);
    sub_100026A44(v22);
    v7 = v51;
  }

  v26 = v7[1];
  v26(v14, v6);
  v27 = *sub_100021264();
  v28 = swift_allocObject();
  *(v28 + 16) = v1;
  *(v28 + 24) = v2;
  v29 = v27;

  static XPCListener.InitializationOptions.none.getter();
  v30 = type metadata accessor for XPCListener();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
  v56 = v1;
  v34 = v52;
  v55(v52, v54, v6);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v55 = v6;
    v38 = v37;
    v58[0] = swift_slowAlloc();
    *v38 = 136315394;
    v39 = _typeName(_:qualified:)();
    v40 = v34;
    v42 = sub_10002C9C8(v39, v41, v58);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    v43 = XPCListener.debugDescription.getter();
    v45 = sub_10002C9C8(v43, v44, v58);

    *(v38 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v35, v36, "[%s] Created XPCListener: %s", v38, 0x16u);
    swift_arrayDestroy();

    v46 = v40;
    v47 = v55;
  }

  else
  {

    v46 = v34;
    v47 = v6;
  }

  v26(v46, v47);
  v48 = *(v56 + 5);
  *(v56 + 5) = v33;
}

uint64_t sub_100345ED8(uint64_t a1, char *a2)
{
  v3 = type metadata accessor for XPCPeerRequirement();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  __chkstk_darwin(v3);
  v45 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Features.MediaRemote();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  __chkstk_darwin(v6);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Logger();
  v9 = *(v52 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v52);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_100021264();
  v19 = *v18;
  *v17 = *v18;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v17, v13);
  if (v19)
  {
    v22 = sub_100038EF0();
    (*(v9 + 16))(v12, v22, v52);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    v25 = os_log_type_enabled(v23, v24);
    v48 = a2;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v26 = 136315394;
      v27 = _typeName(_:qualified:)();
      v29 = sub_10002C9C8(v27, v28, &v55);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2080;
      v30 = ObjectIdentifier.debugDescription.getter();
      v32 = sub_10002C9C8(v30, v31, &v55);

      *(v26 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%s] XPCListener incoming request: %s", v26, 0x16u);
      swift_arrayDestroy();
    }

    v33 = (*(v9 + 8))(v12, v52);
    v55 = 0;
    v56 = 0;
    v53 = 0;
    v54 = 1;
    __chkstk_darwin(v33);
    *(&v45 - 2) = &v55;
    *(&v45 - 1) = &v53;
    XPCListener.IncomingSessionRequest.withUnsafeAuditToken<A>(_:)();
    v34 = v56;
    if (!v56)
    {
      goto LABEL_13;
    }

    v35 = v55;
    v36 = (v56 >> 56) & 0xF;
    if ((v56 & 0x2000000000000000) == 0)
    {
      v36 = v55 & 0xFFFFFFFFFFFFLL;
    }

    if (!v36)
    {
      goto LABEL_13;
    }

    if (v54)
    {
      goto LABEL_13;
    }

    v37 = v53;
    if (!v53)
    {
      goto LABEL_13;
    }

    v39 = v49;
    v38 = v50;
    v40 = v51;
    (*(v50 + 104))(v49, enum case for Features.MediaRemote.cayenneClientValidation(_:), v51);
    v41 = Features.MediaRemote.isEnabled.getter();
    v42 = (*(v38 + 8))(v39, v40);
    if (v41 & 1) == 0 || (v43 = v45, static XPCPeerRequirement.hasEntitlement(_:)(), v44 = XPCListener.IncomingSessionRequest.satisfies(requirement:)(), v42 = (*(v46 + 8))(v43, v47), (v44))
    {
      __chkstk_darwin(v42);
      *(&v45 - 4) = v35;
      *(&v45 - 3) = v34;
      *(&v45 - 4) = v37;
      *(&v45 - 1) = v48;
      type metadata accessor for MediaControlIPCServer.XPCClient();
      sub_10003B370(&qword_100527430, type metadata accessor for MediaControlIPCServer.XPCClient);
      dispatch thunk of XPCListener.IncomingSessionRequest.accept<A>(_:)();
    }

    else
    {
LABEL_13:
      dispatch thunk of XPCListener.IncomingSessionRequest.reject(reason:)();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10034652C(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100021264();
  v9 = *v8;
  *v7 = *v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v9)
  {
    v12 = sub_100345634();

    sub_1003490A0(&v13, a1);

    v11 = *(v1 + 32);
    *(v1 + 32) = v12;

    sub_100346828();
  }

  else
  {
    __break(1u);
  }
}

void sub_100346684(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100021264();
  v9 = *v8;
  *v7 = *v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v9)
  {
    v14 = sub_100345634();
    sub_100349DD0(a1);

    v11 = *(v1 + 32);
    *(v1 + 32) = v14;

    v12 = *sub_10033FF5C();
    (*(v12 + 512))(a1, &off_1004CE9A8, 1);

    sub_100346828();
  }

  else
  {
    __break(1u);
  }
}

void sub_100346828()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v34 - v9;
  v11 = sub_100345634();
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *(v11 + 16);
  }

  v13 = v1[6];
  if (v12)
  {
    if (v13)
    {
      return;
    }

    v14 = sub_100038EF0();
    (*(v4 + 16))(v8, v14, v3);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v35 = v18;
      *v17 = 136315138;
      v19 = _typeName(_:qualified:)();
      v21 = sub_10002C9C8(v19, v20, &v35);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "[%s] updateTransaction - creating transaction", v17, 0xCu);
      sub_100026A44(v18);
    }

    (*(v4 + 8))(v8, v3);
    v22 = objc_allocWithZone(MROSTransaction);
    v23 = String._bridgeToObjectiveC()();
    v24 = [v22 initWithName:v23];

    MRRegisterTransaction();
  }

  else
  {
    if (!v13)
    {
      return;
    }

    v25 = sub_100038EF0();
    (*(v4 + 16))(v10, v25, v3);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35 = v29;
      *v28 = 136315138;
      v30 = _typeName(_:qualified:)();
      v32 = sub_10002C9C8(v30, v31, &v35);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%s] updateTransaction - finishing transaction", v28, 0xCu);
      sub_100026A44(v29);
    }

    (*(v4 + 8))(v10, v3);
    v24 = 0;
  }

  v33 = v1[6];
  v1[6] = v24;
}

uint64_t sub_100346BF0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v269 = a2;
  v280 = a1;
  v277 = a3;
  v268 = *v3;
  v4 = type metadata accessor for InternalRoutingError();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v276 = &v198 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = type metadata accessor for FlushPendingControlsMessage();
  v220 = *(v221 - 8);
  v7 = *(v220 + 64);
  __chkstk_darwin(v221);
  v219 = &v198 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = type metadata accessor for RoutingItem.Action();
  v211 = *(v212 - 8);
  v9 = *(v211 + 64);
  __chkstk_darwin(v212);
  v209 = &v198 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for InteractWithItemActionMessage();
  v208 = *(v210 - 8);
  v11 = *(v208 + 64);
  __chkstk_darwin(v210);
  v207 = &v198 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = type metadata accessor for RoutingSession.Action();
  v217 = *(v218 - 8);
  v13 = *(v217 + 64);
  __chkstk_darwin(v218);
  v215 = &v198 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for InteractWithSessionActionMessage();
  v214 = *(v216 - 8);
  v15 = *(v214 + 64);
  __chkstk_darwin(v216);
  v213 = &v198 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = type metadata accessor for SetExpandedSessionsStateMessage();
  v249 = *(v250 - 8);
  v17 = *(v249 + 64);
  __chkstk_darwin(v250);
  v248 = &v198 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = type metadata accessor for SetUIPresentedStateMessage();
  v252 = *(v253 - 8);
  v19 = *(v252 + 64);
  __chkstk_darwin(v253);
  v251 = &v198 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for EndInteractionWithContinuousControlMessage();
  v223 = *(v224 - 8);
  v21 = *(v223 + 64);
  __chkstk_darwin(v224);
  v222 = &v198 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for ContinuousRoutingControl();
  v229 = *(v230 - 8);
  v23 = *(v229 + 64);
  __chkstk_darwin(v230);
  v228 = &v198 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = type metadata accessor for BeginInteractionWithContinuousControlMessage();
  v226 = *(v227 - 8);
  v25 = *(v226 + 64);
  __chkstk_darwin(v227);
  v225 = &v198 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = type metadata accessor for RoutingControl();
  v271 = *(v240 - 8);
  v27 = *(v271 + 64);
  v28 = __chkstk_darwin(v240);
  v206 = &v198 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v233 = &v198 - v30;
  v239 = type metadata accessor for InteractWithControlMessage();
  v232 = *(v239 - 8);
  v31 = *(v232 + 64);
  __chkstk_darwin(v239);
  v231 = &v198 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = type metadata accessor for RoutingDialog.Action();
  v237 = *(v238 - 8);
  v33 = *(v237 + 64);
  __chkstk_darwin(v238);
  v236 = &v198 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = type metadata accessor for InteractWithDialogMessage();
  v235 = *(v244 - 8);
  v35 = *(v235 + 64);
  __chkstk_darwin(v244);
  v234 = &v198 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = type metadata accessor for InteractWithSessionMessage();
  v242 = *(v243 - 8);
  v37 = *(v242 + 64);
  __chkstk_darwin(v243);
  v241 = &v198 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = type metadata accessor for InteractWithItemMessage();
  v246 = *(v247 - 8);
  v39 = *(v246 + 64);
  __chkstk_darwin(v247);
  v245 = &v198 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = type metadata accessor for RoutingMode();
  v258 = *(v259 - 8);
  v41 = *(v258 + 64);
  __chkstk_darwin(v259);
  v256 = &v198 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = type metadata accessor for SetRoutingModeMessage();
  v255 = *(v257 - 8);
  v43 = *(v255 + 64);
  __chkstk_darwin(v257);
  v254 = &v198 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = type metadata accessor for RoutingSessionConfiguration();
  v263 = *(v264 - 8);
  v45 = *(v263 + 64);
  __chkstk_darwin(v264);
  v262 = &v198 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = type metadata accessor for IPCConnectMessage();
  v261 = *(v267 - 8);
  v47 = *(v261 + 64);
  __chkstk_darwin(v267);
  v260 = &v198 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for ExecutionPriority();
  v265 = *(v49 - 8);
  v266 = v49;
  v50 = *(v265 + 64);
  __chkstk_darwin(v49);
  v52 = &v198 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = type metadata accessor for Logger();
  v270 = *(v273 - 8);
  v53 = *(v270 + 64);
  __chkstk_darwin(v273);
  v55 = &v198 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = type metadata accessor for IPCServerMessage();
  v279 = *(v274 - 8);
  v56 = *(v279 + 8);
  v57 = __chkstk_darwin(v274);
  v272 = &v198 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __chkstk_darwin(v57);
  v61 = &v198 - v60;
  __chkstk_darwin(v59);
  v278 = &v198 - v62;
  v63 = sub_1001BC5A8(&qword_1005273E8, &qword_1004590A8);
  v64 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63 - 8);
  v66 = &v198 - v65;
  v67 = sub_1001BC5A8(&qword_1005273F0, &qword_1004590B0);
  v281 = *(v67 - 8);
  v68 = *(v281 + 64);
  v69 = __chkstk_darwin(v67);
  v71 = (&v198 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v69);
  v275 = &v198 - v72;
  v73 = type metadata accessor for DispatchPredicate();
  v74 = *(v73 - 8);
  v75 = *(v74 + 64);
  __chkstk_darwin(v73);
  v77 = (&v198 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = sub_100021264();
  v79 = *v78;
  *v77 = *v78;
  (*(v74 + 104))(v77, enum case for DispatchPredicate.onQueue(_:), v73);
  v80 = v79;
  LOBYTE(v79) = _dispatchPreconditionTest(_:)();
  v81 = (*(v74 + 8))(v77, v73);
  if (v79)
  {
    sub_10000462C(&qword_100527400, &qword_1005273F0, &qword_1004590B0);
    XPCReceivedMessage.decode<A>(as:)();
    v82 = v281;
    (*(v281 + 56))(v66, 0, 1, v67);
    v83 = v275;
    (*(v82 + 32))(v275, v66, v67);
    v276 = v67;
    v84 = v278;
    IPCMessage.message.getter();
    v85 = sub_100038EF0();
    v86 = v270;
    v87 = v273;
    (*(v270 + 16))(v55, v85, v273);
    v88 = *(v279 + 2);
    v89 = v84;
    v90 = v276;
    v91 = v274;
    v204 = v279 + 16;
    v203 = v88;
    (v88)(v61, v89);
    (*(v82 + 16))(v71, v83, v90);
    v92 = Logger.logObject.getter();
    v202 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v92, v202))
    {
      v93 = swift_slowAlloc();
      v201 = swift_slowAlloc();
      v282 = v201;
      *v93 = 136315906;
      v94 = _typeName(_:qualified:)();
      v200 = v92;
      v96 = sub_10002C9C8(v94, v95, &v282);

      *(v93 + 4) = v96;
      *(v93 + 12) = 2080;
      sub_10003B370(&qword_100527408, &type metadata accessor for IPCServerMessage);
      v97 = dispatch thunk of CustomStringConvertible.description.getter();
      v99 = v98;
      v205 = *(v279 + 1);
      v205(v61, v91);
      v100 = sub_10002C9C8(v97, v99, &v282);

      *(v93 + 14) = v100;
      *(v93 + 22) = 2080;
      IPCMessage.priority.getter();
      sub_10003B370(&unk_100527440, &type metadata accessor for ExecutionPriority);
      v101 = v266;
      v102 = dispatch thunk of CustomStringConvertible.description.getter();
      v104 = v103;
      v199 = v55;
      v105 = *(v265 + 8);
      v105(v52, v101);
      v268 = *(v281 + 8);
      v268(v71, v276);
      v106 = sub_10002C9C8(v102, v104, &v282);

      *(v93 + 24) = v106;
      *(v93 + 32) = 2080;
      static ExecutionPriority.current.getter();
      v107 = dispatch thunk of CustomStringConvertible.description.getter();
      v109 = v108;
      v105(v52, v101);
      v110 = sub_10002C9C8(v107, v109, &v282);

      *(v93 + 34) = v110;
      v111 = v200;
      _os_log_impl(&_mh_execute_header, v200, v202, "[%s] Received message: %s, messagePriority: %s, currentPriority: %s", v93, 0x2Au);
      swift_arrayDestroy();

      (*(v86 + 8))(v199, v273);
      v71 = v279;
      v55 = v274;
    }

    else
    {

      v268 = *(v82 + 8);
      v268(v71, v90);
      v71 = v279;
      v205 = *(v279 + 1);
      v205(v61, v91);
      (*(v86 + 8))(v55, v87);
      v55 = v91;
    }

    XPCReceivedMessage.expectsReply.getter();
    XPCReceivedMessage.isSync.getter();
    v67 = v272;
    v203(v272, v278, v55);
    v81 = v71[11](v67, v55);
    v112 = v271;
    if (v81 == enum case for IPCServerMessage.prototype(_:))
    {
      v113 = v205;
      v205(v278, v55);
      v268(v275, v276);
      v113(v67, v55);
LABEL_23:
      v153 = v277;
      v154 = type metadata accessor for ReplyMessage();
      return (*(*(v154 - 8) + 56))(v153, 1, 1, v154);
    }

    if (v81 == enum case for IPCServerMessage.connect(_:))
    {
      v114 = v71[12];
      v279 = (v71 + 12);
      v114(v67, v55);
      v115 = v261;
      v116 = v260;
      (*(v261 + 32))(v260, v67, v267);
      v117 = sub_10033FF5C();
      v118 = v269;
      v119 = (*(*v269 + 144))();
      v121 = v120;
      v122 = v262;
      IPCConnectMessage.configuration.getter();
      v123 = sub_100279470();
      (*(*v117 + 504))(v118, &off_1004CE9A8, v119, v121, v122, v123, 1);

      (*(v263 + 8))(v122, v264);
      (*(v115 + 8))(v116, v267);
      v124 = v278;
      v125 = v274;
LABEL_9:
      v205(v124, v125);
LABEL_22:
      v268(v275, v276);
      goto LABEL_23;
    }

    v66 = v269;
    if (v81 == enum case for IPCServerMessage.setRoutingMode(_:))
    {
      v71[12](v67, v55);
      v126 = v255;
      v127 = v254;
      v128 = v67;
      v129 = v257;
      (*(v255 + 32))(v254, v128, v257);
      v130 = sub_10033FF5C();
      v131 = v256;
      SetRoutingModeMessage.routingMode.getter();
      (*(*v130 + 592))(v131, v269, &off_1004CE9A8, 1);

      (*(v258 + 8))(v131, v259);
      (*(v126 + 8))(v127, v129);
LABEL_21:
      v205(v278, v55);
      goto LABEL_22;
    }

    if (v81 == enum case for IPCServerMessage.setUIPresented(_:))
    {
      v71[12](v67, v55);
      v132 = v252;
      v133 = v67;
      v134 = v251;
      v135 = v253;
      (*(v252 + 32))(v251, v133, v253);
      v136 = sub_10033FF5C();
      v137 = SetUIPresentedStateMessage.isPresented.getter();
      (*(*v136 + 600))(v137 & 1, v66, &off_1004CE9A8, 1);

      (*(v132 + 8))(v134, v135);
      goto LABEL_21;
    }

    if (v81 == enum case for IPCServerMessage.setExpandedSessionIdentifiers(_:))
    {
      v71[12](v67, v55);
      v138 = v67;
      v139 = v249;
      v140 = v248;
      v141 = v250;
      (*(v249 + 32))(v248, v138, v250);
      v142 = sub_10033FF5C();
      v143 = SetExpandedSessionsStateMessage.expandedSessionIdentifiers.getter();
      (*(*v142 + 608))(v143, v66, &off_1004CE9A8, 1);

      (*(v139 + 8))(v140, v141);
      goto LABEL_21;
    }

    if (v81 == enum case for IPCServerMessage.interactWithItem(_:))
    {
      v71[12](v67, v55);
      v144 = v246;
      v145 = v245;
      v146 = v67;
      v147 = v247;
      (*(v246 + 32))(v245, v146, v247);
      v148 = sub_10033FF5C();
      v149 = InteractWithItemMessage.itemIdentifier.getter();
      (*(*v148 + 520))(v149);
LABEL_20:

      (*(v144 + 8))(v145, v147);
      goto LABEL_21;
    }

    if (v81 == enum case for IPCServerMessage.interactWithSession(_:))
    {
      v71[12](v67, v55);
      v144 = v242;
      v145 = v241;
      v150 = v67;
      v147 = v243;
      (*(v242 + 32))(v241, v150, v243);
      v151 = sub_10033FF5C();
      v152 = InteractWithSessionMessage.sessionIdentifier.getter();
      (*(*v151 + 528))(v152);
      goto LABEL_20;
    }

    if (v81 == enum case for IPCServerMessage.interactWithDialog(_:))
    {
      v156 = v71[12];
      v279 = (v71 + 12);
      v156(v67, v55);
      v157 = v235;
      v158 = v67;
      v159 = v234;
      (*(v235 + 32))(v234, v158, v244);
      v160 = sub_10033FF5C();
      v161 = v66;
      v162 = InteractWithDialogMessage.dialogIdentifier.getter();
      v164 = v163;
      v165 = v236;
      InteractWithDialogMessage.action.getter();
      (*(*v160 + 536))(v162, v164, v165, v161, &off_1004CE9A8, 1);

      (*(v237 + 8))(v165, v238);
      (*(v157 + 8))(v159, v244);
      v205(v278, v274);
      goto LABEL_22;
    }

    if (v81 == enum case for IPCServerMessage.interactWithControl(_:))
    {
      v71[12](v67, v55);
      v166 = v232;
      v167 = v231;
      (*(v232 + 32))(v231, v67, v239);
      v168 = sub_10033FF5C();
      v169 = v233;
      InteractWithControlMessage.control.getter();
      (*(*v168 + 544))(v169, v66, &off_1004CE9A8, 1);

      (*(v112 + 8))(v169, v240);
      (*(v166 + 8))(v167, v239);
LABEL_35:
      v124 = v278;
      v125 = v55;
      goto LABEL_9;
    }

    if (v81 == enum case for IPCServerMessage.beginInteractionWithContinuousControl(_:))
    {
      v71[12](v67, v55);
      v170 = v67;
      v171 = v226;
      v172 = v225;
      v173 = v227;
      (*(v226 + 32))(v225, v170, v227);
      v174 = sub_10033FF5C();
      v175 = v228;
      BeginInteractionWithContinuousControlMessage.control.getter();
      (*(*v174 + 552))(v175, v66, &off_1004CE9A8, 1);
LABEL_33:

      (*(v229 + 8))(v175, v230);
LABEL_34:
      (*(v171 + 8))(v172, v173);
      goto LABEL_35;
    }
  }

  else
  {
    __break(1u);
  }

  if (v81 == enum case for IPCServerMessage.endInteractionWithContinuousControl(_:))
  {
    v71[12](v67, v55);
    v176 = v67;
    v171 = v223;
    v172 = v222;
    v173 = v224;
    (*(v223 + 32))(v222, v176, v224);
    v177 = sub_10033FF5C();
    v175 = v228;
    EndInteractionWithContinuousControlMessage.control.getter();
    (*(*v177 + 560))(v175, v66, &off_1004CE9A8, 1);
    goto LABEL_33;
  }

  if (v81 == enum case for IPCServerMessage.interactWithSessionAction(_:))
  {
    v71[12](v67, v55);
    v178 = v67;
    v171 = v214;
    v172 = v213;
    v173 = v216;
    (*(v214 + 32))(v213, v178, v216);
    v179 = sub_10033FF5C();
    v180 = v215;
    InteractWithSessionActionMessage.action.getter();
    (*(*v179 + 568))(v180, v66, &off_1004CE9A8, 1);

    (*(v217 + 8))(v180, v218);
    goto LABEL_34;
  }

  if (v81 == enum case for IPCServerMessage.interactWithItemAction(_:))
  {
    v71[12](v67, v55);
    v181 = v55;
    v182 = v208;
    v183 = v67;
    v184 = v207;
    v185 = v210;
    (*(v208 + 32))(v207, v183, v210);
    v186 = sub_10033FF5C();
    v187 = v209;
    InteractWithItemActionMessage.action.getter();
    (*(*v186 + 576))(v187, v66, &off_1004CE9A8, 1);

    (*(v211 + 8))(v187, v212);
    (*(v182 + 8))(v184, v185);
    v124 = v278;
    v125 = v181;
    goto LABEL_9;
  }

  if (v81 == enum case for IPCServerMessage.flushPendingControls(_:))
  {
    v188 = v272;
    (*(v279 + 12))(v272, v274);
    (*(v220 + 32))(v219, v188, v221);
    v280 = FlushPendingControlsMessage.controls.getter();
    v189 = *(v280 + 16);
    if (v189)
    {
      v190 = *(v271 + 16);
      v191 = v280 + ((*(v271 + 80) + 32) & ~*(v271 + 80));
      v192 = *(v271 + 72);
      v193 = (v271 + 8);
      v194 = v269;
      v195 = v240;
      v196 = v206;
      do
      {
        v190(v196, v191, v195);
        v197 = *sub_10033FF5C();
        (*(v197 + 544))(v196, v194, &off_1004CE9A8, 1);
        v195 = v240;

        (*v193)(v196, v195);
        v191 += v192;
        --v189;
      }

      while (v189);
    }

    (*(v220 + 8))(v219, v221);
    v205(v278, v274);
    v268(v275, v276);
    goto LABEL_23;
  }

  if (v81 == enum case for IPCServerMessage.ping(_:))
  {
    __break(1u);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100349050()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1003490A0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      v23[9] = v8;
      type metadata accessor for MediaControlIPCServer.XPCClient();
      swift_dynamicCast();
      result = 0;
      *a1 = v23[0];
      return result;
    }

    result = __CocoaSet.count.getter();
    if (!__OFADD__(result, 1))
    {
      v20 = sub_1003492EC(v7, result + 1);
      v23[0] = v20;
      v21 = *(v20 + 16);
      if (*(v20 + 24) <= v21)
      {
        sub_100349520(v21 + 1);
        v20 = v23[0];
      }

      sub_1003497A4(v22, v20);

      *v3 = v20;
      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {
    v10 = *(v6 + 40);
    Hasher.init(_seed:)();
    (*(*a2 + 344))(v23);
    v11 = Hasher._finalize()();
    v12 = -1 << *(v6 + 32);
    v13 = v11 & ~v12;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
LABEL_15:
      v17 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23[0] = *v2;

      sub_100349870(v19, v13, isUniquelyReferenced_nonNull_native);
      *v2 = v23[0];
LABEL_20:
      *a1 = a2;
      return 1;
    }

    v14 = ~v12;
    while (1)
    {
      v15 = *(*(v6 + 48) + 8 * v13);
      v16 = *(v15 + 48) == a2[6] && *(v15 + 56) == a2[7];
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v13);

    return 0;
  }

  return result;
}

Swift::Int sub_1003492EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1001BC5A8(&qword_100527428, &unk_1004590C8);
    v2 = static _SetStorage.convert(_:capacity:)();
    v20 = v2;
    __CocoaSet.makeIterator()();
    v3 = __CocoaSet.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for MediaControlIPCServer.XPCClient();
      v5 = v4;
      do
      {
        v19[0] = v5;
        swift_dynamicCast();
        v14 = *(v2 + 16);
        if (*(v2 + 24) <= v14)
        {
          sub_100349520(v14 + 1);
        }

        v6 = v19[9];
        v2 = v20;
        v7 = *(v20 + 40);
        Hasher.init(_seed:)();
        (*(*v6 + 344))(v19);
        result = Hasher._finalize()();
        v9 = v2 + 56;
        v10 = -1 << *(v2 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v2 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v2 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v2 + 48) + 8 * v13) = v6;
        ++*(v2 + 16);
        v5 = __CocoaSet.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100349520(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001BC5A8(&qword_100527428, &unk_1004590C8);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      (*(*v18 + 344))(v29);
      result = Hasher._finalize()();
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

unint64_t sub_1003497A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  (*(*a1 + 344))(v7);
  Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_100349870(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_100349520(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100349A1C();
      goto LABEL_16;
    }

    sub_100349B6C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  (*(*v5 + 344))(v18);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for MediaControlIPCServer.XPCClient();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      if (*(v12 + 48) == v5[6] && *(v12 + 56) == v5[7])
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v5;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100349A1C()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100527428, &unk_1004590C8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_100349B6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001BC5A8(&qword_100527428, &unk_1004590C8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      v20 = *(*v18 + 344);

      v20(v30);
      result = Hasher._finalize()();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v28;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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

uint64_t sub_100349DD0(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = sub_100349F88(v4, a1);

      return v7;
    }

    return 0;
  }

  v9 = *(v3 + 40);
  Hasher.init(_seed:)();
  (*(*a1 + 344))(v20);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = *(v14 + 48) == a1[6] && *(v14 + 56) == a1[7];
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  v16 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v1;
  v20[0] = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100349A1C();
    v18 = v20[0];
  }

  v19 = *(*(v18 + 48) + 8 * v12);
  sub_10034A130(v12);
  result = v19;
  *v1 = v20[0];
  return result;
}

uint64_t sub_100349F88(uint64_t a1, void *a2)
{
  v4 = *v2;

  v5 = __CocoaSet.count.getter();
  v6 = swift_unknownObjectRetain();
  v7 = sub_1003492EC(v6, v5);
  v24 = v7;
  v8 = *(v7 + 40);
  Hasher.init(_seed:)();
  v9 = *(*a2 + 344);

  v9(&v23);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v7 + 32);
  v12 = v10 & ~v11;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = *(*(v7 + 48) + 8 * v12);
      v15 = *(v14 + 48);
      v16 = a2[6];
      v9 = a2[7];
      if (v15 == v16 && *(v14 + 56) == v9)
      {
        break;
      }

      v18 = a2[6];
      v19 = a2[7];
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_11;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    __break(1u);
  }

  v16 = v15;
LABEL_11:

  v20 = *(*(v7 + 48) + 8 * v12);
  sub_10034A130(v12);
  v21 = v16 == *(v20 + 48) && v9 == *(v20 + 56);
  if (v21 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    *v2 = v24;
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10034A130(unint64_t result)
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

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        v13 = *(*v12 + 344);

        v13(v22);
        v14 = Hasher._finalize()();

        v15 = v14 & v7;
        if (v2 >= v10)
        {
          if (v15 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v15)
        {
LABEL_11:
          v16 = *(v3 + 48);
          v17 = (v16 + 8 * v2);
          v18 = (v16 + 8 * v6);
          if (v2 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
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

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

void sub_10034A328(uint64_t isEscapingClosureAtFileLocation)
{
  v2 = type metadata accessor for Features.MediaRemote();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for Features.MediaRemote.cayenne(_:), v2);
  v7 = Features.MediaRemote.isEnabled.getter();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v8 = *sub_100021264();
    v9 = swift_allocObject();
    *(v9 + 16) = isEscapingClosureAtFileLocation;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_10034B310;
    *(v10 + 24) = v9;
    aBlock[4] = sub_10021C408;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001E7220;
    aBlock[3] = &unk_1004CECF8;
    v11 = _Block_copy(aBlock);
    v12 = isEscapingClosureAtFileLocation;

    v13 = v8;

    dispatch_async_and_wait(v13, v11);

    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    v14 = String._bridgeToObjectiveC()();
    [isEscapingClosureAtFileLocation setMediaControlDiagnostic:v14];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10034A58C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10033FF5C();
  *a1 = result;
  return result;
}

unint64_t sub_10034A5BC()
{
  result = qword_100534C78;
  if (!qword_100534C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100534C78);
  }

  return result;
}

unint64_t sub_10034A610()
{
  result = qword_100534C80;
  if (!qword_100534C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100534C80);
  }

  return result;
}

unint64_t sub_10034A664()
{
  result = qword_100534C88;
  if (!qword_100534C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100534C88);
  }

  return result;
}

uint64_t sub_10034A6B8(uint64_t *a1)
{
  v29 = sub_1001BC5A8(&qword_100527458, &qword_1004590D8);
  v27 = *(v29 - 8);
  v2 = *(v27 + 64);
  __chkstk_darwin(v29);
  v4 = v25 - v3;
  v5 = sub_1001BC5A8(&qword_100527460, &qword_1004590E0);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  __chkstk_darwin(v5);
  v8 = v25 - v7;
  v9 = sub_1001BC5A8(&qword_100527468, qword_1004590E8);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  __chkstk_darwin(v9);
  v12 = v25 - v11;
  v13 = a1[4];
  sub_1000326D8(a1, a1[3]);
  sub_10034A5BC();
  v14 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    return sub_100026A44(a1);
  }

  v26 = v5;
  v31 = a1;
  v16 = v28;
  v15 = v29;
  v17 = v12;
  v18 = KeyedDecodingContainer.allKeys.getter();
  if (*(v18 + 16) != 1)
  {
    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    v23 = *(sub_1001BC5A8(&unk_100527470, &qword_100455110) + 48);
    *v22 = &type metadata for MediaControlIPCServer.Errors;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
    swift_willThrow();
    (*(v30 + 8))(v17, v9);
    swift_unknownObjectRelease();
    a1 = v31;
    return sub_100026A44(a1);
  }

  v25[1] = v18;
  v32 = *(v18 + 32);
  if (v32)
  {
    v34 = 1;
    sub_10034A610();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v19 = v30;
    (*(v27 + 8))(v4, v15);
  }

  else
  {
    v33 = 0;
    sub_10034A664();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v19 = v30;
    (*(v16 + 8))(v8, v26);
  }

  (*(v19 + 8))(v12, v9);
  swift_unknownObjectRelease();
  sub_100026A44(v31);
  return v32;
}

uint64_t sub_10034AAF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100525F78, &qword_100458A90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_10034AB70()
{
  result = qword_100527000;
  if (!qword_100527000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100527000);
  }

  return result;
}

unint64_t sub_10034ABC8()
{
  result = qword_100527008;
  if (!qword_100527008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100527008);
  }

  return result;
}

uint64_t type metadata accessor for MediaControlIPCServer.XPCClient()
{
  result = qword_1005352B8;
  if (!qword_1005352B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t type metadata accessor for MRDMediaControlIPCServer()
{
  result = qword_1005352B0;
  if (!qword_1005352B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005352B0);
  }

  return result;
}

void sub_10034AD58()
{
  sub_10034AE24();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10034AE24()
{
  if (!qword_1005271D8)
  {
    type metadata accessor for RoutingSessionSnapshot();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005271D8);
    }
  }
}

unint64_t sub_10034AEB0()
{
  result = qword_1005355D0[0];
  if (!qword_1005355D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005355D0);
  }

  return result;
}

unint64_t sub_10034AF08()
{
  result = qword_1005356E0;
  if (!qword_1005356E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005356E0);
  }

  return result;
}

unint64_t sub_10034AF60()
{
  result = qword_1005356E8[0];
  if (!qword_1005356E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005356E8);
  }

  return result;
}

unint64_t sub_10034AFB8()
{
  result = qword_100535770;
  if (!qword_100535770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100535770);
  }

  return result;
}

unint64_t sub_10034B010()
{
  result = qword_100535778;
  if (!qword_100535778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100535778);
  }

  return result;
}

unint64_t sub_10034B068()
{
  result = qword_100535800;
  if (!qword_100535800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100535800);
  }

  return result;
}

unint64_t sub_10034B0C0()
{
  result = qword_100535808[0];
  if (!qword_100535808[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100535808);
  }

  return result;
}

uint64_t sub_10034B12C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v10 = *(v4 + 16);
  v9 = *(v4 + 24);
  v11 = HIDWORD(a1);
  *atoken.val = a1;
  *&atoken.val[2] = a2;
  v21 = HIDWORD(a2);
  v22 = HIDWORD(a3);
  *&atoken.val[4] = a3;
  *&atoken.val[6] = a4;
  v23 = HIDWORD(a4);
  v12 = MSVBundleIDForAuditToken();
  if (v12)
  {
    v20 = v5;
    v13 = v11;
    v11 = v9;
    v14 = v12;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v9 = v11;
    LODWORD(v11) = v13;
    v5 = v20;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = v10[1];
  *v10 = v15;
  v10[1] = v17;

  atoken.val[0] = v8;
  atoken.val[1] = v11;
  atoken.val[2] = v7;
  atoken.val[3] = v21;
  atoken.val[4] = v6;
  atoken.val[5] = v22;
  atoken.val[6] = v5;
  atoken.val[7] = v23;
  result = audit_token_to_pid(&atoken);
  *v9 = result;
  *(v9 + 4) = 0;
  return result;
}

void sub_10034B228(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = type metadata accessor for MediaControlIPCServer.XPCClient();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();

  sub_100340B80(v11, v3, v4, v5);
  sub_10034652C(v10);
  *a1 = v10;
}

unint64_t sub_10034B2BC()
{
  result = qword_100527450;
  if (!qword_100527450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100527450);
  }

  return result;
}

void sub_10034B310()
{
  v1 = *(v0 + 16);
  if (qword_100534C70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(qword_1005385A0 + 16) == 1)
  {
    if (v1)
    {

      sub_10033FF5C();

      sub_100327D5C();

      v2 = String._bridgeToObjectiveC()();

LABEL_8:
      [v1 setMediaControlDiagnostic:v2];

      return;
    }

    __break(1u);
  }

  else if (v1)
  {
    v2 = String._bridgeToObjectiveC()();
    goto LABEL_8;
  }

  __break(1u);
}

void sub_10034B444()
{
  v1 = [v0 sortingHint];
  if (v1)
  {
    v2 = v1;
    [v1 doubleValue];
  }
}

void (*sub_10034B4D0(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___MRDIntelligentRoutingLockScreenRoutingProvider_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10034B568;
}

id sub_10034B56C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = objc_allocWithZone(v4);
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v8[OBJC_IVAR___MRDIntelligentRoutingLockScreenRoutingProvider_queue] = a2;
  *&v8[OBJC_IVAR___MRDIntelligentRoutingLockScreenRoutingProvider_routeRecommender] = a3;
  *&v8[OBJC_IVAR___MRDIntelligentRoutingLockScreenRoutingProvider_routeRecommendationStore] = a4;
  v16.receiver = v8;
  v16.super_class = v4;
  v9 = a2;
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = objc_msgSendSuper2(&v16, "init");
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 defaultCenter];
  [v14 addObserver:v13 selector:"update" name:@"MRRouteRecommenderDidReceiveNewRecommendationsNotification" object:0];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v13;
}

id sub_10034B6D4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v4[OBJC_IVAR___MRDIntelligentRoutingLockScreenRoutingProvider_queue] = a2;
  *&v4[OBJC_IVAR___MRDIntelligentRoutingLockScreenRoutingProvider_routeRecommender] = a3;
  *&v4[OBJC_IVAR___MRDIntelligentRoutingLockScreenRoutingProvider_routeRecommendationStore] = a4;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for MRDIntelligentRoutingLockScreenRoutingProvider();
  v8 = a2;
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = objc_msgSendSuper2(&v15, "init");
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 defaultCenter];
  [v13 addObserver:v12 selector:"update" name:@"MRRouteRecommenderDidReceiveNewRecommendationsNotification" object:0];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v12;
}

id sub_10034B8A8()
{
  static os_log_type_t.default.getter();
  v1 = *sub_1001D8BC4();
  sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100450890;
  v3 = *(v0 + OBJC_IVAR___MRDIntelligentRoutingLockScreenRoutingProvider_routeRecommender);
  v4 = v1;
  swift_unknownObjectRetain();
  sub_1001BC5A8(&qword_1005274A8, &unk_100459120);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v2 + 56) = &type metadata for String;
  v8 = sub_100008FEC();
  *(v2 + 64) = v8;
  *(v2 + 32) = v5;
  *(v2 + 40) = v7;
  v9 = *(v0 + OBJC_IVAR___MRDIntelligentRoutingLockScreenRoutingProvider_routeRecommendationStore);
  v10 = [v9 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(v2 + 96) = &type metadata for String;
  *(v2 + 104) = v8;
  *(v2 + 72) = v11;
  *(v2 + 80) = v13;
  os_log(_:dso:log:_:_:)();

  return [v3 requestCurrentContext];
}

id sub_10034BB28(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_10034BB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_10034BBFC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10034BC58(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___MRDUserDefaultsLockScreenRoutingProvider_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10034D86C;
}

uint64_t sub_10034BD6C()
{
  v1 = OBJC_IVAR___MRDUserDefaultsLockScreenRoutingProvider_nearbyDeviceIdentifiers;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_10034BE20(uint64_t a1)
{
  v3 = OBJC_IVAR___MRDUserDefaultsLockScreenRoutingProvider_nearbyDeviceIdentifiers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_10034BF1C(uint64_t a1, void *a2)
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR___MRDUserDefaultsLockScreenRoutingProvider_queue] = a2;
  v4 = objc_opt_self();
  v5 = a2;
  result = [v4 currentSettings];
  if (result)
  {
    v7 = result;
    v8 = [result nearbyDeviceIdentifiers];

    if (v8)
    {
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    *&v2[OBJC_IVAR___MRDUserDefaultsLockScreenRoutingProvider_nearbyDeviceIdentifiers] = v9;
    v16.receiver = v2;
    v16.super_class = type metadata accessor for UserDefaultsLockScreenRoutingProvider();
    v10 = objc_msgSendSuper2(&v16, "init");
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 defaultCenter];
    result = [v4 currentSettings];
    if (result)
    {
      v14 = result;
      v15 = [result nearbyDeviceIdentifiersDidChangeNotification];

      [v13 addObserver:v12 selector:"update" name:v15 object:0];
      swift_unknownObjectRelease();

      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10034C150()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v6 = *(v24 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v24);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*((swift_isaMask & *v0) + 0x80))(v8);
  result = [objc_opt_self() currentSettings];
  if (result)
  {
    v13 = result;
    v22 = v6;
    v14 = [result nearbyDeviceIdentifiers];

    v15 = _swiftEmptyArrayStorage;
    v23 = v2;
    if (v14)
    {
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v16 = *((swift_isaMask & *v0) + 0x88);

    v16(v17);
    LOBYTE(v16) = sub_100034D74(v11, v15);

    if ((v16 & 1) == 0)
    {
      v21[1] = *(v0 + OBJC_IVAR___MRDUserDefaultsLockScreenRoutingProvider_queue);
      v18 = (*((swift_isaMask & *v0) + 0x68))(result);
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      aBlock[4] = sub_10034D870;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100003D98;
      aBlock[3] = &unk_1004CED98;
      v20 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      static DispatchQoS.unspecified.getter();
      v25 = _swiftEmptyArrayStorage;
      sub_1000146D4();
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v20);
      swift_unknownObjectRelease();
      (*(v23 + 8))(v5, v1);
      (*(v22 + 8))(v10, v24);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10034C5D8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10034C690(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v20 = v7;
    v21 = v6;
    while (1)
    {
      v9 = *v6;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      if ([v8 classification] == 1)
      {
        v10 = -1;
      }

      else
      {
        v10 = [v8 classification];
      }

      if ([v9 classification] == 1)
      {
        if (v10 == -1)
        {
          goto LABEL_14;
        }
      }

      else if (v10 == [v9 classification])
      {
LABEL_14:
        sub_10034B444();
        v13 = v12;
        sub_10034B444();
        v15 = v14;
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        if (v15 >= v13)
        {
          goto LABEL_4;
        }

        goto LABEL_21;
      }

      if ([v8 classification] == 1)
      {
        v11 = -1;
      }

      else
      {
        v11 = [v8 classification];
      }

      if ([v9 classification] == 1)
      {
        v16 = -1;
      }

      else
      {
        v16 = [v9 classification];
      }

      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v16 >= v11)
      {
LABEL_4:
        ++v4;
        v6 = v21 + 8;
        v7 = v20 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

LABEL_21:
      if (!v5)
      {
        __break(1u);
        return result;
      }

      v17 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v17;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}